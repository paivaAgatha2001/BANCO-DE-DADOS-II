USE bdLivrariaBrasileira

SELECT COUNT (codLivro) as 'Total de Livros que começam com a letra P' FROM tbLivro
WHERE nomeLivro LIKE 'P%'
--A

SELECT MAX (numPaginaLivro) as 'Maior número de páginas entre todos os livros' FROM tbLivro
-- B

SELECT MIN (numPaginaLivro) as 'Menor número de páginas entre todos os livros' FROM tbLivro
-- C

SELECT AVG (numPaginaLivro) as 'A média de páginas entre todos os livros' FROM tbLivro
--D

SELECT SUM (numPaginaLivro) as 'Soma dos números de páginas dos livros de editora código 1' FROM tbLivro
WHERE (codEditora) = 1
-- E

SELECT SUM (numPaginaLivro) as 'Números de páginas dos livros que começam com a letra A' FROM tbLivro
WHERE (nomeLivro) LIKE 'A%'
-- F -- não reconheceu o acento no A de um livro 

SELECT AVG (numPaginaLivro) as 'média dos numeros de paginas dos livros que sejam do autor de cod 3' FROM tbLivro
WHERE (codAutor) = 3
-- G

SELECT COUNT (codLivro) as 'Quantidade de livros da editora 4' FROM tbLivro
WHERE (codEditora) = 4
-- H 

SELECT AVG (numPaginaLivro) as 'A média do número de pag dos livros que tenham a palavra estrela em seu nome' FROM tbLivro
WHERE (nomeLivro) LIKE ' %estrela%'
-- I 

SELECT AVG (numPaginaLivro) as 'A média do número de pag dos livros que tenham a palavra poema em seu nome' FROM tbLivro
WHERE (nomeLivro) LIKE ' %poema%'
-- J

SELECT COUNT (codLivro)as 'Quantidade de livros do genero romance'  FROM tbLivro
WHERE (codGenero) = 1
-- K

SELECT AVG (numPaginaLivro) as 'A média do número de pag dos livros que tenham a Letra A em seu nome' FROM tbLivro
WHERE (nomeLivro) LIKE '%A%'
--L


SELECT codLivro,nomeLivro as 'Nome dos livros em ordem alfabética' FROM tbLivro
ORDER BY (nomeLivro) 
-- M
