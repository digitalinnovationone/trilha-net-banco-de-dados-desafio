-- 1 - Buscar o nome e ano dos filmes
select 
	Nome,
	Ano	
	from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

Select 
	Nome,
	Ano,
	Duracao
	From Filmes
Order By Ano Asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

Select 
	Nome,
	Ano,
	Duracao	
		From Filmes
	where Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997

Select 
	Nome,
	Ano,
	Duracao
		from Filmes	
			where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

Select 
	Nome,
	Ano,
	Duracao
		from Filmes		
			where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

Select 
	Nome,
	Ano,
	Duracao
		from Filmes	
		where Duracao > 100 And Duracao < 150  
	Order By Duracao Asc

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

Select * from Atores
	where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

Select * from Atores
	where Genero = 'F'
Order By PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

Select Filmes.Nome, Generos.Genero From Filmes
Join FilmesGenero On FilmesGenero.IdFilme = Filmes.Id
Join Generos on Generos.Id = FilmesGenero.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

Select Filmes.Nome, Generos.Genero From Filmes
Join FilmesGenero On FilmesGenero.IdFilme = Filmes.Id
Join Generos on Generos.Id = FilmesGenero.IdGenero
	where Generos.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

Select Nome, PrimeiroNome, UltimoNome,Papel
	from Filmes
join ElencoFilme E On E.IdFilme = Filmes.Id
join Atores On Atores.id = E.IdAtor
