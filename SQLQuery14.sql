
Use Master 

Go

Create Database GaleriaDeArte_DB

Use GaleriaDeArte_DB

Go

Create Table Exposiciones(
	Id int Primary Key,
	Nombre varchar(50),
	FechaInicio date,
	FechaFin date
);

Go

Create Table Artistas(
	Id int Primary Key,
	Nombre varchar(100),
	Pais varchar(50)
);

Go

Create Table Obras(
	Id int Primary Key,
	Titulo varchar(100),
	Estilo varchar(100),
	IdArtista int,

	Constraint FK_Obra_Artista Foreign Key (IdArtista) References Artistas (Id) 
);

Go

Create Table [Obras.Exposiciones](
	IdObra int,
	IdExposicion int,

	Constraint FK_ObraExpo_Obra Foreign Key (IdObra) References Obras (Id),
	Constraint FK_ObraExpo_Exposicion Foreign Key (IdExposicion) References Exposiciones (Id)
);

--Me Falto las claves combinadas y no me dejaba setearlas por el no ser nulleables

ALTER TABLE [Obras.Exposiciones]
ALTER COLUMN IdObra INT NOT NULL;

ALTER TABLE [Obras.Exposiciones]
ALTER COLUMN IdExposicion INT NOT NULL;

--Solucione de arriba

Alter Table [Obras.Exposiciones]
Add Constraint PK_Obras_Exposicion Primary Key (IdObra, IdExposicion)


