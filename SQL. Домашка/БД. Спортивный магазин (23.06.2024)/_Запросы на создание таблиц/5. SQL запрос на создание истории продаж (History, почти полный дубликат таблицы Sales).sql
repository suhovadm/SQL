/* 5. История (History). */
/* Является почти полной копией таблицы Продажи (Sales). Хранит записи о продажах. */
/* Здесь отсутствуют колонки Total int и DiscountPercent int. */

CREATE TABLE History ( Id int PRIMARY KEY IDENTITY(1,1), /* Создаём таблицу История (History). */
Name nvarchar(100), /* Название проданного товара. */
Price int, /* Цена продажи. */
Quantity int, /* Количество. */
DateOfSale date, /* Дата продажи. */
SalerInfo nvarchar(100), /* Информация о продавце. */
CustomerInfo nvarchar(100) ); /* Информация о покупателе. */