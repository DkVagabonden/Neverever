-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for neverever
CREATE DATABASE IF NOT EXISTS `neverever` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_danish_ci */;
USE `neverever`;


-- Dumping structure for table neverever.loginattempts
CREATE TABLE IF NOT EXISTS `loginattempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Username` varchar(65) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table neverever.loginattempts: ~4 rows (approximately)
/*!40000 ALTER TABLE `loginattempts` DISABLE KEYS */;
INSERT INTO `loginattempts` (`IP`, `Attempts`, `LastLogin`, `Username`, `ID`) VALUES
	('::1', 1, '2016-07-08 12:36:06', 'vagabonden', 1),
	('::1', 1, '2016-07-08 13:50:59', '', 2),
	('::1', 1, '2016-07-08 12:27:55', 'vaga', 3),
	('::1', 1, '2016-07-08 12:27:49', 'pizza@piz.dk', 4);
/*!40000 ALTER TABLE `loginattempts` ENABLE KEYS */;


-- Dumping structure for table neverever.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` char(23) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table neverever.members: ~15 rows (approximately)
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `username`, `password`, `email`, `verified`, `mod_timestamp`) VALUES
	('11025577f9bd8cbf6f', 'test123asdad', '$2y$10$2ALPZQ2308spY/QdzlTwkuQYiPaYwOv1L4tO8Hi518cg3xGwjwIuW', 'vaga@it.dkasdadsad', 0, '2016-07-08 14:26:01'),
	('12506577f9a95b7c33', 'test123123123', '$2y$10$5KZNWHzrEwSI9b4Qifwa1eSWPazuPIRhOk//iUfbjsSRc.s4rcEO6', 'te123123123st@test.dk', 0, '2016-07-08 14:20:39'),
	('13721577f824a24b36', 'vaga2', '$2y$10$4lD4F.C8qc0I6eJvgzH2Fe6ic.fz3wafbCRZQzuiC0A4Bcx.CaYHm', 'vaga@it.dk', 0, '2016-07-08 12:36:59'),
	('1638577f97659b20e', 'test12313', '$2y$10$DWUE/lv3niPAM1cfOvAVvOG7nNja6GGpKuDp5GkhGIHxzwc7qTs7m', 'waka-ninja@hotmail.dk', 0, '2016-07-08 14:07:02'),
	('17107577f9bf505ca9', 'patricktest', '$2y$10$JVAZXx8VIZuTQQISxfX1EeQ6WBo/dB2T2PI.0Vai0Ol5lFu7CFY76', 'test@test.dketet', 0, '2016-07-08 14:26:29'),
	('17752577f70d15f8e3', 'patrick', '$2y$10$4nBXLwYXcxmeJ2N.rBd6tOMCnvPQz0nTXGIQfDRNU44sOYlgZ4eju', 'pizza@piz.dk', 0, '2016-07-08 11:22:26'),
	('1910577f9b9759cf7', 'patrickasdasd', '$2y$10$PHWwl4.Vx4eOD09Slc1WFOuDiKyONR0A9btEt3u9bfknC8sH/m4b6', 'vaga@it.dk243234', 0, '2016-07-08 14:24:55'),
	('19437577f68576f887', 'vaga', '$2y$10$8Nm/.ZeIUQ9QgDLvkLTDZuPVgt0yAWuZYz8tYb5WyVgQguKb7R.52', 'pizza@pizza.dk', 1, '2016-07-08 10:46:35'),
	('23565577f8940966e0', 'patrick2', '$2y$10$T1ced9Z4qmDu.aAaCFzJ8OyQ.elNei3wqD4tiEC2mAW16vsUn2IXG', 'vaga@it.dk3', 0, '2016-07-08 13:06:41'),
	('24328577f8e7d0fab5', 'patrick5', '$2y$10$YSSWwqrzekTF.hO8Row2au6Gm19X3cOBbV6Vr1jwZR.FY12ZJnSN6', 'vag3a@it.dk', 0, '2016-07-08 13:29:01'),
	('27887577f9484803a4', 'test123', '$2y$10$iVDO8N1hgY1hU6EgfZd.tuuuKQ6eNWeB9EqRs14pZAz3VVDgF1Mpa', 'test@test.dk', 0, '2016-07-08 13:54:44'),
	('5900577f8ecd36eed', 'patrick3213', '$2y$10$gWSXBFI9vAbaG2opuNtilupEe6DMyFXJDMXlN0.eDDczVjRcj00OC', 'vaga313@it.dk', 0, '2016-07-08 13:30:21'),
	('6953577f828496916', 'vaga3', '$2y$10$/U1kybNC4vTXCqicH.Pyo.EU4DbQvIBbgiStfmutTClrtY6N8mO06', 'vaga@i2t.dk', 0, '2016-07-08 12:37:58'),
	('8676577f9ba543193', 'test123asdasdasd', '$2y$10$.t4I.kAnKr7qh.ZonjrbxuIjL4uwd1ecjQT9UO7UNFp1G1nO47Z7y', 'vaga@it.dkasdasdasdasd', 0, '2016-07-08 14:25:09'),
	('869577f9b2f80297', 'patrick213213', '$2y$10$yvpOKneQW4NzwtqQE/HM4.iwLuLTH1T/nTW16can1iA/V2CZbMyYK', 'tes12321312312t@test.dk', 0, '2016-07-08 14:23:11');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;


-- Dumping structure for table neverever.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questions` varchar(50) NOT NULL,
  `Time added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `questions` (`questions`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- Dumping data for table neverever.questions: ~29 rows (approximately)
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `questions`, `Time added`) VALUES
	(1, 'haft sex.', '2016-07-06 12:57:20'),
	(2, 'givet et blowjob.', '2016-07-06 12:57:20'),
	(3, 'haft sex med en af samme køn.', '2016-07-06 12:57:20'),
	(4, 'haft et one night stand.', '2016-07-06 12:57:20'),
	(5, 'brugt en dildo.', '2016-07-06 12:57:20'),
	(6, 'haft sex i en bil.', '2016-07-06 12:57:20'),
	(7, 'dyrket sex et offentligt sted.', '2016-07-06 12:57:20'),
	(8, 'haft analsex.', '2016-07-06 12:57:20'),
	(9, 'været med i en trekant.', '2016-07-06 12:57:20'),
	(10, 'faket en orgasme.', '2016-07-06 12:57:20'),
	(11, 'Jeg har aldrig haft en trekant med to fyre.', '2016-07-06 12:57:20'),
	(12, 'haft sex i et fly.', '2016-07-06 12:57:20'),
	(13, 'vågnet op nøgen ved siden af en fremmed.', '2016-07-06 12:57:20'),
	(14, 'set en pornofilm med kæresten.', '2016-07-06 12:57:20'),
	(15, 'været sammen med 2 på en aften?.', '2016-07-06 12:57:20'),
	(16, ' haft sex foran publukum.', '2016-07-06 12:57:20'),
	(17, 'leget med electro sexlegetøj.', '2016-07-06 12:57:20'),
	(18, ' onaneret foran en fyr.', '2016-07-06 12:57:20'),
	(19, 'onaneret med en frugt.', '2016-07-06 12:57:20'),
	(20, 'blevet busted af mine forælder under sex.', '2016-07-06 12:57:20'),
	(21, 'haft sex udenfor.', '2016-07-06 12:57:20'),
	(22, 'haft sex på en strand.', '2016-07-06 12:57:20'),
	(23, 'snavet med dårlig ånde.', '2016-07-06 12:57:20'),
	(24, 'dyrket sex i en KØRENDE bil.', '2016-07-06 12:57:20'),
	(25, 'været utro.', '2016-07-06 12:57:20'),
	(26, 'haft en fast bolleven.', '2016-07-06 12:57:20'),
	(27, 'haft sex med mere end fire inden for et døgn.', '2016-07-06 12:57:20'),
	(28, 'haft sex på køkkenbordet .', '2016-07-06 12:57:20'),
	(29, 'haft sex i en pool.', '2016-07-06 12:57:20'),
	(30, '', '2016-07-07 15:52:57'),
	(34, 'pizza', '2016-07-08 13:37:27'),
	(35, 'sadasdsa', '2016-07-08 13:39:59'),
	(36, 'adsad', '2016-07-08 14:14:29');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


-- Dumping structure for table neverever.shown
CREATE TABLE IF NOT EXISTS `shown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shown` int(11) NOT NULL,
  `Last time clicked` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

-- Dumping data for table neverever.shown: ~1 rows (approximately)
/*!40000 ALTER TABLE `shown` DISABLE KEYS */;
INSERT INTO `shown` (`id`, `shown`, `Last time clicked`) VALUES
	(1, 157, '2016-07-08 15:25:20');
/*!40000 ALTER TABLE `shown` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
