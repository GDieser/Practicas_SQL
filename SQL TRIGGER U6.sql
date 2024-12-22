
--TRIGGER

CREATE TABLE EntrenadoresDetalle(
	Id INT,
	FechaInicio DATE,
	FechaUltimaCaptura DATE,
	IdUltimoPokemonCapturado INT
);

SELECT * FROM EntrenadoresDetalle

--INSERTED
--DELETED
 
CREATE TRIGGER InsertEntrenadorDetalle
ON Entrenadores
AFTER INSERT
AS
BEGIN
	INSERT INTO EntrenadoresDetalle (Id, FechaInicio)
	SELECT Id, GETDATE() FROM inserted
	--VALUES(1, GETDATE())
END

SELECT * FROM Entrenadores

INSERT INTO Entrenadores VALUES
(13, 'Lalo', 'Landa', 'Lola', 
'lalolanda@hotmail.com', 'lalo1234', '1995-01-03')

--Desactivar 

DISABLE TRIGGER InsertEntrenadorDetalle ON Entrenadores

--Activar

ENABLE TRIGGER InsertEntrenadorDetalle ON Entrenadores