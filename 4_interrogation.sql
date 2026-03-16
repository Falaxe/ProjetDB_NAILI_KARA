-- Requêtes d'interrogation
-- Projet Bases de Données - TI404
-- Contexte : Premier League anglaise

--------------------------------------------------
-- PROJECTIONS / SELECTIONS
--------------------------------------------------

-- joueurs anglais
SELECT prenom, nom
FROM PERSONNE
WHERE nationalite = 'England';

-- joueurs ayant un numéro de maillot entre 1 et 10
SELECT p.prenom, p.nom, j.numero_maillot
FROM PERSONNE p
JOIN Joueur j ON p.id_personne = j.id_personne
WHERE j.numero_maillot BETWEEN 1 AND 10;

-- clubs situés à Londres
SELECT nom_club
FROM Club
WHERE ville IN ('London');

-- matchs ayant plus de 2 buts au total
SELECT id_match, score_domicile, score_exterieur
FROM Match_
WHERE (score_domicile + score_exterieur) > 2
ORDER BY id_match;

-- nationalités distinctes présentes dans la base
SELECT DISTINCT nationalite
FROM PERSONNE
ORDER BY nationalite;

-- utilisation d’un masque : joueurs dont le nom commence par "A"
SELECT nom, prenom
FROM PERSONNE
WHERE nom LIKE 'A%';

--------------------------------------------------
-- AGREGATIONS
--------------------------------------------------

-- nombre de personnes par nationalité
SELECT nationalite, COUNT(*) AS nb_personnes
FROM PERSONNE
GROUP BY nationalite
ORDER BY nb_personnes DESC;

-- nombre de matchs joués par stade
SELECT id_stade, COUNT(*) AS nb_matchs
FROM Match_
GROUP BY id_stade
ORDER BY nb_matchs DESC;

-- total de buts marqués par joueur
SELECT id_personne, SUM(nombre_buts) AS total_buts
FROM PARTICIPER
GROUP BY id_personne
ORDER BY total_buts DESC;

-- clubs ayant participé à plusieurs matchs
SELECT id_club, COUNT(*) AS nb_participations
FROM PARTICIPER
GROUP BY id_club
HAVING COUNT(*) > 5
ORDER BY nb_participations DESC;

-- moyenne de buts par match
SELECT AVG(score_domicile + score_exterieur) AS moyenne_buts_par_match
FROM Match_;

--------------------------------------------------
-- JOINTURES
--------------------------------------------------

-- joueurs avec leur club
SELECT p.nom, p.prenom, c.nom_club
FROM PERSONNE p
JOIN CONTRAT co ON p.id_personne = co.id_personne
JOIN Club c ON co.id_club = c.id_club
ORDER BY c.nom_club, p.nom;

-- matchs avec le stade
SELECT m.id_match, s.nom_stade, m.score_domicile, m.score_exterieur
FROM Match_ m
JOIN Stade s ON m.id_stade = s.id_stade
ORDER BY m.id_match;

-- arbitres avec les matchs arbitrés
SELECT p.nom, p.prenom, a.id_match, a.role_arbitrage
FROM PERSONNE p
JOIN ARBITRER a ON p.id_personne = a.id_personne
ORDER BY a.id_match;

-- clubs et leur stade
SELECT c.nom_club, s.nom_stade
FROM Club c
JOIN Stade s ON c.id_stade = s.id_stade
ORDER BY c.nom_club;

-- joueurs et leurs minutes jouées
SELECT p.nom, p.prenom, pa.id_match, pa.minutes_jouees
FROM PERSONNE p
JOIN PARTICIPER pa ON p.id_personne = pa.id_personne
ORDER BY pa.minutes_jouees DESC;

--------------------------------------------------
-- REQUETES IMBRIQUEES
--------------------------------------------------

-- joueurs ayant marqué au moins un but
SELECT nom, prenom
FROM PERSONNE
WHERE id_personne IN (
    SELECT id_personne
    FROM PARTICIPER
    WHERE nombre_buts > 0
);

-- clubs ayant participé à un match
SELECT nom_club
FROM Club
WHERE id_club IN (
    SELECT id_club
    FROM PARTICIPER
);

-- joueurs n’ayant jamais marqué
SELECT nom, prenom
FROM PERSONNE
WHERE id_personne NOT IN (
    SELECT id_personne
    FROM PARTICIPER
    WHERE nombre_buts > 0
);

-- matchs avec un nombre de buts supérieur à la moyenne
SELECT id_match, score_domicile, score_exterieur
FROM Match_
WHERE (score_domicile + score_exterieur) >
      (SELECT AVG(score_domicile + score_exterieur) FROM Match_);

-- joueurs ayant joué plus de minutes que la moyenne
SELECT id_personne, minutes_jouees
FROM PARTICIPER
WHERE minutes_jouees >
      (SELECT AVG(minutes_jouees) FROM PARTICIPER);

--------------------------------------------------
-- BONUS : ANALYSE RECRUTEMENT
--------------------------------------------------

-- joueurs ayant marqué plusieurs buts
SELECT p.nom, p.prenom, SUM(pa.nombre_buts) AS total_buts
FROM PERSONNE p
JOIN PARTICIPER pa ON p.id_personne = pa.id_personne
GROUP BY p.id_personne, p.nom, p.prenom
HAVING SUM(pa.nombre_buts) >= 2
ORDER BY total_buts DESC;

-- joueurs avec leur temps de jeu total
SELECT p.nom, p.prenom, SUM(pa.minutes_jouees) AS total_minutes
FROM PERSONNE p
JOIN PARTICIPER pa ON p.id_personne = pa.id_personne
GROUP BY p.id_personne, p.nom, p.prenom
ORDER BY total_minutes DESC;

-- joueurs titulaires dans toutes leurs apparitions
SELECT p.nom, p.prenom
FROM PERSONNE p
WHERE EXISTS (
    SELECT 1
    FROM PARTICIPER pa
    WHERE pa.id_personne = p.id_personne
)
AND NOT EXISTS (
    SELECT 1
    FROM PARTICIPER pa
    WHERE pa.id_personne = p.id_personne
    AND pa.titulaire = FALSE
);

-- club ayant marqué le plus de buts
SELECT c.nom_club, SUM(pa.nombre_buts) AS total_buts
FROM Club c
JOIN PARTICIPER pa ON c.id_club = pa.id_club
GROUP BY c.id_club, c.nom_club
HAVING SUM(pa.nombre_buts) >= ALL (
    SELECT SUM(pa2.nombre_buts)
    FROM PARTICIPER pa2
    GROUP BY pa2.id_club
);

-- joueurs ayant plus de minutes que certains autres joueurs
SELECT p.nom, p.prenom, SUM(pa.minutes_jouees) AS total_minutes
FROM PERSONNE p
JOIN PARTICIPER pa ON p.id_personne = pa.id_personne
GROUP BY p.id_personne, p.nom, p.prenom
HAVING SUM(pa.minutes_jouees) > ANY (
    SELECT SUM(pa2.minutes_jouees)
    FROM PARTICIPER pa2
    GROUP BY pa2.id_personne
);