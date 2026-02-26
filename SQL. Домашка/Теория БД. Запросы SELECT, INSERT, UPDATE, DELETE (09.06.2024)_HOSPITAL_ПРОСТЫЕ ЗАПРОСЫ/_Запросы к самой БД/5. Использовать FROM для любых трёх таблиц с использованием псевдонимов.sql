/* 5. Использовать выражение FROM для любых трех таблиц
базы данных, используя для них псевдонимы. */

/* Запрос для первой таблицы. */
SELECT Wards.Name as 'Номер палаты'
FROM Wards;

/* Запрос для второй таблицы. */
SELECT Doctors.Surname as 'Фамилия врача', Doctors.Salary as 'Зарплата' FROM Doctors;

/* Запрос для третьей таблицы. */
SELECT Disease.Name as 'Название заболевания', Disease.Severity as 'Степень заболевания' FROM Disease;