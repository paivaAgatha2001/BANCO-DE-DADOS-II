USE bdEscolaIdioma

--1-APRESENTAR OS NOMES DOS ALUNOS AO LADO DO NOME DOS CURSOS QUE ELES FAZEM
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbTurma.codCurso = tbCurso.codCurso


--2- APRESENTAR A QUANTIDADE DE ALUNOS MATRICULADOS POR NOME DO CURSO--REEVISSAAAARRR
SELECT COUNT (tbAluno.codAluno)AS 'Quantidade de alunos por curso', nomeCurso FROM tbCurso
	INNER JOIN tbTurma
		ON tbTurma.codCurso = tbCurso.codCurso
			INNER JOIN tbMatricula
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbAluno
						ON tbMatricula.codAluno = tbAluno.codAluno
							GROUP BY tbCurso.nomeCurso


--3- APRESENTAR A QUANTIDADE DE ALUNOS MATRICULADOS POR NOME DA TURMA
SELECT COUNT (tbAluno.codAluno)AS 'Quantidade de alunos por nome da turma', nomeTurma  FROM tbTurma
	INNER JOIN tbMatricula
		ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbAluno
				ON tbMatricula.codAluno = tbAluno.codAluno
					GROUP BY tbTurma.nomeTurma


--4--APRESENTAR A QUANTIDADE DE ALUNOS QUE FIZERAM MATRICULA EM MAIO DE 2016
SELECT COUNT (codMatricula)AS ' Quantidade de alunos que fizeram matricula em Maio' FROM tbMatricula
		WHERE MONTH (dataMatricula) = 05 AND YEAR (dataMatricula) = 2016


-- 5-- APRESENTAR O NOME DOS ALUNOS EM ORDEM ALF�BETICA AO LADO DO NOME DAS TURMAS EM QUE EST�O MATRICULADOS
SELECT nomeAluno, nomeTurma FROM tbAluno
	INNER JOIN tbMatricula 
		ON tbMatricula.codAluno = tbAluno.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					ORDER BY nomeAluno
		

--6-- APRESENTAR OS NOMES DOS CURSOS E OS HOR�RIOS EM QUE ELES EST�O OFERECIDOS 
SELECT nomeCurso, horarioTurma FROM tbCurso
	INNER JOIN tbTurma
		ON tbTurma.codCurso = tbCurso.codCurso


--7--APRESENTAR A QUANTIDADE DE ALUNOS NASCIDO POR ESTADO
SELECT COUNT (codAluno)AS 'Quantidade de alunos nascido por estado', naturalidadeAluno FROM tbAluno
	GROUP BY naturalidadeAluno


--8--APRESENTAR O NOME DOS ALUNOS AO LADO DA DATA DE MATRICULA NO FORMATO DD/MM/AAAA
--MEUDEUS COMO FAZ???
SELECT nomeAluno, dataMatricula FROM tbAluno
	INNER JOIN tbMatricula
		ON tbMatricula.codAluno = tbAluno.codAluno


---9--APRESENTAR OS ALUNOS CUJO NOME COMECE COM A E QUE ESTEJAM MATRICULADOS NO CURSO DE INGL�S
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbTurma.codCurso = tbCurso.codCurso
							WHERE nomeAluno LIKE 'A%' AND tbCurso.codCurso = 1


--10--APRESENTAR A QUANTIDADE DE MATRICULAS FEITAS NO ANO DE 2016
SELECT COUNT (tbMatricula.codMatricula) AS 'qt de matriculas feitas em 2016 'FROM tbMatricula
	WHERE YEAR (dataMatricula) = 2016

