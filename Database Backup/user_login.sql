-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 06:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `researcher_bolg`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `sno` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`sno`, `username`, `password`, `email`, `date`) VALUES
(1, 'Avinay', 'palthan', 'avinay1165@gmail.com', '2020-09-10 08:02:51'),
(2, 'Rahul', 'rohole', 'rahul1165@gmail.com', '2020-09-10 08:10:10'),
(3, 'Rahul', 'rohole', 'rahul1165@gmail.com', '2020-09-10 08:10:44'),
(4, 'Mehak', 'rendom', 'mehak1165@gmail.com', '2020-09-10 08:11:06'),
(5, 'Chirag', 'safasdf', 'chirag1165@gmail.com', '2020-09-10 08:13:45'),
(6, 'Avinay', 'asdas', 'avinay1165@gmail.com', '2020-09-10 08:14:27'),
(7, 'Vinay', 'palthan', 'vinay1165@gmail.com', '2020-09-19 16:09:13'),
(8, 'Avinay1165', 'palthandev', 'avinay1166@gmail.com', '2020-09-19 16:51:46'),
(9, 'sadasd', 'sadas', 'avinay1165@gmail.com', '2020-09-19 16:55:38'),
(10, 'asda', 'asdasd', 'avinay1165@gmail.com', '2020-09-19 17:01:21'),
(11, 'asdsadas', 'asdsdf', 'avinay1165@gmail.com', '2020-09-19 17:01:58'),
(12, 'sdcasd', 'palthandev', 'avinay1165@gmail.com', '2020-09-20 10:39:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
