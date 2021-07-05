-- Exercicio: utilizar um subquery como argumento para atualização da tabela orders_new
-- Os clientes com mais de 3000 pontos devem receber um novo comentario 'Gold client'

UPDATE orders_new
SET comments = 'Gold client'
WHERE customer_id IN
	(SELECT customer_id
	FROM customers
	WHERE points >= 3000)