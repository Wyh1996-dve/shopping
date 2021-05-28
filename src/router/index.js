import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Search from '../views/Search.vue'
import Position from '../components/Position.vue'
import Data from '../components/Data.vue'
import Details from '../views/Details.vue'
import Product from '../views/Product.vue'
import Styles from '../views/Styles.vue'
Vue.use(VueRouter)

const routes = [
  {
    path: '/data',
    name: 'Data',
    component:Data
  },
  {
    path: '/styles',
    name: 'Styles',
    component:Styles
  },
  {
    path: '/product',
    name: 'Product',
    component:Product
  },
  {
    path: '/details',
    name: 'Details',
    component:Details
  },
  {
    path: '/position',
    name: 'Position',
    component:Position
  },
  {
    path: '/search',
    name: 'Search',
    component: Search
  },
  {
    path: '/',
    name: 'Home',
    component: Home
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
