<template>
  <article class="col-sm-12">
		<h5>{{ post.title }}</h5>
		<p>{{ post.body }}</p>

		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><router-link :to="'/'">Home</router-link></li>
				<li class="breadcrumb-item active" aria-current="page">{{ post.title }}</li>
			</ol>
		</nav>

		<h5>Discussion</h5>
		<button @click="showComments" v-if="!showCommentBox" class="btn btn-primary">show comments</button>

		<ul class="list-group" v-if="showCommentBox">
			<li v-for="comment in comments" class="list-group-item"><strong>{{ comment.email }}</strong> <em> 评论说: </em> {{ comment.body }}</li>
		</ul>
  </article>
</template>

<script>
export default {
  data() {
    return {
      post: {},
	  	comments: [],
			showCommentBox: false,
    }
  },
  created() {
    this.$http.get("http://localhost:9090/posts/" + this.$route.params.id)
      .then(response => response.json(), error => console.log(error))
      .then(json => this.post = json, error => console.log(error));
  },
  methods: {
	  showComments(){
			this.$http.get("http://localhost:9090/comments/" + this.$route.params.id)
      		.then(response => response.json(), error => console.log(error))
      		.then(json =>	this.comments = json, error => console.log(error))
					.then(() => this.showCommentBox = true);
	  }
  }

}
</script>

<style>

</style>
