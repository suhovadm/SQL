/* 2. Если после продажи товара не осталось ни одной единицы данного товара, необходимо перенести информацию
о полностью проданном товаре в таблицу «Архив» */

CREATE TRIGGER MoveToArchive /* Создаём триггер на перемещение в Архив. */
ON Products /* Вешаем триггер на таблицу Products. */
AFTER UPDATE /* Говорим, что он будет срабатывать после UPDATE в таблице Products. */

AS BEGIN /* Запускаем триггер. */

INSERT INTO Archive /* Закидываем в Archive n-e параметры. */

SELECT Name, Type, ProductCount, CostPrice, Manufacturer, Price /* Делаем выборку параметром из... */
FROM Products /* ... таблицы Products. */
WHERE ProductCount = 0; /* Говорим, что ProductCount должен быть равен нулю. */

DELETE FROM Products /* Удаляем ту запись из таблицы Products, */
WHERE ProductCount = 0; /* которая равна нулю. И, соответственно, переносим её в таблицу Archive. */

END; /* Закрываем триггер. */