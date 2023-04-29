<template>
    <div class="header">
        <div>
            <router-link to="/home">首页</router-link>
            <router-link to="/home">番剧</router-link>
            <router-link to="/home">漫画</router-link>
            <el-select v-model="value" multiple filterable remote reserve-keyword placeholder="请输入关键词"
                :remote-method="remoteMethod" :loading="loading">
                <el-option v-for="item in options" :key="item.value" :label="item.label" :value="item.value">
                </el-option>
            </el-select>
            <el-badge :value="200" :max="99" class="item">
                <el-button size="small">消息</el-button>
            </el-badge>
            <el-avatar style="vertical-align: middle;margin: 0 20px;" :size="70" src="https://empty" @error="errorHandler">
                <img src="https://p.qqan.com/up/2021-1/16100008745562727.jpg" />
            </el-avatar>
            <el-button type="primary" icon="el-icon-edit">上传</el-button>
        </div>
    </div>
</template>

<script>
export default {
    name: 'header',

    data() {
        return {
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
};
</script>

<style scoped>
.header {
    width: 100%;
}

a {
    color: #000;
    display: inline-block;
    width: 35px;
    height: 35px;
    line-height: 35px;
    margin: 0 6px;
}

.el-select {
    margin: 0 15%;
}

.el-badge {
    margin: 0 1%;
}
</style>