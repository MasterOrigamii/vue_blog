const controller = require("../controller/userController");


const userRoutes = (app, fs) => {

    // variables
    const dataPath = './data/users.json';
    const pdataPath= './data/posts.json';
    const cdataPath= './data/comments.json';

    //查看评论
    app.get('/comments/:pid', controller.getComments);
    //获取博客列表
    app.get('/posts', controller.getPosts);
    //获取单个博客内容
    app.get('/posts/:id', controller.getOnePost);

    //登录
    app.post('/auth/login', controller.login);
    //注册
    app.post('/auth/register', controller.register);

    //添加评论
    app.post('/addComment', controller.addComment);

    //添加blog
    app.post('/addBlog', controller.addBlog);



    // helper methods
    const readFile = (callback, returnJson = false, filePath = dataPath, encoding = 'utf8') => {
        fs.readFile(filePath, encoding, (err, data) => {
            if (err) {
                throw err;
            }

            callback(returnJson ? JSON.parse(data) : data);
        });
    };

    const writeFile = (fileData, callback, filePath = dataPath, encoding = 'utf8') => {

        fs.writeFile(filePath, fileData, encoding, (err) => {
            if (err) {
                throw err;
            }

            callback();
        });
    };

    // //read posts
    // app.get('/posts', (req, res) => {
    //     fs.readFile(pdataPath, 'utf8', (err, data) => {
    //         if (err) {
    //             throw err;
    //         }
    //
    //         res.send(JSON.parse(data));
    //     });
    // });

    // app.get('/posts/:id', (req, res) => {
    //     fs.readFile(pdataPath, 'utf8', (err, data) => {
    //         if (err) {
    //             throw err;
    //         }
    //         const postId = req.params["id"];
    //         const posts = JSON.parse(data);
    //         for (var i = 0; i < posts.length;i++) {
    //             if (posts[i].id==postId) break;
    //         }
    //         res.send(posts[i]);
    //     });
    // });


    // READ
    app.get('/users', (req, res) => {
        fs.readFile(dataPath, 'utf8', (err, data) => {
            if (err) {
                throw err;
            }

            res.send(JSON.parse(data));
        });
    });
    // Read by id
    app.get('/users/:id', (req, res) => {
        readFile(data => {
            const userId = req.params["id"];
            console.log(data);
            res.send(data[userId]);
            },
            true);
    });

    // CREATE
    app.post('/users', (req, res) => {

        readFile(data => {
            const newUserId = Object.keys(data).length + 1;

            // add the new user
            data[newUserId.toString()] = req.body;

            writeFile(JSON.stringify(data, null, 2), () => {
                res.status(200).send('new user added');
            });
        },
            true);
    });


    // UPDATE
    app.put('/users/:id', (req, res) => {

        readFile(data => {

            // add the new user
            const userId = req.params["id"];
            data[userId] = req.body;

            writeFile(JSON.stringify(data, null, 2), () => {
                res.status(200).send(`users id:${userId} updated`);
            });
        },
            true);
    });


    // DELETE
    app.delete('/users/:id', (req, res) => {

        readFile(data => {

            // add the new user
            const userId = req.params["id"];
            delete data[userId];

            writeFile(JSON.stringify(data, null, 2), () => {
                res.status(200).send(`users id:${userId} removed`);
            });
        },
            true);
    });
};

module.exports = userRoutes;
