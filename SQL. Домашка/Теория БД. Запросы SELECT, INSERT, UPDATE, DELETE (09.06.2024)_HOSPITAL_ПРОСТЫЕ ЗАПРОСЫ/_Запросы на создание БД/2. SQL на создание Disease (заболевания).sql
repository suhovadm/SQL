/* 2. Заболевания (Disease). */

CREATE TABLE Disease ( Id int PRIMARY KEY NOT NULL IDENTITY(1,1),

Name nvarchar(100) NOT NULL UNIQUE CHECK (Name != ''),
Severity int NOT NULL DEFAULT 1 CHECK (Severity >= 1), ); /* Severity - степень тяжести (int-овая). */

/* Если поставить просто > 1, не даст вводить 1, если >= даст вводить 1 !!! */
