
--7) Obtener la Cantidad de Actores que trabajaron en la Película 'Los Intocables'.

Select count(IdReparto) 'Cantidad' 
From [Peliculas.Reparto]
Where IdPelicula 
IN (Select Id From Peliculas Where Titulo = 'Los intocables')

--8) Obtener los Actores que trabajaron en la Películas 'Los Intocables'.

Select Nombre, Apellido From Reparto
Where Id 
IN (Select IdReparto From [Peliculas.Reparto] Where IdPelicula 
IN (Select Id From Peliculas Where Titulo = 'Los intocables'))

--9) Obtener el Total de Películas del Catálogo.

Select count(*) 'Cantidad de Peliculas' From Peliculas

--10) Obtener la Lista de Usuarios Inactivos.

Select Nombre, Apellido From Usuarios
Where Activo = 0
