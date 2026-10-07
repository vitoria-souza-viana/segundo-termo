const entrada = require ("readline-sync")
const fs = require('fs')

console.log("=== CADASTRO DE FERRAMENTAL ===")

const totalItens = entrada.questionInt("Quantas ferramentas deseja cadastrar?")

const listaFerramentas = []

for (let i=0; i < totalItens; i++){
    console.log(`\nItem ${i +1} de ${totalItens}:`)
    const nome = entrada.question("Nome da ferramenta: ")
    const quantidade = entrada.question("Quantidade: ")
    const custoUnitario = entrada.questionFloat("Digite o custo unitario")

    listaFerramentas.push({
        nome:nome,
        quantidade:quantidade,
        custoUnitario:custoUnitario

    })
}
fs.writeFileSync('listaFerramentas.json', JSON.stringify(listaFerramentas,null,2))

console.log("\n----------------------------------------------")
console.log(`Sucesso: ${listaFerramentas.length} itens gravados em 'ferramentas.json'`)
console.log("\n----------------------------------------------")
