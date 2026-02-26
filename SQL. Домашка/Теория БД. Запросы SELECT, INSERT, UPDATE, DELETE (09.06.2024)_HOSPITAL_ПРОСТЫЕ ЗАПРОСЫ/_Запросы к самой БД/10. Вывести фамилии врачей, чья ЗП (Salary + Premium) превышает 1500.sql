/* 10. Вывести фамилии врачей, чья зарплата (сумма ставки и надбавки) превышает 1500. */

SELECT Doctors.Surname + ' ' + Doctors.Name as 'ФИО врачей больше 1500' 
FROM Doctors 
WHERE Salary + Premium > 1500;