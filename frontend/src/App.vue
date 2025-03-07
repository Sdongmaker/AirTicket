<script setup>
import { RouterView } from 'vue-router'
import { computed } from 'vue'
import { useUserStore } from './stores/user'
import AppHeader from './components/AppHeader.vue'
import AppFooter from './components/AppFooter.vue'

const userStore = useUserStore()
const isAuthenticated = computed(() => userStore.isAuthenticated)
const isAdmin = computed(() => userStore.isAdmin)
</script>

<template>
  <div id="app">
    <AppHeader />
    <main class="main-content">
      <RouterView />
    </main>
    <AppFooter />
  </div>
</template>

<style>
.main-content {
  flex: 1;
  margin-top: 64px;
  min-height: calc(100vh - 64px - 80px);
}
</style>
