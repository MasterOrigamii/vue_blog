const blogDao = require('../dao/blogDao');

//查看所有博客简介列表信息
const getPosts = (req, res) => {
  blogDao.getPosts(result=>{
    res.send(result);
  });
};

//查看一个博客信息
const getOnePost = (req, res) => {
  const id = req.params["id"];
  blogDao.getOnePost(id,result=>{
    if(result.length>0)
      res.send(result[0]);
  });

};

const addBlog = (req, res) => {
  // 获取用户id 文章标题  和  文章内容
  const content = req.body.content;
  const title = req.body.title;
  const userId = req.body.id;
  const newBlog = [userId,title,content];
  blogDao.addBlog(newBlog,result=>{
    if(!result){
      res.send("succ");
    }else{
      res.send("fail");
    }
  });

};

module.exports = {
  getPosts,
  getOnePost,
  addBlog
};
