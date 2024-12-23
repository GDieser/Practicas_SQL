Use MundoPokemon_DB2

GO

Create Table [Entrenadores.Pokemons](
	Id int Primary Key,
	IdEntrenador int,
	IdPokemon int,
	Nombre varchar(50),
	Constraint FK_PokeEntreadorPokemon_Entrenador Foreign Key (IdEntrenador) References Entrenadores (Id),
	Constraint FK_PokeEntrenadorPokemon_Pokemon Foreign Key (IdPokemon) References Pokemons (Id)
);

Create Table [Evoluciones.Variable](
	Id int Primary Key,
	IdEvolucion int,
	IdPokemon int,
	Constraint FK_PokeEvolucionVariable_Pokemon Foreign Key (IdPokemon) References Pokemons (Id)
);

Create Table [Pokemons.Tipos](
	Id int Primary Key,
	IdPokemon int,
	IdElemento int,
	Constraint FK_PokePokemonTipo_Pokemon Foreign Key (IdPokemon) References Pokemons (Id),
	Constraint FK_PokePokemonTipo_Elemento Foreign Key (IdElemento) References Elementos (Id)
);

Create Table [Entrenadores.Medallas](
	Id int Primary Key,
	IdEntrenador int,
	IdMedalla int,
	FechaObtencion date,
	Constraint FK_PokeEntrenadorMedalla_Entrenador Foreign Key (IdEntrenador) References Entrenadores (Id),
	Constraint FK_PokeEntrenadorMedalla_Medalla Foreign Key (IdMedalla) References Medallas (Id)
);
