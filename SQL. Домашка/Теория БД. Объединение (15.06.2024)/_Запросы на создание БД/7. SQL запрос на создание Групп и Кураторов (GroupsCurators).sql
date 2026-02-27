/* 7. Группы и кураторы (GroupsCurators). */

CREATE TABLE GroupsCurators ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

CuratorId int NOT NULL, /* Внешний ключ добавлен через ГУИ. */
GroupId int NOT NULL); /* Внешний ключ добавлен через ГУИ. */
