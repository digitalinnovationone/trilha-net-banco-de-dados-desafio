--1 - Buscar o nome e ano dos filmes
select Nome , Ano  from filmes 
go
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome , Ano , Duracao  from filmes order by ano 
go
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome , Ano, Duracao from filmes  where nome = 'De Volta para o Futuro'
go
--4 - Buscar os filmes lançados em 1997
select Nome , Ano, Duracao from filmes  where ano = 1997
go
--5 - Buscar os filmes lançados APÓS o ano 2000
select Nome , Ano, Duracao from filmes  where ano > 2000
go
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome , Ano, Duracao from filmes  where (Duracao > 100 and Duracao < 150) order by Duracao 
go 
-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(Duracao) Quantidade, sum(Duracao) DuracaoTotal from filmes group by ano order by DuracaoTotal desc
go
-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select * from Atores where Genero = 'M'
go
-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * from Atores where Genero = 'F' order by PrimeiroNome
go
--10 - Buscar o nome do filme e o gênero
select Nome, Genero from filmes inner join FilmesGenero on Filmes.id = FilmesGenero.IdFilme 
inner join Generos on FilmesGenero.IdGenero = Generos.id
--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
go
select Nome, Genero from filmes inner join FilmesGenero on Filmes.id = FilmesGenero.IdFilme 
inner join Generos on FilmesGenero.IdGenero = Generos.id where Genero = 'Mistério'
go
--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Nome , PrimeiroNome ,UltimoNome, Papel from Filmes inner join ElencoFilme on Filmes.id = ElencoFilme.IdFilme
inner join Atores on ElencoFilme.IdAtor = Atores.Id
