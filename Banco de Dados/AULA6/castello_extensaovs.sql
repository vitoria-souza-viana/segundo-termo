

CREATE DATABASE Castello_Extensaovs
    DEFAULT CHARACTER SET = 'utf8mb4';

    USE DATABASE Catello_Extensaovs
    -- VISUALIZAR MEU BANCO DE DADOS
    SHOW TABLE;
    -- VISUALIZAR TODOS O BC 
    SHOW SCHEMA
CREATE Table IF NOT EXISTS Alunos (
        id_cliente BIGINT AUTO_INCREMENT PRIMARY
        nome VARCHAR (60) NOT NULL,
        cpf char(14) NOT NULL UNIQUE,
        telefone CHAR(15),
        data_nascimento DATETIME
        status ENUM('ativo', 'inativo') DEFAULT 'ativo',
        data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )
    -- apagar banco de dados
    DROP DATABASE Castello_Extensaovs;
    -- descrição da tabela de alunos
    -- informar os atributos e tipos de dados
    DESCRIBE Alunos
    