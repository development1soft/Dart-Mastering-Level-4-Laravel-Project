-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 04:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dartapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2020_06_30_093118_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(11, 'first title edited', 'fist description edited', '2020-06-30 06:47:31', '2020-07-01 10:28:05'),
(12, 'Alice, quite forgetting.', 'Quod beatae et sit incidunt sit non. Temporibus est quia numquam ut. Expedita maxime eum maiores sed.', '2020-06-30 06:47:31', '2020-06-30 06:47:31'),
(13, 'title from put', 'description from put', '2020-06-30 06:47:31', '2020-07-01 10:42:44'),
(14, 'title from patch', 'Aliquid aspernatur deleniti repellendus architecto ut rem provident. Deleniti ut adipisci error sit ullam ut. Provident in facere dolore et omnis fugit. Accusantium fuga delectus ipsa ipsam ut.', '2020-06-30 06:47:31', '2020-07-01 10:45:03'),
(15, 'I had to stop and.', 'Illo quia numquam et molestiae facere. Qui dolor numquam quis optio aut vitae similique. Mollitia ipsum labore sit a libero dolores.', '2020-06-30 06:47:31', '2020-06-30 06:47:31'),
(16, 'Alice, very loudly and.', 'Sint voluptate nihil dolores aut expedita. Nam rerum quibusdam voluptatem ad in rerum. Fugit quam et deserunt quia.', '2020-06-30 06:47:31', '2020-06-30 06:47:31'),
(17, 'I almost wish I hadn\'t.', 'Perspiciatis adipisci commodi quia aut et occaecati aut. Dolore maiores error consectetur repellendus. Eos id tempore aliquam est. Ut nihil impedit rerum consequatur blanditiis.', '2020-06-30 06:47:31', '2020-06-30 06:47:31'),
(18, 'She was looking for.', 'Neque facere commodi corrupti. Ipsum repudiandae repellendus inventore ex hic nemo. Fuga aut fugit ad nisi minus nam. Voluptatem molestiae placeat sunt libero exercitationem et.', '2020-06-30 06:47:31', '2020-06-30 06:47:31'),
(19, 'title from patch', 'Et qui esse sit omnis doloribus omnis. Ut rem expedita itaque optio vitae similique quis. Rerum dolor delectus totam qui.', '2020-06-30 06:47:31', '2020-07-01 10:47:31'),
(21, 'first post title from api', 'fist description from api', '2020-07-01 10:21:44', '2020-07-01 10:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'test', 'test1@gmail.com', NULL, '$2y$10$58OkFBZ4G5LNjnUJSJvvqOcQM3k3G/kyBaPofapQOMt2Y7FMlNRgu', NULL, NULL, '2020-06-28 08:20:57', '2020-06-28 08:20:57'),
(6, 'test2', 'test2@gmail.com', NULL, '$2y$10$GQwG2oyLI9QH7rRhMJ076e04x.tKuWjBpLQpYfMzDOar5sMhRhRKO', 'qlbSieqPuudOxA3DqqljtKBxvuttxz800nMcNsvJdWhbo90I8mPin53t78NB', NULL, '2020-06-28 08:23:26', '2020-06-28 08:24:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
