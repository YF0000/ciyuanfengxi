<template>
  <div id="app">
    <Header/>
  </div>
</template>

<script>
import Header from "./components/publicvue/header.vue";

export default {
  name: 'App',
  components: {
    Header
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
