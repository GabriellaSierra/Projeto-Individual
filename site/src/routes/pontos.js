var express = require("express");
var router = express.Router();

var pontosController = require("../controllers/pontosController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/verificarRespostas", function (req, res) {
    pontosController.verificarRespostas(req, res);
})

module.exports = router;







