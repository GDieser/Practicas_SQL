
Use master 

Go

Create Database DiscosDB

Use DiscosDB

Go

Create Table [Tipos.Edicion](
	Id int Primary Key,
	Descripcion varchar(250)
);

GO

Create Table Estilos(
	Id int Primary Key,
	Descripcion varchar(250)
);
Go

Create Table Discos(
	Id int Primary Key,
	Titulo varchar(50),
	FechaLanzamiento date,
	CantidadCanciones int,
	UrlImagenTapa varchar(250),
	IdEstilo int,
	IdTipoEdicion int,

	Constraint FK_Disco_Estilo Foreign Key (IdEstilo) References Estilos (Id),
	Constraint FK_Discos_TipoEdicion Foreign Key (IdTipoEdicion) References [Tipos.Edicion] (Id)
);

