/* Заболевания (Diseases) */

CREATE TABLE Diseases ( Id int PRIMARY KEY IDENTITY(1,1), 

Name nvarchar(100) NOT NULL UNIQUE, /* Название заболевания не NULL, уникальное. */
Severity int NOT NULL DEFAULT 1 CHECK (Severity >= 1) ); /* Степень тяжести. По дефолту 1 и не может быть меньше 1. */

/* Name - название заболевания. */
/* Severenity - степень тяжести. */