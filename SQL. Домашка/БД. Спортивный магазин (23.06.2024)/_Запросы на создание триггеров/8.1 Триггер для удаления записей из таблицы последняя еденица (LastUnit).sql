/* 8.1 Дополнение для таблицы LastUnit. */
/* Автоматически сносит записи из таблицы LastUnit, если в таблице Products */
/* появилось больше 1 еденицы товара. */

CREATE TRIGGER LastUnit_Remove /* Удаляет еденички из таблицы LastUnit */

ON Products /* Накатываем триггер на Products, НЕ на LastUnit !!! */

AFTER INSERT, UPDATE /* Говорим, чтобы срабатывал после втсавки и апдейта. */

AS BEGIN /* Включаем. */

DECLARE @ProductCount int; /* Объявляем переменную @ProductCount типа int для хранения количества продуктов. */
 
SELECT @ProductCount = ProductCount /* Присваиваем переменную @ProductCount. */
FROM inserted; /* inserted - временная таблица. */

IF @ProductCount > 1 /* Если количество продуктов больше 1, то ... */
BEGIN
    DELETE FROM LastUnit /* Удаляем из таблицы LastUnit, ... */
    WHERE Id = (SELECT MAX(Id) FROM LastUnit); /* где id = максимальному Id значению из таблицы LastUnit (удаление последней записи). */

END
END; /* Два END-a в конец. */