-- 1. Создаём таблицу с Барберами.

create table Barbers ( 

barber_id int -- ID-шник.
PRIMARY KEY, -- Первичный ключ.
BarberName varchar(50), -- Имя барбера.
BarberLastName varchar(50), -- Фамилия барбера.
Sex varchar(10), -- Пол.
Phone varchar(20), -- Телефон.
email varchar(50), -- email.
Birthdate date, -- Дата рождения.
Employmentdate date, -- Дата трудоустройства.
Position varchar(20), -- Позиция.

);
