CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    departamento VARCHAR(255) NOT NULL, -- Hidráulica, Elétrica, Pisos
    setor VARCHAR(255) NOT NULL, -- Interno, Externo
    PRIMARY KEY (id)
);

-- Tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL,
    unidade_medida VARCHAR(50) NOT NULL, -- Ex: Metro, Unidade, Saco
    marca VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Registro de categorias
INSERT INTO tb_categorias (departamento, setor) VALUES 
("Hidráulica", "Interno"),
("Elétrica", "Interno"),
("Pisos e Revestimentos", "Interno"),
("Ferramentas", "Externo"),
("Iluminação", "Interno");

-- Tabela de produtos
INSERT INTO tb_produtos (nome, valor, unidade_medida, marca, categoria_id) VALUES
("Tubo de PVC 100mm", 45.00, "Unidade", "Tigre", 1),
("Porcelanato Amadeirado", 120.00, "Metro Quadrado", "Portobello", 3),
("Fio Flexível 2,5mm 100m", 160.00, "Rolo", "Sil", 2),
("Furadeira de Impacto", 250.00, "Unidade", "Bosch", 4),
("Lustre Pendente Moderno", 135.00, "Unidade", "Taschibra", 5),
("Torneira Monocomando", 115.00, "Unidade", "Deca", 1),
("Disjuntor Monofásico 32A", 18.50, "Unidade", "Siemens", 2),
("Caixa de Ferramentas", 85.00, "Unidade", "Tramontina", 4);

-- Valor maior do que R$ 100,00
SELECT * FROM tb_produtos WHERE valor > 100.00;

-- Valor entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

-- Produtos com a letra "C" no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Usando INNER JOIN para percorrer entre as duas tabelas
SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- Filtrando por uma categoria específica (Hidráulica)
SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.departamento = "Hidráulica";