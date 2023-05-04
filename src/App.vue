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
}
</style>
