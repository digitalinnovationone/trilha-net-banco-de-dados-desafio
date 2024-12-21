-- 1 - Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome LIKE 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano LIKE '1997'

--5 - Buscar os filmes lançados APÓS o ano 2000 em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano LIKE '200%'
ORDER BY Ano ASC
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--	  ordenando pela duracao em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao ASC

-- 6 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
--     ordenando pela quantidade em ordem decrescente
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, 
--	  e ordenando pelo PrimeiroNome
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


--10 - Buscar o nome do filme e o gênero 
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id =  FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero


--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id 
INNER JOIN Generos ON	FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
--Usando o INNER JOIN
SELECT 
f.Nome,
a.PrimeiroNome,
a.UltimoNome,
e.Papel
  
FROM ElencoFilme e
INNER JOIN Atores a  ON e.IdAtor = a.Id
INNER JOIN Filmes f ON e.IdFilme = f.Id




