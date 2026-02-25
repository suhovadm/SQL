/* 1. При продаже товара, заносить информацию о продаже в
таблицу «История». Таблица «История» используется для
дубляжа информации о всех продажах. */

CREATE TRIGGER salesHistory /* salesHistory - имя триггера, оно может быть любым. */

ON Sales /* Здесь пишем таблицу, на которую ставится триггер. */

AFTER INSERT /* Триггер сработает только после того, как в Sales будет добавлена новая запись. */

AS BEGIN /* AS BEGIN - запускаем сам триггер. */
	
	INSERT INTO History (Name, Price, Quantity, DateOfSale, SalerInfo, CustomerInfo) /* Закидывает n-е данные в History. */
	SELECT Name, Price, Quantity, DateOfSale, SalerInfo, CustomerInfo /* Выбирает n-е данные из таблицы insterted ниже. */
	FROM inserted; /* Временная таблица inserted, которая служит, по сути, буфером обмена. */

END /* Конец скрипта. */