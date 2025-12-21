-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, ano FROM Filmes
ORDER BY ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, ano, Duracao FROM Filmes
WHERE Nome = 'de volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, ano, Duracao FROM Filmes
WHERE ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, ano, Duracao FROM Filmes
WHERE ano >= 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, ano, duracao FROM Filmes
WHERE duracao >= 100 AND duracao <= 150
ORDER BY duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
    Ano,
    COUNT(*) AS QuantidadeFilmes,
    MAX(Duracao) AS MaiorDuracao
FROM dbo.Filmes
GROUP BY Ano
ORDER BY MaiorDuracao DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT
    F.Nome AS Filme,
    G.Genero
FROM dbo.Filmes F
JOIN dbo.FilmesGenero FG ON FG.IdFilme = F.Id
JOIN dbo.Generos G ON G.Id = FG.IdGenero
ORDER BY F.Nome;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
    F.Nome AS Filme,
    G.Genero
FROM dbo.Filmes F
JOIN dbo.FilmesGenero FG ON FG.IdFilme = F.Id
JOIN dbo.Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
    F.Nome AS Filme,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM dbo.Filmes F
JOIN dbo.ElencoFilme EF ON EF.IdFilme = F.Id
JOIN dbo.Atores A ON A.Id = EF.IdAtor
ORDER BY F.Nome, A.UltimoNome;
