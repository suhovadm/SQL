/* 10. При увольнении сотрудника, триггер переносит информацию
об уволенном сотруднике в таблицу «Архив сотрудников». */

CREATE TRIGGER Fired_and_Move_To_Archive /* Создаём триггер, даём ему имя. */

ON Employees /* Вешаем его на таблицу Employees. */

AFTER DELETE /* Говорим, чтобы срабатывал после команды Delete. */

AS BEGIN /* Включаем. */

INSERT INTO Employees_Archive (Name, JobTitle, Employmentdate, Sex, Salary) /* Вставляем в Employees_Archive n-e параметры. */
SELECT Name, JobTitle, Employmentdate, Sex, Salary /* Выбираем n-e параметры ... */
FROM deleted; /* ... из временной таблицы deleted. */

END; /* Закрываем триггер. */