--1
select f.Nome, f.Ano from filmes f

--2
select f.Nome, f.Ano from Filmes f order by ano ASC

--3
select f.Nome, f.Ano, f.Duracao from Filmes f where f.Nome = 'De Volta para o Futuro'

--4
select * from Filmes f where f.Ano = 1997

--5
select * from Filmes f where f.Ano > 2000

--6
select f.Nome, f.Ano, f.Duracao from Filmes f where f.Duracao > 100 and f.Duracao < 150 order by f.Duracao ASC

--7
select f.Ano, COUNT(f.Ano) as Quantidade
from Filmes f 
group by f.Ano
order by count(f.Duracao) desc

--8 
select a.PrimeiroNome, a.UltimoNome from Atores a where a.Genero = 'M'

--9
select a.PrimeiroNome, a.UltimoNome from Atores a where a.Genero = 'F' order by a.PrimeiroNome

--10
select 
f.Nome, g.Genero
from Filmes f
inner join FilmesGenero fg on (fg.IdFilme = f.Id)
inner join Generos g on (g.Id = fg.IdGenero)

--11
select 
f.Nome, g.Genero
from Filmes f
inner join FilmesGenero fg on (fg.IdFilme = f.Id)
inner join Generos g on (g.Id = fg.IdGenero)
where g.Genero = 'Mistério'

--12
select 
f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from Filmes f
inner join ElencoFilme ef on (ef.IdFilme = f.Id)
inner join Atores a on (a.Id = ef.IdAtor)