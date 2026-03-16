-- Insertion des données
-- Projet Bases de Données - TI404

INSERT INTO Stade VALUES
(1, 'Etihad Stadium', 'Manchester', 53400),
(2, 'Emirates Stadium', 'London', 60704),
(3, 'Anfield', 'Liverpool', 61276),
(4, 'Stamford Bridge', 'London', 40341),
(5, 'Old Trafford', 'Manchester', 74310);

INSERT INTO Saison VALUES
(1, 2022, 2023),
(2, 2023, 2024),
(3, 2024, 2025);

INSERT INTO PERSONNE VALUES
(1, 'Haaland', 'Erling', '2000-07-21', 'Norway'),
(2, 'De Bruyne', 'Kevin', '1991-06-28', 'Belgium'),
(3, 'Foden', 'Phil', '2000-05-28', 'England'),
(4, 'Saka', 'Bukayo', '2001-09-05', 'England'),
(5, 'Odegaard', 'Martin', '1998-12-17', 'Norway'),
(6, 'Rice', 'Declan', '1999-01-14', 'England'),
(7, 'Salah', 'Mohamed', '1992-06-15', 'Egypt'),
(8, 'Van Dijk', 'Virgil', '1991-07-08', 'Netherlands'),
(9, 'Alexander-Arnold', 'Trent', '1998-10-07', 'England'),
(10, 'Palmer', 'Cole', '2002-05-06', 'England'),
(11, 'Enzo', 'Fernandez', '2001-01-17', 'Argentina'),
(12, 'James', 'Reece', '1999-12-08', 'England'),
(13, 'Bruno', 'Fernandes', '1994-09-08', 'Portugal'),
(14, 'Rashford', 'Marcus', '1997-10-31', 'England'),
(15, 'Casemiro', 'Carlos', '1992-02-23', 'Brazil'),
(16, 'Guardiola', 'Pep', '1971-01-18', 'Spain'),
(17, 'Arteta', 'Mikel', '1982-03-26', 'Spain'),
(18, 'Slot', 'Arne', '1978-09-17', 'Netherlands'),
(19, 'Maresca', 'Enzo', '1980-02-10', 'Italy'),
(20, 'Ten Hag', 'Erik', '1970-02-02', 'Netherlands'),
(21, 'Oliver', 'Michael', '1985-02-20', 'England'),
(22, 'Taylor', 'Anthony', '1978-10-20', 'England'),
(23, 'Tierney', 'Paul', '1980-12-25', 'England'),
(24, 'Attwell', 'Stuart', '1982-10-06', 'England'),
(25, 'Hooper', 'Simon', '1982-07-20', 'England');

INSERT INTO Joueur VALUES
(1, 'Attaquant', 9),
(2, 'Milieu', 17),
(3, 'Attaquant', 47),
(4, 'Attaquant', 7),
(5, 'Milieu', 8),
(6, 'Milieu', 41),
(7, 'Attaquant', 11),
(8, 'Defenseur', 4),
(9, 'Defenseur', 66),
(10, 'Milieu', 20),
(11, 'Milieu', 8),
(12, 'Defenseur', 24),
(13, 'Milieu', 8),
(14, 'Attaquant', 10),
(15, 'Milieu', 18);

INSERT INTO Entraineur VALUES
(16, 'Elite'),
(17, 'Elite'),
(18, 'Elite'),
(19, 'Elite'),
(20, 'Elite');

INSERT INTO Arbitre VALUES
(21, 'FIFA'),
(22, 'FIFA'),
(23, 'Premier League'),
(24, 'Premier League'),
(25, 'Premier League');

INSERT INTO Club VALUES
(1, 'Manchester City', 'Manchester', 1),
(2, 'Arsenal', 'London', 2),
(3, 'Liverpool', 'Liverpool', 3),
(4, 'Chelsea', 'London', 4),
(5, 'Manchester United', 'Manchester', 5);

INSERT INTO Match_ VALUES
(1, '2024-08-10 17:30:00', 1, 2, 1, 1, 2, 3, 1),
(2, '2024-08-11 16:30:00', 1, 3, 1, 3, 4, 3, 3),
(3, '2024-08-17 18:30:00', 2, 1, 1, 5, 1, 3, 5),
(4, '2024-08-18 17:30:00', 2, 2, 0, 2, 3, 3, 2),
(5, '2024-08-24 17:30:00', 3, 2, 2, 4, 5, 3, 4),
(6, '2024-08-25 16:30:00', 3, 1, 0, 1, 3, 3, 1),
(7, '2024-08-31 17:30:00', 4, 2, 1, 2, 4, 3, 2),
(8, '2024-09-01 16:30:00', 4, 1, 1, 5, 3, 3, 5),
(9, '2024-09-14 17:30:00', 5, 3, 2, 1, 4, 3, 1),
(10, '2024-09-15 16:30:00', 5, 2, 0, 2, 5, 3, 2);

INSERT INTO ARBITRER VALUES
(1, 21, 'principal'),
(2, 22, 'principal'),
(3, 23, 'principal'),
(4, 24, 'principal'),
(5, 25, 'principal'),
(6, 21, 'principal'),
(7, 22, 'principal'),
(8, 23, 'principal'),
(9, 24, 'principal'),
(10, 25, 'principal');

