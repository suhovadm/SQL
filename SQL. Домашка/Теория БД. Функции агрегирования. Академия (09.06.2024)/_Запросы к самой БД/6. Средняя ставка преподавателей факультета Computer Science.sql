/* 6. Вывести среднюю ставку преподавателей факультета “Computer Science”. */

SELECT Faculties.Name as 'Название факультета',
AVG(Salary) as 'Средняя З/П по Computer Science'
FROM Teachers, Faculties 
WHERE Faculties.Name = 'Computer Science' GROUP BY Faculties.Name;

/* WHERE Faculties.Name = 'Computer Science - фильтрует строки в Faculties.Name по 'Computer Science' */
/* GROUP BY Faculties.Name - группировка строк по значению столбца Name, что позволяет вычислить
среднее значение Salary только для факультета Computer Science.
*/