import Vue from 'vue'
import 'bootswatch/dist/lux/bootstrap.min.css'
import 'bootswatch/dist/lux/bootstrap.css'
import './assets/css/animations.styl'
import './assets/css/pace.styl'
import './assets/css/index.styl'
import './utilities/pace-config'
import './assets/js/pace.min'
import './utilities'

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
