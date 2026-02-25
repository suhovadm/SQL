/* Вывести названия отделений и количество палат в каждом из них. */

SELECT Departments.Name as 'Название отделения', COUNT(*) as 'Количество палат' 
FROM Departments LEFT JOIN Wards ON Departments.Id = Wards.DepartmentId GROUP BY Departments.Name;

/* Здесь всё аналогично запросу 2. */
/* 1. Делаем подзапрос к Name из таблицы Departments, включаем COUNT, задаём Алиасы. */
/* 2. Объединяем таблицы Departments и Wards LEFT JOIN-ом. */
/* 3. У Departments берём ID-шник, у Wards берём DepartmentId. */
/* 4. Здесь группируем не по Building, а конкретно по полю Departments.Name, */
/* чтобы вывести количество палат по названию отделения (здания). */