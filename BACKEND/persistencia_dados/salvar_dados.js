const fs= require('fs');

console.log("=== SISTEMASDE REGITROS ===");
const maquinasIndustriais= [
    {id:101, nome:"torno revolver", setor:"usinagem", operacional: true},
    {id:101, nome:"Furadeira de bancada", setor:"Manutencao", operacional: false},
    {id:101, nome:"prensa hidraulica", setor:"estamparia", operacional: true}
]

const dadosParaGravar= JSON.stringify(maquinasIndustriais);

const nomeDoarquivo= "maquinas.json";
fs.writeFileSync(nomeDoarquivo, dadosParaGravar);

console.log("Dados gravados com sucesso!");
console.log(`Verifique o arquivo ${nomeDoarquivo} gerado.`)