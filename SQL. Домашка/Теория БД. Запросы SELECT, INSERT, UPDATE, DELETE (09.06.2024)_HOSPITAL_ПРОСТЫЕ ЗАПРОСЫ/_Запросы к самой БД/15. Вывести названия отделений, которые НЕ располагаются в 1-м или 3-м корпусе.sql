/* 15. Вывести названия отделений, которые НЕ располагаются в 1-м или 3-м корпусе. */

SELECT Departments.Name as 'Название корпуса' 
FROM Departments 
WHERE Building NOT IN (1, 3);