-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 28 Mai 2017 à 12:22
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

-- --------------------------------------------------------

--
-- Structure de la table `Spectacle`
--

CREATE TABLE `Spectacle` (
  `idSpectacle` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_roman_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_roman_ci NOT NULL,
  `infos` text COLLATE utf8_roman_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Index pour les tables exportées
--

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
-- Index pour la table `Spectacle`
--
ALTER TABLE `Spectacle`
  ADD PRIMARY KEY (`idSpectacle`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `proj_Utilisateur`
--
ALTER TABLE `proj_Utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Spectacle`
--
ALTER TABLE `Spectacle`
  MODIFY `idSpectacle` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
