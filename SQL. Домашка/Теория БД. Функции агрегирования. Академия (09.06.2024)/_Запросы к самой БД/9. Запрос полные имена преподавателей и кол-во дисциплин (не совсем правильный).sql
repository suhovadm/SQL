/* 9. Вывести полные имена преподавателей и количество читаемых ими дисциплин. */

SELECT CONCAT(Name, ' ', Surname) as 'Имя преподавателя',
COUNT(Lectures.SubjectId) as 'Количество лекций'
FROM Teachers JOIN Lectures ON Teachers.Id = Lectures.TeacherId 
GROUP BY Teachers.Name, Teachers.Surname;

/* Не совсем правильный запрос, выводит количество лекций, а не дисциплин. */