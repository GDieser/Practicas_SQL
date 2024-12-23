
Use Master 

Go

Create Database Eventos_DB

Go

Use Eventos_DB

Go

Create Table Eventos(
	Id int Primary Key,
	NombreEvento varchar (50),
	FechaInicio date,
	FechaFin date,
	Lugar varchar(100)
);

Go

Create Table Asistentes(
	Id int Primary Key,
	Nombre varchar(50),
	Email varchar(100),
	Telefono varchar(20)
);

Go

Create Table [Eventos.Asistentes](
	IdEvento int,
	IdAsistente int,

	Constraint PK_Evento_Asistente Primary Key (IdEvento, IdAsistente),
	Constraint FK_EvenAsistente_Evento Foreign Key (IdEvento) References Eventos (Id),
	Constraint FK_EvenAsistente_Asistente Foreign Key (IdAsistente) References Asistentes (Id)
);


