/* 8. Склад (Storage). */

CREATE TABLE Storage ( Id int PRIMARY KEY IDENTITY(1,1), /* Создаём таблицу Склад (Storage). */
Name nvarchar(100), /* Название проданного товара. */
Type nvarchar(100), /* Вид товара. */
ProductCount int, /* Количество товара в наличии. */
CostPrice money, /* Себестоимость. */
Manufacturer nvarchar(100), /* Производитель. */
Price money ); /* Цена продажи. */