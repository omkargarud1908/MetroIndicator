-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 09:58 PM
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
-- Database: `pune_metro`
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

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `name`, `mobile`, `email`, `stationName`, `complaint`, `created_at`) VALUES
(17, 'OMKAR SHIVAJI GARUD', 7666607106, 'omkargarud8833@gmail.com', 'Anand Nagar', 'station is not cleaned', '2024-04-07 19:11:59'),
(18, 'OMKAR SHIVAJI GARUD', 7666607106, 'omkargarud8833@gmail.com', 'Garware College', 'hgfg', '2024-04-08 08:44:39');

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
(1, 'PCMC', 'Sant Tukaram Nagar', 15.00),
(2, 'PCMC', 'Bhosari', 15.00),
(3, 'PCMC', 'Kasarwadi', 20.00),
(4, 'PCMC', 'Phugewadi', 20.00),
(5, 'PCMC', 'Dapodi', 25.00),
(6, 'PCMC', 'Bopodi', 25.00),
(7, 'PCMC', 'Shivaji Nagar', 30.00),
(8, 'PCMC', 'Civil Court', 30.00),
(9, 'PCMC', 'Vanaz', 35.00),
(10, 'PCMC', 'Anand Nagar', 35.00),
(11, 'PCMC', 'Ideal Colony', 30.00),
(12, 'PCMC', 'Nal Stop', 30.00),
(13, 'PCMC', 'Garware College', 30.00),
(14, 'PCMC', 'Deccan Gymkhana', 30.00),
(15, 'PCMC', 'Chhatrapati Sambhaji Udyan', 30.00),
(16, 'PCMC', 'PMC', 30.00),
(17, 'PCMC', 'Mangalwar Peth', 30.00),
(18, 'PCMC', 'Pune Railway Station', 30.00),
(19, 'PCMC', 'Ruby Hall Clinic', 30.00),
(20, 'PCMC', 'Bund Garden', 30.00),
(21, 'PCMC', 'Kalyani Nagar', 35.00),
(22, 'PCMC', 'Ramwadi', 35.00),
(23, 'Sant Tukaram Nagar', 'PCMC', 15.00),
(24, 'Sant Tukaram Nagar', 'Bhosari', 10.00),
(25, 'Sant Tukaram Nagar', 'Kasarwadi', 15.00),
(26, 'Sant Tukaram Nagar', 'Phugewadi', 15.00),
(27, 'Sant Tukaram Nagar', 'Dapodi', 15.00),
(28, 'Sant Tukaram Nagar', 'Bopodi', 20.00),
(29, 'Sant Tukaram Nagar', 'Shivaji Nagar', 25.00),
(30, 'Sant Tukaram Nagar', 'Civil Court', 25.00),
(31, 'Sant Tukaram Nagar', 'Vanaz', 30.00),
(32, 'Sant Tukaram Nagar', 'Anand Nagar', 30.00),
(33, 'Sant Tukaram Nagar', 'Ideal Colony', 30.00),
(34, 'Sant Tukaram Nagar', 'Nal Stop', 30.00),
(35, 'Sant Tukaram Nagar', 'Garware College', 30.00),
(36, 'Sant Tukaram Nagar', 'Deccan Gymkhana', 30.00),
(37, 'Sant Tukaram Nagar', 'Chhatrapati Sambhaji Udyan', 30.00),
(38, 'Sant Tukaram Nagar', 'PMC', 25.00),
(39, 'Sant Tukaram Nagar', 'Mangalwar Peth', 30.00),
(40, 'Sant Tukaram Nagar', 'Pune Railway Station', 30.00),
(41, 'Sant Tukaram Nagar', 'Ruby Hall Clinic', 30.00),
(42, 'Sant Tukaram Nagar', 'Bund Garden', 30.00),
(43, 'Sant Tukaram Nagar', 'Kalyani Nagar', 30.00),
(44, 'Sant Tukaram Nagar', 'Ramwadi', 35.00),
(45, 'Bhosari', 'PCMC', 15.00),
(46, 'Bhosari', 'Sant Tukaram Nagar', 10.00),
(47, 'Bhosari', 'Kasarwadi', 10.00),
(48, 'Bhosari', 'Phugewadi', 15.00),
(49, 'Bhosari', 'Dapodi', 15.00),
(50, 'Bhosari', 'Bopodi', 20.00),
(51, 'Bhosari', 'Shivaji Nagar', 25.00),
(52, 'Bhosari', 'Civil Court', 25.00),
(53, 'Bhosari', 'Vanaz', 30.00),
(54, 'Bhosari', 'Anand Nagar', 30.00),
(55, 'Bhosari', 'Ideal Colony', 30.00),
(56, 'Bhosari', 'Nal Stop', 30.00),
(57, 'Bhosari', 'Garware College', 30.00),
(58, 'Bhosari', 'Deccan Gymkhana', 30.00),
(59, 'Bhosari', 'Chhatrapati Sambhaji Udyan', 25.00),
(60, 'Bhosari', 'PMC', 25.00),
(61, 'Bhosari', 'Mangalwar Peth', 25.00),
(62, 'Bhosari', 'Pune Railway Station', 30.00),
(63, 'Bhosari', 'Ruby Hall Clinic', 30.00),
(64, 'Bhosari', 'Bund Garden', 30.00),
(65, 'Bhosari', 'Kalyani Nagar', 30.00),
(66, 'Bhosari', 'Ramwadi', 35.00),
(67, 'Kasarwadi', 'PCMC', 20.00),
(68, 'Kasarwadi', 'Sant Tukaram Nagar', 15.00),
(69, 'Kasarwadi', 'Bhosari', 10.00),
(70, 'Kasarwadi', 'Phugewadi', 10.00),
(71, 'Kasarwadi', 'Dapodi', 10.00),
(72, 'Kasarwadi', 'Bopodi', 15.00),
(73, 'Kasarwadi', 'Shivaji Nagar', 25.00),
(74, 'Kasarwadi', 'Civil Court', 25.00),
(75, 'Kasarwadi', 'Vanaz', 30.00),
(76, 'Kasarwadi', 'Anand Nagar', 30.00),
(77, 'Kasarwadi', 'Ideal Colony', 30.00),
(78, 'Kasarwadi', 'Nal Stop', 30.00),
(79, 'Kasarwadi', 'Garware College', 25.00),
(80, 'Kasarwadi', 'Deccan Gymkhana', 25.00),
(81, 'Kasarwadi', 'Chhatrapati Sambhaji Udyan', 25.00),
(82, 'Kasarwadi', 'PMC', 25.00),
(83, 'Kasarwadi', 'Mangalwar Peth', 25.00),
(84, 'Kasarwadi', 'Pune Railway Station', 25.00),
(85, 'Kasarwadi', 'Ruby Hall Clinic', 25.00),
(86, 'Kasarwadi', 'Bund Garden', 30.00),
(87, 'Kasarwadi', 'Kalyani Nagar', 30.00),
(88, 'Kasarwadi', 'Ramwadi', 30.00),
(89, 'Phugewadi', 'PCMC', 20.00),
(90, 'Phugewadi', 'Sant Tukaram Nagar', 15.00),
(91, 'Phugewadi', 'Bhosari', 15.00),
(92, 'Phugewadi', 'Kasarwadi', 10.00),
(93, 'Phugewadi', 'Dapodi', 10.00),
(94, 'Phugewadi', 'Bopodi', 15.00),
(95, 'Phugewadi', 'Shivaji Nagar', 25.00),
(96, 'Phugewadi', 'Civil Court', 25.00),
(97, 'Phugewadi', 'Vanaz', 30.00),
(98, 'Phugewadi', 'Anand Nagar', 30.00),
(99, 'Phugewadi', 'Ideal Colony', 30.00),
(100, 'Phugewadi', 'Nal Stop', 25.00),
(101, 'Phugewadi', 'Garware College', 25.00),
(102, 'Phugewadi', 'Deccan Gymkhana', 25.00),
(103, 'Phugewadi', 'Chhatrapati Sambhaji Udyan', 25.00),
(104, 'Phugewadi', 'PMC', 25.00),
(105, 'Phugewadi', 'MangalwarPeth', 25.00),
(106, 'Phugewadi', 'Pune Railway Station', 25.00),
(107, 'Phugewadi', 'Ruby Hall Clinic', 25.00),
(108, 'Phugewadi', 'Bund Garden', 25.00),
(109, 'Phugewadi', 'Kalyani Nagar', 30.00),
(110, 'Phugewadi', 'Ramwadi', 30.00),
(111, 'Dapodi', 'PCMC', 25.00),
(112, 'Dapodi', 'Sant Tukaram Nagar', 15.00),
(113, 'Dapodi', 'Bhosari', 15.00),
(114, 'Dapodi', 'Kasarwadi', 10.00),
(115, 'Dapodi', 'Phugewadi', 10.00),
(116, 'Dapodi', 'Bopodi', 10.00),
(117, 'Dapodi', 'Shivaji Nagar', 25.00),
(118, 'Dapodi', 'Civil Court', 25.00),
(119, 'Dapodi', 'Vanaz', 30.00),
(120, 'Dapodi', 'Anand Nagar', 30.00),
(121, 'Dapodi', 'Ideal Colony', 25.00),
(122, 'Dapodi', 'Nal Stop', 25.00),
(123, 'Dapodi', 'Garware College', 25.00),
(124, 'Dapodi', 'Deccan Gymkhana', 25.00),
(125, 'Dapodi', 'Chhatrapati Sambhaji Udyan', 25.00),
(126, 'Dapodi', 'PMC', 25.00),
(127, 'Dapodi', 'Mangalwar Peth', 25.00),
(128, 'Dapodi', 'Pune Railway Station', 25.00),
(129, 'Dapodi', 'Ruby Hall Clinic', 25.00),
(130, 'Dapodi', 'Bund Garden', 25.00),
(131, 'Dapodi', 'Kalyani Nagar', 30.00),
(132, 'Dapodi', 'Ramwadi', 30.00),
(133, 'Bopodi', 'PCMC', 25.00),
(134, 'Bopodi', 'Sant Tukaram Nagar', 20.00),
(135, 'Bopodi', 'Bhosari', 20.00),
(136, 'Bopodi', 'Kasarwadi', 15.00),
(137, 'Bopodi', 'Phugewadi', 15.00),
(138, 'Bopodi', 'Dapodi', 10.00),
(139, 'Bopodi', 'Shivaji Nagar', 20.00),
(140, 'Bopodi', 'Civil Court', 20.00),
(141, 'Bopodi', 'Vanaz', 30.00),
(142, 'Bopodi', 'Anand Nagar', 25.00),
(143, 'Bopodi', 'Ideal Colony', 25.00),
(144, 'Bopodi', 'Nal Stop', 25.00),
(145, 'Bopodi', 'Garware College', 25.00),
(146, 'Bopodi', 'Deccan Gymkhana', 25.00),
(147, 'Bopodi', 'Chhatrapati Sambhaji Udyan', 25.00),
(148, 'Bopodi', 'PMC', 25.00),
(149, 'Bopodi', 'Mangalwar Peth', 25.00),
(150, 'Bopodi', 'Pune Railway Station', 25.00),
(151, 'Bopodi', 'Ruby Hall Clinic', 25.00),
(152, 'Bopodi', 'Bund Garden', 25.00),
(153, 'Bopodi', 'Kalyani Nagar', 25.00),
(154, 'Bopodi', 'Ramwadi', 30.00),
(155, 'Shivaji Nagar', 'PCMC', 30.00),
(156, 'Shivaji Nagar', 'Sant Tukaram Nagar', 30.00),
(157, 'Shivaji Nagar', 'Bhosari', 30.00),
(158, 'Shivaji Nagar', 'Kasarwadi', 30.00),
(159, 'Shivaji Nagar', 'Phugewadi', 30.00),
(160, 'Shivaji Nagar', 'Dapodi', 30.00),
(161, 'Shivaji Nagar', 'Bopodi', 30.00),
(162, 'Shivaji Nagar', 'Civil Court', 30.00),
(163, 'Shivaji Nagar', 'Vanaz', 30.00),
(164, 'Shivaji Nagar', 'Anand Nagar', 30.00),
(165, 'Shivaji Nagar', 'Ideal Colony', 30.00),
(166, 'Shivaji Nagar', 'Nal Stop', 30.00),
(167, 'Shivaji Nagar', 'Garware College', 30.00),
(168, 'Shivaji Nagar', 'Deccan Gymkhana', 30.00),
(169, 'Shivaji Nagar', 'Chhatrapati Sambhaji Udyan', 30.00),
(170, 'Shivaji Nagar', 'PMC', 30.00),
(171, 'Shivaji Nagar', 'Mangalwar Peth', 30.00),
(172, 'Shivaji Nagar', 'Pune Railway Station', 30.00),
(173, 'Shivaji Nagar', 'Ruby Hall Clinic', 30.00),
(174, 'Shivaji Nagar', 'Bund Garden', 30.00),
(175, 'Shivaji Nagar', 'Kalyani Nagar', 30.00),
(176, 'Shivaji Nagar', 'Ramwadi', 30.00),
(177, 'Civil Court', 'PCMC', 30.00),
(178, 'Civil Court', 'Sant Tukaram Nagar', 25.00),
(179, 'Civil Court', 'Bhosari', 25.00),
(180, 'Civil Court', 'Kasarwadi', 25.00),
(181, 'Civil Court', 'Phugewadi', 25.00),
(182, 'Civil Court', 'Dapodi', 25.00),
(183, 'Civil Court', 'Bopodi', 20.00),
(184, 'Civil Court', 'Shivaji Nagar', 10.00),
(185, 'Civil Court', 'Vanaz', 25.00),
(186, 'Civil Court', 'Anand Nagar', 20.00),
(187, 'Civil Court', 'Ideal Colony', 20.00),
(188, 'Civil Court', 'Nal Stop', 15.00),
(189, 'Civil Court', 'Garware College', 15.00),
(190, 'Civil Court', 'Deccan Gymkhana', 10.00),
(191, 'Civil Court', 'Chhatrapati Sambhaji Udyan', 10.00),
(192, 'Civil Court', 'PMC', 10.00),
(193, 'Civil Court', 'Mangalwar Peth', 10.00),
(194, 'Civil Court', 'Pune Railway Station', 10.00),
(195, 'Civil Court', 'Ruby Hall Clinic', 15.00),
(196, 'Civil Court', 'Bund Garden', 15.00),
(197, 'Civil Court', 'Kalyani Nagar', 25.00),
(198, 'Civil Court', 'Ramwadi', 25.00),
(199, 'Vanaz', 'PCMC', 35.00),
(200, 'Vanaz', 'Sant Tukaram Nagar', 30.00),
(201, 'Vanaz', 'Bhosari', 30.00),
(202, 'Vanaz', 'Kasarwadi', 30.00),
(203, 'Vanaz', 'Phugewadi', 30.00),
(204, 'Vanaz', 'Dapodi', 30.00),
(205, 'Vanaz', 'Bopodi', 30.00),
(206, 'Vanaz', 'Shivaji Nagar', 25.00),
(207, 'Vanaz', 'Civil Court', 25.00),
(208, 'Vanaz', 'Anand Nagar', 10.00),
(209, 'Vanaz', 'Ideal Colony', 10.00),
(210, 'Vanaz', 'Nal Stop', 15.00),
(211, 'Vanaz', 'Garware College', 15.00),
(212, 'Vanaz', 'Deccan Gymkhana', 20.00),
(213, 'Vanaz', 'Chhatrapati Sambhaji Udyan', 20.00),
(214, 'Vanaz', 'PMC', 20.00),
(215, 'Vanaz', 'Mangalwar Peth', 25.00),
(216, 'Vanaz', 'Pune Railway Station', 25.00),
(217, 'Vanaz', 'Ruby Hall Clinic', 25.00),
(218, 'Vanaz', 'Bund Garden', 25.00),
(219, 'Vanaz', 'Kalyani Nagar', 30.00),
(220, 'Vanaz', 'Ramwadi', 30.00),
(221, 'Anand Nagar', 'PCMC', 35.00),
(222, 'Anand Nagar', 'Sant Tukaram Nagar', 30.00),
(223, 'Anand Nagar', 'Bhosari', 30.00),
(224, 'Anand Nagar', 'Kasarwadi', 30.00),
(225, 'Anand Nagar', 'Phugewadi', 30.00),
(226, 'Anand Nagar', 'Dapodi', 30.00),
(227, 'Anand Nagar', 'Bopodi', 25.00),
(228, 'Anand Nagar', 'Shivaji Nagar', 25.00),
(229, 'Anand Nagar', 'Civil Court', 20.00),
(230, 'Anand Nagar', 'Vanaz', 10.00),
(231, 'Anand Nagar', 'Ideal Colony', 10.00),
(232, 'Anand Nagar', 'Nal Stop', 10.00),
(233, 'Anand Nagar', 'Garware College', 15.00),
(234, 'Anand Nagar', 'Deccan Gymkhana', 15.00),
(235, 'Anand Nagar', 'Chhatrapati Sambhaji Udyan', 20.00),
(236, 'Anand Nagar', 'PMC', 20.00),
(237, 'Anand Nagar', 'Mangalwar Peth', 25.00),
(238, 'Anand Nagar', 'Pune Railway Station', 25.00),
(239, 'Anand Nagar', 'Ruby Hall Clinic', 25.00),
(240, 'Anand Nagar', 'Bund Garden', 25.00),
(241, 'Anand Nagar', 'Kalyani Nagar', 30.00),
(242, 'Anand Nagar', 'Ramwadi', 30.00),
(243, 'Ideal Colony', 'PCMC', 30.00),
(244, 'Ideal Colony', 'Sant Tukaram Nagar', 30.00),
(245, 'Ideal Colony', 'Bhosari', 30.00),
(246, 'Ideal Colony', 'Kasarwadi', 30.00),
(247, 'Ideal Colony', 'Phugewadi', 30.00),
(248, 'Ideal Colony', 'Dapodi', 25.00),
(249, 'Ideal Colony', 'Bopodi', 25.00),
(250, 'Ideal Colony', 'Shivaji Nagar', 20.00),
(251, 'Ideal Colony', 'Civil Court', 20.00),
(252, 'Ideal Colony', 'Vanaz', 10.00),
(253, 'Ideal Colony', 'Anand Nagar', 10.00),
(254, 'Ideal Colony', 'Nal Stop', 10.00),
(255, 'Ideal Colony', 'GarwareCollege', 10.00),
(256, 'Ideal Colony', 'Deccan Gymkhana', 15.00),
(257, 'Ideal Colony', 'Chhatrapati Sambhaji Udyan', 15.00),
(258, 'Ideal Colony', 'PMC', 20.00),
(259, 'Ideal Colony', 'MangalwarPeth', 20.00),
(260, 'Ideal Colony', 'Pune Railway Station', 25.00),
(261, 'Ideal Colony', 'Ruby Hall Clinic', 25.00),
(262, 'Ideal Colony', 'Bund Garden', 25.00),
(263, 'Ideal Colony', 'Kalyani Nagar', 25.00),
(264, 'Ideal Colony', 'Ramwadi', 30.00),
(265, 'Nal Stop', 'PCMC', 30.00),
(266, 'Nal Stop', 'Sant Tukaram Nagar', 30.00),
(267, 'Nal Stop', 'Bhosari', 30.00),
(268, 'Nal Stop', 'Kasarwadi', 30.00),
(269, 'Nal Stop', 'Phugewadi', 25.00),
(270, 'Nal Stop', 'Dapodi', 25.00),
(271, 'Nal Stop', 'Bopodi', 25.00),
(272, 'Nal Stop', 'Shivaji Nagar', 20.00),
(273, 'Nal Stop', 'Civil Court', 15.00),
(274, 'Nal Stop', 'Vanaz', 15.00),
(275, 'Nal Stop', 'Anand Nagar', 10.00),
(276, 'Nal Stop', 'Ideal Colony', 10.00),
(277, 'Nal Stop', 'GarwareCollege', 10.00),
(278, 'Nal Stop', 'Deccan Gymkhana', 10.00),
(279, 'Nal Stop', 'Chhatrapati Sambhaji Udyan', 15.00),
(280, 'Nal Stop', 'PMC', 15.00),
(281, 'Nal Stop', 'Mangalwar Peth', 20.00),
(282, 'Nal Stop', 'Pune Railway Station', 20.00),
(283, 'Nal Stop', 'Ruby Hall Clinic', 25.00),
(284, 'Nal Stop', 'Bund Garden', 25.00),
(285, 'Nal Stop', 'Kalyani Nagar', 25.00),
(286, 'Nal Stop', 'Ramwadi', 25.00),
(287, 'Garware College', 'PCMC', 30.00),
(288, 'Garware College', 'Sant Tukaram Nagar', 30.00),
(289, 'Garware College', 'Bhosari', 30.00),
(290, 'Garware College', 'Kasarwadi', 25.00),
(291, 'Garware College', 'Phugewadi', 25.00),
(292, 'Garware College', 'Dapodi', 25.00),
(293, 'Garware College', 'Bopodi', 25.00),
(294, 'Garware College', 'Shivaji Nagar', 15.00),
(295, 'Garware College', 'Civil Court', 15.00),
(296, 'Garware College', 'Vanaz', 15.00),
(297, 'Garware College', 'Anand Nagar', 15.00),
(298, 'Garware College', 'Ideal Colony', 10.00),
(299, 'Garware College', 'Nal Stop', 10.00),
(300, 'Garware College', 'Deccan Gymkhana', 10.00),
(301, 'Garware College', 'Chhatrapati Sambhaji Udyan', 10.00),
(302, 'Garware College', 'PMC', 15.00),
(303, 'Garware College', 'Mangalwar Peth', 15.00),
(304, 'Garware College', 'Pune Railway Station', 20.00),
(305, 'Garware College', 'Ruby Hall Clinic', 20.00),
(306, 'Garware College', 'Bund Garden', 25.00),
(307, 'Garware College', 'Kalyani Nagar', 25.00),
(308, 'Garware College', 'Ramwadi', 25.00),
(309, 'Deccan Gymkhana', 'PCMC', 30.00),
(310, 'Deccan Gymkhana', 'Sant Tukaram Nagar', 30.00),
(311, 'Deccan Gymkhana', 'Bhosari', 30.00),
(312, 'Deccan Gymkhana', 'Kasarwadi', 25.00),
(313, 'Deccan Gymkhana', 'Phugewadi', 25.00),
(314, 'Deccan Gymkhana', 'Dapodi', 25.00),
(315, 'Deccan Gymkhana', 'Bopodi', 25.00),
(316, 'Deccan Gymkhana', 'Shivaji Nagar', 15.00),
(317, 'Deccan Gymkhana', 'Civil Court', 10.00),
(318, 'Deccan Gymkhana', 'Vanaz', 20.00),
(319, 'Deccan Gymkhana', 'Anand Nagar', 15.00),
(320, 'Deccan Gymkhana', 'Ideal Colony', 15.00),
(321, 'Deccan Gymkhana', 'Nal Stop', 10.00),
(322, 'Deccan Gymkhana', 'Garware College', 10.00),
(323, 'Deccan Gymkhana', 'Chhatrapati Sambhaji Udyan', 10.00),
(324, 'Deccan Gymkhana', 'PMC', 10.00),
(325, 'Deccan Gymkhana', 'Mangalwar Peth', 15.00),
(326, 'Deccan Gymkhana', 'Pune Railway Station', 15.00),
(327, 'Deccan Gymkhana', 'Ruby Hall Clinic', 20.00),
(328, 'Deccan Gymkhana', 'Bund Garden', 20.00),
(329, 'Deccan Gymkhana', 'Kalyani Nagar', 25.00),
(330, 'Deccan Gymkhana', 'Ramwadi', 25.00),
(331, 'Chhatrapati Sambhaji Udyan', 'PCMC', 30.00),
(332, 'Chhatrapati Sambhaji Udyan', 'Sant Tukaram Nagar', 30.00),
(333, 'Chhatrapati Sambhaji Udyan', 'Bhosari', 25.00),
(334, 'Chhatrapati Sambhaji Udyan', 'Kasarwadi', 25.00),
(335, 'Chhatrapati Sambhaji Udyan', 'Phugewadi', 25.00),
(336, 'Chhatrapati Sambhaji Udyan', 'Dapodi', 25.00),
(337, 'Chhatrapati Sambhaji Udyan', 'Bopodi', 25.00),
(338, 'Chhatrapati Sambhaji Udyan', 'Shivaji Nagar', 15.00),
(339, 'Chhatrapati Sambhaji Udyan', 'Civil Court', 10.00),
(340, 'Chhatrapati Sambhaji Udyan', 'Vanaz', 20.00),
(341, 'Chhatrapati Sambhaji Udyan', 'Anand Nagar', 20.00),
(342, 'Chhatrapati Sambhaji Udyan', 'Ideal Colony', 15.00),
(343, 'Chhatrapati Sambhaji Udyan', 'Nal Stop', 15.00),
(344, 'Chhatrapati Sambhaji Udyan', 'Garware College', 10.00),
(345, 'Chhatrapati Sambhaji Udyan', 'Deccan Gymkhana', 10.00),
(346, 'Chhatrapati Sambhaji Udyan', 'PMC', 10.00),
(347, 'Chhatrapati Sambhaji Udyan', 'MangalwarPeth', 15.00),
(348, 'Chhatrapati Sambhaji Udyan', 'Pune Railway Station', 15.00),
(349, 'Chhatrapati Sambhaji Udyan', 'Ruby Hall Clinic', 15.00),
(350, 'Chhatrapati Sambhaji Udyan', 'Bund Garden', 20.00),
(351, 'Chhatrapati Sambhaji Udyan', 'Kalyani Nagar', 25.00),
(352, 'Chhatrapati Sambhaji Udyan', 'Ramwadi', 25.00),
(353, 'PMC', 'PCMC', 30.00),
(354, 'PMC', 'Sant Tukaram Nagar', 25.00),
(355, 'PMC', 'Bhosari', 25.00),
(356, 'PMC', 'Kasarwadi', 25.00),
(357, 'PMC', 'Phugewadi', 25.00),
(358, 'PMC', 'Dapodi', 25.00),
(359, 'PMC', 'Bopodi', 25.00),
(360, 'PMC', 'Shivaji Nagar', 10.00),
(361, 'PMC', 'Civil Court', 10.00),
(362, 'PMC', 'Vanaz', 20.00),
(363, 'PMC', 'Anand Nagar', 20.00),
(364, 'PMC', 'Ideal Colony', 20.00),
(365, 'PMC', 'Nal Stop', 15.00),
(366, 'PMC', 'Garware College', 15.00),
(367, 'PMC', 'Deccan Gymkhana', 10.00),
(368, 'PMC', 'Chhatrapati Sambhaji Udyan', 10.00),
(369, 'PMC', 'MangalwarPeth', 10.00),
(370, 'PMC', 'Pune Railway Station', 15.00),
(371, 'PMC', 'Ruby Hall Clinic', 15.00),
(372, 'PMC', 'Bund Garden', 20.00),
(373, 'PMC', 'Kalyani Nagar', 25.00),
(374, 'PMC', 'Ramwadi', 25.00),
(375, 'Mangalwar Peth', 'PCMC', 30.00),
(376, 'Mangalwar Peth', 'Sant Tukaram Nagar', 30.00),
(377, 'Mangalwar Peth', 'Bhosari', 25.00),
(378, 'Mangalwar Peth', 'Kasarwadi', 25.00),
(379, 'Mangalwar Peth', 'Phugewadi', 25.00),
(380, 'Mangalwar Peth', 'Dapodi', 25.00),
(381, 'Mangalwar Peth', 'Bopodi', 25.00),
(382, 'Mangalwar Peth', 'Shivaji Nagar', 15.00),
(383, 'Mangalwar Peth', 'Civil Court', 10.00),
(384, 'Mangalwar Peth', 'Vanaz', 25.00),
(385, 'Mangalwar Peth', 'Anand Nagar', 25.00),
(386, 'Mangalwar Peth', 'Ideal Colony', 20.00),
(387, 'Mangalwar Peth', 'Nal Stop', 20.00),
(388, 'Mangalwar Peth', 'Garware College', 15.00),
(389, 'Mangalwar Peth', 'Deccan Gymkhana', 15.00),
(390, 'Mangalwar Peth', 'Chhatrapati Sambhaji Udyan', 15.00),
(391, 'Mangalwar Peth', 'PMC', 10.00),
(392, 'Mangalwar Peth', 'Pune Railway Station', 10.00),
(393, 'Mangalwar Peth', 'Ruby Hall Clinic', 10.00),
(394, 'Mangalwar Peth', 'Bund Garden', 15.00),
(395, 'Mangalwar Peth', 'Kalyani Nagar', 20.00),
(396, 'Mangalwar Peth', 'Ramwadi', 25.00),
(397, 'Pune Railway Station', 'PCMC', 30.00),
(398, 'Pune Railway Station', 'Sant Tukaram Nagar', 30.00),
(399, 'Pune Railway Station', 'Bhosari', 30.00),
(400, 'Pune Railway Station', 'Kasarwadi', 25.00),
(401, 'Pune Railway Station', 'Phugewadi', 25.00),
(402, 'Pune Railway Station', 'Dapodi', 25.00),
(403, 'Pune Railway Station', 'Bopodi', 25.00),
(404, 'Pune Railway Station', 'Shivaji Nagar', 15.00),
(405, 'Pune Railway Station', 'Civil Court', 10.00),
(406, 'Pune Railway Station', 'Vanaz', 25.00),
(407, 'Pune Railway Station', 'Anand Nagar', 25.00),
(408, 'Pune Railway Station', 'Ideal Colony', 25.00),
(409, 'Pune Railway Station', 'Nal Stop', 20.00),
(410, 'Pune Railway Station', 'Garware College', 20.00),
(411, 'Pune Railway Station', 'Deccan Gymkhana', 15.00),
(412, 'Pune Railway Station', 'Chhatrapati Sambhaji Udyan', 15.00),
(413, 'Pune Railway Station', 'PMC', 15.00),
(414, 'Pune Railway Station', 'Mangalwar Peth', 10.00),
(415, 'Pune Railway Station', 'Ruby Hall Clinic', 10.00),
(416, 'Pune Railway Station', 'Bund Garden', 10.00),
(417, 'Pune Railway Station', 'Kalyani Nagar', 20.00),
(418, 'Pune Railway Station', 'Ramwadi', 25.00),
(419, 'Ruby Hall Clinic', 'PCMC', 30.00),
(420, 'Ruby Hall Clinic', 'Sant Tukaram Nagar', 30.00),
(421, 'Ruby Hall Clinic', 'Bhosari', 30.00),
(422, 'Ruby Hall Clinic', 'Kasarwadi', 25.00),
(423, 'Ruby Hall Clinic', 'Phugewadi', 25.00),
(424, 'Ruby Hall Clinic', 'Dapodi', 25.00),
(425, 'Ruby Hall Clinic', 'Bopodi', 25.00),
(426, 'Ruby Hall Clinic', 'Shivaji Nagar', 15.00),
(427, 'Ruby Hall Clinic', 'Civil Court', 15.00),
(428, 'Ruby Hall Clinic', 'Vanaz', 25.00),
(429, 'Ruby Hall Clinic', 'Anand Nagar', 25.00),
(430, 'Ruby Hall Clinic', 'Ideal Colony', 25.00),
(431, 'Ruby Hall Clinic', 'Nal Stop', 25.00),
(432, 'Ruby Hall Clinic', 'Garware College', 20.00),
(433, 'Ruby Hall Clinic', 'Deccan Gymkhana', 20.00),
(434, 'Ruby Hall Clinic', 'Chhatrapati Sambhaji Udyan', 15.00),
(435, 'Ruby Hall Clinic', 'PMC', 15.00),
(436, 'Ruby Hall Clinic', 'Mangalwar Peth', 10.00),
(437, 'Ruby Hall Clinic', 'Pune Railway Station', 10.00),
(438, 'Ruby Hall Clinic', 'Bund Garden', 10.00),
(439, 'Ruby Hall Clinic', 'Kalyani Nagar', 15.00),
(440, 'Ruby Hall Clinic', 'Ramwadi', 20.00),
(441, 'Bund Garden', 'PCMC', 30.00),
(442, 'Bund Garden', 'Sant Tukaram Nagar', 30.00),
(443, 'Bund Garden', 'Bhosari', 30.00),
(444, 'Bund Garden', 'Kasarwadi', 30.00),
(445, 'Bund Garden', 'Phugewadi', 25.00),
(446, 'Bund Garden', 'Dapodi', 25.00),
(447, 'Bund Garden', 'Bopodi', 25.00),
(448, 'Bund Garden', 'Shivaji Nagar', 20.00),
(449, 'Bund Garden', 'Civil Court', 15.00),
(450, 'Bund Garden', 'Vanaz', 25.00),
(451, 'Bund Garden', 'Anand Nagar', 25.00),
(452, 'Bund Garden', 'Ideal Colony', 25.00),
(453, 'Bund Garden', 'Nal Stop', 25.00),
(454, 'Bund Garden', 'Garware College', 25.00),
(455, 'Bund Garden', 'Deccan Gymkhana', 20.00),
(456, 'Bund Garden', 'Chhatrapati Sambhaji Udyan', 20.00),
(457, 'Bund Garden', 'PMC', 20.00),
(458, 'Bund Garden', 'Mangalwar Peth', 15.00),
(459, 'Bund Garden', 'Pune Railway Station', 10.00),
(460, 'Bund Garden', 'Ruby Hall Clinic', 10.00),
(461, 'Bund Garden', 'Kalyani Nagar', 15.00),
(462, 'Bund Garden', 'Ramwadi', 20.00),
(463, 'Kalyani Nagar', 'PCMC', 35.00),
(464, 'Kalyani Nagar', 'Sant Tukaram Nagar', 30.00),
(465, 'Kalyani Nagar', 'Bhosari', 30.00),
(466, 'Kalyani Nagar', 'Kasarwadi', 30.00),
(467, 'Kalyani Nagar', 'Phugewadi', 30.00),
(468, 'Kalyani Nagar', 'Dapodi', 30.00),
(469, 'Kalyani Nagar', 'Bopodi', 25.00),
(470, 'Kalyani Nagar', 'Shivaji Nagar', 25.00),
(471, 'Kalyani Nagar', 'Civil Court', 25.00),
(472, 'Kalyani Nagar', 'Vanaz', 30.00),
(473, 'Kalyani Nagar', 'Anand Nagar', 30.00),
(474, 'Kalyani Nagar', 'Ideal Colony', 25.00),
(475, 'Kalyani Nagar', 'Nal Stop', 25.00),
(476, 'Kalyani Nagar', 'Garware College', 25.00),
(477, 'Kalyani Nagar', 'Deccan Gymkhana', 25.00),
(478, 'Kalyani Nagar', 'Chhatrapati Sambhaji Udyan', 25.00),
(479, 'Kalyani Nagar', 'PMC', 25.00),
(480, 'Kalyani Nagar', 'Mangalwar Peth', 20.00),
(481, 'Kalyani Nagar', 'Pune Railway Station', 20.00),
(482, 'Kalyani Nagar', 'Ruby Hall Clinic', 15.00),
(483, 'Kalyani Nagar', 'Bund Garden', 15.00),
(484, 'Kalyani Nagar', 'Ramwadi', 10.00),
(485, 'Ramwadi', 'PCMC', 35.00),
(486, 'Ramwadi', 'Sant Tukaram Nagar', 35.00),
(487, 'Ramwadi', 'Bhosari', 35.00),
(488, 'Ramwadi', 'Kasarwadi', 30.00),
(489, 'Ramwadi', 'Phugewadi', 30.00),
(490, 'Ramwadi', 'Dapodi', 30.00),
(491, 'Ramwadi', 'Bopodi', 30.00),
(492, 'Ramwadi', 'Shivaji Nagar', 25.00),
(493, 'Ramwadi', 'Civil Court', 25.00),
(494, 'Ramwadi', 'Vanaz', 30.00),
(495, 'Ramwadi', 'Anand Nagar', 30.00),
(496, 'Ramwadi', 'Ideal Colony', 30.00),
(497, 'Ramwadi', 'Nal Stop', 25.00),
(498, 'Ramwadi', 'Garware College', 25.00),
(499, 'Ramwadi', 'Deccan Gymkhana', 25.00),
(500, 'Ramwadi', 'Chhatrapati Sambhaji Udyan', 25.00),
(501, 'Ramwadi', 'PMC', 25.00),
(502, 'Ramwadi', 'Mangalwar Peth', 25.00),
(503, 'Ramwadi', 'Pune Railway Station', 25.00),
(504, 'Ramwadi', 'Ruby Hall Clinic', 20.00),
(505, 'Ramwadi', 'Bund Garden', 20.00),
(506, 'Ramwadi', 'Kalyani Nagar', 10.00),
(507, 'PCMC', 'PCMC', 0.00),
(508, 'Sant Tukaram Nagar', 'Sant Tukaram Nagar', 0.00),
(509, 'Bhosari', 'Bhosari', 0.00),
(510, 'Kasarwadi', 'Kasarwadi', 0.00),
(511, 'Phugewadi', 'Phugewadi', 0.00),
(512, 'Dapodi', 'Dapodi', 0.00),
(513, 'Bopodi', 'Bopodi', 0.00),
(514, 'Shivaji Nagar', 'Shivaji Nagar', 0.00),
(515, 'Civil Court', 'Civil Court', 0.00),
(516, 'Vanaz', 'Vanaz', 0.00),
(517, 'Anand Nagar', 'Anand Nagar', 0.00),
(518, 'Ideal Colony', 'Ideal Colony', 0.00),
(519, 'Nal Stop', 'Nal Stop', 0.00),
(520, 'Garware College', 'Garware College', 0.00),
(521, 'Deccan Gymkhana', 'Deccan Gymkhana', 0.00),
(522, 'Chhatrapati Sambhaji Udyan', 'Chhatrapati Sambhaji Udyan', 0.00),
(523, 'PMC', 'PMC', 0.00),
(524, 'Mangalwar Peth', 'Mangalwar Peth', 0.00),
(525, 'Pune Railway Station', 'Pune Railway Station', 0.00),
(526, 'Ruby Hall Clinic', 'Ruby Hall Clinic', 0.00),
(527, 'Bund Garden', 'Bund Garden', 0.00),
(528, 'Kalyani Nagar', 'Kalyani Nagar', 0.00),
(529, 'Ramwadi', 'Ramwadi', 0.00);

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
  `stationName` enum('PCMC','Sant Tukaram Nagar','Bhosari','Kasarwadi','Phugewadi','Dapodi','Bopodi','Shivaji Nagar','Civil Court','Vanaz','Anand Nagar','Ideal Colony','Nal Stop','Garware College','Deccan Gymkhana','Chhatrapati Sambhaji Udyan','PMC','Mangalwar Peth','Pune Railway Station','Ruby Hall Clinic','Bund Garden','Kalyani Nagar','Ramwadi') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `founditems`
