-- Essa query gera uma copia da tabela antiga, porém, não compia as propriedades
-- (key, auto inserts, defaults)
-- OBS: A query só funcionara caso não exista a tabela orders_archived

CREATE TABLE orders_archived AS
SELECT * FROM orders