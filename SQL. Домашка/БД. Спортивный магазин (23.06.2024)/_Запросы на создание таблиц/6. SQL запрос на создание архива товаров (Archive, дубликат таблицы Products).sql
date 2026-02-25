/* 6. Архив (Archive). */

CREATE TABLE Archive ( Id int PRIMARY KEY IDENTITY(1,1), /* Создаём таблицу Архив (Archive). */
Name nvarchar(100), /* Название проданного товара. */
Type nvarchar(100), /* Вид товара. */
ProductCount int, /* Количество товара в наличии. */
CostPrice money, /* Себестоимость. */
Manufacturer nvarchar(100), /* Производитель. */
Price money ); /* Цена продажи. */