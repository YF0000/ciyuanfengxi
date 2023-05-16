<template>
<<<<<<< HEAD
  <div class="header">
    <div>
      <a class="logo" href="/">
        <img
          src="https://lf1-cdn2-tos.bytegoofy.com/bcy/image/logo-home.ac29f0.png"
          alt="半次元"
        />
      </a>
      <div class="nav_ul">
        <router-link to="/home">首页</router-link>
        <router-link to="/home">番剧</router-link>
        <router-link to="/home">漫画</router-link>
      </div>
      <el-select
        v-model="value"
        multiple
        filterable
        remote
        reserve-keyword
        placeholder="请输入关键词"
        :remote-method="remoteMethod"
        :loading="loading"
      >
        <el-option
          v-for="item in options"
          :key="item.value"
          :label="item.label"
          :value="item.value"
        >
        </el-option>
      </el-select>
      <el-badge :value="200" :max="99" class="item">
        <el-button size="small">消息</el-button>
      </el-badge>
      <div class="regist" v-if="isLogin">
        <span @click="login()">登录</span>
        <span @click="rest()">注册</span>
      </div>
      <el-avatar
        v-else
        style="vertical-align: middle; margin: 0 20px"
        :size="35"
        src="https://p.qqan.com/up/2021-1/16100008745562727.jpg"
        @error="errorHandler"
      >
        <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
      </el-avatar>
      <el-button type="primary" icon="el-icon-edit">上传</el-button>
    </div>
    <div class="login_box" v-if="isLoginBox">
      <p>sss</p>
      <input type="text" />
      <button>sss</button>
    </div>
  </div>
=======
    <div class="header">
        <div>
            <a class="logo" href="/">
                <img src="https://lf1-cdn2-tos.bytegoofy.com/bcy/image/logo-home.ac29f0.png" alt="半次元">
            </a>
            <div class="nav_ul">
                <router-link to="/home">首页</router-link>
                <router-link to="/home">番剧</router-link>
                <router-link to="/home">漫画</router-link>
            </div>
            <el-select v-model="value" multiple filterable remote reserve-keyword placeholder="请输入关键词"
                :remote-method="remoteMethod" :loading="loading">
                <el-option v-for="item in options" :key="item.value" :label="item.label" :value="item.value">
                </el-option>
            </el-select>
            <el-badge :value="200" :max="99" class="item">
                <el-button size="small">消息</el-button>
            </el-badge>
            <div class="regist" v-if="isLogin">
                <span>登录</span>
                <span>注册</span>
            </div>
            <el-avatar v-else style="vertical-align: middle;margin: 0 20px;" :size="35"
                src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" @error="errorHandler">
                <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
            </el-avatar>
            <el-button type="primary" icon="el-icon-edit">上传2333</el-button>
        </div>
    </div>
>>>>>>> be0c276e8b73a2d6e8ed1a8783ac7c4786763c82
</template>

