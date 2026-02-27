/* 10. Аудитории (LectureRooms). */

CREATE TABLE LectureRooms ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Building int NOT NULL CHECK (Building BETWEEN 1 AND 5), /* Номер корпуса в котором располагается аудитория. */
Name nvarchar(10) NOT NULL UNIQUE CHECK (Name != ''), ); /* Название аудитории. */
