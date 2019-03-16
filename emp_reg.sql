-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 12:09 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `emp_reg`
--

CREATE TABLE `emp_reg` (
  `emp_id` int(20) NOT NULL,
  `car_id` varchar(20) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `pswd` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_reg`
--

INSERT INTO `emp_reg` (`emp_id`, `car_id`, `emp_name`, `mail`, `pswd`, `phone`) VALUES
(1, 'MH0040', 'Viku', 'viko@gmail.com', 'viko123', '8286377432'),
(13, '', 'MH0124', 'ip.proj.Orc@gmail.com', 'Pankaj123', '08286377435'),
(17, '12345', 'ajay', 'aja@gmail.com', '123456', '985665661'),
(18, 'MH1234', 'viku', 'sps@gmail.com', 'pankaj12', '0852445554');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_reg`
--
ALTER TABLE `emp_reg`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_reg`
--
ALTER TABLE `emp_reg`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
