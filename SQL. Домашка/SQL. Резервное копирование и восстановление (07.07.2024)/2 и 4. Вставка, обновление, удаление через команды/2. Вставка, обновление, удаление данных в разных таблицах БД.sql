-- 2. Выполните операции по вставке, обновлению, удалению данных в разных таблицах базы данных.

-- Удаляем таблицу Salary (зарплата) из таблицы Employees.
alter table Employees drop column Salary;

-- Вставляем В столбец maillist (почтовая рассылка) 3 рандомных строки.
-- Таблица Clients.
insert into Clients (maillist)
values 
('test1'),
('test2'),
('test3');

-- Обновляем данные в таблице Storage (склад). 
update Storage set Name = 'Nike Airforce White' where Name = 'Nike AIRFORCE';
update Storage set Name = 'Nike Airforce Black' where Name = 'Nike BLACKFORCE';
update Storage set Name = 'Nike Airforce Red' where Name = 'Nike BLOODFORCE ONE';