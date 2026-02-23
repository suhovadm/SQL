-- 3. Создаём таблицу с Клиентами.

create table Clients ( 

client_id int -- ID-шник клиента.
PRIMARY KEY, -- Первичный ключ.
ClientName varchar(50), -- Имя клиента.
ClientLastName varchar(50), -- Фамилия клиента.
Phone varchar(15), -- Контактный телефон.
email varchar(50) -- Email клиента.

);
