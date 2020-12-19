import Vue from 'vue'
import store from '../store'
import VueRouter from 'vue-router'
import PostDetail from '../PostDetail.vue'
import Blog from '../Blog.vue'
import WriteBlog from "../views/home/WriteBlog";
import register from '../views/account/register.vue'
import login from '../views/account/login.vue'
import account from '../views/account/index.vue'
import notFound from '../views/error/notFound.vue'

// home
import index from '../views/home/index.vue'
import feedback from '../views/home/feedback.vue'
import about from '../views/home/about.vue'
import contact from '../views/home/contact.vue'

Vue.use(VueRouter);

// ENABLE SINGLE PAGE APP ROUTING

const router = new VueRouter({
  mode: 'history',
  root:'/',
  routes:[
    { path: '/home', redirect:'/' },
    {
      path: '/',
      component: Blog ,
      meta: {
        skipIfAuthorized: false,
        isOpen: true,
      }
    },
    {
      path: '/auth/login',
      component: login,
      name: 'login',
      meta: {
        skipIfAuthorized: true,
        isOpen: true,
      }
    },
    {
      path: '/auth/register',
      component: register,
      meta: {
        skipIfAuthorized: true,
        isOpen: true,
      },
    },
    { path: '/post/:id', component: PostDetail,
      meta: {
        skipIfAuthorized: false,
        isOpen: true,
      }
    },
    { path: '/write/', component: WriteBlog },
    { path: '/account', component: account },
    {
      path: '*',
      component: notFound,
      meta: {
        isOpen: true,
      },
    },
    {
      path: '/about',
      component: about,
      meta: {
        isOpen: true,
      }
    }

  ]
})

// 路由守卫
router.beforeEach((to, from, next) => {
  if (store.getters.isAuthenticated) {
    if (to.path === '/auth/logout') {
      store.dispatch('logout')
    } else if (to.matched.some(record => record.meta.skipIfAuthorized)) {
      next({
        path: '/home',
      })
    } else {
      next()
    }
  } else if (to.matched.some(record => record.meta.isOpen)) {
    next()
  }
  else {

    next({
      name:'login'
    })
  }
})

export default router
