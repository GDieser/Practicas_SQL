
--1
Select D.Titulo, D.FechaLanzamiento, E.Descripcion From DISCOS D, ESTILOS E
Where D.IdEstilo = E.Id

--2 
Insert Into ESTILOS values
('Folklore')

Insert Into ESTILOS values
('Reggue')

Insert Into TIPOSEDICION values
('DVD')

Select * From ESTILOS
Select * From TIPOSEDICION

--3
Insert Into DISCOS values
('Rata Blanca', '1989-01-01', 12, 'www.google.com.ar', 3, 2)

Insert Into DISCOS values
('Soda Stereo', '1985-01-01', 15, 'www.google.com.ar', 2, 4)

Select * From DISCOS

--4
Update DISCOS set CantidadCanciones = 10 Where Id = 3

Select * From DISCOS

--5
Delete From DISCOS Where Id = 4

Select * From DISCOS

--6
Select E.Id ,E.Descripcion From DISCOS D, ESTILOS E
Where D.IdEstilo = E.Id

--7
Select D.Titulo Nombre, E.Descripcion Estilo, T.Descripcion Edicion From DISCOS D, ESTILOS E, TIPOSEDICION T
Where D.IdEstilo = E.Id AND D.IdTipoEdicion = T.Id

--8
Select * From DISCOS
Where Titulo LIKE '%ho%'