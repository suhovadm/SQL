-- 4. Создаём таблицу BarberFeedbacks 
-- Таблица с фидбеком о барберах.

create table BarberFeedbacks (

feedback_id int -- ID-шник записи с фидбеком.
PRIMARY KEY, -- первичный ключ.
barber_id int, -- ID-шник барбера.
client_id int, -- ID-шник клиента.
feedback_text text, -- Текст с отзывом.
rating varchar(20), -- Оценка барберу словами.
FOREIGN KEY (barber_id) references Barbers(barber_id),
-- Внешний ключ. Его цепляем к таблице Barbers(barber_id)
FOREIGN KEY(client_id) references Clients(client_id)
-- Внешний ключ. Его цепляем к таблице Clients(client_id)

);