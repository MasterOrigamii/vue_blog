<template>
  <div>
    <!--分页函数-->
    <paginate
      name="blogs"
      :list="posts"
      :per="6"
      tag="div"
    >
      <section v-for="blog in paginated('blogs')">
        <router-link :to="'/post/' + blog.id">
        <h4 id="title">
          {{ blog.title.substring(0,limit) }}
          {{ blog.title.length>=limit?"......":"" }}
        </h4>
        </router-link>

        <router-link :to="'/post/' + blog.id" class="btn btn-link" id="readmore">read more</router-link>
<!--        <hr>-->
      </section>
    </paginate>


    <div class="col-lg-6 offset-lg-3">
      <paginate-links
        for="blogs"
        :async="true"
        :limit="8"
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

  </div>
</template>

<script>
export default {
  data () {
    return {
      posts: [],
      paginate: ['blogs'],
      limit: 300
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
  h4{
    /*控制文字仅占用一行，若超出则裁切，末尾加省略号*/
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }


</style>
