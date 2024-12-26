
--FUNCIONES

ALTER FUNCTION Saludar(@Nombre VARCHAR(50))
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @saludo VARCHAR(50);
	SET @saludo = CONCAT('HOLA ', @Nombre);
	RETURN @saludo
END

SELECT dbo.Saludar(Nombre) as Saludo FROM Pokemons