<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <li class="nav-item">
      <span class="navbar-brand">Frontend</span>
    </li>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav">

        <li class="nav-item">
          <router-link
            class="nav-link"
            to="/home">Home</router-link>
        </li>
        <li class="nav-item">
          <router-link
            class="nav-link"
            to="/write">Write</router-link>
        </li>
        <li class="nav-item">
          <router-link
            class="nav-link"
            to="/about">About</router-link>
        </li>
        <li class="nav-item" id="MyAccount">
          <router-link
            class="nav-link"
            to="/account">My Account</router-link>
        </li>
        <li class="nav-item" id="Logout">
          <span
            class="nav-link custom-link"
            @click="confirmLogout">Logout</span>
        </li>
      </ul>
    </div>
<!--    <ul class="navbar-nav ml-auto">-->

<!--    </ul>-->
  </nav>
</template>

<script>
import { mapActions } from 'vuex'

export default {
  name: 'HeaderTemplate',
  methods: {
    ...mapActions(['logout']),
    confirmLogout() {
      swal({
        title: 'Are you sure you want to logout?',
        text: '',
        icon: 'warning',
        buttons: {
          cancel: {
            text: 'Cancel',
            visible: true,
          },
          confirm: {
            text: 'Yes',
          },
        },
        dangerMode: true,
      }).then(confirm => {
        if (confirm) {
          this.logout()
        }
      })
    },
  },
}
</script>

<style lang='stylus'>
.custom-link {
  cursor: pointer;
}
</style>
