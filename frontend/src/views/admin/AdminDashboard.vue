<script setup>
import { ref, computed } from 'vue'
import { useRouter, useRoute } from 'vue-router'
import { useUserStore } from '../../stores/user'
import { ElMessage } from 'element-plus'

const router = useRouter()
const route = useRoute()
const userStore = useUserStore()

// 确保用户是管理员
const isAdmin = computed(() => userStore.isAdmin)

// 如果不是管理员，重定向到首页
if (!isAdmin.value) {
  router.push('/')
}

// 临时显示管理功能尚未完成的提示
const showNotImplementedMessage = () => {
  ElMessage({
    message: '此管理功能尚未实现，敬请期待！',
    type: 'info'
  })
}

// 侧边栏菜单（暂时保留菜单但点击时显示提示）
const menuItems = [
  {
    title: '控制台首页',
    icon: 'HomeFilled',
    action: () => {} // 默认留在当前页面
  },
  {
    title: '返回前台',
    icon: 'Back',
    action: () => router.push('/')
  }
]
</script>

<template>
  <div class="admin-dashboard">
    <div class="admin-layout">
      <!-- 侧边栏 -->
      <div class="admin-sidebar">
        <div class="sidebar-header">
          <h2>管理控制台</h2>
        </div>
        
        <el-menu
          default-active="0"
          class="sidebar-menu"
        >
          <el-menu-item
            v-for="(item, index) in menuItems"
            :key="index"
            :index="String(index)"
            @click="item.action"
          >
            <el-icon><component :is="item.icon" /></el-icon>
            <span>{{ item.title }}</span>
          </el-menu-item>
        </el-menu>
      </div>
      
      <!-- 主内容区 -->
      <div class="admin-content">
        <div class="dashboard-welcome card">
          <h1>欢迎使用机票管理系统后台</h1>
          <p>系统功能正在建设中，敬请期待！</p>
          
          <el-row :gutter="20" class="dashboard-stats">
            <el-col :span="6">
              <div class="stat-card">
                <div class="stat-icon">
                  <el-icon><User /></el-icon>
                </div>
                <div class="stat-info">
                  <div class="stat-value">0</div>
                  <div class="stat-title">注册用户</div>
                </div>
              </div>
            </el-col>
            
            <el-col :span="6">
              <div class="stat-card">
                <div class="stat-icon">
                  <el-icon><Ticket /></el-icon>
                </div>
                <div class="stat-info">
                  <div class="stat-value">0</div>
                  <div class="stat-title">订单总数</div>
                </div>
              </div>
            </el-col>
            
            <el-col :span="6">
              <div class="stat-card">
                <div class="stat-icon">
                  <el-icon><Plane /></el-icon>
                </div>
                <div class="stat-info">
                  <div class="stat-value">0</div>
                  <div class="stat-title">航班数量</div>
                </div>
              </div>
            </el-col>
            
            <el-col :span="6">
              <div class="stat-card">
                <div class="stat-icon">
                  <el-icon><Money /></el-icon>
                </div>
                <div class="stat-info">
                  <div class="stat-value">¥0</div>
                  <div class="stat-title">总收入</div>
                </div>
              </div>
            </el-col>
          </el-row>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.admin-dashboard {
  min-height: 100vh;
}

.admin-layout {
  display: flex;
  min-height: calc(100vh - 64px);
}

.admin-sidebar {
  width: 240px;
  background-color: #304156;
  color: #fff;
  box-shadow: 2px 0 6px rgba(0, 0, 0, 0.1);
}

.sidebar-header {
  padding: 20px;
  text-align: center;
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.sidebar-header h2 {
  margin: 0;
  font-size: 20px;
  font-weight: 600;
}

.sidebar-menu {
  border-right: none;
  background-color: transparent;
}

.admin-content {
  flex: 1;
  padding: 20px;
  background-color: #f0f2f5;
  overflow-y: auto;
}

.card {
  background: #fff;
  border-radius: 4px;
  box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
}

.dashboard-welcome {
  text-align: center;
  padding: 30px;
}

.dashboard-welcome h1 {
  margin-top: 0;
  margin-bottom: 10px;
  font-size: 24px;
  color: #303133;
}

.dashboard-welcome p {
  color: #606266;
  margin-bottom: 30px;
}

.dashboard-stats {
  margin-top: 40px;
}

.stat-card {
  display: flex;
  padding: 20px;
  background-color: #f5f7fa;
  border-radius: 4px;
}

.stat-icon {
  font-size: 40px;
  margin-right: 15px;
  color: #409EFF;
}

.stat-value {
  font-size: 24px;
  font-weight: bold;
  color: #303133;
  margin-bottom: 5px;
}

.stat-title {
  font-size: 14px;
  color: #909399;
}

:deep(.el-menu) {
  background-color: transparent;
  border-right: none;
}

:deep(.el-menu-item) {
  color: #bfcbd9;
}

:deep(.el-menu-item.is-active) {
  color: #409EFF;
  background-color: #263445;
}

:deep(.el-menu-item):hover {
  background-color: #263445;
}

:deep(.el-icon) {
  margin-right: 10px;
}

@media (max-width: 768px) {
  .admin-layout {
    flex-direction: column;
  }
  
  .admin-sidebar {
    width: 100%;
    height: auto;
  }
  
  .dashboard-stats .el-col {
    width: 100%;
    margin-bottom: 15px;
  }
}
</style> 