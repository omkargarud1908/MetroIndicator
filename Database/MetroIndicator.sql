-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 10:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metroindicator`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', 'admin123', '2024-03-23 16:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` double DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `stationName` varchar(255) DEFAULT NULL,
  `complaint` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fare_table`
--

CREATE TABLE `fare_table` (
  `fare_id` int(11) NOT NULL,
  `source_station` varchar(255) NOT NULL,
  `destination_station` varchar(255) NOT NULL,
  `fare` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fare_table`
--

INSERT INTO `fare_table` (`fare_id`, `source_station`, `destination_station`, `fare`) VALUES
(1, 'Aarey JVLR', 'Aarey JVLR', 0.00),
(2, 'Aarey JVLR', 'SEEPZ', 10.00),
(3, 'Aarey JVLR', 'MIDC-Andheri', 20.00),
(4, 'Aarey JVLR', 'Marol Naka', 20.00),
(5, 'Aarey JVLR', 'CSMI-Airport-T2', 30.00),
(6, 'Aarey JVLR', 'Sahar Road', 30.00),
(7, 'Aarey JVLR', 'CSMI-Airport-T1', 30.00),
(8, 'Aarey JVLR', 'Santacruz', 30.00),
(9, 'Aarey JVLR', 'Bandra Colony', 35.00),
(10, 'Aarey JVLR', 'Bandra-Kurla Complex', 35.00),
(11, 'SEEPZ', 'Aarey JVLR', 10.00),
(12, 'SEEPZ', 'SEEPZ', 0.00),
(13, 'SEEPZ', 'MIDC-Andheri', 10.00),
(14, 'SEEPZ', 'Marol Naka', 10.00),
(15, 'SEEPZ', 'CSMI-Airport-T2', 15.00),
(16, 'SEEPZ', 'Sahar Road', 20.00),
(17, 'SEEPZ', 'CSMI-Airport-T1', 25.00),
(18, 'SEEPZ', 'Santacruz', 25.00),
(19, 'SEEPZ', 'Bandra Colony', 30.00),
(20, 'SEEPZ', 'Bandra-Kurla Complex', 30.00),
(21, 'MIDC-Andheri', 'Aarey JVLR', 20.00),
(22, 'MIDC-Andheri', 'SEEPZ', 10.00),
(23, 'MIDC-Andheri', 'MIDC-Andheri', 0.00),
(24, 'MIDC-Andheri', 'Marol Naka', 10.00),
(25, 'MIDC-Andheri', 'CSMI-Airport-T2', 20.00),
(26, 'MIDC-Andheri', 'Sahar Road', 20.00),
(27, 'MIDC-Andheri', 'CSMI-Airport-T1', 25.00),
(28, 'MIDC-Andheri', 'Santacruz', 25.00),
(29, 'MIDC-Andheri', 'Bandra Colony', 30.00),
(30, 'MIDC-Andheri', 'Bandra-Kurla Complex', 30.00),
(31, 'Marol Naka', 'Aarey JVLR', 20.00),
(32, 'Marol Naka', 'SEEPZ', 20.00),
(33, 'Marol Naka', 'MIDC-Andheri', 10.00),
(34, 'Marol Naka', 'Marol Naka', 0.00),
(35, 'Marol Naka', 'CSMI-Airport-T2', 10.00),
(36, 'Marol Naka', 'Sahar Road', 20.00),
(37, 'Marol Naka', 'CSMI-Airport-T1', 20.00),
(38, 'Marol Naka', 'Santacruz', 30.00),
(39, 'Marol Naka', 'Bandra Colony', 30.00),
(40, 'Marol Naka', 'Bandra-Kurla Complex', 35.00),
(41, ' CSMI-Airport-T2', 'Aarey JVLR', NULL),
(42, 'CSMI-Airport-T2', 'SEEPZ', NULL),
(43, 'CSMI-Airport-T2', 'MIDC-Andheri', NULL),
(44, 'CSMI-Airport-T2', 'Marol Naka', 10.00),
(45, 'CSMI-Airport-T2', 'CSMI-Airport-T2', 0.00),
(46, 'CSMI-Airport-T2', 'Sahar Road', 10.00),
(47, 'CSMI-Airport-T2', 'CSMI-Airport-T1', 15.00),
(48, 'CSMI-Airport-T2', 'Santacruz', 20.00),
(49, 'CSMI-Airport-T2', 'Bandra Colony', 25.00),
(50, 'CSMI-Airport-T2', 'Bandra-Kurla Complex', 25.00),
(51, 'Sahar Road', 'Aarey JVLR', NULL),
(52, 'Sahar Road', 'SEEPZ', NULL),
(53, 'Sahar Road', 'MIDC-Andheri', NULL),
(54, 'Sahar Road', 'Marol Naka', NULL),
(55, 'Sahar Road', 'CSMI-Airport-T2', NULL),
(56, 'Sahar Road', 'Sahar Road', 0.00),
(57, 'Sahar Road', '', NULL),
(58, 'Sahar Road', '', NULL),
(59, 'Sahar Road', '', NULL),
(60, 'Sahar Road', '', NULL),
(61, 'CSMI-Airport-T1', '', NULL),
(62, 'CSMI-Airport-T1', '', NULL),
(63, 'CSMI-Airport-T1', '', NULL),
(64, 'CSMI-Airport-T1', '', NULL),
(65, 'CSMI-Airport-T1', '', NULL),
(66, 'CSMI-Airport-T1', '', NULL),
(67, 'CSMI-Airport-T1', '', NULL),
(68, 'CSMI-Airport-T1', '', NULL),
(69, 'CSMI-Airport-T1', '', NULL),
(70, 'CSMI-Airport-T1', '', NULL),
(71, 'Santacruz', '', NULL),
(72, 'Santacruz', '', NULL),
(73, 'Santacruz', '', NULL),
(74, 'Santacruz', '', NULL),
(75, 'Santacruz', '', NULL),
(76, 'Santacruz', '', NULL),
(77, 'Santacruz', '', NULL),
(78, 'Santacruz', '', NULL),
(79, 'Santacruz', '', NULL),
(80, 'Santacruz', '', NULL),
(81, 'Bandra Colony', '', NULL),
(82, 'Bandra Colony', '', NULL),
(83, 'Bandra Colony', '', NULL),
(84, 'Bandra Colony', '', NULL),
(85, 'Bandra Colony', '', NULL),
(86, 'Bandra Colony', '', NULL),
(87, 'Bandra Colony', '', NULL),
(88, 'Bandra Colony', '', NULL),
(89, 'Bandra Colony', '', NULL),
(90, 'Bandra Colony', '', NULL),
(91, 'Bandra-Kurla Complex', '', NULL),
(92, 'Bandra-Kurla Complex', '', NULL),
(93, 'Bandra-Kurla Complex', '', NULL),
(94, 'Bandra-Kurla Complex', '', NULL),
(95, 'Bandra-Kurla Complex', '', NULL),
(96, 'Bandra-Kurla Complex', '', NULL),
(97, 'Bandra-Kurla Complex', '', NULL),
(98, 'Bandra-Kurla Complex', '', NULL),
(99, 'Bandra-Kurla Complex', '', NULL),
(100, 'Bandra-Kurla Complex', 'Bandra-Kurla Complex', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `founditems`
--

CREATE TABLE `founditems` (
  `id` int(225) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` double DEFAULT NULL,
  `item` enum('Mobile','watch','Jawellery','Laptop Bag','BackPack','Briefcase','Camera Bag','Wallet','Ladies Purse','Rolling Suitcases') DEFAULT NULL,
  `description` text DEFAULT NULL,
  `stationName` enum('Aarey JVLR','SEEPZ','MIDC-Andheri','Marol Naka','CSMI-Airport-T2','Sahar Road','CSMI-Airport-T1','Santacruz','Bandra Colony','Bandra-Kurla Complex') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lostitems`
--

CREATE TABLE `lostitems` (
  `id` int(225) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `mobile` double DEFAULT NULL,
  `item` enum('Mobile','watch','Jawellery','Laptop Bag','Back Pack','Briefcase','Camera Bag','Wallet','Ladies Purse','Rolling Suitcases') DEFAULT NULL,
  `description` text DEFAULT NULL,
  `stationName` enum('Aarey JVLR','SEEPZ','MIDC-Andheri','Marol Naka','CSMI-Airport-T2','Sahar Road','CSMI-Airport-T1','Santacruz','Bandra Colony','Bandra-Kurla Complex') DEFAULT NULL,
  `contactDetails` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metrocard`
--

CREATE TABLE `metrocard` (
  `id` int(11) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cardno` bigint(20) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `balance` int(25) DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returneditems`
--

CREATE TABLE `returneditems` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `mobile` double NOT NULL,
  `item` varchar(255) NOT NULL,
  `stationName` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `source_station` varchar(255) DEFAULT NULL,
  `destination_station` varchar(255) DEFAULT NULL,
  `fare` decimal(10,2) DEFAULT NULL,
  `ticket_date` date NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `t_id` int(11) NOT NULL,
  `cardno` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `t_mode` varchar(50) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fare_table`
--
ALTER TABLE `fare_table`
  ADD PRIMARY KEY (`fare_id`);

--
-- Indexes for table `founditems`
--
ALTER TABLE `founditems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `lostitems`
--
ALTER TABLE `lostitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metrocard`
--
ALTER TABLE `metrocard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cardnumber` (`cardnumber`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returneditems`
--
ALTER TABLE `returneditems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `fare_table`
--
ALTER TABLE `fare_table`
  MODIFY `fare_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `founditems`
--
ALTER TABLE `founditems`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `lostitems`
--
ALTER TABLE `lostitems`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `metrocard`
--
ALTER TABLE `metrocard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `reset_monthly_balances` ON SCHEDULE EVERY 1 MONTH STARTS '2024-05-05 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE registration SET balance = 0 WHERE DATE(created_at) < CURDATE() - INTERVAL 1 MONTH$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
