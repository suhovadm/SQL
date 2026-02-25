/* 5. Палаты (Wards). */

CREATE TABLE Wards ( Id int PRIMARY KEY IDENTITY(1,1),
Name nvarchar(20) NOT NULL UNIQUE, CHECK (Name != ''), /* Название палаты. */
Places int NOT NULL, CHECK (Places >= 1), /* Количество мест в палате. */
DepartmentId int NOT NULL ); /* Отделение, в котором располагается палата. */

/* Запросы на внешние ключи отсутствуют, они сделаны через ГУИ. */
/* Wards - DepartmentId ---> Departments - Id */