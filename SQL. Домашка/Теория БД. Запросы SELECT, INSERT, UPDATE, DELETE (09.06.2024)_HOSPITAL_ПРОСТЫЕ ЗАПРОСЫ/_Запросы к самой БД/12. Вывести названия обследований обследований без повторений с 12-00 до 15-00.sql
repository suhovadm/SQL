/* 12. ¬ывести названи€ обследований без повторений, проводимых в первые три дн€ недели с 12:00 до 15:00. */

SELECT DISTINCT Examinations.Name as '¬рач / ќбследование'
FROM Examinations 
WHERE DayOfWeek IN (1, 2, 3) AND StartTime >= '12:00' AND EndTime <= '15:00';

/* DISTINCT - без повторений и дублей. */