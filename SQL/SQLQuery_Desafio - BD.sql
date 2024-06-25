
  --Desafio de Consultas

     USE Filmes;

  -- Desafio 1 - Buscar nome e ano
     SELECT Nome, Ano FROM FILMES;
 
  -- Desafio 2 - Buscar nome e ano
     SELECT Nome, Ano, Duracao FROM FILMES ORDER BY Ano ASC;

  -- Desafio 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
     SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro';

  -- Desafio 4 - Buscar os filmes lançados em 1997
     SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

  -- Desafio 5 - Buscar os filmes lançados APÓS o ano 2000
     SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

  -- Desafio 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
     SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

  -- Desafio 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
     SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

  -- Desafio 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
     SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

  -- Desafio 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
     SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;

  -- Desafio 10 - Buscar o nome do filme e o gênero
     SELECT Nome, Genero FROM Filmes INNER JOIN Generos ON Filmes.Id = Generos.Id;

  -- Desafio 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
     SELECT Nome, Genero FROM Filmes INNER JOIN Generos ON Filmes.Id = Generos.Id WHERE Genero = 'Mistério';

  -- Desafio 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
	 SELECT Nome, PrimeiroNome, UltimoNome, Papel 
     FROM ElencoFilme 
	 INNER JOIN 
     Filmes ON ElencoFilme.IdFilme = Filmes.Id 
	 INNER JOIN 
     Atores ON ElencoFilme.IdAtor = Atores.Id;
