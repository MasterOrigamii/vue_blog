const controller = require("../controller/file.controller");

const fileRoutes = (app) => {

  app.post("/files/upload", controller.upload);
  app.get("/files", controller.getListFiles);
  app.get("/files/:name", controller.download);

};

module.exports = fileRoutes;
