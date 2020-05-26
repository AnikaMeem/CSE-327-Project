-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2020 at 01:16 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a`
--

-- --------------------------------------------------------

--
-- Table structure for table `found`
--

CREATE TABLE `found` (
  `foundId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` varchar(20) NOT NULL,
  `height` varchar(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `mother` varchar(100) NOT NULL,
  `founddt` date NOT NULL,
  `foundlocation` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `wearing` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `image_found1` varchar(255) NOT NULL DEFAULT 'n/a',
  `image_found2` varchar(255) NOT NULL DEFAULT 'n/a',
  `user_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lost`
--

CREATE TABLE `lost` (
  `LostId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` varchar(20) NOT NULL,
  `height` varchar(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `mother` varchar(100) NOT NULL,
  `lostdt` date NOT NULL,
  `lostlocation` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `wearing` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `image_lost1` varchar(255) NOT NULL DEFAULT 'n/a',
  `image_lost2` varchar(255) NOT NULL DEFAULT 'n/a',
  `user_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lost`
--

INSERT INTO `lost` (`LostId`, `name`, `age`, `height`, `father`, `mother`, `lostdt`, `lostlocation`, `color`, `wearing`, `contact`, `address`, `other`, `image_lost1`, `image_lost2`, `user_id`) VALUES
(20, 'Rayyat Jiniah', '2', '2\'', 'Raja', 'Rani', '2012-12-12', 'Dhaka, Dakshinkhan 1230', 'White', 'Shirts', '0176666666', 'Dakshinkhan Sardar Para, Hazimarket', 'Nop', '1.jpg', '2.jpg', 23),
(21, 'Jahan Maya', '3', '2\'1\"', 'Badshah', 'Sultana', '2013-12-16', 'Puran Dhaka, Hajir Biriyani', 'Brown', 'Lal dupatta', '01760379337', 'Dakshinkhan Sardar Para, Hazimarket', 'N/A', '1.jpg', '2.jpg', 23);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL DEFAULT 'n/a',
  `house` varchar(15) NOT NULL DEFAULT 'n/a',
  `street` varchar(20) NOT NULL DEFAULT 'n/a',
  `zip` varchar(10) NOT NULL DEFAULT 'n/a',
  `city` varchar(50) NOT NULL DEFAULT 'n/a',
  `state` varchar(50) NOT NULL DEFAULT 'n/a',
  `country` varchar(100) NOT NULL DEFAULT 'n/a',
  `gender` varchar(20) NOT NULL DEFAULT 'n/a',
  `profile` varchar(255) NOT NULL DEFAULT 'n/a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `phone`, `house`, `street`, `zip`, `city`, `state`, `country`, `gender`, `profile`) VALUES
(23, 'Suchana', 'Suchi', 'shushie', 's@g.com', '$2y$10$xRFBiFC/5C8kxu0gpAlmlu4tr7HY74QE6QfyFwO2ZTyfkznyTZYFS', '01766666666', '3A, 258', '1, Dakshinkhan Sarda', '1230', 'Dhaka', 'N/A', 'Bangladesh', 'female', 'ss.jpg'),
(24, 'abcd', 'efgh', 'abcd', 'av', '$2y$10$BT.Iv2TXaBAOJcdoQyKaeuXSv5dpp/iiA811X9seoYvTu8s8lp5a6', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a'),
(25, 'mimi', 'mimi', 'mimi', 'mimi', '$2y$10$Ut9IjNabrv1/CSBoCzecXueN25SrcYS0pQ74aV2e29stSWKW6WndC', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `found`
--
ALTER TABLE `found`
  ADD PRIMARY KEY (`foundId`);

--
-- Indexes for table `lost`
--
ALTER TABLE `lost`
  ADD PRIMARY KEY (`LostId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `found`
--
ALTER TABLE `found`
  MODIFY `foundId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lost`
--
ALTER TABLE `lost`
  MODIFY `LostId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
