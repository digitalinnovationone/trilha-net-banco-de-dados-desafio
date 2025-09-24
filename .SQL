-- Banco de Dados: Filmes
-- Autor: [Seu Nome]
-- Objetivo: Consultas para análise de filmes

Exercício 1 – Nome e ano dos filmes

SELECT Nome, Ano
FROM Filmes;

-- Exercício 2 – Nome e ano dos filmes, ordenados pelo ano

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- Exercício 3 – Buscar “De Volta Para o Futuro”

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';


-- Exercício 4 – Filmes lançados em 1997

SELECT Nome
FROM Filmes
WHERE Ano = 1997;


-- Exercício 5 – Filmes lançados após 2000

SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;


-- Exercício 6 – Filmes com duração entre 100 e 150 minutos, ordenados pela duração

SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;


-- Exercício 7 – Quantidade de filmes por ano

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;


-- Exercício 8 – Atores do gênero masculino

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';


-- Exercício 9 – Atores do gênero feminino, ordenados pelo primeiro nome

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;


-- Exercício 10 – Nome do filme e gênero

SELECT f.Nome AS Filme, g.Nome AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.FilmeId
JOIN Generos g ON fg.GeneroId = g.Id;


-- Exercício 11 – Filmes do gênero “Mistério”

SELECT f.Nome AS Filme, g.Nome AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.FilmeId
JOIN Generos g ON fg.GeneroId = g.Id
WHERE g.Nome = 'Mistério';


-- Exercício 12 – Nome do filme e atores com papel

SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
JOIN ElencoFilme e ON f.Id = e.FilmeId
JOIN Atores a ON e.AtorId = a.Id;
