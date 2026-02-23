-- 3. Вернуть информацию о всех барберах, 
-- которые могут предоставить услугу традиционного бритья бороды.

create function dbo.GetTrulyBoroda() -- Создаём пользовательскую функцию, задаём имя.

returns table as return -- Говорим, чтобы результат вернулся таблицей.

-- Сначала выбираем столбцы BarberName, BarberLastname, Phone и email из таблицы
-- Barbers, т.е. спрашиваем, кто из барберов может это сделать. 
select 
BarberName as 'Имя', 
BarberLastname as 'Фамилия', 
Phone as 'Телефон', 
email as 'Электронная почта' 
from Barbers where barber_id in -- where barber_id - это вложенный запрос.
-- Поскольку barbed_id находится и в Barbers и в Services (услуги),
-- то мы через него можем выйти на service_name (название услуги).
( select barber_id from Services where service_name = 'Традиционное бритье бороды' )
-- В подзапросе говорим выбрать barber_id из Services (услуги), где service_name = 
-- 'Традиционное брите бороды'.
-- Если нужно посмотреть только ID-шники барберов - выделяем и запускаем только
-- строчку ( select barber_id from Services where service_name = 'Традиционное бритье бороды' )
-- Если надо посмотреть всю инфу о них - выделяем и запускаем весь блок select вверху.

go -- Тормозим цикл, создаём пользовательскую функцию.