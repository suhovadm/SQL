/* 16. Вывести названия отделений, которые располагаются в 1-м или 3-м корпусе. */

SELECT Departments.Name as 'Название корпуса' 
FROM Departments 
WHERE Building IN (1, 3);