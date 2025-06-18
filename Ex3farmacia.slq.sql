#1. Criar banco de dados:
CREATE DATABASE db_farmacia_bem_estar;
#Usar o banco de dados.
USE db_farmacia_bem_estar;

#2. Criar a tabela tb_categorias:
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);
#3. Criar a tabela tb_produtos:
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100),
    valor DECIMAL(7,2) NOT NULL,
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

#4. Inserir 5 registros na tabela tb_categorias:
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Remédios para diferentes tipos de tratamentos'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Higiene', 'Produtos de higiene pessoal'),
('Infantil', 'Produtos voltados para bebês e crianças');

#5. Inserir 8 registros na tabela tb_produtos:
INSERT INTO tb_produtos (nome, fabricante, valor, estoque, id_categoria) VALUES
('Paracetamol 750mg', 'MedPharma', 12.50, 100, 1),
('Sabonete Neutro', 'DermaClean', 7.90, 50, 4),
('Vitamina C 1g', 'NutriLife', 55.00, 80, 3),
('Hidratante Corporal', 'Beleza Pura', 65.00, 30, 2),
('Pomada para Assaduras', 'BabyCare', 22.90, 45, 5),
('Protetor Solar FPS 50', 'SunBlocker', 89.99, 60, 2),
('Dipirona 1g', 'Genérico', 9.99, 120, 1),
('Shampoo Infantil', 'KidsCare', 18.00, 35, 5);

#6. SELECT que retorna todos os produtos cujo valor seja maior do que R$ 50,00:
SELECT * FROM tb_produtos WHERE valor > 50.00;

#7. SELECT que retorna todos os produtos cujo valor esteja entre R$ 5,00 e R$ 60,00:
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

#8. SELECT utilizando o operador LIKE, buscando todos os produtos com a letra 'C' no nome:
SELECT * FROM tb_produtos WHERE nome LIKE '%C%' OR nome LIKE '%c%';

#9. SELECT com INNER JOIN entre produtos e categorias:
SELECT p.id_produto, p.nome, p.fabricante, p.valor, p.estoque, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

#10. SELECT com INNER JOIN para trazer apenas produtos da categoria "Cosméticos":
SELECT p.id_produto, p.nome, p.fabricante, p.valor, p.estoque, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
