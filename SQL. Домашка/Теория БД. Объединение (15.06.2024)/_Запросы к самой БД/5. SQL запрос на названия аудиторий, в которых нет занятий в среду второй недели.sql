/* 5. Вывести названия аудиторий, с указанием их корпусов, в которых нет лекций в среду второй недели на третьей паре.*/

SELECT Name as 'Название аудитории', Building as 'Номер корпуса' 

FROM LectureRooms 

/* DayOfWeek = 3 - среда. */
/* Week = 2 - вторая неделя. */
/* Class = 3 - третья пара. */

WHERE Id NOT IN ( SELECT LectureRoomId FROM Schedules WHERE DayOfWeek = 3 AND Week = 2 AND Class = 3 );