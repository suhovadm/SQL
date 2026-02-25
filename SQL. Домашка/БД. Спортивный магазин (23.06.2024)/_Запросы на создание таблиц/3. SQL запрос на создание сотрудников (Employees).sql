/* 3. Сотрудники (Employees). */

CREATE TABLE Employees ( Id int PRIMARY KEY IDENTITY(1,1), /* Создаём таблицу Сотрудники (Employees). */
Name nvarchar(100), /* ФИО сотрудника. */
JobTitle nvarchar(100), /* Должность. */
Employmentdate date, /* Дата приёма сотрудника на работу. */
Sex nvarchar(50), /* Пол сотрудника. */
Salary int ); /* Зарплата сотрудника. */