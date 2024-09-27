-- ETAPA 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- ETAPA 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- ETAPA 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- ETAPA 4
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- ETAPA 5
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

-- ETAPA 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- ETAPA 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- ETAPA 8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

-- ETAPA 9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;

-- ETAPA 10
SELECT f.Nome AS Filme, g.Nome AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.FilmeID = fg.FilmeID
JOIN Generos g ON fg.GeneroID = g.GeneroID;

-- ETAPA 11
SELECT f.Nome AS Filme, g.Nome AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.FilmeID = fg.FilmeID
JOIN Generos g ON fg.GeneroID = g.GeneroID
WHERE g.Nome = 'Mistério';

-- ETAPA 12
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.FilmeID = ef.FilmeID
JOIN Atores a ON ef.AtorID = a.AtorID;


