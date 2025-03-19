Select Ano, Count(*) as Quantidade from filmes
GROUP BY Ano
ORDER BY Quantidade desc;