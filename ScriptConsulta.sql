-- consulta 1
SELECT nome, ano
FROM filmes;

-- consulta 2
SELECT nome, ano
FROM filmes
ORDER BY ano ASC;

-- consulta 3
SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

--consulta 4
SELECT nome, ano
FROM filmes
WHERE ano = 1997;

--consulta 5
SELECT nome, ano
FROM filmes
WHERE ano > 2000;

--consulta 6
SELECT nome, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--consulta 7
SELECT ano, COUNT(*)
FROM filmes
GROUP BY ano
ORDER BY ano DESC;

--consulta 8
SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'M';

--consulta 9
SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;

--consulta 10
SELECT nome, genero
FROM filmes
JOIN generos ON filmes.genero_id = generos.id;

--consulta 11
SELECT nome, genero
FROM filmes
JOIN generos ON filmes.genero_id = generos.id
WHERE genero = 'Mistério';

--consulta 12
SELECT nome, PrimeiroNome, UltimoNome, papel
FROM filmes
JOIN atores_filmes ON filmes.id = atores_filmes.filme_id
JOIN atores ON atores_filmes.ator_id = atores.id;


