-- 1
select Nome, Ano
from Filmes

-- 2
select Nome, Ano, Duracao
from Filmes
order by Ano

--3
select Nome, Ano, Duracao
from Filmes
where Nome like 'De volta para o futuro'

--4
select Nome, Ano, Duracao
from Filmes
where Ano = 1997

--5
select Nome, Ano, Duracao
from Filmes
where Ano > 2000

--6
select Nome, Ano, Duracao
from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao

--7
select Ano, COUNT(*) Quantidade
from Filmes
group by Ano
order by Quantidade desc

--8
select PrimeiroNome, UltimoNome, Genero
from Atores
where Genero like 'M'

--9
select PrimeiroNome, UltimoNome, Genero
from Atores
where Genero like 'F'
order by PrimeiroNome

--10
select Filmes.Nome Filme, Generos.Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id

--11
select Filmes.Nome Filme, Generos.Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Generos.Genero like 'Mistério'

--12
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from Filmes f
inner join ElencoFilme ef on f.Id = ef.IdFilme
inner join Atores a on ef.IdAtor = a.Id