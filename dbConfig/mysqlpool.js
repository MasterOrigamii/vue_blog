const mysql = require("mysql")

//配置数据库信息，如果更改数据库请更新相应信息
const poolCig = {
    host:"localhost",
    port:"3306",
    user:"root",
    password:"lp17301127sql",
    database:"my_vue_blog_sql"
}

//对外公开对象，方便扩展
const dbPool = {
    pool : {},
    create(){
        //创建连接池
        this.pool = mysql.createPool(poolCig)
    },
    //连接方法，作为外部主要引用方法
    connect(sql,arr,fun){
        this.pool.getConnection(function (err, connection){
            connection.query(sql,arr,fun)
        })
    }
}

dbPool.create()
module.exports = dbPool