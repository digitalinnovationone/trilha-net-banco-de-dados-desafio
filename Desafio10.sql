SELECT 
  [FIL].Nome
  ,[GEN].Genero
  FROM [dbo].[FilmesGenero] AS FG
  INNER JOiN [dbo].[Filmes] AS FIL
  ON FIL.Id = FG.IdFilme
  INNER JOiN [dbo].[Generos] AS GEN
  ON GEN.Id = FG.IdGenero
GO