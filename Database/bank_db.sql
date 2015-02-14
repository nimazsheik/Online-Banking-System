-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2015 at 02:28 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bank_db`
--
CREATE DATABASE IF NOT EXISTS `bank_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bank_db`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `first_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_ID`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `user_name`, `first_name`, `last_name`, `date_of_birth`, `gender`, `email`, `password`) VALUES
(1, 'nimaz', 'Nimaz', 'Sheik', '1992-08-01', 'M', 'nimaz@yahoo.com', '123456');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
