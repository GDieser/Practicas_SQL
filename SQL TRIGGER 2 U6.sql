
--TRIGGERS 

SELECT * FROM EntrenadoresDetalle 

SELECT * FROM [Entrenadores.Pokemons]

EXEC AsociarPokemon 13, 4, 'LALO'

CREATE TRIGGER ActualizarDetalleEntrenador
ON [Entrenadores.Pokemons]
AFTER INSERT
AS
BEGIN
	UPDATE EntrenadoresDetalle 
	SET IdUltimoPokemonCapturado = (SELECT IdPokemon FROM inserted),
	FechaUltimaCaptura = GETDATE()
	WHERE Id = (SELECT IdEntrenador FROM inserted)
END
