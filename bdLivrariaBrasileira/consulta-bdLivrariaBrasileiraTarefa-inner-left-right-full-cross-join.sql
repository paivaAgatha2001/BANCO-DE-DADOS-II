USE bdLivrariaBrasileira

--A-- O TOTAL DE LIVROS QUE A LETRA P
SELECT COUNT (codLivro) AS 'TOTAL DE LIVROS COM P' FROM tbLivro
	WHERE nomeLivro LIKE 'P%'

--B-- O MAIOR NÚMERO DE PÁGINAS ENTRE TODOS OS LIVROS
SELECT MAX (numPaginaLivro) as'O MAIOR NÚMERO DE PÁGINAS ENTRE TODOS OS LIVROS'FROM tbLivro

--C-- O MENOR NÚEMRO DE PÁGINAS ENTRE TODOS OS LIVROS
SELECT MIN (numPaginaLivro) as' O MENOR NÚEMRO DE PÁGINAS ENTRE TODOS OS LIVROS' FROM tbLivro

--D-- A MÉDIA DE PÁGINAS ENTRE TODOS OS LIVROS
SELECT AVG (numPaginaLivro) AS 'MÉDIA DAS PÁGINAS' FROM tbLivro
 
--E-- A SOMA DO NÚMERO DE PÁGINAS DOS LIVROS DE EDITORA COD 1 
 SELECT SUM (numPaginaLivro) AS 'SOMA DAS PÁGINAS DE EDITORA COD 1' FROM tbLivro
	WHERE codEditora = 1
 
--F-- A SOMA DOS NÚMEROS DE PÁGINAS DOS LIVROS QUE COMEÇAM COM  A LETRA 'A'
SELECT SUM (numPaginaLivro) AS 'A SOMA DOS NÚMEROS DE PÁGINAS DOS LIVROS QUE COMEÇAM COM  A LETRA A' FROM tbLivro
	WHERE  nomeLivro LIKE 'A%'

--G-- A MÉDIA DOS NÚMEROS DE PGNS DOS LIVROS QUE SEJAM DO AUTOR COD 3 
SELECT AVG (numPaginaLivro) AS 'NÚMERO DE PÁGINAS DOS LIVROS  DO AUTOR 3' FROM tbLivro
	WHERE codAutor = 3

--H-- A QUANTIDADE DE LIVROS DA EDITORA DE COD 4 
SELECT COUNT (codLivro) AS 'TOTAL DE LIVROS DA EDITORA DE COD 4' FROM tbLivro
	WHERE codEditora = 4

--I-- A MÉDIA DO NUMERO DE PÁGINAS DOS LIVROS QUE TENHAM A PALAVRA 'ESTRELA' EM SEU NOME
SELECT AVG (numPaginaLivro) AS 'NÚMERO DAS PÁGINAS QUE TENHAM ESTRELA NO NOME' FROM tbLivro
	WHERE (nomeLivro) LIKE '%Estrela%'

--J-- A QUANTIDADE DE LIVROS QUE TENHAM A PALAVRA POEMA EM SEU NOME
SELECT COUNT (codLivro) AS ' A QUANTIDADE DE LIVROS QUE TENHAM A PALAVRA POEMA EM SEU NOME' FROM tbLivro
	WHERE (nomeLivro) LIKE '%Poema%'

--K-- A QUANTIDADE DE LIVROS AGRUPADO PELO NOME DO GENERO 
SELECT COUNT (codLivro)AS ' A QUANTIDADE DE LIVROS QUE AGRUPADO PELO NOME DO GENERO ', nomeGenero FROM tbLivro
	RIGHT JOIN tbGenero
		ON tbLivro.codGenero = tbGenero.codGenero
			 GROUP BY nomeGenero

--L-- A SOMA DAS PÁGINAS AGRUPADAS PELO NOME DO AUTOR
SELECT SUM (numPaginaLivro)AS 'A SOMA DAS PÁGINAS AGRUPADAS PELO NOME DO AUTOR', nomeAutor  FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
			 GROUP BY nomeAutor
 
 --M -- A MÉDIA DAS PÁGINAS AGRUPADAS PELO NOME DO AUTOR EM ORDEM ALFABÉTICA
 SELECT AVG (numPaginaLivro) AS 'A MÉDIA DAS PÁGINAS AGRUPADAS PELO NOME DO AUTOR EM ORDEM ALFABÉTICA', nomeAutor AS 'NOME DO AUTOR' FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
			 GROUP BY nomeAutor
				ORDER BY nomeAutor

--N-- A QUANTIDADE DE LIVROS AGRUPADO PELO NOME DA EDITORA EM ORDEM ALFABÉTICA INVERSA
SELECT COUNT (codLivro) AS 'A QUANTIDADE DE LIVROS AGRUPADO PELO NOME DA EDITORA EM ORDEM ALFABÉTICA INVERSA', nomeEditora as 'NOME DA EDITORA' FROM tbLivro
	RIGHT JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
			 GROUP BY nomeEditora
				ORDER BY nomeEditora desc

