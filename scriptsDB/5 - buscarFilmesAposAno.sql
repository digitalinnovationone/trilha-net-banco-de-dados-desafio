-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > 2000