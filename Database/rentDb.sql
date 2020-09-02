-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2019 at 08:55 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentDb`
--

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `houseId` int(10) NOT NULL,
  `numberOfRooms` int(3) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`houseId`, `numberOfRooms`, `address`) VALUES
(1001, 150, 'B-23,Krishna Villa,Sector-22,Noida,\nUttarPradesh - 20301'),
(1002, 300, 'C-91,khora colony,Sector-96,Noida\nUttar pradesh -201306');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `name`, `gender`, `password`) VALUES
('xfurai', 'suman', 'Female', 'helloduniya');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `tenantId` varchar(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `regDate` varchar(10) NOT NULL,
  `noOfMembers` varchar(2) NOT NULL,
  `noOfRooms` varchar(2) NOT NULL,
  `advance` varchar(20) NOT NULL,
  `waterBill` varchar(20) DEFAULT NULL,
  `electricityBill` varchar(20) DEFAULT NULL,
  `roomCharge` varchar(7) DEFAULT NULL,
  `totalAmount` varchar(20) DEFAULT NULL,
  `noOfMonths` varchar(3) DEFAULT NULL,
  `outstandingAmount` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`tenantId`, `name`, `mobile`, `email`, `regDate`, `noOfMembers`, `noOfRooms`, `advance`, `waterBill`, `electricityBill`, `roomCharge`, `totalAmount`, `noOfMonths`, `outstandingAmount`) VALUES
('123456789101', 'Vishal Dutt', '9650180550', 'vishaldutt157@gmail.com', '2015-05-07', '4', '2', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
('886725486352', 'Sumit Kumar Pandit', '7011205693', 'sumitkumarpandit434@gmail.com', '2018-05-20', '2', '1', '500', '3240', '4000', '24000', '30740', '6', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `updat`
--

CREATE TABLE `updat` (
  `roomcharge` int(10) NOT NULL,
  `waterbill` int(10) NOT NULL,
  `unit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `updat`
--

INSERT INTO `updat` (`roomcharge`, `waterbill`, `unit`) VALUES
(4000, 540, 8),
(4000, 540, 8);

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE `update` (
  `unit` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `update`
--

INSERT INTO `update` (`unit`) VALUES
(6),
(6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD UNIQUE KEY `houseId` (`houseId`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenantId`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
