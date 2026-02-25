-- 1. Хранимая процедура показывает информацию о всех продавцах.

create procedure Get_Sales_Info -- Создаём процедуру, задаём имя. 

as begin -- Запускаем.

select SalerInfo -- Делаем выборку по колонке SalerInfo, т.е. инфа о продавце.

from Sales -- Цепляем процедуру к таблице Sales.

end -- Закрываем.
go -- Тормозим.

exec Get_Sales_Info -- Запускаем.
