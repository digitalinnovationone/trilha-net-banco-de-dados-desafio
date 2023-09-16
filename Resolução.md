<div align="center">
    <h1>
    Resolução do desafio: trilha-net-banco-de-dados-desafio
    </h1>
</div>
<div align="center">
    <table border="3" bordercolor ="white">
    <tr>
        <td>
            Resolução 1 - Buscar o nome e ano dos filmes
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome, Ano FROM filmes.filmes
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome, Ano, Duracao FROM filmes.filmes ORDER BY Ano
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome, Ano, Duracao FROM filmes.filmes WHERE (Nome = "De volta para o futuro")
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 4 - Buscar os filmes lançados em 1997
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome, Ano, Duracao FROM filmes.filmes WHERE(Ano = 1997)
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 5 - Buscar os filmes lançados APÓS o ano 2000
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome, Ano, Duracao FROM filmes.filmes WHERE(Ano > 2000)
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome, Ano, Duracao FROM filmes.filmes WHERE ( Duracao > 100 AND Duracao < 150) ORDER BY Duracao
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Ano, count(Duracao) Quantidade FROM filmes.filmes GROUP BY Ano ORDER BY Quantidade desc;
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT PrimeiroNome, UltimoNome FROM atores WHERE ( atores.Genero = "M")
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT PrimeiroNome, UltimoNome FROM atores WHERE ( atores.Genero = "F") ORDER BY PrimeiroNome
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 10 - Buscar o nome do filme e o gênero
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome,Genero FROM filmes INNER JOIN filmesgenero INNER JOIN generos ON filmesgenero.IdFilme = filmes.Id AND filmesgenero.IdGenero = generos.Id
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome,Genero FROM filmes INNER JOIN filmesgenero INNER JOIN generos ON filmesgenero.IdFilme = filmes.Id AND filmesgenero.IdGenero = generos.Id WHERE generos.Genero = "Mistério"
                </b>
            </span>
        <p>
        </td>
    </tr>
    <tr>
        <td>
            Resolução 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
        </td>
        <td>
            <span>
                Comando : 
            </span>
            <span style="color:blue">
                <b>
                    SELECT Nome,atores.PrimeiroNome,atores.UltimoNome,elencofilme.Papel FROM filmes INNER JOIN filmes.atores INNER JOIN filmes.elencofilme ON filmes.Id = elencofilme.IdFilme AND elencofilme.IdAtor = atores.Id
                </b>
            </span>
        <p>
        </td>
    </tr>
    </table>
</div>