const commentsDao = require('../dao/commentsDao');
const jwt = require('jsonwebtoken')
const config = require('config')
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

//查看一个博客信息
const getOnePost = (req, res) => {
    const id = req.params["id"];
    commentsDao.getOnePost(id,result=>{
        if(result.length>0)
            res.send(result[0]);
    });

};

//登录
const login = (req, res) => {
    const id = req.body.id;
    const pwd = req.body.pwd;
    console.log({id, pwd})
    commentsDao.login(id,result=>{

        if(result.length>0){
            if(pwd == result[0].pwd){// 账号密码正确，用户登录成功
                jwt.sign(
                  {
                      iss: config.get('options.iss') || 'iss-not-specified',
                      exp: Math.floor(Date.now() / 1000) + 24 * 60 * 60,
                      data: id
                  },
                  config.get('options.secret'),
                  (err, token) => {
                      if (!err)
                      res.json({
                          token,
                          login: "恭喜你登录成功了"
                      })
                  }
                )

            }else{
                res.sendStatus(401)
            }
        }else{
            res.sendStatus(400)

        }
    });

};

module.exports = {
    getComments,
    getPosts,
    getOnePost,
    login
};
