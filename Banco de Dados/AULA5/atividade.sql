-- Active: 1788268026988@@127.0.0.1@3306@smartcoffee_dml_vitoria
-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE smartcoffe_vitoria;
USE smartcoffe_vitoria;

CREATE TABLE clientes (
Endereço Varchar(100) NOT NULL,
Telefone Varchar(11),
Cpf Varchar(60) NOT NULL,
id_clientes int primary key auto_increment PRIMARY KEY,
Nome Varchar(60) NOT NULL,
Idade int
);

 CREATE TABLE Produtos (
Quantidade int,
valor int,
Validade int,
id_produtos int primary key auto_increment PRIMARY KEY,
Nome Varchar(60),
marca Varchar(80),
peso Varchar(60)
);

CREATE TABLE Funcionarios (
Telefone Varchar(11),
Setor Varchar(90),
id_funcionários int primary key auto_increment PRIMARY KEY,
Cargo Varchar(50),
Nome Varchar(80),
Idade int
);

CREATE TABLE Pagamento+Pedidos (
valor Varchar(100),
Endereço Varchar(100),
forma de pagamento Varchar(80),
id_pagamento int primary key auto_increment,
Nome Varchar(80),
data datetime,
Produto Varchar(60),
-- Erro: nome do campo duplicado nesta tabela!
Valor Varchar(100),
-- Erro: nome do campo duplicado nesta tabela!
Endereço Varchar(100),
id_pedidos int primary key auto_increment,
-- Erro: nome do campo duplicado nesta tabela!
Nome Varchar(80),
-- Erro: nome do campo duplicado nesta tabela!
Data datetime,
-- Erro: nome do campo duplicado nesta tabela!
Produto Varchar(80),
id_Delivery int,
PRIMARY KEY(id_pagamento,id_pedidos)
);

CREATE TABLE Estoque (
Quantidade int,
Nome do produto Varchar(60),
setor Varchar(80),
Valor Varchar(100),
Lote int,
id_estoque int primary key auto_increment PRIMARY KEY
);

CREATE TABLE Delivery (
endereço Varchar(100),
valor Varchar(100),
Forma de pagamento Varchar(50),
data datetime,
id_Delivery int primary key auto_increment PRIMARY KEY,
nome Varchar(80)
);

CREATE TABLE Fidelidades (
telefone Varchar (80),
endereço Varchar(11),
id_Fidelidades int primary key auto_increment PRIMARY KEY,
Cpf Varchar(14),
idade int,
nome Varchar(50)
);

CREATE TABLE Entrega (
id_Delivery int ,
id_funcionários int ,
FOREIGN KEY(id_Delivery) REFERENCES Delivery (id_Delivery),
FOREIGN KEY(id_funcionários) REFERENCES Funcionarios (id_funcionários)
);

CREATE TABLE Participa (
id_Fidelidades int ,
id_clientes int ,
FOREIGN KEY(id_Fidelidades) REFERENCES Fidelidades (id_Fidelidades),
FOREIGN KEY(id_clientes) REFERENCES Clientes (id_clientes)
);

CREATE TABLE Consome (
id_produtos int ,
id_estoque int ,
FOREIGN KEY(id_produtos) REFERENCES Produtos (id_produtos),
FOREIGN KEY(id_estoque) REFERENCES Estoque (id_estoque)
);

ALTER TABLE Pagamento+Pedidos ADD FOREIGN KEY(id_Delivery) REFERENCES Delivery (id_Delivery)
