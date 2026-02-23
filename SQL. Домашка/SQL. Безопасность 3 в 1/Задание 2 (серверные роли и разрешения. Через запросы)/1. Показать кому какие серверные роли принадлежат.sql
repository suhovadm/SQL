-- 1. Показать список серверных ролей.
-- Кому какие серверные роли принадлежат, по логинам.

-- Выбираем два столбца из результатов запроса - имя пользователя и роль сервера.
-- Сразу же делаем префиксы для этих столбцов.
select username.name as 'Имя пользователя',
server_role.name as 'Роль сервера'

-- Указываем системную таблицу, из которой будут выбираться данные - sys.server_principals.
-- Указываем псевдоним для этой таблицы - username, чтобы к ней было удобно обращаться.
from sys.server_principals username 

-- Объединяем системную таблицу sys.server_principals и системную таблицу sys.server_role_members
-- по двум ключам: principal_id (в таблице sys.server_principals) и member_principal_id (в таблице
-- sys.server_role_members).
join sys.server_role_members srm on username.principal_id = srm.member_principal_id

-- Затем объединяем результат предыдущего объединения с таблицей sys.server_principals по
-- ключам role_principal_id и principal_id.
join sys.server_principals server_role on srm.role_principal_id = server_role.principal_id

-- Фильтруем данные, оставляя только те строки, где тип данных пользователя = SQL_LOGIN,
-- т.е. пользователи, которые могут входить в систему с помощью SQL Server аутентификации.
where username.type_desc = 'SQL_LOGIN'

-- Сортируем результаты по столбцу 'Имя пользователя'.
order by 'Имя пользователя';