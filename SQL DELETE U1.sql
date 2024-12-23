

--19) El Usuario Homero Simpson hace mucho tiempo que está inactivo. Hay que eliminarlo de la Base de manera física.

Select * From Usuarios --ID 3

Delete From Usuarios Where Id = 3

--20) Realizar una limpieza de las Puntuaciones de las Películas. Eliminar todas las Puntuaciones desde el 2020 hasta el 2023 (inclusive). ¿Se podrá realizar la Consulta?

Select * From [Peliculas.Puntuacion]
Where FechaPuntuacion > '2019-12-31' AND FechaPuntuacion < '2023-12-31'

Delete From [Peliculas.Puntuacion] Where FechaPuntuacion > '2019-12-31' 
AND FechaPuntuacion < '2023-12-31'

--21) Se debe realizar una limpieza de Películas. Hay que eliminar las Películas que se hayan estrenado desde 1980 hasta 1989 (inclusive). ¿Se podrá realizar la Consulta?

Select * From Peliculas
Where FechaEstreno > '1979-12-31' AND FechaEstreno < '1989-12-31'

Delete From Peliculas Where FechaEstreno > '1979-12-31' AND FechaEstreno < '1989-12-31'
