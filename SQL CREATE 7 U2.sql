
Use Master

Go

Create Database CatalogoWeb_DB2

Go

Use CatalogoWeb_DB2

Go 

Create Table Users(
	Id int Primary Key,
	Email varchar(50),
	Pass varchar(25),
	Nombre varchar(50),
	Apellido varchar(50),
	UrlImagenPerfil varchar(250),
	Admin bit
);

Go

Create Table Categorias(
	Id int Primary Key,
	Descripcion varchar(200)
);

Go

Create Table Marcas(
	Id int Primary Key,
	Descripcion varchar(250)
);

Go

Create Table Articulos(
	Id int Primary Key,
	Codigo int,
	Nombre varchar(50),
	Descripcion varchar(250),
	IdMarca int,
	IdCategoria int,
	ImagenUrl varchar(250),
	Precio money,

	Constraint FK_Articulo_Marca Foreign Key (IdMarca) References Marcas (Id),
	Constraint FK_Articulo_Categoria Foreign Key (IdCategoria) References Categorias (Id)
);

Go

Create Table Favoritos(
Id int Primary Key,
	IdUSer int,
	IdArticulo int

	Constraint FK_Articulo_Usuario Foreign Key (IdUser) References Users (Id),
	Constraint FK_Articulo_Articulo Foreign Key (IdArticulo) References Articulos (Id)
);
