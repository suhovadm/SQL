-- 5. Проверить является ли пользователь с логином Марк членом серверной роли sysadmin.

-- Вариант #1.
SELECT IS_SRVROLEMEMBER ('sysadmin', 'Mark') as sysadmin; -- 1 - да, 0 - нет.

-- Вариант #2.
EXEC sp_helpsrvrolemember 'sysadmin'; -- Показать ВСЕХ членов серверной роли sysadmin.
-- Таким образом, можно проверить, окажется ли среди них Марк.