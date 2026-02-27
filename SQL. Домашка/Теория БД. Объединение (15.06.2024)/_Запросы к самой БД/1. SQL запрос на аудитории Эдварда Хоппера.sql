/* 1. Вывести названия аудиторий, в которых читает лекции преподаватель “Edward Hopper”. */
/* + Выведены номера корпусов и ФИО преподвателя. В нашем случае, они везде одни. */

SELECT 
LectureRooms.Building as 'Номер корпуса',
LectureRooms.Name as 'Названия (номера) аудиторий', 
Teachers.Name + ' ' + Teachers.Surname as 'ФИО Преподавателя'

FROM LectureRooms, Lectures, Teachers
WHERE 
LectureRooms.Id = LectureRooms.Id
AND 
Lectures.TeacherId = Teachers.Id 
AND Teachers.Name = 'Edward' AND Teachers.Surname = 'Hopper';
