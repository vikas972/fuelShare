-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 05:35 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuel`
--

-- --------------------------------------------------------

--
-- Table structure for table `mech`
--

CREATE TABLE `mech` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Contactno` varchar(255) NOT NULL,
  `Ratings` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mech`
--

INSERT INTO `mech` (`id`, `name`, `Location`, `Contactno`, `Ratings`) VALUES
(NULL, 'Mario\'s Garage', 'Bandra', '9888563218', '4.2'),
(NULL, 'Paul Auto Garage', 'Bandra', '9875522231', '4.3'),
(NULL, 'Anthony Garage', 'Bandra', '999658532', '2.9'),
(NULL, 'Philips Auto Garage', 'Bandra', '789885412', '5'),
(NULL, 'Irfan\'s Garage', 'Bandra', '8855774411', 'Bandra');

-- --------------------------------------------------------

--
-- Table structure for table `mechanical`
--

CREATE TABLE `mechanical` (
  `id` int(244) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `ratings` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechanical`
--

INSERT INTO `mechanical` (`id`, `name`, `location`, `contact`, `ratings`) VALUES
(1, 'Mario\'s Garage', 'St John Rd, Pali Hill,Bandra,Mumbai, Maharashtra 400050', '945632145', '1.8'),
(2, 'Paul Auto Garage', 'Plot no. 16B, Perry Road Near H.S.B.C Bank, Bandra West, Mumbai, Maharashtra 400050', '788965445', '4.5'),
(3, 'Anthony Garage', 'Dr KB Hedgewar Road, Bandra West, Mumbai, Maharashtra 400050', '9874563211', '4.9'),
(4, 'Philips Auto Garage', '415, 15th Rd, Bandra West, Mumbai, Maharashtra 400050', '955563215', '5'),
(5, 'Garage 52', '58, Chuim Village Rd, Chuim Village, Danda, Pali Hill, Mumbai, Maharashtra 400052', '988523654', '2.8'),
(6, 'Carcrew HQ Bandra West Mumbai', 'Dr Ambedkar Rd, Bandar (W), Mumbai, Maharashtra 400050', '988852314', '4.2'),
(7, 'Jerry Motor Garage', 'Shop No. J 10, Rizvi Park, S. V. Road, Entrance Lane, Santacruz West, Mumbai, Maharashtra 400054', '788523641', '3.4'),
(8, 'Kalpana Auto Garage', 'Shop No. 37, Regal Marble Compound, Gajdhar Bandh, SB Patil Rd, Saraswat Colony, Santacruz West, Mumbai, Maharashtra 400054', '9855236545', '1.1'),
(9, 'Rahul Motor Garage', 'Shop 24, Rizvi Park, Opp. Dheeraj Heritage, Doctor Vasantrao Avsare Marg, Khira Nagar, Santacruz West, Mumbai, Maharashtra 400054', '785963211', '3.8'),
(10, 'Bharat Auto Garage', 'Gajhdhar Band, Juhu Rd, Juhu Koliwada, Santacruz West, Mumbai, Maharashtra 400054', '985523215', '4.0'),
(11, 'Nagraj Auto Garage', '5, Sector 19 Vashi Rd, Turbhe Store, Sector 19, Vashi, Navi Mumbai, Maharashtra 400705', '940225361', '3'),
(12, 'Chikoo Auto Garage', 'No:6, Shri Siddhi Vinayak Complex, Plot No:29-A,Near MSEB Office,Sector 19-C,, Vashi, Navi Mumbai, Maharashtra 400703', '888523699', '5'),
(14, 'MCGM Bandra Garage', ' C Block BKC, Maharashtra Nagar, Bandra West, Mumbai, Maharashtra 400050', '788945621', '4.3'),
(15, 'Garage 52', '58, Chuim Village Rd, Chuim Village, Danda, Pali Hill, Mumbai, Maharashtra 400052', '7889632145', '1.1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vno` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_id`, `name`, `vno`, `address`, `landmark`, `contact`, `price`, `email`) VALUES
(2, 'pankaj gupta', 'mh-13-s-2233', 'bandra', 'bandstand', '940305255', 76, 'pgupta@gmail.com'),
(3, 'Saurabh Amrutkar', 'mh-15-cd-4843', 'Vile Parle', 'DJ Sanghvi', '7977792973', 76, 'saurabhamrutkar22@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(255) NOT NULL,
  `name` varchar(246) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phonenumber` varchar(112) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `aadhar_card` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `email`, `password`, `phonenumber`, `address`, `landmark`, `aadhar_card`) VALUES
(1, 'kd', 'jfdnk', 'klfnlk', '', 'bfb', '', ''),
(2, 'pp', 'p@gmail.com', '66', '75', '', '', ''),
(3, 'Saurabh', 's@gmail.com', 'adsa', '123654', 'dkbbsj', 'kldjlkn', '16516516'),
(4, 'jdhfkj', 'q@gmail.com', '65656', '55665', 'kjuhu', 'lkkll', ''),
(5, 'Pankaj Gupta', 'pgup@gmail.com', 'djskkj', '4', 'fndkj', '', ''),
(6, 'Saurabh Amrutkar', 'saurabhamrutkar22@gmail.com', 'saurabh2298', '7977792973', 'nashik', 'kgalli', ''),
(7, 'Samir Khuranna', 'skhanna@gmail.com', 'skhanna', '744412254', 'Bandra', 'vashi', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mechanical`
--
ALTER TABLE `mechanical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mechanical`
--
ALTER TABLE `mechanical`
  MODIFY `id` int(244) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
