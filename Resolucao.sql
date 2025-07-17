--- 1
SELECT nome, ano FROM Filmes;

--- 2
SELECT nome, ano FROM Filmes
ORDER BY ano ASC;

--- 3
SELECT nome, ano, duracao FROM Filmes
WHERE nome = 'Volta para o Futuro';

--- 4
SELECT nome, ano FROM Filmes
WHERE ano = 1997;

--- 5
SELECT nome, ano FROM Filmes
WHERE ano > 2000;

--- 6
SELECT nome, duracao FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--- 7
SELECT ano, COUNT(*) AS quantidade_filmes FROM Filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;

--- 8
SELECT primeiro_nome, ultimo_nome FROM Atores
WHERE genero = 'Masculino';

--- 9
SELECT primeiro_nome, ultimo_nome FROM Atores
WHERE genero = 'Feminino'
ORDER BY primeiro_nome ASC;

--- 10
SELECT f.nome AS filme, g.nome AS genero FROM Filmes f
JOIN Generos g ON f.genero_id = g.id;

--- 11
SELECT f.nome AS filme, g.nome AS genero FROM Filmes f
JOIN Generos g ON f.genero_id = g.id
WHERE g.nome = 'Mistério';

---- 12
SELECT f.nome AS filme, a.primeiro_nome, a.ultimo_nome, fa.papel FROM Filmes f
JOIN Filme_Atores fa ON f.id = fa.filme_id
JOIN Atores a ON fa.ator_id = a.id
ORDER BY f.nome, a.ultimo_nome;