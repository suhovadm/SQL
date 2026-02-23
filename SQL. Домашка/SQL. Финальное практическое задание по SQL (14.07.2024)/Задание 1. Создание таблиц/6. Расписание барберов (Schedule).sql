-- 6. Создаём таблицу с расписанием барберов.

create table Schedule ( 

schedule_id int -- ID-шник с записью о расписании.
PRIMARY KEY, -- Первичный ключ.
barber_id int, -- ID-шник барбера.
date date, -- Дата.
time time, -- Время.
client_id int, -- ID-шник клиента.
FOREIGN KEY (barber_id) references Barbers(barber_id),
-- Внешний ключ. Его цепляем к таблице Barbers(barber_id)
FOREIGN KEY (client_id) references Clients(client_id) 
-- Внешний ключ. Его цепляем к таблице Clients(client_id)

);
