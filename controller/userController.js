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

//查看所有博客简介列表信息
const getPosts = (req, res) => {
    commentsDao.getPosts(result=>{
        res.send(result);
    });
};


module.exports = {
    getComments,
    getPosts
};
