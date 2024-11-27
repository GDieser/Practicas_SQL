
--15) La Película de Rocky dejó de estar disponible en la Plataforma de Paramount+ el 16 de enero del 2024.

Select * From Peliculas --ID 3
Where Titulo LIKE '%Rocky%'

Select * From Plataformas --ID 9

Select * From [Peliculas.Plataformas]
Where IdPlataforma = 9

Update [Peliculas.Plataformas] Set FechaBaja = '2024-01-17' Where IdPlataforma = 9 AND IdPelicula = 3 

--16) Hubo un error al momento de registrar la película de Iron Man. El Protagonista no fue Robert Downey Jr., quién interpretó el papel fue Diego Peretti.

Select * From Peliculas --ID 2
Where Titulo LIKE '%Iron Man%'

Select * From [Peliculas.Reparto] --ID 1
Where IdPelicula = 2

Select Id, Nombre, Apellido From Reparto
Where Id 
IN(Select IdReparto From [Peliculas.Reparto] Where IdPelicula = 2)

Insert Into Reparto Values ('Diego', 'Peretti', 1, '1965-05-10', NULL, 0) --ID 112

Update [Peliculas.Reparto] Set IdReparto = 112 Where IdPelicula = 2 AND id = 11

--17) La Plataforma Tubi TV cambia de firma, dado que cambiará su nombre a MaxiPrograma TV.

Select * From Plataformas --ID 10

Update Plataformas Set Nombre = 'MaxiPrograma TV' Where Id = 10

--18) La Película de Spiderman cambia su Clasificación de PG-13 a 'Apta para todos los Públicos'.

Select * From Peliculas Where Titulo Like '%Spider%' --ID 12
Select * From Clasificaciones
Select * From [Peliculas.Clasificaciones] Where IdPelicula = 12 --ID 3 a 1

Update [Peliculas.Clasificaciones] Set IdClasificacion = 1 Where IdPelicula = 12