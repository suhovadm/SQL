/* 8. Вывести полные имена преподавателей в следующем порядке: 
деканы факультетов, заведующие кафедрами, преподаватели, кураторы, ассистенты. */

SELECT Name + ' ' + Surname as 'Деканы' /* Выбираем имя + фамилия и даём правильный префикс. */
FROM Deans JOIN Teachers ON Deans.TeacherId = Teachers.Id /* Далее объединяем 2 столбца из Deans и Teachers по Id-шнику Deans.TeacherId */

SELECT Name + ' ' + Surname as 'Заведующие кафедрой'
FROM Heads JOIN Teachers ON Heads.TeacherId = Teachers.Id

SELECT Name + ' ' + Surname as 'Все преподаватели'
FROM Teachers

SELECT Name + ' ' + Surname as 'Кураторы'
FROM Curators JOIN Teachers ON Curators.TeacherId = Teachers.Id

SELECT Name + ' ' + Surname as 'Ассистенты'
FROM Assistants JOIN Teachers ON Assistants.TeacherId = Teachers.Id;