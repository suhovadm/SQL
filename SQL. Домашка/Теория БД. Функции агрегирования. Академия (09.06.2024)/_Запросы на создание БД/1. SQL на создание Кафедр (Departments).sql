/* Кафедры (Departments). */

CREATE TABLE Departments ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 
Financing money NOT NULL DEFAULT 0, /* Значение по умолчанию 0 и не может быть меньше нуля. */ 
Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''), /* Имя уникально и не может быть пустым. */
FacultyId int NOT NULL), );
