import { defineStore } from 'pinia'
import axios from 'axios'

export const useFlightStore = defineStore('flight', {
  state: () => ({
    flights: [],
    flight: null,
    loading: false,
    error: null
  }),
  
  getters: {
    getFlightById: (state) => (id) => {
      return state.flights.find(flight => flight.fid === parseInt(id))
    }
  },
  
  actions: {
    async fetchFlights(params) {
      this.loading = true
      this.error = null
      try {
        // 这里应该替换为真实的API请求
        // const response = await axios.get('/api/flights', { params })
        // this.flights = response.data
        
        // 模拟数据
        const mockFlights = [
          {
            fid: 1,
            aid: 12,
            start_point: '北京',
            end_point: '上海',
            start_time: '2025-03-15 08:00:00',
            end_time: '2025-03-15 10:30:00',
            distance: 1200,
            airplane: {
              aid: 12,
              aname: 'Fujii Hazuki',
              arate: 4.8,
              f_class_cnt: 10,
              b_class_cnt: 30,
              e_class_cnt: 150
            },
            prices: {
              f_class: 1800,
              b_class: 1200,
              e_class: 800
            }
          },
          {
            fid: 2,
            aid: 13,
            start_point: '上海',
            end_point: '广州',
            start_time: '2025-03-16 12:00:00',
            end_time: '2025-03-16 14:15:00',
            distance: 1500,
            airplane: {
              aid: 13,
              aname: 'Peggy Patterson',
              arate: 4.6,
              f_class_cnt: 8,
              b_class_cnt: 24,
              e_class_cnt: 180
            },
            prices: {
              f_class: 2000,
              b_class: 1400,
              e_class: 900
            }
          },
          {
            fid: 3,
            aid: 14,
            start_point: '广州',
            end_point: '成都',
            start_time: '2025-03-17 15:30:00',
            end_time: '2025-03-17 18:00:00',
            distance: 1700,
            airplane: {
              aid: 14,
              aname: 'Larry Black',
              arate: 4.5,
              f_class_cnt: 12,
              b_class_cnt: 36,
              e_class_cnt: 200
            },
            prices: {
              f_class: 2300,
              b_class: 1600,
              e_class: 1000
            }
          }
        ]
        
        // 根据搜索参数过滤航班
        if (params) {
          this.flights = mockFlights.filter(flight => {
            let match = true
            if (params.start_point && flight.start_point !== params.start_point) {
              match = false
            }
            if (params.end_point && flight.end_point !== params.end_point) {
              match = false
            }
            if (params.date) {
              const flightDate = flight.start_time.split(' ')[0]
              if (flightDate !== params.date) {
                match = false
              }
            }
            return match
          })
        } else {
          this.flights = mockFlights
        }
        
        return this.flights
      } catch (error) {
        this.error = error.message
        throw error
      } finally {
        this.loading = false
      }
    },
    
    async fetchFlightById(id) {
      this.loading = true
      this.error = null
      try {
        // 先从缓存中查找
        const cachedFlight = this.getFlightById(id)
        if (cachedFlight) {
          this.flight = cachedFlight
          return cachedFlight
        }
        
        // 这里应该替换为真实的API请求
        // const response = await axios.get(`/api/flights/${id}`)
        // this.flight = response.data
        
        // 模拟获取单个航班数据
        const mockFlight = {
          fid: parseInt(id),
          aid: 12,
          start_point: '北京',
          end_point: '上海',
          start_time: '2025-03-15 08:00:00',
          end_time: '2025-03-15 10:30:00',
          distance: 1200,
          airplane: {
            aid: 12,
            aname: 'Fujii Hazuki',
            arate: 4.8,
            f_class_cnt: 10,
            b_class_cnt: 30,
            e_class_cnt: 150
          },
          prices: {
            f_class: 1800,
            b_class: 1200,
            e_class: 800
          }
        }
        
        this.flight = mockFlight
        return mockFlight
      } catch (error) {
        this.error = error.message
        throw error
      } finally {
        this.loading = false
      }
    }
  }
}) 