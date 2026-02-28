/* Врачи (Doctors). */

CREATE TABLE Doctors ( Id int PRIMARY KEY IDENTITY(1,1), 

Name nvarchar(max) NOT NULL CHECK (Name != ''), /* Имя врача не может быть пустым. */ 
Surname nvarchar(max) NOT NULL CHECK (Surname != ''), /* Фамилия тоже не может быть пустой. */
Phone char(10) NULL, /* Может содержать NULL значения. */
Salary money NOT NULL CHECK (Salary > 0), );

/* Name - имя врача. */
/* Surname - фамилия. */
/* Phone - телефон. */
/* Salary - ставка (зарплата). */