/* 17. Вывести фамилии врачей, начинающиеся на букву “N”. */

SELECT Doctors.Surname + ' ' + Doctors.Name as 'ФИО врача', Doctors.Phone as 'Телефон врача'
FROM Doctors 
WHERE Surname LIKE 'Н%';