/* 6. Группы (Groups). */

CREATE TABLE Groups ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Name nvarchar(10) NOT NULL UNIQUE CHECK (Name != ''), /* Название группы. */
Year int NOT NULL CHECK (Year BETWEEN 1 AND 5), /* Курс, на котором обучается группа, от 1 до 5. */
DepartmentId int NOT NULL); /* Внешний ключ добавлен через ГУИ. */
