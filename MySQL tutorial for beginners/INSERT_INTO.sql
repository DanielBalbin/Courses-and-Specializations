-- Exemplo da utilização do statement INSERT INTO para inserir novos records na tabela
-- No exemplo as tabelas com Auto_increment e com valores Default são deixadas com seus
-- preenchimentos padrão

USE sql_store;

INSERT INTO products (name, quantity_in_stock, unit_price)
Values
	( 'Feijoada', 100, 2.5),
    ( 'Paçoca', 54, 4.2),
    ( 'Pé de moleque', 40, 2)