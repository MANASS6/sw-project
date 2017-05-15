-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 15, 2017 at 01:07 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manass`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment id` int(11) NOT NULL,
  `patient id` int(11) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`appointment id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `appointment`
--


-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE IF NOT EXISTS `diseases` (
  `medical history id` int(11) NOT NULL,
  `diseases` varchar(200) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `diseases`
--


-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE IF NOT EXISTS `login_info` (
  `login id` int(11) NOT NULL,
  `patient id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`login id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `login_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `medical history`
--

CREATE TABLE IF NOT EXISTS `medical history` (
  `medical history id` int(11) NOT NULL,
  `patient id` int(11) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `medical history`
--


-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `medical history id` int(11) NOT NULL,
  `notes` varchar(500) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`patient id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `patient`
--


-- --------------------------------------------------------

--
-- Table structure for table `procuder`
--

CREATE TABLE IF NOT EXISTS `procuder` (
  `procuder id` int(11) NOT NULL,
  `patient id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`procuder id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `procuder`
--


-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `receipt id` int(11) NOT NULL,
  `patient id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `state` varchar(100) NOT NULL,
  PRIMARY KEY (`receipt id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `receipt`
--


-- --------------------------------------------------------

--
-- Table structure for table `x rays`
--

CREATE TABLE IF NOT EXISTS `x rays` (
  `medical history id` int(11) NOT NULL,
  `x ray` varchar(200) NOT NULL,
  PRIMARY KEY (`medical history id`)
) ENGINE=MyISAM DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `x rays`
--

