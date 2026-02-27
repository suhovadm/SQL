/* 6. Вывести полные имена преподавателей факультета "Computer Science", 
которые НЕ курируют группы кафедры "Software Development". */

/* У факультета Computer Science id-шник = 6. См. таблицу Teachers. */
/* У Software Development id-шник = 17. Он находится в Departments. */

/* Faculties - факультеты. */
/* Departments - кафедры. */
/* Groups - группы. */

SELECT DISTINCT Teachers.Name + ' ' + Teachers.Surname as 'ФИО преподавателей'

FROM Teachers, Departments, Groups

WHERE Teachers.FacultyId = 6 AND Departments.Id != 17 AND Groups.DepartmentId != 17;

/* Вариант #1. В данном случае, мы насильно биндим FacultyId к Teacher-сам. 
То есть, у каждого Teacher-са будет id-шник факультета к которому он приписан, 
а дальше мы просто исключаем id-шник Software Developments (17) из Departments (кафедры) и такой же из Groups (групп). */