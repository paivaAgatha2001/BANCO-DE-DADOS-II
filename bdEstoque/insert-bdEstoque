USE bdEstoque

INSERT tbFabricante(nomeFabricante)
VALUES ('Unilever')
	, ('P&G')
	, ('Bunge')
SELECT  codFabricante, nomeFabricante FROM tbFabricante


INSERT tbFornecedor(nomeFornecedor, contatoFornecedor)
VALUES ('Atacadão', 'Carlos Santos')
	, ('Assaí', 'Maria Stella')
	, ('Roldão', 'Paulo César')
SELECT codFornecedor, nomeFornecedor, contatoFornecedor FROM tbFornecedor

INSERT tbCliente(nomeCliente,cpfCliente,emailCliente,sexoCliente,dtNascCliente)
VALUES ('Armando José Santana', '12345678900','armandojsantana@outlook.com', 'm', '21/02/1961')
	, ('Sheila Carvalho Leal', '45678909823', 'scarvalho@ig.com.br', 'f', '13/09/1978')
	, ('Carlos Henrique Souza', '76598278299','chenrique@ig.com.br','m','08/09/1981')
	, ('Maria Aparecida Souza', '87365309899', 'mapdasouza@outlook.com','f','07/07/1962')
	, ('Adriana Nogueira Silva', '76354309388', 'drica1977@ig.com.br', 'f', '09/04/1977')
	, ('Paulo Henrique Silva', '87390123111', 'phsilva80@hotmail.com', 'm', '02/02/1987')
SELECT codCliente, nomeCliente, cpfCliente, emailCliente, sexoCliente, dtNascCliente FROM tbCliente

--insert com Fk

INSERT tbVenda(dataVenda,valorTotalVenda,codCliente)
VALUES ('01/02/2014', 4500.00, 1)
	, ('03/02/2014', 3400.00,1)
	, ('10/02/2014', 2100.00,2)
	, ('15/02/2014', 2700.00,3)
	, ('17/03/2014', 560.00,3)
	, ('09/04/2014', 1200.00,4)
	, ('07/05/2014', 3500.00,5)
	, ('07/05/2014', 3400.00,1)
	, ('05/05/2014', 4000.00,2)
SELECT codVenda, dataVenda, valorTotalVenda, codCliente FROM tbVenda

INSERT tbProduto(descricaoProduto, valorProduto, qtProduto, codFabricante, codFornecedor)
VALUES ('Amaciante Downy', 5.76, 1500, 2,1)
	, ('Amaciante Comfort', 5.45, 2300, 1,1)
	, ('Sabão em pó OMO', 5.99, 1280, 1,2)
	, ('Margarina Qualy', 4.76, 2500, 3,1)
	, ('Salsicha Hot Dog Sadia', 6.78, 2900,3,2)
	, ('Mortadela Perdigão', 2.50, 1200, 3,3)
	, ('Hamburguer Sadia', 9.89, 1600, 3,1)
	, ('Fralda Pampers', 36.00, 340, 2,3)
	, ('Xampu Seda', 5.89, 800, 1,2)
	, ('Condicionador Seda', 6.50, 700, 1,3)
SELECT codProduto, descricaoProduto, valorProduto, qtProduto, codFabricante, codFornecedor FROM tbProduto


INSERT tbItensVenda(qtItensVenda,subTotalItensVenda,codVenda,codProduto)
VALUES (200, 1500.00, 1,1)
	, (300, 3000.00, 1,2)
	, (120, 1400.00, 2,4)
	, (200, 1000.00, 2,2)
	, (130, 1000.00, 2,3)
	, (200, 2100.00, 3,5)
	, (120, 1000.00, 4,4)
	, (450, 700.00, 4,5)
	, (200, 560.00, 5,5)
	, (200, 600.00, 6,7)
	, (300, 600.00, 6,6)
	, (300, 2500.00, 7,1)
	, (200, 1000.00, 7,2)
	, (250, 1700.00, 8,6)
	, (200, 1700.00, 8,5)
	, (1000, 4000.00, 9,4)
SELECT codItensVenda, qtItensVenda, subTotalItensVenda, codVenda, codProduto FROM tbItensVenda
