-- Création des tables et contraintes d'intégrité

CREATE TABLE PERSONNE (
    id_personne INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    date_naissance DATE,
    nationalite VARCHAR(50)
);

CREATE TABLE Stade (
    id_stade INT PRIMARY KEY,
    nom_stade VARCHAR(60),
    adresse VARCHAR(80),
    capacite INT
);

CREATE TABLE Saison (
    id_saison INT PRIMARY KEY,
    annee_debut INT,
    annee_fin INT
);

CREATE TABLE Club (
    id_club INT PRIMARY KEY,
    nom_club VARCHAR(50),
    ville VARCHAR(60),
    id_stade INT,
    FOREIGN KEY (id_stade)
        REFERENCES Stade(id_stade)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Joueur (
    id_personne INT PRIMARY KEY,
    poste VARCHAR(20),
    numero_maillot INT,
    FOREIGN KEY (id_personne)
        REFERENCES PERSONNE(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Entraineur (
    id_personne INT PRIMARY KEY,
    grade VARCHAR(30),
    FOREIGN KEY (id_personne)
        REFERENCES PERSONNE(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Arbitre (
    id_personne INT PRIMARY KEY,
    grade VARCHAR(30),
    FOREIGN KEY (id_personne)
        REFERENCES PERSONNE(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Match_ (
    id_match INT PRIMARY KEY,
    date_heure DATETIME,
    journee INT,
    score_domicile INT,
    score_exterieur INT,
    id_club_domicile INT,
    id_club_exterieur INT,
    id_saison INT,
    id_stade INT,
    FOREIGN KEY (id_club_domicile)
        REFERENCES Club(id_club)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_club_exterieur)
        REFERENCES Club(id_club)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_saison)
        REFERENCES Saison(id_saison)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_stade)
        REFERENCES Stade(id_stade)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE ARBITRER (
    id_match INT,
    id_personne INT,
    role_arbitrage VARCHAR(30),
    PRIMARY KEY (id_match, id_personne),
    FOREIGN KEY (id_match)
        REFERENCES Match_(id_match)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_personne)
        REFERENCES Arbitre(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE CONTRAT (
    id_personne INT,
    id_club INT,
    date_debut DATE,
    date_fin DATE,
    salaire INT,
    PRIMARY KEY (id_personne, id_club, date_debut),
    FOREIGN KEY (id_personne)
        REFERENCES Joueur(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_club)
        REFERENCES Club(id_club)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE PARTICIPER (
    id_club INT,
    id_match INT,
    id_personne INT,
    titulaire BOOLEAN,
    minutes_jouees INT,
    nombre_buts INT,
    PRIMARY KEY (id_club, id_match, id_personne),
    FOREIGN KEY (id_club)
        REFERENCES Club(id_club)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_match)
        REFERENCES Match_(id_match)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_personne)
        REFERENCES Joueur(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE EST_CAPITAINE_DE (
    id_personne_encadre INT,
    id_personne_capitaine INT,
    date_debut DATE,
    date_fin DATE,
    PRIMARY KEY (id_personne_encadre, id_personne_capitaine, date_debut),
    FOREIGN KEY (id_personne_encadre)
        REFERENCES Joueur(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_personne_capitaine)
        REFERENCES Joueur(id_personne)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);