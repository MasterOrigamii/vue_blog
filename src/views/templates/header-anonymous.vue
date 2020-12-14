<template>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">
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

          <li class="nav-item" id="Login">
            <router-link
              class="nav-link"
              to="/auth/login">Login</router-link>
          </li>
          <li class="nav-item" id="Register">
            <router-link
              class="nav-link"
              to="/auth/register">Register</router-link>
          </li>
        </ul>
      </div>


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
  .nav-link{
    font-size :16px;
  }
  .navbar-brand{
    font-size :30px;
  }
</style>
