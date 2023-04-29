import Vue from 'vue'
import App from './App.vue'
//引入element组件库
import ElementUI from 'element-ui'
//引入element css样式
import "element-ui/lib/theme-chalk/index.css"
//引入配置的路由
import router from "./router/index";
//引入封装的axios
import service from './service'
Vue.config.productionTip = false

Vue.prototype.service=service;
Vue.use(ElementUI)

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
