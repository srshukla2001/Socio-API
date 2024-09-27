-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 01:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socio`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_09_25_092859_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('9d180592-4554-4055-9ec9-844d87428f9c', NULL, 'Socio Personal Access Client', '1dYFBKXL4ivFTwRfqK3UAqpk6XESQNTyrNMQWvF3', NULL, 'http://localhost', 1, 0, 0, '2024-09-25 06:19:42', '2024-09-25 06:19:42'),
('9d180592-4d05-4297-af48-2dcf4968778b', NULL, 'Socio Password Grant Client', 'WO6c9QqQrBmYvXm67W5OVsvwixkrY3BnKqz55EYZ', 'users', 'http://localhost', 0, 1, 0, '2024-09-25 06:19:42', '2024-09-25 06:19:42'),
('9d1805b1-249a-42c1-943d-cfbde80d6612', NULL, 'Socio Personal Access Client', 'oPGx4d2g1BTtSw5IYVkKCGCNTz0j7ISgMzGPXWNL', NULL, 'http://localhost', 1, 0, 0, '2024-09-25 06:20:02', '2024-09-25 06:20:02'),
('9d1805b1-2e82-4d34-a1d0-c8244e44c2b4', NULL, 'Socio Password Grant Client', '5VzYNNyUaJUOgOmaiUMZb5a5qAxpap9gfX9YDErN', 'users', 'http://localhost', 0, 1, 0, '2024-09-25 06:20:02', '2024-09-25 06:20:02'),
('9d180757-9775-4974-a034-e84bafa06605', NULL, 'Socio Personal Access Client', 'cFgAguYUVXAQunxC1HxCgPIYXTBFEeI4VEmBunJX', NULL, 'http://localhost', 1, 0, 0, '2024-09-25 06:24:39', '2024-09-25 06:24:39'),
('9d180757-9e01-4873-910c-eda9d9143c3a', NULL, 'Socio Password Grant Client', 'hsz2yAAeJY0RRA12uOLHtMLK9yVlcdKLydPieDaZ', 'users', 'http://localhost', 0, 1, 0, '2024-09-25 06:24:39', '2024-09-25 06:24:39'),
('9d180b8c-a188-43c7-bbc3-9b9a1012118b', 13, 'Rohan', 'shdAS6pLY0eMR0nLN57kxgD1WBTBDMBh3YMIcFi4', NULL, '/', 0, 0, 0, '2024-09-25 06:36:25', '2024-09-25 06:36:25'),
('9d180c96-eb5e-4ab4-9f21-319770c0d749', 13, 'R', NULL, NULL, 'http://localhost/auth/callback', 0, 0, 0, '2024-09-25 06:39:19', '2024-09-25 06:39:19'),
('9d180d77-2fec-4464-9b78-89349242b839', NULL, 'Socio Personal Access Client', 'rUrdAHkIG3i58AhjyLNaJMEOtXylbyyKpDuRCKgJ', NULL, 'http://localhost', 1, 0, 0, '2024-09-25 06:41:46', '2024-09-25 06:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9d180592-4554-4055-9ec9-844d87428f9c', '2024-09-25 06:19:42', '2024-09-25 06:19:42'),
(2, '9d1805b1-249a-42c1-943d-cfbde80d6612', '2024-09-25 06:20:02', '2024-09-25 06:20:02'),
(3, '9d180757-9775-4974-a034-e84bafa06605', '2024-09-25 06:24:39', '2024-09-25 06:24:39'),
(4, '9d180d77-2fec-4464-9b78-89349242b839', '2024-09-25 06:41:46', '2024-09-25 06:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', 'aa3a301e57e1e7d650fafb3bbd573e91c9f1bd0d16cdea65344f879be6c9c89b', '[\"*\"]', NULL, NULL, '2024-09-25 07:03:22', '2024-09-25 07:03:22'),
(2, 'App\\Models\\User', 1, 'token', '378c7196f7992e08de69446d25965bf631117905a5c5acebdbceb6b170d5a966', '[\"*\"]', NULL, NULL, '2024-09-25 07:06:51', '2024-09-25 07:06:51'),
(3, 'App\\Models\\User', 1, 'token', 'ce6c98de37655c8c3e63eaaa42e67b7f68a4e9bd524e30f270ee4545c72cb022', '[\"*\"]', NULL, NULL, '2024-09-25 07:06:51', '2024-09-25 07:06:51'),
(4, 'App\\Models\\User', 1, 'token', '24c3c2ae36c1ee5188889a67d59795d69c88141e12782803034fed755dfc0839', '[\"*\"]', NULL, NULL, '2024-09-25 07:06:58', '2024-09-25 07:06:58'),
(5, 'App\\Models\\User', 1, 'token', 'b30c84fb460f4325a6d4e6bada4405fd754410e1ae91a7f065a79c36d5045c62', '[\"*\"]', NULL, NULL, '2024-09-25 07:06:58', '2024-09-25 07:06:58'),
(6, 'App\\Models\\User', 1, 'socio', '4ff531e989b6a648c18baf39e35b38374e29ab92f4d88b0907853230a4304ce9', '[\"*\"]', NULL, NULL, '2024-09-25 07:47:56', '2024-09-25 07:47:56'),
(7, 'App\\Models\\User', 1, 'socio', '2950d4c8608feb5f33104b058dd4f8720266c2531917f47ef1381d68faf463ba', '[\"*\"]', NULL, NULL, '2024-09-25 07:47:56', '2024-09-25 07:47:56'),
(8, 'App\\Models\\User', 1, 'socio', '2dfab6b02fd0451aa36271403fd51143b723f67fbc279ef0a5b4120631cbf277', '[\"*\"]', NULL, NULL, '2024-09-25 07:48:11', '2024-09-25 07:48:11'),
(9, 'App\\Models\\User', 1, 'socio', '2efa4c4f39f58e10e4b2b6f8c43fa4ca681bd9602c30d1c2757dc491140de84e', '[\"*\"]', NULL, NULL, '2024-09-25 07:48:11', '2024-09-25 07:48:11'),
(10, 'App\\Models\\User', 1, 'socio', 'd8637d20cdd5dc4df3bd8d6af479507da35335c5395e6ec4d02d0eadf45cb850', '[\"*\"]', NULL, NULL, '2024-09-25 07:49:52', '2024-09-25 07:49:52'),
(11, 'App\\Models\\User', 1, 'socio', '86c8e70a9201a30d689f9d39f8b63b826bfa92ddfa172ff420249c72c923e0b6', '[\"*\"]', NULL, NULL, '2024-09-25 07:49:52', '2024-09-25 07:49:52'),
(12, 'App\\Models\\User', 1, 'socio', 'b4d5a01b1fd8b762b320ff0dccf4c74887c4586c4f87bc923fa4a0c96befaa5a', '[\"*\"]', NULL, NULL, '2024-09-25 07:56:21', '2024-09-25 07:56:21'),
(13, 'App\\Models\\User', 2, 'socio', 'e9ceca88226c93e4f1937c4f382ef643a171f9c1d91e016adbfee779ffb69077', '[\"*\"]', NULL, NULL, '2024-09-25 07:56:45', '2024-09-25 07:56:45'),
(14, 'App\\Models\\User', 1, 'socio', 'cfbeac2a58547f4e96b3866b71355ac458ad7ee11b2ba78da810a64d4804ff12', '[\"*\"]', NULL, NULL, '2024-09-25 23:55:09', '2024-09-25 23:55:09'),
(15, 'App\\Models\\User', 1, 'socio', '6e5286df4f6858e80fce21d85704fa9cc84af9c7d5c7680c97b52a466e30fe90', '[\"*\"]', NULL, NULL, '2024-09-26 00:42:03', '2024-09-26 00:42:03'),
(16, 'App\\Models\\User', 1, 'socio', '6b6bac927485ed1424d5197b29716c2ad87b02d4fc758c3b33e356dde56779df', '[\"*\"]', NULL, NULL, '2024-09-26 00:44:20', '2024-09-26 00:44:20'),
(17, 'App\\Models\\User', 1, 'socio', '19d380d258fb591209080cbd53ae1aacbee973223750df21f317d9310fc25f9c', '[\"*\"]', NULL, NULL, '2024-09-26 00:46:03', '2024-09-26 00:46:03'),
(18, 'App\\Models\\User', 1, 'socio', 'a250fadabbb0d041d58886becf0f08868a75db146356179b9c0c213471b8bcb5', '[\"*\"]', NULL, NULL, '2024-09-26 00:46:15', '2024-09-26 00:46:15'),
(19, 'App\\Models\\User', 1, 'socio', '088eb5905a1289dab2db13f5670901218535fd68ce73f6fd04903bdcfd7198a3', '[\"*\"]', NULL, NULL, '2024-09-26 00:46:26', '2024-09-26 00:46:26'),
(20, 'App\\Models\\User', 1, 'socio', 'a4fa4782e9591b8d51ceb108a0086cd70b534bd5ec8d89babc0210202420edb5', '[\"*\"]', '2024-09-26 07:27:19', NULL, '2024-09-26 00:47:17', '2024-09-26 07:27:19'),
(21, 'App\\Models\\User', 3, 'socio', 'f59b1bf4167c99466ffd6b33205ce1f31dfbc42e3ed8aaddeea7687a311cffec', '[\"*\"]', NULL, NULL, '2024-09-26 01:09:53', '2024-09-26 01:09:53'),
(22, 'App\\Models\\User', 2, 'socio', '57df819af4289f1d93b0a6fffb51c715f76fbbe252296d2e3e6266d7a9d3954d', '[\"*\"]', '2024-09-26 01:14:54', NULL, '2024-09-26 01:10:22', '2024-09-26 01:14:54'),
(23, 'App\\Models\\User', 2, 'socio', '0a0491e8cb66c25c71e8c2e4b6d5bbd35d165b1e2a87c42e1850d94f1acc3e9e', '[\"*\"]', '2024-09-27 00:55:36', NULL, '2024-09-26 07:28:25', '2024-09-27 00:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `category`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Socio', 'Today AI has launch new version with additional features and with more robust', 'Post', 1, '2024-09-26 01:26:45', '2024-09-26 01:26:45', NULL),
(4, 'Socio', 'Today AI model 40-mini integrated has launch new version with additional features and with more robust', 'Post', 1, '2024-09-26 07:29:07', '2024-09-26 07:29:07', NULL),
(5, 'Socio', 'Today AI model 40-mini integrated has launch new version with additional features and with more robust', 'Post', 2, '2024-09-26 07:31:26', '2024-09-26 07:31:26', NULL),
(6, 'Socio', 'Yesterday AI model 40-mini integrated has launch new version with additional features and with more robust', 'Post', 2, '2024-09-27 00:16:42', '2024-09-27 00:16:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abc@gmail.com', 'ABC', NULL, '$2y$10$1ycmorxVH8x2DC.Ty6Qq5OfVLsJC3lMLKcKOUum.Db8oTOWj2bqeG', 'RS2AuBvFLAuTOKP7FbaPxeGFHk5XPx5Et0mXRhF51Kil8EyFmZnV4TysUfGh', '2024-09-25 07:03:17', '2024-09-25 07:03:17'),
(2, 'pqr@gmail.com', 'PQR', NULL, '$2y$10$csOHnMI0bCGRJkC8XPeSHOxFbUoKrJh5WR0e5LMqNsJpTEB9mrmz6', 'kRXhLC1dr3rUIc6r8SRPt1rsOGd6mcLPrOz1O5yE5wCD1KT39SXoqG30vqCl', '2024-09-25 07:56:45', '2024-09-25 07:56:45'),
(3, 'lmn@gmail.com', 'LMN', NULL, '$2y$10$yhyNqJW5cYdYzQ.5uCgd2.uuiYm.YGADwG87WW76z00jM5130jD4u', NULL, '2024-09-26 01:09:53', '2024-09-26 01:09:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
