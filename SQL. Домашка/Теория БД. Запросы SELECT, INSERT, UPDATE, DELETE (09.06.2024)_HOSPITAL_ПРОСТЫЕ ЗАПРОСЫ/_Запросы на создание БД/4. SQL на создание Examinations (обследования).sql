/* 4. Обследования (Examinations). */

CREATE TABLE Examinations ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 

DayOfWeek int NOT NULL CHECK (DayOfWeek BETWEEN 1 AND 7),
StartTime time NOT NULL CHECK (StartTime BETWEEN '08:00' AND '18:00'),
EndTime time NOT NULL CHECK (EndTime != '08:00'),
Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''), );
