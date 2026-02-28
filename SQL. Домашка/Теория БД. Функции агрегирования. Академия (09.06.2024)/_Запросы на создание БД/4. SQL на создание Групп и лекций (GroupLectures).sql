/* Группы и лекции (GroupsLectures). */

CREATE TABLE GroupsLectures ( Id INT PRIMARY KEY NOT NULL IDENTITY(1,1), 

GroupId int NOT NULL,
LectureId int NOT NULL, );
