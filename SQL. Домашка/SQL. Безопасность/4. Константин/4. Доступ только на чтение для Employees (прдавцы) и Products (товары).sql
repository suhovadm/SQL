-- 4. Предоставьте доступ только на чтение таблиц с информацией 
-- о продавцах, товарах в наличии пользователю с логином Константин.
-- В данном случае, Константин, будет видеть всего две таблицы - Employees и Products.
-- Атрибуты у каждой выставлены на read only (только чтение).

use SportMaster; -- Заряжаем нашу БД.
alter role db_datareader add member Konstantin; -- Выдаём роль "только чтение" Константину.

-- Даём доступ Константину на просмотр (read only) на таблицы Employees (продавцы) и Products (товары).
-- Редактировать он их не сможет, только смотреть.
grant select on Employees to Konstantin;
grant select on Products to Konstantin;

-- И лочим все остальные таблицы, кроме Employees (продавцы) и Products (товары).
deny select on Archive to Konstantin;
deny select on Clients to Konstantin;
deny select on Employees_Archive to Konstantin; 
deny select on History to Konstantin;
deny select on LastUnit to Konstantin;
deny select on Sales to Konstantin;
deny select on Storage to Konstantin;