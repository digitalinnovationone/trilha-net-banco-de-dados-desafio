-- 1 - Buscar o nome e ano dos filmes
SELECT 
	F.Nome,
	F.Ano
FROM Filmes F

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duracao
SELECT 
	F.Nome,
	F.Ano,
	F.Duracao
FROM Filmes F
WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançado em 1997
SELECT * FROM Filmes
WHERE Ano = '1997'

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes
WHERE Ano > '2000'

-- 6 - Buscar os filmes com duracao maior que 100 e menor que 150, ordenado pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem descrescente
SELECT 
	f.Ano,
	COUNT(*) Quantidade
FROM Filmes f
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Buscar os atores do genero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os atores do genero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT 
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o genero do tipo "Mistério"
SELECT 
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu papel
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
