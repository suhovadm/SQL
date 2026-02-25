-- 4. Пользовательскаяфункция возвращает дату, когда общая
-- сумма продаж за день была максимальной.

create function dbo.GetMaxSalesDate() -- Создаём функцию, задаём имя.

returns date -- Возвращаем дату.

as begin -- Запускаем.

-- !!! Group by DateOfSale обязательно, иначе выдаст огромную партянку ошибок !!!
return (select top 1 DateOfSale from Sales group by DateOfSale order by SUM(Total) desc)
-- SELECT TOP 1 - выбираем только одну строку с самым высоким значением. В нашем случае, мы выбираем только одну дату продажи.
-- DateOfSales from Sales - выбираем дату продажи из таблицы Sales.
-- Order by SUM(Total) desc - сортировка столбцу Total в убывающем порядке (desc).
-- Таким образом, мы выберем только ту дату, где сумма продаж была самой высокой.

end -- Закрываем.
go -- Тормозим цикл.

select dbo.GetMaxSalesDate() as 'Максимальная сумма продаж' -- Запускаем, делаем префикс.