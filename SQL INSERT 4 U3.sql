

Insert Into Elementos values (1, 'Aguas')
Insert Into Elementos values (2, 'Fuego')
Insert Into Elementos values (3, 'Plante')
Insert Into Elementos values (4, 'Electrico')
Insert Into Elementos values (5, 'Normal')

Update Elementos set Descripcion = 'Agua' Where Id = 1
Update Elementos set Descripcion = 'Planta' Where Id = 3

Select * From Elementos

Insert Into Habilidades values (3, 'Ataque Rapido', 'Ataque a gran velocidad', 5)

Select * From Habilidades

Select H.Nombre, E.Descripcion From Habilidades H
Inner Join Elementos E ON H.IdTipo = E.Id

--Insert Into [Pokemons.Habilidades] Values ()

Alter Table Habilidades
	Add Constraint FK_Habilidades_Tipo Foreign Key (IdTipo) References Elementos(Id)

Alter Table Habilidades
	Alter Column IdTipo int Not Null