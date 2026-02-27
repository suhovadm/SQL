/* 3. Вывести дисциплины, которые читает преподаватель “Alex Carmack” для групп 5-го курса. */

SELECT Subjects.Name as 'Название дисциплины', Groups.Name as 'Название группы', Groups.Year as 'Курс'

/* INNER JOIN - объединение записей из двух таблиц по связующему полю, если оно содержит одинаковые значения в обеих таблицах. */
/* В нашем случае, происходить объединение по Id-шнику. У Кармака Id = 2 и у Back-end разработки на Python Id = 2. */

FROM Subjects 
INNER JOIN Teachers ON Subjects.Id = Teachers.Id 
INNER JOIN Groups ON Groups.Id = Groups.Id

WHERE Teachers.Name = 'Alex' AND Teachers.Surname = 'Carmack' AND Groups.Year = 5;