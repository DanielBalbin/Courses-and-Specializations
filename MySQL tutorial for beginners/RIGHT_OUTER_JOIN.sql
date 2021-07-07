USE sql_store;

SELECT  
    cn.customer_id,
    cn.first_name AS name,
    onw.order_date AS date
FROM orders_new onw
RIGHT JOIN customers_new cn
	ON cn.customer_id = onw.customer_id
ORDER BY customer_id,date