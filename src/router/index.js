//引入vue
import Vue from "vue"
//引入路由
import VueRouter from "vue-router" 
//使用路由
Vue.use(VueRouter)

//创建并暴露一个路由器
export default new VueRouter({
    routes:[
        {path:"/home",name:"Home"}
    ]
})