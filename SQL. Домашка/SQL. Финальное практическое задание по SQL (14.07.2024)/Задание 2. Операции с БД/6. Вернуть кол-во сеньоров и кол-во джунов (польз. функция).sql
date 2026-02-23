-- 6. Вернуть количество синьор-барберов и количество джуниор-барберов.

create function dbo.GetSeniorJuniorBarbers()
-- Создаём пользовательскую функцию, задаём ей имя.

returns table as return -- Возвращаем результат таблицей.

( select -- Делаем запрос к БД
sum(case when Position = 'senior_barber' then 1 else 0 end) as 'Количество сеньоров',
-- sum - посчитать сумму.
-- case - условное выражение.
-- Если значение в столбце Position = 'senior_barber', тогда 1,
-- если не равно, тогда 0. Таким образом, мы проверяем, есть ли в столбце
-- Position такие-то барберы и складываем их с помощью sum.
sum(case when Position = 'junior_barber' then 1 else 0 end) as 'Количество джунов'
-- Здесь всё аналогично.
from Barbers -- Откуда? Из таблицы Barbers.
)

go -- Тормозим цикл. Создаём пользовательскую функцию.

select * from dbo.GetSeniorJuniorBarbers() -- Запускаем без параметров,
-- так как у нас нет входяшки.

go

