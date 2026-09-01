CREATE Table if NOT EXISTS Alunos (
        id_cliente BIGINT AUTO_INCREMENT PRIMARY
         VARCHAR (60) NOT NULL,
        cpf char(14) NOT NULL UNIQUE,
        telefone CHAR(15),
        data_nascimento DATETIME
        status ENUM('ativo', 'inativo') DEFAULT 'ativo',
        data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )