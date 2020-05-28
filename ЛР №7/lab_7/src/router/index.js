import Vue from 'vue'
import VueRouter from 'vue-router'
import List from '../views/List.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/list',
    name: 'List',
    component: List
  },
  
  {
    path: '/basket',
    name: 'Basket',
    component: () => import('../views/Basket.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  routes
})

export default router
