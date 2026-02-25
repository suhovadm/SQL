/* 1. Товары (Products). */

CREATE TABLE Products ( Id int PRIMARY KEY IDENTITY(1,1), /* Создаём таблицу Товары (Products). */
Name nvarchar(100), /* Название проданного товара. */
Type nvarchar(100), /* Вид товара. */
ProductCount int, /* Количество товара в наличии. */
CostPrice money, /* Себестоимость. */
Manufacturer nvarchar(100), /* Производитель. */
Price money ); /* Цена продажи. */
