
--1) Obtener las Películas estrenadas en la Década de los '80.

SELECT * FROM Peliculas 
WHERE FechaEstreno >= '1980' AND FechaEstreno < '1990'

--2) Obtener los Actores nacidos en la Década de los '70.

Select * From Reparto
Where FechaNacimiento >= '1970' AND FechaNacimiento < '1980'

--3) Obtener las Peliculas que se encuentran en la Plataforma de Disney+

Select * From Plataformas --Para conocer ID = 3

Select * From [Peliculas.Plataformas]
Where IdPlataforma = 3

--4) Obtener la Cantidad de Películas con Clasificación R. (Considerar usar el Comando LIKE)

Select * From Clasificaciones --ID 4

Select count(*) 'R' From [Peliculas.Clasificaciones]
Where IdClasificacion = 4

--5) Obtener la Película que mayor duración tiene.

Select Titulo, MinutosDuracion From Peliculas
Where MinutosDuracion = (Select Max(MinutosDuracion) From Peliculas) --Busco la coincidencia

--6) Obtener las Películas de Categoría 'Superhéroes'.

Select * From Categorias --ID 27

Select Titulo From Peliculas
Where Id IN (Select IdPelicula From [Peliculas.Categorias] Where IdCategoria = 27)



