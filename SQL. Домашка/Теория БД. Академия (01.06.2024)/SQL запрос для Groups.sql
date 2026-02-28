/* Группы (Groups). */

CREATE TABLE Groups ( Id INT PRIMARY KEY IDENTITY(1,1), 

Name NVARCHAR(10) NOT NULL UNIQUE, /* Имя (НЕ NULL, UNIQUE - уникальное). */
/* nvarchar - строка, как str, число внутри определяет длину. */
Rating INT NOT NULL CHECK (Rating >= 0 AND Rating <= 5), /* CHECK - проверка на что-то... */ 
Year INT NOT NULL CHECK (Year >= 1 AND Year <= 5) );