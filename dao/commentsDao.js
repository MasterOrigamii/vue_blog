// 连接数据库
const mysqlModule = require("../dbConfig/mysqlpool")


//获取评论
function getComments(postId, callback) {
    var sql = "SELECT * FROM comments WHERE postId = ?;"
    var arr = [postId]
    mysqlModule.connect(sql, arr,function (err,rawdata) {
        var dataString = JSON.stringify(rawdata);
        var data = JSON.parse(dataString);
        callback(data);
    })

}

//获取所有博客信息
function getPosts(callback) {
    var sql = "SELECT * FROM posts;"
    var arr = []
    mysqlModule.connect(sql, arr,function (err, rawdata) {
        var dataString = JSON.stringify(rawdata);
        var data = JSON.parse(dataString);
        callback(data);
    })

}

//获取所有博客信息
function getOnePost(id, callback) {
    var sql = "SELECT * FROM posts WHERE id = ?;"
    var arr = [id]
    mysqlModule.connect(sql, arr,function (err, rawdata) {

        var dataString = JSON.stringify(rawdata);
        var data = JSON.parse(dataString);
        callback(data);
    })
}

//登录
function login(email, callback) {
    var sql = "SELECT * FROM users WHERE email = ?;"
    var arr = [email]
    mysqlModule.connect(sql, arr,function (err, rawdata) {

        var dataString = JSON.stringify(rawdata);
        var data = JSON.parse(dataString);
        callback(data);
    })

}


function register(newUser, callback) {
    // const nickname = newUser.name;
    // const email = newUser.email;
    // const pwd = newUser.password;
    var sql = "INSERT INTO users (nickname, email, pwd) " +
      "VALUES (?,?,?);"
    mysqlModule.connect(sql, newUser,function (err, rawdata) {
        console.log(rawdata);
        var dataString = JSON.stringify(rawdata);
        var data = JSON.parse(dataString);
        callback(data);
    })

}


function addComment(newComment, callback) {
    // const nickname = newUser.name;
    // const email = newUser.email;
    // const pwd = newUser.password;
    var sql = "INSERT INTO comments (postId, email, body) " +
      "VALUES (?,?,?);"
    mysqlModule.connect(sql, newComment,function (err, rawdata) {
        if(err)
            console.log(err)
        callback(err);
    })

}


//公开方法
module.exports = {
    getComments,
    getPosts,
    getOnePost,
    login,
    register,
    addComment
}
