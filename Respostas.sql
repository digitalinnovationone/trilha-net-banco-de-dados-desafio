--1--

SELECT 
	Nome,
	Ano
FROM Filmes

--2--

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

--3--

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4--

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--5--

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--6--

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7--

SELECT
    Ano,
    COUNT(Filmes.Id) AS Quantidade
FROM
    filmes
GROUP BY
    Ano
ORDER BY
    Quantidade DESC

--8--

SELECT
    *
FROM
	Atores
WHERE Genero = 'M'

--9--

SELECT
    *
FROM
	Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10--

SELECT
    F.Nome AS NomeDoFilme,
    G.Genero
FROM
    Filmes AS F
INNER JOIN
    FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN
    Generos AS G ON FG.IdGenero = G.Id

--11--

SELECT
    F.Nome AS NomeDoFilme,
    G.Genero
FROM
    Filmes AS F
INNER JOIN
    FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN
    Generos AS G ON FG.IdGenero = G.Id
WHERE Genero = 'Mistério'

--12--

SELECT
    F.Nome AS NomeDoFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM
    Filmes AS F
INNER JOIN
    ElencoFilme AS EF ON F.Id = EF.IdFilme
INNER JOIN
    Atores AS A ON EF.IdAtor = A.Id
