-- 7. Создаём таблицу с архивом посещений клиентов.

create table Clients_Archive ( 

Clients_Archive_id int -- ID-шник самой записи.
PRIMARY KEY, -- Первичный ключ.
client_id int, -- ID-шник клиента.
barber_id int, -- ID-шник барбера.
service_id int, -- ID-шник услуги.
date date, -- Дата.
total_price int, -- Общая стоимость (итого).
feedback_id int, -- ID-шник записи с фидбеком.
FOREIGN KEY (client_id) references Clients(client_id),
-- Внешний ключ. Его цепляем на таблицу Clients(client_id)
FOREIGN KEY (barber_id) references Barbers(barber_id), 
-- Внешний ключ. Его цепляем на таблицу Barbers(barber_id)
FOREIGN KEY (service_id) references Services(service_id), 
-- Внешний ключ. Его цепляем на таблицу Services(service_id)
FOREIGN KEY (feedback_id) references ClientFeedbacks(feedback_id) 
-- Внешний ключ. Его цепляем на таблицу ClientFeedbacks(feedback_id)

);