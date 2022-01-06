-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql11.freesqldatabase.com
-- Généré le :  jeu. 06 jan. 2022 à 13:46
-- Version du serveur :  5.5.62-0ubuntu0.14.04.1
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
-- Base de données :  `sql11463312`
--
CREATE DATABASE IF NOT EXISTS `sql11463312` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql11463312`;

-- --------------------------------------------------------

--
-- Structure de la table `arbitrages`
--

CREATE TABLE `arbitrages` (
  `idMatch` mediumint(8) NOT NULL,
  `idArbitre` mediumint(8) NOT NULL,
  `chaise` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `arbitres`
--

CREATE TABLE `arbitres` (
  `idArbitre` mediumint(8) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pays` varchar(100) DEFAULT NULL,
  `jugeArbitre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `arbitres`
--

INSERT INTO `arbitres` (`idArbitre`, `nom`, `telephone`, `email`, `pays`, `jugeArbitre`) VALUES
(1, 'Shafira', '(931) 884-9844', 'Nonn.cursus@yahoo.com', 'Netherlands', 'Oui'),
(2, 'Mufutau', '1-836-834-4496', 'sed.diam@google.couk', 'Costa Rica', 'Non'),
(3, 'Dominic', '1-691-500-0622', 'accumsan.laoreet@hotmail.edu', 'Costa Rica', 'Non'),
(4, 'Yeo', '1-344-346-7407', 'eleifend.vitae.erat@google.edu', 'Vietnam', 'Non'),
(5, 'Willow', '1-404-433-7839', 'dis.parturient@outlook.edu', 'Poland', 'Non'),
(6, 'Kennan', '1-788-481-4029', 'facilisis.magna.tellus@hotmail.ca', 'Peru', 'Non'),
(7, 'Yoshi', '1-604-795-9455', 'lacinia@aol.edu', 'India', 'Non'),
(8, 'Cynthia', '1-634-878-2382', 'habitant.morbi@google.net', 'South Korea', 'Non'),
(9, 'Kevin', '(607) 616-4986', 'senectus.et.netus@icloud.com', 'Turkey', 'Non'),
(10, 'Kirsten', '(535) 442-9767', 'sed.eu.nibh@yahoo.org', 'Germany', 'Non'),
(11, 'Kylee', '(818) 489-1951', 'laoreet@aol.net', 'Nigeria', 'Non'),
(12, 'Abdul', '(425) 834-4675', 'consectetuer@outlook.net', 'United States', 'Non'),
(13, 'Althea', '(732) 865-7276', 'eu.tempor.erat@protonmail.couk', 'Germany', 'Non'),
(14, 'Otto', '(223) 548-6603', 'mauris.sit@icloud.org', 'Chile', 'Non'),
(15, 'Flavia', '1-765-656-7533', 'mi.felis@icloud.org', 'Nigeria', 'Non'),
(16, 'Mari', '1-129-381-0347', 'nec.tempus@google.com', 'South Korea', 'Non'),
(17, 'Ethan', '1-775-977-5025', 'nullam@aol.org', 'Italy', 'Non'),
(18, 'Hayley', '1-437-412-6281', 'netus@aol.com', 'China', 'Non'),
(19, 'Briar', '1-413-275-3482', 'malesuada.malesuada@outlook.couk', 'Nonrway', 'Non'),
(20, 'Leslie', '1-318-803-5794', 'egestas.urna@protonmail.couk', 'United States', 'Non'),
(21, 'Austin', '(254) 635-8766', 'magna.nam.ligula@aol.couk', 'Poland', 'Non'),
(22, 'Denton', '(732) 322-1417', 'Nonn.arcu.vivamus@protonmail.com', 'Peru', 'Non'),
(23, 'Marcia', '1-847-134-5836', 'torquent.per@hotmail.org', 'Poland', 'Non'),
(24, 'Samuel', '1-701-572-1238', 'metus.vitae@aol.couk', 'Nonrway', 'Non'),
(25, 'Kane', '(132) 642-8849', 'purus.duis.elementum@yahoo.edu', 'Sweden', 'Non'),
(26, 'Chloe', '(683) 619-3345', 'faucibus.id@google.edu', 'India', 'Non'),
(27, 'Cally', '1-421-623-4610', 'aptent@icloud.couk', 'Spain', 'Non'),
(28, 'Davis', '1-730-198-3141', 'magna@outlook.com', 'Turkey', 'Non'),
(29, 'Madeson', '1-743-388-4558', 'eu.nibh@outlook.org', 'Turkey', 'Non'),
(30, 'Jin', '1-330-518-6818', 'varius.orci.in@yahoo.org', 'Germany', 'Non'),
(31, 'Xaviera', '(417) 134-7141', 'ullamcorper@yahoo.couk', 'Australia', 'Non');

-- --------------------------------------------------------

--
-- Structure de la table `courts`
--

CREATE TABLE `courts` (
  `idCourt` int(11) NOT NULL,
  `principal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `courts`
