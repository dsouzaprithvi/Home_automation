-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 10:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home_automation`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai`
--

CREATE TABLE `ai` (
  `id` int(11) NOT NULL,
  `device1` text NOT NULL,
  `device2` text NOT NULL,
  `device3` text NOT NULL,
  `device4` text NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ai`
--

INSERT INTO `ai` (`id`, `device1`, `device2`, `device3`, `device4`, `reading_time`) VALUES
(1, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:51:41'),
(2, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:51:52'),
(3, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:52:30'),
(4, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:54:20'),
(5, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:54:31'),
(6, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:54:42'),
(7, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:54:53'),
(8, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:55:04'),
(9, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:55:15'),
(10, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:55:26'),
(11, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:55:37'),
(12, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:55:48'),
(13, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:55:59'),
(14, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:56:10'),
(15, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:56:21'),
(16, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:56:32'),
(17, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:56:43'),
(18, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:56:54'),
(19, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:57:05'),
(20, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:57:16'),
(21, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:57:27'),
(22, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:57:38'),
(23, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:57:49'),
(24, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:58:00'),
(25, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:58:11'),
(26, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:58:22'),
(27, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:58:33'),
(28, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:58:44'),
(29, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:58:55'),
(30, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:59:06'),
(31, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:59:17'),
(32, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:59:28'),
(33, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:59:39'),
(34, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:59:50'),
(35, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:00:01'),
(36, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:00:12'),
(37, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:00:23'),
(38, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:00:34'),
(39, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(6) UNSIGNED NOT NULL,
  `board` int(6) DEFAULT NULL,
  `last_request` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `board`, `last_request`) VALUES
(1, 1, '2022-05-18 08:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `outputs`
--

CREATE TABLE `outputs` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `board` int(6) DEFAULT NULL,
  `gpio` int(6) DEFAULT NULL,
  `state` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outputs`
--

INSERT INTO `outputs` (`id`, `name`, `board`, `gpio`, `state`) VALUES
(2, 'Relay_1', 1, 26, 0),
(3, 'Relay_2', 1, 27, 0),
(4, 'BULB_M', 1, 140, 0),
(5, 'BULB_A', 1, 141, 0),
(6, 'FAN_M', 1, 330, 75),
(7, 'FAN_A', 1, 331, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sensordata`
--

CREATE TABLE `sensordata` (
  `id` int(6) UNSIGNED NOT NULL,
  `TemperatureValue` varchar(10) DEFAULT NULL,
  `HumidityValue` varchar(10) DEFAULT NULL,
  `LightSensorValue` varchar(10) DEFAULT NULL,
  `Relay_1_Power_Value` varchar(10) DEFAULT NULL,
  `Relay_2_Power_Value` varchar(10) DEFAULT NULL,
  `Bulb_Power_Value` varchar(10) DEFAULT NULL,
  `Fan_Power_Value` varchar(10) DEFAULT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sensordata`
--

INSERT INTO `sensordata` (`id`, `TemperatureValue`, `HumidityValue`, `LightSensorValue`, `Relay_1_Power_Value`, `Relay_2_Power_Value`, `Bulb_Power_Value`, `Fan_Power_Value`, `reading_time`) VALUES
(1, '35', '90', '50', '100', '200', '50', '60', '2022-06-08 07:43:05'),
(2, '35', '90', '50', '100', '200', '50', '60', '2022-06-08 07:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `server` text NOT NULL,
  `gsm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `server`, `gsm`) VALUES
(1, 'on', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `without_ai`
--

CREATE TABLE `without_ai` (
  `id` int(11) NOT NULL,
  `device1` text NOT NULL,
  `device2` text NOT NULL,
  `device3` text NOT NULL,
  `device4` text NOT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `without_ai`
--

INSERT INTO `without_ai` (`id`, `device1`, `device2`, `device3`, `device4`, `reading_time`) VALUES
(1, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:51:09'),
(2, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:51:19'),
(3, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:51:30'),
(4, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:52:05'),
(5, '50.0', '60.0', '100.0', '200.0', '2022-06-08 07:52:20'),
(6, '100.0', '120.0', '200.0', '400.0', '2022-06-08 07:54:10'),
(7, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:00:54'),
(8, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:01:04'),
(9, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:01:15'),
(10, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:01:29'),
(11, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:01:39'),
(12, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:01:50'),
(13, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:03:02'),
(14, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:04:00'),
(15, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:04:15'),
(16, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:04:25'),
(17, '100.0', '120.0', '200.0', '400.0', '2022-06-08 08:04:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai`
--
ALTER TABLE `ai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outputs`
--
ALTER TABLE `outputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensordata`
--
ALTER TABLE `sensordata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `without_ai`
--
ALTER TABLE `without_ai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai`
--
ALTER TABLE `ai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outputs`
--
ALTER TABLE `outputs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sensordata`
--
ALTER TABLE `sensordata`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `without_ai`
--
ALTER TABLE `without_ai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
