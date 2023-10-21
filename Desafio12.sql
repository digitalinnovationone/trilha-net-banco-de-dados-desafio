SELECT [FIL].Nome
	,[ATO].PrimeiroNome
	,[ATO].UltimoNome
	,[EF].Papel
  FROM [dbo].[ElencoFilme] AS EF
  INNER JOiN [dbo].[Filmes] AS FIL
  ON FIL.Id = EF.IdFilme
  INNER JOiN [dbo].[Atores] AS ATO
  ON ATO.Id = EF.IdAtor
GO