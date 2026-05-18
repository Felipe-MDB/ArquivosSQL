CREATE DATABASE db_escola;
USE db_escola;


CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    turma VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    nota DECIMAL(3, 1) NOT NULL
);

-- Registro dos alunos
INSERT INTO tb_estudantes (nome, turma, data_nascimento, nota) VALUES 
("Lucas Almeida", "9º Ano A", "2011-04-12", 8.5),
("Beatriz Santos", "9º Ano A", "2011-09-22", 6.2),
("Gabriel Costa", "9º Ano B", "2011-01-15", 9.0),
("Mariana Lima", "9º Ano B", "2011-07-08", 5.5),
("Rafael Oliveira", "3º Ano EM", "2008-03-30", 7.0),
("Larissa Souza", "3º Ano EM", "2008-11-14", 4.8),
("Gustavo Pereira", "1º Ano EM", "2010-05-19", 10.0),
("Amanda Ribeiro", "1º Ano EM", "2010-12-02", 6.8);

-- Alunos com nota MAIOR que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- Alunos com nota MENOR que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- Atualizando Nota da Larissa
UPDATE tb_estudantes SET nota = 6.5 WHERE id = 6;