--Queries:
-- 1. Buscar o nome e ano dos filmes
SELECT 
    Nome, 
    Ano 
FROM 
    Filmes;

-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
    Nome, 
    Ano 
FROM 
    Filmes
ORDER BY 
    Ano ASC;

-- 3. Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a duração
SELECT 
    Nome, 
    Ano, 
    Duracao 
FROM 
    Filmes
WHERE 
    Nome = 'De Volta para o Futuro';

-- 4. Buscar os filmes lançados em 1997
SELECT 
    Nome, 
    Ano 
FROM 
    Filmes
WHERE 
    Ano = 1997;

-- 5. Buscar os filmes lançados APÓS o ano 2000
SELECT 
    Nome, 
    Ano 
FROM 
    Filmes
WHERE 
    Ano > 2000;

-- 6. Buscar os filmes com duração maior que 100 e menor que 150 minutos, ordenando pela duração em ordem crescente
SELECT 
    Nome, 
    Duracao 
FROM 
    Filmes
WHERE 
    Duracao BETWEEN 100 AND 150
ORDER BY 
    Duracao ASC;

-- 7. Buscar a quantidade de filmes lançados no ano, agrupando por ano e ordenando pela quantidade em ordem decrescente
SELECT 
    Ano, 
    COUNT(*) AS QuantidadeFilmes 
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    QuantidadeFilmes DESC;

-- 8. Buscar os atores do gênero masculino, retornando o PrimeiroNome e UltimoNome
SELECT 
    PrimeiroNome, 
    UltimoNome 
FROM 
    Atores
WHERE 
    Genero = 'M';

-- 9. Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome e ordenando pelo PrimeiroNome
SELECT 
    PrimeiroNome, 
    UltimoNome 
FROM  
    Atores
WHERE  
    Genero = 'F'
ORDER BY  
    PrimeiroNome ASC;

-- 10. Buscar o nome do filme e seu gênero
SELECT  
    f.Nome AS Filme,  
    g.Genero AS GeneroFilme  
FROM  
    Filmes AS f  
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme  
INNER JOIN Generos AS g ON fg.IdGenero = g.Id;

-- 11. Buscar o nome do filme e gênero "Mistério"
SELECT  
    f.Nome AS Filme,  
    g.Genero AS GeneroFilme  
FROM  
    Filmes AS f  
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme  
INNER JOIN Generos AS g ON fg.IdGenero = g.Id  
WHERE  
    g.Genero = 'Mistério';

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT  
    f.Nome AS Filme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel  
FROM   
    Filmes AS f  
INNER JOIN ElencoFilme AS ef ON f.Id = ef.IdFilme  
INNER JOIN Atores AS a ON ef.IdAtor = a.Id;
