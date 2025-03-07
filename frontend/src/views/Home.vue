<script setup>
import { ref, reactive } from 'vue'
import { useRouter } from 'vue-router'

const router = useRouter()
const searchForm = reactive({
  start_point: '',
  end_point: '',
  date: ''
})

const cities = [
  '北京', '上海', '广州', '深圳', '成都', 
  '杭州', '重庆', '西安', '南京', '武汉',
  '厦门', '长沙', '昆明', '青岛', '大连'
]

const handleSearch = () => {
  router.push({
    name: 'FlightSearch',
    query: searchForm
  })
}
</script>

<template>
  <div class="home-page">
    <div class="hero-section">
      <div class="container">
        <div class="hero-content">
          <h1 class="hero-title">便捷的机票预订服务</h1>
          <p class="hero-description">为您提供最优惠的机票价格和最便捷的旅行体验</p>
          
          <div class="search-box card">
            <el-form :model="searchForm" label-width="100px">
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
                  :disabled-date="date => date < new Date()"
                />
              </el-form-item>
              
              <el-form-item>
                <el-button type="primary" @click="handleSearch">搜索航班</el-button>
              </el-form-item>
            </el-form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="container">
      <div class="features-section">
        <h2 class="section-title">我们的服务特色</h2>
        
        <div class="features-grid">
          <div class="feature-card">
            <div class="feature-icon">
              <el-icon><Search /></el-icon>
            </div>
            <h3>便捷搜索</h3>
            <p>快速查找您需要的航班，提供多种筛选条件</p>
          </div>
          
          <div class="feature-card">
            <div class="feature-icon">
              <el-icon><Money /></el-icon>
            </div>
            <h3>价格透明</h3>
            <p>机票价格明细清晰，无隐藏费用</p>
          </div>
          
          <div class="feature-card">
            <div class="feature-icon">
              <el-icon><Star /></el-icon>
            </div>
            <h3>优质服务</h3>
            <p>提供全方位的机票预订和改签服务</p>
          </div>
          
          <div class="feature-card">
            <div class="feature-icon">
              <el-icon><Lock /></el-icon>
            </div>
            <h3>安全可靠</h3>
            <p>您的个人信息和支付安全得到保障</p>
          </div>
        </div>
      </div>
      
      <div class="destinations-section">
        <h2 class="section-title">热门目的地</h2>
        
        <div class="destinations-grid">
          <div class="destination-card">
            <img src="https://via.placeholder.com/300x200?text=北京" alt="北京">
            <div class="destination-info">
              <h3>北京</h3>
              <p>探索中国首都的历史与现代魅力</p>
            </div>
          </div>
          
          <div class="destination-card">
            <img src="https://via.placeholder.com/300x200?text=上海" alt="上海">
            <div class="destination-info">
              <h3>上海</h3>
              <p>感受中国现代化大都市的繁华</p>
            </div>
          </div>
          
          <div class="destination-card">
            <img src="https://via.placeholder.com/300x200?text=广州" alt="广州">
            <div class="destination-info">
              <h3>广州</h3>
              <p>领略南方城市的独特风情</p>
            </div>
          </div>
          
          <div class="destination-card">
            <img src="https://via.placeholder.com/300x200?text=成都" alt="成都">
            <div class="destination-info">
              <h3>成都</h3>
              <p>享受悠闲的生活方式和美食</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.hero-section {
  background: linear-gradient(135deg, #1890ff 0%, #1677ff 100%);
  color: #fff;
  padding: 100px 0 80px;
  text-align: center;
}

.hero-title {
  font-size: 3rem;
  font-weight: bold;
  margin-bottom: 1rem;
}

.hero-description {
  font-size: 1.5rem;
  margin-bottom: 2rem;
  opacity: 0.9;
}

.search-box {
  max-width: 800px;
  margin: 0 auto;
  padding: 30px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.search-box .el-form {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.search-box .el-form-item {
  margin-bottom: 15px;
  width: 48%;
}

.search-box .el-form-item:last-child {
  width: 100%;
  margin-bottom: 0;
  text-align: center;
}

.search-box .el-button {
  padding: 12px 24px;
  font-size: 16px;
}

.section-title {
  text-align: center;
  font-size: 2rem;
  margin: 60px 0 40px;
  color: #333;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 30px;
  margin-bottom: 60px;
}

.feature-card {
  background: #fff;
  border-radius: 8px;
  padding: 30px;
  text-align: center;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s, box-shadow 0.3s;
}

.feature-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.feature-icon {
  font-size: 36px;
  color: #1890ff;
  margin-bottom: 20px;
}

.feature-card h3 {
  font-size: 1.25rem;
  margin-bottom: 10px;
  font-weight: 600;
}

.destinations-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 30px;
  margin-bottom: 60px;
}

.destination-card {
  background: #fff;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s, box-shadow 0.3s;
}

.destination-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.destination-card img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.destination-info {
  padding: 20px;
}

.destination-info h3 {
  font-size: 1.25rem;
  margin-bottom: 10px;
  font-weight: 600;
}

@media (max-width: 768px) {
  .search-box .el-form-item {
    width: 100%;
  }
  
  .hero-title {
    font-size: 2rem;
  }
  
  .hero-description {
    font-size: 1.2rem;
  }
}
</style> 