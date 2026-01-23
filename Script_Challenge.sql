/* 1 - Buscar o nome e ano dos filmes */
select Nome, Ano from Filmes;

/* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
select Nome, Ano from Filmes order by Ano asc;

/* 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
select Nome, Ano, Duracao from Filmes where Nome LIKE '%De volta para o futuro%';

/* 4 - Buscar os filmes lançados em 1997  */
select * from Filmes where Ano = 1997;

/* 5 - Buscar os filmes lançados APÓS o ano 2000 */
select * from Filmes where Ano > 2000;

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao asc;

/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
select Ano, count(*) as quantidade, max(Duracao) as maior_duracao from Filmes group by Ano order by maior_duracao desc;

/* 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
select PrimeiroNome, UltimoNome from Atores where Genero = 'M';

/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome;

/* 10 - Buscar o nome do filme e o gênero */
select F.Nome as NomeFilme, G.Genero as Genero from Filmes F inner join FilmesGenero FG on FG.IdFilme = F.Id inner join Generos G on G.Id = FG.IdGenero order by F.Nome;

/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" */
select F.Nome as NomeFilme, G.Genero as Genero from Filmes F inner join FilmesGenero FG on FG.IdFilme = F.Id inner join Generos G on G.Id = FG.IdGenero where G.Genero = 'Mistério';

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
select F.Nome as NomeFilme, A.PrimeiroNome, A.UltimoNome, E.Papel from Filmes F inner join ElencoFilme E on E.IdFilme = F.Id inner join Atores A on A.Id = E.IdAtor;