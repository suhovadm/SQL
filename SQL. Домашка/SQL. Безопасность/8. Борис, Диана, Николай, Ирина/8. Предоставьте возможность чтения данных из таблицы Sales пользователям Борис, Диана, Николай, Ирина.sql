-- 8. Предоставьте возможность чтения данных из таблицы стилей
-- пользователям с логинами: Борис, Диана, Николай, Ирина.
-- В нашем случае, таблица стилей - это Sales.

use SportMaster; -- Заряжаем БД.
-- Даём права на чтение Борису, Диане, Николаю и Ирине.
alter role db_datareader add member Boris;
alter role db_datareader add member Diana;
alter role db_datareader add member Nikolay;
alter role db_datareader add member Irina;

grant select on Sales to Boris, Diana, Nikolay, Irina; -- Даём разрешение на просмотр данных в таблице Sales.

-- Лочим всё, кроме Sales для Бориса, Дианы, Николая и Ирины.
deny select on Archive to Boris, Diana, Nikolay, Irina;
deny select on Clients to Boris, Diana, Nikolay, Irina;
deny select on Employees to Boris, Diana, Nikolay, Irina;
deny select on Employees_Archive to Boris, Diana, Nikolay, Irina;
deny select on History to Boris, Diana, Nikolay, Irina;
deny select on LastUnit to Boris, Diana, Nikolay, Irina;
deny select on Products to Boris, Diana, Nikolay, Irina;
deny select on Storage to Boris, Diana, Nikolay, Irina;
