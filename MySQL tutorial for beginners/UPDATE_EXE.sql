-- Exercicio para UPDATE de multiplos valores de uma tabela ao mesmo tempo
-- Adicionar 50 pontos a todos os clients nascidos antes de 1990
-- Esse script só funcionara com o safe mode do MySQL desabilitado

USE sql_store;

UPDATE customers_new
SET points = points + 50
WHERE birth_date < '1990-01-01'