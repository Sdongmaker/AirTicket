<script setup>
import { ref, reactive, onMounted, computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { useOrderStore } from '../stores/order'
import { useUserStore } from '../stores/user'
import { ElMessage, ElMessageBox } from 'element-plus'

const route = useRoute()
const router = useRouter()
const orderStore = useOrderStore()
const userStore = useUserStore()

const orders = computed(() => orderStore.orders)
const loading = ref(false)
const activeTab = ref('all')
const searchText = ref('')

// 获取订单
const loadOrders = async () => {
  loading.value = true
  try {
    if (userStore.userInfo) {
      await orderStore.fetchUserOrders(userStore.userInfo.uid)
    }
  } catch (error) {
    ElMessage.error('获取订单信息失败')
    console.error(error)
  } finally {
    loading.value = false
  }
}

// 筛选订单
const filteredOrders = computed(() => {
  let filtered = [...orders.value]
  
  // 根据状态筛选
  if (activeTab.value !== 'all') {
    const statusMap = {
      'unpaid': 0,  // 待支付
      'paid': 1,    // 已支付
      'cancelled': 2, // 已取消
      'completed': 3  // 已完成
    }
    
    filtered = filtered.filter(order => order.status === statusMap[activeTab.value])
  }
  
  // 根据搜索文本筛选
  if (searchText.value) {
    const search = searchText.value.toLowerCase()
    filtered = filtered.filter(order => 
      order.flight.start_point.toLowerCase().includes(search) || 
      order.flight.end_point.toLowerCase().includes(search)
    )
  }
  
  return filtered
})

// 支付订单
const payOrder = async (order) => {
  try {
    await ElMessageBox.confirm(
      `确认支付订单 #${order.oid}，金额 ¥${order.prices}？`,
      '确认支付',
      {
        confirmButtonText: '确认',
        cancelButtonText: '取消',
        type: 'warning'
      }
    )
    
    await orderStore.payOrder(order.oid)
    ElMessage.success('支付成功')
  } catch (error) {
    if (error !== 'cancel') {
      ElMessage.error('支付失败')
    }
  }
}

// 取消订单
const cancelOrder = async (order) => {
  try {
    await ElMessageBox.confirm(
      `确认取消订单 #${order.oid}？`,
      '确认取消',
      {
        confirmButtonText: '确认',
        cancelButtonText: '返回',
        type: 'warning'
      }
    )
    
    await orderStore.cancelOrder(order.oid)
    ElMessage.success('订单已取消')
  } catch (error) {
    if (error !== 'cancel') {
      ElMessage.error('取消失败')
    }
  }
}

// 订单状态文字和色彩
const getStatusClass = (status) => {
  const statusClassMap = {
    0: 'status-unpaid',    // 待支付
    1: 'status-paid',      // 已支付
    2: 'status-cancelled', // 已取消
    3: 'status-completed'  // 已完成
  }
  return statusClassMap[status]
}

// 页面加载时获取订单
onMounted(() => {
  loadOrders()
  
  // 检查是否有新创建的订单高亮显示
  const newOrderId = route.query.newOrder
  if (newOrderId) {
    // 这里可以添加高亮逻辑
  }
})
</script>

<template>
  <div class="my-orders-page">
    <div class="container" v-loading="loading">
      <h2 class="page-title">我的订单</h2>
      
      <div class="orders-content">
        <!-- 搜索和过滤 -->
        <div class="order-filter-bar card">
          <div class="search-box">
            <el-input
              v-model="searchText"
              placeholder="搜索出发地/目的地"
              prefix-icon="Search"
              clearable
            />
          </div>
          
          <div class="tabs">
            <el-tabs v-model="activeTab">
              <el-tab-pane label="全部订单" name="all"></el-tab-pane>
              <el-tab-pane label="待支付" name="unpaid"></el-tab-pane>
              <el-tab-pane label="已支付" name="paid"></el-tab-pane>
              <el-tab-pane label="已取消" name="cancelled"></el-tab-pane>
              <el-tab-pane label="已完成" name="completed"></el-tab-pane>
            </el-tabs>
          </div>
        </div>
        
        <!-- 订单列表 -->
        <div v-if="filteredOrders.length > 0" class="order-list">
          <div v-for="order in filteredOrders" :key="order.oid" class="order-card card">
            <div class="order-header">
              <div class="order-id">订单号: {{ order.oid }}</div>
              <div :class="['order-status', getStatusClass(order.status)]">
                {{ order.statusText }}
              </div>
            </div>
            
            <div class="order-content">
              <div class="flight-info">
                <div class="flight-route">
                  <div class="flight-city">
                    <div class="flight-time">{{ order.flight.start_time.split(' ')[1].substring(0, 5) }}</div>
                    <div class="flight-city-name">{{ order.flight.start_point }}</div>
                  </div>
                  
                  <div class="flight-arrow">
                    <el-icon><Right /></el-icon>
                  </div>
                  
                  <div class="flight-city">
                    <div class="flight-time">{{ order.flight.end_time.split(' ')[1].substring(0, 5) }}</div>
                    <div class="flight-city-name">{{ order.flight.end_point }}</div>
                  </div>
                </div>
                
                <div class="flight-date">
                  <el-icon><Calendar /></el-icon>
                  <span>{{ order.days }}</span>
                </div>
              </div>
              
              <div class="order-price">
                <div class="price-label">票价</div>
                <div class="price-value">¥{{ order.prices }}</div>
              </div>
            </div>
            
            <div class="order-actions">
              <template v-if="order.status === 0">
                <el-button type="primary" @click="payOrder(order)">支付</el-button>
                <el-button @click="cancelOrder(order)">取消订单</el-button>
              </template>
              
              <template v-if="order.status === 1">
                <el-button @click="cancelOrder(order)">申请退票</el-button>
                <el-button>查看行程</el-button>
              </template>
              
              <template v-if="order.status === 2 || order.status === 3">
                <el-button>删除订单</el-button>
                <el-button v-if="order.status === 3">评价</el-button>
              </template>
            </div>
          </div>
        </div>
        
        <!-- 空订单提示 -->
        <div v-else class="no-orders card">
          <el-empty description="暂无订单">
            <template #extra>
              <el-button type="primary" @click="router.push('/flight-search')">
                去预订机票
              </el-button>
            </template>
          </el-empty>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.my-orders-page {
  padding: 40px 0;
}

.orders-content {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.card {
  padding: 20px;
}

.order-filter-bar {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.search-box {
  max-width: 300px;
}

.order-list {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.order-card {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.order-header {
  display: flex;
  justify-content: space-between;
  padding-bottom: 15px;
  border-bottom: 1px solid #EBEEF5;
}

.order-id {
  font-weight: 500;
  color: #606266;
}

.order-status {
  font-weight: 600;
}

.status-unpaid {
  color: #E6A23C;
}

.status-paid {
  color: #409EFF;
}

.status-cancelled {
  color: #909399;
}

.status-completed {
  color: #67C23A;
}

.order-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.flight-info {
  flex: 1;
}

.flight-route {
  display: flex;
  align-items: center;
  gap: 20px;
  margin-bottom: 10px;
}

.flight-city {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.flight-time {
  font-size: 18px;
  font-weight: bold;
  color: #303133;
}

.flight-city-name {
  font-size: 14px;
  color: #606266;
}

.flight-arrow {
  color: #909399;
  font-size: 20px;
}

.flight-date {
  display: flex;
  align-items: center;
  gap: 5px;
  color: #606266;
  font-size: 14px;
}

.order-price {
  text-align: right;
}

.price-label {
  font-size: 12px;
  color: #909399;
  margin-bottom: 5px;
}

.price-value {
  font-size: 20px;
  font-weight: bold;
  color: #F56C6C;
}

.order-actions {
  display: flex;
  justify-content: flex-end;
  gap: 10px;
  padding-top: 15px;
  border-top: 1px solid #EBEEF5;
}

.no-orders {
  padding: 50px 20px;
  text-align: center;
}

@media (max-width: 768px) {
  .order-content {
    flex-direction: column;
    align-items: flex-start;
    gap: 15px;
  }
  
  .order-price {
    align-self: flex-end;
  }
}
</style> 