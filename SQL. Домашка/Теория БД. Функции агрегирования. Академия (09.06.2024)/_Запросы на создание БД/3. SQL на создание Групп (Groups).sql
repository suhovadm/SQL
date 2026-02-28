/* Группы (Groups). */

CREATE TABLE Groups ( Id INT PRIMARY KEY NOT NULL IDENTITY(1,1), 

Name NVARCHAR(10) NOT NULL UNIQUE CHECK (Name != ''), /* Имя (НЕ NULL, UNIQUE - уникальное, не может быть пустым). */
/* nvarchar - строка, как str, число внутри определяет длину. */
Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5), 
DepartmentId INT NOT NULL );