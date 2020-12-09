import Vue from 'vue'
import App from './App.vue'
import VueResource from 'vue-resource'
import VuePaginate from 'vue-paginate'
import VueRouter from 'vue-router'
import PostDetail from './PostDetail.vue'
import Blog from './Blog.vue'
import HelloWorld from "./components/HelloWorld";
import WriteBlog from "./WriteBlog";

// ENABLE USE 3RD PARTY PLUGINS
Vue.use(VueResource);
Vue.use(VuePaginate);
Vue.use(VueRouter);

// ENABLE SINGLE PAGE APP ROUTING
const routes = [
  { path: '/', component: Blog },
  { path: '/post/:id', component: PostDetail },
  { path: '/write/', component: WriteBlog }
];

const router = new VueRouter({
  mode: 'history',
  routes
})

// INIT APP
new Vue({
  el: '#app',
  router,
  render: h => h(App)
})
