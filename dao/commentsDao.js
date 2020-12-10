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

//公开方法
module.exports = {
    getComments,
    getPosts,
    getOnePost
}