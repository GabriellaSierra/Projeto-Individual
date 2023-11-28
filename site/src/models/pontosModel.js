var database = require("../database/config")

function verificarRespostas(id, pontos) {
  
    var instrucao = `
        INSERT INTO pontos (pontos, fkUsuario) VALUES (${pontos}, ${id});
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);

    return database.executar(instrucao)

}
function buscarPontos(idUsuario) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, email, senha);

    
    var instrucao = `
        SELECT * FROM pontos WHERE fkUsuario = ${idUsario};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);

    return database.executar(instrucao)
    
}




module.exports = {

    verificarRespostas,
    buscarPontos,
};