--Resposta-1
SELECT Nome,
Ano
FROM Filmes

--Resposta-2
SELECT Nome,
Ano, Duracao
FROM Filmes
ORDER BY Ano

--Resposta-3
SELECT Nome,
Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro' 

--Resposta-4
SELECT Nome,
Ano, Duracao
FROM Filmes
WHERE Ano = 1997

--Resposta-5
SELECT Nome,
Ano, Duracao
FROM Filmes
WHERE Ano >= 2000

--Resposta-6
SELECT Nome,
Ano, Duracao
FROM Filmes
WHERE Duracao > 100
ORDER BY Duracao

--Resposta-7
SELECT Ano,
COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Resposta-8
SELECT * FROM Generos
WHERE Genero = 'M'

--Resposta-9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Resposta-10
Select Filmes.Nome AS Filme,Generos.Genero
		FROM FilmesGenero 
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Resposta-11
Select Filmes.Nome AS Filme, Generos.Genero
		FROM FilmesGenero 
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--Resposta-12
Select Filmes.Nome AS Filme,
       Atores.PrimeiroNome AS Nome,
       Atores.UltimoNome AS Sobrenome,
       ElencoFilme.Papel AS Personagem
		FROM ElencoFilme 
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor





