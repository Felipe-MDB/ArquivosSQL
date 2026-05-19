 CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL,
    tipo_dano VARCHAR(255) NOT NULL, -- Tipos de classes Físico, Mágico
    PRIMARY KEY (id)
);

-- Tabela de Personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Tabela de Habilidades (classes)
INSERT INTO tb_classes (nome_classe, tipo_dano) VALUES 
("Guerreiro", "Físico"),
("Mago", "Mágico"),
("Arqueiro", "Físico"),
("Assassino", "Físico"),
("Healer", "Mágico");

-- Dados dos Personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
("Arthur", 2500, 1800, 50, 1),
("Merlin", 3000, 800, 55, 2),
("Legolas", 2200, 1200, 48, 3),
("Shadow", 2800, 900, 52, 4),
("Lee Ju-Hee", 1200, 2200, 45, 5),
("Thorin", 1900, 2500, 40, 1),
("Gandalf", 3500, 1500, 60, 2),
("Robin", 1800, 1100, 35, 3);

-- Poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Personagens com a letra "C" no nome
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- Trazendo dados da tabela classes
SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- Filtrando por uma classe específica (Arqueiros)
SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";