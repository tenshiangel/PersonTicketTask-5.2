-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 12:40 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basictask`
--

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int(10) UNSIGNED NOT NULL,
  `flight_date` datetime NOT NULL,
  `destination` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flight_date`, `destination`, `created_at`, `updated_at`) VALUES
(1, '2017-12-27 04:00:00', 'Japan', '2017-12-12 21:09:38', '2017-12-12 21:09:38'),
(2, '2017-12-21 16:30:00', 'Singapore', '2017-12-12 21:13:34', '2017-12-12 21:13:34'),
(3, '2017-12-30 02:00:00', 'France', '2017-12-12 21:15:48', '2017-12-12 21:15:48'),
(4, '2018-02-14 18:00:00', 'Korea', '2017-12-13 00:42:18', '2017-12-13 00:42:18'),
(5, '2018-01-16 06:00:00', 'China', '2017-12-13 03:40:19', '2017-12-13 03:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_12_05_032800_create_reactions_table', 1),
(2, '2017_12_07_040413_create_comments_table', 2),
(3, '2017_12_13_023154_create_people_table', 3),
(4, '2017_12_13_023542_create_tickets_table', 3),
(5, '2017_12_13_030618_create_flights_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vipers083@gmail.com', '$2y$10$ZTr7.YuAtyLMcmqk2AtPpu/ZIQPfK7LWch5Bxiwhly.pvCDgtCUAK', '2017-12-07 22:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `first_name`, `last_name`, `address`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'Uzumaki', 'Sa bayan ng Konoha', 'profile_picture_default.png', '2017-12-12 21:29:55', '2017-12-12 21:29:55'),
(2, 'Gabriel White', 'Tenma', 'Heavenly Skies', 'gab-chan.png', '2017-12-12 21:47:18', '2017-12-12 21:47:18'),
(3, 'Jojo', 'Binay', 'Cardcar', 'profile_picture_default.png', '2017-12-13 00:41:28', '2017-12-13 00:41:28'),
(4, 'Olem', 'Babia', 'Tisa', 'profile_picture_default.png', '2017-12-13 00:59:05', '2017-12-13 00:59:05'),
(5, 'Satanichia', 'McDowell', 'Gabriel DropOut', 'profile_picture_default.png', '2017-12-13 03:04:37', '2017-12-13 03:04:37'),
(6, 'Vignette April', 'Tsukinose', 'Gabriel DropOut', 'vignette.gif', '2017-12-13 03:15:26', '2017-12-13 03:15:26'),
(7, 'Rikka', 'Takanashi', 'Chuunibyo demo Koi', 'rikka.gif', '2017-12-13 03:19:27', '2017-12-13 03:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `flight_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `person_id`, `flight_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-12-12 22:22:54', '2017-12-12 22:22:54'),
(2, 1, 3, '2017-12-12 22:55:43', '2017-12-12 22:55:43'),
(3, 2, 1, '2017-12-12 22:57:03', '2017-12-12 22:57:03'),
(4, 2, 2, '2017-12-12 23:02:52', '2017-12-12 23:02:52'),
(5, 1, 2, '2017-12-12 23:22:01', '2017-12-12 23:22:01'),
(6, 3, 3, '2017-12-13 00:41:45', '2017-12-13 00:41:45'),
(7, 2, 4, '2017-12-13 00:54:59', '2017-12-13 00:54:59'),
(8, 4, 2, '2017-12-13 00:59:20', '2017-12-13 00:59:20'),
(9, 2, 3, '2017-12-13 03:05:41', '2017-12-13 03:05:41'),
(10, 6, 1, '2017-12-13 03:20:01', '2017-12-13 03:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rikka Takanashi', 'vipers083@gmail.com', '$2y$10$cmkGskzuJGNwaxAxSSTv0O0BfdOckgrE73qHsAOgOslggzwuNhNSm', 'Agzlpp6SWrHre3nCZpRFII4HxhYj1Z6BJxUoqO8rc5O8ruWtKDgTTXtcWiIo', '2017-11-29 19:17:27', '2017-11-29 19:17:27'),
(2, 'Gabriel White Tenma', 'tenmawhite09@gmail.com', '$2y$10$St78VlnQZifv1OSTyMRET.5n5GYVHK0rABIYFvk3bgBdWj0q6AxlC', 'DkQBIuWaka8aglQa2notUthUbiodnlbw7aAkXsbhx9kBCwB25plGVRWFY2hR', '2017-12-04 23:50:02', '2017-12-04 23:50:02'),
(3, 'Satanichia McDowell', 'satania09@gmail.com', '$2y$10$UIPCwPtzHEljDb0Dol3zGuLd8CjP2t0xW0pyINojq0FTkH9psWHd2', 'RJXKZEbogRlenKcoY4JsdZl4DwODpKsZ2vsb2ozH4nHEIeqgofDww2WFAPXn', '2017-12-08 00:55:42', '2017-12-08 00:55:42'),
(4, 'Vignette April Tsukinose', 'vignette09@gmail.com', '$2y$10$WK/lmgMWTrToC1MiO.Foqu9qtQ0KTLd7WhcRMdy.d8j/.ByqEZR9G', 'fh4f4aTszWbHNL2Yc4FIbnhheQHL7q5QEMVIIhH5xVvX3z02KciXCepAGob1', '2017-12-11 21:19:29', '2017-12-11 21:19:29'),
(5, 'Raphiel Shiraha Ainsworth', 'raphiel09@gmail.com', '$2y$10$j91c/m4LFGL7SeAe4icVrui1ptFIbx0NQRz8u0aNaBQzffA2jtqRO', 'dSlxXpyf7tkI2dM4oG0Gt1u046PmEY4Xmt1tIOrhLhzYTX24wK6KyNHSxL3E', '2017-12-11 21:40:42', '2017-12-11 21:40:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
