import { defineStore } from 'pinia'
import axios from 'axios'

export const useUserStore = defineStore('user', {
  state: () => ({
    user: null,
    token: localStorage.getItem('token') || null,
    role: localStorage.getItem('userRole') || null
  }),
  
  getters: {
    isAuthenticated: (state) => !!state.token,
    isAdmin: (state) => state.role === '管理员',
    userInfo: (state) => state.user
  },
  
  actions: {
    setUser(userData) {
      this.user = userData
      this.role = userData.role
      if (userData.token) {
        this.token = userData.token
        localStorage.setItem('token', userData.token)
        localStorage.setItem('userRole', userData.role)
      }
    },
    
    async login(credentials) {
      try {
        // 这里应该替换为真实的API请求
        // const response = await axios.post('/api/login', credentials)
        // this.setUser(response.data)
        // return response.data
        
        // 模拟登录
        if (credentials.username === 'admin' && credentials.password === 'admin') {
          const adminUser = {
            uid: 1,
            username: 'admin',
            role: '管理员',
            email: 'admin@example.com',
            token: 'admin-token-123'
          }
          this.setUser(adminUser)
          return adminUser
        } else if (credentials.username === 'user' && credentials.password === 'user') {
          const normalUser = {
            uid: 2,
            username: 'user',
            role: '用户',
            email: 'user@example.com',
            token: 'user-token-456'
          }
          this.setUser(normalUser)
          return normalUser
        } else {
          throw new Error('用户名或密码错误')
        }
      } catch (error) {
        throw error
      }
    },
    
    logout() {
      this.user = null
      this.token = null
      this.role = null
      localStorage.removeItem('token')
      localStorage.removeItem('userRole')
    },
    
    async register(userData) {
      try {
        // 这里应该替换为真实的API请求
        // const response = await axios.post('/api/register', userData)
        // return response.data
        
        // 模拟注册
        return {
          success: true,
          message: '注册成功，请登录'
        }
      } catch (error) {
        throw error
      }
    }
  }
}) 