--

INSERT INTO `founditems` (`id`, `name`, `mobile`, `item`, `description`, `stationName`, `created_at`) VALUES
(41, 'OMKAR SHIVAJI GARUD', 7666607106, 'Camera Bag', 'wfa', 'PCMC', '2024-04-08 08:35:56');

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
  `stationName` enum('PCMC','Sant Tukaram Nagar','Bhosari','Kasarwadi','Phugewadi','Dapodi','Bopodi','Shivaji Nagar','Civil Court','Vanaz','Anand Nagar','Ideal Colony','NalStop','Garware College','Deccan Gymkhana','Chhatrapati Sambhaji Udyan','PMC','Mangalwar Peth','Pune Railway Station','Ruby Hall Clinic','Bund Garden','Kalyani Nagar','Ramwadi') DEFAULT NULL,
  `contactDetails` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lostitems`
--

INSERT INTO `lostitems` (`id`, `name`, `mobile`, `item`, `description`, `stationName`, `contactDetails`, `created_at`, `email`) VALUES
(27, 'OMKAR SHIVAJI GARUD', 7666607106, 'Wallet', 'The PUMA Phase Wallet has all bases covered, including a handy zipped coin pocket', 'Deccan Gymkhana', 'Flat no.101 vijay nagar Dighi, Pune', '2024-04-06 20:23:48', NULL),
(28, 'OMKAR SHIVAJI GARUD', 7666607106, 'Briefcase', 'Material: Buffalo leather and Well stitched with hard nylon thread. Detachable shoulder strap, YKK zipper', 'NalStop', 'pune', '2024-04-07 19:25:35', 'omkargarud8833@gmail.com'),
(29, 'OMKAR SHIVAJI GARUD', 7666607106, 'watch', 'dfds', 'Ideal Colony', 'dsa', '2024-04-07 19:33:40', 'omkargarud495@gmail.com'),
(30, 'OMKAR SHIVAJI GARUD', 7666607106, 'Jawellery', 'ijh', 'Chhatrapati Sambhaji Udyan', 'jh', '2024-04-07 20:07:14', 'omkargarud8833@gmail.com'),
(31, 'OMKAR SHIVAJI GARUD', 7666607106, 'Mobile', 'kjfhd', 'Kasarwadi', 'hgsdh', '2024-04-08 08:34:49', 'omkargarud8833@gmail.com');

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

--
-- Dumping data for table `metrocard`
--

INSERT INTO `metrocard` (`id`, `cardnumber`, `name`, `address`, `expiry_date`) VALUES
(1, '594672720', 'yogiraj', 'AT POST WING', NULL),
(2, '310134565', 'om', 'AT POST WING', '2024-05-07');

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

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `username`, `password`, `age`, `gender`, `phone`, `email`, `address`, `cardno`, `expdate`, `balance`, `created_at`) VALUES
(12, 'OMKAR SHIVAJI GARUD', 'omkargarud123', 'omkar123', '20', 'm', '7666607106', 'omkargarud8833@gmail.com', 'Pune', 997973609, '2024-05-09', 1250, '2024-04-07'),
(13, 'YOGIRAJ SABALE', 'yogi123', 'yogi123', '20', 'm', '8767876543', 'yogisable5234@gmail.com', 'pune', 503013365, '2024-05-08', 1250, '2024-04-08'),
(14, 'yogiraj', 'nivi', 'qwerty', '45', 'm', '9878985623', 'omkargarud8833@gmail.com', 'AT POST WING', 594672720, '2024-05-09', 1250, '2024-04-09'),
(15, 'om', 'om', 'sda', '20', 'm', '8767876543', 'omkargarud8833@gmail.com', 'AT POST WING', 310134565, '2024-05-09', 1250, '2024-04-09');

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

--
-- Dumping data for table `returneditems`
--

INSERT INTO `returneditems` (`id`, `name`, `mobile`, `item`, `stationName`, `created_at`) VALUES
(40, 'YOGIRAJ SABALE', 7499474454, 'Wallet', 'Garware College', '2024-04-06 20:25:53');

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

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `source_station`, `destination_station`, `fare`, `ticket_date`, `created_at`) VALUES
(1, 'Bhosari', 'Shivaji Nagar', 25.00, '2024-04-07', '2024-04-07 06:23:32'),
(2, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 06:23:36'),
(3, 'PCMC', 'Phugewadi', 20.00, '2024-04-07', '2024-04-07 06:26:25'),
(4, 'PCMC', 'Phugewadi', 20.00, '2024-04-07', '2024-04-07 06:59:20'),
(5, 'Sant Tukaram Nagar', 'Phugewadi', 15.00, '2024-04-07', '2024-04-07 06:59:27'),
(6, 'Sant Tukaram Nagar', 'Phugewadi', 15.00, '2024-04-07', '2024-04-07 07:01:42'),
(7, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 07:01:46'),
(8, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 07:03:00'),
(9, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 07:03:40'),
(10, 'PCMC', 'Civil Court', 30.00, '2024-04-07', '2024-04-07 07:04:11'),
(11, 'Bhosari', 'Phugewadi', 15.00, '2024-04-07', '2024-04-07 07:07:24'),
(12, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 07:07:34'),
(13, 'Sant Tukaram Nagar', 'Kasarwadi', 15.00, '2024-04-07', '2024-04-07 07:09:10'),
(14, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 07:10:05'),
(15, 'Sant Tukaram Nagar', 'Kasarwadi', 15.00, '2024-04-07', '2024-04-07 07:10:48'),
(16, 'Sant Tukaram Nagar', 'Kasarwadi', 15.00, '2024-04-07', '2024-04-07 07:12:36'),
(17, 'PCMC', 'Bhosari', 15.00, '2024-04-07', '2024-04-07 07:13:38'),
(18, 'PCMC', 'Bhosari', 15.00, '2024-04-07', '2024-04-07 07:15:39'),
(19, 'Sant Tukaram Nagar', 'Phugewadi', 15.00, '2024-04-07', '2024-04-07 07:15:52'),
(20, 'PCMC', 'Bhosari', 15.00, '2024-04-07', '2024-04-07 07:18:36'),
(21, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 07:20:08'),
(22, 'PCMC', 'Sant Tukaram Nagar', 15.00, '2024-04-07', '2024-04-07 07:22:16'),
(23, 'PCMC', 'Bhosari', 15.00, '2024-04-07', '2024-04-07 07:22:22'),
(24, 'PCMC', '', 15.00, '2024-04-07', '2024-04-07 07:29:35'),
(25, 'PCMC', 'Bhosari', 15.00, '2024-04-07', '2024-04-07 07:35:23'),
(26, 'PCMC', 'Chhatrapati Sambhaji Udyan', 80.00, '2024-04-07', '2024-04-07 11:00:44'),
(27, 'PCMC', 'Bhosari', 15.00, '2024-04-07', '2024-04-07 13:03:53'),
(28, 'Garware College', 'Mangalwar Peth', 15.00, '2024-04-07', '2024-04-07 18:21:21'),
(29, 'Mangalwar Peth', 'Garware College', 15.00, '2024-04-07', '2024-04-07 18:22:53'),
(30, 'Sant Tukaram Nagar', 'Ramwadi', 35.00, '2024-04-07', '2024-04-07 18:23:07'),
(31, 'Anand Nagar', 'Sant Tukaram Nagar', 30.00, '2024-04-07', '2024-04-07 18:24:27'),
(32, 'Ideal Colony', 'Phugewadi', 30.00, '2024-04-07', '2024-04-07 18:27:50'),
(33, 'Bhosari', 'Bhosari', 0.00, '2024-04-08', '2024-04-07 18:44:37'),
(34, 'Shivaji Nagar', 'Bund Garden', 30.00, '2024-04-08', '2024-04-07 18:45:28'),
(35, 'Kasarwadi', 'Bopodi', 15.00, '2024-04-08', '2024-04-08 08:30:25'),
(36, 'PCMC', 'Ramwadi', 35.00, '2024-04-08', '2024-04-08 08:46:11');

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
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`t_id`, `cardno`, `amount`, `t_mode`, `transaction_date`, `date`) VALUES
(11, '997973609', 1250.00, 'online', '2024-04-06 20:16:22', '2024-04-07'),
(12, '503013365', 1250.00, 'offline', '2024-04-08 08:29:47', '2024-04-08'),
(13, '997973609', 1250.00, 'online', '2024-04-08 19:11:31', '2024-04-09');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `fare_table`
--
ALTER TABLE `fare_table`
  MODIFY `fare_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `founditems`
--
ALTER TABLE `founditems`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `lostitems`
--
ALTER TABLE `lostitems`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `metrocard`
--
ALTER TABLE `metrocard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
