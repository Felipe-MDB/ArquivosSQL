CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(200) NOT NULL,
    dataadmissao DATE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

-- Registro de colaboradores
INSERT INTO tb_colaboradores (nome, cargo, dataadmissao, salario) 
VALUES ("Ana Silva", "Analista de RH", "2024-01-15", 3500.00);

INSERT INTO tb_colaboradores (nome, cargo, dataadmissao, salario) 
VALUES ("Carlos Souza", "Assistente Administrativo", "2024-03-10", 1900.00);

INSERT INTO tb_colaboradores (nome, cargo, dataadmissao, salario) 
VALUES ("Mariana Costa", "Gerente de Projetos", "2023-05-20", 7200.00);

INSERT INTO tb_colaboradores (nome, cargo, dataadmissao, salario) 
VALUES ("Pedro Santos", "Auxiliar de Serviços", "2025-02-01", 1700.00);

INSERT INTO tb_colaboradores (nome, cargo, dataadmissao, salario) 
VALUES ("Juliana Lima", "Desenvolvedora Júnior", "2024-08-11", 4200.00);


--  colaboradores com salário MAIOR que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

--  colaboradores com salário MENOR que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

--  Atualizando o salario do carlos
UPDATE tb_colaboradores SET salario = 2300.00 WHERE id = 2;