use Filmes;
-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE'%De Volta para o Futuro%';

-- 4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes 
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 and 
      Duracao < 150 
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade -- RESULTADO SEGUNDO O ENUNCIADO 
FROM Filmes
GROUP BY Ano, Duracao
ORDER BY Duracao DESC;

SELECT Ano, COUNT(*) AS Quantidade -- RESULTADO SEGUNDO A IMAGEM
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome,UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero
FROM Filmes F 
INNER JOIN FilmesGenero FG ON(FG.IdFilme = F.Id)
INNER JOIN Generos G ON(G.Id = FG.IdGenero) 

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero
FROM Filmes F 
INNER JOIN FilmesGenero FG ON(FG.IdFilme = F.Id)
INNER JOIN Generos G ON(G.Id = FG.IdGenero) 
WHERE G.Genero LIKE'%Mistério%'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel 
FROM Atores A
INNER JOIN ElencoFilme E ON(E.IdAtor = A.Id)
INNER JOIN Filmes F ON(F.Id = E.IdFilme)
