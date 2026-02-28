/* 13. Вывести количество лекций для каждой пары преподаватель-аудитория. */

SELECT Teachers.Name + ' ' + Teachers.Surname as 'Имя преподавателя', 
Lectures.LectureRoom as 'Аудитория', 
COUNT(Lectures.Id) as 'Количество лекций'
FROM Teachers JOIN Lectures ON Teachers.Id = Lectures.TeacherId 
GROUP BY Teachers.Name, Teachers.Surname, Lectures.LectureRoom;
