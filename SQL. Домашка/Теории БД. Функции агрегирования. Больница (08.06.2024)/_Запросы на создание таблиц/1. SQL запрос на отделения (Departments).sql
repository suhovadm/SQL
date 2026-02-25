/* 1. Отделения (Departments) */

CREATE TABLE Departments ( Id int PRIMARY KEY IDENTITY(1,1), 

Building int NOT NULL CHECK (Building BETWEEN 1 AND 5), /* Нет NULL, диапазон от 1 до 5. */
Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''), ); /* Уникальное, не может быть пустым. */

/* Building - корпус. */
/* Name - Название отделения. */