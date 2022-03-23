USE bdEscolaIdioma

INSERT tbAluno(nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES ('Paulo Santos', '10/03/2000', '82.292.122-0', 'SP')
	, ('Maria da Gloria', '03/10/1999', '45.233.123-0', 'SP')
	, ('Pedro Nogueira Silva', '04/04/1998', '23.533.211-9', 'SP')
	, ('Gilson Barros Silva', '09/09/1995', '34.221.111-x', 'PE')
	, ('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ')
	, ('Alessandro Pereira', '11/10/2003', '24.402.454-9', 'ES')
	, ('Aline Melo', '08/10/2001', '88.365.012-3', 'RJ')

SELECT  codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno FROM tbAluno

INSERT tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
VALUES ('Ingl�s', '2000', 356.00)
	, ('Alem�o', '3000', 478.00)
	, ('Espanhol', '4000', 500.00)

SELECT codCurso, nomeCurso, cargaHorariaCurso, valorCurso FROM tbCurso


--INSERT FK

INSERT tbTurma(nomeTurma, horarioTurma, codCurso)
VALUES ('1|A', '12:00', 1)
	, ('1|C', '18:00', 3)
	, ('1|B', '18:00', 1)
	, ('1AA', '19:00', 2)

SELECT codTurma, nomeTurma, horarioTurma, codCurso FROM tbTurma

INSERT tbMatricula (dataMatricula, codAluno, codTurma)
VALUES ('03/10/2015', 1, 1)
	, ('04/05/2014', 2, 1)
	, ('04/05/2014', 2, 4)
	, ('03/05/2012', 3, 2)
	, ('03/03/2016', 1, 3)
	, ('07/05/2015', 4, 2)
	, ('05/07/2015', 4, 3)


SELECT codMatricula, dataMatricula, codAluno, codTurma FROM tbMatricula

SELECT  codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno FROM tbAluno
SELECT codCurso, nomeCurso, cargaHorariaCurso, valorCurso FROM tbCurso
SELECT codTurma, nomeTurma, horarioTurma, codCurso FROM tbTurma
SELECT codMatricula, dataMatricula, codAluno, codTurma FROM tbMatricula
