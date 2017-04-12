-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2017 at 09:00 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xpense`
--

-- --------------------------------------------------------

--
-- Table structure for table `grp`
--

CREATE TABLE `grp` (
  `grp_id` int(11) NOT NULL,
  `grp_admin_id` int(11) NOT NULL,
  `grp_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grp`
--

INSERT INTO `grp` (`grp_id`, `grp_admin_id`, `grp_name`) VALUES
(1, 28, 'khh'),
(2, 28, 'khh'),
(3, 28, 'khh'),
(4, 28, 'khh'),
(5, 28, 'khh'),
(6, 28, 'khh'),
(7, 28, 'khh'),
(8, 28, 'khh'),
(9, 28, 'khh'),
(10, 28, 'khh'),
(11, 28, 'khh'),
(12, 28, 'khh'),
(13, 28, 'sdfgh'),
(14, 28, 'sdfghfgh'),
(15, 28, 'sdfghfghrty'),
(16, 28, ''),
(17, 28, 'khh'),
(18, 28, ''),
(19, 28, ''),
(20, 28, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grp`
--
ALTER TABLE `grp`
  ADD PRIMARY KEY (`grp_id`),
  ADD KEY `grp_details_id` (`grp_admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grp`
--
ALTER TABLE `grp`
  MODIFY `grp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `grp`
--
ALTER TABLE `grp`
  ADD CONSTRAINT `grp_ibfk_1` FOREIGN KEY (`grp_admin_id`) REFERENCES `groupdetails` (`grp_details_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
