-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 06:34 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(11) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Nikhil', 'Rajeev', 2000, '2021-07-05 22:17:32'),
(2, 'Rashi', 'Rahul', 1000, '2021-07-05 22:18:45'),
(3, 'Sahil', 'Rahul', 2000, '2021-07-05 22:20:09'),
(4, 'Neha', 'Ravi', 2000, '2021-07-05 22:31:12'),
(5, 'Shreya', 'Neha', 2000, '2021-07-05 22:34:51'),
(6, 'Sahil', 'Rashi', 1000, '2021-07-05 22:35:38'),
(7, 'Samaira', 'Rahul', 1000, '2021-07-05 22:36:24'),
(8, 'Rashi', 'Shreya', 3000, '2021-07-08 21:36:48'),
(9, 'Sanjeev', 'Ravi', 2000, '2021-07-08 21:52:40'),
(10, 'Shreya', 'Sanjeev', 2000, '2021-07-08 21:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Neha', 'neha29@gmail.com', 3000),
(2, 'Nikhil', 'nikhil18chaudhary@gmail.com', 5000),
(3, 'Rahul', 'rahul20@gmail.com', 10000),
(4, 'Rajeev', 'rajeev09chaudhary@gmail.com', 9000),
(5, 'Rashi', 'rashi09chaudhary@gmail.com', 5000),
(6, 'Ravi', 'ravi127@gmail.com', 3000),
(7, 'Sahil', 'sahil18chaudhary@gmail.com', 5000),
(8, 'Samaira', 'samiaira18@gmail.com', 1000),
(9, 'Shreya', 'shreya18@gmail.com', 2000),
(10, 'Sanjeev', 'sanjeev18@gmail.com', 8000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
