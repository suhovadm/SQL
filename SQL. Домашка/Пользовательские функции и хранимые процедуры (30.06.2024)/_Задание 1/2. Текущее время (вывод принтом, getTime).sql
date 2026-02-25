-- 2. Хранимая процедура возвращает информацию о текущем времени.

create procedure getTime -- Создаём процедуру, задаём имя.

as begin -- Запускаем.

declare @currentTime time -- Объявляем переменную, тип переменной time.
set @currentTime = CONVERT(time, SYSDATETIME()) -- Присваиваем переменной @currentTime значение текущего времени,
-- полученного с помощью функции SYSDATETIME() и преобразуем всё это в обычный TIME с помощью CONVERT.

print 'Текущее время: ' + convert(varchar(8), @currentTime) -- Принтуем 'Текущее время: ' + значение переменной @currentTime.
-- CurrentTime преобразовываем в строку с помощью того же CONVERT.
-- varchar - строковый/символьный параметр, т.е. буквы и цифры.

end -- Закрываем.
go -- Тормозим цикл.

exec getTime -- Выполняем.