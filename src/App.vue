<template>
  <div id="app">
    <NGB/>
    <router-view></router-view>

  </div>
</template>

<script>
import NGB from "./components/publicvue/ngb.vue";
export default {
  name: 'App',
  components: {
    NGB
  }
}
</script>

<style>
@import url(./assets/css/reset.css);
*{
  text-decoration: none;
  margin: 0;
  padding: 0;
  list-style: none;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background: rgb(247, 247, 247);
  min-width: 1100px;
}
</style>
