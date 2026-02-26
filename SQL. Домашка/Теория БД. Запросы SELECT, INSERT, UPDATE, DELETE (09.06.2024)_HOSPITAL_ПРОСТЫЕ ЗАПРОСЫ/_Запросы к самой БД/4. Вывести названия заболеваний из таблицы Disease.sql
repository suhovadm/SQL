/* 4. Вывестиназвания заболеваний подименем “NameofDisease”
и степень их тяжести под именем “Severity of Disease”. */

SELECT DISTINCT Disease.Name as 'Название заболевания', Disease.Severity as 'Степень тяжести' 
FROM Disease;

/* DISTINCT - аналогично, без повторений и дублей, хотя здесь их нет. */