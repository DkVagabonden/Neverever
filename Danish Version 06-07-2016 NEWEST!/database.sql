-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for aldrig
CREATE DATABASE IF NOT EXISTS `aldrig` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_danish_ci */;
USE `aldrig`;


-- Dumping structure for table aldrig.spm
CREATE TABLE IF NOT EXISTS `spm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spm` varchar(50) NOT NULL,
  `tid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table aldrig.spm: ~30 rows (approximately)
/*!40000 ALTER TABLE `spm` DISABLE KEYS */;
INSERT INTO `spm` (`id`, `spm`, `tid`) VALUES
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
	(29, 'haft sex i en pool.', '2016-07-06 12:57:20');
/*!40000 ALTER TABLE `spm` ENABLE KEYS */;


-- Dumping structure for table aldrig.vist
CREATE TABLE IF NOT EXISTS `vist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vist` int(11) NOT NULL,
  `sidst anvendt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

-- Dumping data for table aldrig.vist: ~0 rows (approximately)
/*!40000 ALTER TABLE `vist` DISABLE KEYS */;
INSERT INTO `vist` (`id`, `vist`, `sidst anvendt`) VALUES
	(1, 13, '2016-07-06 15:41:39');
/*!40000 ALTER TABLE `vist` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
