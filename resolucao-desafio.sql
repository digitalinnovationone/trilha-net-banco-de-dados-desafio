/* 1 - Buscar o nome e ano dos filmes */
SELECT Nome, Ano FROM Filmes

/* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
/* observação imagem mostra dados da coluna duração */ 
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

/* 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome like 'De volta%'

/* 4 - Buscar os filmes lançados em 1997 */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

/* 5 - Buscar os filmes lançados APÓS o ano 2000 */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
       ordenando pela duracao em ordem crescente */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
       ordenando pela *duracao Quantidade em ordem decrescente */
SELECT Ano, count(*) AS Quantidade 
  FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC


/* 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
/* imagem pede informação coluna Id */
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, 
       UltimoNome, e ordenando pelo PrimeiroNome */
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome 

/* 10 - Buscar o nome do filme e o gênero */ 
SELECT f.Nome, g.Genero FROM Filmes f 
  JOIN FilmesGenero fg ON f.Id = fg.IdFilme
  JOIN Generos g ON g.Id = fg.IdGenero 

SELECT f.Nome, g.Genero 
  FROM Filmes f, Generos g, FilmesGenero fg 
 WHERE f.Id = fg.IdFilme AND fg.IdGenero = g.Id  


/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" */
SELECT f.Nome, g.Genero FROM Filmes f 
  JOIN FilmesGenero fg ON f.Id = fg.IdFilme
  JOIN Generos g ON g.Id = fg.IdGenero 
   AND g.Genero = 'Mistério'


/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel 
  FROM Filmes f 
  JOIN ElencoFilme ef ON ef.IdFilme = f.Id 
  JOIN Atores a ON a.Id = ef.IdAtor
