<template>
  <article class="col-sm-12">
	<h2>文章标题</h2>
	<div class="write_title">
		<input v-model="title" type="text" class="form-control" id="name" placeholder="请输入文章标题">
	</div>
	<h5>文章内容</h5>
	<div class="write_content">
		<textarea v-model="content" class="form-control" rows="10" placeholder="请输入文章内容"></textarea>
	</div>
	  <div id="submit_btn">
		  <button @click="mysubmit()" type="button"
				  class="btn btn-primary" id="submit_blog"
				  >提交</button>
	  </div>


  </article>
</template>

<script>
export default {
	data () {
		return {
			title: "",
			content: ""
		}
	},
	methods:{
		mysubmit(){
			const title = this.title;
			const content = this.content;
			let obj = null;
			obj = this.$store.state.user.user;
			if(obj){
				obj["title"] = title;
				obj["content"] = content;
				console.log(title);
				console.log(content);
				this.$http.post("http://localhost:9090/addBlog/",obj)
						.then(response => response.json(), error => console.log(error))
						.then(json =>	this.comments = json, error => console.log(error))
						.then(() => this.showCommentBox = true);
			}else{//没有用户登录的信息，请用户登录
				swal({
					title: '请您先登录后再撰写博客',
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
	.write_title{
		margin-bottom:20px
	}

	#submit_blog{
		float: right;
	}

	#submit_btn{
		margin-top: 20px;
		height: 50px;
	}
</style>
