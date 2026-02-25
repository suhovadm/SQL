/* 3. Не позволять регистрировать уже существующего клиента. При вставке проверять наличие клиента по ФИО и email. */

CREATE TRIGGER Reject_Clients /* Создаём триггер с названием RejectClients. */
ON Clients /* Вешаем его на Clients. */

AFTER INSERT /* Здесь лучше AFTER INSERT, а не INSTEAD OF INSERT. С подменой работает только какой-то один триггер. */

AS BEGIN /* Запускаем триггер. */

IF EXISTS (SELECT 1 FROM inserted INNER JOIN Clients ON inserted.Name = Clients.Name OR inserted.email = Clients.email) 
/* Объединяем буфер обмена с таблицей Clients и делаем проверку на Name и email в Clients. */

BEGIN RAISERROR('Такой клиент уже существует в базе данных!', 16, 1)
/* 16, 1 - критическая ошибка, прерывание текущего запроса. */
/* 0, 1 - информационная ошибка. */
/* Показываем ошибку, что такой клиент уже есть в БД. */

END /* !!! В данном случае, обязательно, иначе не даст добавлять новых пользователей в Clients !!! */
ELSE /* !!! В данном случае, обязательно, иначе не даст добавлять новых пользователей в Clients !!! */

/* Здесь, BEGIN перед INSERT тоже. */
BEGIN INSERT INTO Clients (Name, email, Phone, Sex, History, DiscountPercent, maillist) /* Добавление n-х значений в таблицу Clients. */
SELECT Name, email, Phone, Sex, History, DiscountPercent, maillist /* Выбираем, что конкретно добавлять в Clients, если дубликата нет. */

FROM inserted /* Говорим откуда добавлять. В нашем случае - из буфера обмена. */

END 
END /* Два END-a. Один для ошибки, второй для самого триггера. */