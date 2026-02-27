/* 4. Кафедры (Departments). */

CREATE TABLE Departments ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Building int NOT NULL CHECK (Building BETWEEN 1 AND 5),
Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''),
FacultyId int NOT NULL, /* Идентификатор факультета. Внешний ключ добавлен через ГУИ. */
HeadId int NOT NULL ); /* Внешний ключ добавлен через ГУИ. */