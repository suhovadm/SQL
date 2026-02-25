/* 4. Клиенты (Clients). */

CREATE TABLE Clients ( Id int PRIMARY KEY IDENTITY(1,1), /* Создаём таблицу Клиенты (Clients). */
Name nvarchar(100), /* ФИО клиента. */
email nvarchar(100), /* Электронная почта клиента. */
Phone varchar(20), /* Телефон клиента. */
Sex nvarchar(50), /* Пол клиента. */
History nvarchar(100), /* История заказов. */
DiscountPercent int, /* Процент скидки для клиента. */
maillist nvarchar(50) ); /* Подписан ли клиента на почтовую рассылку. */
