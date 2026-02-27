/* 6. Вывести полные имена преподавателей факультета "Computer Science", 
которые НЕ курируют группы кафедры "Software Development". */

/* У факультета Computer Science id-шник = 6. См. таблицу Teachers. */
/* У Software Development id-шник = 17. Он находится в Departments. */

/* Faculties - факультеты. */
/* Departments - кафедры. */
/* Groups - группы. */

SELECT DISTINCT Teachers.Name + ' ' + Teachers.Surname as 'ФИО преподавателей'

FROM Teachers, Departments, Groups

WHERE Teachers.FacultyId = 6 AND Departments.Name != 'Software Development';

/* Простой вариант #2, исключение по имени, не по id-шникам. 
И только из Departments (кафедры), Groups (группы) не трогаем, так как там нет названий, только id-шники. */