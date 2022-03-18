CREATE DATABASE bdEstoque

--DROP DATABASE bdEstoque

USE bdEstoque

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR(50) NOT NULL
)

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR(50) NOT NULL
	, cpfCliente CHAR (14) NOT NULL
	, emailCliente VARCHAR (320) NOT NULL
	, sexoCliente VARCHAR(20) NOT NULL
	, dtNascCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFornecedor(
	codFornecedor  INT PRIMARY KEY IDENTITY(1,1)
	, nomeFornecedor VARCHAR(50) NOT NULL
	, contatoFornecedor VARCHAR(50) NOT NULL
)

--Tabelas com FK

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	, dataVenda SMALLDATETIME NOT NULL
	, valorTotalVenda SMALLMONEY NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(1,1)
	, descricaoProduto VARCHAR(100) NOT NULL
	, valorProduto SMALLMONEY NOT NULL
	, qtProduto INT NOT NULL
	, codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
	, codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(codFornecedor)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY(1,1)
	, qtItensVenda INT NOT NULL
	, subTotalItensVenda SMALLMONEY NOT NULL
	, codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	, codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
)
