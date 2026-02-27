/* 12. Расписание (Schedules). */

CREATE TABLE Schedules ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Class int NOT NULL CHECK (Class BETWEEN 1 AND 8),
DayOfWeek int NOT NULL CHECK (DayOfWeek BETWEEN 1 AND 7),
Week int NOT NULL CHECK (Week BETWEEN 1 AND 52),
LectureId int NOT NULL, 
LectureRoomId int NOT NULL );