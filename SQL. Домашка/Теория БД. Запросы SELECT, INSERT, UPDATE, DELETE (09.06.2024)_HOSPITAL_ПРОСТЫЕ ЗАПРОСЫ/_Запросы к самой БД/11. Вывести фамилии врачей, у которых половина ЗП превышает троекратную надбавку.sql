/* 11. Вывести фамилии врачей, у которых половина зарплаты превышает троекратную надбавку. */

/* 1. Сначала узнаем половину ЗП, разделим Salary на 2. */
/* 2. Умножим Premium на 3. */
/* 3. Сравним Salary / 2 с Premium * 3 = Salary / 2 > Premium * 3. */

SELECT Doctors.Name + ' ' + Doctors.Surname as 'Доска почёта' 
FROM Doctors 
WHERE Salary / 2 > Premium * 3;