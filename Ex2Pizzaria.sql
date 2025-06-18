#1. Criar banco de dados:
CREATE DATABASE db_pizzaria_legal;
#Usar o banco de dados.
USE db_pizzaria_legal;

#2. Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);
#3. Criar a tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(200),
    valor DECIMAL(7,2) NOT NULL,
    tempo_preparo INT, -- em minutos
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

#4. Inserir 5 registros na tabela tb_categorias:
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgada', 'Pizzas com ingredientes salgados tradicionais'),
('Doce', 'Pizzas com sabores doces e sobremesas'),
('Vegetariana', 'Pizzas sem carne, opções vegetarianas'),
('Especial', 'Pizzas com ingredientes especiais ou gourmet'),
('Light', 'Pizzas com ingredientes mais leves e menos calorias');

#5. Inserir 8 registros na tabela tb_pizzas:
INSERT INTO tb_pizzas (nome, ingredientes, valor, tempo_preparo, id_categoria) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão', 40.00, 20, 1),
('Calabresa', 'Calabresa, cebola, mussarela, molho de tomate', 48.00, 25, 1),
('Chocolate', 'Chocolate ao leite, morango, chantilly', 52.00, 30, 2),
('Quatro Queijos', 'Mussarela, provolone, parmesão, gorgonzola', 60.00, 30, 1),
('Portuguesa', 'Presunto, ovos, cebola, azeitonas, mussarela', 45.00, 25, 1),
('Vegetariana Especial', 'Tomate, milho, ervilha, palmito, mussarela', 55.00, 28, 3),
('Romeu e Julieta', 'Queijo minas e goiabada', 50.00, 27, 2),
('Frango com Catupiry', 'Frango desfiado, catupiry, milho', 65.00, 35, 4);

#6. SELECT que retorna pizzas com valor maior que R$ 45,00:
SELECT * FROM tb_pizzas WHERE valor > 45.00;

#7. SELECT que retorna pizzas com valor entre R$ 50,00 e R$ 100,00:
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

#8. SELECT que retorna pizzas cujo nome contenha a letra 'M' (maiúscula ou minúscula):
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%' OR nome LIKE '%m%';

#9. SELECT com INNER JOIN entre tb_pizzas e tb_categorias (retorna todas as pizzas com suas categorias):
SELECT p.id_pizza, p.nome, p.ingredientes, p.valor, p.tempo_preparo, c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

#10. ELECT com INNER JOIN para pizzas da categoria 'Doce':
SELECT p.id_pizza, p.nome, p.ingredientes, p.valor, p.tempo_preparo, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';



