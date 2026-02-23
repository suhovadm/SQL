-- 5. Создаём таблицу ClientFeedback.
-- Таблица с фидбеком о клиентах.

create table ClientFeedbacks ( 

feedback_id int -- ID-шник записи с фидбеком о клиенте.
PRIMARY KEY, -- Первичный ключ.
client_id int, -- ID-шник клиента.
barber_id int, -- ID-шник барбера.
feedback_text text, -- Сама запись с отзывом.
rating varchar(20), -- Оценка клиенту словами.
FOREIGN KEY (client_id) references Clients(client_id),
-- Внешний ключ. Цепляем его к таблице Clients(client_id)
FOREIGN KEY (barber_id) references Barbers(barber_id) 
-- Внешний ключ. Цепляем его к таблице Barbers(barber_id)

);