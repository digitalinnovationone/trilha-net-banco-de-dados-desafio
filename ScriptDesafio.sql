--1 - Buscar o nome e ano dos filmes

SELECT 
	Nome,
	Ano
FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
Order by ano ASC;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE nome = 'De volta para o Futuro';

--4 - Buscar os filmes lançados em 1997

SELECT 
	Nome,
	Ano
FROM Filmes
WHERE ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT
	nome,
	ano,
	Duracao
FROM filmes
WHERE ano > 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
	nome,
	duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
	ano,
	COUNT(*) AS quantidade	
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10 - Buscar o nome do filme e o gênero

SELECT
	F.Nome AS Nome,
	G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT
	F.Nome AS Nome,
	G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
	F.Nome AS Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes AS F
JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
JOIN Atores AS A ON EF.IdAtor = A.Id;








