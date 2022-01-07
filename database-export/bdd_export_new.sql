-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 34.159.220.180
-- Généré le :  ven. 07 jan. 2022 à 14:59
-- Version du serveur :  5.7.36-google-log
-- Version de PHP :  7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd_cpoa_2022`
--

-- --------------------------------------------------------

--
-- Structure de la table `arbitre`
--

CREATE TABLE `arbitre` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juge_arbitre` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `arbitre`
--

INSERT INTO `arbitre` (`id`, `nom`, `telephone`, `email`, `pays`, `juge_arbitre`) VALUES
(1, 'Shafira', '(931) 884-9844', 'Nonn.cursus@yahoo.com', 'Netherlands', 1),
(2, 'Mufutau', '1-836-834-4496', 'sed.diam@google.couk', 'Costa Rica', 0),
(3, 'Dominic', '1-691-500-0622', 'accumsan.laoreet@hotmail.edu', 'Costa Rica', 0),
(4, 'Yeo', '1-344-346-7407', 'eleifend.vitae.erat@google.edu', 'Vietnam', 0),
(5, 'Willow', '1-404-433-7839', 'dis.parturient@outlook.edu', 'Poland', 0),
(6, 'Kennan', '1-788-481-4029', 'facilisis.magna.tellus@hotmail.ca', 'Peru', 0),
(7, 'Yoshi', '1-604-795-9455', 'lacinia@aol.edu', 'India', 0),
(8, 'Cynthia', '1-634-878-2382', 'habitant.morbi@google.net', 'South Korea', 0),
(9, 'Kevin', '(607) 616-4986', 'senectus.et.netus@icloud.com', 'Turkey', 0),
(10, 'Kirsten', '(535) 442-9767', 'sed.eu.nibh@yahoo.org', 'Germany', 0),
(11, 'Kylee', '(818) 489-1951', 'laoreet@aol.net', 'Nigeria', 0),
(12, 'Abdul', '(425) 834-4675', 'consectetuer@outlook.net', 'United States', 0),
(13, 'Althea', '(732) 865-7276', 'eu.tempor.erat@protonmail.couk', 'Germany', 0),
(14, 'Otto', '(223) 548-6603', 'mauris.sit@icloud.org', 'Chile', 0),
(15, 'Flavia', '1-765-656-7533', 'mi.felis@icloud.org', 'Nigeria', 0),
(16, 'Mari', '1-129-381-0347', 'nec.tempus@google.com', 'South Korea', 0),
(17, 'Ethan', '1-775-977-5025', 'nullam@aol.org', 'Italy', 0),
(18, 'Hayley', '1-437-412-6281', 'netus@aol.com', 'China', 0),
(19, 'Briar', '1-413-275-3482', 'malesuada.malesuada@outlook.couk', 'Nonrway', 0),
(20, 'Leslie', '1-318-803-5794', 'egestas.urna@protonmail.couk', 'United States', 0),
(21, 'Austin', '(254) 635-8766', 'magna.nam.ligula@aol.couk', 'Poland', 0),
(22, 'Denton', '(732) 322-1417', 'Nonn.arcu.vivamus@protonmail.com', 'Peru', 0),
(23, 'Marcia', '1-847-134-5836', 'torquent.per@hotmail.org', 'Poland', 0),
(24, 'Samuel', '1-701-572-1238', 'metus.vitae@aol.couk', 'Nonrway', 0),
(25, 'Kane', '(132) 642-8849', 'purus.duis.elementum@yahoo.edu', 'Sweden', 0),
(26, 'Chloe', '(683) 619-3345', 'faucibus.id@google.edu', 'India', 0),
(27, 'Cally', '1-421-623-4610', 'aptent@icloud.couk', 'Spain', 0),
(28, 'Davis', '1-730-198-3141', 'magna@outlook.com', 'Turkey', 0),
(29, 'Madeson', '1-743-388-4558', 'eu.nibh@outlook.org', 'Turkey', 0),
(30, 'Jin', '1-330-518-6818', 'varius.orci.in@yahoo.org', 'Germany', 0),
(31, 'Xaviera', '(417) 134-7141', 'ullamcorper@yahoo.couk', 'Australia', 0);

