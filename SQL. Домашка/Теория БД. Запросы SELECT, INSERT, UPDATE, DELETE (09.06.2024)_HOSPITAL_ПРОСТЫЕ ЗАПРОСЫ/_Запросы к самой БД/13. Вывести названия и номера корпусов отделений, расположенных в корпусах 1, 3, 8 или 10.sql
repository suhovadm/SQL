/* 13. Вывести названия и номера корпусов отделений, расположенных в корпусах 1, 3, 8 или 10. */

SELECT Departments.Name as 'Название корпуса', Departments.Building as 'Номер корпуса'
FROM Departments 
WHERE Building IN (1, 3, 8, 10); /* 8 и 10 не существует, так как BETWEEN от 1 до 5, поэтому выведет только 1 и 3. */