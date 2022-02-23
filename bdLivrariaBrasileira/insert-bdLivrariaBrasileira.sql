USE bdLivrariaBrasileira

INSERT tbAutor (nomeAutor)
VALUES ('Machado de Assis')
	, ('Cora Coralina')
	, ('Graciliano Ramos')
	, ('Clarice Lispector')
	, ('Erico Verissimo')

SELECT codAutor, nomeAutor FROM tbAutor


INSERT tbEditora (nomeEditora)
VALUES ('Cia das letras')
	, ('Atica')
	, ('Saraiva')

SELECT codEditora, nomeEditora FROM tbEditora

INSERT tbGenero (nomeGenero)
VALUES ('Romance')
	, ('Poesia')
	, ('Literatura Brasileira')

SELECT codGenero, nomeGenero FROM tbGenero


---FK

INSERT tbLivro (nomeLivro, numPaginaLivro, codGenero, codAutor, codEditora)
VALUES ('Papéis Avulsos', 194,	3, 1, 3)
	, ('Dom Casmurro', 200, 3,  1, 3)
	, ('Poesias Completas', 125, 2, 1, 3)
	, ('As cocadas', 24, 2, 2, 3)
	, ('Estórias da casa velha da ponte', 111, 2, 2, 3)
	, ('O Prato Azul-Pombinho', 95, 2, 2, 2)
	, ('Vidas secas', 176, 3, 3, 2) 
	, ('Angústia', 78, 3, 3, 2)
	, ('Cartas ', 100, 2, 3, 2)
	, ('Água Viva', 96, 1, 4, 2)
	, ('Hora da Estrela', 105, 1, 4, 1)
	, ('Perto do coração Selvagem', 298, 1, 4, 1)
	, ('Clarissa', 105, 1, 5, 1)
	, ('Caminhos Cruzados', 127, 1, 5, 1)
	, ('O tempo e o Vento', 579, 3, 5, 1)

SELECT codLivro, nomeLivro, numPaginaLivro, codGenero, codAutor, codEditora FROM tbLivro