INSERT INTO CONTRAT VALUES
(1, 1, '2023-07-01', '2027-06-30', 22000000),
(2, 1, '2023-07-01', '2026-06-30', 18000000),
(3, 1, '2023-07-01', '2028-06-30', 12000000),
(4, 2, '2023-07-01', '2027-06-30', 14000000),
(5, 2, '2023-07-01', '2028-06-30', 13000000),
(6, 2, '2023-07-01', '2028-06-30', 12500000),
(7, 3, '2023-07-01', '2026-06-30', 17000000),
(8, 3, '2023-07-01', '2027-06-30', 16000000),
(9, 3, '2023-07-01', '2027-06-30', 11000000),
(10, 4, '2023-07-01', '2030-06-30', 9000000),
(11, 4, '2023-07-01', '2031-06-30', 10000000),
(12, 4, '2023-07-01', '2028-06-30', 8500000),
(13, 5, '2023-07-01', '2027-06-30', 15000000),
(14, 5, '2023-07-01', '2028-06-30', 14000000),
(15, 5, '2023-07-01', '2026-06-30', 16000000);

INSERT INTO PARTICIPER VALUES
(1, 1, 1, TRUE, 90, 1),
(1, 1, 2, TRUE, 90, 1),
(1, 1, 3, TRUE, 82, 0),
(2, 1, 4, TRUE, 90, 1),
(2, 1, 5, TRUE, 90, 0),
(2, 1, 6, TRUE, 90, 0),

(3, 2, 7, TRUE, 90, 2),
(3, 2, 8, TRUE, 90, 0),
(3, 2, 9, TRUE, 90, 1),
(4, 2, 10, TRUE, 90, 1),
(4, 2, 11, TRUE, 88, 0),
(4, 2, 12, TRUE, 90, 0),

(5, 3, 13, TRUE, 90, 1),
(5, 3, 14, TRUE, 84, 0),
(5, 3, 15, TRUE, 90, 0),
(1, 3, 1, TRUE, 90, 1),
(1, 3, 2, TRUE, 90, 0),
(1, 3, 3, TRUE, 78, 0),

(2, 4, 4, TRUE, 90, 1),
(2, 4, 5, TRUE, 90, 1),
(2, 4, 6, TRUE, 90, 0),
(3, 4, 7, TRUE, 90, 0),
(3, 4, 8, TRUE, 90, 0),
(3, 4, 9, TRUE, 90, 0),

(4, 5, 10, TRUE, 90, 1),
(4, 5, 11, TRUE, 90, 1),
(4, 5, 12, TRUE, 90, 0),
(5, 5, 13, TRUE, 90, 2),
(5, 5, 14, TRUE, 75, 0),
(5, 5, 15, TRUE, 90, 0),

(1, 6, 1, TRUE, 90, 1),
(1, 6, 2, TRUE, 90, 0),
(1, 6, 3, TRUE, 87, 0),
(3, 6, 7, TRUE, 90, 0),
(3, 6, 8, TRUE, 90, 0),
(3, 6, 9, TRUE, 90, 0),

(2, 7, 4, TRUE, 90, 1),
(2, 7, 5, TRUE, 90, 0),
(2, 7, 6, TRUE, 90, 1),
(4, 7, 10, TRUE, 90, 1),
(4, 7, 11, TRUE, 90, 0),
(4, 7, 12, TRUE, 90, 0),

(5, 8, 13, TRUE, 90, 1),
(5, 8, 14, TRUE, 83, 0),
(5, 8, 15, TRUE, 90, 0),
(3, 8, 7, TRUE, 90, 1),
(3, 8, 8, TRUE, 90, 0),
(3, 8, 9, TRUE, 90, 0),

(1, 9, 1, TRUE, 90, 2),
(1, 9, 2, TRUE, 90, 0),
(1, 9, 3, TRUE, 80, 1),
(4, 9, 10, TRUE, 90, 1),
(4, 9, 11, TRUE, 90, 0),
(4, 9, 12, TRUE, 90, 1),

(2, 10, 4, TRUE, 90, 1),
(2, 10, 5, TRUE, 90, 1),
(2, 10, 6, TRUE, 90, 0),
(5, 10, 13, TRUE, 90, 0),
(5, 10, 14, TRUE, 88, 0),
(5, 10, 15, TRUE, 90, 0);

INSERT INTO EST_CAPITAINE_DE VALUES
(1, 2, '2024-08-01', '2025-05-31'),
(3, 2, '2024-08-01', '2025-05-31'),
(4, 5, '2024-08-01', '2025-05-31'),
(6, 5, '2024-08-01', '2025-05-31'),
(7, 8, '2024-08-01', '2025-05-31'),
(9, 8, '2024-08-01', '2025-05-31'),
(10, 12, '2024-08-01', '2025-05-31'),
(11, 12, '2024-08-01', '2025-05-31'),
(13, 15, '2024-08-01', '2025-05-31'),
(14, 15, '2024-08-01', '2025-05-31');