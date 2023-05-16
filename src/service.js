import axios from "axios";

const service=axios.create({
    //baseURL 会在接口地址上添加/api，比如访问/login会变成/api/login
    baseURL:"/api",
    timeout:3000
})
export default service;