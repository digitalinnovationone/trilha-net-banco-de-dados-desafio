SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome,ElencoFilme.Papel
From ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.id = ElencoFilme.IdAtor

