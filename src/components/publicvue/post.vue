<template>
    <div class="post">
        <div class="tiezi">
            <div class="user">
                <el-avatar :size="30" src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" @error="errorHandler">
                    <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
                </el-avatar>
                <span>username</span>
            </div>
            <div class="title">
                <p>标题💟💝💕💞💓</p>
            </div>
            <div class="T-img">
                <div>
                    <a href="/item/detail/7228945602476776485?_source_page=home">
                    <img
                src="https://p3-bcy-sign.bcyimg.com/banciyuan/c0290b689f004a77b3a6062241d072f7~tplv-banciyuan-sq520.image?x-expires=1699270723&amp;x-signature=x3VKkpZCEeEmD9bhTyvtJsATd68%3D"
                ></a></div>
            </div>
            <i class="el-icon-star-off">收藏</i>
            <i class="el-icon-chat-line-round">评论</i>
            <i class="el-icon-share">转发</i>
            <i>❤点赞</i>
        </div>
    </div>
</template>

<script>
export default {
    name: 'post',

    data() {
        return {
            isTwo: 1,
        };
    },

    mounted() {

    },

    methods: {
        errorHandler() {
            return true
        },
    },
};
</script>

<style scoped>
.user{
    text-align: left;
    margin-left: 10px;
}
.user * {
    margin: 0 3px;
    vertical-align: middle;
}
.title{
    font-family: "Lucida Console Emoji", Courier, monospace;
}
.tiezi {
    padding: 1% 1%;
    width: 23%;
    background: #ffffff;
    margin: 20px auto;
    border-radius: 8px;
}
i {
    margin: 0 15px;
}
.T-img{
    margin: 10px auto;
    width: 98%;
}
.T-img img{
    width: auto;
    height: auto;
    max-width: 100%;
    max-height: 100%;
}
</style>