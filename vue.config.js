const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  lintOnSave: false,
  devServer: {
    port: 8083,
    open: true, //启动项目自动打开页面
    proxy:{//配置跨域处理
      '/api':{
        target:'http://localhost:1212/',//前缀
        changOrigin:true,
        pathRewrite:{
          '^/api':''
        }
      }
    }
  },
})
