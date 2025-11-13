-- Consulta 1: Listar os filmes com maior duração
SELECT Titulo, Duracao
FROM Filmes
ORDER BY Duracao DESC;

-- Consulta 2: Listar os 10 filmes mais recentes
SELECT TOP 10 Titulo, Ano
FROM Filmes
ORDER BY Ano DESC;

-- Consulta 3: Listar os filmes com o gênero “Ação”
SELECT f.Titulo, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Ação';

-- Consulta 4: Listar os filmes com o ator “Tom Hanks”
SELECT f.Titulo, a.Nome
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id
WHERE a.Nome = 'Tom Hanks';

-- Consulta 5: Listar os atores que atuaram em mais de 3 filmes
SELECT a.Nome, COUNT(*) AS QuantidadeFilmes
FROM ElencoFilme ef
JOIN Atores a ON ef.IdAtor = a.Id
GROUP BY a.Nome
HAVING COUNT(*) > 3
ORDER BY QuantidadeFilmes DESC;

-- Consulta 6: Listar os filmes que possuem mais de um gênero
SELECT f.Titulo, COUNT(fg.IdGenero) AS QuantidadeGeneros
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
GROUP BY f.Titulo
HAVING COUNT(fg.IdGenero) > 1
ORDER BY QuantidadeGeneros DESC;

-- Consulta 7: Listar os filmes lançados entre os anos de 2000 e 2010
SELECT Titulo, Ano
FROM Filmes
WHERE Ano BETWEEN 2000 AND 2010
ORDER BY Ano;

-- Consulta 8: Listar os gêneros que possuem mais de 3 filmes
SELECT g.Genero, COUNT(fg.IdFilme) AS QuantidadeFilmes
FROM FilmesGenero fg
JOIN Generos g ON fg.IdGenero = g.Id
GROUP BY g.Genero
HAVING COUNT(fg.IdFilme) > 3
ORDER BY QuantidadeFilmes DESC;

-- Consulta 9: Listar os filmes que possuem o mesmo gênero
SELECT g.Genero, f.Titulo
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
ORDER BY g.Genero, f.Titulo;

-- Consulta 10: Listar os atores e a quantidade de filmes em que atuaram, ordenado pela quantidade (decrescente)
SELECT a.Nome, COUNT(*) AS QuantidadeFilmes
FROM ElencoFilme ef
JOIN Atores a ON ef.IdAtor = a.Id
GROUP BY a.Nome
ORDER BY QuantidadeFilmes DESC;

-- Consulta 11: Listar os filmes e seus respectivos atores
SELECT f.Titulo, a.Nome AS Ator
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id
ORDER BY f.Titulo, a.Nome;

-- Consulta 12: Listar os filmes que possuem mais de 2 atores
SELECT f.Titulo, COUNT(ef.IdAtor) AS QuantidadeAtores
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
GROUP BY f.Titulo
HAVING COUNT(ef.IdAtor) > 2
ORDER BY QuantidadeAtores DESC;