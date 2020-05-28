<template>
  <div id="app">
    <div id="nav">
      <router-link to="/basket">Корзина</router-link> |
      <router-link to="/list">Список</router-link>
    </div>
    <router-view/>
  </div>
</template>

<style>
body {
  margin: 0;
}

#app {
  font: 16px 'Segoe UI', Arial, Helvetica, sans-serif;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #3f8bd6;
}

#nav a.router-link-exact-active {
  color: #2205c7;
}
</style>