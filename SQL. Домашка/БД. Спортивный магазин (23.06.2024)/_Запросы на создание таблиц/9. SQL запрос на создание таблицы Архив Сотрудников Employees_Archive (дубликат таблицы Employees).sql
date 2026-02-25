/* 9. Архив Сотрудников (Employees_Archive). */

CREATE TABLE Employees_Archive ( Id int PRIMARY KEY IDENTITY(1,1), /* Создаём таблицу Архив Сотрудников (Employees_Archive). */
Name nvarchar(100), /* ФИО сотрудника. */
JobTitle nvarchar(100), /* Должность. */
Employmentdate date, /* Дата приёма сотрудника на работу. */
Sex nvarchar(50), /* Пол сотрудника. */
Salary int ); /* Зарплата сотрудника. */
