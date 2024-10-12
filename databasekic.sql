-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 08:58 AM
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
-- Database: `databasekic`
--

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, 'What is your return policy?', 'You can return any item within 30 days of purchase.'),
(2, 'How do I contact customer service?', 'You can reach us at support@example.com.'),
(3, 'How to Contact?', 'Tension');

-- --------------------------------------------------------

--
-- Table structure for table `soil_samples`
--

CREATE TABLE `soil_samples` (
  `id` int(11) NOT NULL,
  `moisture` float NOT NULL,
  `ph_level` float NOT NULL,
  `texture` varchar(50) NOT NULL,
  `nitrogen_level` float NOT NULL,
  `organic_matter` float NOT NULL,
  `sample_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soil_samples`
--

INSERT INTO `soil_samples` (`id`, `moisture`, `ph_level`, `texture`, `nitrogen_level`, `organic_matter`, `sample_date`) VALUES
(1, 50, 7.5, 'Loamy', 2, 10, '2024-09-15 11:47:07'),
(2, 60, 8, 'Clay', 1, 5, '2024-09-15 12:28:41'),
(3, 60, 8, 'Clay', 1, 5, '2024-09-15 12:32:46'),
(4, 50, 7, 'Sandy', 3, 7, '2024-09-15 13:05:21'),
(5, 82, 4, 'Silty', 1, 10, '2024-09-15 13:37:52'),
(6, 82, 4, 'Silty', 1, 10, '2024-09-15 13:39:43'),
(7, 82, 4, 'Silty', 1, 10, '2024-09-15 13:40:38'),
(8, 100, 7.5, 'Sandy', 2.5, 6.5, '2024-09-15 13:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--



--
-- Indexes for dumped tables
--

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soil_samples`
--
ALTER TABLE `soil_samples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `soil_samples`
--
ALTER TABLE `soil_samples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
