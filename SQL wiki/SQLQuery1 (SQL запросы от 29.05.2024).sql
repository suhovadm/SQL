select FirstName +' '+LastName as FullName
From dbo.Students1

/* 
cast() - преобразование типа данных.
convert() - 
*/

select 'Студент '+ LastName + 'recieves ' 
+ cast(Grants as nvarchar(10))
from Students1;

select 'Студент '+ LastName + 'recieves ' 
+ convert(nvarchar(10), Grants)
from Students1;

/* TOP - получает первые элементы(записи) таблицы в нужном количестве. */

SELECT TOP 20 PERCENT LastName, FirstName, BirthDate
from Students1;

SELECT DISTINCT FirstName /* Выводит только уникальные записи в столбце + сортировка. */
From Students1;

/* WHERE - ГДЕ. Предложение, после которого прописывается условие. */

SELECT Email
from Students1
WHERE id > 3

/* LEN() - длина. */

SELECT Grants
FROM Students1
WHERE LEN(Grants) > 4;

/* AND, OR - И, ИЛИ */

SELECT LastName
FROM Students1
WHERE MONTH(BirthDate) >= 9
AND MONTH(BirthDate) <= 11;
/* MONTH, YEAR, DAY */

SELECT LastName, BirthDate
FROM Students1
WHERE YEAR(BirthDate) % 2 = 0
AND DAY(BirthDate) % 2 <> 0; /* % - деление по модулю. % 2 <> 0 - это нечетное. */

SELECT LastName, FirstName
FROM Students1
WHERE Grants = 0; /* Проверка на ноль. */

/* ORDER BY - упорядочить информацию после выбора. */
/* ASC - сортировка по возрастанию. */
/* DESC - сортировка по убыванию. */

SELECT LastName, FirstName, BirthDate
from Students1
Order by BirthDate DESC, FirstName ASC; /* Сортировка по дате. */

/* IN - выборка. */
SELECT LastName, FirstName, BirthDate
From Students1
Where LastName IN ('Тыдыдын', 'Иванов', 'Петров');

/* BETWEEN - диапазон. */
SELECT LastName
FROM Students1
WHERE BirthDate BETWEEN '1999-01-01'
AND '2002-01-01';

/* Вывести всех студентов, имена которых начинаются на символ. */
SELECT LastName, FirstName
FROM Students1
WHERE FirstName BETWEEN 'А' and 'П'; 

/* like - поиск по текстовым полям таблиц 
% - любая последовательность символов.
_ - любой одиночный символ.
[] - задаём последовательность.
[^] - задаём последовательность отсутствия.
*/

SELECT LastName, FirstName
FROM Students1
WHERE FirstName Like 'П%' and LastName like '%в%';

/* Глобальные операторы. */
/* INSERT - вставка. */

INSERT INTO Students1(id, BirthDate, FirstName, LastName)
VALUES (13, '1666-01-01', 'Юля', 'Васильева')

SELECT *
from Students1 /* Проверить что добавилось в таблицу командой выше. */

/* update - изменение любой записи. */
update Students1
SET Grants += 500
WHERE Grants IS NOT NULL;

SELECT *
from Students1

/* delete - удалить записи из таблицы. */
DELETE FROM Students1
WHERE id > 9

SELECT *
from Students1

create table table_name
(

	Id Int PRIMARY KEY,
	FirstName Varchar(50),
	LASTNAME VARCHAR(50),
	GRANTS int check(GRANTS IN (1,2,3,4,5))

);
