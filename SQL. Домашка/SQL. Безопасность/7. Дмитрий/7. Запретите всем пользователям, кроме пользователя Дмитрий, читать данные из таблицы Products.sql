-- 7. Запретите всем пользователям, кроме пользователя с логином Дмитрий, читать данные из таблицы альбомов.
-- В нашем случае, будет не таблица альбомов, а таблица Products.

use SportMaster; -- Заряжаем БД.
alter role db_datareader add member Dmitry; -- Выдаём права на чтение только для Дмитрия.

-- Для всех остальных убираем. То есть, они не смогут даже зайти в таблицу Products.
-- Делаем исключение только для пользователей Administrator и sa.
deny select on Products to David; 
deny select on Products to Konstantin; 
deny select on Products to Mark; 
deny select on Products to Oleg; 
deny select on Products to Olga;

-- Дополнительно, также залочим для Дмитрия все остальные таблицы, чтобы не мешались.
-- Оставим ему только Products с атрибутами "только чтение".
deny select on Archive to Dmitry;
deny select on Clients to Dmitry;
deny select on Employees to Dmitry;
deny select on Employees_Archive to Dmitry;
deny select on History to Dmitry;
deny select on LastUnit to Dmitry;
deny select on Storage to Dmitry;