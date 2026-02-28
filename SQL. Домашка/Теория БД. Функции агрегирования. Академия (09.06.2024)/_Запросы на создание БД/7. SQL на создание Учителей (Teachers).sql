/* Преподаватели (Teachers). */

CREATE TABLE Teachers ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 

Name nvarchar(max) NOT NULL CHECK (Name != ''),
Surname nvarchar(max) NOT NULL CHECK (Surname != ''),
Salary money NOT NULL CHECK (Salary > 0), );

/* Не может быть пустым != '', т.е. не равно пустоте. */

/* Name - имя преподавателя. */
/* Surname - фамилия. */
/* Salary - ставка (зарплата). */