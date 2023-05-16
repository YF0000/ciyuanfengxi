//引入vue
<<<<<<< HEAD
import Vue from "vue";
//引入路由
import VueRouter from "vue-router";
//使用路由
Vue.use(VueRouter);

//创建并暴露一个路由器
export default new VueRouter({
  routes: [
    {
      path: "/home",
      name: "Home",
      component: () => import("../components/home"),
    },
    {
      path: "/register",
      name: "Register",
      component: () => import("../components/Register"),
    },
  ],
});
=======
import Vue from "vue"
//引入路由
import VueRouter from "vue-router" 
//使用路由
Vue.use(VueRouter)

//创建并暴露一个路由器
export default new VueRouter({
    routes:[
        {path:"/home",name:"Home",component:()=>import("../components/home")}
    ]
})
>>>>>>> be0c276e8b73a2d6e8ed1a8783ac7c4786763c82
