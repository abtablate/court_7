-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2026 at 07:05 AM
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
-- Database: `court7`
--

-- --------------------------------------------------------

--
-- Table structure for table `courts`
--

CREATE TABLE `courts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debts`
--

CREATE TABLE `debts` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `debt_date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_logs`
--

CREATE TABLE `file_logs` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `accessed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_logs`
--

INSERT INTO `file_logs` (`id`, `filename`, `accessed_at`) VALUES
(1, 'user_login.php', '2026-06-05 02:42:51'),
(2, 'user_login.php', '2026-06-05 03:01:05'),
(3, 'admin_dashboard.php', '2026-06-20 12:09:44'),
(4, 'products.php', '2026-06-20 12:09:47'),
(5, 'admin_dashboard.php', '2026-06-30 13:09:01'),
(6, 'products.php', '2026-06-30 13:10:05'),
(7, 'admin_dashboard.php', '2026-06-30 13:12:13'),
(8, 'products.php', '2026-06-30 13:12:43'),
(9, 'sales.php', '2026-06-30 13:14:03'),
(10, 'sales.php', '2026-06-30 13:14:23'),
(11, 'upcoming_bookings.php', '2026-06-30 13:14:37'),
(12, 'recent_bookings.php', '2026-06-30 13:15:00'),
(13, 'products.php', '2026-06-30 13:16:53'),
(14, 'sales.php', '2026-06-30 13:17:09'),
(15, 'recent_bookings.php', '2026-06-30 13:17:49'),
(16, 'admin_dashboard.php', '2026-06-30 13:23:22'),
(17, 'admin_dashboard.php', '2026-06-30 13:23:27'),
(18, 'products.php', '2026-06-30 13:24:43'),
(19, 'admin_dashboard.php', '2026-06-30 13:24:54'),
(20, 'admin_dashboard.php', '2026-06-30 13:26:20'),
(21, 'admin_dashboard.php', '2026-06-30 13:26:23'),
(22, 'admin_dashboard.php', '2026-06-30 13:26:26'),
(23, 'admin_dashboard.php', '2026-06-30 13:26:44'),
(24, 'admin_dashboard.php', '2026-06-30 13:26:46'),
(25, 'admin_dashboard.php', '2026-06-30 13:29:34'),
(26, 'products.php', '2026-06-30 13:29:38'),
(27, 'sales.php', '2026-06-30 13:29:41'),
(28, 'sales.php', '2026-06-30 13:30:44'),
(29, 'sales.php', '2026-06-30 13:33:22'),
(30, 'weekly_sales.php', '2026-06-30 13:34:42'),
(31, 'weekly_sales.php', '2026-06-30 13:36:01'),
(32, 'upcoming_bookings.php', '2026-06-30 13:38:35'),
(33, 'upcoming_bookings.php', '2026-06-30 13:38:43'),
(34, 'weekly_sales.php', '2026-06-30 13:38:48'),
(35, 'sales.php', '2026-06-30 13:38:52'),
(36, 'recent_bookings.php', '2026-06-30 13:38:56'),
(37, 'recent_bookings.php', '2026-06-30 13:39:32'),
(38, 'recent_bookings.php', '2026-06-30 13:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `report_date` date NOT NULL,
  `total_bookings` int(11) DEFAULT 0,
  `total_sales` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `revenue` decimal(10,2) DEFAULT 0.00,
  `court_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin@court7', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debts`
--
ALTER TABLE `debts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_logs`
--
ALTER TABLE `file_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `court_id` (`court_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
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
-- AUTO_INCREMENT for table `courts`
--
ALTER TABLE `courts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debts`
--
ALTER TABLE `debts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_logs`
--
ALTER TABLE `file_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`court_id`) REFERENCES `courts` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
