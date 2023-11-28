var express = require("express");
var router = express.Router();

var pontosController = require("../controllers/pontosController");

router.post("/verificarRespostas", function (req, res) {
    pontosController.verificarRespostas(req, res);
})

router.get("/buscarPontos", function(req, res) {
    pontosController.buscarPontos(req, res);
})

module.exports = router;







