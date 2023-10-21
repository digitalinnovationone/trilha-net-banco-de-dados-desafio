SELECT [Nome]
      ,[Ano]
      ,[Duracao]
  FROM [dbo].[Filmes]
  WHERE [Duracao] > 100 AND [Duracao] < 150
  ORDER BY [Duracao] ASC
GO