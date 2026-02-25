-- 2. Хранимая процедура показывает информацию о всех покупателях.

create procedure Get_Customer_Info -- Создаём процедуру, задаём имя. 

as begin -- Запускаем.

select CustomerInfo -- Делаем выборку по колонке CustomerInfo, т.е. инфа о покупателе.

from Sales -- Цепляем процедуру к таблице Sales.

end -- Закрываем.
go -- Тормозим.

exec Get_Customer_Info -- Запускаем.