-- Esta query usa o SELECT como argumento para o INSERT
-- Para uma tabela vazia fara uma copia do que for exibido no SELECT 

INSERT INTO orders_archived
	(SELECT *
	FROM orders
	WHERE order_date < '2019-01-01')