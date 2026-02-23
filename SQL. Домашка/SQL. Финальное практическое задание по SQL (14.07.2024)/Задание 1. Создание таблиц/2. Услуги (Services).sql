-- 2. Создаём таблицу с Услугами.

create table Services (

service_id int -- ID-шник услуги.
PRIMARY KEY, -- Первичный ключ.
barber_id int, -- ID-шник барбера.
service_name varchar(50), -- Название услуги.
price int, -- Цена.
duration int, -- Длительность услуги по времени.
FOREIGN KEY (barber_id) references Barbers(barber_id) 
-- Внешний ключ. Цепляем его к таблице Barbers(barber_id)

);