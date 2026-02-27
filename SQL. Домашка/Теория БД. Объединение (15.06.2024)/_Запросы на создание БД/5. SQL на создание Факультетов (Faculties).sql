/* 5. Факультеты (Faculties). */

CREATE TABLE Faculties ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Building int NOT NULL CHECK (Building BETWEEN 1 AND 5),
Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''), /* Название факультета. */
DeanId int NOT NULL); /* Внешний ключ добавлен через ГУИ. */