--

INSERT INTO `courts` (`idCourt`, `principal`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `idEquipe` mediumint(8) UNSIGNED NOT NULL,
  `idJoueur1` mediumint(8) UNSIGNED NOT NULL,
  `idJoueur2` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`idEquipe`, `idJoueur1`, `idJoueur2`) VALUES
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
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `idJoueur` mediumint(8) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pays` varchar(100) DEFAULT NULL,
  `classement` mediumint(9) DEFAULT NULL,
  `groupe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`idJoueur`, `nom`, `telephone`, `email`, `pays`, `classement`, `groupe`) VALUES
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
  `idMatch` int(11) NOT NULL,
  `idPlanning` mediumint(8) NOT NULL,
  `etape` varchar(100) NOT NULL,
  `idVainqueur` int(11) DEFAULT NULL,
  `idPerdant` int(11) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `estDouble` tinyint(1) NOT NULL DEFAULT '0',
  `idMatchPrec1` mediumint(8) NOT NULL,
  `idMatchPrec2` mediumint(8) NOT NULL,
  `idJoueur1` int(11) DEFAULT NULL,
  `idJoueur2` int(11) DEFAULT NULL,
  `idEquipe1` int(11) DEFAULT NULL,
  `idEquipe2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

CREATE TABLE `planning` (
  `idPlanning` mediumint(8) NOT NULL,
  `nombreMatchs` int(11) NOT NULL,
  `nombreJoueurs` int(11) NOT NULL,
  `nombreQualifiés` int(11) NOT NULL,
  `nomPlanning` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `planning`
--

INSERT INTO `planning` (`idPlanning`, `nombreMatchs`, `nombreJoueurs`, `nombreQualifiés`, `nomPlanning`) VALUES
(1, 24, 32, 4, 'Qualifications'),
(2, 31, 32, 2, 'Simple'),
(3, 15, 32, 4, 'Double');

-- --------------------------------------------------------

--
-- Structure de la table `ramassage`
--

CREATE TABLE `ramassage` (
  `idMatch` mediumint(8) NOT NULL,
  `idEquipeRamasseur` mediumint(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ramasseurs`
--

CREATE TABLE `ramasseurs` (
  `idRamasseur` mediumint(8) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pays` varchar(100) DEFAULT NULL,
  `idEquipeRamasseur` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ramasseurs`
--

INSERT INTO `ramasseurs` (`idRamasseur`, `nom`, `telephone`, `email`, `pays`, `idEquipeRamasseur`) VALUES
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
-- Structure de la table `reservcourt`
--

CREATE TABLE `reservcourt` (
  `idReservation` mediumint(8) NOT NULL,
  `idCourt` mediumint(8) DEFAULT NULL,
  `idMatch` mediumint(8) DEFAULT NULL,
  `idJoueur` mediumint(8) DEFAULT NULL,
  `heure` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `jour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arbitrages`
--
ALTER TABLE `arbitrages`
  ADD PRIMARY KEY (`idMatch`,`idArbitre`);

--
-- Index pour la table `arbitres`
--
ALTER TABLE `arbitres`
  ADD PRIMARY KEY (`idArbitre`);

--
-- Index pour la table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`idCourt`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`idEquipe`),
  ADD KEY `fk_j1` (`idJoueur1`),
  ADD KEY `fk_j2` (`idJoueur2`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`idJoueur`);

--
-- Index pour la table `matchs`
--
ALTER TABLE `matchs`
  ADD PRIMARY KEY (`idMatch`);

--
-- Index pour la table `planning`
--
ALTER TABLE `planning`
  ADD PRIMARY KEY (`idPlanning`);

--
-- Index pour la table `ramassage`
--
ALTER TABLE `ramassage`
  ADD PRIMARY KEY (`idMatch`,`idEquipeRamasseur`);

--
-- Index pour la table `ramasseurs`
--
ALTER TABLE `ramasseurs`
  ADD PRIMARY KEY (`idRamasseur`);

--
-- Index pour la table `reservcourt`
--
ALTER TABLE `reservcourt`
  ADD PRIMARY KEY (`idReservation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arbitres`
--
ALTER TABLE `arbitres`
  MODIFY `idArbitre` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `idEquipe` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `idJoueur` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `matchs`
--
ALTER TABLE `matchs`
  MODIFY `idMatch` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `planning`
--
ALTER TABLE `planning`
  MODIFY `idPlanning` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ramasseurs`
--
ALTER TABLE `ramasseurs`
  MODIFY `idRamasseur` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD CONSTRAINT `fk_j1` FOREIGN KEY (`idJoueur1`) REFERENCES `joueurs` (`idJoueur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_j2` FOREIGN KEY (`idJoueur2`) REFERENCES `joueurs` (`idJoueur`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
