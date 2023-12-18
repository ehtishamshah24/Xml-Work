-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 02:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schools`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `branch_id` varchar(20) DEFAULT NULL,
  `std_add` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `gender`, `age`, `branch_id`, `std_add`) VALUES
(1, 'Abrar Khan', 'M', 19, 'CS', 75480),
(2, 'Kartik Aryan', 'M', 17, 'P', 110001),
(3, 'Ava Williams', 'F', 21, 'B', 75001),
(4, 'Adam Johnson', 'M', 18, 'CE', 1204),
(5, 'Noor Fatima', 'F', 20, 'ME', 75480),
(6, 'Emily Davis', 'F', 24, 'CS', 1000),
(7, 'Ananya Reddy', 'F', 19, 'C', 110001),
(8, 'Harshad Mehta', 'M', 25, 'ME', 110001),
(9, 'Owen King', 'M', 17, 'P', 1000),
(10, 'Husnain Khan', 'M', 22, 'CE', 75480),
(11, 'Jake Harrison', 'M', 20, 'C', 75001),
(12, 'Sara Khan', 'F', 19, 'CE', 75480),
(13, 'Lily Harris', 'F', 23, 'CS', 1204),
(14, 'Manoj Kapoor', 'M', 21, 'B', 1000),
(15, 'Pankaj Tripati', 'M', 24, 'B', 110001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `std_add` (`std_add`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `students_branch` (`branch_id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`std_add`) REFERENCES `students_address` (`std_pin_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
