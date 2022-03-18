USE bdEstoque

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto*10.0/100.0)
WHERE codFabricante = 1

SELECT valorProduto, codFabricante FROM tbProduto
WHERE codFabricante = 1
--Alterar o preço dos produtos fabricados pela Unilever aumentando-os em 10%


UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto*7.0/100.0)
WHERE codFabricante = 2

SELECT valorProduto, codFabricante FROM tbProduto
WHERE codFabricante = 2
--Diminuir os preços dos produtos fabricados pela P&G em 7%


UPDATE tbProduto
SET qtProduto = qtProduto - 30
WHERE codFornecedor = 1

SELECT qtProduto, codFornecedor FROM tbProduto
WHERE codFornecedor = 1
--Diminuir 30 itens na quantidade dos produtos que são fornecidos pelo atacad�o


UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5

SELECT nomeCliente FROM tbCliente
WHERE codCliente = 5
--Nome de Adriana Nogueira Silva Alterado


UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda - (valorTotalVenda*5.0/100.0)
WHERE MONTH (dataVenda) = 2 AND YEAR (dataVenda) = 2014

SELECT valorTotalVenda FROM tbVenda
WHERE MONTH (dataVenda) = 2 AND YEAR (dataVenda) = 2014
--Concede 5% de desconto no valor total das vendas ocorridas em fevereiro de 2014


DELETE FROM tbItensVenda
WHERE codProduto = 5

SELECT codProduto FROM tbItensVenda 
--Apaga todos o itens de vends do produto "Salsicha Hot Dog Sadia"


UPDATE tbCliente
SET sexoCliente = 'fem'
WHERE sexoCliente LIKE 'f%'

SELECT sexoCliente FROM tbCliente
--Sexo de f para fem


UPDATE tbCliente
SET sexoCliente = 'masc'
WHERE sexoCliente LIKE 'm%'

SELECT sexoCliente FROM tbCliente
--Sexo de m para mac


UPDATE tbCliente
SET emailCliente = 'asantana@ig.com'
WHERE codCliente = 1

SELECT nomeCliente, emailCliente FROM tbCliente
WHERE codCliente = 1
--Muda email do Armando


UPDATE tbProduto
SET qtProduto = qtProduto - (qtProduto*10.0/100.0)
WHERE codFabricante = 1

SELECT qtProduto FROM tbProduto
WHERE codFabricante = 1
--Diminui quantidade do estoque da unilever em 10%


UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto*5.0/100.0)
WHERE descricaoProduto LIKE 'Amaciante%'

SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE descricaoProduto LIKE 'Amaciante%'
--Aumenta 5% preço dos amaciantes


UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto*10.0/100.0)
WHERE descricaoProduto LIKE '%Sadia'

SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE descricaoProduto LIKE '%Sadia'
--Aumenta 10% preço dos produtos que tem Sadia no nome


UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto*10.0/100.0)
WHERE descricaoProduto LIKE '%Seda'

SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE descricaoProduto LIKE '%Seda'
--Concede 10% de desconto nos produtos da Seda


--Não deu certo
DELETE FROM tbCliente
WHERE codCliente = 2

SELECT codCliente FROM tbCliente
-- Não consegui pois o c�digo do cliente est� ligado a tabela de venda como chave estrangeira, impedindo que seja excuindo, isso acontece pois o banco de dados mant�m a integridade.


