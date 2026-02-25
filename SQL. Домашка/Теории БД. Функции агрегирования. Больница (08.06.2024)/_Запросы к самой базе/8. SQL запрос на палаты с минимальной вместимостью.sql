/* Вывести названия палат с минимальной вместительностью. */

SELECT Places as 'Вместимость', Name as 'Название палаты' /* Название и вместимость палаты. */
FROM Wards WHERE Places = (SELECT MIN(Places) FROM Wards);