--O-- A SOMA DA PÁGINAS DE LIVROS AGRUPADOS PELO NOME DO AUTOR QUE SEJAM DE AUTORES CUJO NOME COMECE COM COM A LETRA C
SELECT SUM (numPaginaLivro)AS 'A SOMA DAS PÁGINAS AGRUPADAS PELO NOME DO AUTOR QUE COMEÇAM COM C', nomeAutor AS 'AUTOR QUE COMEÇA COM C' FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
			WHERE nomeAutor LIKE 'C%'
				 GROUP BY nomeAutor
	
--P-- A QUANTIDADE DE LIVROS AGRUPADOS PELO NOME DO AUTOR CUJO NOME DO AUTOR SEJA 'MACHADO DE ASSIS' OU 'CORA CORALINA' OU 'GRACILIANO RAMOS'OU 'CLARICE LISPECTOR'
SELECT COUNT (codLivro) as 'QUANTIDADE' , nomeAutor as 'NOME DOS AUTORES' FROM tbLivro
	RIGHT JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
			WHERE nomeAutor LIKE 'Machado de Assis' OR nomeAutor LIKE 'Cora Coralina' OR  nomeAutor LIKE 'Graciliano Ramos' OR nomeAutor LIKE 'Clarice Lispector'
				GROUP BY nomeAutor

--Q-- A SOMA DAS PÁGINAS DOS LIVROS AGRUPADAS PELO NOME DA EDITORA CUJO NUMERO DE PÁGINAS ESTEJA ENTRE 200 E 500 (INCLUSIVE)
SELECT SUM (numPaginaLivro)as 'A SOMA DAS PÁGINAS DOS LIVROS AGRUPADAS PELO NOME DA EDITORA CUJO NUM DE PÁGINAS ESTEJA ENTRE 200 E 500', nomeEditora FROM tbLivro
	INNER JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
			WHERE numPaginaLivro >= 200 AND  numPaginaLivro <= 500
				 GROUP BY nomeEditora

--R-- O NOME DOS LIVROS AO LADO DO NOME DAS EDITORAS E DO NOME DOS AUTORES
SELECT nomeLivro, nomeEditora, nomeAutor FROM tbLivro
	LEFT JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
			INNER JOIN tbAutor
				ON tbLivro.codAutor = tbAutor.codAutor
	
--S-- O NOME DOS LIVROS AO LADO DO NOME DO AUTOR SOMENTE DAQUELE CUJO A EDITORA SEJA 'CIA DAS LETRAS'
SELECT nomeLivro, nomeEditora, nomeAutor FROM tbLivro
	INNER JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
			INNER JOIN tbAutor
				ON tbLivro.codAutor = tbAutor.codAutor
					 WHERE  nomeEditora LIKE 'Cia das Letras'

--T-- O NOME DOS LIVROS AO LADO DOS NOMES DOS AUTORES, SOMENTE OS LIVROS QUE NÃO FOREM DOS ÉRICO VERÍSSIMO
SELECT nomeLivro, nomeAutor FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
			 WHERE  nomeAutor NOT LIKE 'Érico Veríssimo'

--U-- OS NOMES DOS AUTORES AO LADO DO NOME DOS LIVROS, INCLUSIVE DAQUELES QUE NÃO TEM LIVROS CADASTRADOS
SELECT nomeLivro, nomeAutor FROM tbAutor
	LEFT JOIN tbLivro
		ON tbAutor.codAutor = tbLivro.codAutor

--V--OS NOMES DOS AUTORES AO LADO DO NOME DOS LIVROS, INCLUSIVE DAQUELES QUE NÃO TEM AUTORES CADASTRADOS
SELECT nomeAutor, nomeLivro FROM tbAutor
	RIGHT JOIN tbLivro
		ON tbAutor.codAutor = tbLivro.codAutor

--W-- O NOME DOS AUTORES AO LADO DO NOME DOS LIVROS, INDIFERENTE DO AUTOR TER OU NÃO LIVRO PUBLICADO, E INDIFERENTE DO LIVRO PERTENCER A ALGUM AUTOR
SELECT nomeAutor, nomeLivro FROM tbAutor
	FULL JOIN tbLivro
		ON tbAutor.codAutor = tbLivro.codAutor

--X-- A EDITORA ÁTICA IRÁ PUBLICAR TODOS OS TITULOS DESSA LIVRARIA. CRIAR UM SELECT QUE ASSOCIE OS NOMES DE TODOS OS LIVROS AO NOME DA EDITORA ÁTICA
SELECT nomeLivro, nomeEditora FROM tbLivro
	CROSS JOIN tbEditora
		WHERE nomeEditora LIKE 'Atica'

--Y-- SOMENTE OS NOMES DOS AUTORES QUE NÃO TEM LIVROS CADASTRADOS
SELECT nomeAutor FROM tbAutor
	FULL JOIN tbLivro
		ON tbLivro.codAutor = tbAutor.codAutor
			WHERE nomeLivro IS NULL
	

--Z-- OS NOMES DOS GÊNEROS QUE NÃO POSSUEM NENHUM LIVROS CADASTRADOS
SELECT nomeGenero FROM tbLivro
	FULL JOIN tbGenero
		ON tbGenero.codGenero = tbLivro.codGenero
			WHERE nomeLivro IS NULL