
--Generar una clave compuesta
Alter Table Usuarios
Add Constraint PK_Usuario Primary Key (Id, Email);

--Generar un campo unico
Alter Table Usuarios
Add Constraint U_Email Unique (Email);