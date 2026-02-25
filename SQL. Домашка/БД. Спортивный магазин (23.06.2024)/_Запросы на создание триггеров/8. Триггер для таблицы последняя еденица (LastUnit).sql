/* 8. При продаже проверять количество товара в наличии.
Если осталась одна единица товара, необходимо внести информацию об этом товаре в таблицу «Последняя Единица». */

/* В LastUnit заносится копия, товар туде НЕ перемещается. */

CREATE TRIGGER LastUnit_Create /* Создаём триггер, даём название. */

ON Products /* Вешаем его на таблицу Products. */

AFTER INSERT, UPDATE /* Говорим, чтобы срабатывал после INSERT и UPDATE. Здесь не даёт вставить INSTEAD, только AFTER. */

AS BEGIN /* Запускаем. */

IF EXISTS (SELECT * FROM inserted WHERE ProductCount = 1) 
/* Проверяем, что в таблице inserted ProductCount = 1. */

BEGIN INSERT INTO LastUnit(Name, Type, ProductCount, CostPrice, Manufacturer, Price) /* Вставляем n-e данные в таблицу LastUnit. */
SELECT Name, Type, ProductCount, CostPrice, Manufacturer, Price /* Выбираем данные из таблицы inserted. */
FROM inserted WHERE ProductCount = 1 /* В нашем случае, только те, где ProductCount = 1. */

END 
END; /* Два END-a. Один для вставки, второй для самого триггера. */