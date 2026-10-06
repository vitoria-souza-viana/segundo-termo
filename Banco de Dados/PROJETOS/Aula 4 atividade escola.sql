-- comandos para criar baco de dados
create database escola_vitoria;
create database escola_vitoria2;
-- comando para deletar banco de dados
drop database escola_vitoria;
-- comando para ativar banco de dados
USE escola_vitoria;
-- mostrar tabelas do banco de dados
show tables;
-- comando para criar tabelas
create table alunos( id_alunos int auto_increment primary key, 
nome varchar(60) not null,
data_nascimento date not null,
responsavel varchar (60) not null,
ra_escolar int , 
turma char(10)
);
create table professores (id_professores int auto_increment primary key,
nome varchar (60) not null,
cpf varchar(60),
disciplina char (60),
salario decimal (5,2),
status_professor boolean
);
create table resposaveis (id_responsaveis int auto_increment primary key,
nome varchar (60) not null,
cpf varchar (60) not null,
aluno varchar (60) not null,
turma varchar (60) not null,
telefone varchar (60) not null
);

-- comandos para alterar informações
--  adicionar novo atributo
alter table alunos add telefone varchar (15);
alter table alunos modify telefone varchar (13);
-- alterar o tipo de dado e tamanho do atributo
alter table alunos modify telefone varchar(15);
-- renomear nome do atributo 
-- alter table alunos change telefone celular(15);

-- excluir atributo
alter table alunos drop column telefone; 














