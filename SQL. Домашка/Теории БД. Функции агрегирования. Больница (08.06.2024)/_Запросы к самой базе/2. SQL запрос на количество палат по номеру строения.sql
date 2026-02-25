/* Вывести названия корпусов и количество палат в каждом из них. */

SELECT Building as 'Номер строения', COUNT(*) as 'Количество палат' 
FROM Departments LEFT JOIN Wards ON Departments.Id = Wards.DepartmentId GROUP BY Building;

/* 1. Объединяем таблицы Departments и Wards LEFT JOIN-ом. */
/* 2. У Departments берём ID-шник, у Wards берём DepartmentId. */
/* 3. Группируем по полю Building, чтобы вывести количество палат по каждому строению в отдельности. */



