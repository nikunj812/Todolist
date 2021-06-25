-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 01:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(15, 'To Do list 1', 0, NULL, '2021-06-24 07:15:55', '2021-06-24 07:19:02'),
(16, 'To Do list 2', 0, NULL, '2021-06-24 07:19:42', '2021-06-24 07:19:42'),
(17, 'To Do list 3', 0, NULL, '2021-06-24 07:19:51', '2021-06-24 07:19:51'),
(18, 'To Do list 4', 0, NULL, '2021-06-24 07:19:55', '2021-06-24 07:19:55'),
(19, 'To Do list 5', 0, NULL, '2021-06-24 07:20:00', '2021-06-24 07:20:00'),
(20, 'To Do list 6', 0, NULL, '2021-06-24 07:20:05', '2021-06-24 07:20:05'),
(21, 'To Do list 7', 0, NULL, '2021-06-24 07:20:10', '2021-06-24 07:20:10'),
(22, 'To Do list 8', 0, NULL, '2021-06-24 07:20:23', '2021-06-24 07:20:23'),
(23, 'To Do list 9', 0, NULL, '2021-06-24 07:20:31', '2021-06-24 07:34:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
