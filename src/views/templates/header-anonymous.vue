<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <ul class="navbar-nav">
      <li class="nav-item">
        <span class="navbar-brand">Frontend</span>
      </li>

      <li class="nav-item">
        <router-link
          class="nav-link"
          to="/home">Home</router-link>
      </li>
      <li class="nav-item">
        <router-link
          class="nav-link"
          to="/about">About</router-link>
      </li>

<!--      <li class="nav-item" id="search">-->
<!--        <form class="form-inline">-->
<!--          <div class="input-group">-->
<!--            <input type="text" class="form-control" placeholder="Search">-->
<!--            <div class="input-group-append">-->
<!--              <button type="button" class="btn btn-secondary"><i class="fa fa-search"></i></button>-->
<!--            </div>-->
<!--          </div>-->
<!--        </form>-->
<!--      </li>-->

    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <router-link
          class="nav-link"
          to="/auth/login">Login</router-link>
      </li>
      <li class="nav-item">
        <router-link
          class="nav-link"
          to="/auth/register">Register</router-link>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  name: 'HeaderTemplateAnonymous',
}
</script>

<style lang='stylus'>

  #search{
    margin-left : 100px;
  }
</style>
