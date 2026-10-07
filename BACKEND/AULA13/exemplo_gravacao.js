const fs = require ('fs')

console.log("=== SISTEMA DE PERSISTENCIA: REGISTRO DE MAQUINAS===")
const maquinasIndustriais = [
    {id: 101, nome:"Torno mecanico universal", setor:"usinagem", operacional:true},
    {id: 102, nome: "Fresadora Ferramenteira", setor: "Usinagem", operacional:false},
    {id: 103, nome: "Prensa Hidraulica 50t", setor: "Estamparia", operacional:false},
    {id: 104, nome: "Compressor", setor: "utilidades", operacional:false},
]

const dadosParaGRavar =  JSON.stringify(maquinasIndustriais, null, 2)

const nomeDoARquivo= "Maquinas.json";
fs.writeFileSync(nomeDoARquivo,dadosParaGRavar);
console.log(`\nGravacao concluida com sucesso.`)
console.log(`Verifique o arquivo '${nomeDoARquivo}' gerado.`)