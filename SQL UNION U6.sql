
--lOS NOMBRES LOS TOMA DE LA PRIMER CONSULTA
SELECT COUNT(Id) FROM
	(SELECT Id, Descripcion FROM Elementos
	UNION 
	SELECT Id, Nombre FROM Medallas) AS Resultado

--EL ORDER BY LO TEMA DE LA ULTIMA 

--SELECT COUNT(NOMBRE) FROM
SELECT Nombre FROM Entrenadores
UNION ALL
SELECT Nombre FROM MaxiFlix_DB.dbo.Reparto --AS Reparto
ORDER BY Nombre ASC

SELECT * FROM Entrenadores WHERE Email LIKE '%Me%'
UNION
SELECT * FROM Entrenadores WHERE Apellido LIKE ''