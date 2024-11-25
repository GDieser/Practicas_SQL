
--1) Obtener las Pel�culas estrenadas en la D�cada de los '80.

SELECT * FROM Peliculas 
WHERE FechaEstreno >= '1980' AND FechaEstreno < '1990'

--2) Obtener los Actores nacidos en la D�cada de los '70.

Select * From Reparto
Where FechaNacimiento >= '1970' AND FechaNacimiento < '1980'

--3) Obtener las Peliculas que se encuentran en la Plataforma de Disney+

Select * From Plataformas --Para conocer ID = 3

Select * From [Peliculas.Plataformas]
Where IdPlataforma = 3

--4) Obtener la Cantidad de Pel�culas con Clasificaci�n R. (Considerar usar el Comando LIKE)

Select * From Clasificaciones --ID 4

Select count(*) 'R' From [Peliculas.Clasificaciones]
Where IdClasificacion = 4

--5) Obtener la Pel�cula que mayor duraci�n tiene.

Select Titulo, MinutosDuracion From Peliculas
Where MinutosDuracion = (Select Max(MinutosDuracion) From Peliculas) --Busco la coincidencia

--6) Obtener las Pel�culas de Categor�a 'Superh�roes'.

Select * From Categorias --ID 27

Select Titulo From Peliculas
Where Id IN (Select IdPelicula From [Peliculas.Categorias] Where IdCategoria = 27)



