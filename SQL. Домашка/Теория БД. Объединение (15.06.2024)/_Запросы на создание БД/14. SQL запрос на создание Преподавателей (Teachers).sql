/* 14. Преподаватели (Teachers). */

CREATE TABLE Teachers ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Name nvarchar(max) NOT NULL CHECK (Name != ''), /* Имя преподавателя. */
Surname nvarchar(max) NOT NULL CHECK (Surname != '') /* Фамилия преподавателя. */

);
