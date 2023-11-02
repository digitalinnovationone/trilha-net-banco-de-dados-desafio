SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON  Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.Id = Generos.Id
