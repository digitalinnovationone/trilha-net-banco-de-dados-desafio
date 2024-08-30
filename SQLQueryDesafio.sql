-- 1 - Buscar o nome e ano dos filmes
select filmes.Nome, filmes.Ano from dbo.Filmes filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select filmes.Nome, filmes.Ano, filmes.Duracao from dbo.Filmes filmes
order by filmes.Ano asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select filmes.Nome, filmes.Ano, filmes.Duracao from dbo.Filmes filmes
where filmes.Nome = 'de volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997
select filmes.Nome, filmes.Ano, filmes.Duracao from dbo.Filmes filmes
where filmes.Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select filmes.Nome, filmes.Ano, filmes.Duracao from dbo.Filmes filmes
where filmes.Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select filmes.Nome, filmes.Ano, filmes.Duracao from dbo.Filmes filmes
where filmes.Duracao > 100 and filmes.Duracao < 150
order by filmes.Duracao asc

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
filmes.Ano,
COUNT(*) as Qtd FROM dbo.Filmes filmes
GROUP BY Ano
order by Qtd desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT a.PrimeiroNome, a.UltimoNome, a.Genero from dbo.Atores a
where a.Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT a.PrimeiroNome, a.UltimoNome, a.Genero from dbo.Atores a
where a.Genero = 'F'
order by a.PrimeiroNome asc

-- 10 - Buscar o nome do filme e o gênero
select f.Nome, g.Genero from dbo.Filmes f
inner join dbo.FilmesGenero fg on fg.IdFilme = f.Id
inner join dbo.Generos g on g.Id = fg.IdGenero 

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome, g.Genero from dbo.Filmes f
inner join dbo.FilmesGenero fg on fg.IdFilme = f.Id
inner join dbo.Generos g on g.Id = fg.IdGenero 
where g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, elenc.Papel from dbo.Filmes f
inner join dbo.ElencoFilme elenc on elenc.IdFilme = f.Id
inner join dbo.Atores a on a.Id = elenc.IdAtor