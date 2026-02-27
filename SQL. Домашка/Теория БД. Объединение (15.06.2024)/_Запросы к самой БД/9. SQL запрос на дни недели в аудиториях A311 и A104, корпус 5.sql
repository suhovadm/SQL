/* 9. Вывести дни недели (без повторений), в которые имеются занятия в аудиториях “A311” и “A104” корпуса 6. */
/* В данном случае, номер корпуса изменён с 6 на 5, потому что в Кафедрах (Departments) стоит ограничение на количество 
корпусов - от 1 до 5. */

SELECT DISTINCT /* Вывод без дублей и повторов. */
Schedules.DayOfWeek as 'Дни недели',
LectureRooms.Name as 'Название аудитории',
LectureRooms.Building as 'Номер корпуса'

FROM Schedules JOIN LectureRooms ON Schedules.LectureRoomId = LectureRooms.Id 

WHERE LectureRooms.Name IN ('A311', 'A104') AND LectureRooms.Building = 5;