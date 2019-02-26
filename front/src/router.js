import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Catalogo from './views/Catalogo.vue'
import Novo from './views/Novo.vue'
import Editar from './views/Editar.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/catalogo',
      name: 'catalogo',
      component: Catalogo
    },
    {
      path: '/novo',
      name: 'novo',
      component: Novo
    },
    {
      path: '/editar/:id',
      name: 'editar',
      component: Editar
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
