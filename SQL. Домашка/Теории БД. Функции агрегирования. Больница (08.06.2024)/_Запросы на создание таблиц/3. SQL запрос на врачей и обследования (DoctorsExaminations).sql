/* 3. Врачи и обследования (Doctors and Examinations). */

CREATE TABLE DoctorsExaminations ( Id int PRIMARY KEY IDENTITY(1,1),
EndTime time NOT NULL CHECK (EndTime BETWEEN '08:00' AND '18:00'),
DoctorId int NOT NULL, /* Id-шник врача. */
ExaminationId int NOT NULL, /* Идентификатор обследования. */
WardId int NOT NULL, ); /* Идентификатор палаты. */

/* Здесь также нет внешних ключей, они сделаны через ГУИ. */
/* DoctorsExaminations - DoctorsId ---> Doctors - Id */
/* DoctorsExaminations - ExaminationId ---> Examinations - Id */
/* DoctorsExamintaions - WardId ---> Wards - Id */
