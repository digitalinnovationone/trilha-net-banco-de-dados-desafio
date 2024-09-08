--DESAFIO 1
SELECT Nome, Ano FROM Filmes

--DESAFIO 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

--DESAFIO 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--DESAFIO 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--DESAFIO 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--DESAFIO 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

--DESAFIO 7 
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes 
GROUP BY Ano, Duracao
ORDER BY Duracao DESC;
--OBS Desafio 7 pede que seja ordenando pela duracao em ordem decrescente, mas na imagem ta sendo pela quantidade

--DESAFIO 7.1
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes 
GROUP BY Ano, Duracao
ORDER BY Quantidade DESC;
--Segundo a imagem

--DESAFIO 8
SELECT * FROM Atores
WHERE Genero = 'M'
--OBS esse select retorna para igual a imagem

--DESAFIO 8.1
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'
--Retorno segundo enunciado da questao

--DESAFIO 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--OBS esse select retorna para igual a imagem

--DESAFIO 9.1
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--Retorno segundo enunciado da questao

--DESAFIO 10
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--DESAFIO 11
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--DESAFIO 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor