-- 5. Хранимая процедура показывает полную информацию о всех продажах в некотором временном сегменте.
-- Дата старта и конца сегмента передаётся в качестве параметра.

create procedure Get_Sales_By_Date_Range -- Создаём процедуру, задаём имя.

-- Входные параметры процедуры. Начальная дата, конечная дата, тип данных: date.
@StartDate date, 
@EndDate date

as begin -- Запускаем.

-- Делаем полную выборку всех параметров из таблицы Sales.
-- Если нужно достать что-то конкретное, говорим:
-- select Id, Name, Price, Quantity, DateOfSale, SalerInfo, CustomerInfo, Total, DiscountPercent 
select * from Sales 

-- Где DateOfSale (колонка в таблице Sales) больше или равна переменной @SartDate
-- и меньше или равна @EndDate, т.е. задаём диапазон.
where DateOfSale >= @StartDate AND DateOfSale <= @EndDate 

end -- Закрываем.
go -- Тормозим цикл.

exec Get_Sales_By_Date_Range @StartDate = '01-01-2023', @EndDate = '23-06-2024' -- Выполняем.
-- Через переменные @StartDate и @EndDate задаём диапазон.
