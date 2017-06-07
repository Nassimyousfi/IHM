-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 29 Mai 2017 à 11:43
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `proj_Categorie`
--

CREATE TABLE `proj_Categorie` (
  `idCategorie` int(11) NOT NULL,
  `Categorie` varchar(20) COLLATE utf8_roman_ci NOT NULL,
  `idSalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proj_Place`
--

CREATE TABLE `proj_Place` (
  `idPlace` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL,
  `Categorie` varchar(20) COLLATE utf8_roman_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proj_PrixPlace`
--

CREATE TABLE `proj_PrixPlace` (
  `idCategorie` int(11) NOT NULL,
  `idSpectacle` int(11) NOT NULL,
  `Prix` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proj_Representation`
--

CREATE TABLE `proj_Representation` (
  `idRepresentation` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL,
  `idSpectacle` int(11) NOT NULL,
  `date` date NOT NULL,
  `horaireDebut` time NOT NULL,
  `horaireFin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proj_Reservation`
--

CREATE TABLE `proj_Reservation` (
  `idUtilisateur` int(11) NOT NULL,
  `idRepresentation` int(11) NOT NULL,
  `idPlace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proj_Salle`
--

CREATE TABLE `proj_Salle` (
  `idSalle` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8_roman_ci NOT NULL,
  `adresse` text COLLATE utf8_roman_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_roman_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proj_Spectacle`
--

CREATE TABLE `proj_Spectacle` (
  `idSpectacle` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_roman_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_roman_ci NOT NULL,
  `infos` text COLLATE utf8_roman_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proj_Types_Utilisateur`
--

CREATE TABLE `proj_Types_Utilisateur` (
  `TypeUtilisateur` varchar(10) COLLATE utf8_roman_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci COMMENT='Référence les types utilisateurs: user, admin, manager';

--
-- Contenu de la table `proj_Types_Utilisateur`
--

INSERT INTO `proj_Types_Utilisateur` (`TypeUtilisateur`) VALUES
('admin'),
('manager'),
('user');

-- --------------------------------------------------------

--
-- Structure de la table `proj_Utilisateur`
--

CREATE TABLE `proj_Utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `login` varchar(30) COLLATE utf8_roman_ci NOT NULL,
  `nom` varchar(30) COLLATE utf8_roman_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8_roman_ci NOT NULL,
  `adressePostale1` varchar(50) COLLATE utf8_roman_ci NOT NULL,
  `adressePostale2` varchar(50) COLLATE utf8_roman_ci NOT NULL,
  `codePostal` varchar(10) COLLATE utf8_roman_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8_roman_ci NOT NULL,
  `adresseMail` varchar(50) COLLATE utf8_roman_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8_roman_ci NOT NULL,
  `typeUtilisateur` varchar(10) COLLATE utf8_roman_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `proj_Categorie`
--
ALTER TABLE `proj_Categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `proj_Place`
--
ALTER TABLE `proj_Place`
  ADD PRIMARY KEY (`idPlace`);

--
-- Index pour la table `proj_PrixPlace`
--
ALTER TABLE `proj_PrixPlace`
  ADD PRIMARY KEY (`idCategorie`,`idSpectacle`);

--
-- Index pour la table `proj_Representation`
--
ALTER TABLE `proj_Representation`
  ADD PRIMARY KEY (`idRepresentation`);

--
-- Index pour la table `proj_Reservation`
--
ALTER TABLE `proj_Reservation`
  ADD PRIMARY KEY (`idPlace`,`idRepresentation`,`idUtilisateur`);

--
-- Index pour la table `proj_Salle`
--
ALTER TABLE `proj_Salle`
  ADD PRIMARY KEY (`idSalle`);

--
-- Index pour la table `proj_Spectacle`
--
ALTER TABLE `proj_Spectacle`
  ADD PRIMARY KEY (`idSpectacle`);

--
-- Index pour la table `proj_Types_Utilisateur`
--
ALTER TABLE `proj_Types_Utilisateur`
  ADD PRIMARY KEY (`TypeUtilisateur`);

--
-- Index pour la table `proj_Utilisateur`
--
ALTER TABLE `proj_Utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD UNIQUE KEY `uniq_courriel` (`adresseMail`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `proj_Categorie`
--
ALTER TABLE `proj_Categorie`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `proj_Place`
--
ALTER TABLE `proj_Place`
  MODIFY `idPlace` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `proj_Representation`
--
ALTER TABLE `proj_Representation`
  MODIFY `idRepresentation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `proj_Salle`
--
ALTER TABLE `proj_Salle`
  MODIFY `idSalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `proj_Spectacle`
--
ALTER TABLE `proj_Spectacle`
  MODIFY `idSpectacle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `proj_Utilisateur`
--
ALTER TABLE `proj_Utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
