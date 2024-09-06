 /* 1 - Buscar o nome e ano dos filmes*/
    SELECT
		Nome,
		Ano
    FROM [Filmes].[dbo].[Filmes]
  /*=============================*/
  /*2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano*/
	SELECT*
	FROM [Filmes].[dbo].[Filmes]
	ORDER BY Ano ASC
   /*=============================*/
   /*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração*/
	SELECT*
    FROM [Filmes].[dbo].[Filmes]
	WHERE Nome = 'De Volta para o Futuro'
   /*=============================*/
    /*4 - Buscar os filmes lançados em 1997*/
	SELECT*
    FROM [Filmes].[dbo].[Filmes]
	WHERE Ano = 1997
   /*=============================*/
   /*5 - Buscar os filmes lançados APÓS o ano 2000*/
	SELECT*
    FROM [Filmes].[dbo].[Filmes]
	WHERE Ano > 2000
   /*=============================*/
   /*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
	SELECT*
    FROM [Filmes].[dbo].[Filmes]
	WHERE Duracao > 100 AND Duracao < 150
	ORDER BY Duracao ASC
   /*=============================*/
   /*7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/
		SELECT Ano,
			COUNT (*) AS Quantidade
		FROM [Filmes].[dbo].[Filmes]
		GROUP BY Ano
		ORDER BY Quantidade DESC; 
		
    /*=============================*/
	/*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
		SELECT
			*
		FROM [Filmes].[dbo].Atores
		WHERE Genero = 'M'
    /*=============================*/
	/*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
		SELECT
			*
		FROM [Filmes].[dbo].Atores
		WHERE Genero = 'F'
		ORDER BY PrimeiroNome
    /*=============================*/
	/*10 - Buscar o nome do filme e o gênero*/
		SELECT 
			 f.Nome,g.Genero 
		FROM [Filmes].[dbo].FilmesGenero
		JOIN[Filmes].[dbo].Filmes as f 
			on IdFilme = f.Id
		JOIN [Filmes].[dbo].Generos as g
			 on IdGenero = g.Id
    /*=============================*/
	/*11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/
		SELECT 
			 f.Nome,g.Genero 
		FROM [Filmes].[dbo].FilmesGenero
		JOIN[Filmes].[dbo].Filmes as f 
			on IdFilme = f.Id
		JOIN [Filmes].[dbo].Generos as g
			 on IdGenero = g.Id
		WHERE Genero = 'Mistério'
    /*=============================*/
	/*12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
		SELECT 
			 f.Nome,a.PrimeiroNome,a.UltimoNome, el.Papel 
		FROM [Filmes].[dbo].ElencoFilme as el
		JOIN[Filmes].[dbo].Filmes as f 
			on IdFilme = f.Id
		JOIN [Filmes].[dbo].Atores as a
			 on IdAtor = a.Id
    /*=============================*/

