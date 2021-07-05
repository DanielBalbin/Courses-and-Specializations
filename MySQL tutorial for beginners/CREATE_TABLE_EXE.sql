-- Exercicio Create table
-- Criar uma copia da tabelça invoices substituindo a informação de clint_id
-- pelo nome do cliente e mostrar apenas invoices que já foram pagos
-- OBS: para rodar este codigo é necessario que não exista a tabela 'invoicing_archived'

USE sql_invoicing;

CREATE TABLE invoicing_archieved AS
SELECT 
	i.invoice_id,
    i.number,
	c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c USING(client_id)
WHERE i.payment_total != 0
-- Codigo alternativo: WHERE payment_date IS NOT NULL