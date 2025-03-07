<script setup>
import { ref, reactive, onMounted } from 'vue'
import { useUserStore } from '../stores/user'
import { ElMessage } from 'element-plus'

const userStore = useUserStore()
const user = reactive({
  username: '',
  email: '',
  phone: '',
  avatar: ''
})
const loading = ref(false)
const updating = ref(false)

// 表单验证规则
const userRules = {
  email: [
    { required: true, message: '请输入邮箱地址', trigger: 'blur' },
    { type: 'email', message: '请输入正确的邮箱格式', trigger: 'blur' }
  ],
  phone: [
    { required: true, message: '请输入手机号', trigger: 'blur' },
    { pattern: /^1[3-9]\d{9}$/, message: '请输入正确的手机号格式', trigger: 'blur' }
  ]
}

const userFormRef = ref(null)

// 加载用户信息
const loadUserInfo = () => {
  loading.value = true
  try {
    // 从store获取用户信息
    const userInfo = userStore.userInfo
    if (userInfo) {
      user.username = userInfo.username || ''
      user.email = userInfo.email || ''
      user.phone = userInfo.phone || ''
      user.avatar = userInfo.avatar || ''
    }
  } catch (error) {
    ElMessage.error('获取用户信息失败')
    console.error(error)
  } finally {
    loading.value = false
  }
}

// 更新用户信息
const updateUserInfo = async () => {
  if (!userFormRef.value) return
  
  await userFormRef.value.validate(async (valid) => {
    if (valid) {
      updating.value = true
      try {
        // 模拟更新用户信息
        await new Promise(resolve => setTimeout(resolve, 1000))
        
        // 更新store中的用户信息
        userStore.setUser({
          ...userStore.userInfo,
          email: user.email,
          phone: user.phone
        })
        
        ElMessage.success('个人信息更新成功')
      } catch (error) {
        ElMessage.error('更新失败，请稍后再试')
      } finally {
        updating.value = false
      }
    }
  })
}

// 页面加载时获取用户信息
onMounted(() => {
  loadUserInfo()
})
</script>

<template>
  <div class="user-profile-page">
    <div class="container" v-loading="loading">
      <h2 class="page-title">个人资料</h2>
      
      <div class="profile-content">
        <!-- 用户基本信息 -->
        <div class="card user-info-card">
          <h3>基本信息</h3>
          
          <div class="user-avatar">
            <el-avatar :size="100" :src="user.avatar">
              {{ user.username ? user.username.charAt(0).toUpperCase() : 'U' }}
            </el-avatar>
          </div>
          
          <el-form
            ref="userFormRef"
            :model="user"
            :rules="userRules"
            label-width="100px"
            class="user-form"
          >
            <el-form-item label="用户名">
              <el-input v-model="user.username" disabled />
            </el-form-item>
            
            <el-form-item label="邮箱" prop="email">
              <el-input v-model="user.email" type="email" placeholder="请输入邮箱地址" />
            </el-form-item>
            
            <el-form-item label="手机号" prop="phone">
              <el-input v-model="user.phone" placeholder="请输入手机号" />
            </el-form-item>
            
            <el-form-item>
              <el-button 
                type="primary" 
                :loading="updating" 
                @click="updateUserInfo"
              >
                保存修改
              </el-button>
            </el-form-item>
          </el-form>
        </div>
        
        <!-- 账号安全 -->
        <div class="card account-security-card">
          <h3>账号安全</h3>
          
          <div class="security-items">
            <div class="security-item">
              <div class="security-info">
                <div class="security-title">登录密码</div>
                <div class="security-description">定期修改密码可以保护账号安全</div>
              </div>
              <div class="security-action">
                <el-button type="primary" plain>修改密码</el-button>
              </div>
            </div>
            
            <div class="security-item">
              <div class="security-info">
                <div class="security-title">账号绑定</div>
                <div class="security-description">绑定第三方账号，安全快捷登录</div>
              </div>
              <div class="security-action">
                <el-button plain>管理绑定</el-button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.user-profile-page {
  padding: 40px 0;
}

.profile-content {
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

.user-avatar {
  text-align: center;
  margin-bottom: 30px;
}

.user-form {
  max-width: 500px;
  margin: 0 auto;
}

.security-items {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.security-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-bottom: 20px;
  border-bottom: 1px solid #EBEEF5;
}

.security-item:last-child {
  border-bottom: none;
  padding-bottom: 0;
}

.security-title {
  font-size: 16px;
  font-weight: 500;
  margin-bottom: 5px;
}

.security-description {
  font-size: 14px;
  color: #909399;
}

@media (max-width: 768px) {
  .security-item {
    flex-direction: column;
    align-items: flex-start;
    gap: 15px;
  }
  
  .security-action {
    width: 100%;
    display: flex;
    justify-content: flex-end;
  }
}
</style> 