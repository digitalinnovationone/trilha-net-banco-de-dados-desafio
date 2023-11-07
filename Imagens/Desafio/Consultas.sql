--1 - Buscar o nome e ano dos filmes
select nome, ano  from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, ano from filmes order by ano asc

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from filmes where Nome = 'de volta para o futuro'

--4 - Buscar os filmes lançados em 1997
select * from filmes  where Ano = '1997'

--5 - Buscar os filmes lançados APÓS o ano 2000
select * from filmes where ano > '2000' order by Ano desc

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from filmes where Duracao >100 and Duracao <150 order by Duracao asc

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano,count(1) quantidade  from filmes group by ano order by quantidade desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select * from Atores where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * from Atores where Genero = 'F' order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
