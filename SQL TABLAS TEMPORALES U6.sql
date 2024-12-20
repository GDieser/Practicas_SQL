
--TABLAS TEMPORALES 
--con # 
CREATE TABLE #ElementosTemporal(
	IdTemporal INT,
	DescTemportal VARCHAR(50)
);

INSERT INTO #ElementosTemporal (IdTemporal, DescTemportal)
SELECT Id, Descripcion FROM Elementos WHERE Id > 10 AND Id < 20

SELECT * FROM #ElementosTemporal

--ELIMINAR LA TABLA
DROP TABLE #ElementosTemporal