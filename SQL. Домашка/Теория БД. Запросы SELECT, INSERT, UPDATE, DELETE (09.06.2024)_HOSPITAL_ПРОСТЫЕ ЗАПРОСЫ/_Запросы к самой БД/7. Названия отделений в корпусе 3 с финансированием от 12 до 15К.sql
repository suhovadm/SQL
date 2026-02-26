/* 7. Вывестиназвания отделений, расположенных в 3-м корпусе с фондом финансирования в диапазоне от 12000 до 15000. */

SELECT Departments.Name as 'Название отделения' 
FROM Departments 
WHERE Building = 3 AND Financing BETWEEN 12000 AND 15000;