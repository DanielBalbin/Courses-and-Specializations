USE sql_store;

SELECT  
	onw.order_id,
    cn.first_name AS name,
    onw.order_date AS date
FROM orders_new onw
JOIN customers_new cn
	ON cn.customer_id = onw.customer_id
ORDER BY order_date