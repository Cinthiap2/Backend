-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 07 mai 2024 à 09:42
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `about_me_entity`
--

DROP TABLE IF EXISTS `about_me_entity`;
CREATE TABLE IF NOT EXISTS `about_me_entity` (
  `about_me_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `photo_file_path` longtext,
  `portfolio_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`about_me_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `about_me_entity`
--

INSERT INTO `about_me_entity` (`about_me_id`, `description`, `is_active`, `photo_file_path`, `portfolio_user_id`) VALUES
(1, '', b'0', 'C:/user/1.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `about_me_nav_entity`
--

DROP TABLE IF EXISTS `about_me_nav_entity`;
CREATE TABLE IF NOT EXISTS `about_me_nav_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `about_me_id` bigint(20) DEFAULT NULL,
  `about_me_name` varchar(255) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `imgae_url` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `competences_entity`
--

DROP TABLE IF EXISTS `competences_entity`;
CREATE TABLE IF NOT EXISTS `competences_entity` (
  `competence_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `portfolio_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`competence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competences_entity`
--

INSERT INTO `competences_entity` (`competence_id`, `description`, `is_active`, `name`, `portfolio_user_id`) VALUES
(1, 'Competences discription', b'0', 'Competences', 1);

-- --------------------------------------------------------

--
-- Structure de la table `education_detail_entity`
--

DROP TABLE IF EXISTS `education_detail_entity`;
CREATE TABLE IF NOT EXISTS `education_detail_entity` (
  `education_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `education_id` bigint(20) DEFAULT NULL,
  `educational_description` varchar(5000) DEFAULT NULL,
  `end_year` int(11) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`education_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `education_detail_entity`
--

INSERT INTO `education_detail_entity` (`education_detail_id`, `education_id`, `educational_description`, `end_year`, `is_active`, `name`, `start_year`) VALUES
(1, 1, 'je suis alternante en ing4 app à ECE PARIS', 2025, b'0', 'SI', 2022);

-- --------------------------------------------------------

--
-- Structure de la table `education_entity`
--

DROP TABLE IF EXISTS `education_entity`;
CREATE TABLE IF NOT EXISTS `education_entity` (
  `education_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `education_description` varchar(255) DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `port_pofolio_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `education_entity`
--

INSERT INTO `education_entity` (`education_id`, `education_description`, `enable`, `is_active`, `name`, `port_pofolio_id`) VALUES
(1, 'Ingénieur en cybersécurité', b'0', b'0', 'GLORIA ', 1),
(2, 'JE TRAVAILLE CHEZ ORANGE', b'1', b'0', 'DIOROBO', 2);

-- --------------------------------------------------------

--
-- Structure de la table `education_entity_educationdetail_list`
--

DROP TABLE IF EXISTS `education_entity_educationdetail_list`;
CREATE TABLE IF NOT EXISTS `education_entity_educationdetail_list` (
  `education_entity_education_id` bigint(20) NOT NULL,
  `educationdetail_list_education_detail_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_onpf42dldd3mstvyi343dxqfk` (`educationdetail_list_education_detail_id`),
  KEY `FKg1ppripug79hbrtqf3rad08wu` (`education_entity_education_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `experience_category_entity`
--

DROP TABLE IF EXISTS `experience_category_entity`;
CREATE TABLE IF NOT EXISTS `experience_category_entity` (
  `experience_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `experience_id` bigint(20) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`experience_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `experience_category_entity`
--

INSERT INTO `experience_category_entity` (`experience_category_id`, `category_name`, `experience_id`, `is_active`) VALUES
(1, 'Projects', 1, b'0'),
(2, 'Experience', 1, b'0');

-- --------------------------------------------------------

--
-- Structure de la table `experience_details_entity`
--

DROP TABLE IF EXISTS `experience_details_entity`;
CREATE TABLE IF NOT EXISTS `experience_details_entity` (
  `experience_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `experience_category_id` bigint(20) DEFAULT NULL,
  `experiencedescription` varchar(255) DEFAULT NULL,
  `img` longtext,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`experience_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `experience_entity`
--

DROP TABLE IF EXISTS `experience_entity`;
CREATE TABLE IF NOT EXISTS `experience_entity` (
  `experience_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `portfolio_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `experience_entity`
--

INSERT INTO `experience_entity` (`experience_id`, `is_active`, `name`, `portfolio_id`) VALUES
(1, b'1', 'Experience', 1);

-- --------------------------------------------------------

--
-- Structure de la table `portfolio_user_entity`
--

DROP TABLE IF EXISTS `portfolio_user_entity`;
CREATE TABLE IF NOT EXISTS `portfolio_user_entity` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo_profile` longtext,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `skill_category_entity`
--

DROP TABLE IF EXISTS `skill_category_entity`;
CREATE TABLE IF NOT EXISTS `skill_category_entity` (
  `skill_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `competence_id` bigint(20) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `skill_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`skill_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `skill_category_entity`
--

INSERT INTO `skill_category_entity` (`skill_category_id`, `competence_id`, `is_active`, `skill_category`) VALUES
(1, 1, b'0', 'Web'),
(2, 1, b'0', 'Data Base'),
(3, 1, b'0', 'Programming'),
(4, 1, b'0', 'Others');

-- --------------------------------------------------------

--
-- Structure de la table `skill_category_entity_skill_list`
--

DROP TABLE IF EXISTS `skill_category_entity_skill_list`;
CREATE TABLE IF NOT EXISTS `skill_category_entity_skill_list` (
  `skill_category_entity_skill_category_id` bigint(20) NOT NULL,
  `skill_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_o44j03aebo4oyrqidxxn3h9av` (`skill_list_id`),
  KEY `FKrorhajhqd7r4d75da0y80svr1` (`skill_category_entity_skill_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `skill_entity`
--

DROP TABLE IF EXISTS `skill_entity`;
CREATE TABLE IF NOT EXISTS `skill_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `skill_category_id` bigint(20) DEFAULT NULL,
  `skill_rate` bigint(20) DEFAULT NULL,
  `skillname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `skill_entity`
--

INSERT INTO `skill_entity` (`id`, `description`, `is_active`, `skill_category_id`, `skill_rate`, `skillname`) VALUES
(1, NULL, b'0', 1, 80, 'HTML/JS/CSS'),
(2, NULL, b'0', 1, 60, 'Angular'),
(3, NULL, b'0', 1, 70, 'NodeJS'),
(4, NULL, b'0', 2, 80, 'MySql'),
(5, NULL, b'0', 2, 40, 'PgSql'),
(6, NULL, b'0', 2, 50, 'PL/SQL'),
(7, NULL, b'0', 2, 20, 'Oracle'),
(8, NULL, b'0', 3, 90, 'C#'),
(9, NULL, b'0', 3, 20, 'Kotlin(Android)'),
(10, NULL, b'0', 3, 70, 'Java'),
(11, NULL, b'0', 3, 60, 'UML'),
(12, NULL, b'0', 4, 90, 'Scrum'),
(13, NULL, b'0', 4, 90, 'GIT/SVN'),
(14, NULL, b'0', 4, 90, 'PhotoShop');

-- --------------------------------------------------------

--
-- Structure de la table `social_network_entity`
--

DROP TABLE IF EXISTS `social_network_entity`;
CREATE TABLE IF NOT EXISTS `social_network_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `portfolio_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `social_network_entity`
--

INSERT INTO `social_network_entity` (`id`, `is_active`, `name`, `portfolio_id`, `url`) VALUES
(1, b'0', 'LinkedIn', 1, 'http://linkedin.com'),
(2, b'0', 'Facebook', 1, 'http://Facebook.com'),
(3, b'0', 'Insta', 1, 'http://Insta.com');

-- --------------------------------------------------------

--
-- Structure de la table `upload_file_entity`
--

DROP TABLE IF EXISTS `upload_file_entity`;
CREATE TABLE IF NOT EXISTS `upload_file_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `portfolio_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `education_entity_educationdetail_list`
--
ALTER TABLE `education_entity_educationdetail_list`
  ADD CONSTRAINT `FKcanyf2wn1t4hd1x1ouhg2rnng` FOREIGN KEY (`educationdetail_list_education_detail_id`) REFERENCES `education_detail_entity` (`education_detail_id`),
  ADD CONSTRAINT `FKg1ppripug79hbrtqf3rad08wu` FOREIGN KEY (`education_entity_education_id`) REFERENCES `education_entity` (`education_id`);

--
-- Contraintes pour la table `skill_category_entity_skill_list`
--
ALTER TABLE `skill_category_entity_skill_list`
  ADD CONSTRAINT `FK8qgvpjfskee7mpkxx8sgvdasw` FOREIGN KEY (`skill_list_id`) REFERENCES `skill_entity` (`id`),
  ADD CONSTRAINT `FKrorhajhqd7r4d75da0y80svr1` FOREIGN KEY (`skill_category_entity_skill_category_id`) REFERENCES `skill_category_entity` (`skill_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
