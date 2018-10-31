import Vue from 'vue'
import Router from 'vue-router'

import Home from './components/tarbar/Home.vue'
import Classify from './components/tarbar/Classify.vue'
import Cart from './components/tarbar/Cart.vue'
import Member from './components/tarbar/Member.vue'
import Erweima from './components/memberMsg/erweima.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/Home',
      name: 'Home',
      component: Home
    },
    {
      path: '/Classify',
      name: 'Classify',
      component: Classify
    },
    {
      path: '/Cart',
      name: 'Cart',
      component: Cart
    },
    {
      path: '/Member',
      name: 'Member',
      component: Member
    },
    {
      path: '/Erweima',
      name: 'Erweima',
      component: Erweima
    }
  ],linkActiveClass:"mui-active"
})
