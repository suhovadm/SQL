/* Преподаватели (Teachers). */

CREATE TABLE Teachers ( Id int PRIMARY KEY IDENTITY(1,1), 

EmploymentDate date NOT NULL CHECK (EmploymentDate >= '1990-01-01'), 
Name nvarchar(max) NOT NULL CHECK (Name != ''),
Surname nvarchar(max) NOT NULL CHECK (Surname != ''),
Salary money NOT NULL CHECK (Salary > 0),
Premium money DEFAULT 0 NOT NULL CHECK (Premium >= 0), ); /* Значение по дефолту 0 и не может быть меньше нуля. */

/* Не может быть пустым != '', т.е. не равно пустоте. */

/* Изначально, должно быть в таком порядке: */
/* EmploymentDate - дата трудоустройства. */
/* Name - имя преподавателя. */
/* Premium - надбавка. */
/* Salary - ставка (зарплата). */
/* Surname - фамилия. */