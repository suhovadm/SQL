/* 2. Вывести фамилии ассистентов, читающих лекции в группе F505. */

SELECT 
Assistants.TeacherId as 'Id-шник ассистента', 
Teachers.Name + ' ' + Teachers.Surname as 'ФИО ассистента',
Groups.Name as 'Группа ассистентов'

/* Перед FROM запятая НЕ ставится !!! */

FROM 
Assistants /* Здесь FROM Teachers можно не ставить, достаточно добавить подзапрос в SELECT. */
JOIN Teachers ON Assistants.TeacherId = Teachers.Id 
JOIN Lectures ON Teachers.Id = Lectures.TeacherId 
JOIN Groups ON Lectures.TeacherId = Teachers.Id 

WHERE Groups.Name = 'F505'; /* В WHERE просто подзапрос из группы на имя группы. */