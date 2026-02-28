/* Дисциплины (Subjects). */

CREATE TABLE Subjects ( Id INT PRIMARY KEY NOT NULL IDENTITY(1,1), 

Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''), );