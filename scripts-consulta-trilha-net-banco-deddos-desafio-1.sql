-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano 
FROM   Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT   Nome, Ano, Duracao 
FROM     Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM   Filmes
WHERE  Lower(Nome) = 'de volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao
FROM   Filmes
WHERE  Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao
FROM   Filmes
WHERE  Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT   Nome, Ano, Duracao
FROM     Filmes
-- WHERE    Duracao > 100 
-- AND      Duracao < 150
WHERE    Duracao BETWEEN 101 AND 149
ORDER BY Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT   Ano, COUNT(*) AS Quantidade 
FROM     Filmes
GROUP BY Ano
ORDER BY 2 DESC
-- OBS.: Acredito estar errada a palavra duração na solicitação de ordenação, o correto pelo exemplo é pela Quantidade

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT   Id, PrimeiroNome, UltimoNome, Genero 
FROM     Atores
WHERE    Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT   Id, PrimeiroNome, UltimoNome, Genero 
FROM     Atores
WHERE    Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero
SELECT   f.Nome, g.Genero
FROM     Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT   f.Nome, g.Genero
FROM     Filmes f
		 INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
         INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE    g.Id = 10

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT   f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM     Filmes f
		 INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
         INNER JOIN Atores a ON ef.IdAtor = a.Id
