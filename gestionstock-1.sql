-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 19 avr. 2022 à 11:52
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionstock`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) NOT NULL,
  `telephone` int NOT NULL,
  `abonnement` enum('premium','vip','classique','') NOT NULL,
  `interet` set('sport','cinéma','musique','') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `telephone`, `abonnement`, `interet`) VALUES
(1, 'jihene saidene', 25565, 'vip', 'sport,musique'),
(3, 'ghada ghram', 564456, 'premium', 'sport,musique'),
(6, 'ghada tayeg', 546456, 'classique', 'cinéma'),
(7, 'ines masmoudi', 546456, 'premium', 'cinéma,musique'),
(9, 'takwa touzni', 24555, 'vip', 'musique');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_fournisseur` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`id`, `nom_fournisseur`) VALUES
(24, 'tunisie telecom'),
(23, 'orange'),
(22, 'ooredoo'),
(27, 'tmobile'),
(25, 'tmobile');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `marque` varchar(128) NOT NULL,
  `ref_fournisseur` int NOT NULL,
  `prix` float NOT NULL DEFAULT '200',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `no`, `type`, `marque`, `ref_fournisseur`, `prix`) VALUES
(1, 'téléphone', 'éléctronique', 'samsung', 23, 200),
(2, 'smartwatch', 'éléctronique', 'huawei', 22, 200),
(6, 'protége ecran', 'protection', 'NA', 24, 200),
(5, 'airpods', 'éléctronique', 'iphone', 24, 200),
(11, 'tablette', 'éléctronique', 'LG', 23, 200);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
