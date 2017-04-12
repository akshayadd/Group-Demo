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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(255) NOT NULL,
  `u_lname` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_mobile` varchar(255) NOT NULL,
  `u_budget` int(6) NOT NULL,
  `u_profile_pic` varchar(255) NOT NULL,
  `u_created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fname`, `u_lname`, `u_password`, `u_email`, `u_mobile`, `u_budget`, `u_profile_pic`, `u_created_date`, `u_is_active`) VALUES
(1, 'akshay', 'donga', '2de1b2d6a6738df78c5f9733853bd170', '', '', 1500, '', '2017-04-03 14:14:13', 1),
(13, 'qw', 'f', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 500, '', '2017-04-04 22:30:28', 0),
(14, 'qw', 'f', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 500, '', '2017-04-04 22:31:06', 0),
(15, 'qw', 'f', '827ccb0eea8a706c4c34a16891f84e7b', '', '9999999999', 500, '', '2017-04-04 22:31:31', 1),
(24, 'bharamal', 'husen', '827ccb0eea8a706c4c34a16891f84e7b', 'h@h.com', '5555555555', 452, '', '2017-04-04 22:50:16', 1),
(25, 'ad', 'patel', 'e10adc3949ba59abbe56e057f20f883e', 'ankit@gmail.com', '8888888888', 2000, '', '2017-04-04 23:11:41', 1),
(26, 'qw', 'f', '827ccb0eea8a706c4c34a16891f84e7b', 'h2@h1.com', '88865558', 500, '', '2017-04-05 11:40:05', 1),
(27, 'akshay', 'donga', '827ccb0eea8a706c4c34a16891f84e7b', 'a@a.com', '8523694652', 2510, '', '2017-04-06 11:18:49', 1),
(28, 'neha', 'ghodasara', '467f6d33801b12ab19661cb11652219d', 'neha@gmail.com', '99999', 1000, '', '2017-04-06 13:25:20', 1),
(29, 'abs', 'xyz', '827ccb0eea8a706c4c34a16891f84e7b', 'a@abc.com', '9926484788', 2450, '', '2017-04-07 09:41:10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
