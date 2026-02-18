select * from Filmes;

--1 Buscar o nome e ano dos filmes
select Nome, Ano from Filmes;


--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select Nome, Ano from Filmes order by Ano ASC;

--3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select Nome, Ano, Duracao from Filmes where upper(Nome) = 'DE VOLTA PARA O FUTURO';

--4 Buscar os filmes lançados em 1997

select Nome, Ano, Duracao from Filmes where Ano = '1997';

--5 Buscar os filmes lançados APÓS o ano 2000

select Nome, Ano, Duracao from Filmes where Ano > '2000';

--6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao ASC;

--7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, COUNT(*) AS Quantidade from Filmes group by Ano order by Quantidade DESC 

-- essa é a unica forma de deixar condizente com a imagem do desafio


--8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from Atores Where Genero = 'M';

--9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome from Atores Where Genero = 'F' order by PrimeiroNome;

--10 Buscar o nome do filme e o gênero

Select Filmes.Nome AS NomeFilme, Generos.Genero AS GeneroFilmes 
from Filmes 
INNER JOIN FilmesGenero On FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos On Generos.id = FilmesGenero.IdGenero;



--11  Buscar o nome do filme e o gênero do tipo "Mistério"

Select Filmes.Nome AS NomeFilme, Generos.Genero AS GeneroFilmes 
from Filmes 
INNER JOIN FilmesGenero On FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos On Generos.id = FilmesGenero.IdGenero
WHERE upper(Generos.Genero) = 'MISTÉRIO';


--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select Filmes.Nome AS NomeFilme, Atores.PrimeiroNome AS PrimeiroNome, Atores.UltimoNome AS UltimoNome, ElencoFilme.Papel AS Papel
from Filmes
INNER JOIN ElencoFilme On ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores On Atores.Id = ElencoFilme.IdAtor;

