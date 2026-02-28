/* 5. Вывести количество студентов, посещающих лекции преподавателя “Jack Underhill”. */

SELECT COUNT(Groups.Students) as 'Количество групп', SUM(Groups.Students) as 'Количество студентов'
FROM Groups 
WHERE TeacherId = 5;