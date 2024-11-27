

--19) El Usuario Homero Simpson hace mucho tiempo que est� inactivo. Hay que eliminarlo de la Base de manera f�sica.

Select * From Usuarios --ID 3

Delete From Usuarios Where Id = 3

--20) Realizar una limpieza de las Puntuaciones de las Pel�culas. Eliminar todas las Puntuaciones desde el 2020 hasta el 2023 (inclusive). �Se podr� realizar la Consulta?

Select * From [Peliculas.Puntuacion]
Where FechaPuntuacion > '2019-12-31' AND FechaPuntuacion < '2023-12-31'

Delete From [Peliculas.Puntuacion] Where FechaPuntuacion > '2019-12-31' 
AND FechaPuntuacion < '2023-12-31'

--21) Se debe realizar una limpieza de Pel�culas. Hay que eliminar las Pel�culas que se hayan estrenado desde 1980 hasta 1989 (inclusive). �Se podr� realizar la Consulta?

Select * From Peliculas
Where FechaEstreno > '1979-12-31' AND FechaEstreno < '1989-12-31'

Delete From Peliculas Where FechaEstreno > '1979-12-31' AND FechaEstreno < '1989-12-31'
