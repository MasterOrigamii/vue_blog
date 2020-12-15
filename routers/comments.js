const controller = require("../controller/commentController");


const commentRoutes = (app, fs) => {

  //查看评论
  app.get('/comments/:pid', controller.getComments);

  //添加评论
  app.post('/addComment', controller.addComment);

};

module.exports = commentRoutes;
