
--Subconsultas

SELECT * FROM  Pokemons WHERE Id IN
	(SELECT IdPokemon FROM  [Entrenadores.Pokemons]) 


SELECT Id, Nombre,
(SELECT Descripcion FROM Elementos E WHERE E.Id = H.IdTipo) AS Tipo
FROM Habilidades H WHERE H.Id IN
	(SELECT IdHabilidad FROM [Pokemons.Habilidades] WHERE IdPokemon <= 20)
ORDER BY Tipo DESC

SELECT Nombre FROM Entrenadores E WHERE E.Id IN
	(SELECT IdEntrenador FROM [Entrenadores.Pokemons] WHERE IdPokemon IN
		(SELECT IdPokemon FROM [Pokemons.Tipos] WHERE IdElemento IN
			(SELECT Id FROM Elementos WHERE Descripcion LIKE 'Planta')
		)
	)