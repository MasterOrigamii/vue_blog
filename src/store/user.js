import session from '../utilities/session'
import axios from '../utilities/axios'
import config from '../config'
import router from '../router'
import swal from "sweetalert";
/* eslint-disable no-param-reassign */

/**
 * Vuex状态管理基本思路：
 * vue components 分发到 action
 * action 异步操作，commit 到 mutation
 * mutation 再对 state 做操作
 */

export default {
  state: {
    auth: session.getAuth(),
    user: session.getUser(),
  },
  getters: {
    //第一个参数是state，第二个参数是getter本身
    isAuthenticated(state) {
      return state.auth !== null && typeof state.auth !== 'undefined'
    },
    auth(state) {
      return state.auth
    },
    user(state) {
      return state.user
    },
  },
  mutations: {
    //第一个参数固定是state，如果有传参，那么必然是传给obj
    //若没有传参，则obj为空
    setAuthentication(state, obj) {
      if (obj) {
        state.auth = obj.token
        state.user = obj.login
        session.setAuthentication(obj)
      } else {
        state.auth = null
        state.user = null
        session.clear()
      }
    },
  },
  actions: {
    logout(context) {
      context.commit('setAuthentication')
      router.push('/home')
    },
    login(context, obj) {
      return axios
        .post(`${config.api}/auth/login`, obj)
        .then(res => {
          context.commit('setAuthentication', res.data)
        })
        .catch(() => {
          swal('Invalid credentials!', 'Please try again!', 'error')
        })
    },
    register(context, obj) {
      return axios
        .post(`${config.api}/auth/register`, obj)
        .then(() => {
          swal('Account created', 'Please login!', 'success')
          router.push('/login')
        })
        .catch(() => {
          swal('Invalid credentials!', 'Please try again!', 'error')
        })
    },
    updateLogin(context, obj) {
      return axios
        .post(`${config.api}/auth/user`, obj)
        .then(() => {
          swal('Account updated', 'Please login!', 'success')
        })
        .catch(() => {
          swal('Invalid data!', 'Please try again!', 'error')
        })
    },
  },
}
