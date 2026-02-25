-- 3. Пользовательская функция возвращает общую сумму продаж на конкретную дату. 
-- Дата продажи передаётся в качестве параметра.

create function dbo.Get_Total_Sales_By_Date -- Создаём функцию, задаём имя.

(@Date date) -- Входной параметр функции, тип date.

returns int -- Возвращаем целочисленное значение.

as begin -- Запускаем.

    return (select SUM(Price * Quantity) -- Возвращаем сумму (Цену умножить на Количество) 
	from Sales where DateOfSale = @Date) -- из таблицы Sales где столбец DateOfSales = переменной @Date

end -- Закрываем.
go -- Тормозим цикл.

select dbo.Get_Total_Sales_By_Date('01-01-2023') as 'Выручка на эту дату'; -- Запускаем, задаём дату, даём префикс.