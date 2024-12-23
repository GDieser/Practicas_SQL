

SELECT * FROM Pokemons

SELECT Nombre, ISNULL(IdEvolucion, 0) IdEvolucion FROM Pokemons

SELECT Nombre, CHOOSE(IdTipo, 'Planta', 'Fuego', 'Agua') Tipo FROM Habilidades
WHERE CHOOSE(IdTipo, 'Planta', 'Fuego', 'Agua') IS NOT NULL
ORDER BY Tipo

SELECT Nombre, SUBSTRING(Nombre, 1, 3) FROM Pokemons

SELECT Nombre, CONCAT(SUBSTRING(Nombre, 1, 3) , Numero, Peso) FROM Pokemons

SELECT Nombre, DATEDIFF(YEAR, FechaNacimiento, GETDATE()) AS Edad,
GETDATE() AS FechaActual
From Entrenadores