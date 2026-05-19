CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- Tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    area_conhecimento VARCHAR(255) NOT NULL, -- Tecnologia, Idiomas, Negócios
    modalidade VARCHAR(255) NOT NULL, -- EAD, Presencial, Híbrido
    PRIMARY KEY (id)
);

-- Tabela de cursos
CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL,
    carga_horaria INT NOT NULL, -- Tempo de duração 
    instrutor VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Registro de cursos
INSERT INTO tb_categorias (area_conhecimento, modalidade) VALUES 
("Tecnologia", "EAD"),
("Idiomas", "EAD"),
("Negócios", "Presencial"),
("Design", "Híbrido"),
("Marketing", "EAD");

-- Registro de dados dos professores
INSERT INTO tb_cursos (nome, valor, carga_horaria, instrutor, categoria_id) VALUES
("Java Full Stack", 1200.00, 120, "Felipe Marques", 1),
("Inglês do Zero ao Avançado", 450.00, 80, "Yuri Silva", 2),
("Gestão de Projetos Ágeis", 750.00, 40, "Ana Souza", 3),
("UX/UI Design Experience", 650.00, 60, "Indio Medeiros", 4),
("JavaScript e TypeScript", 350.00, 50, "Luiz Otávio", 1),
("Marketing Digital 360", 550.00, 45, "Camila Santos", 5),
("Python para Análise de Dados", 800.00, 90, "Carlos Melo", 1),
("Liderança e Alta Performance", 950.00, 30, "Roberto Justus", 3);

-- Valor maior do que R$ 500,00
SELECT * FROM tb_cursos WHERE valor > 500.00;

-- Valor entre R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

-- Cursos com a letra "J" no nome 
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

-- categorias
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

-- Filtrando por uma categoria específica (Tecnologia / Java)
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.area_conhecimento = "Tecnologia";