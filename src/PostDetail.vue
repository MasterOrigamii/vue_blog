<template>
	<div class="container">
		<article class="col-md-12">

				<h4>{{ post.title }}</h4>
				<p>{{ post.body }}</p>

				<!--导航栏-->
				<nav aria-label="breadcrumb">
					<!--有序列表-->
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><router-link :to="'/'">Home</router-link></li>
						<li class="breadcrumb-item active" aria-current="page">{{ post.title }}</li>
					</ol>
				</nav>

				<!--评论区-->
				<h5>Discussion</h5>
				<button @click="showComments" v-if="!showCommentBox" class="btn btn-primary">show comments</button>

				<ul class="list-group" v-if="showCommentBox">
					<li v-for="comment in comments" class="list-group-item">
						<strong>{{ comment.email }}	</strong>
						<em> 评论说: </em>
						{{ comment.body }}
					</li>
				</ul>



			<form role="form">
				<!--			<div class="form-group">-->
				<!--				<h5>写下新评论</h5>-->
				<!--				<input type="text" class="form-control" placeholder="文本输入">-->
				<!--			</div>-->

				<div class="form-group">
					<h5>写下新评论</h5>
					<textarea class="form-control" rows="3"></textarea>
				</div>
				<div id="forbtn">
					<button type="submit" class="btn btn-primary" id="submit_c">提交</button>
				</div>
			</form>



		</article>



	</div>



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
	.form-group{
		margin-top: 20px;
	}
	#submit_c{
		float: right;
	}
	#forbtn{
		height: 50px;
	}
</style>
