-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 01:22 AM
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
-- Database: `easynsk`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `supplier`, `created_at`, `updated_at`) VALUES
(1, 'testing', 'testingaddress@gmail.com', '0812345678', '120 Enugu road Nsukka', 'rice', '2000', '3', '1703369457.jfif', '3', '8', '', '2024-01-08 14:11:35', '2024-01-08 14:11:35'),
(21, 'admin', 'admin@gmail.com', '07065909292', '', 'Ut ut amet vitae lo', '34545', '1', '1703736850.jfif', '8', '7', '', '2024-01-14 13:11:40', '2024-01-14 13:11:40'),
(52, 'admin', 'admin@gmail.com', '07065909292', '', 'breans', '289787', '1', '1703735538.jfif', '4', '7', '', '2024-01-26 22:09:05', '2024-01-26 22:09:05'),
(53, 'admin', 'admin@gmail.com', '07065909292', '', 'sdfgfegn', '45453', '1', '1706427272.jpg', '21', '7', '', '2024-01-28 06:36:23', '2024-01-28 06:36:23'),
(54, 'admin', 'admin@gmail.com', '07065909292', '', 'sdfgfegn', '45453', '1', '1706427272.jpg', '21', '7', '', '2024-01-28 06:37:16', '2024-01-28 06:37:16'),
(68, 'user', 'user@gmail.com', '08162342179', 'number 1 where am coding nsukka ', 'Ut ut amet vitae lo', '34545', '1', '1703736850.jfif', '8', '6', '', '2024-02-17 01:00:16', '2024-02-17 01:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'shirt', '2023-12-17 22:17:26', '2023-12-17 22:17:26'),
(2, 'toy', '2023-12-17 22:28:08', '2023-12-17 22:28:08'),
(3, 'laptop', '2023-12-17 22:28:53', '2023-12-17 22:28:53'),
(4, 'mobile', '2023-12-17 22:32:25', '2023-12-17 22:32:25'),
(8, 'FOOD', '2024-01-07 20:57:14', '2024-01-07 20:57:14'),
(9, 'electronics', '2024-01-14 12:26:19', '2024-01-14 12:26:19');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_14_061745_create_sessions_table', 1),
(7, '2023_12_17_223317_create_categories_table', 2),
(8, '2023_12_18_211715_create_products_table', 3),
(9, '2024_01_08_001025_create_carts_table', 4),
(10, '2024_01_08_205034_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `supplier` varchar(25) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `supplier`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(38, 'user', '08162342179', 'user@gmail.com', 'number 1 where am coding nsukka ', '6', 'sdfgfegn', '1', '45453', '1706427272.jpg', '', '21', 'Paid Through Monnify', 'Delivered', '2024-02-08 04:01:19', '2024-02-08 04:08:49'),
(39, 'user', '08162342179', 'user@gmail.com', 'number 1 where am coding nsukka ', '6', 'laptop', '1', '22000', '1705832346.jpg', 'yes', '17', 'Paid Through Monnify', 'Delivered', '2024-02-08 04:01:59', '2024-02-17 01:31:05'),
(40, 'yes', '1233', 'yes@gmail.com', '123nenugu', '11', 'Id nesciunt alias s', '1', '88', '1703736939.jfif', 'yes', '11', 'Paid Through Monnify', 'processing', '2024-02-08 04:08:10', '2024-02-08 04:08:10'),
(41, 'yes', '1233', 'yes@gmail.com', '123enugu', '11', 'Id nesciunt alias s', '1', '88', '1703736939.jfif', '', '11', 'Paid Through Monnify', 'processing', '2024-02-08 04:08:10', '2024-02-08 04:08:10'),
(42, 'yes', '1233', 'yes@gmail.com', '123enugu', '11', 'Ut ut amet vitae lo', '1', '34545', '1703736850.jfif', '', '8', 'Paid Through Monnify', 'processing', '2024-02-08 05:34:02', '2024-02-08 05:34:02'),
(43, 'yes', '1233', 'yes@gmail.com', '123enugu', '11', 'Ipsa assumenda veli', '1', '64', '1703736997.jfif', '', '14', 'Paid Through Monnify', 'processing', '2024-02-08 05:34:02', '2024-02-08 05:34:02'),
(44, 'yes', '1233', 'yes@gmail.com', '123enugu', '11', 'l;dopfed', '1', '343', '1707372697.jpg', 'yes', '25', 'Paid Through Monnify', 'processing', '2024-02-08 05:34:02', '2024-02-08 05:34:02'),
(45, 'user', '08162342179', 'user@gmail.com', 'number 1 where am coding nsukka ', '6', 'breans', '1', '289787', '1703735538.jfif', '', '4', 'Paid Through Monnify', 'processing', '2024-02-17 00:45:36', '2024-02-17 00:45:36'),
(46, 'user', '08162342179', 'user@gmail.com', 'number 1 where am coding nsukka ', '6', 'l;dopfed', '1', '343', '1707372697.jpg', 'yes', '25', 'Paid Through Monnify', 'processing', '2024-02-17 00:45:37', '2024-02-17 00:45:37'),
(47, 'user', '08162342179', 'user@gmail.com', 'number 1 where am coding nsukka ', '6', 'Ratione non odit vol', '1', '454', '1703736926.jfif', '', '10', 'Paid Through Monnify', 'processing', '2024-02-17 00:50:06', '2024-02-17 00:50:06'),
(48, 'user', '08162342179', 'user@gmail.com', 'number 1 where am coding nsukka ', '6', 'Ipsa assumenda veli', '1', '64', '1703736997.jfif', '', '14', 'Paid Through Monnify', 'processing', '2024-02-17 00:50:06', '2024-02-17 00:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `image4` varchar(200) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `image1`, `image2`, `image3`, `image4`, `category`, `quantity`, `price`, `discount_price`, `supplier`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'breans', 'sweet beans with chicken', '1703735538.jfif', '', '', '', '', 'FOOD', '796565656565', '880', '289787', '', 0, '2023-12-23 21:16:30', '2024-01-07 21:25:40'),
(8, 'Ut ut amet vitae lo', 'Non voluptatem irur', '1703736850.jfif', '', '', '', '', 'shirt', '393', '544', '34545', '', 0, '2023-12-28 03:14:10', '2024-01-07 21:13:10'),
(9, 'Earum id fugiat pra', 'Veniam ut vel nemo', '1703736872.jfif', '', '', '', '', 'laptop', '377', '495', '565', '', 0, '2023-12-28 03:14:32', '2023-12-28 03:14:32'),
(10, 'Ratione non odit vol', 'Ea id quia aspernat', '1703736926.jfif', '', '', '', '', 'toy', '195', '278', '454', '', 0, '2023-12-28 03:15:26', '2023-12-28 03:15:26'),
(11, 'Id nesciunt alias s', 'Est aspernatur fugia', '1703736939.jfif', '', '', '', '', 'laptop', '109', '243', '88', '', 0, '2023-12-28 03:15:39', '2024-01-07 21:22:26'),
(12, 'Est cupiditate sapie', 'Aut ad ea neque ut e', '1703736952.jfif', '', '', '', '', 'shirt', '36', '470', '7', '', 0, '2023-12-28 03:15:52', '2023-12-28 03:15:52'),
(13, 'Sit est sit sint s', 'Quia doloremque aut', '1703736982.jfif', '', '', '', '', 'laptop', '539', '737', '4', '', 0, '2023-12-28 03:16:22', '2023-12-28 03:16:22'),
(14, 'Ipsa assumenda veli', 'Aliqua Magnam sunt', '1703736997.jfif', '', '', '', '', 'mobile', '708', '624', '64', '', 0, '2023-12-28 03:16:37', '2023-12-28 03:16:37'),
(15, 'ofe ogbono', 'with ofe ogbono with local okpeyi nsukka', '1704664756.jfif', '', '', '', '', 'FOOD', '3', '450', '400', '', 0, '2024-01-07 20:59:17', '2024-01-07 20:59:17'),
(16, 'standing fan', 'very good with nonsense noise', '1705239050.jfif', '', '', '', '', 'electronics', '1', '25000', '2500', '', 0, '2024-01-14 12:30:50', '2024-01-14 12:30:50'),
(17, 'laptop', 'a us used laptop with quality spec. 4gb ram with 500gb hdd storage. very neat.', '1705832346.jpg', '', '', '', '', 'shirt', '2', '23000', '22000', '', 0, '2024-01-21 09:17:11', '2024-01-21 09:19:06'),
(18, 'dndsn', 'dffjdljsd', '1706312454.jpg', '1706312454.jpg', '1706312454.jpg', '1706312454.jpg', '1706312454.jpg', 'laptop', '54', '35345', '454', '', 0, '2024-01-26 22:40:54', '2024-01-26 22:40:54'),
(19, 'oerjo', 'juppu', '1706312881.jpg', '1706312881.jpg', '1706312881.jpg', '1706312881.jpg', '1706312881.jpg', 'laptop', '48', '90', '950', '', 0, '2024-01-26 22:48:01', '2024-01-26 22:48:01'),
(20, 'ggr', 'trgr', '1706313084.jpg', '1706313084.jpg', '1706313084.jpg', '1706313084.jpg', '1706313084.jpg', 'laptop', '4', '534', '45', '', 0, '2024-01-26 22:51:24', '2024-01-26 22:51:24'),
(21, 'sdfgfegn', 'dfhdfhr', '1706427272.jpg', '1706427272.jpg', '1706427272.jpg', '1706427272.jpg', '1706427272.jpg', 'electronics', '5454', '354', '45453', '', 7, '2024-01-28 06:34:32', '2024-01-28 06:34:32'),
(22, 'Fugiat ea ad qui sed', 'At voluptas quos sit', '1707361723.jpg', '1707361723.jpg', '1707361723.jpg', '1707361723.jpg', '1707361723.jpg', 'laptop', '651', '749', '36', 'calytech computers', 7, '2024-02-08 02:08:43', '2024-02-08 02:08:43'),
(23, 'Quas pariatur Qui q', 'Dolore rem incididun', '1707363608.jpg', '1707363608.jpg', '1707363608.jpg', '1707363608.jpg', '1707363608.jpg', 'shirt', '751', '529', '84', 'Est adipisci aut rec', 7, '2024-02-08 02:40:08', '2024-02-08 02:40:08'),
(24, 'Est perspiciatis ad', 'Ut id eum similique', '1707372614.jpg', '1707372614.jpg', '1707372614.jpg', '1707372614.jpg', '1707372614.jpg', 'FOOD', '364', '41', '23', 'admin', 7, '2024-02-08 05:10:14', '2024-02-08 05:10:14'),
(25, 'l;dopfed', 'dfsd', '1707372697.jpg', '1707372697.jpg', '1707372697.jpg', '1707372697.jpg', '1707372697.jpg', 'laptop', '344', '234', '343', 'yes', 11, '2024-02-08 05:11:37', '2024-02-08 05:11:37'),
(26, 'tre', 'UK used laserjet p2055 hp printer. properties: duplex=yes. color printing=no direct image printing=no', '1708047271.jpg', '1708047271.jpg', '1708047271.jpg', '1708047271.jpg', '1708047271.jpg', 'shirt', '33', '33', '3333', 'yes', 11, '2024-02-16 00:34:31', '2024-02-16 03:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('b49yBPHGnQ5R0gLqdHmpjvzyncI5okV7RlAyIW4n', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicFhXODdHczlidGdXcDdnRnlEV1E4TGFwTXdvc3F4eHRHbFpFQ0dXeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWFyY2g/c2VhcmNoPTEyMzQ1NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O30=', 1708137359),
('E3Uynwwg0xyKZ0GoCMecWlgWpCnbdsJN4S6rZHGZ', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUlJzVGhkb0VZdjJIZ0tmWnMxRXJzMUdjbmx1Y25Sbmx0bDB3MVp0ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbGxfcHJvZHVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1708136995),
('p9IMkRChIZJCbFEOiG6KEWpWqBPBmTsZtDrkCNXe', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXI3R1pSb2JORVE5U2ZDTkUyZ3c3aWdjTGlmOUVWR0FyRjdQQXBiQSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL29yZGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1708284507);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(6, 'user', 'user@gmail.com', '0', '08162342179', 'number 1 where am coding nsukka ', NULL, '$2y$12$1hkhe0m8af35sOkP9QLyF.f2h4NtWbaRgaoxMlOASkKz9vOKZs.TS', NULL, NULL, NULL, 'HKlYq29k69cZpDUWUVJA1AltRLV3rWKL6I6R9mcAmnObtSqZBJMHEVeb6AJm', NULL, NULL, '2023-12-14 17:39:03', '2023-12-14 17:39:03'),
(7, 'admin', 'admin@gmail.com', '1', '07065909292', '', NULL, '$2y$12$zMZiNbxNccWzu9Y7oL5DwOmhn5xNTrNYLoYIwVocSC8imMdwNSuC6', NULL, NULL, NULL, 'cBBSQUPylUrK2YT3D2RinGijLrAR3muyarRl5HbgseXVCMpb4Uvte1K815KB', NULL, NULL, '2023-12-14 17:43:40', '2023-12-14 17:43:40'),
(8, 'testing', 'testingaddress@gmail.com', '0', '0812345678', '120 Enugu road Nsukka', NULL, '12345678', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-08 14:09:45', '2024-01-08 14:09:45'),
(9, 'olamma', 'olamma@gmail.com', '0', '08121815900', '235 agbugu lane', NULL, '$2y$12$32CPHY6lbOQAZhtHVioa/uXEMXTWAkJWePlPhN3Yyg6FA0ZCR1Gau', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-14 12:21:07', '2024-01-14 12:21:07'),
(10, 'Umeanu Ernest Onyenachi', 'zigoyenachiachiuwa2@gmail.com', '0', '08162342179', '120 Enugu road Nsukka', NULL, '$2y$12$D.bwdUdP9XjQqTwz8y.ci.GeWj1PgILT4LVbfNwTfcAgFBZFw8NcS', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-17 06:25:06', '2024-01-17 06:25:06'),
(11, 'yes', 'yes@gmail.com', '1', '1233', '123enugu', NULL, '$2y$12$VUelbppWLkHYHXqH.XX5uuzwuPUhxmlr1kV/cRUTrgXgfHj0M7fOy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-08 04:07:38', '2024-02-08 04:07:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