<script>
export default {
<<<<<<< HEAD
  name: "ngb",

  data() {
    return {
      isLogin: true,
      isLoginBox: false,
      options: [],
      value: [],
      list: [],
      loading: false,
      states: [
        "Alabama",
        "Alaska",
        "Arizona",
        "Arkansas",
        "California",
        "Colorado",
        "Connecticut",
        "Delaware",
        "Florida",
        "Georgia",
        "Hawaii",
        "Idaho",
        "Illinois",
        "Indiana",
        "Iowa",
        "Kansas",
        "Kentucky",
        "Louisiana",
        "Maine",
        "Maryland",
        "Massachusetts",
        "Michigan",
        "Minnesota",
        "Mississippi",
        "Missouri",
        "Montana",
        "Nebraska",
        "Nevada",
        "New Hampshire",
        "New Jersey",
        "New Mexico",
        "New York",
        "North Carolina",
        "North Dakota",
        "Ohio",
        "Oklahoma",
        "Oregon",
        "Pennsylvania",
        "Rhode Island",
        "South Carolina",
        "South Dakota",
        "Tennessee",
        "Texas",
        "Utah",
        "Vermont",
        "Virginia",
        "Washington",
        "West Virginia",
        "Wisconsin",
        "Wyoming",
      ],
    };
  },
  mounted() {
    this.list = this.states.map((item) => {
      return { value: `value:${item}`, label: `label:${item}` };
    });
  },
  methods: {
    errorHandler() {
      return true;
    },
    remoteMethod(query) {
      if (query !== "") {
        this.loading = true;
        setTimeout(() => {
          this.loading = false;
          this.options = this.list.filter((item) => {
            return item.label.toLowerCase().indexOf(query.toLowerCase()) > -1;
          });
        }, 200);
      } else {
        this.options = [];
      }
    },
    login() {
      this.isLoginBox = !this.isLoginBox;
    },
    rest() {
      this.$router.push("/register");
    },
  },
=======
    name: 'ngb',

    data() {
        return {
            isLogin: true,
            options: [],
            value: [],
            list: [],
            loading: false,
            states: ["Alabama", "Alaska", "Arizona",
                "Arkansas", "California", "Colorado",
                "Connecticut", "Delaware", "Florida",
                "Georgia", "Hawaii", "Idaho", "Illinois",
                "Indiana", "Iowa", "Kansas", "Kentucky",
                "Louisiana", "Maine", "Maryland",
                "Massachusetts", "Michigan", "Minnesota",
                "Mississippi", "Missouri", "Montana",
                "Nebraska", "Nevada", "New Hampshire",
                "New Jersey", "New Mexico", "New York",
                "North Carolina", "North Dakota", "Ohio",
                "Oklahoma", "Oregon", "Pennsylvania",
                "Rhode Island", "South Carolina",
                "South Dakota", "Tennessee", "Texas",
                "Utah", "Vermont", "Virginia",
                "Washington", "West Virginia", "Wisconsin",
                "Wyoming"]
        }
    },
    mounted() {
        this.list = this.states.map(item => {
            return { value: `value:${item}`, label: `label:${item}` };
        });
    },
    methods: {
        errorHandler() {
            return true
        },
        remoteMethod(query) {
            if (query !== '') {
                this.loading = true;
                setTimeout(() => {
                    this.loading = false;
                    this.options = this.list.filter(item => {
                        return item.label.toLowerCase()
                            .indexOf(query.toLowerCase()) > -1;
                    });
                }, 200);
            } else {
                this.options = [];
            }
        }
    }
>>>>>>> be0c276e8b73a2d6e8ed1a8783ac7c4786763c82
};
</script>

<style scoped>
<<<<<<< HEAD
.logo > img {
  width: 120px;
  margin-left: -7%;
  margin-right: 7%;
  vertical-align: middle;
}
.header {
  padding: 7px 0;
  width: 100%;
  background: white;
  position: relative;
}
.nav_ul {
  display: inline-block;
}
.nav_ul a {
  color: #000;
  width: 35px;
  height: 35px;
  line-height: 35px;
  margin: 0 6px;
}

.el-select {
  margin: 0 15%;
}

.regist {
  display: inline-block;
}

.regist > span {
  margin: 0 12px;
  color: #5f5f5f;
}
.el-badge {
  margin: 0 1%;
}
.login_box {
  position: absolute;
  background-color: red;
  width: 200px;
  height: 200px;
  top: 300px;
  right: 400px;
  z-index: 1;
}
</style>
=======
.logo>img{
    width: 120px;
    margin-left: -7%;
    margin-right: 7%;
    vertical-align: middle;
}
.header {
    padding: 7px 0;
    width: 100%;
    background: white;
}
.nav_ul{
    display: inline-block;
}
.nav_ul a {
    color: #000;
    width: 35px;
    height: 35px;
    line-height: 35px;
    margin: 0 6px;
}

.el-select {
    margin: 0 15%;
}

.regist {
    display: inline-block;
}

.regist>span {
    margin: 0 12px;
    color: #5f5f5f;
}
.el-badge {
    margin: 0 1%;
}
</style>
>>>>>>> be0c276e8b73a2d6e8ed1a8783ac7c4786763c82
