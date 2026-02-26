/* 14. Вывести названия заболеваний всех степеней тяжести, кроме 1-й и 2-й. */

SELECT Disease.Name as 'Название заболевания', Disease.Severity as 'Степень тяжести'
FROM Disease 
WHERE Severity > 2;