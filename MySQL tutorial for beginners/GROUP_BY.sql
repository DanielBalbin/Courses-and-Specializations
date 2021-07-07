-- As tabelas utilizadas são copias das fornecidas pelo curso
-- Exemplo da utilização da função group by, a tabela é agrupada 
-- pela customer_id para levantar quantas ordens foram feitas.
-- Os dados são fusionados com a tabela de clientes para exibir a informação destes

USE sql_store;

SELECT *
FROM(SELECT  
    	customer_id,
    	COUNT(customer_id) AS orders
     FROM orders_new onw
     GROUP BY(customer_id)) table1
JOIN customers_new table2
     USING(customer_id)
ORDER BY orders DESC
