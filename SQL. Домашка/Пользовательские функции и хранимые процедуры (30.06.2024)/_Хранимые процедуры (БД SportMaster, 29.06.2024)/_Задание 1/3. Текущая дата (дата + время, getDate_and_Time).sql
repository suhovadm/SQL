-- 3. Хранимая процедура возвращает информацию о текущей дате и времени.
-- Дата и время.

create procedure getDate_and_Time

as begin

	print (getdate())
	
end
go

exec getDate_and_Time