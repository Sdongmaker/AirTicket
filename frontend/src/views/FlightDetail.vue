<script setup>
import { ref, onMounted, computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { useFlightStore } from '../stores/flight'
import { useUserStore } from '../stores/user'
import { ElMessage } from 'element-plus'
import { formatDateTime, formatTime, calculateTimeDifference } from '../utils/format'

const route = useRoute()
const router = useRouter()
const flightStore = useFlightStore()
const userStore = useUserStore()

const flightId = computed(() => route.params.id)
const flight = ref(null)
const loading = ref(false)
const selectedClass = ref('e_class') // 默认选择经济舱

// 座位类型名称映射
const cabinClassNames = {
  f_class: '头等舱',
  b_class: '商务舱',
  e_class: '经济舱'
}

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

// 计算航班详情
const flightDetails = computed(() => {
  if (!flight.value) return null
  
  const { start_time, end_time } = flight.value
  const { hours, minutes } = calculateTimeDifference(start_time, end_time)
  
  return {
    duration: `${hours}小时${minutes}分钟`,
    departureDate: start_time.split(' ')[0],
    departureTime: start_time.split(' ')[1].substring(0, 5),
    arrivalTime: end_time.split(' ')[1].substring(0, 5),
  }
})

// 选择舱位类型
const selectCabinClass = (cabinClass) => {
  selectedClass.value = cabinClass
}

// 预订航班
const bookFlight = () => {
  // 检查是否已登录
  if (!userStore.isAuthenticated) {
    ElMessage.warning('请先登录后再预订')
    router.push({ 
      path: '/login', 
      query: { redirect: `/booking/${flightId.value}?class=${selectedClass.value}` } 
    })
    return
  }
  
  // 导航到预订页面
  router.push({ 
    path: `/booking/${flightId.value}`,
    query: { class: selectedClass.value }
  })
}

// 获取可用座位数
const getAvailableSeats = (cabinClass) => {
  if (!flight.value || !flight.value.airplane) return 0
  return flight.value.airplane[cabinClass]
}

// 获取价格
const getPrice = (cabinClass) => {
  if (!flight.value || !flight.value.prices) return 0
  return flight.value.prices[cabinClass]
}

// 页面加载时获取航班详情
onMounted(() => {
  loadFlightDetail()
})
</script>

<template>
  <div class="flight-detail-page">
    <div class="container" v-loading="loading">
      <h2 class="page-title">航班详情</h2>
      
      <div v-if="flight" class="flight-detail-content">
        <!-- 航班基本信息 -->
        <div class="card flight-basic-info">
          <div class="flight-route">
            <div class="flight-city">
              <div class="flight-time">{{ flightDetails.departureTime }}</div>
              <div class="flight-city-name">{{ flight.start_point }}</div>
              <div class="flight-date">{{ flightDetails.departureDate }}</div>
            </div>
            
            <div class="flight-duration">
              <div class="duration-line"></div>
              <div class="duration-text">{{ flightDetails.duration }}</div>
              <div class="duration-line"></div>
            </div>
            
            <div class="flight-city">
              <div class="flight-time">{{ flightDetails.arrivalTime }}</div>
              <div class="flight-city-name">{{ flight.end_point }}</div>
              <div class="flight-date">{{ flight.end_time.split(' ')[0] }}</div>
            </div>
          </div>
          
          <div class="flight-info-grid">
            <div class="info-item">
              <div class="info-label">航班编号</div>
              <div class="info-value">FLT-{{ flight.fid }}</div>
            </div>
            <div class="info-item">
              <div class="info-label">飞机型号</div>
              <div class="info-value">{{ flight.airplane?.aname || '未知' }}</div>
            </div>
            <div class="info-item">
              <div class="info-label">飞行距离</div>
              <div class="info-value">{{ flight.distance }}公里</div>
            </div>
            <div class="info-item">
              <div class="info-label">飞机评分</div>
              <div class="info-value">
                <el-rate v-model="flight.airplane.arate" disabled text-color="#ff9900" />
              </div>
            </div>
          </div>
        </div>
        
        <!-- 舱位选择 -->
        <div class="card cabin-selection">
          <h3>选择舱位</h3>
          
          <div class="cabin-options">
            <div
              v-for="cabinClass in ['f_class', 'b_class', 'e_class']"
              :key="cabinClass"
              class="cabin-option"
              :class="{ 'selected': selectedClass === cabinClass }"
              @click="selectCabinClass(cabinClass)"
            >
              <div class="cabin-name">{{ cabinClassNames[cabinClass] }}</div>
              <div class="cabin-price">¥{{ getPrice(cabinClass) }}</div>
              <div class="cabin-seats">可用座位: {{ getAvailableSeats(cabinClass) }}</div>
              <div class="cabin-checked" v-if="selectedClass === cabinClass">
                <el-icon><Check /></el-icon>
              </div>
            </div>
          </div>
          
          <div class="booking-action">
            <el-button type="primary" size="large" @click="bookFlight">
              预订{{ cabinClassNames[selectedClass] }}
            </el-button>
          </div>
        </div>
        
        <!-- 航班详细信息 -->
        <div class="card flight-additional-info">
          <h3>航班信息</h3>
          
          <el-collapse>
            <el-collapse-item title="航班详情" name="1">
              <div class="flight-detail-item">
                <div class="detail-label">起飞时间</div>
                <div class="detail-value">{{ flight.start_time }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">到达时间</div>
                <div class="detail-value">{{ flight.end_time }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">飞行时长</div>
                <div class="detail-value">{{ flightDetails.duration }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">飞行距离</div>
                <div class="detail-value">{{ flight.distance }}公里</div>
              </div>
            </el-collapse-item>
            
            <el-collapse-item title="飞机信息" name="2">
              <div class="flight-detail-item">
                <div class="detail-label">飞机型号</div>
                <div class="detail-value">{{ flight.airplane?.aname }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">飞机评分</div>
                <div class="detail-value">{{ flight.airplane?.arate }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">头等舱座位数</div>
                <div class="detail-value">{{ flight.airplane?.f_class_cnt }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">商务舱座位数</div>
                <div class="detail-value">{{ flight.airplane?.b_class_cnt }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">经济舱座位数</div>
                <div class="detail-value">{{ flight.airplane?.e_class_cnt }}</div>
              </div>
            </el-collapse-item>
            
            <el-collapse-item title="票价信息" name="3">
              <div class="flight-detail-item">
                <div class="detail-label">头等舱票价</div>
                <div class="detail-value">¥{{ flight.prices?.f_class }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">商务舱票价</div>
                <div class="detail-value">¥{{ flight.prices?.b_class }}</div>
              </div>
              <div class="flight-detail-item">
                <div class="detail-label">经济舱票价</div>
                <div class="detail-value">¥{{ flight.prices?.e_class }}</div>
              </div>
            </el-collapse-item>
          </el-collapse>
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
.flight-detail-page {
  padding: 40px 0;
}

.flight-detail-content {
  display: flex;
  flex-direction: column;
  gap: 30px;
}

.flight-basic-info {
  padding: 30px;
}

.flight-route {
  display: flex;
  align-items: center;
  margin-bottom: 40px;
}

.flight-city {
  text-align: center;
  min-width: 120px;
}

.flight-time {
  font-size: 32px;
  font-weight: bold;
  color: #409EFF;
}

.flight-city-name {
  font-size: 18px;
  font-weight: 600;
  color: #333;
  margin: 8px 0;
}

.flight-date {
  font-size: 14px;
  color: #909399;
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

.duration-text {
  padding: 0 15px;
  font-size: 16px;
  color: #606266;
  white-space: nowrap;
}

.flight-info-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 20px;
}

.info-item {
  padding: 15px;
  border-radius: 4px;
  background-color: #f5f7fa;
}

.info-label {
  color: #909399;
  font-size: 14px;
  margin-bottom: 5px;
}

.info-value {
  color: #333;
  font-size: 16px;
  font-weight: 600;
}

.cabin-selection {
  padding: 30px;
}

.cabin-selection h3 {
  margin-bottom: 20px;
  font-size: 20px;
  color: #333;
}

.cabin-options {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 20px;
  margin-bottom: 30px;
}

.cabin-option {
  position: relative;
  padding: 20px;
  border-radius: 8px;
  border: 2px solid #DCDFE6;
  cursor: pointer;
  transition: all 0.3s;
}

.cabin-option:hover {
  border-color: #409EFF;
  transform: translateY(-3px);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
}

.cabin-option.selected {
  border-color: #409EFF;
  background-color: rgba(64, 158, 255, 0.05);
}

.cabin-name {
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
}

.cabin-price {
  font-size: 24px;
  color: #F56C6C;
  font-weight: bold;
  margin-bottom: 10px;
}

.cabin-seats {
  font-size: 14px;
  color: #909399;
}

.cabin-checked {
  position: absolute;
  top: 10px;
  right: 10px;
  color: #409EFF;
  font-size: 20px;
}

.booking-action {
  text-align: center;
}

.flight-additional-info {
  padding: 30px;
}

.flight-additional-info h3 {
  margin-bottom: 20px;
  font-size: 20px;
  color: #333;
}

.flight-detail-item {
  display: flex;
  padding: 10px 0;
  border-bottom: 1px solid #EBEEF5;
}

.flight-detail-item:last-child {
  border-bottom: none;
}

.detail-label {
  width: 150px;
  color: #909399;
}

.detail-value {
  flex: 1;
  color: #333;
  font-weight: 500;
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
  
  .cabin-options {
    grid-template-columns: 1fr;
  }
}
</style> 