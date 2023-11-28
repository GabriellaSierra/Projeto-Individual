var database = require("../database/config")

function verificarRespostas(id, pontos) {
  
    var instrucao = `
        INSERT INTO pontos (pontos, fkUsuario) VALUES (${pontos}, ${id});
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);

    return database.executar(instrucao)

}



module.exports = {

    verificarRespostas,
};