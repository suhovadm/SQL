/* 2. Врачи (Doctors). */

CREATE TABLE Doctors ( Id int PRIMARY KEY IDENTITY(1,1), 

Name nvarchar(max) NOT NULL CHECK (Name != ''), /* Имя врача не может быть пустым. */
Premium money NOT NULL DEFAULT 0 CHECK (Premium > 0), /* Надбавка. */
Salary money NOT NULL CHECK (Salary > 0), /* Не может быть меньше нуля и не может быть равна нулю. */
Surname nvarchar(max) NOT NULL CHECK (Surname != ''), ); /* Фамилия тоже не может быть пустой. */

/* Name - имя врача. */
/* Surname - фамилия. */
/* Salary - ставка (зарплата). */