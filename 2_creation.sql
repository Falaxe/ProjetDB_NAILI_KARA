-- Contraintes de validation (règles métier)

ALTER TABLE Stade
ADD CONSTRAINT capacite_positive
CHECK (capacite > 0);

ALTER TABLE Match_
ADD CONSTRAINT score_positif
CHECK (score_domicile >= 0 AND score_exterieur >= 0);

ALTER TABLE Match_
ADD CONSTRAINT journee_positive
CHECK (journee > 0);

ALTER TABLE PARTICIPER
ADD CONSTRAINT minutes_valides
CHECK (minutes_jouees >= 0 AND minutes_jouees <= 120);

ALTER TABLE PARTICIPER
ADD CONSTRAINT buts_valides
CHECK (nombre_buts >= 0);

ALTER TABLE CONTRAT
ADD CONSTRAINT salaire_positif
CHECK (salaire > 0);

ALTER TABLE CONTRAT
ADD CONSTRAINT contrat_dates_valides
CHECK (date_fin >= date_debut);

ALTER TABLE Saison
ADD CONSTRAINT saison_coherente
CHECK (annee_fin >= annee_debut);

ALTER TABLE Joueur
ADD CONSTRAINT numero_maillot_valide
CHECK (numero_maillot > 0 AND numero_maillot <= 99);

ALTER TABLE Match_
ADD CONSTRAINT clubs_differents
CHECK (id_club_domicile <> id_club_exterieur);

ALTER TABLE PARTICIPER
ADD CONSTRAINT titulaire_minutes
CHECK (
    (titulaire = TRUE AND minutes_jouees > 0)
    OR
    (titulaire = FALSE)
);

ALTER TABLE EST_CAPITAINE_DE
ADD CONSTRAINT capitaine_different
CHECK (id_personne_encadre <> id_personne_capitaine);