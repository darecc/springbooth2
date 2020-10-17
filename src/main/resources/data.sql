DROP TABLE IF EXISTS Student;
CREATE TABLE Student
(
     ID IDENTITY NOT NULL AUTO_INCREMENT PRIMARY KEY,
     imie VARCHAR(30) NOT NULL,
     nazwisko VARCHAR(10) NOT NULL,
     kierunek VARCHAR(30),
     rok INT(3)
);
INSERT INTO Student (imie, nazwisko, kierunek, rok) VALUES
('Dariusz' , 'Ceglarek', 'IT', 3),
('Jerzy' , 'Samelak', 'Matematyka', 2),
('Alicja'  , 'Rosolska',  'Socjologia', 3);