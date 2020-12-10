import Vue from 'vue'
import App from './App.vue'
import VueResource from 'vue-resource'
import VuePaginate from 'vue-paginate'
import router from './router'
import store from './store'
import VeeValidate from 'vee-validate'
// ENABLE USE 3RD PARTY PLUGINS
Vue.use(VeeValidate)
Vue.use(VueResource);
Vue.use(VuePaginate);

// INIT APP
new Vue({
  el: '#app',
  router,
  store,
  render: h => h(App)
})
