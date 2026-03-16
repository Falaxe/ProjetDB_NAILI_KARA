# 📌 Prompt - Projet Base de Données - Insertion de données
Donne les requêtes d’insertion permettant de remplir la base de données dont le modèle relationnel est le suivant : 

PERSONNE(id_personne, nom, prenom, date_naissance, nationalite)
PK : id_personne

Stade(id_stade, nom_stade, adresse, capacite)
PK : id_stade

Saison(id_saison, annee_debut, annee_fin)
PK : id_saison

Joueur(id_personne, poste, numero_maillot)
PK : id_personne

Entraineur(id_personne, grade)
PK : id_personne

Arbitre(id_personne, grade)
PK : id_personne

Club(id_club, nom_club, ville, #id_stade)
PK : id_club

Match_(id_match, date_heure, journee, score_domicile, score_exterieur, #id_club_domicile, #id_club_exterieur, #id_saison, #id_stade)
PK : id_match

ARBITRER(#id_match, #id_personne, role_arbitrage)
PK : (id_match, id_personne)

CONTRAT(#id_personne, #id_club, date_debut, date_fin, salaire)
PK : (id_personne, id_club, date_debut)

PARTICIPER(#id_club, #id_match, #id_personne, titulaire, minutes_jouees, nombre_buts)
PK : (id_club, id_match, id_personne)

EST_CAPITAINE_DE(#id_personne_encadre, date_debut, date_fin, #id_personne_capitaine)
PK : (id_personne_encadre, id_personne_capitaine, date_debut)

Les clés primaires correspondent aux id, sauf si autre chose est précisé (quand c'est un attribut composé) les clés étrangères sont identifiées par les #, et ont le même nom que les clés primaires auxquelles elles font référence.

Je souhaite environ :
- 20 lignes dans PERSONNE
- 5 lignes dans Stade
- 3 lignes dans Saison
- 12 lignes dans Joueur
- 3 lignes dans Entraineur
- 5 lignes dans Arbitre
- 6 lignes dans Club
- 10 lignes dans Match_
- 10 lignes dans ARBITRER
- 12 lignes dans CONTRAT
- 40 lignes dans PARTICIPER
- 5 lignes dans EST_CAPITAINE_DE

Je souhaite que les données soient cohérentes avec le thème du football professionnel, avec des noms de clubs, de stades, de joueurs, d'entraîneurs et d'arbitres réalistes.

Les clés étrangères doivent faire référence aux clés primaires existantes : donne les lignes en commençant par remplir les tables dans lesquelles il n'y a pas de clés étrangères, puis les tables dans lesquelles les clés étrangères font références à des clés primaires des tables déjà remplies. 

Fournis l'ensemble sous la forme d’un script SQL prêt à être exécuté.