USE sql_store;

-- As tabelas utilizadas são copias das tabelas fornecidas pelo curso
-- Esse query unifica duas tabelas utilizando o campo customer_id

SELECT  
	onw.order_id,
    cn.first_name AS name,
    onw.order_date AS date
FROM orders_new onw
JOIN customers_new cn
	ON cn.customer_id = onw.customer_id
-- ALternativa para o JOIN quando a junção é realizada com um field de mesmo nome
-- JOIN customers_new USING(customer_id)

ORDER BY order_date
