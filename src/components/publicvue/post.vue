<template>
  <div class="post">
    <ul>
      <li class="list letf_list">
        <div
          class="tiezi"
          v-for="(item, index) in dataList"
          :key="item.id"
          v-if="index % 2 === 0"
        >
          <div class="user">
            <el-avatar
              :size="30"
              src="https://p.qqan.com/up/2021-1/16100008745562727.jpg"
              @error="errorHandler"
            >
              <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
            </el-avatar>
            <span>username</span>
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
      <li class="list right_list">
        <div
          class="tiezi"
          v-for="(item, index) in dataList"
          :key="item.id"
          v-if="!(index % 2 === 0)"
        >
          <div class="user">
            <el-avatar
              :size="30"
              src="https://p.qqan.com/up/2021-1/16100008745562727.jpg"
              @error="errorHandler"
            >
              <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
            </el-avatar>
            <span>username</span>
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
  </div>
</template>

<script>
import service from "@/service";
export default {
  name: "post",

  data() {
    return {
      isTwo: 1,
      dataList: [],
    };
  },
  created() {
    this.getAll();
  },
  computed: {
    getEgg() {
      console.log(this.dataList);
    },
  },
  mounted() {},

  methods: {
    errorHandler() {
      return true;
    },
    getAll() {
      service.get("/posts").then((res) => {
        console.log(res.data);
        this.dataList = res.data;
      });
    },
  },
};
</script>

<style scoped>
.user {
  margin: 10px 10px;
  text-align: left;
}

.user * {
  margin: 0 3px;
  vertical-align: middle;
}

.title {
  font-family: "Lucida Console Emoji", Courier, monospace;
}

.tiezi {
  padding: 1% 1%;
  width: 98%;
  background: #ffffff;
  border-radius: 8px;
  margin: 20px 0;
}

i {
  margin: 0 15px;
}

.T-img {
  margin: 10px auto;
  width: 98%;
}

.T-img img {
  width: auto;
  height: auto;
  max-width: 100%;
  max-height: 100%;
}
ul {
  width: 50%;
  margin: 0 auto;
}
ul:after {
  display: block;
  content: "";
  clear: both;
}
.list {
  display: block;
  float: left;
  width: 47.9%;
  margin: 20px 10px;
}

.list_left {
}
.list_right {
}
</style>
