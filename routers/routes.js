// import other routes
const userRoutes = require('./users');
const fileRoutes = require('./files');

const appRouter = (app, fs) => {

    // default route
    app.get('/', (req, res) => {
        res.send('welcome to the development api-server');
    });

    // other routes
    userRoutes(app, fs);
    fileRoutes(app);


};

module.exports = appRouter;