-- --------------------------------------------------------

--
-- Structure de la table `billet`
--

CREATE TABLE `billet` (
  `id` int(11) NOT NULL,
  `jour` int(11) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `court`
--

CREATE TABLE `court` (
  `id` int(11) NOT NULL,
  `principal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `court`
--

INSERT INTO `court` (`id`, `principal`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220107122421', '2022-01-07 12:24:40', 108),
('DoctrineMigrations\\Version20220107122624', '2022-01-07 12:26:32', 125),
('DoctrineMigrations\\Version20220107122739', '2022-01-07 12:27:46', 1330),
('DoctrineMigrations\\Version20220107122852', '2022-01-07 12:28:59', 143),
('DoctrineMigrations\\Version20220107124822', '2022-01-07 12:48:35', 377),
('DoctrineMigrations\\Version20220107125623', '2022-01-07 12:56:34', 597),
('DoctrineMigrations\\Version20220107130148', '2022-01-07 13:02:04', 480),
('DoctrineMigrations\\Version20220107134056', '2022-01-07 13:41:08', 637),
('DoctrineMigrations\\Version20220107134515', '2022-01-07 13:45:27', 285),
('DoctrineMigrations\\Version20220107134537', '2022-01-07 13:45:44', 923);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `id_joueur1_id` int(11) NOT NULL,
  `id_joueur2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`id`, `id_joueur1_id`, `id_joueur2_id`) VALUES
(-1, -1, -1),
(1, 60, 76),
(2, 61, 77),
(3, 62, 78),
(4, 63, 79),
(5, 64, 80),
(6, 65, 81),
(7, 66, 82),
(8, 67, 83),
(9, 68, 84),
(10, 69, 85),
(11, 70, 86),
(12, 71, 87),
(13, 72, 88),
(14, 73, 89),
(15, 74, 90),
(16, 75, 91);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classement` int(11) NOT NULL,
  `groupe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id`, `nom`, `telephone`, `email`, `pays`, `classement`, `groupe`) VALUES
(-1, '', '', '', '', -1, ''),
(17, 'Bell', '1-246-226-2220', 'faucibus.orci.luctus@aol.ca', 'France', 0, 'Qualifications'),
(18, 'Bert', '1-987-588-6051', 'curae.donec@protonmail.couk', 'Indonesia', 2, 'Qualifications'),
(19, 'Georgia', '1-371-823-8854', 'elit.dictum@protonmail.net', 'Sweden', 4, 'Qualifications'),
(20, 'Burke', '(383) 588-5133', 'ac@protonmail.com', 'Poland', 4, 'Qualifications'),
(21, 'Giselle', '1-728-935-2567', 'in.consectetuer@yahoo.org', 'United Kingdom', 7, 'Qualifications'),
(22, 'Lila', '1-776-537-6545', 'maecenas.iaculis@protonmail.couk', 'Germany', 0, 'Qualifications'),
(23, 'Xenos', '1-764-251-3255', 'fusce.mollis.duis@protonmail.net', 'Turkey', 3, 'Qualifications'),
(24, 'Thomas', '1-122-873-4233', 'ullamcorper@icloud.ca', 'Costa Rica', 1, 'Qualifications'),
(25, 'Ava', '1-750-711-1315', 'ultrices.a.auctor@aol.ca', 'Indonesia', 6, 'Qualifications'),
(26, 'Boris', '(420) 325-5578', 'pellentesque@outlook.ca', 'Netherlands', 9, 'Qualifications'),
(27, 'Nathaniel', '(415) 796-8115', 'vestibulum.nec@hotmail.ca', 'Spain', 4, 'Qualifications'),
(28, 'Clare', '1-142-942-4518', 'nonummy@icloud.couk', 'Turkey', 8, 'Qualifications'),
(29, 'Richard', '1-458-677-0475', 'enim@yahoo.couk', 'Sweden', 6, 'Qualifications'),
(30, 'Hedley', '(885) 161-7166', 'magna.a.tortor@protonmail.com', 'China', 7, 'Qualifications'),
(31, 'Lev', '(374) 675-3832', 'mauris.magna@aol.couk', 'Sweden', 9, 'Qualifications'),
(32, 'Garth', '1-411-544-1561', 'diam.duis.mi@yahoo.couk', 'Nigeria', 10, 'Qualifications'),
(33, 'Rina', '(480) 215-0378', 'adipiscing@hotmail.org', 'Belgium', 2, 'Simple'),
(34, 'Amanda', '1-234-583-8211', 'sed.idJoueurs@google.org', 'Netherlands', 3, 'Simple'),
(35, 'Jamalia', '1-487-418-1494', 'molestie.tortor@outlook.couk', 'Netherlands', 4, 'Simple'),
(36, 'Brody', '(278) 357-3821', 'commodo.hendrerit.donec@hotmail.couk', 'Costa Rica', 3, 'Simple'),
(37, 'Wyoming', '1-461-887-5152', 'malesuada.malesuada@yahoo.net', 'United States', 3, 'Simple'),
(38, 'Deacon', '(768) 824-5845', 'non@yahoo.org', 'Ireland', 4, 'Simple'),
(39, 'Abraham', '1-654-647-9481', 'nam.ligula@google.net', 'Peru', 10, 'Simple'),
(40, 'Quon', '(234) 792-2277', 'ligula@aol.com', 'Ireland', 7, 'Simple'),
(41, 'Paki', '(602) 710-4354', 'pellentesque.ultricies@protonmail.edu', 'Australia', 6, 'Simple'),
(42, 'Keegan', '1-731-532-3149', 'eget.varius@aol.net', 'Norway', 0, 'Simple'),
(43, 'Kermit', '1-861-254-5737', 'egestas.ligula@google.ca', 'France', 6, 'Simple'),
(44, 'Grant', '1-529-296-1687', 'praesent.interdum.ligula@aol.net', 'Poland', 2, 'Simple'),
(45, 'Paula', '(365) 747-5358', 'nulla.tincidJoueursunt@hotmail.edu', 'Germany', 1, 'Simple'),
(46, 'Pamela', '(833) 272-1389', 'pede@yahoo.com', 'Chile', 8, 'Simple'),
(47, 'Tashya', '(448) 575-0286', 'diam@protonmail.couk', 'Norway', 6, 'Simple'),
(48, 'Blake', '(617) 267-0802', 'commodo.ipsum@protonmail.edu', 'Canada', 2, 'Simple'),
(49, 'Kaseem', '(757) 679-3230', 'turpis.non@aol.ca', 'Poland', 10, 'Simple'),
(50, 'TaShya', '1-297-689-3296', 'luctus.lobortis@outlook.net', 'Nigeria', 4, 'Simple'),
(51, 'Daquan', '(339) 885-1846', 'nibh.aliquam@aol.net', 'Germany', 0, 'Simple'),
(52, 'Bevis', '(297) 957-8719', 'vel@outlook.org', 'Brazil', 4, 'Simple'),
(53, 'Ila', '1-396-118-9728', 'quisque@yahoo.edu', 'United States', 0, 'Simple'),
(54, 'Kelsey', '1-360-548-8583', 'semper.pretium@icloud.ca', 'Norway', 8, 'Simple'),
(55, 'Reece', '1-326-278-9835', 'eget@google.ca', 'Costa Rica', 8, 'Simple'),
(56, 'Ria', '(877) 823-9116', 'semper.rutrum@outlook.edu', 'India', 3, 'Simple'),
(57, 'Len', '(733) 801-5033', 'magna.nec@hotmail.ca', 'Austria', 4, 'Simple'),
(58, 'Preston', '(770) 858-5654', 'orci@yahoo.org', 'Poland', 3, 'Simple'),
(59, 'Eugenia', '(587) 136-5946', 'ut.nec@outlook.com', 'Costa Rica', 4, 'Simple'),
(60, 'Belle', '1-581-351-7132', 'dis.parturient.montes@hotmail.ca', 'Indonesia', 4, 'Double'),
(61, 'Kerry', '(931) 968-7488', 'aenean.euismod@icloud.com', 'United Kingdom', 2, 'Double'),
(62, 'Carter', '(743) 655-1935', 'est.vitae.sodales@protonmail.ca', 'Costa Rica', 9, 'Double'),
(63, 'Mollie', '1-660-535-3874', 'mattis.cras.eget@protonmail.edu', 'Belgium', 4, 'Double'),
(64, 'Genevieve', '(525) 457-5861', 'eu.accumsan@hotmail.couk', 'China', 9, 'Double'),
(65, 'Velma', '1-111-545-7488', 'laoreet.ipsum.curabitur@icloud.ca', 'Pakistan', 0, 'Double'),
(66, 'Malik', '(583) 596-6222', 'elit.elit@outlook.net', 'Indonesia', 4, 'Double'),
(67, 'Calista', '1-863-761-4485', 'idJoueurs.ante@hotmail.couk', 'Vietnam', 10, 'Double'),
(68, 'Colette', '1-344-917-3373', 'eget@protonmail.edu', 'Indonesia', 3, 'Double'),
(69, 'Lucas', '(483) 863-3327', 'eu.arcu@hotmail.net', 'Canada', 5, 'Double'),
(70, 'Brenda', '(362) 371-0837', 'sodales@google.couk', 'Australia', 1, 'Double'),
(71, 'Karina', '1-592-853-1255', 'suspendisse.sed@protonmail.com', 'Germany', 2, 'Double'),
(72, 'Damian', '1-426-746-6804', 'nascetur.ridJoueursiculus@hotmail.couk', 'Vietnam', 7, 'Double'),
(73, 'Tanek', '(492) 476-9042', 'eleifend.vitae@aol.org', 'Pakistan', 2, 'Double'),
(74, 'Alma', '1-796-514-9297', 'ridJoueursiculus@yahoo.com', 'Netherlands', 4, 'Double'),
(75, 'Lane', '1-464-517-7837', 'libero@yahoo.edu', 'Indonesia', 6, 'Double'),
(76, 'Kirby', '(571) 789-8066', 'tempus.lorem@yahoo.org', 'United States', 5, 'Double'),
(77, 'Lars', '(247) 227-6467', 'nisl.elementum@yahoo.org', 'Nigeria', 9, 'Double'),
(78, 'Oliver', '1-390-629-7448', 'sociis.natoque.penatibus@protonmail.edu', 'Russian Federation', 7, 'Double'),
(79, 'Amelia', '1-567-556-5074', 'facilisis.facilisis@hotmail.com', 'Poland', 5, 'Double'),
(80, 'Adena', '(857) 253-5853', 'duis.gravidJoueursa@google.couk', 'Austria', 9, 'Double'),
(81, 'Priscilla', '1-294-962-0787', 'elit.pede@hotmail.couk', 'Costa Rica', 1, 'Double'),
(82, 'Price', '(205) 768-4417', 'cras@outlook.net', 'Italy', 9, 'Double'),
(83, 'Stone', '1-881-819-1687', 'tincidJoueursunt.nibh@icloud.org', 'South Korea', 3, 'Double'),
(84, 'Dustin', '(532) 579-3012', 'elementum.dui@aol.edu', 'Australia', 9, 'Double'),
(85, 'Xavier', '1-653-555-1925', 'urna.suscipit@protonmail.ca', 'Australia', 1, 'Double'),
(86, 'Xavier', '(218) 120-7298', 'suspendisse.commodo@google.ca', 'Nigeria', 8, 'Double'),
(87, 'Elaine', '(722) 646-7267', 'cras@hotmail.ca', 'Italy', 6, 'Double'),
(88, 'Aladdin', '1-446-538-0566', 'in.magna@yahoo.org', 'Netherlands', 5, 'Double'),
(89, 'Shana', '(221) 731-7431', 'commodo.tincidJoueursunt@google.couk', 'Russian Federation', 10, 'Double'),
(90, 'Shea', '(698) 571-3776', 'massa.integer@yahoo.net', 'New Zealand', 9, 'Double'),
(91, 'Bruce', '1-821-481-8482', 'magna@hotmail.org', 'Chile', 3, 'Double'),
(92, 'Declan', '(120) 457-0614', 'egestas.a.dui@protonmail.couk', 'Germany', 8, 'Simple');

-- --------------------------------------------------------

--
-- Structure de la table `matchs`
--

CREATE TABLE `matchs` (
  `id` int(11) NOT NULL,
  `id_planning_id` int(11) NOT NULL,
  `id_vainqueur_id` int(11) DEFAULT NULL,
  `id_perdant_id` int(11) NOT NULL,
  `etape` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `est_double` tinyint(1) NOT NULL,
  `id_joueur1` int(11) NOT NULL,
  `id_joueur2` int(11) NOT NULL,
  `id_equipe1` int(11) NOT NULL,
  `id_equipe2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matchs`
--

INSERT INTO `matchs` (`id`, `id_planning_id`, `id_vainqueur_id`, `id_perdant_id`, `etape`, `score`, `est_double`, `id_joueur1`, `id_joueur2`, `id_equipe1`, `id_equipe2`) VALUES
(2161, 1, -1, -1, 'Seizième', '', 0, 40, 58, -1, -1),
(2308, 1, -1, -1, 'Seizième', '', 0, 54, 56, -1, -1),
(2465, 1, -1, -1, 'Seizième', '', 0, 44, 49, -1, -1),
(2486, 1, -1, -1, 'Seizième', '', 0, 53, 39, -1, -1),
(2541, 1, -1, -1, 'Seizième', '', 0, 42, 59, -1, -1),
(2831, 1, -1, -1, 'Seizième', '', 0, 52, 46, -1, -1),
(3242, 1, -1, -1, 'Seizième', '', 0, 45, 48, -1, -1),
(3511, 1, -1, -1, 'Seizième', '', 0, 41, 36, -1, -1),
(4447, 1, -1, -1, 'Seizième', '', 0, 33, 92, -1, -1),
(5116, 1, -1, -1, 'Seizième', '', 0, 50, -1, -1, -1),
(5163, 1, -1, -1, 'Seizième', '', 0, 43, 47, -1, -1),
(5189, 1, -1, -1, 'Seizième', '', 0, 37, -1, -1, -1),
(8234, 1, -1, -1, 'Seizième', '', 0, 51, -1, -1, -1),
(8255, 1, -1, -1, 'Seizième', '', 0, 34, 38, -1, -1),
(8542, 1, -1, -1, 'Seizième', '', 0, 35, -1, -1, -1),
(9323, 1, -1, -1, 'Seizième', '', 0, 57, 55, -1, -1);

-- --------------------------------------------------------

--
-- Structure de la table `matchs_arbitre`
--

CREATE TABLE `matchs_arbitre` (
  `matchs_id` int(11) NOT NULL,
  `arbitre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

CREATE TABLE `planning` (
  `id` int(11) NOT NULL,
  `nombre_matchs` int(11) NOT NULL,
  `nombre_joueurs` int(11) NOT NULL,
  `nombre_qualifies` int(11) NOT NULL,
  `nom_planning` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planning`
--

INSERT INTO `planning` (`id`, `nombre_matchs`, `nombre_joueurs`, `nombre_qualifies`, `nom_planning`) VALUES
(1, 24, 32, 4, 'Qualifications'),
(2, 31, 32, 2, 'Simple'),
(3, 15, 32, 4, 'Double');

-- --------------------------------------------------------

--
-- Structure de la table `ramasseur`
--

CREATE TABLE `ramasseur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_equipe_ramasseurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ramasseur`
--

INSERT INTO `ramasseur` (`id`, `nom`, `telephone`, `email`, `pays`, `id_equipe_ramasseurs`) VALUES
(1, 'Keefe', '1-955-948-1451', 'ligula.consectetuer.rhoncus@hotmail.ca', 'Brazil', 1),
(2, 'Nora', '(885) 708-5886', 'feugiat.nec@icloud.edu', 'China', 1),
(3, 'Hunter', '1-209-875-2874', 'proin.velit@hotmail.couk', 'Indonesia', 1),
(4, 'Clarke', '1-172-237-2097', 'felis.eget@yahoo.ca', 'Netherlands', 1),
(5, 'Isaac', '(118) 838-1997', 'sit.amet@outlook.ca', 'Australia', 1),
(6, 'Yolanda', '(571) 788-4752', 'a.feugiat@yahoo.org', 'Nigeria', 1),
(7, 'Brenna', '1-528-436-6044', 'magnis.dis@google.ca', 'Peru', 2),
(8, 'Chester', '(763) 231-1237', 'amet.dapibus@google.couk', 'Mexico', 2),
(9, 'Forrest', '1-511-846-8068', 'ultrices@hotmail.ca', 'Italy', 2),
(10, 'Lillith', '(284) 986-4374', 'commodo@yahoo.net', 'Austria', 2),
(11, 'Lillith', '(464) 362-3588', 'rhoncus.proin@outlook.com', 'Costa Rica', 2),
(12, 'Kiona', '(654) 288-6624', 'magna.sed.eu@hotmail.edu', 'Indonesia', 2),
(13, 'Keefe', '1-757-587-6802', 'sed@protonmail.couk', 'New Zealand', 3),
(14, 'Jillian', '(275) 352-8326', 'amet.ultricies.sem@yahoo.net', 'Sweden', 3),
(15, 'Rama', '(358) 225-6756', 'velit.eu@yahoo.edu', 'Australia', 3),
(16, 'Isadora', '(386) 128-0303', 'metus.vitae@google.couk', 'Colombia', 3),
(17, 'Sopoline', '1-713-684-8169', 'enim.etiam.imperdiet@icloud.net', 'Indonesia', 3),
(18, 'Alan', '1-313-623-7157', 'porta.elit@protonmail.com', 'Norway', 3),
(19, 'Alfonso', '1-314-481-7754', 'cubilia.curae@yahoo.org', 'Turkey', 4),
(20, 'Abigail', '(490) 978-2815', 'venenatis.vel@protonmail.edu', 'Poland', 4),
(21, 'Arden', '(732) 485-6836', 'odio.etiam@yahoo.net', 'United States', 4),
(22, 'Wesley', '(654) 786-1967', 'sem.egestas.blandit@hotmail.couk', 'Turkey', 4),
(23, 'Yardley', '1-268-841-6921', 'commodo.tincidRamasseurunt@google.edu', 'Turkey', 4),
(24, 'CassidRamasseury', '1-826-334-8149', 'tellus.idRamasseur.nunc@hotmail.org', 'Brazil', 4),
(25, 'Nathaniel', '1-124-302-8353', 'adipiscing.mauris@protonmail.couk', 'Austria', 5),
(26, 'Jolene', '(132) 294-1477', 'luctus.ipsum@yahoo.couk', 'Vietnam', 5),
(27, 'Norman', '(386) 382-8260', 'sem.pellentesque@aol.net', 'Pakistan', 5),
(28, 'Isaiah', '(413) 238-1103', 'rutrum.non@google.com', 'Nigeria', 5),
(29, 'Jamal', '(162) 351-3214', 'arcu.sed@google.net', 'Austria', 5),
(30, 'Adrienne', '(331) 812-1205', 'massa.suspendisse@aol.org', 'Indonesia', 5),
(31, 'Iris', '(354) 132-0920', 'arcu.vel@yahoo.net', 'France', 6),
(32, 'Ebony', '(220) 874-5746', 'commodo.auctor.velit@protonmail.net', 'Costa Rica', 6),
(33, 'Jeanette', '(472) 555-9706', 'mus.proin@hotmail.edu', 'Italy', 6),
(34, 'Patrick', '1-354-845-3226', 'mauris.integer.sem@yahoo.ca', 'Australia', 6),
(35, 'Lesley', '1-657-415-8826', 'lectus.a@outlook.net', 'Brazil', 6),
(36, 'Rogan', '1-864-500-9810', 'tincidRamasseurunt.nunc.ac@hotmail.org', 'Ireland', 6),
(37, 'Macon', '1-418-747-0758', 'dictum.eu@aol.ca', 'Germany', 7),
(38, 'Edward', '1-885-468-9616', 'maecenas@icloud.org', 'Mexico', 7),
(39, 'Felix', '(677) 357-7968', 'lorem.ac@aol.net', 'Turkey', 7),
(40, 'Igor', '1-350-428-7845', 'ullamcorper.duis.cursus@aol.ca', 'Ireland', 7),
(41, 'Lisandra', '(937) 312-2782', 'dui.nec.tempus@icloud.com', 'France', 7),
(42, 'Brynne', '(391) 703-7885', 'nec.tempus.mauris@hotmail.couk', 'Austria', 7),
(43, 'Ignacia', '1-742-455-7346', 'quisque@google.com', 'Poland', 8),
(44, 'Ashely', '1-961-454-5224', 'et.libero@protonmail.org', 'Peru', 8),
(45, 'Talon', '(792) 341-6722', 'nec.eleifend@google.net', 'Norway', 8),
(46, 'Sawyer', '(382) 468-0169', 'ornare@protonmail.edu', 'India', 8),
(47, 'GraidRamasseuren', '(825) 330-2431', 'purus.in@protonmail.edu', 'Mexico', 8),
(48, 'Tara', '(586) 677-9236', 'massa.mauris.vestibulum@google.com', 'Peru', 8),
(49, 'Aurora', '1-162-674-3638', 'mollis.integer@outlook.net', 'Spain', 9),
(50, 'Hermione', '1-551-477-7357', 'dapibus.gravidRamasseura@google.edu', 'Costa Rica', 9),
(51, 'Stone', '1-624-598-8653', 'venenatis.vel.faucibus@protonmail.com', 'Netherlands', 9),
(52, 'Raymond', '1-682-792-6277', 'hendrerit.idRamasseur@google.edu', 'Netherlands', 9),
(53, 'Akeem', '1-734-352-7437', 'fringilla.euismod@google.com', 'Italy', 9),
(54, 'Darius', '(848) 689-7784', 'posuere@hotmail.net', 'Brazil', 9),
(55, 'Basil', '(423) 683-1628', 'nunc.idRamasseur@icloud.com', 'Mexico', 10),
(56, 'Jakeem', '(638) 644-6727', 'non@icloud.couk', 'Germany', 10),
(57, 'Noelle', '1-912-311-4212', 'elit.aliquam.auctor@outlook.edu', 'Australia', 10),
(58, 'Ferris', '(373) 601-9683', 'vulputate.velit.eu@google.couk', 'Nigeria', 10),
(59, 'Xantha', '(674) 425-3156', 'orci.quis@hotmail.couk', 'Vietnam', 10),
(60, 'Pascale', '(718) 322-6845', 'in.faucibus@icloud.ca', 'Norway', 10);

-- --------------------------------------------------------

--
-- Structure de la table `reserv_court`
--

CREATE TABLE `reserv_court` (
  `id` int(11) NOT NULL,
  `id_court_id` int(11) NOT NULL,
  `id_match_id` int(11) DEFAULT NULL,
  `id_joueur_id` int(11) DEFAULT NULL,
  `heure` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `jour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billet`
--
ALTER TABLE `billet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2449BA15374B62E0` (`id_joueur1_id`),
  ADD UNIQUE KEY `UNIQ_2449BA1525FECD0E` (`id_joueur2_id`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matchs`
--
ALTER TABLE `matchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6B1E604125949EE6` (`id_planning_id`),
  ADD KEY `IDX_6B1E604154FD409C` (`id_vainqueur_id`),
  ADD KEY `IDX_6B1E6041AFC669F3` (`id_perdant_id`);

--
-- Index pour la table `matchs_arbitre`
--
ALTER TABLE `matchs_arbitre`
  ADD PRIMARY KEY (`matchs_id`,`arbitre_id`),
  ADD KEY `IDX_ED45AC3288EB7468` (`matchs_id`),
  ADD KEY `IDX_ED45AC32943A5F0` (`arbitre_id`);

--
-- Index pour la table `planning`
--
ALTER TABLE `planning`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ramasseur`
--
ALTER TABLE `ramasseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reserv_court`
--
ALTER TABLE `reserv_court`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A0343EF2B3C3AC9C` (`id_court_id`),
  ADD KEY `IDX_A0343EF27A654043` (`id_match_id`),
  ADD KEY `IDX_A0343EF229D76B4B` (`id_joueur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arbitre`
--
ALTER TABLE `arbitre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `billet`
--
ALTER TABLE `billet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `court`
--
ALTER TABLE `court`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `matchs`
--
ALTER TABLE `matchs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9980;
--
-- AUTO_INCREMENT pour la table `planning`
--
ALTER TABLE `planning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ramasseur`
--
ALTER TABLE `ramasseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `reserv_court`
--
ALTER TABLE `reserv_court`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `FK_2449BA1525FECD0E` FOREIGN KEY (`id_joueur2_id`) REFERENCES `joueur` (`id`),
  ADD CONSTRAINT `FK_2449BA15374B62E0` FOREIGN KEY (`id_joueur1_id`) REFERENCES `joueur` (`id`);

--
-- Contraintes pour la table `matchs`
--
ALTER TABLE `matchs`
  ADD CONSTRAINT `FK_6B1E604125949EE6` FOREIGN KEY (`id_planning_id`) REFERENCES `planning` (`id`),
  ADD CONSTRAINT `FK_6B1E604154FD409C` FOREIGN KEY (`id_vainqueur_id`) REFERENCES `joueur` (`id`),
  ADD CONSTRAINT `FK_6B1E6041AFC669F3` FOREIGN KEY (`id_perdant_id`) REFERENCES `joueur` (`id`);

--
-- Contraintes pour la table `matchs_arbitre`
--
ALTER TABLE `matchs_arbitre`
  ADD CONSTRAINT `FK_ED45AC3288EB7468` FOREIGN KEY (`matchs_id`) REFERENCES `matchs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ED45AC32943A5F0` FOREIGN KEY (`arbitre_id`) REFERENCES `arbitre` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reserv_court`
--
ALTER TABLE `reserv_court`
  ADD CONSTRAINT `FK_A0343EF229D76B4B` FOREIGN KEY (`id_joueur_id`) REFERENCES `joueur` (`id`),
  ADD CONSTRAINT `FK_A0343EF27A654043` FOREIGN KEY (`id_match_id`) REFERENCES `matchs` (`id`),
  ADD CONSTRAINT `FK_A0343EF2B3C3AC9C` FOREIGN KEY (`id_court_id`) REFERENCES `court` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
