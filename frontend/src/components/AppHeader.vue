<script setup>
import { computed, ref } from 'vue'
import { useRouter } from 'vue-router'
import { useUserStore } from '../stores/user'

const router = useRouter()
const userStore = useUserStore()
const isAuthenticated = computed(() => userStore.isAuthenticated)
const isAdmin = computed(() => userStore.isAdmin)
const userInfo = computed(() => userStore.userInfo)

const logout = () => {
  userStore.logout()
  router.push('/')
}
</script>

<template>
  <header class="app-header">
    <div class="container header-container">
      <div class="logo" @click="router.push('/')">
        <span class="logo-icon"><el-icon><Airplane /></el-icon></span>
        <span class="logo-text">机票预订系统</span>
      </div>
      
      <nav class="main-nav">
        <el-menu mode="horizontal" router :ellipsis="false" class="nav-menu">
          <el-menu-item index="/">首页</el-menu-item>
          <el-menu-item index="/flight-search">航班查询</el-menu-item>
          
          <template v-if="isAuthenticated">
            <el-sub-menu v-if="isAdmin" index="admin">
              <template #title>管理后台</template>
              <el-menu-item index="/admin/users">用户管理</el-menu-item>
              <el-menu-item index="/admin/flights">航班管理</el-menu-item>
              <el-menu-item index="/admin/airplanes">飞机管理</el-menu-item>
              <el-menu-item index="/admin/orders">订单管理</el-menu-item>
            </el-sub-menu>
            
            <el-sub-menu v-else index="user">
              <template #title>{{ userInfo?.username || '用户中心' }}</template>
              <el-menu-item index="/user-profile">个人资料</el-menu-item>
              <el-menu-item index="/my-orders">我的订单</el-menu-item>
              <el-menu-item @click="logout">退出登录</el-menu-item>
            </el-sub-menu>
          </template>
          
          <template v-else>
            <el-menu-item index="/login">登录</el-menu-item>
            <el-menu-item index="/register">注册</el-menu-item>
          </template>
        </el-menu>
      </nav>
    </div>
  </header>
</template>

<style scoped>
.app-header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: 64px;
  background-color: #fff;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  z-index: 1000;
}

.header-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 100%;
}

.logo {
  display: flex;
  align-items: center;
  font-size: 24px;
  font-weight: bold;
  color: #409EFF;
  cursor: pointer;
}

.logo-icon {
  margin-right: 8px;
  font-size: 28px;
}

.main-nav {
  flex: 1;
  display: flex;
  justify-content: flex-end;
}

.nav-menu {
  border-bottom: none;
}
</style> 