import { defineStore } from 'pinia'
import axios from 'axios'

export const useOrderStore = defineStore('order', {
  state: () => ({
    orders: [],
    loading: false,
    error: null
  }),
  
  getters: {
    getOrderById: (state) => (id) => {
      return state.orders.find(order => order.oid === parseInt(id))
    }
  },
  
  actions: {
    async fetchUserOrders(userId) {
      this.loading = true
      this.error = null
      try {
        // 这里应该替换为真实的API请求
        // const response = await axios.get(`/api/users/${userId}/orders`)
        // this.orders = response.data
        
        // 模拟数据
        this.orders = [
          {
            oid: 1,
            status: 1,
            fid: 1,
            uid: userId,
            prices: 800,
            days: '2025-03-15',
            statusText: '已支付',
            flight: {
              fid: 1,
              start_point: '北京',
              end_point: '上海',
              start_time: '2025-03-15 08:00:00',
              end_time: '2025-03-15 10:30:00'
            }
          },
          {
            oid: 2,
            status: 0,
            fid: 2,
            uid: userId,
            prices: 900,
            days: '2025-03-16',
            statusText: '待支付',
            flight: {
              fid: 2,
              start_point: '上海',
              end_point: '广州',
              start_time: '2025-03-16 12:00:00',
              end_time: '2025-03-16 14:15:00'
            }
          }
        ]
        
        return this.orders
      } catch (error) {
        this.error = error.message
        throw error
      } finally {
        this.loading = false
      }
    },
    
    async createOrder(orderData) {
      this.loading = true
      this.error = null
      try {
        // 这里应该替换为真实的API请求
        // const response = await axios.post('/api/orders', orderData)
        // return response.data
        
        // 模拟创建订单
        const newOrder = {
          oid: Math.floor(Math.random() * 1000) + 10,
          status: 0,
          fid: orderData.fid,
          uid: orderData.uid,
          prices: orderData.prices,
          days: orderData.days,
          statusText: '待支付',
          flight: {
            fid: orderData.fid,
            start_point: orderData.start_point,
            end_point: orderData.end_point,
            start_time: orderData.start_time,
            end_time: orderData.end_time
          }
        }
        
        this.orders.push(newOrder)
        return newOrder
      } catch (error) {
        this.error = error.message
        throw error
      } finally {
        this.loading = false
      }
    },
    
    async updateOrderStatus(orderId, status) {
      this.loading = true
      this.error = null
      try {
        // 这里应该替换为真实的API请求
        // const response = await axios.patch(`/api/orders/${orderId}`, { status })
        // return response.data
        
        // 模拟更新订单状态
        const orderIndex = this.orders.findIndex(order => order.oid === orderId)
        if (orderIndex !== -1) {
          this.orders[orderIndex].status = status
          
          const statusMap = {
            0: '待支付',
            1: '已支付',
            2: '已取消',
            3: '已完成'
          }
          
          this.orders[orderIndex].statusText = statusMap[status]
          return this.orders[orderIndex]
        }
        
        throw new Error('订单不存在')
      } catch (error) {
        this.error = error.message
        throw error
      } finally {
        this.loading = false
      }
    },
    
    async payOrder(orderId) {
      return this.updateOrderStatus(orderId, 1)
    },
    
    async cancelOrder(orderId) {
      return this.updateOrderStatus(orderId, 2)
    },
    
    async completeOrder(orderId) {
      return this.updateOrderStatus(orderId, 3)
    }
  }
}) 