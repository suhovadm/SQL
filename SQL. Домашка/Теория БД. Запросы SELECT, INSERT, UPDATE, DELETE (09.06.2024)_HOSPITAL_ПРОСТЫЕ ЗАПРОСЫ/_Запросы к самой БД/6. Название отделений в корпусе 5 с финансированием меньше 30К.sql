/* 6. Вывести названия отделений, расположенных в корпусе 5 и имеющих фонд финансирования менее 30000. */

SELECT Departments.Name as 'Название отделения' 
FROM Departments 
WHERE Building = 5 AND Financing < 30000;