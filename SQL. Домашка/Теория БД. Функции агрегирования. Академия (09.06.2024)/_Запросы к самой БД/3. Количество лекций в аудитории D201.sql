/* 3. Вывести количество занятий, проводимых в аудитории “D201”. */

SELECT COUNT(Lectures.LectureRoom) as 'Кол-во занятий в 201-й' 
FROM Lectures 
WHERE LectureRoom = 'D201';