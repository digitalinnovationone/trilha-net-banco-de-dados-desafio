--1 - Buscar o nome e ano dos filmes
select nome, ano
from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano
from Filmes
order by ano asc

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao
from Filmes
where nome = 'de volta para o futuro'

--4 - Buscar os filmes lançados em 1997
select nome, ano, duracao from Filmes where ano like '1997'

--5 - Buscar os filmes lançados APÓS o ano 2000
select nome, ano, duracao from Filmes where ano like '200%'

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, ano, duracao 
from Filmes 
where Duracao > 100 and Duracao < 150
order by Duracao asc

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Id, PrimeiroNome, UltimoNome, Genero
from Atores
where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select Id, PrimeiroNome, UltimoNome, Genero
from Atores
where Genero = 'F'
order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
select Nome, Genero
from Filmes f 
inner join FilmesGenero fg on fg.IdFilme = f.Id 
inner join Generos g on g.Id = fg.IdGenero

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
select Nome, Genero
from Filmes f 
inner join FilmesGenero fg on fg.IdFilme = f.Id 
inner join Generos g on g.Id = fg.IdGenero	
where Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Nome, PrimeiroNome, UltimoNome, Papel
from Filmes f
inner join ElencoFilme ef on f.Id = ef.IdFilme
inner join Atores a on a.Id = ef.IdAtor