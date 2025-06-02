--1 - Buscar o nome e ano dos Filmes
select Nome, Ano from Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes order by Ano;

--3 - Buscar pelo filme de "De Volta para o Futuro", trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';

--4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from Filmes where Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from Filmes where Ano > 2000 ORDER BY Ano ASC;

--6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 ORDER BY Duracao ASC;

--7 - Buscar a quantidade de filmes lançados por ano, agrupando por ano, ordenando pela duração em ordem decrescente
select Ano, Count(Ano) as Quantidade from Filmes group by Ano order by MAX(Duracao) desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome e UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero
SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN Generos g ON g.Id = fg.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN Generos g ON g.Id = fg.IdGenero 
WHERE g.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS Filme, 
       a.PrimeiroNome AS PrimeiroNome, 
       a.UltimoNome AS UltimoNome, 
       ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;
