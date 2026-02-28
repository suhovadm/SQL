/* 4. Вывести названия аудиторий и количество лекций, проводимых в них. */

SELECT LectureRoom as 'Аудитория', COUNT(SubjectId) as 'Кол-во лекций на этой неделе'
/* Здесь берём LectureRoom и SubjectId и сразу же переименовываем их. */

FROM Lectures GROUP BY LectureRoom;
/* GROUP BY LectureRoom - группируем данные по значению столбца LectureRoom, 
чтобы посчитать количество лекций в каждой аудитории. */