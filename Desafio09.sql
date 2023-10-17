SELECT [Id]
  ,[PrimeiroNome]
  ,[UltimoNome]
  ,[Genero]
  FROM [dbo].[Atores]
  WHERE [Genero] = 'F'
  ORDER BY [PrimeiroNome] ASC
GO