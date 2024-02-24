
/* 1 - Procurar nome e ano dos filmes*/
SELECT Nome,Ano FROM Filmes;


/* 2 - Procurar nome, ano e duracao ado filme ordenando pelo Ano */

SELECT Nome,Ano,Duracao from Filmes	order by Ano;

/*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */

SELECT Nome,Ano,Duracao from Filmes where Nome = 'De volta para o futuro';

/*4 - Buscar os filmes lançados em 1997*/

SELECT * FROM Filmes where ano = 1997;

/*5 - Buscar os filmes lançados APÓS o ano 2000*/

SELECT * FROM Filmes where ano > 2000

/*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/

SELECT * FROM Filmes where Duracao > 100 and Duracao < 150;

/*7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/

SELECT COUNT(1) as Quantidade,Ano from Filmes 
group by ano
order by Quantidade DESC;

/*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */

SELECT PrimeiroNome as 'Primeiro Nome',UltimoNome as'Ultimo Nome',Genero FROM Atores where Genero = 'M';

/*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/

SELECT PrimeiroNome as 'Primeiro Nome',UltimoNome as'Ultimo Nome',Genero FROM Atores where Genero = 'F';

/*10 - Buscar o nome do filme e o gênero*/

SELECT Nome,Gen.Genero FROM Filmes Fil 
JOIN FilmesGenero Filg on FIL.id = FILG.IdFilme 
JOIN  Generos Gen on filg.IdGenero = Gen.Id;

/*11 - 11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/

SELECT Nome,Gen.Genero FROM Filmes Fil 
JOIN FilmesGenero Filg on FIL.id = FILG.IdFilme 
JOIN  Generos Gen on filg.IdGenero = Gen.Id WHERE gen.Genero = 'Mistério';

/*12 - Buscar o nome do filme e os atores, trazendo o Primeiro Nome, Ultimo Nome e seu Papel*/

SELECT Filmes.Nome,Atores.PrimeiroNome as 'Primeiro Nome',Atores.UltimoNome as 'Ultimo Nome',ElenFilme.Papel as 'Papel' 
FROM Filmes 
JOIN ElencoFilme ElenFilme on ElenFilme.IdFilme = Filmes.Id 
JOIN Atores on ElenFilme.IdAtor = Atores.Id;
