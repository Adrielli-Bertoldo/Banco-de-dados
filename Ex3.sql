#1. Criar banco de dados:
CREATE DATABASE escola;

#Usar o banco de dados.
USE escola;

#2. Criar a tabela estudantes com 5 atributos relevantes:
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    serie VARCHAR(20),
    nota_final DECIMAL(4,2),
    situacao VARCHAR(20)
);

#3. Inserir 8 registros na tabela:
INSERT INTO estudantes (nome, idade, serie, nota_final, situacao) VALUES
("Ana Beatriz", 14, "8º ano", 8.5, "Aprovada"),
("Carlos Eduardo", 15, "9º ano", 6.2, "Em Recuperação"),
("Julia Martins", 13, "7º ano", 7.8, "Aprovada"),
("Mateus Silva", 12, "6º ano", 5.5, "Reprovado"),
("Larissa Souza", 14, "8º ano", 9.3, "Aprovada"),
("Pedro Henrique", 15, "9º ano", 4.7, "Reprovado"),
("Rafaela Lopes", 13, "7º ano", 7.0, "Aprovada"),
("João Vitor", 12, "6º ano", 8.0, "Aprovado");

#4. SELECT para retornar estudantes com nota maior que 7.0
SELECT * FROM estudantes WHERE nota_final > 7.0;

#5. SELECT para retornar estudantes com nota menor que 7.0
SELECT * FROM estudantes WHERE nota_final < 7.0;

#6. Atualizar um registro (exemplo: mudar a situação do estudante com id = 2)
UPDATE estudantes
SET situacao = 'Aprovado'
WHERE id = 2;
SELECT * FROM estudantes WHERE id = 2;
