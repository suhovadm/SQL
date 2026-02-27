/* 1. АССИСТЕНТЫ (Assistants). */

CREATE TABLE Assistants ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

TeacherId int NOT NULL); /* Внешнего ключа нет, он добавлен через ГУИ. */
