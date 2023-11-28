var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/listar/:IDUSUARIO", function (req, res) {
    avisoController.listar(req, res);

});

router.get("/listar", function (req, res) {
    avisoController.graficoLinha(req, res);

});

module.exports = router;
