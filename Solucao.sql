-- Consulta 1
SELECT
	Nome,
	Ano
FROM
	Filmes

-- Consulta 2 enunciado
SELECT
	Nome,
	Ano
FROM
	Filmes
ORDER BY
	Ano

-- Consulta 2 imagem
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
ORDER BY
	Ano

-- Consulta 3
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Nome = 'De volta para o Futuro'

-- Consulta 4
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Ano = 1997

-- Consulta 5
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Ano > 2000

-- Consulta 6
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Duracao > 100 AND Duracao < 150
ORDER BY
	Duracao

-- Consulta 7
SELECT
	Ano,
	COUNT(*) Quantidade
FROM
	Filmes
GROUP BY
	Ano
ORDER BY
	SUM(Duracao) DESC

-- Consulta 8 enunciado
SELECT
	PrimeiroNome,
	UltimoNome
FROM
	Atores
WHERE
	Genero = 'M'

-- Consulta 8 imagem
SELECT
	*
FROM
	Atores
WHERE
	Genero = 'M'

-- Consulta 9 enunciado
SELECT
	PrimeiroNome,
	UltimoNome
FROM
	Atores
WHERE
	Genero = 'F'

-- Consulta 9 imagem
SELECT
	*
FROM
	Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome

-- Consulta 10
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes F
INNER JOIN
	FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN
	Generos G ON G.Id = FG.IdGenero

-- Consulta 11
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes F
INNER JOIN
	FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN
	Generos G ON G.Id = FG.IdGenero
WHERE
	G.Genero = 'Mistério'

-- Consulta 12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM
	Filmes F
INNER JOIN
	ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN
	Atores A ON A.Id = EF.IdAtor