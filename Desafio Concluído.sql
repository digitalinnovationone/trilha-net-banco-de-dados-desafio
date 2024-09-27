--1) Buscar o nome e o ano dos filmes

SELECT
Nome,Ano
FROM Filmes
ORDER BY Ano ASC;

--2) Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT
Nome,Ano
FROM Filmes

--3) Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração


SELECT* FROM Filmes
WHERE Nome = 'de volta para o futuro'



--4) Buscar os filmes lançados em 1997

SELECT* FROM Filmes
WHERE Ano = 1997


--5) Buscar os filmes lançados APÓS o ano 2000


SELECT* FROM Filmes
WHERE Ano > 2000


--6) Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT* FROM Filmes
WHERE Duracao>100 and Duracao<150
ORDER BY Duracao ASC


--7) Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente


SELECT Ano ,COUNT (Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC;


--8) Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome


SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'


--9) Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY  PrimeiroNome


--10) Buscar o nome do filme e o gênero

SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN Generos G
INNER JOIN FilmesGenero FG ON G.Id = FG.IdGenero ON F.Id = FG.IdFilme


--11) Buscar o nome do filme e o gênero do tipo "Mistério"


SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN Generos G
INNER JOIN FilmesGenero FG
ON G.Id = FG.IdGenero
ON F.Id = FG.IdFilme
WHERE G.Genero = 'Mistério'


--12) Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN Atores A
INNER JOIN ElencoFilme EF
ON A.Id = EF.IdAtor
ON F.Id = EF.IdFilme
