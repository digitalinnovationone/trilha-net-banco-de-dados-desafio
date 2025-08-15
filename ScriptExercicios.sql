-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * 
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * 
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150

-- 7
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10
SELECT 
    f.Nome,
    g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
ORDER BY f.Nome;

-- 11
SELECT 
    f.Nome ,
    g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'
 
-- 12
SELECT 
    f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON a.Id = ef.IdAtor 


