<template>

  <div class="container">
    <header-template v-if="isAuthenticated" />
    <header-template-anonymous v-else/>
    <div class="beta-banner">
      <div class="alert alert-info">
        <span class="badge badge-info">Beta</span>&nbsp;
        <strong>This is a simple SPA app created by 李朴.</strong>
      </div>
    </div>

    <!--内容展示栏-->
    <div class="row">
      <div class="col-sm-12">
        <div class="jumbotron">
            <span class="display-6 h3">Vue.js 贴吧</span>
            <p class="lead"> A vue.js sample of Ajax, Pagination, Single Page App (SPA)...</p>
            <p></p>
        </div>
      </div>
    </div>
    <transition
      :name="transitionName"
      appear="appear"
      mode="out-in">
      <!--this is the tag, where the code from “children” components is displayed-->
      <router-view ></router-view>
    </transition>

    <!--底端开始-->
    <footer class="col-sm-12">
      <hr>
      <p class="text-center"> <a href="http://localhost:9090/posts/" target="_blank">NodeJs Poster Service</a> &copy; 2020-12 </p>
    </footer>
  </div>

</template>

<script>
  import headerAnonymous from './views/templates/header-anonymous.vue'
  import header from './views/templates/header.vue'

  export default {
    name: 'App',
    components: {
      'header-template': header,
      'header-template-anonymous': headerAnonymous,
    },
    data() {
      return {
        transitionName: 'slide-up'
      }
    },
    watch: {
      isAuthenticated(val) {
        if (val) {
          swal('You have successfuly logged in.', 'welcome!', 'success')
          if (this.$route.query.redirect) {
            this.$router.push({
              path: this.$route.query.redirect
            })
          } else {
            this.$router.push('/home')
          }
        } else {
          // swal('You have been logged out.', 'Good bye!', 'info')
          this.$router.push('/home')
        }
      },
      $route(to, from) {
        this.setTransition(to, from)
      }
    },
    created() {},
    methods: {
      setTransition(to, from) {
        const toDepth = to.path.split('/').length
        const fromDepth = from.path.split('/').length
        if (toDepth === fromDepth) {
          this.transitionName = 'slide-up'
        } else {
          this.transitionName = toDepth < fromDepth ? 'slide-right' : 'slide-left'
        }
      }
    }
  }
</script>

<style>

  h1:first-letter, h2:first-letter {
    text-transform:uppercase;
  }
  .jumbotron {
    padding: 12px;
    max-height: 100px;
  }

</style>
