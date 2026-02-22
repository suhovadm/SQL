-- 2. Разрешите пользователю с логином Дэвид получать информацию только о продавцах.
-- Выполняем запрос под админом. При перезаходе под Дэвидом, в любой таблице, кроме
-- Employees получим белый лист. Саму таблицу Employees можно редактировать, так как
-- Дэвид db_owner.

grant select on Employees to David; -- Даём возможность просматривать содержимое таблицы Employees.

-- Лочим все остальные таблицы. Они попрежнему будут висеть у Дэвида, но работать не будут.
deny select on Archive to David;
deny select on Clients to David;
deny select on Employees_Archive to David; 
deny select on History to David;
deny select on LastUnit to David;
deny select on Sales to David;
deny select on Storage to David;