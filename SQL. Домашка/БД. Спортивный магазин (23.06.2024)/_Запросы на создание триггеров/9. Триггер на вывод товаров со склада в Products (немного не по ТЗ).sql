/* 9. При добавлении нового товара триггер проверяет его наличие на складе, */
/* если такой товар есть и новые данные о товаре совпадают с уже существующими данными, */
/* вместо добавления происходит обновление информации о количестве товара. */
/* Здесь сделано немного не по ТЗ. Если товары занесены, или обновлены на складе (Storage), */
/* то триггер автоматически подтянет их в рабочую таблицу продавца - Products, тем самым продублировав их. */

CREATE TRIGGER Update_Storage_To_Products /* Создаём триггер, даём название. */

ON Storage /* Вешаем триггер на таблицу "Склад". */

AFTER INSERT, UPDATE /* Говорим, чтобы срабатывал после вставки и апдейта. */

AS BEGIN /* Включаем триггер. */

/* --- БЛОК UPDATE. --- */
UPDATE Products 
SET Name = inserted.Name, Type = inserted.Type, ProductCount = inserted.ProductCount, CostPrice = inserted.CostPrice, Manufacturer = inserted.Manufacturer, Price = inserted.Price 
FROM Products INNER JOIN inserted ON Products.Name = inserted.Name; 
/* Обновляем данные в Products, от Name до Price. Обновление идёт с вставленными строками из Storage. */

/* --- БЛОК INSERT. --- */
INSERT INTO Products (Name, Type, ProductCount, CostPrice, Manufacturer, Price) /* Добавление n-ых данных в таблицу Products. */
SELECT Name, Type, ProductCount, CostPrice, Manufacturer, Price /* Выбираем n-e данные, которые хотим вставить. В нашем случае - все. */

FROM inserted /* Откуда? Из вставленных строк таблицы Storage. */

/* Условие. Добавление (вставка) данных в таблицу Products, если нет записи с таким же именем в поле Name. */
/* То есть, перед добавлением в таблицу Products идёт проверка, на то, есть там такая запись, или нет. */
/* Если запись есть, то новая запись добавлена НЕ будет, если записи нет - будет добавлена (вставлена) новая. */
WHERE NOT EXISTS (SELECT 1 
		  FROM Products 
                  WHERE Products.Name = inserted.Name);

END; /* Закрываем триггер. */