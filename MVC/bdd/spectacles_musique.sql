-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 09 avr. 2020 à 09:10
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `spectacles_musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

DROP TABLE IF EXISTS `groupes`;
CREATE TABLE IF NOT EXISTS `groupes` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nom_groupe` varchar(100) NOT NULL,
  `date_creation` datetime NOT NULL,
  `del` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id`, `nom_groupe`, `date_creation`, `del`) VALUES
(1, 'Foo Fighters', '2020-04-04 00:00:00', 0),
(2, 'Carpenter Brut', '2020-05-13 00:00:00', 0),
(3, 'Skeler', '2020-05-18 00:00:00', 0),
(4, 'Nirvana', '2020-04-03 10:43:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `groupes_musiciens_relation`
--

DROP TABLE IF EXISTS `groupes_musiciens_relation`;
CREATE TABLE IF NOT EXISTS `groupes_musiciens_relation` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_groupe` int(255) NOT NULL,
  `id_musicien` int(255) NOT NULL,
  `del` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `groupes_musiciens_relation`
--

INSERT INTO `groupes_musiciens_relation` (`id`, `id_groupe`, `id_musicien`, `del`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 2, 4, 0),
(5, 3, 5, 0),
(6, 4, 1, 0),
(7, 4, 2, 0),
(8, 4, 3, 0),
(9, 1, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `musiciens`
--

DROP TABLE IF EXISTS `musiciens`;
CREATE TABLE IF NOT EXISTS `musiciens` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `del` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `musiciens`
--

INSERT INTO `musiciens` (`id`, `nom`, `prenom`, `date_creation`, `date_modif`, `del`) VALUES
(1, 'Grohl', 'Dave', '2020-04-03 10:37:00', '0000-00-00 00:00:00', 0),
(2, 'Smear', 'Pat', '2020-04-03 10:38:00', '0000-00-00 00:00:00', 0),
(3, 'Hawkins', 'Taylor', '2020-04-03 10:39:00', '0000-00-00 00:00:00', 0),
(4, 'Hueso', 'Franck', '2020-04-03 10:40:00', '0000-00-00 00:00:00', 0),
(5, 'Skeler', 'Patrick', '2020-04-03 10:42:00', '0000-00-00 00:00:00', 0),
(6, 'Toto', 'Jack', '2020-04-09 00:00:00', '0000-00-00 00:00:00', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
