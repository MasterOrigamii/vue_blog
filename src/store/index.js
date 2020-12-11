import vue from 'vue'
import vuex from 'vuex'

import userModule from './user'
import stateModule from './state'

vue.use(vuex)

//store类似一个单示例，存放适合全局共享的数据
const store = new vuex.Store({
  modules: {
    user: userModule,
    stat: stateModule,
  },
})

export default store
