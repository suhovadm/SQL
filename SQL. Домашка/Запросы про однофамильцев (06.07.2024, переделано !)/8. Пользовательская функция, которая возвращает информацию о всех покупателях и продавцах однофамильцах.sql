-- 8. Пользовательская функция, которая возвращает информацию о всех покупателях и продавцах однофамильцах.

-- В данном случае, просто объединены первый и второй запросы. Каждый запрос заканчивается запуском
-- через go и у них нет отдельной строчки для вызова, по типу такой: select * from dbo.All_Clients_and_Employees_Names(),
-- так как она вызовет только одну таблицу. Запуск пользовательской функции осуществляется просто через выделение
-- кода от select-a до select-a. Не очень удобно, зато работает...

create function dbo.All_Clients_and_Employees_Names() -- Создём функцию, задаём имя.

returns table as return -- Возвращаем результат таблицей.

-- _Первый вывод_
select -- Делаем выборку.

Clients.Name as 'Имя', 
Clients.email as 'email', 
Clients.Phone as 'Телефон клиента', 
Clients.Sex as 'Пол', 
Clients.History as 'История', 
Clients.DiscountPercent as 'Процент скидки', 
Clients.maillist as 'Почтовая рассылка'

from Clients where exists ( select 1 from Clients c2 where Clients.Name = c2.Name and c2.ID <> Clients.ID )
-- Ставим условие.

go -- Запускаем.

-- _Второй вывод_
select -- Делаем выборку.

Employees.Name as 'Имя', 
Employees.JobTitle as 'Должность', 
Employees.Employmentdate as 'Дата принятия на работу', 
Employees.Sex as 'Пол', 
Employees.Salary as 'Зарплата'

from Employees where exists ( select 1 from Employees e2 where Employees.Name = e2.Name and e2.ID <> Employees.ID )
-- Ставим условие.

go -- Запускаем.