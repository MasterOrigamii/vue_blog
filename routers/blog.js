const controller = require("../controller/blogController");


const userRoutes = (app, fs) => {

  //获取博客列表
  app.get('/posts', controller.getPosts);

  //获取单个博客内容
  app.get('/posts/:id', controller.getOnePost);

  //添加blog
  app.post('/addBlog', controller.addBlog);

};

module.exports = userRoutes;
