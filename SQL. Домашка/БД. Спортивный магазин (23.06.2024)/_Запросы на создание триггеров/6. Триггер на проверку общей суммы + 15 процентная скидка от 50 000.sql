CREATE TRIGGER TOTAL_DISCOUNT /* Создаём триггер, даём ему имя. */

ON Sales /* Накатываем триггер на таблицу Sales. */

AFTER UPDATE, INSERT /* Говорим, чтобы срабатывал после апдейта таблицы и вставки в неё. Здесь 100% должен быть AFTER, а не INSTEAD. */

AS BEGIN /* Включаем триггер. */

SET NOCOUNT ON; /* Отключает вывод количества строк, увеличивает производительность. */

/* Объявляем переменные @Total и @DiscountPercent с параметрами int для целочисленных. */
DECLARE @Total int;
DECLARE @DiscountPercent int;

SELECT @Total = SUM(Price * Quantity) /* Считаем общую стоимость покупок, перемножаем цену на количество и сохраняем в переменную @Total. */
FROM inserted; /* Берём данные из таблицы inserted. */

UPDATE Sales
	SET Total = @Total /* UPDATE - обновляем столбец Total в таблице Sales на значение переменной @Total, которую мы обозначили выше. */
	FROM Sales
	INNER JOIN inserted ON Sales.Id = inserted.Id; /* В нашем случае, для строк Id в таблицах Sales и inserted. */

IF @Total >= 50000 /* Если переменная @Total больше или равна 50000, то ... */
BEGIN
    SET @DiscountPercent = 15; /* Устанавливаем размер скидки через переменную @DiscountPercent. */
END /* END ELSE - это как IF ELSE в Python. */
ELSE

BEGIN /* Если @Total меньше 50000 - выставляем @DiscountPercent в ноль, то есть скидки нет. */
	SET @DiscountPercent = 0;
END

/* Возможно, последняя часть с апдейтом лишняя. Но всё работает. */

UPDATE Sales /* Обновляем столбцы DiscountPercent и Total в таблице Sales. То есть применяем скидку и общую сумму покупки. */
    SET DiscountPercent = @DiscountPercent,
		Total = @Total
    FROM Sales
    INNER JOIN inserted ON Sales.Id = inserted.Id;

END; /* Закрываем триггер. */
