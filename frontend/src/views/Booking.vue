<script setup>
import { ref, reactive, onMounted, computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { useFlightStore } from '../stores/flight'
import { useUserStore } from '../stores/user'
import { useOrderStore } from '../stores/order'
import { ElMessage, ElMessageBox } from 'element-plus'
import { formatDate } from '../utils/format'

const route = useRoute()
const router = useRouter()
const flightStore = useFlightStore()
const userStore = useUserStore()
const orderStore = useOrderStore()

// 获取路由参数
const flightId = computed(() => route.params.flightId)
const selectedClass = computed(() => route.query.class || 'e_class')

// 状态变量
const flight = ref(null)
const passenger = reactive({
  name: '',
  idCard: '',
  phone: '',
  baggage: 0
})
const loading = ref(false)
const submitting = ref(false)

// 舱位类型名称映射
const cabinClassNames = {
  f_class: '头等舱',
  b_class: '商务舱',
  e_class: '经济舱'
}

// 校验规则
const passengerRules = {
  name: [
    { required: true, message: '请输入乘客姓名', trigger: 'blur' }
  ],
  idCard: [
    { required: true, message: '请输入身份证号', trigger: 'blur' },
    { pattern: /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/, message: '请输入正确的身份证号格式', trigger: 'blur' }
  ],
  phone: [
    { required: true, message: '请输入联系电话', trigger: 'blur' },
    { pattern: /^1[3-9]\d{9}$/, message: '请输入正确的手机号格式', trigger: 'blur' }
  ]
}

const passengerFormRef = ref(null)

// 加载航班详情
const loadFlightDetail = async () => {
  loading.value = true
  try {
    const flightData = await flightStore.fetchFlightById(flightId.value)
    flight.value = flightData
  } catch (error) {
    ElMessage.error('获取航班详情失败')
    console.error(error)
  } finally {
    loading.value = false
  }
}

// 计算总价
const totalPrice = computed(() => {
  if (!flight.value || !flight.value.prices) return 0
  
  const basePrice = flight.value.prices[selectedClass.value] || 0
  const baggagePrice = calculateBaggagePrice(passenger.baggage)
  
  return basePrice + baggagePrice
})

// 计算行李额外费用
const calculateBaggagePrice = (baggageCount) => {
  if (baggageCount <= 1) return 0
  
  // 超出1件行李，每件额外收费100元
  return (baggageCount - 1) * 100
}

// 获取价格
const getPrice = (cabinClass) => {
  if (!flight.value || !flight.value.prices) return 0
  return flight.value.prices[cabinClass]
}

// 提交订单
const submitOrder = async () => {
  if (!passengerFormRef.value) return
  
  await passengerFormRef.value.validate(async (valid) => {
    if (valid) {
      try {
        submitting.value = true
        
        // 确认支付
        await ElMessageBox.confirm(
          `您即将预订${flight.value.start_point}到${flight.value.end_point}的机票，总价¥${totalPrice.value}元。确认支付吗？`,
          '确认支付',
          {
            confirmButtonText: '确认支付',
            cancelButtonText: '取消',
            type: 'warning'
          }
        )
        
        // 创建订单
        const orderData = {
          fid: parseInt(flightId.value),
          uid: userStore.userInfo.uid,
          prices: totalPrice.value,
          days: flight.value.start_time.split(' ')[0],
          start_point: flight.value.start_point,
          end_point: flight.value.end_point,
          start_time: flight.value.start_time,
          end_time: flight.value.end_time,
          passengerInfo: { ...passenger },
          cabinClass: selectedClass.value
        }
        
        const order = await orderStore.createOrder(orderData)
        
        ElMessage.success('预订成功')
        
        // 跳转到订单成功页面
        router.push({
          path: '/my-orders',
          query: { newOrder: order.oid }
        })
      } catch (error) {
        if (error !== 'cancel') {
          ElMessage.error(error.message || '预订失败，请稍后再试')
        }
      } finally {
        submitting.value = false
      }
    }
  })
}

// 返回详情页
const goBack = () => {
  router.push(`/flight-detail/${flightId.value}`)
}

// 页面加载时获取航班详情
onMounted(() => {
  loadFlightDetail()
})
</script>

<template>
  <div class="booking-page">
    <div class="container" v-loading="loading">
      <h2 class="page-title">机票预订</h2>
      
      <!-- 航班信息 -->
      <div v-if="flight" class="booking-content">
        <div class="card flight-info-card">
          <h3>航班信息</h3>
          
          <div class="flight-info">
            <div class="flight-route">
              <div class="flight-city">
                <div class="flight-time">{{ flight.start_time.split(' ')[1].substring(0, 5) }}</div>
                <div class="flight-city-name">{{ flight.start_point }}</div>
              </div>
              
              <div class="flight-duration">
                <div class="duration-line"></div>
                <div class="duration-icon"><el-icon><Airplane /></el-icon></div>
                <div class="duration-line"></div>
              </div>
              
              <div class="flight-city">
                <div class="flight-time">{{ flight.end_time.split(' ')[1].substring(0, 5) }}</div>
                <div class="flight-city-name">{{ flight.end_point }}</div>
              </div>
            </div>
            
            <div class="flight-details">
              <div class="detail-item">
                <span class="label">航班日期:</span>
                <span>{{ flight.start_time.split(' ')[0] }}</span>
              </div>
              <div class="detail-item">
                <span class="label">舱位类型:</span>
                <span>{{ cabinClassNames[selectedClass] }}</span>
              </div>
              <div class="detail-item">
                <span class="label">基础票价:</span>
                <span class="price">¥{{ getPrice(selectedClass) }}</span>
              </div>
            </div>
          </div>
        </div>
        
        <!-- 乘客信息 -->
        <div class="card passenger-info-card">
          <h3>乘客信息</h3>
          
          <el-form
            ref="passengerFormRef"
            :model="passenger"
            :rules="passengerRules"
            label-width="100px"
          >
            <el-form-item label="乘客姓名" prop="name">
              <el-input v-model="passenger.name" placeholder="请输入乘客真实姓名" />
            </el-form-item>
            
            <el-form-item label="身份证号" prop="idCard">
              <el-input v-model="passenger.idCard" placeholder="请输入有效的身份证号" />
            </el-form-item>
            
            <el-form-item label="联系电话" prop="phone">
              <el-input v-model="passenger.phone" placeholder="请输入联系电话" />
            </el-form-item>
            
            <el-form-item label="行李件数">
              <el-input-number v-model="passenger.baggage" :min="0" :max="5" />
              <div class="baggage-tips">
                <p>首件行李免费，每增加一件额外收费100元</p>
                <p v-if="passenger.baggage > 1" class="baggage-fee">
                  行李费用: ¥{{ calculateBaggagePrice(passenger.baggage) }}
                </p>
              </div>
            </el-form-item>
          </el-form>
        </div>
        
        <!-- 价格摘要 -->
        <div class="card price-summary-card">
          <h3>价格摘要</h3>
          
          <div class="price-details">
            <div class="price-item">
              <span>基础票价({{ cabinClassNames[selectedClass] }})</span>
              <span>¥{{ getPrice(selectedClass) }}</span>
            </div>
            
            <div class="price-item" v-if="passenger.baggage > 1">
              <span>行李费({{ passenger.baggage - 1 }}件)</span>
              <span>¥{{ calculateBaggagePrice(passenger.baggage) }}</span>
            </div>
            
            <div class="price-item total">
              <span>总计</span>
              <span>¥{{ totalPrice }}</span>
            </div>
          </div>
        </div>
        
        <!-- 操作按钮 -->
        <div class="booking-actions">
          <el-button @click="goBack">返回</el-button>
          <el-button 
            type="primary" 
            :loading="submitting" 
            @click="submitOrder"
          >
            确认支付
          </el-button>
        </div>
      </div>
      
      <div v-else-if="!loading" class="card no-flight">
        <el-empty description="未找到该航班信息"></el-empty>
        <div class="back-action">
          <el-button @click="router.push('/flight-search')">返回航班搜索</el-button>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.booking-page {
  padding: 40px 0;
}

.booking-content {
  display: flex;
  flex-direction: column;
  gap: 30px;
}

.card {
  padding: 30px;
}

.card h3 {
  margin-top: 0;
  margin-bottom: 20px;
  font-size: 18px;
  color: #303133;
  font-weight: 600;
}

.flight-info-card .flight-route {
  display: flex;
  align-items: center;
  margin-bottom: 20px;
}

.flight-city {
  text-align: center;
  min-width: 120px;
}

.flight-time {
  font-size: 24px;
  font-weight: bold;
  color: #409EFF;
}

.flight-city-name {
  font-size: 16px;
  font-weight: 600;
  margin-top: 5px;
}

.flight-duration {
  flex: 1;
  display: flex;
  align-items: center;
  margin: 0 20px;
}

.duration-line {
  flex: 1;
  height: 1px;
  background-color: #DCDFE6;
}

.duration-icon {
  margin: 0 10px;
  color: #409EFF;
  font-size: 24px;
}

.flight-details {
  display: flex;
  flex-wrap: wrap;
  gap: 15px;
}

.detail-item {
  margin-right: 20px;
}

.label {
  color: #909399;
  margin-right: 5px;
}

.price {
  color: #F56C6C;
  font-weight: 500;
}

.baggage-tips {
  margin-top: 5px;
  font-size: 12px;
  color: #909399;
}

.baggage-fee {
  margin-top: 5px;
  color: #F56C6C;
}

.price-details {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.price-item {
  display: flex;
  justify-content: space-between;
  padding-bottom: 10px;
  border-bottom: 1px dashed #EBEEF5;
}

.price-item.total {
  font-size: 18px;
  font-weight: bold;
  color: #F56C6C;
  border-top: 1px solid #EBEEF5;
  border-bottom: none;
  padding-top: 15px;
  margin-top: 10px;
}

.booking-actions {
  display: flex;
  justify-content: center;
  gap: 20px;
  margin-top: 20px;
}

.no-flight {
  padding: 50px 20px;
  text-align: center;
}

.back-action {
  margin-top: 20px;
}

@media (max-width: 768px) {
  .flight-route {
    flex-direction: column;
    gap: 20px;
  }
  
  .flight-duration {
    width: 100%;
    margin: 10px 0;
  }
}
</style> 