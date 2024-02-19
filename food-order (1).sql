-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 01:24 AM
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
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(4, 'umeanu ernest', 'zig', '32f20e3903fb05500489aeb4ec9008f7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(17, 'swallow', 'Food_Category_842.jfif', 'Yes', 'Yes'),
(18, 'rice', 'Food_Category_259.jfif', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_chicken_republic`
--

CREATE TABLE `tbl_category_chicken_republic` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category_chicken_republic`
--

INSERT INTO `tbl_category_chicken_republic` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(11, 'swallow n beaf', 'Food_Category_3.jfif', 'Yes', 'Yes'),
(12, ' beaf', 'Food_Category_431.jfif', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_chitis`
--

CREATE TABLE `tbl_category_chitis` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category_chitis`
--

INSERT INTO `tbl_category_chitis` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(14, '9 sweet', 'Food_Category_300.jfif', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_palma`
--

CREATE TABLE `tbl_category_palma` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category_palma`
--

INSERT INTO `tbl_category_palma` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(13, 'ptoatos', 'Food_Category_487.jfif', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `transport` int(10) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `transport`, `image_name`, `category_id`, `featured`, `active`) VALUES
(17, 'rice n beans', 'delicious', 129.00, 0, 'Food-Name-8492.jfif', 18, 'Yes', 'Yes'),
(18, 'swallow n beaf', 'sweet', 478206.00, 0, 'Food-Name-3604.jfif', 17, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_chicken_republic`
--

CREATE TABLE `tbl_food_chicken_republic` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `transport` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food_chicken_republic`
--

INSERT INTO `tbl_food_chicken_republic` (`id`, `title`, `description`, `price`, `transport`, `image_name`, `category_id`, `featured`, `active`) VALUES
(15, ' beaf', 'sweet', 191899.00, 0.00, 'Food-Name-9991.jfif', 11, 'Yes', 'Yes'),
(17, '9 sweet', 'sweet', 750634.00, 0.00, 'Food-Name-3038.jfif', 12, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_chitis`
--

CREATE TABLE `tbl_food_chitis` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `transport` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food_chitis`
--

INSERT INTO `tbl_food_chitis` (`id`, `title`, `description`, `price`, `transport`, `image_name`, `category_id`, `featured`, `active`) VALUES
(9, 'weet', 'sweet', 263242.00, 0.00, 'Food-Name-8584.jfif', 14, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_palma`
--

CREATE TABLE `tbl_food_palma` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `transport` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food_palma`
--

INSERT INTO `tbl_food_palma` (`id`, `title`, `description`, `price`, `transport`, `image_name`, `category_id`, `featured`, `active`) VALUES
(5, 'deli white rice', 'a very sweet white rice', 400.00, 500.00, 'Food-Name-4568.jfif', 13, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) NOT NULL,
  `random_number` int(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `food_id` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_status` varchar(50) NOT NULL,
  `status` varchar(33) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact` text NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_chicken_republic`
--

CREATE TABLE `tbl_order_chicken_republic` (
  `id` int(10) NOT NULL,
  `random_number` int(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `food_id` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `transport` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact` int(50) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_chicken_republic`
--

INSERT INTO `tbl_order_chicken_republic` (`id`, `random_number`, `food`, `food_id`, `price`, `qty`, `total`, `image`, `payment_status`, `transport`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(9, 797000114, ' beaf', 0, 191899.00, 78, 14968122, 'Food-Name-9991.jfif', 'Paid', 0, '2024-01-29 13:39:13', 'On Delivery', 'Whilemina May', 26, 'gotajefod@mailinator.com', 'Qui incididunt volup'),
(10, 1939992294, '9 sweet', 0, 750634.00, 633, 100000000, 'Food-Name-3038.jfif', 'Paid', 0, '2024-01-29 01:42:30', '', 'Oprah Berg', 49, 'fysanu@mailinator.com', 'Tempore omnis numqu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_chitis`
--

CREATE TABLE `tbl_order_chitis` (
  `id` int(10) NOT NULL,
  `random_number` int(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `food_id` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `transport` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact` int(50) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_chitis`
--

INSERT INTO `tbl_order_chitis` (`id`, `random_number`, `food`, `food_id`, `price`, `image`, `payment_status`, `transport`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 1696523676, 'weet', 9, 263242.00, '', '', 0, 1, 263242, '2023-12-11 00:53:01', 'ordered', '5O50f0HUSF', 416587, 'hqear@6ptf.com', 'PRkJO7LIvw'),
(2, 1525280207, 'weet', 0, 263242.00, 'Food-Name-8584.jfif', 'Paid', 0, 961, 252975562, '2024-01-29 14:02:27', 'On Delivery', 'Magee Bishop', 7, 'muha@mailinator.com', 'Ad ratione qui optio'),
(3, 2016820564, 'weet', 0, 263242.00, 'Food-Name-8584.jfif', 'Paid', 0, 999, 100000000, '2024-01-29 10:58:16', '', 'Beck Franklin', 10, 'rykadydo@mailinator.com', 'university market road ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_palma`
--

CREATE TABLE `tbl_order_palma` (
  `id` int(10) NOT NULL,
  `random_number` int(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `food_id` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `transport` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact` int(50) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_palma`
--

INSERT INTO `tbl_order_palma` (`id`, `random_number`, `food`, `food_id`, `price`, `image`, `payment_status`, `transport`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 1445117453, 'deli white rice', 5, 400.00, '', '', 0, 6, 2900, '2023-12-11 01:11:01', 'ordered', 'umean earnest onyenachi ', 2345678, 'zigonyenachiachiuwa2@gmail.com', 'anglican road agbani nru nsukka  in mrs chikeani house \r\nuderground apattment '),
(2, 1104330720, 'deli white rice', 0, 400.00, 'Food-Name-4568.jfif', 'Paid', 0, 770, 308000, '2024-01-29 14:20:23', 'Cancelled', 'Emerson Burke', 71, 'cuzatimope@mailinator.com', 'Consequatur Ab illu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pre_order`
--

CREATE TABLE `tbl_pre_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_random_number` int(50) NOT NULL,
  `food` varchar(150) NOT NULL,
  `food_id` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` text NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_pre_order`
--

INSERT INTO `tbl_pre_order` (`id`, `order_random_number`, `food`, `food_id`, `price`, `image`, `qty`, `transport`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(187, 1353055877, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 824, 0, 106296.00, '2024-01-29 04:30:54', 'ordered', 'Lee Briggs', '2147483647', 'vipilytu@mailinator.com', 'Accusamus aut ut mai'),
(188, 498295911, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:34:18', 'ordered', 'Janna Hahn', '67', 'walacev@mailinator.com', 'Error ex maiores est'),
(189, 868892598, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:34:41', 'ordered', 'Janna Hahn', '67111111', 'walacev@mailinator.com', 'Error ex maiores est'),
(190, 1368385442, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:34:59', 'ordered', 'Janna Hahn', '081', 'walacev@mailinator.com', 'Error ex maiores est'),
(191, 1050059433, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:35:19', 'ordered', 'Janna Hahn', '08162342179', 'walacev@mailinator.com', 'Error ex maiores est'),
(192, 894525194, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:35:40', 'ordered', 'Janna Hahn', '08162342', 'walacev@mailinator.com', 'Error ex maiores est'),
(193, 2126424552, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:36:11', 'ordered', 'Janna Hahn', '08123232323', 'walacev@mailinator.com', 'Error ex maiores est'),
(194, 2082117719, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:38:05', 'ordered', 'Janna Hahn', '08123232323', 'walacev@mailinator.com', 'Error ex maiores est'),
(195, 1041648574, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 459, 0, 59211.00, '2024-01-29 04:38:23', 'ordered', 'Janna Hahn', '081232', 'walacev@mailinator.com', 'Error ex maiores est'),
(196, 818855988, 'swallow n beaf', '18', 478206.00, 'Food-Name-3604.jfif', 461, 0, 99999999.99, '2024-01-29 04:40:28', 'ordered', 'Cade Larsen', 'Perferendis itaque e', 'mosyxize@mailinator.com', 'Mollitia reprehender'),
(197, 1456087634, 'swallow n beaf', '18', 478206.00, 'Food-Name-3604.jfif', 293, 0, 99999999.99, '2024-01-29 04:41:11', 'ordered', 'Hedda Stevens', '+1 (415) 669-3818', 'gynymohop@mailinator.com', 'Deleniti dolore eos'),
(198, 1627432780, 'swallow n beaf', '18', 478206.00, 'Food-Name-3604.jfif', 293, 0, 99999999.99, '2024-01-29 04:42:39', 'ordered', 'Hedda Stevens', '+1 (415) 669-3818', 'gynymohop@mailinator.com', 'Deleniti dolore eos'),
(199, 1787508169, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 738, 0, 95202.00, '2024-01-29 04:43:11', 'ordered', 'Cruz Bowman', '+1 (345) 806-2739', 'deruqyha@mailinator.com', 'Eaque accusantium qu'),
(200, 1193935996, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 603, 0, 77787.00, '2024-01-29 04:44:07', 'ordered', 'Georgia Horne', '+1 (294) 744-4355', 'podezuv@mailinator.com', 'Assumenda eaque nemo'),
(201, 647129917, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 603, 0, 77787.00, '2024-01-29 04:44:36', 'ordered', 'Georgia Horne', '4355', 'podezuv@mailinator.com', 'Assumenda eaque nemo'),
(202, 1501970379, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 603, 0, 77787.00, '2024-01-29 04:44:51', 'ordered', 'Georgia Horne', '55', 'podezuv@mailinator.com', 'Assumenda eaque nemo'),
(203, 1408390085, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 611, 0, 78819.00, '2024-01-29 04:45:08', 'ordered', 'Piper Caldwell', '5', 'wakydasic@mailinator.com', 'Ut at et cupidatat a'),
(204, 188009790, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 92, 0, 11868.00, '2024-01-29 04:46:51', 'ordered', 'Leo Obrien', '+1 (187) 525-5978', 'tovydoxihi@mailinator.com', 'Tempore irure et vo'),
(205, 1122900791, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 92, 0, 11868.00, '2024-01-29 04:51:22', 'ordered', 'Leo Obrien', '+1 (187) 525-5978', 'tovydoxihi@mailinator.com', 'Tempore irure et vo'),
(206, 447724315, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 92, 0, 11868.00, '2024-01-29 04:52:33', 'ordered', 'Leo Obrien', '+1 (187) 525-5978', 'tovydoxihi@mailinator.com', 'Tempore irure et vo'),
(207, 307043762, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 92, 0, 11868.00, '2024-01-29 04:54:56', 'ordered', 'Leo Obrien', '+1 (187) 525-5978', 'tovydoxihi@mailinator.com', 'Tempore irure et vo'),
(208, 348309232, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 92, 0, 11868.00, '2024-01-29 04:55:19', 'ordered', 'Leo Obrien', '+1 (187) 525-5978', 'tovydoxihi@mailinator.com', 'Tempore irure et vo'),
(209, 604180894, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 979, 0, 126291.00, '2024-01-29 04:56:11', 'ordered', 'Lucy English', '08162342179', 'qoby@mailinator.com', 'Quisquam quasi rerum'),
(210, 1614746471, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 62, 0, 7998.00, '2024-01-29 05:57:04', 'ordered', 'Hilary Mccarthy', '+1 (808) 587-2272', 'byte@mailinator.com', 'Modi laudantium eum'),
(211, 5812823, 'rice n beans', '17', 129.00, 'Food-Name-8492.jfif', 62, 0, 7998.00, '2024-01-29 05:57:27', 'ordered', 'Hilary Mccarthy', '08162342179', 'byte@mailinator.com', 'Modi laudantium eum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pre_order_chicken_republic`
--

CREATE TABLE `tbl_pre_order_chicken_republic` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_random_number` int(50) NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `food_id` int(11) NOT NULL,
  `image` varchar(25) NOT NULL,
  `transport` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_pre_order_chicken_republic`
--

INSERT INTO `tbl_pre_order_chicken_republic` (`id`, `order_random_number`, `food`, `price`, `food_id`, `image`, `transport`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 1130901279, ' beaf', 191899.00, 0, '', 0, 1, 191899.00, '2023-12-11 01:01:33', 'ordered', 'uoyTBRZwZK', '883342', 'ygido@ncfc.com', '5xsN0fdrFi'),
(2, 565647288, ' beaf', 191899.00, 0, '', 0, 1, 191899.00, '2023-12-11 01:25:45', 'ordered', '1XJYePlR5r', '706557', 'zmp7z@58ig.com', 'cb3YujMvRI'),
(3, 732092107, ' beaf', 191899.00, 0, '', 0, 1, 191899.00, '2023-12-11 01:27:57', 'ordered', '1XJYePlR5r', '706557', 'zmp7z@58ig.com', 'cb3YujMvRI'),
(4, 1855880586, '9 sweet', 750634.00, 0, '', 0, 1, 750634.00, '2023-12-11 01:33:44', 'ordered', '8YhTfgdx3J', '684969', '23fbl@43xl.com', 'F6x1j17Gtg'),
(5, 660572119, '9 sweet', 750634.00, 0, '', 0, 1, 750634.00, '2023-12-11 01:34:53', 'ordered', 'tlt2FNIjSp', '589278', 'rwfk7@cywn.com', 'LT2Px3aMWN'),
(6, 1881305995, '9 sweet', 750634.00, 0, '', 0, 1, 750634.00, '2023-12-11 01:41:00', 'ordered', 'eV0UGNK45M', '679856', 'xdf4h@3qf5.com', 'vORymUZ1gU'),
(7, 1262115747, '9 sweet', 750634.00, 0, '', 0, 1, 750634.00, '2023-12-11 02:24:18', 'ordered', 'UZ2x6Fao3b', '804908', 'krjg6@6yn0.com', 'T7BeshhiUg'),
(8, 548889214, ' beaf', 191899.00, 0, '', 0, 840, 99999999.99, '2024-01-29 10:42:17', 'ordered', 'Henry Jensen', '77', 'zajego@mailinator.com', 'Adipisci duis deseru'),
(9, 541495639, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 558, 99999999.99, '2024-01-29 10:50:53', 'ordered', 'Sophia Pickett', '14', 'qevoga@mailinator.com', 'Ea vero itaque esse'),
(10, 1254986284, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 983, 99999999.99, '2024-01-29 10:53:55', 'ordered', 'Garrison Hinton', '4', 'suhavac@mailinator.com', 'Perspiciatis labore'),
(11, 731244828, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 983, 99999999.99, '2024-01-29 10:57:01', 'ordered', 'Garrison Hinton', '4', 'suhavac@mailinator.com', 'Perspiciatis labore'),
(12, 1894228600, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 126, 24179274.00, '2024-01-29 11:00:25', 'ordered', 'Nichole Long', '51', 'lydisomyfo@mailinator.com', 'Modi adipisicing rer'),
(13, 796086451, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 126, 24179274.00, '2024-01-29 11:04:10', 'ordered', 'Nichole Long', '51', 'lydisomyfo@mailinator.com', 'Modi adipisicing rer'),
(14, 1864788632, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 126, 24179274.00, '2024-01-29 11:05:11', 'ordered', 'Nichole Long', '51', 'lydisomyfo@mailinator.com', 'Modi adipisicing rer'),
(15, 215916423, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 126, 24179274.00, '2024-01-29 11:06:12', 'ordered', 'Nichole Long', '51', 'lydisomyfo@mailinator.com', 'Modi adipisicing rer'),
(16, 345263871, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 801, 99999999.99, '2024-01-29 11:24:03', 'ordered', 'Pascale Davidson', '2', 'vulatade@mailinator.com', 'Et in non consectetu'),
(17, 978118785, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 801, 99999999.99, '2024-01-29 11:24:59', 'ordered', 'Pascale Davidson', '2', 'vulatade@mailinator.com', 'Et in non consectetu'),
(18, 2063371485, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 801, 99999999.99, '2024-01-29 11:30:33', 'ordered', 'Pascale Davidson', '2', 'vulatade@mailinator.com', 'Et in non consectetu'),
(19, 797000114, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 78, 14968122.00, '2024-01-29 12:07:27', 'ordered', 'Whilemina May', '26', 'gotajefod@mailinator.com', 'Qui incididunt volup'),
(20, 170429675, '9 sweet', 750634.00, 17, 'Food-Name-3038.jfif', 0, 639, 99999999.99, '2024-01-29 01:55:59', 'ordered', 'Cheryl Wade', '72', 'jugiwyvywi@mailinator.com', 'Est voluptates et a'),
(21, 1939992294, '9 sweet', 750634.00, 17, 'Food-Name-3038.jfif', 0, 633, 99999999.99, '2024-01-29 02:42:30', 'ordered', 'Oprah Berg', '49', 'fysanu@mailinator.com', 'Tempore omnis numqu'),
(22, 1998920239, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 88, 16887112.00, '2024-01-29 03:43:14', 'ordered', 'Clare Guthrie', '80', 'howygeso@mailinator.com', 'Saepe sunt ex tempo'),
(23, 1787606738, '9 sweet', 750634.00, 17, 'Food-Name-3038.jfif', 0, 182, 99999999.99, '2024-01-29 03:43:34', 'ordered', 'Kai Juarez', '38', 'hezadadon@mailinator.com', 'Sint ipsam consequat'),
(24, 1234296681, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 774, 99999999.99, '2024-01-29 05:58:13', 'ordered', 'Carol Fitzpatrick', '08162342179', 'haraloja@mailinator.com', 'Voluptatem adipisci '),
(25, 428368335, ' beaf', 191899.00, 15, 'Food-Name-9991.jfif', 0, 774, 99999999.99, '2024-01-29 05:58:32', 'ordered', 'Carol Fitzpatrick', '79', 'haraloja@mailinator.com', 'Voluptatem adipisci ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pre_order_chitis`
--

CREATE TABLE `tbl_pre_order_chitis` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_random_number` int(50) NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `transport` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_pre_order_chitis`
--

INSERT INTO `tbl_pre_order_chitis` (`id`, `order_random_number`, `food`, `price`, `qty`, `food_id`, `image`, `transport`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 1696523676, 'weet', 263242.00, 1, 0, '', 0, 263242.00, '2023-12-11 01:52:54', 'ordered', '5O50f0HUSF', '416587', 'hqear@6ptf.com', 'PRkJO7LIvw'),
(2, 497197238, 'weet', 263242.00, 449, 0, '', 0, 99999999.99, '2023-12-11 03:41:34', 'ordered', 'Kendall Hahn', '68', 'nawawagyki@mailinator.com', 'Numquam repudiandae '),
(3, 807613816, 'weet', 263242.00, 320, 0, '', 0, 84237440.00, '2024-01-29 10:52:25', 'ordered', 'Keefe Hull', '25', 'levary@mailinator.com', 'Irure doloribus solu'),
(4, 1525280207, 'weet', 263242.00, 961, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 11:47:11', 'ordered', 'Magee Bishop', '7', 'muha@mailinator.com', 'Ad ratione qui optio'),
(5, 1945957665, 'weet', 263242.00, 999, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 11:53:29', 'ordered', 'Beck Franklin', '10', 'rykadydo@mailinator.com', 'Ad quod iusto ea ut '),
(6, 1313321870, 'weet', 263242.00, 999, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 11:56:07', 'ordered', 'Beck Franklin', '10', 'rykadydo@mailinator.com', 'Ad quod iusto ea ut '),
(7, 339282780, 'weet', 263242.00, 999, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 11:56:12', 'ordered', 'Beck Franklin', '10', 'rykadydo@mailinator.com', 'Ad quod iusto ea ut '),
(8, 203511996, 'weet', 263242.00, 999, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 11:57:06', 'ordered', 'Beck Franklin', '10', 'rykadydo@mailinator.com', 'university market road '),
(9, 2016820564, 'weet', 263242.00, 999, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 11:58:16', 'ordered', 'Beck Franklin', '10', 'rykadydo@mailinator.com', 'university market road '),
(10, 2003171696, 'weet', 263242.00, 186, 9, 'Food-Name-8584.jfif', 0, 48963012.00, '2024-01-29 03:45:43', 'ordered', 'Mercedes Russell', '14', 'botoxy@mailinator.com', 'Beatae in perferendi'),
(11, 921442708, 'weet', 263242.00, 1, 9, 'Food-Name-8584.jfif', 0, 263242.00, '2024-01-29 03:47:19', 'ordered', 'Umeanu Ernest Onyenachi', '09162342179', 'zigonyenachiachiuwa@gmail.com', '120 Enugu road Nsukka\r\nEnugu road'),
(12, 1369874584, 'weet', 263242.00, 974, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 03:47:45', 'ordered', 'Beck Mcgowan', '56', 'mecysevary@mailinator.com', 'Corporis accusamus c'),
(13, 1660021347, 'weet', 263242.00, 974, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 03:48:12', 'ordered', 'Beck Mcgowan', '08162342179', 'mecysevary@mailinator.com', 'Corporis accusamus c'),
(14, 993922328, 'weet', 263242.00, 974, 9, 'Food-Name-8584.jfif', 0, 99999999.99, '2024-01-29 03:48:32', 'ordered', 'Beck Mcgowan', '08162', 'mecysevary@mailinator.com', 'Corporis accusamus c');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pre_order_palma`
--

CREATE TABLE `tbl_pre_order_palma` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_random_number` int(50) NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `transport` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_pre_order_palma`
--

INSERT INTO `tbl_pre_order_palma` (`id`, `order_random_number`, `food`, `price`, `qty`, `food_id`, `image`, `transport`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 1393838256, 'deli white rice', 400.00, 6, 0, '', 0, 2900.00, '2023-12-11 02:07:15', 'ordered', 'umean earnest onyenachi ', '2345678', 'zigonyenachiachiuwa2@gmail.com', 'anglican road agbani nru nsukka '),
(2, 1445117453, 'deli white rice', 400.00, 6, 0, '', 0, 2900.00, '2023-12-11 02:08:49', 'ordered', 'umean earnest onyenachi ', '2345678', 'zigonyenachiachiuwa2@gmail.com', 'anglican road agbani nru nsukka  in mrs chikeani house \r\nuderground apattment '),
(3, 631563138, 'deli white rice', 400.00, 1, 0, '', 0, 900.00, '2023-12-11 02:33:09', 'ordered', 'd4rUNotP40', '130860', 'ltpfy@lhbw.com', 'uMYgx232I0'),
(4, 466037181, 'deli white rice', 400.00, 405, 5, 'Food-Name-4568.jfif', 0, 162500.00, '2024-01-29 11:19:54', 'ordered', 'Benedict Shelton', '8', 'vovaryvosa@mailinator.com', 'Consectetur quasi im'),
(5, 829372753, 'deli white rice', 400.00, 268, 5, 'Food-Name-4568.jfif', 0, 107700.00, '2024-01-29 11:22:39', 'ordered', 'Benedict Baxter', '60', 'kozaci@mailinator.com', 'Sequi et in consequa'),
(6, 925004341, 'deli white rice', 400.00, 268, 5, 'Food-Name-4568.jfif', 0, 107700.00, '2024-01-29 11:23:11', 'ordered', 'Benedict Baxter', '60', 'kozaci@mailinator.com', 'Sequi et in consequa'),
(7, 1945442636, 'deli white rice', 400.00, 268, 5, 'Food-Name-4568.jfif', 0, 107700.00, '2024-01-29 11:23:22', 'ordered', 'Benedict Baxter', '60', 'kozaci@mailinator.com', 'Sequi et in consequa'),
(8, 1104330720, 'deli white rice', 400.00, 770, 5, 'Food-Name-4568.jfif', 0, 308500.00, '2024-01-29 11:33:03', 'ordered', 'Emerson Burke', '71', 'cuzatimope@mailinator.com', 'Consequatur Ab illu'),
(9, 1468749255, 'deli white rice', 400.00, 1, 5, 'Food-Name-4568.jfif', 0, 900.00, '2024-01-29 03:45:05', 'ordered', 'Umeanu Ernest Onyenachi', '08162342179', 'zigonyenachiachiuwa@gmail.com', '120 Enugu road Nsukka\r\nEnugu road');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waybill_order`
--

CREATE TABLE `tbl_waybill_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_contact` int(11) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` text NOT NULL,
  `driver_number` int(11) NOT NULL,
  `driver_motor_number` varchar(50) NOT NULL,
  `waybill_description` text NOT NULL,
  `from_where` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_waybill_order`
--

INSERT INTO `tbl_waybill_order` (`id`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`, `driver_number`, `driver_motor_number`, `waybill_description`, `from_where`) VALUES
(3, '2024-01-26 10:46:54', 'ordered', 'Lysandra Rhodes', 59, 'rehahicok@mailinator.com', 'Harum eveniet adipi', 235, '+1 (849) 575-9434', 'Commodi ut consequat', 'Ut dicta maiores eiu'),
(4, '2024-01-26 10:47:46', 'ordered', 'Lysandra Rhodes', 59, 'rehahicok@mailinator.com', 'Harum eveniet adipi', 235, '+1 (849) 575-9434', 'Commodi ut consequat', 'Ut dicta maiores eiu'),
(5, '2024-01-26 10:47:52', 'ordered', 'Lysandra Rhodes', 59, 'rehahicok@mailinator.com', 'Harum eveniet adipi', 235, '+1 (849) 575-9434', 'Commodi ut consequat', 'Ut dicta maiores eiu'),
(6, '2024-01-29 06:16:02', 'ordered', 'Andrew Curry', 22, 'nipi@mailinator.com', 'Dolor aliquam sed as', 2147483647, '+1 (375) 198-2447', 'Ipsa facilis saepe ', 'Qui provident id d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category_chicken_republic`
--
ALTER TABLE `tbl_category_chicken_republic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category_chitis`
--
ALTER TABLE `tbl_category_chitis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category_palma`
--
ALTER TABLE `tbl_category_palma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_chicken_republic`
--
ALTER TABLE `tbl_food_chicken_republic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_chitis`
--
ALTER TABLE `tbl_food_chitis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_palma`
--
ALTER TABLE `tbl_food_palma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_chicken_republic`
--
ALTER TABLE `tbl_order_chicken_republic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_chitis`
--
ALTER TABLE `tbl_order_chitis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_palma`
--
ALTER TABLE `tbl_order_palma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pre_order`
--
ALTER TABLE `tbl_pre_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pre_order_chicken_republic`
--
ALTER TABLE `tbl_pre_order_chicken_republic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pre_order_chitis`
--
ALTER TABLE `tbl_pre_order_chitis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pre_order_palma`
--
ALTER TABLE `tbl_pre_order_palma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_waybill_order`
--
ALTER TABLE `tbl_waybill_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_category_chicken_republic`
--
ALTER TABLE `tbl_category_chicken_republic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_category_chitis`
--
ALTER TABLE `tbl_category_chitis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category_palma`
--
ALTER TABLE `tbl_category_palma`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_food_chicken_republic`
--
ALTER TABLE `tbl_food_chicken_republic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_food_chitis`
--
ALTER TABLE `tbl_food_chitis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_food_palma`
--
ALTER TABLE `tbl_food_palma`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tbl_order_chicken_republic`
--
ALTER TABLE `tbl_order_chicken_republic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order_chitis`
--
ALTER TABLE `tbl_order_chitis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order_palma`
--
ALTER TABLE `tbl_order_palma`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pre_order`
--
ALTER TABLE `tbl_pre_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `tbl_pre_order_chicken_republic`
--
ALTER TABLE `tbl_pre_order_chicken_republic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_pre_order_chitis`
--
ALTER TABLE `tbl_pre_order_chitis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pre_order_palma`
--
ALTER TABLE `tbl_pre_order_palma`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_waybill_order`
--
ALTER TABLE `tbl_waybill_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
