#1. Criar banco de dados:
CREATE DATABASE fenix_rh;

#Usar o banco de dados.
USE fenix_rh;

#2. Criar a tabela colaboradores! atributos escolhidos: nome, cargo, departamento, salario e data_admissao.
CREATE TABLE colaboradores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE
);

#3. Inserir 5 Registros na Tabela:
INSERT INTO colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES 
("Rosa Souza", "Analista de RH", "Recursos Humanos", 2500.00, "2022-03-01"),
("Adrielli Bertoldo", "Desenvolvedora", "TI", 1800.00, "2023-01-15"),
("Jonas Alves", "Gerente Financeiro", "Financeiro", 3500.00, "2020-08-10"),
("Bruna Martins", "Assistente Administrativo", "Administração", 1700.00, "2021-06-25"),
("Camila Furtado", "Coordenadora de Projetos", "Projetos", 2800.00, "2019-11-05");

#4. SELECT - Colaboradores com salário maior que 2000:
SELECT * FROM colaboradores
WHERE salario > 2000;

#5. SELECT - Colaboradores com salário menor que 2000:
SELECT * FROM colaboradores
WHERE salario < 2000;

#6. Atualizar um Registro (ex: alterar salário de Adrielli Bertoldo)
UPDATE colaboradores
SET salario = 2200.00
WHERE nome = "Adrielli Bertoldo";
SELECT * FROM colaboradores WHERE nome = "Adrielli Bertoldo";









