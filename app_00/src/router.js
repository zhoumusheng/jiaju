import Vue from 'vue'
import Router from 'vue-router'

import Index from './components/Index.vue'
import Login from './components/common/Login.vue'
import Register from './components/common/Register.vue'
import Sheji from './components/Sheji.vue'
import Zhuangxiu from './components/Zhuangxiu.vue'
import Zhuangshi from './components/Zhuangshi.vue'
import Shenghuo from './components/Shenghuo.vue'
import Pingce from './components/Pingce.vue'
import Shipin from './components/Shipin.vue'
import Zhuanti from './components/Zhuanti.vue'
import Pinpai from './components/Pinpai.vue'

import Allbrand from './components/common/Allbrand.vue'

Vue.use(Router)

export default new Router({
  routes:[
    {path:'/',redirect:"/Index"},
    {path:'/Index',component:Index},
    {path:'/login',component:Login},
    {path:'/register',component:Register},
    {path:'/sheji',component:Sheji},
    {path:'/zhuangxiu',component:Zhuangxiu},
    {path:'/zhuangshi',component:Zhuangshi},
    {path:'/shenghuo',component:Shenghuo},
    {path:'/pingce',component:Pingce},
    {path:'/shipin',component:Shipin},
    {path:'/zhuanti',component:Zhuanti},
    {path:'/pinpai',component:Pinpai},

    {path:'/allbrand',component:Allbrand},
  ],
})









