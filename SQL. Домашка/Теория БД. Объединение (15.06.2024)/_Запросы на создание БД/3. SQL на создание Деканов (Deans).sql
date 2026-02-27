/* 3. Деканы (Deans). */

CREATE TABLE Deans ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

TeacherId int NOT NULL); /* Внешнего ключа нет, он добавлен через ГУИ. */