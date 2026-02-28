/* ќбследовани€ (Examinations) */

CREATE TABLE Examinations ( Id int PRIMARY KEY IDENTITY(1,1), 

Name nvarchar(100) NOT NULL UNIQUE, CHECK (Name != ''), /* Ќазвание обследовани€ не может быть пустым. */
DayOfWeek int NOT NULL CHECK (DayOfWeek BETWEEN 1 AND 7), /* ¬ диапазоне от 1 до 7. */
StartTime time NOT NULL CHECK (StartTime BETWEEN '08:00' AND '18:00'), /* ¬рем€ обследований с 8:00 до 18:00. */
EndTime time NOT NULL CHECK (EndTime != '08:00'), ); /* ¬рем€ окончани€ обследований любое, но Ќ≈ равно началу, т.е. больше 8:00. */
 
/* DayOfWeek - день недели в который проводитс€ обследование. */
/* StartTime - врем€ начала обследовани€. */
/* EndTime - врем€ завершени€ обследовани€. */
/* Name - название обследовани€. */
