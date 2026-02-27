/* 11. Лекции (Lectures). */

CREATE TABLE Lectures ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

SubjectId int NOT NULL, /* Идентификатор дисциплины. Внешний ключ добавлен через ГУИ. */
TeacherId int NOT NULL); /* Внешний ключ добавлен через ГУИ. */