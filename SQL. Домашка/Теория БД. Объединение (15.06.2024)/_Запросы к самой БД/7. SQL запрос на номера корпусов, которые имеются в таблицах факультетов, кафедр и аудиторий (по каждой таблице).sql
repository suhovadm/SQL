/* 7. Вывести список номеров всех корпусов, которые имеются в таблицах факультетов, кафедр и аудиторий. */
/* По каждой конкретной таблице. */

/* DISTINTC - без повторений. */

SELECT DISTINCT Departments.Building as 'Корпуса в кафедрах'
FROM Departments /* Кафедры. */ 

SELECT DISTINCT Faculties.Building as 'Корпуса в факультетах'
FROM Faculties  /* Факультеты. */

SELECT DISTINCT LectureRooms.Building as 'Корпуса в аудиториях'
FROM LectureRooms; /* Аудитории. */