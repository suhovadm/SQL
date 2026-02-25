-- 5. Пользовательская функция возвращает информацию о всех продажах заданного товара.
-- Название товара передаётся в качестве параметра.

create function dbo.GetSalesByProductName -- Создаём функцию, задаём имя.

( @ProductName nvarchar(200) ) -- Входной параметр функции, тип nvarchar(200).
-- nvarchar лучше поставить побольше, так как название товара может быть неопределённо длинным.

returns table as return -- Говорит нам о том, что результат вернётся в виде таблицы.
( select * from Sales where Name = @ProductName ); -- Выбрать всё из таблицы Sales где Name = @ProductName.

go -- Тормозим цикл.

select * from dbo.GetSalesByProductName('Nike Airforce Black'); -- Запускаем. В скобках передаём точное название товара.