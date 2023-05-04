<template>
    <div class="home">
        <div class="tiezi" :style="{height:isTwo=1?'500px':'600px'}">
            <div class="user">
                <el-avatar :size="30" src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" @error="errorHandler">
                    <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
                </el-avatar>
                <span>username</span>
            </div>
            <div>
                帖子内容
                zxc
                zxc
                zxc
                zxc
            </div>
            <i class="el-icon-star-off">收藏</i>
            <i class="el-icon-chat-line-round">评论</i>
            <i class="el-icon-share">转发</i>
            <i>❤点赞</i>
        </div>
        <div class="tiezi" :style="{height:isTwo=1?'500px':'600px'}">
            <div class="user">
                <el-avatar :size="30" src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" @error="errorHandler">
                    <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
                </el-avatar>
                <span>username</span>
            </div>
            <div>
                帖子内容
                zxc
                zxc
                zxc
                zxc
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
    name: 'CiyuanfengxiHome',

    data() {
        return {
            isTwo:1,
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
.user * {
    vertical-align: middle;
}
.tiezi{
    width: 22%;
    background: #949494;
    margin: 0 auto;
}
i{
    margin: 0 15px;
}
</style>