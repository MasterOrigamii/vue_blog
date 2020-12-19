// 连接数据库
const mysqlModule = require("../dbConfig/mysqlpool")

//获取所有博客信息
function getPosts(callback) {
  var sql = "SELECT * FROM posts order by id desc;"
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

//添加一条博客
function addBlog(newBlog, callback) {

  var sql = "INSERT INTO posts (userId, title, body) " +
    "VALUES (?,?,?);"
  mysqlModule.connect(sql, newBlog,function (err, rawdata) {
    if(err)
      console.log(err)
    callback(err);
  })

}

//公开方法
module.exports = {
  getPosts,
  getOnePost,
  addBlog
}
