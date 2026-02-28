/* 2. Вывести количество лекций, которые читает преподаватель “Dave McQueen”. */
/* Dave McQueen читает лекции по ООП 3 раза в неделю - пн, вт, срд. */

SELECT COUNT(Lectures.TeacherId) as 'Лекции Дейва'
FROM Lectures 
WHERE TeacherId = (SELECT id FROM Teachers WHERE Surname = 'McQueen');

/* Данные для подсчёта берём из Lectures. 
TeacherId должен быть равен значению, которое мы получаем из подзапроса.
В нашем случае мы, мы ищем id преподавателя, у которого фамилия McQueen в таблице Teachers. */
