-- 6. Проведите восстановление из полной резервной копии

use master; -- Сперва переключаемся на базу данных мастер. Это нужно, чтобы не было
-- ошибки о том, что наша БД уже используется в этом сеансе.

restore database SportMaster -- Восстановить БД SportMaster
from disk = 'F:\SportMaster.bak' -- Откуда? С диска F:\ из файла SportMaster.bak
with replace -- С заменой.