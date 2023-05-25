<template>
  <div class="post" id="post">
    <ul>
      <li class="list letf_list">
        <div
          class="tiezi"
          v-for="(item, index) in dataList"
          :key="index"
          v-if="index % 2 === 0"
        >
          <div class="user">
            <el-avatar
              :size="30"
              :src="item.user.userImg"
              @error="errorHandler"
            >
              <img :src="item.user.userImg" />
            </el-avatar>
            <span>{{item.user.userName}}</span>
          </div>
          <div class="title">
            <p>{{ item.postTitle }}</p>
          </div>
          <div class="T-img">
            <div>
              <a href="#"> <img :src="item.postCoverUrl" /></a>
            </div>
          </div>
          <i class="el-icon-star-off">收藏</i>
          <i class="el-icon-chat-line-round">评论</i>
          <i class="el-icon-share">转发</i>
          <i>❤点赞{{ item.postZan }}</i>
        </div>
      </li>
      <li class="list right_list">
        <div
          class="tiezi"
          v-for="(item, index) in dataList"
          :key="index"
          v-if="!(index % 2 === 0)"
        >
          <div class="user">
            <el-avatar
              :size="30"
              :src="item.user.userImg"
              @error="errorHandler"
            >
              <img :src="item.user.userImg" />
            </el-avatar>
            <span>{{item.user.userName}}</span>
          </div>
          <div class="title">
            <p>{{ item.postTitle }}</p>
          </div>
          <div class="T-img">
            <div>
              <a href="#"> <img :src="item.postCoverUrl" /></a>
            </div>
          </div>
          <i class="el-icon-star-off">收藏</i>
          <i class="el-icon-chat-line-round">评论</i>
          <i class="el-icon-share">转发</i>
          <i>❤点赞</i>
        </div>
      </li>
    </ul>
    <p v-if="isScroll" style="margin-top: 5px;" class="loading">
      <span></span>
    </p>

  </div>
</template>

<script>

import service from "@/service";
export default {
  name: "post",

  data() {
    return {
      count:0,
      isTwo: 1,
      dataList:[],
      isScroll:false,
    };
  },
  created() {
    this.getAll();
  },
  computed: {
    
  },
  mounted() {
    window.addEventListener('scroll',this.handlerScroll);
  },
  beforeDestroy(){
    window.removeEventListener('scroll',this.handlerScroll);
  },
  methods: {
    handlerScroll(){
      //页面卷去高度 + 浏览器可视窗口的高度 >= 整个页面的高度 
    	if (window.pageYOffset + window.innerHeight >= document.body.offsetHeight) {
          window.removeEventListener('scroll',this.handlerScroll);
          this.isScroll=true;
          this.count+=10;
          setTimeout(()=>{
            this.getAll();
            window.addEventListener('scroll',this.handlerScroll);
          },3000)
         }
    },
    errorHandler() {
      return true;
    },
    getAll() {
      service.get("/posts/"+this.count).then((res) => {
        res.data.forEach(element => {
          this.dataList.push(element);
        });
        console.log(this.dataList);
        this.isScroll=false;
      });
    },
  },
};
</script>

<style scoped>
.loading span {
  display: inline-block;
  width: 20px;
  height: 20px;
  border: 2px solid #409eff;
  border-left: transparent;
  animation: zhuan 0.5s linear infinite;
  border-radius: 50%;
}
@keyframes zhuan {
  0% {
    transform: rotate(0);
  }
  100% {
    transform: rotate(360deg);
  }
}
.post{
  padding-bottom: 150px;
}
.user {
  margin: 10px 0;
  margin-left: 10px;
  text-align: left;
}

.user * {
  margin: 0 3px;
  vertical-align: middle;
}

.title {
  padding:0 15px;
  width: 95%;
  font-size: 14px;
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.tiezi {
  padding: 1% 1%;
  background: #ffffff;
  border-radius: 8px;
  margin: 20px 0;
}

i {
  margin: 0 15px;
}

.T-img {
  margin: 10px auto;
  width: 90%;
}

.T-img img {
  width: auto;
  height: auto;
  min-width: 100%;
  max-width: 100%;
  border-radius: 6.5px;
}
ul {
  width: 50%;
  margin: 0 auto;
  overflow: auto;
}
ul:after {
  display: block;
  content: "";
  clear: both;
}
.list {
  display: block;
  float: left;
  width: 45%;
  margin: 20px 10px;
  overflow: hidden;
}

.list_left {
}
.list_right {
}
</style>
