/* 11. Вывести номера аудиторий и количество кафедр, чьи лекции в них читаются. */

SELECT Lectures.LectureRoom as 'Аудитория', 
COUNT(DISTINCT Lectures.DepartmentsId) as 'Количество кафедр' 
FROM Lectures GROUP BY Lectures.LectureRoom;

/* DISTINCT - удаление дублирующих значений. Гарантирует, что все значения будут уникальными. */