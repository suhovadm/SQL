/* 4. ќбследовани€ (Examinations) */

CREATE TABLE Examinations ( Id int PRIMARY KEY IDENTITY(1,1), 

Name nvarchar(100) NOT NULL UNIQUE, CHECK (Name != ''), ); /* Ќазвание обследовани€ не может быть пустым. */

/* Name - название обследовани€. */