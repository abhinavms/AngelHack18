-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for angelhack
CREATE DATABASE IF NOT EXISTS `angelhack` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `angelhack`;

-- Dumping structure for table angelhack.markers
CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT ' ',
  `address` varchar(80) NOT NULL DEFAULT '  ',
  `lat` float(10,6) DEFAULT NULL,
  `lng` float(10,6) NOT NULL,
  `space` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table angelhack.markers: 5 rows
/*!40000 ALTER TABLE `markers` DISABLE KEYS */;
INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `space`, `total`) VALUES
	(2, 'Masjid Paid Parking', 'Kalamassery', 10.060645, 76.348709, 3, 15),
	(3, 'Kalamassery Car Terminal', 'Kalamassery', 10.053133, 76.351997, 4, 10),
	(4, 'Nippon parking', 'Kalamassery', 10.059029, 76.360771, 8, 16),
	(5, 'UBiotech Parking', 'Kalamassery', 10.055785, 76.350990, 9, 11),
	(6, 'HMT Parking Space', 'Kalamassery', 10.061527, 76.354759, 7, 19),
	(8, 'Themalippadam Parking', 'Nedumbassery', 10.154615, 76.371750, 7, 29),
	(9, ' Piraroor Parking Ground', ' Nedumbassery', 10.160731, 76.415260, 12, 20),
	(10, 'Temple Side Parking', 'Nedumbassery', 10.168528, 76.392944, 15, 30),
	(11, 'Chapel Parking', 'Nedumbassery', 10.143298, 76.380821, 1, 19),
	(12, 'Cial Parking Centre', 'Nedumbassery', 10.157821, 76.377052, 6, 32);
/*!40000 ALTER TABLE `markers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
