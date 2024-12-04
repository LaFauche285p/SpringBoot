-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 04 déc. 2024 à 21:04
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `orm`
--

-- --------------------------------------------------------

--
-- Structure de la table `band`
--

DROP TABLE IF EXISTS `band`;
CREATE TABLE IF NOT EXISTS `band` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `band_name` varchar(255) DEFAULT NULL,
  `formed_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bandfestival`
--

DROP TABLE IF EXISTS `bandfestival`;
CREATE TABLE IF NOT EXISTS `bandfestival` (
  `band_id` bigint NOT NULL,
  `festival_id` bigint NOT NULL,
  PRIMARY KEY (`band_id`,`festival_id`),
  KEY `festival_id` (`festival_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `band_festival`
--

DROP TABLE IF EXISTS `band_festival`;
CREATE TABLE IF NOT EXISTS `band_festival` (
  `festival_id` bigint NOT NULL,
  `band_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `band_musician`
--

DROP TABLE IF EXISTS `band_musician`;
CREATE TABLE IF NOT EXISTS `band_musician` (
  `band_id` bigint NOT NULL DEFAULT '0',
  `musician_id` bigint NOT NULL DEFAULT '0',
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`band_id`,`musician_id`),
  KEY `musician_id` (`musician_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `festival`
--

DROP TABLE IF EXISTS `festival`;
CREATE TABLE IF NOT EXISTS `festival` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `tarif` decimal(38,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `instrument`
--

DROP TABLE IF EXISTS `instrument`;
CREATE TABLE IF NOT EXISTS `instrument` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `musician`
--

DROP TABLE IF EXISTS `musician`;
CREATE TABLE IF NOT EXISTS `musician` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `person_id` bigint DEFAULT NULL,
  `insertion_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `musicianband`
--

DROP TABLE IF EXISTS `musicianband`;
CREATE TABLE IF NOT EXISTS `musicianband` (
  `musician_id` bigint NOT NULL,
  `band_id` bigint NOT NULL,
  `date_arriver` date NOT NULL,
  `date_depart` date DEFAULT NULL,
  PRIMARY KEY (`musician_id`,`band_id`),
  KEY `band_id` (`band_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `musicianinstrument`
--

DROP TABLE IF EXISTS `musicianinstrument`;
CREATE TABLE IF NOT EXISTS `musicianinstrument` (
  `musician_id` bigint NOT NULL,
  `instrument_id` bigint NOT NULL,
  PRIMARY KEY (`musician_id`,`instrument_id`),
  KEY `instrument_id` (`instrument_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `musician_band`
--

DROP TABLE IF EXISTS `musician_band`;
CREATE TABLE IF NOT EXISTS `musician_band` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_arriver` date DEFAULT NULL,
  `date_depart` date DEFAULT NULL,
  `band_id` bigint DEFAULT NULL,
  `musician_id` bigint DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `musician_instrument`
--

DROP TABLE IF EXISTS `musician_instrument`;
CREATE TABLE IF NOT EXISTS `musician_instrument` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `instrument_id` bigint DEFAULT NULL,
  `musician_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `inserted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
