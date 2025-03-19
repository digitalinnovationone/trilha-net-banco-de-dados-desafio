select filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
from filmes
inner join ElencoFilme on Filmes.id = ElencoFilme.IdFilme
inner join Atores on Atores.id = ElencoFilme.IdAtor