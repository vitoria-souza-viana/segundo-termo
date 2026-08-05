const entrada = require('readline-sync');
const Altura = entrada.questionFloat ("Qual e a sua altura?");
const Peso =  entrada.questionFloat("Quanto voce pesa?");

const multiplicacao =  Altura * Altura
const total = Peso / multiplicacao;

console.log (`O seu imc é de ${total}`);