-- Query 0: Entendimento das tabelas
SELECT * FROM Atores
SELECT COUNT (Id) TotalAtores FROM Atores

SELECT * FROM ElencoFilme
SELECT COUNT (Id) TotalElencoFilmes FROM ElencoFilme

SELECT * FROM Filmes
SELECT COUNT (Id) TotalFilmes FROM Filmes

SELECT * FROM FilmesGenero
SELECT COUNT (Id) TotalFilmesGeneros FROM FilmesGenero

SELECT * FROM Generos
SELECT COUNT (Id) TotalGeneros FROM Generos

-- Query 1: Buscar o nome e ano dos filmes

SELECT 
	Nome, 
	Ano 
FROM Filmes

-- Query 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT 
	Nome, 
	Ano
FROM Filmes
ORDER BY Ano

-- Query 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT 
	*
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Query 4: Buscar os filmes lançados em 1997

SELECT 
	*
FROM Filmes
WHERE Ano = 1997

-- Query 5: Buscar os filmes lançados APÓS o ano 2000

SELECT 
	*
FROM Filmes
WHERE Ano > 2000
--ORDER BY Ano

-- Query 6: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT 
	*
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Query 7: Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT 
	Ano, COUNT(Duracao) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Query 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT 
	PrimeiroNome, 
	UltimoNome
FROM Atores
WHERE Genero = 'M'

-- Query 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT 
	PrimeiroNome, 
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Query 10 - Buscar o nome do filme e o gênero

--SELECT * FROM Filmes ORDER BY Nome
--SELECT * FROM FilmesGenero ORDER BY IdFilme

SELECT 
	--Filmes.Id,
	Filmes.Nome,
	--FilmesGenero.IdGenero,
	Generos.Genero
FROM Filmes
JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
--ORDER BY Filmes.Nome

-- Query 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

--SELECT * FROM Filmes ORDER BY Nome
--SELECT * FROM FilmesGenero ORDER BY IdFilme

SELECT 
	--Filmes.Id,
	Filmes.Nome,
	--FilmesGenero.IdGenero,
	Generos.Genero
FROM Filmes
JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- Query 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT * FROM Filmes
SELECT * FROM Atores
SELECT * FROM ElencoFilme

SELECT 
	--Filmes.Id,
	--ElencoFilme.IdAtor,
	--ElencoFilme.IdFilme,
	--Atores.Id,
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
	
FROM Filmes
JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id