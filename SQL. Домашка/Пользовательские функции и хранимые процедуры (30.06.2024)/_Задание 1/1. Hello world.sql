-- 1. Хранимая процедура Hello World!

create procedure HelloWorld -- Создаём процедуру, даём имя.

as begin -- Запускаем.

print ('Hello World!') -- Принтуем.

end -- Закрываем.
go -- Тормозим цикл.

exec HelloWorld -- Выполняем.