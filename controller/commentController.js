const commentsDao = require('../dao/commentsDao');

//查看评论
const getComments = (req, res) => {
  const postId = req.params["pid"];

  //获取对应pid的所有评论
  commentsDao.getComments(postId, result=>{
    var clist = [];
    var j = 0;
    for (var i = 0; i < result.length;i++) {
      if (result[i].postId==postId)
        clist[j++] = result[i];
    }
    res.send(clist);
  });
};

const addComment = (req, res) => {
  // 获取用户email和用户评论内容
  const content = req.body.content;
  const email = req.body.email;
  const postId = req.body.postId;
  const newComment = [postId,email,content];

  commentsDao.addComment(newComment,result=>{
    if(!result){
      req["params"] = { pid: postId };
      getComments(req, res);
    }
  });

};



module.exports = {
  getComments,
  addComment
};
