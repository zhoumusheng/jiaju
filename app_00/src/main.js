import Vue from 'vue'
import App from './App.vue'
import router from './router'

/**1.引入mint-UI所有的组件：完整引入 */
import MintUI from 'mint-ui'
/**2.单独引入mint-UI样式文件 */
import 'mint-ui/lib/style.css'
/**3.将mint-UI组件注册Vue实例中 */
Vue.use(MintUI);

//引入图标样式
import './font/iconfont.css'

//引入axios
import axios from './axios.js';

Vue.config.productionTip=false;

//导入MUI的样式表，和bootstrap用法没有差别
import './lib/mui/css/mui.css'
//加载图标字体文件
import './lib/mui/css/icons-extra.css'

new Vue({
  router,
  render:h => h(App)
}).$mount('#app')




















