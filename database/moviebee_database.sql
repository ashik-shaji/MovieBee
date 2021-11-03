-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 03, 2021 at 01:34 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demodatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `demotable`
--

CREATE TABLE `demotable` (
  `id` int(11) NOT NULL,
  `email_address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `passwordhint` varchar(200) NOT NULL,
  `balance` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demotable`
--

INSERT INTO `demotable` (`id`, `email_address`, `password`, `username`, `passwordhint`, `balance`) VALUES
(1, 'sam123@gmail.com', 'sam@123@sam', 'sam', 'Password Hint Not Set', '0'),
(10, 'ashik@gmail.com', 'ashik@12345', 'ashik', 'Password Hint Not Set', '0'),
(11, 'soman@gmail.com', 'soman@123', 'soman', 'Password Hint Not Set', '0'),
(12, 'alan@gmail.com', 'alan@12345', 'alan', 'Password Hint Not Set', '0'),
(13, 'shajiashik10@gmail.com', 'ashik@0808', 'ashik123', 'sniper123', '899'),
(14, 'ashikshaji604@gmail.com', 'ash@12345', 'ash', 'sorry', '0'),
(15, 'vipin@gmail.com', 'vipin12345', 'vipin', 'Password Hint Not Set', '0'),
(16, 'ram@gmail.com', 'ram12345', 'ram', 'Password Hint Not Set', '360');

-- --------------------------------------------------------

--
-- Table structure for table `movieseats`
--

CREATE TABLE `movieseats` (
  `movie_id` int(200) NOT NULL,
  `moviename` varchar(200) NOT NULL,
  `theater` varchar(400) NOT NULL,
  `movieseatslist` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movieseats`
--

INSERT INTO `movieseats` (`movie_id`, `moviename`, `theater`, `movieseatslist`) VALUES
(1, 'Jumanji', 'Majestic Theatre', 'X, '),
(2, 'Crawl', 'Majestic Theatre', 'X, '),
(3, 'Joker', 'Majestic Theatre', 'X, '),
(4, 'Dolittle', 'Majestic Theatre', 'X, '),
(5, 'Avengers', 'Majestic Theatre', 'X, '),
(6, 'Tenet', 'Majestic Theatre', 'X, '),
(7, 'Jumanji', 'Angelika Film Center', 'X, '),
(8, 'Crawl', 'Angelika Film Center', 'X, '),
(9, 'Joker', 'Angelika Film Center', 'X, '),
(10, 'Dolittle', 'Angelika Film Center', 'X, '),
(11, 'Avengers', 'Angelika Film Center', 'X, '),
(12, 'Tenet', 'Angelika Film Center', 'X, '),
(13, 'Jumanji', 'Regal Cinemas', 'X, B3, B4C2, C3'),
(14, 'Crawl', 'Regal Cinemas', 'X, '),
(15, 'Joker', 'Regal Cinemas', 'X, '),
(16, 'Dolittle', 'Regal Cinemas', 'X, '),
(17, 'Avengers', 'Regal Cinemas', 'X, '),
(18, 'Tenet', 'Regal Cinemas', 'X, '),
(19, 'Jumanji', 'New Plaza Cinema', 'X, '),
(20, 'Crawl', 'New Plaza Cinema', 'X, '),
(21, 'Joker', 'New Plaza Cinema', 'X, '),
(22, 'Dolittle', 'New Plaza Cinema', 'X, '),
(23, 'Avengers', 'New Plaza Cinema', 'X, '),
(24, 'Tenet', 'New Plaza Cinema', 'X, ');

-- --------------------------------------------------------

--
-- Table structure for table `tickettable`
--

CREATE TABLE `tickettable` (
  `ticketid` int(200) NOT NULL,
  `moviename` varchar(300) NOT NULL,
  `movieimage` varchar(300) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `stars` varchar(200) NOT NULL,
  `gerne` varchar(200) NOT NULL,
  `movieday` varchar(200) NOT NULL,
  `movietime` varchar(200) NOT NULL,
  `theater` varchar(200) NOT NULL,
  `seatname` varchar(200) NOT NULL,
  `personid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickettable`
--

INSERT INTO `tickettable` (`ticketid`, `moviename`, `movieimage`, `rating`, `stars`, `gerne`, `movieday`, `movietime`, `theater`, `seatname`, `personid`) VALUES
(20, 'Jumanji', 'assets/movieimage/jumanji.jpg', '4.2', '4', 'Adventure/Comedy ‧ 2h 3m', '17', '03:00', 'Regal Cinemas', 'B3, B4', '13'),
(21, 'Jumanji', 'assets/movieimage/jumanji.jpg', '4.2', '4', 'Adventure/Comedy ‧ 2h 3m', '17', '12:00', 'Regal Cinemas', 'C2, C3', '16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demotable`
--
ALTER TABLE `demotable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movieseats`
--
ALTER TABLE `movieseats`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tickettable`
--
ALTER TABLE `tickettable`
  ADD PRIMARY KEY (`ticketid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demotable`
--
ALTER TABLE `demotable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `movieseats`
--
ALTER TABLE `movieseats`
  MODIFY `movie_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tickettable`
--
ALTER TABLE `tickettable`
  MODIFY `ticketid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
