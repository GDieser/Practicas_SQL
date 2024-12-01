
Use Master 

Go

Create Database ReseniasTech_DB

Use ReseniasTech_DB

Go

Create Table Usuarios(
	Id int Primary Key,
	Nombre varchar(50),
	Email varchar(50),
	Pais varchar(100)
);

Go

Create Table Articulos(
	Id int Primary Key,
	Nombre varchar(50),
	Descripcion varchar(250),
	Categoria varchar(50),
	Precio float
);

Go

Create Table Resenias(
	Id int Primary Key,
	IdArticulo int,
	IdUsuario int,
	Puntuacion float,
	Comentario varchar(100),
	Fecha date,

	Constraint FK_Resenia_Usuario Foreign Key (IdUsuario) References Usuarios (Id),
	Constraint FK_Resenia_Articulo Foreign Key (IdArticulo) References Articulos (Id),
);

