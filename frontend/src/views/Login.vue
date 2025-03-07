<script setup>
import { ref, reactive, computed, onMounted } from 'vue'
import { useRouter, useRoute } from 'vue-router'
import { useUserStore } from '../stores/user'
import { ElMessage } from 'element-plus'

const router = useRouter()
const route = useRoute()
const userStore = useUserStore()

// 表单数据
const loginForm = reactive({
  username: '',
  password: '',
  rememberMe: false,
  captcha: '' // 验证码字段
})

// 登录表单引用
const loginFormRef = ref(null)

// 状态管理
const loading = ref(false)
const showCaptcha = ref(false) // 是否显示验证码
const loginAttempts = ref(0) // 登录尝试次数
const captchaUrl = ref('/api/captcha') // 验证码图片URL

// 表单验证规则
const loginRules = {
  username: [
    { required: true, message: '请输入用户名', trigger: 'blur' }
  ],
  password: [
    { required: true, message: '请输入密码', trigger: 'blur' }
  ],
  captcha: [
    { required: showCaptcha, message: '请输入验证码', trigger: 'blur' }
  ]
}

// 获取重定向URL
const redirectPath = computed(() => route.query.redirect || '/')

// 尝试从localStorage获取保存的用户名
onMounted(() => {
  const savedUsername = localStorage.getItem('rememberedUsername')
  if (savedUsername) {
    loginForm.username = savedUsername
    loginForm.rememberMe = true
  }
  
  // 如果登录尝试超过3次，显示验证码
  if (sessionStorage.getItem('loginAttempts') >= 3) {
    showCaptcha.value = true
    loginAttempts.value = parseInt(sessionStorage.getItem('loginAttempts'))
  }
})

// 刷新验证码
const refreshCaptcha = () => {
  captchaUrl.value = `/api/captcha?t=${new Date().getTime()}`
}

// 处理登录
const handleLogin = async () => {
  if (!loginFormRef.value) return
  
  await loginFormRef.value.validate(async (valid) => {
    if (valid) {
      loading.value = true
      try {
        // 登录逻辑
        const result = await userStore.login({
          username: loginForm.username,
          password: loginForm.password,
          captcha: showCaptcha.value ? loginForm.captcha : undefined
        })
        
        // 登录成功
        ElMessage.success('登录成功')
        
        // 记住用户名
        if (loginForm.rememberMe) {
          localStorage.setItem('rememberedUsername', loginForm.username)
        } else {
          localStorage.removeItem('rememberedUsername')
        }
        
        // 重置登录尝试次数
        sessionStorage.removeItem('loginAttempts')
        
        // 重定向
        router.push(redirectPath.value)
      } catch (error) {
        // 登录失败
        loginAttempts.value++
        sessionStorage.setItem('loginAttempts', loginAttempts.value)
        
        // 登录失败3次后显示验证码
        if (loginAttempts.value >= 3) {
          showCaptcha.value = true
          refreshCaptcha()
        }
        
        ElMessage.error(error.message || '登录失败，请检查用户名和密码')
      } finally {
        loading.value = false
      }
    }
  })
}

// 前往注册页
const goToRegister = () => {
  router.push('/register')
}

// 前往找回密码页
const goToForgotPassword = () => {
  // 假设有一个忘记密码的页面
  router.push('/forgot-password')
}
</script>

<template>
  <div class="login-page">
    <div class="container">
      <div class="login-container">
        <h2 class="page-title">用户登录</h2>
        
        <div class="card login-card">
          <el-form
            ref="loginFormRef"
            :model="loginForm"
            :rules="loginRules"
            label-position="top"
          >
            <el-form-item label="用户名" prop="username">
              <el-input 
                v-model="loginForm.username" 
                placeholder="请输入用户名"
                prefix-icon="User"
              />
            </el-form-item>
            
            <el-form-item label="密码" prop="password">
              <el-input 
                v-model="loginForm.password" 
                type="password" 
                placeholder="请输入密码"
                prefix-icon="Lock"
                show-password
                @keyup.enter="handleLogin"
              />
            </el-form-item>
            
            <!-- 验证码 -->
            <el-form-item v-if="showCaptcha" label="验证码" prop="captcha">
              <div class="captcha-container">
                <el-input 
                  v-model="loginForm.captcha"
                  placeholder="请输入验证码"
                />
                <div class="captcha-img" @click="refreshCaptcha">
                  <img :src="captchaUrl" alt="验证码" />
                </div>
              </div>
            </el-form-item>
            
            <div class="form-options">
              <el-checkbox v-model="loginForm.rememberMe">记住我</el-checkbox>
              <a class="forgot-password" @click="goToForgotPassword">忘记密码?</a>
            </div>
            
            <div class="form-actions">
              <el-button 
                type="primary" 
                :loading="loading" 
                @click="handleLogin"
                style="width: 100%"
              >
                登录
              </el-button>
            </div>
            
            <div class="register-link">
              <span>还没有账号?</span>
              <a @click="goToRegister">立即注册</a>
            </div>
            
            <!-- 社交登录选项 -->
            <div class="social-login">
              <div class="divider">
                <span>或使用以下方式登录</span>
              </div>
              <div class="social-icons">
                <button class="social-icon wechat">
                  <i class="el-icon-wechat"></i>
                </button>
                <button class="social-icon weibo">
                  <i class="el-icon-weibo"></i>
                </button>
                <button class="social-icon qq">
                  <i class="el-icon-qq"></i>
                </button>
              </div>
            </div>
          </el-form>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.login-page {
  min-height: 100vh;
  display: flex;
  align-items: center;
  padding: 40px 0;
}

.login-container {
  max-width: 450px;
  width: 100%;
  margin: 0 auto;
}

.login-card {
  padding: 30px;
}

.form-options {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.forgot-password {
  color: #409EFF;
  cursor: pointer;
}

.form-actions {
  margin-bottom: 20px;
}

.register-link {
  text-align: center;
  margin-bottom: 25px;
}

.register-link a {
  color: #409EFF;
  margin-left: 5px;
  cursor: pointer;
}

.captcha-container {
  display: flex;
  gap: 10px;
}

.captcha-img {
  height: 40px;
  cursor: pointer;
  border: 1px solid #dcdfe6;
  border-radius: 4px;
  overflow: hidden;
}

.captcha-img img {
  height: 100%;
  width: auto;
}

/* 社交登录 */
.social-login {
  margin-top: 30px;
}

.divider {
  display: flex;
  align-items: center;
  margin: 20px 0;
}

.divider:before,
.divider:after {
  content: "";
  flex: 1;
  border-bottom: 1px solid #EBEEF5;
}

.divider span {
  padding: 0 10px;
  color: #909399;
  font-size: 14px;
}

.social-icons {
  display: flex;
  justify-content: center;
  gap: 20px;
  margin-top: 15px;
}

.social-icon {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  border: none;
  color: white;
  font-size: 20px;
}

.wechat {
  background-color: #07C160;
}

.weibo {
  background-color: #E6162D;
}

.qq {
  background-color: #12B7F5;
}

@media (max-width: 576px) {
  .login-card {
    padding: 20px;
  }
}
</style>