const commentsDao = require('../dao/commentsDao');
const jwt = require('jsonwebtoken')
const config = require('config')
const validator = require('validator')


//登录
const login = (req, res) => {
    const email = req.body.email;
    const pwd = req.body.password;
    commentsDao.login(email,result=>{

        if(result.length>0){
            if(pwd == result[0].pwd){// 账号密码正确，用户登录成功
                delete result[0].pwd;
                jwt.sign(
                  {
                      iss: config.get('options.iss') || 'iss-not-specified',
                      exp: Math.floor(Date.now() / 1000) + 24 * 60 * 60,
                      data: email
                  },
                  config.get('options.secret'),
                  (err, token) => {
                      if (!err)
                      res.json({
                          token,
                          login: result[0]
                      })
                  }
                )
            }else{
                console.log("401")
                res.sendStatus(401)
            }
        }else{
            console.log("400")
            res.sendStatus(400)
        }
    });

};

const register = (req, res) => {

    // 进行与数据库相关的注册操作
    // 调用dao层方法

    // 用户email nickname pwd
    const nickname = req.body.name;
    const email = req.body.email;
    const pwd = req.body.password;
    const newUser = [nickname,email,pwd];
    if ( // 检验数据是否合法
      !nickname ||
      !email ||
      !pwd ||
      !validator.isEmail(email) ||
      !validator.isLength(pwd, {
          min: 6,
          max: 16
      })
    ) { // 数据不合法，返回错误参数
        console.log("数据不合法，返回错误参数")
        res.sendStatus(400)
        return
    }
    // 密码数据加密
    // newUser.password = bcrypt.hashSync(newUser.password, 8)
    commentsDao.register(newUser,result=>{

    });

};



module.exports = {
    login,
    register,
};
