-- 1. Вернуть инфу о всех барберах салона.

create function dbo.GetAllBarbers() -- Создаём функцию, задаём имя.

returns table as return -- Говорим, чтобы результат вернулся таблицей.

select * from Barbers -- Выбрать всё из таблицы Barbers. Запустить запрос.

go -- Тормозим цикл, создаём функцию.