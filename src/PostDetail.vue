<template>
	<div class="container">
		<article class="col-md-12">
			<h1>{{ post.title }}</h1>
			<pre>{{ post.body }}</pre>

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
				<div class="form-group">
					<h5>写下新评论</h5>
					<textarea v-model="myComment" class="form-control" rows="3"></textarea>
				</div>
				<div id="forbtn">
					<button @click="mysubmit()" type="button"
									class="btn btn-primary" id="submit_c"
									:disabled="myComment.length==0">提交</button>
				</div>
			</form>
		</article>
	</div>

</template>

<script>
	import { mapActions } from 'vuex'
	import config from "./config";
	import axios from "./utilities/axios";
	import swal from "sweetalert";
	import router from "./router";

export default {
  data() {
    return {
      post: {},
	  	comments: [],
			showCommentBox: false,
			myComment: ""
    }
  },
  created() {
    this.$http.get("http://localhost:9090/posts/" + this.$route.params.id)
      .then(response => response.json(), error => console.log(error))
      .then(json => this.post = json, error => console.log(error));
  },
  methods: {
	  ...mapActions(['login']),
	  showComments(){
			return axios
				.get(`${config.api}/comments/` + this.$route.params.id)
				.then(response => {
					this.comments = response.data})
				.then(() => this.showCommentBox = true)
				.catch(() => {});
	  },
		mysubmit(){//提交新评论
			const content = this.myComment;
			let obj = null;
			obj = this.$store.state.user.user;
			if(obj){
				obj["content"] = content;
				obj["postId"] = this.$route.params.id
				return axios
					.post(`${config.api}/api/addComment`, obj)
					.then(response => {
						this.comments = response.data})
					.then(() => this.showCommentBox = true)
					.catch(() => {});
			}else{//没有用户登录的信息，请用户登录
				swal({
					title: '请您先登录后再评论',
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
						this.$router.push({path:'/auth/login'});
					}
				})
			}
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

	pre {
		white-space: pre-wrap;
		word-wrap: break-word;
		font-size: 20px;
		margin-top: 30px;
	}
</style>
