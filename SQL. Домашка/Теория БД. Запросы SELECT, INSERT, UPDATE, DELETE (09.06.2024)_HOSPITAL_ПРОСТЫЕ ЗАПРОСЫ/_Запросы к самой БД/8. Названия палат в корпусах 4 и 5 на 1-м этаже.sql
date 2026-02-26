/* 8. Вывести названия палат, расположенных в корпусах 4 и 5 на 1-м этаже. */

SELECT Wards.Name 
FROM Wards 
WHERE Building IN (4,5) AND Floor = 1;