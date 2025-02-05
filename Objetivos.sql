-- 1
SELECT Nome, Ano FROM Filmes

-- 2

SELECT Nome, Ano, Duracao
FROM Filmes Order by Ano

-- 3

SELECT Nome, Ano, Duracao FROM Filmes where Nome = 'De Volta para o Futuro'

-- 4 

SELECT Nome, Ano, Duracao FROM Filmes where Ano = 1997

-- 5 

SELECT Nome, Ano, Duracao FROM Filmes where Ano > 2000

-- 6


SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE 150 > Duracao AND  Duracao > 100 
Order by Duracao

-- 7

SELECT Ano, COUNT(*) AS quantidade
 FROM Filmes GROUP BY Ano ORDER BY quantidade DESC
 

 -- 8

 SELECT * FROM Atores WHERE Genero = 'M'

 -- 9
 
 SELECT * FROM Atores 
 WHERE Genero = 'F' 
 ORDER BY PrimeiroNome

 -- 10

SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos  ON FilmesGenero.IdGenero = Generos.Id;

-- 11


SELECT Filmes.Nome AS Nome,Generos.Genero AS Genero 
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos  ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mist�rio';


-- 12

SELECT Filmes.Nome AS Filme,
Atores.PrimeiroNome AS PrimeiroNome,
Atores.UltimoNome AS UltimoNome,
ElencoFilme.Papel AS Papel
FROM Filmes 
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores  ON ElencoFilme.IdAtor = Atores.Id;
