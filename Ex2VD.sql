#1. Criar banco de dados:
CREATE DATABASE VD;

#Usar o banco de dados.
USE VD;

#2. Criar a tabela de produtos com 5 atributos:
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2),
    estoque INT,
    categoria VARCHAR(50)
);

#3. Inserir 8 registros na tabela:
INSERT INTO produtos (nome, descricao, preco, estoque, categoria) VALUES
("Notebook Lenovo", "Notebook com 16GB RAM e SSD 512GB", 4500.00, 10, "Informática"),
("Smartphone Samsung", "Smartphone Galaxy com 128GB de armazenamento", 2500.00, 15, "Telefonia"),
("Cadeira Gamer", "Cadeira ergonômica com apoio lombar", 750.00, 8, "Móveis"),
("Monitor LG 24", "Monitor Full HD com HDMI e VGA", 699.00, 20, "Informática"),
("Mouse Logitech", "Mouse sem fio com bateria recarregável", 199.99, 50, "Acessórios"),
("Teclado Mecânico", "Teclado com iluminação RGB", 399.90, 30, "Acessórios"),
("Impressora HP", "Impressora multifuncional Wi-Fi", 520.00, 5, "Periféricos"),
("Fone Bluetooth JBL", "Fone de ouvido com cancelamento de ruído", 470.00, 25, "Áudio");

#4. SELECT com produtos com valor maior que 500
SELECT * FROM produtos WHERE preco > 500;

#5. SELECT com produtos com valor menor que 500
SELECT * FROM produtos WHERE preco < 500;

#6. Atualizar um registro (exemplo: alterar o estoque do produto com id = 1)
UPDATE produtos
SET estoque = 12
WHERE id = 1;
