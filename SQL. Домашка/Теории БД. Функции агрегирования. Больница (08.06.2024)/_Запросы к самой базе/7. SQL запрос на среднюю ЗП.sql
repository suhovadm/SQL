/* Вывести среднюю зарплату (сумма ставки и надбавки) врачей. */

------------------------- СРЕДНЯЯ (ПОЛНАЯ) З/П У ХИРУРГОВ. ---------------------------------

SELECT Departments.Name as 'Название отделения',
COUNT(DoctorsHirurgs.Id) as 'Кол-во хирургов',
AVG(Salary + Premium) as 'Средняя З/П у хирурга'
From DoctorsHirurgs, Departments WHERE Departments.Name = 'Хирургическое отделение' GROUP BY Departments.Name;

------------------------ СРЕДНЯЯ (ПОЛНАЯ) З/П У ТЕРАПЕВТОВ. --------------------------------

SELECT Departments.Name as 'Название отделения',
COUNT(DoctorsTerapevts.Id) as 'Кол-во терапевтов',
AVG(Salary + Premium) as 'Средняя З/П у терапевта'
From DoctorsTerapevts, Departments WHERE Departments.Name = 'Терапевтическое отделение' GROUP BY Departments.Name;