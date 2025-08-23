SELECT 
    [Nome],
    [Ano] 
FROM [dbo].[Filmes];

SELECT 
    [Nome],
    [Ano],
    [Duracao] 
FROM [dbo].[Filmes] 
ORDER BY [Ano] ASC;

SELECT 
    [Nome], 
    [Ano],
    [Duracao] 
FROM [dbo].[Filmes] 
WHERE [Nome] = 'De Volta para o Futuro';

SELECT 
    [Nome], 
    [Ano],
    [Duracao] 
FROM [dbo].[Filmes] 
WHERE [Ano] = 1997;

SELECT 
    [Nome],
    [Ano],
    [Duracao] 
FROM [dbo].[Filmes] 
WHERE [Ano] > 2000;

SELECT 
    [Nome], 
    [Ano],
    [Duracao] 
FROM [dbo].[Filmes] 
WHERE [Duracao] > 100 
  AND [Duracao] < 150 
ORDER BY [Duracao] ASC;

SELECT 
    [Ano], 
    COUNT(*) AS [Quantidade]
FROM [dbo].[Filmes]
GROUP BY [Ano]
ORDER BY [Quantidade] DESC;

SELECT 
    [Id], 
    [PrimeiroNome], 
    [UltimoNome], 
    [Genero]
FROM [dbo].[Atores] 
WHERE [Genero] = 'M';

SELECT 
    [Id], 
    [PrimeiroNome], 
    [UltimoNome], 
    [Genero]
FROM [dbo].[Atores] 
WHERE [Genero] = 'F'
ORDER BY [PrimeiroNome];

SELECT 
    f.[Nome], 
    g.[Genero]
FROM [dbo].[FilmesGenero] fg
INNER JOIN [dbo].[Generos] g ON fg.[IdGenero] = g.[Id]
INNER JOIN [dbo].[Filmes] f ON fg.[IdFilme] = f.[Id];

SELECT 
    f.[Nome],
    g.[Genero]
FROM [dbo].[FilmesGenero] fg
INNER JOIN [dbo].[Filmes] f ON fg.[IdFilme] = f.[Id]
INNER JOIN [dbo].[Generos] g ON fg.[IdGenero] = g.[Id]
WHERE g.[Genero] = 'Mistério';

SELECT 
    f.[Nome],
    a.[PrimeiroNome],
    a.[UltimoNome],
    e.[Papel]
FROM [dbo].[Filmes] f
INNER JOIN [dbo].[ElencoFilme] e ON f.[Id] = e.[IdFilme]
INNER JOIN [dbo].[Atores] a ON e.[IdAtor] = a.[Id];
