/*Query 1*/
SELECT [Nome], [Ano] 
    FROM Filmes;

/*Query 2*/
SELECT [Nome], [Ano], [Duracao] 
    FROM Filmes 
    ORDER BY [Ano];

/*Query 3*/
SELECT [Nome], [Ano], [Duracao] 
    FROM Filmes 
WHERE [Nome] = 'De Volta para o Futuro';

/*Query 4*/
SELECT [Nome], [Ano], [Duracao] 
    FROM Filmes 
WHERE [Ano] = 1997;

/*Query 5*/
SELECT [Nome], [Ano], [Duracao] 
    FROM Filmes 
WHERE [Ano] > 2000;

/*Query 6*/
SELECT [Nome], [Ano], [Duracao] 
    FROM Filmes 
WHERE [Duracao] > 100 AND [Duracao] < 150  
    ORDER BY [Duracao];

/*Query 7*/
SELECT [Ano], COUNT([Ano]) AS Quantidade 
    FROM Filmes 
    GROUP BY [Ano] 
ORDER BY Quantidade DESC;

/*Query 8*/
SELECT [Id], [PrimeiroNome], [UltimoNome], [Genero] 
    FROM Atores 
WHERE [Genero] = 'M';

/*Query 9*/
SELECT [Id], [PrimeiroNome], [UltimoNome], [Genero] 
    FROM Atores 
WHERE [Genero] = 'F' 
    ORDER BY [PrimeiroNome];

/*Query 10*/
SELECT f.[Nome], g.[Genero] 
    FROM Filmes f 
    JOIN FilmesGenero fg ON fg.[IdFilme] = f.[Id] 
    JOIN Generos g ON g.[Id] = fg.[IdGenero];

/*Query 11*/
SELECT f.[Nome], g.[Genero] 
    FROM Filmes f 
    JOIN FilmesGenero fg ON fg.[IdFilme] = f.[Id] 
    JOIN Generos g ON g.[Id] = fg.[IdGenero] 
WHERE g.[Genero] = 'Mistério';

/*Query 12*/
SELECT f.[Nome], a.[PrimeiroNome], a.[UltimoNome], ef.[Papel] 
    FROM Filmes f 
    JOIN ElencoFilme ef ON ef.[IdFilme] = f.[Id] 
    JOIN Atores a ON a.[Id] = ef.[IdAtor];
