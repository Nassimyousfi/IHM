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

 ?>
