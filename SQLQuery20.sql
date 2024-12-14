

SELECT H.Nombre Habilidad, P.Nombre AS Pokemon, COUNT(H.Id) 'Cantidad Pokemons'
FROM Habilidades H
INNER JOIN [Pokemons.Habilidades] PH ON H.Id = PH.IdHabilidad
INNER JOIN Elementos E ON H.IdTipo = E.Id
INNER JOIN Pokemons P ON PH.IdPokemon = P.Id
WHERE Ph.IdPokemon <=20
GROUP BY H.Nombre, P.Nombre


SELECT P.Id, P.Nombre
FROM Habilidades H
INNER JOIN [Pokemons.Habilidades] PH ON H.Id = PH.IdHabilidad
INNER JOIN Elementos E ON H.IdTipo = E.Id
INNER JOIN Pokemons P ON PH.IdPokemon = P.Id
WHERE H.Nombre LIKE 'Arañazo'


SELECT P.Id, P.Nombre,
E.Descripcion AS Tipo,
COUNT(H.Id) AS 'Habilidades Posibles'
FROM Pokemons P
INNER JOIN [Pokemons.Tipos] PT ON P.Id = PT.IdPokemon
INNER JOIN Elementos E ON PT.IdElemento = E.Id
INNER JOIN Habilidades H ON H.IdTipo = E.Id
GROUP BY P.Id, P.Nombre, E.Descripcion

ORDER BY 'Habilidades Posibles' DESC
