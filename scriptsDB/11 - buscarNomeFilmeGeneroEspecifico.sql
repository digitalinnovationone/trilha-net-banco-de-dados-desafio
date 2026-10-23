-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
    f.Nome,
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério'