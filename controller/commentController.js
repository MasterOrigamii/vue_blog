const commentsDao = require('../dao/commentsDao');

/**添加一条博客
 *   若成功则调用getComments，返还新的Comments列表
 *   否则返还
 */
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

/**添加一条博客
 *   若成功则调用getComments，返还新的Comments列表
 *   否则返还
 */
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
    }else{
      res.sendStatus(402)
    }
  });

};



module.exports = {
  getComments,
  addComment
};
