-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2018 at 08:05 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angelhack`
--

-- --------------------------------------------------------

--
-- Table structure for table `nippon`
--

DROP TABLE IF EXISTS `nippon`;
CREATE TABLE IF NOT EXISTS `nippon` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `VNumber` varchar(20) NOT NULL,
  `Arrival` datetime DEFAULT NULL,
  `Departure` datetime DEFAULT NULL,
  `Rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nippon`
--

INSERT INTO `nippon` (`slno`, `VNumber`, `Arrival`, `Departure`, `Rate`) VALUES
(1, 'KL01BQ9756', '2018-07-29 12:56:56', '2018-07-29 12:56:53', NULL),
(2, 'KL01AY8723', NULL, NULL, 14);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
