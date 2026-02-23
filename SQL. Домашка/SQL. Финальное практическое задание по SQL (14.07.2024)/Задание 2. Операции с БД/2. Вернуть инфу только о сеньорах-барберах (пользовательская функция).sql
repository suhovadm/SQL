-- 2. Вернуть информацию о всех сеньорах-барберах.

create function dbo.GetSeniorBarbers() -- Создаём пользовательскую функцию, задаём имя.

returns table as return -- Говорим, чтобы результат вернулся таблицей.

select * from Barbers where Position = 'senior_barber'
-- Вернуть всё из таблицы Barbers, где столбец Position = 'senior_barber'.
-- Запустить функцию.

go -- Тормозим цикл, создаём функцию.
