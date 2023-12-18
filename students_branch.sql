-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 02:57 PM
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
-- Table structure for table `students_branch`
--

CREATE TABLE `students_branch` (
  `branch_id` varchar(20) NOT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `subjects` int(11) NOT NULL,
  `crdits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_branch`
--

INSERT INTO `students_branch` (`branch_id`, `branch_name`, `subjects`, `crdits`) VALUES
('B', 'Biology', 6, 95),
('C', 'Chemistry', 15, 180),
('CE', 'Chemical Engineering', 8, 110),
('CS', 'Computer Science', 7, 120),
('ME', 'Mechanical Engineering', 10, 160),
('P', 'Physics', 5, 130);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_branch`
--
ALTER TABLE `students_branch`
  ADD PRIMARY KEY (`branch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
