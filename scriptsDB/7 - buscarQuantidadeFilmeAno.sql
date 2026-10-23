-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
	Ano, COUNT(*) AS Quantidade 
FROM Filmes 
WHERE Ano IS NOT NULL 
GROUP BY Ano 
ORDER BY Quantidade DESC;