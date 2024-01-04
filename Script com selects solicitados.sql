USE Filmes

---- 1 - Buscar o nome e ano dos filmes
SELECT
	F.Nome,
	F.Ano
FROM Filmes F


---- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM Filmes F
ORDER BY F.Ano ASC

---- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM Filmes F
WHERE F.Nome = 'de volta para o futuro'

---- 4 - Buscar os filmes lançados em 1997
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM Filmes F
WHERE F.Ano = 1997

---- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM Filmes F
WHERE F.Ano > 2000

---- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM Filmes F
WHERE F.Duracao > 100 AND F.Duracao < 150
ORDER BY F.Duracao

---- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
	F.Ano,
	COUNT(F.Ano) Quantidade
FROM Filmes F
GROUP BY F.ano--, F.Duracao
ORDER BY 2 DESC

---- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	A.ID,
	A.PrimeiroNome,
	A.UltimoNome,
	A.Genero
FROM Atores A
WHERE A.Genero = 'M'

---- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	A.ID,
	A.PrimeiroNome,
	A.UltimoNome,
	A.Genero
FROM Atores A
WHERE A.Genero = 'F'
ORDER BY A.PrimeiroNome

---- 10 - Buscar o nome do filme e o gênero
SELECT
	F.Nome,
	G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON FG.IdFilme = F.Id
JOIN Generos G ON G.Id = FG.IdGenero

---- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
	F.Nome,
	G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON FG.IdFilme = F.Id
JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

---- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM Filmes F
JOIN DBO.ElencoFilme E ON E.IdFilme = F.Id
JOIN Atores A ON A.Id = E.IdAtor


