// import other routes
const userRoutes = require('./users');
const fileRoutes = require('./files');
const commentRoutes = require('./comments');
const blogRoutes = require('./blog');


const appRouter = (app, fs) => {

    // default route
    app.get('/', (req, res) => {
        res.send('welcome to the development api-server');
    });

    // other routes
    commentRoutes(app);
    blogRoutes(app);
    userRoutes(app, fs);
    fileRoutes(app);

};

module.exports = appRouter;
