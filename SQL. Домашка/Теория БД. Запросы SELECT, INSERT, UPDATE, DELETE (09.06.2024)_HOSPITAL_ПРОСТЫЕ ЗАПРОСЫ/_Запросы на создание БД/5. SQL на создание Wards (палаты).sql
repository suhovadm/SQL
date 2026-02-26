/* 5. Палаты (Wards). */

CREATE TABLE Wards ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 

Building int NOT NULL CHECK (Building BETWEEN 1 AND 5),
Floor int NOT NULL CHECK (Floor >= 1), /* Этаж не может быть меньше 1. */
Name nvarchar(20) NOT NULL UNIQUE CHECK (Name != ''), );