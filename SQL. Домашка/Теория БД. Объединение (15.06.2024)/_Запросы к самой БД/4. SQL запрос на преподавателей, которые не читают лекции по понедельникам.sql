/* 4. Вывести фамилии преподавателей, которые НЕ читают лекции по понедельникам. */

SELECT DISTINCT
Teachers.Name + ' ' + Teachers.Surname as 'ФИО преподавателя', Teachers.Id as 'Id преподавателя', Lectures.Id as 'Id лекции'

/* LEFT JOIN - выборка по всем записям первой (левой) таблицы. */
/* С простым JOIN-ом не работает. */

FROM 
Teachers 
LEFT JOIN Lectures ON Teachers.Id = Lectures.TeacherId 
LEFT JOIN Schedules ON Lectures.Id = Schedules.LectureId 

WHERE 
Schedules.DayOfWeek != 1; /* Кто НЕ читает лекции по понедельникам. */