import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: () => import('../views/Home.vue')
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('../views/Login.vue')
  },
  {
    path: '/register',
    name: 'Register',
    component: () => import('../views/Register.vue')
  },
  {
    path: '/flight-search',
    name: 'FlightSearch',
    component: () => import('../views/FlightSearch.vue')
  },
  {
    path: '/flight-detail/:id',
    name: 'FlightDetail',
    component: () => import('../views/FlightDetail.vue')
  },
  {
    path: '/booking/:flightId',
    name: 'Booking',
    component: () => import('../views/Booking.vue'),
    meta: { requiresAuth: true }
  },
  {
    path: '/user-profile',
    name: 'UserProfile',
    component: () => import('../views/UserProfile.vue'),
    meta: { requiresAuth: true }
  },
  {
    path: '/my-orders',
    name: 'MyOrders',
    component: () => import('../views/MyOrders.vue'),
    meta: { requiresAuth: true }
  },
  {
    path: '/admin',
    name: 'Admin',
    component: () => import('../views/admin/AdminDashboard.vue'),
    meta: { requiresAuth: true, requiresAdmin: true },
    children: [
      // {
      //   path: 'users',
      //   name: 'AdminUsers',
      //   component: () => import('../views/admin/UserManagement.vue')
      // },
      // {
      //   path: 'flights',
      //   name: 'AdminFlights',
      //   component: () => import('../views/admin/FlightManagement.vue')
      // },
      // {
      //   path: 'airplanes',
      //   name: 'AdminAirplanes',
      //   component: () => import('../views/admin/AirplaneManagement.vue')
      // },
      // {
      //   path: 'orders',
      //   name: 'AdminOrders',
      //   component: () => import('../views/admin/OrderManagement.vue')
      // }
    ]
  }
]

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes
})

// 全局路由守卫
router.beforeEach((to, from, next) => {
  const isAuthenticated = localStorage.getItem('token')
  const userRole = localStorage.getItem('userRole')
  
  if (to.meta.requiresAuth && !isAuthenticated) {
    next({ name: 'Login', query: { redirect: to.fullPath } })
  } else if (to.meta.requiresAdmin && userRole !== '管理员') {
    next({ name: 'Home' })
  } else {
    next()
  }
})

export default router 