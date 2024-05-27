--EXERCICIOS

--1 BUSCAR NOME E ANO DOS FILMES
SELECT Nome,ano FROM Filmes

--2 BUSCAR NOME E ANO DOS FILMES,ORDENADOS´POR ORDEM CRESCENTE PELO ANO
SELECT Nome,ano FROM Filmes ORDER BY Ano asc

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o futuro';

--4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7  Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes FROM Filmes GROUP BY Ano
ORDER BY Ano DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10 Buscar o nome do filme e o gênero
SELECT f.Nome AS NomeFilme, g.Genero AS NomeGenero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;


-- 11  Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Fil.Nome AS NomeFilme, Gen.Genero  NomeGenero
FROM Filmes AS Fil
JOIN FilmesGenero AS FG ON Fil.Id = FG.IdFilme
JOIN Generos AS Gen ON FG.IdGenero = Gen.Id
WHERE Gen.Id = 10;

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;


