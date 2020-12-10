import Vue from 'vue'

import VueRouter from 'vue-router'
import PostDetail from '../PostDetail.vue'
import Blog from '../Blog.vue'
import WriteBlog from "../WriteBlog";
import register from '../views/account/register.vue'
import login from '../views/account/login.vue'

Vue.use(VueRouter);

// ENABLE SINGLE PAGE APP ROUTING
const routes = [
  { path: '/', component: Blog },
  { path: '/post/:id', component: PostDetail },
  { path: '/write/', component: WriteBlog },
  { path: '/auth/register', component: register },
  { path: '/auth/login', component: login }
];

const router = new VueRouter({
  mode: 'history',
  root:'/',
  routes
})

export default router