-- 2. Показать разрешения серверных ролей.

-- Permission - разрешение.

-- Выбираем столбцы role.name, permission.permission_name, permission.state_desc.
select
    role.name as 'Роль сервера',
    permission.permission_name as 'Название разрешения серверной роли',
    permission.state_desc as 'Состояние разрешения' -- (desc - description // описание)

-- Откуда? Из системной таблицы sys.server_permissions.
-- Задаём ей префикс permission.
from sys.server_permissions permission

-- Объединяем системную sys.server_permissions и sys.server_principals
-- по условию, где значение grantee_principal_id в таблице sys.server_permissions
-- (префикс permission, первая после ON ниже) равно значению principal_id
-- в системной таблице sys.server_principals (у неё префикс role).
join sys.server_principals role ON permission.grantee_principal_id = role.principal_id
