-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2017 at 09:01 AM
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
-- Table structure for table `groupdetails`
--

CREATE TABLE `groupdetails` (
  `grp_details_id` int(11) NOT NULL,
  `grp_members_id` varchar(300) NOT NULL,
  `grp_details_grp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupdetails`
--

INSERT INTO `groupdetails` (`grp_details_id`, `grp_members_id`, `grp_details_grp_id`) VALUES
(28, '24', 0),
(29, '28', 0),
(31, '2147483647', 0),
(32, '28', 0),
(33, '25', 0),
(34, '25', 0),
(35, '24', 0),
(36, '25', 0),
(37, '15', 13),
(38, '24', 13),
(39, '25', 13),
(40, '15', 14),
(41, '15', 14),
(42, '24', 14),
(43, '24', 14),
(44, '25', 14),
(45, '15', 15),
(46, '15', 15),
(47, '15', 15),
(48, '24', 15),
(49, '24', 15),
(50, '25', 15),
(51, '15', 17),
(52, '24', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groupdetails`
--
ALTER TABLE `groupdetails`
  ADD PRIMARY KEY (`grp_details_id`),
  ADD KEY `grp_members_id` (`grp_members_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groupdetails`
--
ALTER TABLE `groupdetails`
  MODIFY `grp_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
