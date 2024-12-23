
--Use master;
--GO

--Create Database MundoPokemon_DB2

Use MundoPokemon_DB2

GO
--Crea tabla  Pokemons
Create Table Pokemons(
	--Nombre
	--Tipo de datos
	--NULL o NOT NULL
	Id int not null,
	Nombre varchar(50),
	Numero int,
	Bio varchar(50),
	Altura float,
	Peso float,
	ImagenUrl varchar(500),
	IdEvolucion int
);

GO

Create Table Entrenadores(
	Id int not null,
	Nombre varchar(50),
	Apellido varchar(50),
	NickName varchar(50),
	Email varchar(100),
	Clave varchar(25),
	FechaNacimiento date
);

GO

Create Table Elementos(
	Id int PRIMARY KEY,
	Descripcion varchar(50)
);

GO 

Create Table Habilidades(
	Id int not null,
	Nombre varchar(50),
	Descripcion varchar(250),
	IdTipo int,
	CONSTRAINT PK_Habilidad PRIMARY KEY(Id)
);
Go

Create Table [Pokemons.Habilidades](
	Id int not null,
	IdPokemon int,
	IdHabilidad int,
	Constraint PK_Pokemon_Habilidad Primary Key(Id),
	Constraint FK_PokeHabilidad_Habilidades Foreign Key(IdHabilidad) References Habilidades(Id),
	--Constraint FK_PokeHabilidad_Pokemons Foreign Key(IdPokemon) References Pokemons(Id)
);

Create Table [Pokemons.Debilidades](
	Id int Primary Key,
	IdPokemon int,
	IdElemento int,
	Constraint FK_PokeDebilidad_Elementos Foreign Key(IdElemento) References Elementos(Id)
);

Create Table Medallas(
	Id int Primary Key,
	Nombre varchar(50),
	ImagenUrl varchar(250)
);

Create Table Ciudades(
	Id int Primary Key,
	Nombre varchar(100)
);


Create Table Gimanasios(
	Id int Primary Key,
	Nombre varchar(50),
	IdCiudad int,
	IdMedalla int,
	IdEntrenador int,
	Constraint FK_PokeGimasios_Ciudades Foreign Key(IdCiudad) References Ciudades(Id),
	Constraint FK_PokeGimnasios_Medallas Foreign Key(IdMedalla) References Medallas(Id),
	
);