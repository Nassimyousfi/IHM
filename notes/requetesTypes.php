<?php

// Ajout d'un utilisateur dans la Base

$sql = "INSERT INTO
  `proj_Utilisateur` (
      `idUtilisateur`,
      `login`,
      `passHash`,
      `nom`,
      `prenom`,
      `adressePostale1`,
      `adressePostale2`,
      `codePostal`,
      `ville`,
      `adresseMail`,
      `telephone`,
      `typeUtilisateur`)
    VALUES (
        NULL,
        \'niko\',
        \'$2y$10$zsvTwVw.4WKjqIUvBZWXE.ySB7jb5DrhLsRqAyDkGjVnRLFGfuG2m\',
        \'Niko\',
        \'Nicolas\',
        \'Université Paris8\',
        \'2 rue de la Liberté\',
        \'93526\',
        \'Saint-Denis cedex \',
        \'youpitralala126@yopmail.com\',
        \'001122334455\',
        \'admin\')";


// insérer une salle

$sql = "INSERT INTO
          `proj_Salle` (
            `idSalle`,
            `nom`,
            `adresse`,
            `type`)
        VALUES (
          NULL,
          \'salleTest\',
          \'Rue du Théatre \n". "84000 AVIGNON\',
          \'Théatre\')";

  // rechercher une représentation dans une salle après une date donnée
  $sql = "SELECT * \n"
    . "from proj_Representation as r \n"
    . "JOIN proj_Spectacle as spe ON (spe.idSpectacle = r.idSpectacle) \n"
    . "JOIN proj_Salle as sa ON (sa.idSalle = r.idSalle)\n"
    . "\n"
    . "where r.date > 20170601 and sa.nom=\"Opéra Bastille\"";

    // Rechercher les places à moins de 120 euros des spectacles ayant lieu à l'opéra bastille après le 01/06/2017

    $sql = "SELECT distinct(cat.Categorie),spe.nom, r.date, prix.Prix\n"
    . "from proj_Representation as r \n"
    . "JOIN proj_Spectacle as spe ON (spe.idSpectacle = r.idSpectacle) \n"
    . "JOIN proj_Salle as sa ON (sa.idSalle = r.idSalle)\n"
    . "JOIN proj_Categorie as cat ON (cat.idSalle = sa.idSalle)\n"
    . "JOIN proj_PrixPlace as prix ON (prix.idCategorie = cat.idCategorie)\n"
    . "where r.date > 20170601 and sa.nom=\"Opéra Bastille\" and prix.Prix < 120";

 ?>
