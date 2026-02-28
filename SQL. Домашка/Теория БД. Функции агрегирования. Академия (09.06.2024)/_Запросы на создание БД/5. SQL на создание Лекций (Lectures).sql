/* Лекции (Lectures). */

CREATE TABLE Lectures ( Id INT PRIMARY KEY NOT NULL IDENTITY(1,1), 

DayOfWeek int NOT NULL CHECK (DayOfWeek BETWEEN 1 AND 7),
LectureRoom nvarchar(max) NOT NULL CHECK (LectureRoom != ''),
SubjectId int NOT NULL,
TeacherId int NOT NULL;

/* Здесь не хватает строчки DepartmentsId int, её нужно досоздать через ГУИ. */