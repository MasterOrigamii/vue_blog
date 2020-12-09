<template>
  <div class="container">
    <nav class="navbar navbar-expand-md navbar-light bg-light">
      <a href="#" class="navbar-brand">贴吧</a>
      <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
        <form class="form-inline">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search">
            <div class="input-group-append">
              <button type="button" class="btn btn-secondary"><i class="fa fa-search"></i></button>
            </div>
          </div>
        </form>
        <div class="navbar-nav">
          <a href="#" class="nav-item nav-link">Login</a>
        </div>
      </div>
    </nav>

    <router-link :to="'/write/'" class="btn btn-primary" id="write">填写新Blog</router-link>
    <router-link :to="'/'" class="btn btn-primary" id="see">浏览Blog</router-link>


    <!--内容展示栏-->
    <div class="row">
      <div class="col-sm-12">
        <div class="jumbotron">
            <span class="display-6 h3">Vue.js 贴吧</span>
            <p class="lead"> A vue.js sample of Ajax, Pagination, Single Page App (SPA)...</p>
            <p></p>
        </div>
      </div>

      <!--this is the tag, where the code from “children” components is displayed-->
      <router-view ></router-view>

      <!--底端开始-->
      <footer class="col-sm-12">
        <hr>
        <p class="text-center"> <a href="http://localhost:9090/posts/" target="_blank">NodeJs Poster Service</a> &copy; 2020-12 </p>
      </footer>
    </div>
  </div>
</template>

<script>

</script>

<style>
  #see{
    background-color: red;
    width:100px;
  }
  .container {
    max-width: 900px;
  }
  h1:first-letter, h2:first-letter {
    text-transform:uppercase;
  }
  .jumbotron {
    padding: 12px;
    max-height: 100px;
  }
</style>
