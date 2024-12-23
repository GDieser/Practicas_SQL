
--11) Ingresar el siguiente Film.

Insert Into Peliculas Values(
'1968-01-11',
'The Good, the Bad and the Ugly',
162,
'Tres hombres violentos pelean por una caja que alberga 200 000 dólares, la cual fue escondida durante la Guerra Civil. Dado que ninguno puede encontrar la tumba donde está el botín sin la ayuda de los otros dos, deben colaborar, pese a odiarse.',
NULL)

Select * From Peliculas

--12) En base al Film recientemente agregado al Catálogo, agregárselo como Favorito a Severus Snape.

Select Id From Usuarios Where Nombre = 'Severus' --ID 4
Select * From [Usuarios.Favoritos] Where IdUsuario = 4

Insert [Usuarios.Favoritos] Values (27, 4, '2024-11-25')

--13) Ahora hagamos que esta pelicula se pueda ver en las Plataformas de Netflix y Amazon.

Select * From [Peliculas.Plataformas] Where IdPlataforma = 3
Select * From Plataformas -- ID Disney 3, Amazon 2
Select Id From Plataformas Where Nombre LIKE '%Amazon%'

Insert [Peliculas.Plataformas] Values (44, 27, 2, '2024-11-25', '2025-05-25')
Insert [Peliculas.Plataformas] Values (45, 27, 3, '2024-11-25', '2025-05-25')

--14) ¿Cuál es la "relación" que tienen estas consultas al Ejecutarse? ¿Cuál es el motivo?

INSERT INTO Peliculas (FechaEstreno, Titulo, MinutosDuracion, Bio, IdDirector) 
VALUES ('2014-08-21', 'Relatos Salvajes', 122, 'Seis relatos que alternan la intriga, la comedia y la violencia. Sus personajes se verán empujados hacia el abismo y hacia el innegable placer de perder el control al cruzar la delgada línea que separa la civilización de la barbarie.', NULL);

INSERT INTO [Peliculas.Categorias] (IdCategoria, IdPelicula) 
VALUES (6, 2);

INSERT INTO [Peliculas.Plataformas] (Id, IdPelicula, IdPlataforma, FechaAlta) 
VALUES (46, 24, 10, '2024-03-27');