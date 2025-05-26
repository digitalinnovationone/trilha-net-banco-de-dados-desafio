-- Exercício 1: Buscar o nome e ano dos filmes
SELECT 
    Nome, 
    Ano 
FROM Filmes;

-- Exercício 2: Buscar nome e ano dos filmes, ordenados por ano crescente
SELECT 
    Nome, 
    Ano 
FROM Filmes 
ORDER BY Ano;

-- Exercício 3: Filme "De Volta para o Futuro" (nome, ano, duração)
SELECT 
    Nome, 
    Ano, 
    Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'; 

-- Exercício 4: Filmes lançados em 1997
SELECT 
    Nome, 
    Ano 
FROM Filmes 
WHERE Ano = 1997;

-- Exercício 5: Filmes lançados após 2000
SELECT 
    Nome, 
    Ano 
FROM Filmes 
WHERE Ano > 2000;

-- Exercício 6: Filmes com duração entre 100 e 150 minutos, ordenados por duração
SELECT 
    Nome, 
    Duracao 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao;

-- Exercício 7: Quantidade de filmes por ano (agrupado, ordenado por quantidade decrescente)
SELECT 
    Ano, 
    COUNT(*) AS Quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC;

-- Exercício 8: Atores masculinos (PrimeiroNome, UltimoNome)
SELECT 
    PrimeiroNome, 
    UltimoNome 
FROM Atores 
WHERE Genero = 'M';

-- Exercício 9: Atores femininos (ordenados por PrimeiroNome)
SELECT 
    PrimeiroNome, 
    UltimoNome 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome;

-- Exercício 10: Nome do filme e gênero associado (JOIN entre Filmes, FilmesGenero e Generos)
SELECT 
    F.Nome AS Filme, 
    G.Genero AS Genero 
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.id;

-- Exercício 11: Filmes do gênero "Mistério"
SELECT 
    F.Nome AS Filme, 
    G.Genero AS Genero 
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.id
WHERE G.Genero = 'Mistério';

-- Exercício 12: Filmes, atores e seus papéis (JOIN entre Filmes, ElencoFilme e Atores)
SELECT 
    F.Nome AS Filme, 
    A.PrimeiroNome, 
    A.UltimoNome, 
    E.Papel 
FROM Filmes F
INNER JOIN ElencoFilme E ON F.id = E.IdFilme
INNER JOIN Atores A ON E.IdAtor = A.id;