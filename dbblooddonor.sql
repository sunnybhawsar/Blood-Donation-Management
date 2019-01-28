-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2018 at 09:26 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbblooddonor`
--
CREATE DATABASE IF NOT EXISTS `dbblooddonor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbblooddonor`;

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE IF NOT EXISTS `bloodrequest` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `bloodgrp` varchar(10) NOT NULL,
  `age` int(4) NOT NULL,
  `day` int(5) NOT NULL,
  `month` varchar(15) NOT NULL,
  `year` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `hospital` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`bid`, `name`, `bloodgrp`, `age`, `day`, `month`, `year`, `units`, `hospital`, `address`, `location`, `mobile`) VALUES
(1, 'Ramesh Joshi', 'B-', 65, 25, 'Apr', 2018, 2, 'CHL', 'Indore', 'Indore', '7634892377'),
(2, 'Babu Lal', 'A+', 56, 28, 'Apr', 2018, 4, 'Deshmukh', 'Ujjain', 'Ujjain', '8989593213');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donors`
--

CREATE TABLE IF NOT EXISTS `blood_donors` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `bloodgrp` varchar(10) NOT NULL,
  `location` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `day` int(5) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id` int(9) NOT NULL,
  `ttid` int(9) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blood_donors`
--

INSERT INTO `blood_donors` (`did`, `name`, `bloodgrp`, `location`, `address`, `day`, `month`, `year`, `gender`, `mobile`, `status`, `id`, `ttid`) VALUES
(2, 'Satyam', 'A+', 'Ujjain', 'Pragati', 24, 'Mar', 1996, 'male', '8959624351', 'Available', 1001, 1),
(3, 'Akshay Patidar', 'A+', 'Indore', 'Shanti Nagar', 6, 'Feb', 1996, 'male', '7843565434', 'Available', 1002, 2),
(5, 'Kajal Sonwani', 'O+', 'Indore', 'Khargone', 10, 'Aug', 1996, 'female', '8989624730', 'Available', 1004, 4);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `name`, `email`, `feedback`) VALUES
(1, 'Shivani Sharma', 'shivani@gmail.com', 'Great Job..'),
(2, 'Satyam', 'satyam@gmail.com', 'Feeling great to be part of this organisation.');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1005 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(999, 'admin@bd', '123123'),
(1001, 'gojesatyam996@gmail.com', '123456'),
(1002, 'akshay@gmail.com', '123456'),
(1004, 'kajal@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `toapprove`
--

CREATE TABLE IF NOT EXISTS `toapprove` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `bloodgrp` varchar(10) NOT NULL,
  `location` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `day` int(5) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `approval` varchar(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `toapprove`
--

INSERT INTO `toapprove` (`tid`, `name`, `bloodgrp`, `location`, `address`, `day`, `month`, `year`, `gender`, `mobile`, `email_id`, `password`, `approval`) VALUES
(1, 'Satyam Goje', 'A+', 'Ujjain', 'Pragati Nagar', 24, 'Mar', 1996, 'male', '8959624353', 'gojesatyam996@gmail.com', '123456', 'Approved'),
(2, 'Akshay Patidar', 'A+', 'Indore', 'Shanti Nagar', 6, 'Feb', 1996, 'male', '7843565434', 'akshay@gmail.com', '123456', 'Approved'),
(3, 'Kumar Ashwin', 'A-', 'Ujjain', 'Ujjain', 2, 'Feb', 1996, 'male', '7775633221', 'kumar.a@gmail.com', '123456', 'Disapproved'),
(4, 'Kajal Sonwani', 'O+', 'Indore', 'Khargone', 10, 'Aug', 1996, 'female', '8989624730', 'kajal@gmail.com', '123456', 'Approved'),
(5, 'Sandeep Chouhan', 'B-', 'Indore', 'Indore', 13, 'Oct', 1995, 'male', '7869423243', 'sandeep@gmail.com', '123456', '-');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
