
--- trilha-net-banco-de-dados-desafio (DIO) ---

select * from Atores
select * from ElencoFilme
select * from Filmes
select * from FilmesGenero
select * from Generos


-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes


-- 2 - Buscar o nome e ano dos filmes e duracão, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes order by Ano asc


-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes where Nome='De Volta para o Futuro'


-- 4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from Filmes where Ano = 1997


-- 5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from Filmes where Ano > 2000


-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes where duracao > 100 AND duracao < 150 order by duracao asc


-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) Quantidade from Filmes group by Ano order by SUM(duracao) desc


-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome, Gênero
select id, PrimeiroNome, UltimoNome, Genero from Atores where genero = 'M'


-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome 
select id, PrimeiroNome, UltimoNome, Genero from Atores where genero ='F' order by PrimeiroNome


-- 10 - Buscar o nome do filme e o gênero
SELECT a.Nome as NomeFilme, b.Genero as Gênero from Filmes a INNER JOIN FilmesGenero c ON a.Id = c.IdFilme INNER JOIN Generos b ON c.IdGenero = b.Id;


--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select a.Nome, b.Genero from Filmes a INNER JOIN FilmesGenero c ON c.IdFilme = a.Id INNER JOIN Generos b ON c.IdGenero = b.Id where  genero ='Mistério'


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select a.Nome ,b.PrimeiroNome, b.UltimoNome, c.Papel from Filmes as a INNER JOIN  ElencoFilme c ON c.IdFilme = a.Id INNER JOIN Atores b ON c.IdAtor = b.Id 