-- 1 - Buscar o nome e ano dos filmes
select FIL.Nome, FIL.Ano from [Filmes] FIL

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select FIL.Nome, FIL.Ano from [Filmes] FIL order by FIL.Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select FIL.Nome, FIL.Ano, FIL.Duracao from [Filmes] FIL where FIL.Nome = 'De volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
select FIL.Nome, FIL.Ano, FIL.Duracao from [Filmes] FIL where FIL.Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select FIL.Nome, FIL.Ano, FIL.Duracao from [Filmes] FIL where FIL.Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select FIL.Nome, FIL.Ano, FIL.Duracao from [Filmes] FIL where FIL.Duracao > 100 and FIL.Duracao < 150 order by FIL.Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select FIL.Ano, Count(*) as Quantidade from [Filmes] FIL group by FIL.Ano ORDER BY Count(*) Desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select ATO.PrimeiroNome, ATO.UltimoNome from [Atores] ATO where ATO.Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select ATO.PrimeiroNome, ATO.UltimoNome from [Atores] ATO where ATO.Genero = 'F' order by ATO.PrimeiroNome

--10 - Buscar o nome do filme e o gênero
select FIL.Nome, GEN.[Genero] from [Filmes] FIL
Inner Join [FilmesGenero] FGN on FIL.Id = FGN.IdFilme
Inner Join [Generos] GEN on FGN.IdGenero = GEN.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select FIL.Nome, GEN.[Genero] from [Filmes] FIL
Inner Join [FilmesGenero] FGN on FIL.Id = FGN.IdFilme
Inner Join [Generos] GEN on FGN.IdGenero = GEN.Id
where GEN.[Genero] = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select FIL.Nome, ATO.PrimeiroNome, ATO.UltimoNome, EFI.Papel from [Filmes] FIL
Inner Join [ElencoFilme] EFI on FIL.Id = EFI.IdFilme
Inner Join [Atores] ATO on EFI.IdAtor = ATO.Id