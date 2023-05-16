<template>
  <div class="a">
    <div class="register">
      <div class="register_box">
        <form :model="restForm">
          <p>欢迎加入次元大家庭</p>
          <div>
            <input type="text" placeholder="输入邮箱" :model="restForm.email" />
          </div>
          <div>
            <input
              type="password"
              placeholder="输入密码"
              :model="restForm.password"
            />
          </div>
          <div>
            <input type="password" placeholder="确认密码" />
          </div>
          <div>
            <button type="primary" @click="rest_affirm()">注册</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Resgister",
  data() {
    return {
      restForm: {
        email: "",
        password: "",
      },
    };
  },
  methods: {
    rest_affirm() {
      this.$router.push("/home");
      /* if (this.restForm != null) {
        
      } */
    },
  },
};
</script>
<style scoped>
/* 样式 */
.a {
  width: 100vw;
  height: 94.4vh;
  background: url("../assets/img/a_bgd.png") no-repeat;
  filter: brightness(80%);
  background-size: 100% 100%;
  background-attachment: fixed;
}
.register {
  position: relative;
}
.register_box {
  width: 500px;
  height: auto;
  background-color: aliceblue;
  position: absolute;
  top: 200px;
  right: 30%;
}
.register div input {
  width: 300px;
  height: 30px;
  border-radius: 5px;
}
</style>
