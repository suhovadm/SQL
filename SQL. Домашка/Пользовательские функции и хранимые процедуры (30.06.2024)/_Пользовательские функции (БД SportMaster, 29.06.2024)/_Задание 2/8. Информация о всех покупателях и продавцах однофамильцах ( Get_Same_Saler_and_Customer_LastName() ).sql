-- 8. Пользовательская функция возвращает информацию о всех покупателях и продавцах однофамильцах.

create function dbo.Get_Same_Saler_and_Customer_LastName() -- Создаём функцию, задаём имя.

returns table as return -- Говорит нам о том, что результат вернётся таблицей.

( select * from Sales where CustomerInfo = SalerInfo)
-- Выбрать всё из таблицы Sales где таблица CustomerInfo = SalerInfo.
-- Если переделывать таблицу, то здесь, вместо CustomerInfo = SalerInfo
-- нужно писать CustomerLastName = SalerLastName, чтобы сравнивать их по фамилиям.

go

select * from dbo.Get_Same_Saler_and_Customer_LastName() -- Запускаем, в скобки ничего не передаём, так как
-- у нас нет входного параметра функции.

go -- Все точки с запятой меняем на go, дабы не было проблем с выводом.