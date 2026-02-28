/* 1. Количество преподавателей с кафедры Software Development. */

SELECT COUNT(Teachers.Id) /* Выбираем данные из таблицы Teachers, столбца Id, т.е. делаем подзапрос. */
FROM Departments, Teachers /* Здесь конкретно указываются таблицы из которых берутся данные. */
WHERE Departments.Name = 'Software Development';
/* WHERE - это условие, по которому выбираются записи, где название кафедры = 'Software Development. '*/