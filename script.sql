Use Filmes

--1)
Select Nome, Ano from Filmes
--2)
Select Nome, Ano, Duracao from Filmes Order By Ano
--3)
Select Nome, Ano, Duracao from Filmes Where Nome like 'De Volta para o Futuro'
--4)
Select Nome, Ano, Duracao from Filmes Where Ano = 1997
--5)
Select Nome, Ano, Duracao from Filmes Where Ano > 2000
--6)
Select Nome, Ano, Duracao from Filmes Where Duracao > 100 And Duracao < 150 Order By Duracao
--7)
Select Ano, COUNT(*) as Quantidade from Filmes Group By Ano Order By Quantidade DESC
--8)
Select * from Atores Where Genero = 'M';
--9)
Select * from Atores Where Genero = 'F' Order By PrimeiroNome;
--10)
Select 
	  filme.Nome, 
	  gen.Genero 
	   
	  from Filmes filme

	  Inner Join
	  FilmesGenero filmegen on
	  filme.Id = filmegen.IdFilme

	  Inner Join
	  Generos gen on
	  filmegen.IdGenero = gen.Id
--11)
Select 
	  filme.Nome, 
	  gen.Genero 
	   
	  from Filmes filme

	  Inner Join
	  FilmesGenero filmegen on
	  filme.Id = filmegen.IdFilme

	  Inner Join
	  Generos gen on
	  filmegen.IdGenero = gen.Id

	  Where 
	  gen.Genero = 'Mistério';
--12)
Select
	filme.Nome,
	ator.PrimeiroNome,
	ator.UltimoNome,
	elenco.Papel

	from Filmes filme

	Inner Join
	ElencoFilme elenco on
	filme.Id = elenco.IdFilme

	Inner Join
	Atores ator on
	elenco.IdAtor = ator.Id
