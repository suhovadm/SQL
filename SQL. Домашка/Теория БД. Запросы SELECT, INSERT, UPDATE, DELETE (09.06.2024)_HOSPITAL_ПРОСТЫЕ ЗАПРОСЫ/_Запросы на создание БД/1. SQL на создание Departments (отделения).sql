/* 1. Отделения (Departments). */

CREATE TABLE Departments ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Building int NOT NULL CHECK (Building BETWEEN 1 AND 5),
Financing money NOT NULL DEFAULT 0 CHECK (Financing > 0),
Floor int NOT NULL CHECK (Floor >= 1), /* Этаж не может быть меньше 1. */
Name nvarchar(100) NOT NULL CHECK (Name != ''), );
