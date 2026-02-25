/* Вывести количество врачей и их суммарную зарплату (сумма ставки и надбавки). */

------------------------- КОЛ-ВО ХИРУРГОВ, СУММА СТАВКИ И НАДБАВКИ. ------------------------------

SELECT Departments.Name as 'Название отделения',
COUNT(DoctorsHirurgs.Id) as 'Кол-во хирургов',
SUM(Salary) as 'Общая З/П по хирургии', 
SUM(Premium) as 'Общая премия по хирургии',
SUM(Salary) + SUM(Premium) as 'Всего по хирургии'
From DoctorsHirurgs, Departments WHERE Departments.Name = 'Хирургическое отделение' GROUP BY Departments.Name;

------------------------- КОЛ-ВО ТЕРАПЕВТОВ, СУММА СТАВКИ И НАДБАВКИ. ------------------------------

SELECT Departments.Name as 'Название отделения',
COUNT(DoctorsTerapevts.Id) as 'Кол-во терапевтов',
SUM(Salary) as 'Общая З/П по терапии',
SUM(Premium) as 'Общая премия по терапии',
SUM(Salary) + SUM(Premium) as 'Всего по терапии'
From DoctorsTerapevts, Departments WHERE Departments.Name = 'Терапевтическое отделение' GROUP BY Departments.Name;