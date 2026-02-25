/* ¬ывести названи€ отделений, в которых провод€т обследовани€ 5 и более врачей. */

SELECT Departments.Name 
FROM Departments LEFT JOIN Doctors ON Doctors.Id = Doctors.Id GROUP BY Departments.Name HAVING COUNT(Doctors.Id) >= 5;

/* ¬ариант дл€ обычной таблицы Doctors, без указани€ конкретной профессии - хирург, терапевт и т.д. */