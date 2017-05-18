-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2017 at 02:47 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment id` int(11) NOT NULL AUTO_INCREMENT,
  `patient id` int(11) DEFAULT NULL,
  `reason` varchar(200) NOT NULL,
  `P_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`appointment id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `appointment`
--


-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE IF NOT EXISTS `diseases` (
  `medical history id` int(11) NOT NULL AUTO_INCREMENT,
  `diseases` varchar(200) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `diseases`
--


-- --------------------------------------------------------

--
-- Table structure for table `doc_schedule`
--

CREATE TABLE IF NOT EXISTS `doc_schedule` (
  `T_id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(15) NOT NULL,
  `time` varchar(12) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`T_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `doc_schedule`
--


-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE IF NOT EXISTS `login_info` (
  `login id` int(11) NOT NULL AUTO_INCREMENT,
  `patient id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`login id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `login_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `medical history`
--

CREATE TABLE IF NOT EXISTS `medical history` (
  `medical history id` int(11) NOT NULL AUTO_INCREMENT,
  `patient id` int(11) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `medical history`
--


-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `medical history id` int(11) NOT NULL AUTO_INCREMENT,
  `notes` varchar(500) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient id`)
) ENGINE=MyISAM  DEFAULT CHARSET=ucs2 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient id`, `p_name`, `password`, `e_mail`, `phone`, `city`, `street`, `zip_code`, `age`) VALUES
(1, 'ali ', '', 'engali', 1231431, 'dasd', 'dasdasd', 123, 99312),
(2, 'mahmoud', '', 'jkkjh', 14132412, 'dwf', 'werf', 1234, 555),
(3, 'mahmoud', '', 'jkkjh', 14132412, 'dwf', 'werf', 1234, 555),
(4, 'mahmoud', '', 'jkkjh', 14132412, 'dwf', 'werf', 1234, 555),
(5, 'mahmoud', '', 'jkkjh', 14132412, 'dwf', 'werf', 1234, 555),
(6, 'mahmoud', '', 'jkkjh', 14132412, 'dwf', 'werf', 1234, 555);

-- --------------------------------------------------------

--
-- Table structure for table `procuder`
--

CREATE TABLE IF NOT EXISTS `procuder` (
  `procuder id` int(11) NOT NULL AUTO_INCREMENT,
  `patient id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`procuder id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `procuder`
--


-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `receipt id` int(11) NOT NULL AUTO_INCREMENT,
  `patient id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `state` varchar(100) NOT NULL,
  PRIMARY KEY (`receipt id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `receipt`
--


-- --------------------------------------------------------

--
-- Table structure for table `x rays`
--

CREATE TABLE IF NOT EXISTS `x rays` (
  `medical history id` int(11) NOT NULL AUTO_INCREMENT,
  `x ray` varchar(200) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `x rays`
--

