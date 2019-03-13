-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 07:09 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clientsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `birthday`
--

CREATE TABLE IF NOT EXISTS `birthday` (
  `eid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ofemail` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthday`
--

INSERT INTO `birthday` (`eid`, `name`, `ofemail`, `dob`) VALUES
('YV001', 'Spurthi C', 'spurthichidanand@gmail.com', '1995-12-22'),
('YV002', 'Sanjay', 'sanjaynholla@gmail.com', '1995-12-21'),
('YV003', 'Sagar', 'sanjaynholla@gmail.com', '1990-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `cfeedback`
--

CREATE TABLE IF NOT EXISTS `cfeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `a1` varchar(100) NOT NULL,
  `a2` varchar(100) NOT NULL,
  `a3` varchar(100) NOT NULL,
  `a4` varchar(100) NOT NULL,
  `a5` varchar(100) NOT NULL,
  `a6` varchar(100) NOT NULL,
  `a7` varchar(100) NOT NULL,
  `a8` varchar(100) NOT NULL,
  `a9` varchar(100) NOT NULL,
  `a10` varchar(100) NOT NULL,
  `suggestion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cfeedback`
--

INSERT INTO `cfeedback` (`id`, `name`, `time`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `suggestion`) VALUES
(5, 'sanjaynholla@gmail.com', '2018-12-21 17:55:28', '4', '3', '4', '4', '4', '4', '4', '4', '4', '4', 'Good'),
(6, 'spurthichidanand@gmail.com', '2018-12-21 17:56:39', '4', '3', '4', '4', '4', '4', '4', '4', '4', '4', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `cid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desig` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`cid`, `name`, `desig`, `email`, `contact`, `company`, `dob`) VALUES
('CT001', 'Spurthic', 'Project Manager', 'spurthichidanand@gmail.com', '9845265266', 'YCT1', '1989-12-22'),
('CT002', 'SanjayC', 'Project Manager', 'sanjaynholla@gmail.com', '9980552535', 'YCT2', '1990-12-21'),
('CT003', 'SagarC', 'Project Manager', 'sagar@gmail.com', '9845265266', 'YCT1', '2018-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `efeedback`
--

CREATE TABLE IF NOT EXISTS `efeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `a1` varchar(100) NOT NULL,
  `a2` varchar(100) NOT NULL,
  `a3` varchar(100) NOT NULL,
  `a4` varchar(100) NOT NULL,
  `a5` varchar(100) NOT NULL,
  `a6` varchar(100) NOT NULL,
  `a7` varchar(100) NOT NULL,
  `a8` varchar(100) NOT NULL,
  `a9` varchar(100) NOT NULL,
  `a10` varchar(100) NOT NULL,
  `suggestion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `efeedback`
--

INSERT INTO `efeedback` (`id`, `name`, `ename`, `time`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `suggestion`) VALUES
(11, 'sarthak@gmail.com', 'Spurthi C', '2018-12-21 16:54:42', '5', '4', '3', '2', '1', '2', '3', '4', '5', '4', 'Need to Improve'),
(13, 'sarthak@gmail.com', 'Sagar', '2018-12-21 16:55:25', '1', '2', '3', '4', '5', '4', '3', '2', '1', '4', 'Need to Improve'),
(14, 'sarthak@gmail.com', 'Sanjay', '2018-12-21 16:57:13', '4', '5', '4', '5', '4', '5', '4', '5', '4', '4', 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `eid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `desig` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ofemail` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `inhouse` tinyint(1) DEFAULT NULL,
  `onsite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `desig`, `email`, `ofemail`, `contact`, `company`, `dob`, `inhouse`, `onsite`) VALUES
('YV001', 'Spurthi C', 'HR', 'spurthichidanand@gmail.com', 'spurthichidanand@gmail.com', '9845265267', 'CT001', '1995-12-23', 0, NULL),
('YV002', 'Sanjay', 'HR', 'sanjaynholla@gmail.com', 'sanjaynholla@gmail.com', '9980552535', 'CT002', '1995-12-22', 1, NULL),
('YV003', 'Sagar', 'HR', 'sanjaynholla@gmail.com', 'sanjaynholla@gmail.com', '9845265267', 'CT001', '1990-12-22', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ofeedback`
--

CREATE TABLE IF NOT EXISTS `ofeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `a1` varchar(100) NOT NULL,
  `a2` varchar(100) NOT NULL,
  `a3` varchar(100) NOT NULL,
  `a4` varchar(100) NOT NULL,
  `a5` varchar(100) NOT NULL,
  `a6` varchar(100) NOT NULL,
  `a7` varchar(100) NOT NULL,
  `a8` varchar(100) NOT NULL,
  `a9` varchar(100) NOT NULL,
  `a10` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `suggestion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ofeedback`
--

INSERT INTO `ofeedback` (`id`, `cname`, `ename`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `time`, `suggestion`) VALUES
(6, 'CT001', 'Spurthi C', '4', '4', '4', '4', '4', '4', '3', '4', '4', '4', '2018-12-21 17:53:11', 'Good'),
(7, 'CT001', 'Sagar', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '2018-12-21 17:53:31', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `wishes`
--

CREATE TABLE IF NOT EXISTS `wishes` (
  `Dte` date DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Greeting` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishes`
--

INSERT INTO `wishes` (`Dte`, `Name`, `Greeting`) VALUES
('2018-11-10', 'Eid-e-Milad', 'Wishing that Allah accepts\nyour good deeds and sacrifices,\nalleviates your sufferings,\nand forgives your transgressions.\nEid Mubarak!'),
('2018-11-21', 'Kanakadasa Jayanti', 'Kanakadasa''s compositions addressed social \nissues in addition to devotional aspect.\nHis poem ''Kula Kula Kulavendu hodedhadadiri''\nis worth reading in which he has asked humans not\nto segregate themsel'),
('2018-12-21', 'Christmas', 'May this festive season sparkle and shine, may all of your wishes and dreams come true, and may you feel this happiness all year round. Merry Christmas!');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
