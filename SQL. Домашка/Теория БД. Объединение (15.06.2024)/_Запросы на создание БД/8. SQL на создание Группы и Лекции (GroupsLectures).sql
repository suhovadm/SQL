/* 8. Группы и лекции (GroupsLectures). */

CREATE TABLE GroupsLectures ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

GroupId int NOT NULL, /* Внешний ключ добавлен через ГУИ. */
LectureId int NOT NULL); /* Внешний ключ добавлен через ГУИ. */
