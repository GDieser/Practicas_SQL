
Alter Table Pokemons
Add Constraint PK_Pokemon Primary Key (Id)


Alter Table [Pokemons.Habilidades]
Add Constraint FK_PokeHabilidad_Pokemon Foreign Key (IdPokemon) References Pokemons (Id);


Alter Table Entrenadores
Add Constraint PK_Entrenador Primary Key (Id);


Alter Table Gimanasios
Add Constraint FK_PokeGimnasio_Entrenador Foreign Key (IdEntrenador) References Entrenadores (Id);


Alter Table [Pokemons.Debilidades]
Add Constraint FK_PokeDebilidad_Pokemon Foreign Key (IdPokemon) References Pokemons (Id);

