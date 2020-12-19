// import other routes
const userRoutes = require('./users');
const fileRoutes = require('./files');
const commentRoutes = require('./comments');
const blogRoutes = require('./blog');
const authentication = require('./authentication')


const appRouter = (app, fs) => {

    // check Authenticattion
    app.use(authentication)

    // default route
    app.get('/', (req, res) => {
        res.send('welcome to the development api-server');
    });

    // other routes
    commentRoutes(app);
    blogRoutes(app);
    userRoutes(app, fs);
    fileRoutes(app);

    // catch 404 and forward to error handler
    app.use((req, res, next) => {
        const err = new Error('Not Found')
        err.status = 404
        next(err)
    })
    app.use((err, req, res, next) => {
        console.log(`\n${  err.message.error  }\n${  err.stack.warn  }\n`)
        if (req.app.get('env') === 'development') {
            res.status(err.status || 500).send(err.stack)
        } else {
            res.sendStatus(err.status || 500)
        }
    })

};

module.exports = appRouter;
