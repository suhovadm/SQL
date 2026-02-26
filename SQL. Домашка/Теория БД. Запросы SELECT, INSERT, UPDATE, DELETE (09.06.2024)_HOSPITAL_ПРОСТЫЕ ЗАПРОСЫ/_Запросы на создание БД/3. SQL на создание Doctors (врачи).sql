/* 3. Врачи (Doctors). */

CREATE TABLE Doctors ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 

Name nvarchar(max) NOT NULL CHECK (Name != ''),
Phone char(10) NOT NULL,
Premium money NOT NULL DEFAULT 0 CHECK (Premium > 0),
Salary money NOT NULL CHECK (Salary >= 0),
Surname nvarchar(max) NOT NULL CHECK (Surname != ''), );