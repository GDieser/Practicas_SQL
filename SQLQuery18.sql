

SELECT P.Nombre, H.Nombre FROM Pokemons P
INNER JOIN [Pokemons.Habilidades] PH ON P.Id = PH.IdPokemon
INNER JOIN Habilidades H ON PH.IdHabilidad = H.Id
WHERE P.Id < 10

SELECT DISTINCT H.Nombre, E.Descripcion AS Tipo FROM Habilidades H
INNER JOIN [Pokemons.Habilidades] PH ON H.Id = PH.IdHabilidad
INNER JOIN Elementos E ON H.IdTipo = E.Id
WHERE Ph.IdPokemon <=20

SELECT DISTINCT H.Id, 
H.Nombre, 
CASE WHEN E.Descripcion = 'Planta' THEN N'🍃 Planta' 
WHEN E.Descripcion = 'Agua' THEN N'💧 Agua' 
WHEN E.Descripcion = 'Electrico' THEN N'⚡ Electrico' 
ELSE E.Descripcion END AS Tipo
FROM Habilidades H
INNER JOIN [Pokemons.Habilidades] PH ON H.Id = PH.IdHabilidad
INNER JOIN Elementos E ON H.IdTipo = E.Id
WHERE Ph.IdPokemon <=20
ORDER BY Tipo DESC

SELECT DISTINCT H.Id, 
H.Nombre, 
CASE WHEN E.Descripcion = 'Planta' THEN '🍃 Planta' 
WHEN E.Descripcion = 'Agua' THEN '💧 Agua' 
WHEN E.Descripcion = 'Electrico' THEN '⚡ Electrico' COLLATE Latin1_General_100_CS_AI_SC_UTF8
ELSE E.Descripcion END AS Tipo
FROM Habilidades H
INNER JOIN [Pokemons.Habilidades] PH ON H.Id = PH.IdHabilidad
INNER JOIN Elementos E ON H.IdTipo = E.Id
WHERE Ph.IdPokemon <=20
ORDER BY Tipo DESC