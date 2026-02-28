/* Факультеты. */

CREATE TABLE Faculties ( Id int PRIMARY KEY IDENTITY(1,1), /* (1,1) - включает Авто приращение id-шников, т.е. один за другим. */

Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''), ); /* Имя факультета уникально и не может быть пустым. */