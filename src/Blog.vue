<template>
  <div class="col-sm-12">
    <!--分页函数-->
    <paginate
      name="blogs"
      :list="posts"
      :per="6"
      tag="div"
    >
      <section v-for="blog in paginated('blogs')">
        <h4 id="title">
          {{ blog.title.substring(0,30) }}
          {{ blog.title.length>=30?"......":"" }}
        </h4>
        <router-link :to="'/post/' + blog.id" class="btn btn-link" id="readmore">read more</router-link>
<!--        <hr>-->
      </section>
    </paginate>

    <paginate-links
      for="blogs"
      :async="true"
      :show-step-links="true"
      :step-links="{
        next: 'Next',
        prev: 'Previous'
      }"
      :classes="{
        'ul': 'pagination',
        'ul > li': 'page-item',
        'ul > li > a': 'page-link',
      }"
    >
    </paginate-links>
  </div>
</template>

<script>
export default {
  data () {
    return {
      posts: [],
      paginate: ['blogs']
    }
  },
  created(){
    this.$http.get("http://localhost:9090/posts")
      .then(response => response.json(), error => console.log(error))
      .then(json => this.posts = json, error => console.log(error));
  }
}
</script>

<style>
  /*贴吧内容栏样式设置*/
  section{
    background-color: rgba(66, 185, 131, 0.09);
    padding-top: 20px;
    padding-left: 20px;
    border-bottom: solid lightgray;
    margin-bottom: 20px;
    height: 100px;
  }

  #readmore{
    float: right;
  }

</style>
