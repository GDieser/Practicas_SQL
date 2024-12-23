

--CREATE PROCEDURE  AsociarPokemon
ALTER PROCEDURE  AsociarPokemon
@IdEntrenador INT,
@IdPokemon INT,
@Nombre VARCHAR(50)
AS
DECLARE @IdNuevo INT;
DECLARE @CantidadPokemons INT;
--SELECT * FROM [Entrenadores.Pokemons]
--IF ---> CONDICION
SELECT @IdNuevo = MAX(Id)+1 FROM [Entrenadores.Pokemons]
SELECT @CantidadPokemons = COUNT(IdEntrenador) FROM [Entrenadores.Pokemons] WHERE IdEntrenador = @IdEntrenador
IF @CantidadPokemons <= 5
BEGIN
	IF EXISTS (SELECT Id FROM Entrenadores WHERE Id = @IdEntrenador)
	BEGIN
		INSERT INTO [Entrenadores.Pokemons]
		VALUES (@IdNuevo, @IdEntrenador, @IdPokemon, @Nombre)
	END
	ELSE
	BEGIN
		PRINT('Entrenador no existe')
	END
END
ELSE
BEGIN
	PRINT('Entrenador tiene mas de 5 pokemons')
END