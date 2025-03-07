<script setup>
import { ref, reactive, onMounted, computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { useFlightStore } from '../stores/flight'
import { ElMessage } from 'element-plus'
import { formatDate, formatDateTime, formatDuration } from '../utils/format'

const route = useRoute()
const router = useRouter()
const flightStore = useFlightStore()

// 搜索表单
const searchForm = reactive({
  start_point: route.query.start_point || '',
  end_point: route.query.end_point || '',
  date: route.query.date || formatDate(new Date())
})

// 城市列表
const cities = [
  '北京', '上海', '广州', '深圳', '成都', 
  '杭州', '重庆', '西安', '南京', '武汉',
  '厦门', '长沙', '昆明', '青岛', '大连'
]

// 航班列表和加载状态
const flights = computed(() => flightStore.flights)
const loading = ref(false)

// 搜索航班
const searchFlights = async () => {
  loading.value = true
  try {
    await flightStore.fetchFlights(searchForm)
    
    // 更新URL查询参数
    router.push({
      path: '/flight-search',
      query: { ...searchForm }
    })
  } catch (error) {
    ElMessage.error('获取航班信息失败')
    console.error(error)
  } finally {
    loading.value = false
  }
}

// 查看航班详情
const viewFlightDetail = (flightId) => {
  router.push(`/flight-detail/${flightId}`)
}

// 预订航班
const bookFlight = (flightId) => {
  router.push(`/booking/${flightId}`)
}

// 格式化航班时间
const getFlightDuration = (startTime, endTime) => {
  const start = new Date(startTime)
  const end = new Date(endTime)
  const durationMs = end - start
  const hours = Math.floor(durationMs / (1000 * 60 * 60))
  const minutes = Math.floor((durationMs % (1000 * 60 * 60)) / (1000 * 60))
  return `${hours}小时${minutes}分钟`
}

// 计算票价
const getPriceRange = (flight) => {
  const prices = flight.prices || { e_class: 800, b_class: 1500, f_class: 2500 }
  return `¥${prices.e_class} - ¥${prices.f_class}`
}

// 页面加载时搜索航班
onMounted(() => {
  searchFlights()
})
</script>

<template>
  <div class="flight-search-page">
    <div class="container">
      <h2 class="page-title">航班搜索</h2>
      
      <!-- 搜索表单 -->
      <div class="search-form card">
        <el-form :model="searchForm" label-width="100px" inline>
          <el-form-item label="出发城市">
            <el-select v-model="searchForm.start_point" placeholder="请选择出发城市">
              <el-option v-for="city in cities" :key="city" :label="city" :value="city" />
            </el-select>
          </el-form-item>
          
          <el-form-item label="到达城市">
            <el-select v-model="searchForm.end_point" placeholder="请选择到达城市">
              <el-option v-for="city in cities" :key="city" :label="city" :value="city" />
            </el-select>
          </el-form-item>
          
          <el-form-item label="出发日期">
            <el-date-picker
              v-model="searchForm.date"
              type="date"
              placeholder="选择出发日期"
              format="YYYY-MM-DD"
              value-format="YYYY-MM-DD"
            />
          </el-form-item>
          
          <el-form-item>
            <el-button type="primary" @click="searchFlights" :loading="loading">
              搜索
            </el-button>
          </el-form-item>
        </el-form>
      </div>
      
      <!-- 航班列表 -->
      <div class="flight-list" v-loading="loading">
        <div v-if="flights.length === 0" class="no-results card">
          <el-empty description="没有找到符合条件的航班，请调整搜索条件"></el-empty>
        </div>
        
        <div v-else class="flight-cards">
          <div v-for="flight in flights" :key="flight.fid" class="flight-card card">
            <div class="flight-info">
              <div class="flight-route">
                <div class="flight-city">
                  <div class="flight-time">{{ flight.start_time.split(' ')[1].substring(0, 5) }}</div>
                  <div class="flight-city-name">{{ flight.start_point }}</div>
                </div>
                
                <div class="flight-duration">
                  <div class="duration-line"></div>
                  <div class="duration-text">{{ getFlightDuration(flight.start_time, flight.end_time) }}</div>
                  <div class="duration-line"></div>
                </div>
                
                <div class="flight-city">
                  <div class="flight-time">{{ flight.end_time.split(' ')[1].substring(0, 5) }}</div>
                  <div class="flight-city-name">{{ flight.end_point }}</div>
                </div>
              </div>
              
              <div class="flight-details">
                <div class="flight-airplane">
                  <span class="label">航班日期:</span>
                  <span>{{ flight.start_time.split(' ')[0] }}</span>
                </div>
                <div class="flight-airplane">
                  <span class="label">飞机型号:</span>
                  <span>{{ flight.airplane?.aname || '未知' }}</span>
                </div>
                <div class="flight-distance">
                  <span class="label">飞行距离:</span>
                  <span>{{ flight.distance }}公里</span>
                </div>
              </div>
            </div>
            
            <div class="flight-price">
              <div class="price-range">{{ getPriceRange(flight) }}</div>
              <div class="price-actions">
                <el-button @click="viewFlightDetail(flight.fid)" size="small">查看详情</el-button>
                <el-button type="primary" @click="bookFlight(flight.fid)" size="small">立即预订</el-button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.flight-search-page {
  padding: 40px 0;
}

.search-form {
  margin-bottom: 30px;
  padding: 20px;
}

.flight-cards {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.flight-card {
  display: flex;
  justify-content: space-between;
  padding: 20px;
}

.flight-info {
  flex: 1;
}

.flight-route {
  display: flex;
  align-items: center;
  margin-bottom: 20px;
}

.flight-city {
  text-align: center;
  min-width: 100px;
}

.flight-time {
  font-size: 24px;
  font-weight: bold;
  color: #409EFF;
}

.flight-city-name {
  font-size: 16px;
  color: #606266;
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
  padding: 0 10px;
  font-size: 14px;
  color: #909399;
  white-space: nowrap;
}

.flight-details {
  display: flex;
  flex-wrap: wrap;
  gap: 15px;
}

.flight-airplane, .flight-distance {
  margin-right: 20px;
  font-size: 14px;
  color: #606266;
}

.label {
  color: #909399;
  margin-right: 5px;
}

.flight-price {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-end;
  min-width: 200px;
}

.price-range {
  font-size: 24px;
  font-weight: bold;
  color: #F56C6C;
  margin-bottom: 15px;
}

.price-actions {
  display: flex;
  gap: 10px;
}

.no-results {
  padding: 40px;
  text-align: center;
}

@media (max-width: 768px) {
  .flight-card {
    flex-direction: column;
  }
  
  .flight-price {
    margin-top: 20px;
    align-items: center;
  }
}
</style> 