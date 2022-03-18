USE bdEstoque

--A- LISTAR AS DESCRI��ES DOS PRODUTOS AO LADO DO NOME DOS FABRICANTES
SELECT descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante 
		ON tbProduto.codFabricante = tbFabricante.codFabricante


--B - LISTAR AS DESCRI��ES DOS PRODUTOS AO LADO DO NOME DOS FORNECEDORES
SELECT descricaoProduto, nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor 
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--C=LISTAR A SOMA DAS QUANTIDADES DOS PRODUTOS AGRUPADOS PELO NOME DOS FABRICANTES
SELECT nomeFabricante, SUM (tbProduto.codProduto)AS 'Quantidade de produtos' FROM tbFabricante
	INNER JOIN tbProduto
		ON tbFabricante.codFabricante = tbProduto.codFabricante
			GROUP BY nomeFabricante


--D- LISTAR O TOTAL DAS VENDAS AO LADO DO NOME DO CLIENTE
SELECT nomeCliente, valorTotalVenda AS 'Total das vendas' FROM tbVenda
	INNER JOIN tbCliente
		ON tbCliente.codCliente = tbVenda.codCliente

--E-LISTAR A M�DIA DOS PRE�OS DOS PRODUTOS AGRUPADOS PELO NOME DO FABRICANTE
SELECT nomeFabricante, AVG (tbProduto.codProduto) AS'Média dos produtos' FROM tbFabricante
	INNER JOIN tbProduto
		ON tbFabricante.codFabricante = tbProduto.codFabricante
			GROUP BY nomeFabricante



--F- LISTAR TODAS AS SOMAS DAS VENDAS AGRUPADAS PELO NOME DO CLIENTE EM ORDEM ALFAB�TICA
SELECT nomeCliente, SUM (tbVenda.codVenda) AS 'SOMAS DAS VENDAS' FROM tbCliente
	INNER JOIN tbVenda 
		ON tbCliente.codCliente = tbVenda.codCliente
			GROUP BY nomeCliente
				ORDER BY nomeCliente


--G -- LISTAR A SOMA DOS PRE�OS DOS PRODUTOS AGRUPADOS PELO NOME DO FABRICANTE
SELECT nomeFabricante, SUM (tbProduto.valorProduto) AS 'SOMA dos produtos' FROM tbFabricante
	INNER JOIN tbProduto
		ON tbFabricante.codFabricante = tbProduto.codFabricante
			GROUP BY nomeFabricante

--H--LISTAR A M�DIA DOS PRE�OS DOS PRODUTOS AGRUPADOS PELO NOME DO  FORNECEDOR
SELECT nomeFornecedor, AVG (tbProduto.valorProduto) AS 'SOMA dos preços dos produtos' FROM tbFornecedor
	INNER JOIN tbProduto
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor
			GROUP BY nomeFornecedor

--I--LISTAR A SOMA DAS VENDAS AGRUPADAS PELO NOME DO PRODUTO 
SELECT descricaoProduto, SUM (tbVenda.valorTotalVenda) as 'VALOR DAS VENDAS PELO NOME DO PRODUTO' FROM tbProduto
	INNER JOIN tbItensVenda
		ON tbItensVenda.codProduto = tbProduto.codProduto
			INNER JOIN tbVenda
				ON tbItensVenda.codVenda = tbVenda.codVenda
					GROUP BY tbProduto.descricaoProduto

--J - LISTAR AS SOMAS DAS VENDAS PELO NOME DO CLIENTE SOMENTE DAS VENDAS REALIZADAS EM FEVEREIERO DE 2014
SELECT nomeCliente, SUM  (tbVenda.valorTotalVenda) 'SOMA DAS VENDAS POR NOME DE CLIENTE (FEVERERIRO-2014)' FROM tbcliente
	INNER JOIN tbVenda
		ON tbVenda.codCliente = tbCliente.codCliente
			WHERE MONTH (dataVenda) = 02 AND YEAR (dataVenda) = 2014
				GROUP BY tbcliente.nomeCliente
