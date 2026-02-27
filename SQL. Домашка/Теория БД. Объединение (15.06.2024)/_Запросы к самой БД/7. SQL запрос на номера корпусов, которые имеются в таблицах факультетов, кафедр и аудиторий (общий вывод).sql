/* 7. Вывести список номеров всех корпусов, которые имеются в таблицах факультетов, кафедр и аудиторий. */
/* Общий вывод. */

/* DISTINTC - без повторений. */

SELECT DISTINCT Building as 'Все номера корпусов'

FROM Departments UNION SELECT DISTINCT Building /* Кафедры. */ 
FROM Faculties UNION SELECT DISTINCT Building /* Факультеты. */
FROM LectureRooms; /* Аудитории. */