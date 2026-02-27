/* 13. Дисциплины (Subjects). */

CREATE TABLE Subjects ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''), ); /* Название дисциплины. */
);
