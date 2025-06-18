#1. Criar banco de dados:
CREATE DATABASE IF NOT EXISTS db_generation_game_online;
#Usar o banco de dados.
USE db_generation_game_online;

#2. Criação da tabela tb_classes:
CREATE TABLE tb_classes (
    id_class INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);
#3. Criação da tabela tb_personagens:
CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_class INT,
    FOREIGN KEY (id_class) REFERENCES tb_classes(id_class)
);
#4. Inserção de 5 registros na tabela tb_classes:
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Classe focada em combate corpo a corpo e força física'),
('Arqueiro', 'Classe especializada em ataques à distância com arco e flecha'),
('Mago', 'Classe que utiliza magias para atacar e se defender'),
('Ladino', 'Classe ágil, especializada em ataques rápidos e furtivos'),
('Paladino', 'Classe que mistura força física e poderes sagrados');

#5. Inserção de 8 registros na tabela tb_personagens:
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_class) VALUES
('Carlos', 2500, 1500, 2), -- Arqueiro
('Clara', 1800, 1700, 3), -- Mago
('Caio', 3000, 1000, 1),   -- Guerreiro
('Lucas', 1200, 1100, 4),  -- Ladino
('Camila', 2200, 2100, 5), -- Paladino
('Marcos', 1900, 1300, 1), -- Guerreiro
('Carla', 1600, 900, 2),   -- Arqueiro
('Ricardo', 2700, 1400, 4);-- Ladino

#6. SELECT que retorna todos os personagens cujo poder de ataque seja maior do que 2000:
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

#7. SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo entre 1000 e 2000:
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

#8. SELECT utilizando LIKE buscando personagens que possuam a letra C no nome:
SELECT * FROM tb_personagens WHERE nome LIKE '%C%' OR nome LIKE '%c%';

#9. SELECT utilizando INNER JOIN unindo dados de tb_personagens e tb_classes:
SELECT p.id_personagem, p.nome AS personagem, p.poder_ataque, p.poder_defesa,
       c.nome AS classe, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_class = c.id_class;

#10. SELECT com INNER JOIN que traz personagens da classe 'Arqueiro':
SELECT p.id_personagem, p.nome AS personagem, p.poder_ataque, p.poder_defesa,
       c.nome AS classe, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_class = c.id_class
WHERE c.nome = 'Arqueiro';

