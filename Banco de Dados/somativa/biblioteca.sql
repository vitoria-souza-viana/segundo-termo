-- Active: 1788268026988@@127.0.0.1@3306@biblioteca_som2_vitoria
CREATE DATABASE biblioteca_som2_vitoria;
USE biblioteca_som2_vitoria;
DROP DATABASE IF EXISTS biblioteca_som2_vitoria;

CREATE TABLE USUARIO(
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE LIVRO(
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(120) NOT NULL,
    isbn CHAR(13) NOT NULL UNIQUE,
    ano_publicacao INT,
    quantidade_disponivel INT DEFAULT 0 CONSTRAINT ck_id_quantidade_disponivel CHECK (quantidade_disponivel>= 0)
);

CREATE TABLE EMPRESTIMO(
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_prevista DATE NOT NULL,
    data_devolucao DATE,
    status_emprestimo VARCHAR(20) DEFAULT 'ABERTO', 
    CONSTRAINT ck_id_status_emprestimo CHECK (status_emprestimo IN ('ABERTO', 'FECHADO')),
    id_usuario INT,
    id_livro INT,
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES USUARIO  (id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_id_livro FOREIGN KEY (id_livro) REFERENCES LIVRO  (id_livro) ON UPDATE CASCADE ON DELETE RESTRICT
);


CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    genero_literario VARCHAR(100)

);


CREATE TABLE FUNCIONARIO (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome_funcinario VARCHAR (100) NOT NULL,
    cargo VARCHAR (120) NOT NULL,
    telefone_funcionario VARCHAR(20),
    endereco_funcionario VARCHAR(250) NOT NULL
);

ALTER TABLE livro ADD editora VARCHAR(100);

INSERT INTO usuario (nome, email, telefone, ativo) VALUES
('Virginia Souza','vivigatinhas2@gmail.com','1977124867', TRUE),
('Lucélia Thais Souza Viana','lueregiviana@yahoo','19983000595', TRUE),
('Reginaldo José Viana','reginaldo@gmail','19999999999' , TRUE),
('Valentina Emanuely Viana', 'Valentinadatia@gmail.com', '19888888888', TRUE);

INSERT INTO livro (titulo, autor, isbn, ano_publicacao, quantidade_disponivel) VALUES
('Bíblia Sagrada','Vitória Souza','1818',"2010",'30'),
('Pai rico, Pai Pobre','Robert Kiyosaki e Sharon L. Lechter','2424','1997','10'),
('Mais esperto que o Diabo','Napoleon Hill','6667','2011','12'),
('O diário de Anne Frank', 'Anne Frank', '4444','1947', '7'),
('Menina Bonita Do laço de fita','Ana Maria Machado', '1414', '1986', '44'),
('A sutil arte de ligar o foda-se', 'Mark Mason', '1234', '2016','4');

INSERT INTO emprestimo (data_emprestimo, data_prevista, data_devolucao, status_emprestimo, id_usuario, id_livro) VALUES
('2026.07.28', '2026.08.27', '2026.08.28', 'aberto', '123456','654321' ),
('2023.12.03', '2026.11.27', '2026. 11. 28', 'aberto', '67890','09876');

