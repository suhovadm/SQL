-- 1. Создайте полную (full backup) резервную копию.

backup database SportMaster -- Говорим: "сделать бэкап БД SportMaster"
to disk = 'F:\SportMaster.bak' -- Куда? На диск F:\ в файл SportMaster.bak
with init; -- Перезаписывает существующую резервную копию без проверки.
