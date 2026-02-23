-- 7. Вернуть информацию о постоянных клиентах. 
-- Критерий постоянного клиента: был в салоне заданное количество раз. 
-- Количество передаётся в качестве параметра.

create function dbo.GetRegularClients 
-- Создаём пользовательскую функцию, задаём имя.

( @visitCount int ) -- int-овая входяшка.

returns table as return -- Говорим, чтобы вернул результат таблицей.

( select ClientName as 'Имя', 
ClientLastName as 'Фамилия', 
Phone as 'Телефон', 
email as 'Электронная почта'
from Clients 
-- Делаем выборку по столбцам ClientName, ClientLastName, Phone, email
-- из таблицы Clients.

group by ClientName, ClientLastName, Phone, email 
having count(client_id) >= @visitCount )
-- Группируем ClientName, ClientLastName, Phone, email
-- having count - наложение условия на группы данных.
-- В данном случае проверяется количество записей по ID-шнику клиента (client_id).
-- То есть, мы сравниваем ID-шник клиента с нашей входящей int-овой переменной
-- @visitCount, в неё (в @visitCount мы напишем количество постоянных клиентов,
-- которых нам нужно проверить, т.е. сколько человек у нас в постоянных клиентах).

go -- Тормозим цикл, создаём пользовательскую функцию.

select * from dbo.GetRegularClients(5) -- Запускаем, задаём кол-во постоянных клиентов.

go