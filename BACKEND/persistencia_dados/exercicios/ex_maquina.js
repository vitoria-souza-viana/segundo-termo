const fs = require("fs")

console.log ("=== SISTEMA DE PERSISTENCIA: LEITURA DE MAQUINAS ===")

const nomedoArquivo = "maquinas.json";

if (!fs.existsSync(nomedoArquivo)) {
    console.error(`Erro: o arquivo ${nomedoArquivo} nao foi encontrado`)
}

const conteudoTexto= fs.readFileSync(nomedoArquivo, 'utf-8')

const maquinasRecuperadas = JSON.parse(conteudoTexto)

function buscaPorId(maquinas, id){
    return maquinas.find((maquina) => maquina.id === id)
}

function filtrarPorStatus(maquinas, status){
    return maquinas.filter((maquina)=> maquina.status === status)
}

console.log("Dados carregados com sucesso:\n")
console.table(maquinasRecuperadas)

console.log(`\n Total de maquinas cadastradas ${maquinasRecuperadas.length}`);
console.log(`Primeira maquina da lista: ${maquinasRecuperadas[0].nome}`)
 function executar(){
    console.log(`\n Busca pelo id 3`)
    console.table(buscarPorId(maquinas, 3) ?? 'maquina nao encontrada')

    console.log(`\n ===Maquinas em manutencao===`)
 }