<template>
  <div id="app">
    <nav id="nav" class="navbar navbar-light bg-light">
      <router-link to="/">Listagem de Animais</router-link>
      <router-link to="/catalogo">Catálogo de Adoção</router-link>
      <router-link to="/novo">Novo</router-link>
    </nav>
    <router-view/>
  </div>
</template>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 30px;
  a {
    font-weight: bold;
    color: #2c3e50;
    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
