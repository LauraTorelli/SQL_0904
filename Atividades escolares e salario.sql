--QUANTIDADE DE FUNCIONÁRIOS

SELECT * FROM `PROLETARIADO` WHERE PROFISSAO LIKE 'P%';
SELECT * FROM `PROLETARIADO` WHERE PROFISSAO LIKE 'M%';
SELECT * FROM `PROLETARIADO` WHERE PROFISSAO LIKE 'A%';
SELECT * FROM `PROLETARIADO` WHERE PROFISSAO LIKE 'T%';
SELECT * FROM `PROLETARIADO` WHERE PROFISSAO LIKE 'J%';

--SOMA SALÁRIOS

SELECT SUM(SALARIO) AS SOMASAL_PROF FROM `SALARIO`WHERE PROFISSAO = 'PROFESSOR';

--MÉDIA

SELECT AVG(SALARIO) AS MEDIA_SALARIOS FROM `SALARIO`WHERE PROFISSAO = 'PROFESSOR';

--MÁXIMO

SELECT MAX(SALARIO) AS MAIOR-SALARIO FROM `SALARIO`WHERE PROFISSAO = 'PROFESSOR';

--MÍNIMO

SELECT MIN(SALARIO) AS MENOS_SALARIO FROM `SALARIO`WHERE PROFISSAO = 'PROFESSOR';

--DESAFIO 1

SELECT MAX(SALARIO) AS MAIOR_SALARIO FROM SALARIO WHERE PROFISSAO IN ('ATOR', 'MÚSICO');

--DESAFIO 2

SELECT MAX(SALARIO) AS MAIOR_SALARIO FROM SALARIO WHERE PROFISSAO IN ('ATOR', 'MÚSICO', 'JODADOR DE FUTEBOL');

--SOMA DAS IDADES DOS ALUNOS

--Soma idade de todos os alunos
SELECT SUM(Idade) AS SOMA_IDADE
FROM Alunos

--Faz a média de idade de todos os alunos
SELECT AVG(Idade) AS MEDIA_IDADE
FROM Alunos

--COloca o sexo feminino
UPDATE Alunos
SET Sexo = 'F' 
WHERE ID IN (1, 3, 4, 5, 6, 8, 9, 11, 12, 14, 16, 17, 18, 19, 21, 22, 25, 32, 33); 


--Coloca o sexo masculino
UPDATE Alunos
SET Sexo = 'M' 
WHERE ID IN (2, 7, 10, 13, 15, 20, 23, 24, 26, 27, 28, 29, 30, 31);


--Média idade Feminino
SELECT AVG(Idade) AS MEDIA_IDADE
FROM Alunos 
WHERE SEXO = 'F';

--Média idade Masculino
SELECT AVG(Idade) AS MEDIA_IDADE
FROM Alunos 
WHERE SEXO = 'M';

--Soma idade Feminino
SELECT SUM(Idade) AS SOMA_IDADE
FROM Alunos 
WHERE SEXO = 'F';


--Soma idade Masculino
SELECT SUM(Idade) AS SOMA_IDADE
FROM Alunos 
WHERE SEXO = 'M';
-- NOME DE ALUNOS 

--Idade máxima do sexo masculino que tem a letra "c" no nome
SELECT MAX(Idade) AS Idade_maxima
FROM Alunos
WHERE Sexo = 'M' AND nome LIKE '%c%' AND nome NOT LIKE 'Laura Torelli%';


--Idade mínima do sexo feminino e do sexo masculino que têm a letra "f" no nome
SELECT MIN(Idade) AS Idade_minima
FROM Alunos
WHERE (Sexo = 'F' OR sexo = 'M') AND nome LIKE '%f%' AND nome NOT LIKE 'Laura Torelli%';


--dade máxima do sexo feminino (F) com nomes iniciados em "g"
SELECT MAX(Idade) AS Idade_maxima
FROM Alunos
WHERE Sexo = 'F' AND nome LIKE 'g%' AND nome NOT LIKE 'Laura Torelli%';


--Idade mínima dos sexo masculino com nomes iniciados em "r"
SELECT MIN(Idade) AS Idade_minima
FROM Alunos
WHERE sexo = 'M' AND nome LIKE 'r%' AND nome NOT LIKE 'Laura Torelli%';

--Soma das idades máxima e mínima
SELECT MAX(Idade) + MIN(Idade) AS soma_idades
FROM Alunos
WHERE nome NOT LIKE 'Vitor Hugo';

--Do sexo feminino que têm "a" no nome
SELECT *
FROM Alunos
WHERE sexo = 'F' AND nome LIKE '%a%' AND nome NOT LIKE 'Laura Torelli%';

--ALUNOS EXCETO ALGUMAS LETRAS

--Média idade dos alunos que têm a letra "b" no nome
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE nome LIKE '%b%';


--Soma das idades das alunas e alunos que têm a letra "s" no nome
SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE nome LIKE '%s%';


--Média idade das alunas com nomes iniciados em "i"
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE sexo = 'F' AND nome LIKE 'i%';


--Média idade dos alunos com nomes iniciados em "g"
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE sexo = 'M' AND nome LIKE 'g%';


--Soma das idades das alunas que têm "a" no nome e soma das idades dos alunos que têm "f" no nome
SELECT 
  SUM(CASE WHEN sexo = 'F' THEN idade ELSE 0 END) AS soma_idades_alunas,
  SUM(CASE WHEN sexo = 'M' THEN idade ELSE 0 END) AS soma_idades_alunos
FROM alunos
WHERE nome LIKE '%a%' OR nome LIKE '%f%';
