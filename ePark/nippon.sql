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

-- Dumping structure for table angelhack.nippon
CREATE TABLE IF NOT EXISTS `nippon` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `VNumber` varchar(20) NOT NULL,
  `Arrival` timestamp NULL DEFAULT NULL,
  `Departure` timestamp NULL DEFAULT NULL,
  `Rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table angelhack.nippon: ~2 rows (approximately)
/*!40000 ALTER TABLE `nippon` DISABLE KEYS */;
INSERT INTO `nippon` (`slno`, `VNumber`, `Arrival`, `Departure`, `Rate`) VALUES
	(1, 'KL01BQ9756', NULL, NULL, NULL),
	(2, 'KL01AY8723', NULL, NULL, NULL);
/*!40000 ALTER TABLE `nippon` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
