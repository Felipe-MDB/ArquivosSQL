CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

-- Registros de produtos
INSERT INTO tb_produtos (nome, marca, preco, estoque) VALUES 
("Smartphone F", "Eletrônicos", 1200.00, 15),
("Fone de Ouvido Bluetooth", "Acessórios", 150.00, 50),
("Notebook Gamer", "Eletrônicos", 4500.00, 5),
("Teclado Mecânico", "Acessórios", 350.00, 20),
("Monitor 24 Polegadas", "Telas", 800.00, 12),
("Mouse Sem Fio", "Acessórios", 150.00, 40),
("Cadeira Ergonômica", "Móveis", 650.00, 8),
("Cabo HDMI 2m", "Cabos", 30.00, 100);

-- Produtos com valor MAIOR que 500
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- Produtos com valor MENOR que 500
SELECT * FROM tb_produtos WHERE preco < 500.00;

-- Atualizando o valor do Notebook Gamer
UPDATE tb_produtos SET preco = 4100.00 WHERE id = 3;