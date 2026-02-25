-- 3. Хранимая процедура показывает полную информацию о продажах.

create procedure Get_Sales_Full_Info -- Создаём процедуру, задаём имя.

as begin -- Запускаем.

select * from Sales 
-- Делаем выборку по всем именам столбцов, т.е. достаём все значения из таблицы Sales.
-- Если нужно достать какие-то конкретные значения, то можно их просто перечислить:
-- select Id, Name, Price, Quantity, DateOfSale, SalerInfo, CustomerInfo, Total, DiscountPercent

end -- Закрываем.
go -- Тормозим цикл.

exec Get_Sales_Full_Info -- Запускаем процедуру.
