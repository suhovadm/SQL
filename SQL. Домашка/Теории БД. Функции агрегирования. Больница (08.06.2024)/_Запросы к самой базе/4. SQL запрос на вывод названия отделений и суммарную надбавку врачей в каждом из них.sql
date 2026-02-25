/* Вывести названия отделений и суммарную надбавку врачей в каждом из них. */

--------------------------------- ЭТО ДЛЯ ХИРУРГОВ. -------------------------------------------------------------------

SELECT Departments.Name as 'Название отделения', SUM(Premium) as 'Общая надбавка по хирургии'
from DoctorsHirurgs, Departments WHERE Departments.Name = 'Хирургическое отделение' GROUP BY Departments.Name;

/* 1. Делаем подзапрос к Name из Departments, делаем Суммирование всей премии, накидываем Алиасы. */
/* 2. Дальше говорим: "from (откуда) это брать". Из DoctorsHirurgs и Departments. Причём в Departments.Name нужно указать */
/* конкретное отделение. */
/* 3. Группируем по Departments.Name. */

------------------------------- ЭТО ДЛЯ ТЕРАПЕВТОВ. --------------------------------------------------------------------

SELECT Departments.Name as 'Название отделения', SUM(Premium) as 'Общая надбавка по терапии'
from DoctorsTerapevts, Departments WHERE Departments.Name = 'Терапевтическое отделение' GROUP BY Departments.Name;

/* 1. Делаем подзапрос к Name из Departments, делаем Суммирование всей премии, накидываем Алиасы. */
/* 2. Дальше говорим: "from (откуда) это брать". Из DoctorsHirurgs и Departments. Причём в Departments.Name нужно указать */
/* конкретное отделение. */
/* 3. Группируем по Departments.Name. */