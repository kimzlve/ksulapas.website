-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 05:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cscs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(3, 'SNACK HOUSE', 'TUNA SANDWICH ', 1, 1, '2024-09-10 00:48:42', '2024-09-15 19:06:23'),
(4, 'SHAKE', 'VANILLA', 1, 1, '2024-09-10 00:49:07', '2024-09-15 19:05:44'),
(5, 'CAKES BROWN & COOKIES', 'SANS RIVAL', 1, 1, '2024-09-10 00:49:41', '2024-09-15 19:06:14'),
(6, 'BLENDED COFFES (FRAPPE)', 'MOCHA MINT', 0, 1, '2024-09-10 00:50:30', '2024-09-15 19:05:55'),
(7, 'SOFTDRINKS NCAN', 'ROYAL', 1, 1, '2024-09-10 00:52:13', '2024-09-15 19:06:10'),
(8, 'JUICES', 'PINEAPPLE', 0, 1, '2024-09-10 00:52:39', '2024-09-15 19:06:05'),
(9, 'COFFE', 'AMERICANO', 1, 1, '2024-09-10 00:53:04', '2024-09-15 19:06:36'),
(10, 'BEERS', 'SAN MIG APPLE', 0, 1, '2024-09-10 00:53:48', '2024-09-15 19:05:28'),
(11, 'ESPRESSO SHOTS', 'ESPRESSO NORMAL', 1, 1, '2024-09-10 00:54:43', '2024-09-15 19:06:18'),
(12, 'PASTA', 'TUNA CARBORANA PASTA', 1, 1, '2024-09-10 00:55:41', '2024-09-15 19:05:49'),
(13, 'JAPANES W/RICE & VEGETABLES ', 'BEEF TIRAYAKI', 1, 1, '2024-09-10 00:56:30', '2024-09-15 19:06:27'),
(14, 'RICE', 'GARLIC RICE', 1, 1, '2024-09-10 00:57:19', '2024-09-15 19:05:38'),
(15, 'NOODLES RICE TOPPINGS', 'GYUDON BEEF', 1, 1, '2024-09-10 00:57:53', '2024-09-15 19:06:31'),
(16, 'basic', 'hahaha', 1, 1, '2024-09-15 14:20:37', '2024-09-15 18:04:25'),
(17, 'DESSERT', 'YUMMY', 0, 1, '2024-09-15 16:00:54', '2024-09-15 19:06:00'),
(18, 'BREAKFAST MEAL W/ ', '', 1, 0, '2024-09-15 19:10:41', '2024-09-15 20:22:27'),
(19, 'BASTIE VALUE MEALS', '', 1, 0, '2024-09-15 20:00:16', '2024-09-15 20:00:16'),
(20, 'HOUSE SPECIALS', '', 1, 0, '2024-09-15 20:10:36', '2024-09-15 20:10:36'),
(21, 'RICE GRAIN', '', 1, 0, '2024-09-15 20:25:00', '2024-09-15 20:25:22'),
(22, 'RICE TOPPINGS', '', 1, 0, '2024-09-15 20:28:19', '2024-09-15 20:28:19'),
(23, 'JAPANESE W/ RICE & VEGETABLES', '', 1, 0, '2024-09-15 20:35:36', '2024-09-15 20:35:36'),
(24, 'SOUP', '', 1, 0, '2024-09-15 20:45:47', '2024-09-15 20:45:47'),
(25, 'NOODLES', '', 1, 0, '2024-09-15 20:57:05', '2024-09-15 20:57:05'),
(26, 'VEGETABLES', '', 1, 0, '2024-09-15 21:03:02', '2024-09-15 21:03:02'),
(27, 'SALAD', '', 1, 0, '2024-09-15 21:22:16', '2024-09-15 21:22:16'),
(28, 'SUSHI ROLL', '', 1, 0, '2024-09-15 21:25:17', '2024-09-15 21:25:17'),
(29, 'RAMEN NOODLES', '', 1, 0, '2024-09-15 21:28:26', '2024-09-15 21:28:26'),
(30, 'SASHIMI', '', 1, 0, '2024-09-15 21:30:51', '2024-09-15 21:30:51'),
(31, 'KOREAN FOOD', '', 1, 0, '2024-09-15 21:32:24', '2024-09-15 21:32:24'),
(32, 'CHICKEN', '', 1, 0, '2024-09-15 21:36:49', '2024-09-15 21:36:49'),
(33, 'BEEF', '', 1, 0, '2024-09-15 21:40:54', '2024-09-15 21:40:54'),
(34, 'PORK', '', 1, 0, '2024-09-15 21:53:53', '2024-09-15 21:53:53'),
(35, 'GRILLED', '', 1, 0, '2024-09-15 22:00:40', '2024-09-15 22:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float(15,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(12, 10, 'SAN MIG APPLE', ' 	\r\n\r\nSAN MIG APPLE', 200.00, 1, 1, '2024-09-10 00:59:58', '2024-09-15 19:03:23'),
(13, 10, 'MOCHA', 'MOCHA ', 200.00, 0, 1, '2024-09-10 01:00:41', '2024-09-15 18:43:38'),
(14, 11, 'Espresso normal ', 'hang ', 200.00, 1, 1, '2024-09-14 23:30:34', '2024-09-15 19:03:17'),
(15, 16, 'bacon', 'sarap', 2333333.00, 1, 1, '2024-09-15 14:21:05', '2024-09-15 18:04:38'),
(16, 17, 'CAKE', 'YUMMY', 200.00, 0, 1, '2024-09-15 16:01:17', '2024-09-15 19:03:13'),
(17, 18, 'TUNASILOG', '* Tuna Steak\r\n* Garlic Fried Rice\r\n* Egg\r\n* Pickled Vegetables\r\n* Oil\r\n*  Salt and Pepper', 230.00, 1, 0, '2024-09-15 19:25:10', '2024-09-15 19:47:50'),
(18, 18, 'TAPSILOG', '* Tapa\r\n* Garlic Fried Rice\r\n* Egg', 250.00, 1, 0, '2024-09-15 19:41:19', '2024-09-15 19:41:19'),
(19, 18, 'TOCILOG', '', 180.00, 1, 0, '2024-09-15 19:51:25', '2024-09-15 19:51:25'),
(20, 18, 'PORKSILOG', '', 180.00, 1, 0, '2024-09-15 19:51:49', '2024-09-15 19:51:49'),
(21, 18, 'CHICKENSILOG', '', 160.00, 1, 0, '2024-09-15 19:52:52', '2024-09-15 20:03:30'),
(23, 18, 'HOTSILOG', '', 180.00, 1, 0, '2024-09-15 19:53:35', '2024-09-15 19:53:35'),
(24, 18, 'CORNSILOG', '', 125.00, 1, 0, '2024-09-15 19:54:07', '2024-09-15 19:54:07'),
(25, 18, 'EGG SARCIADO', '', 110.00, 1, 0, '2024-09-15 19:54:48', '2024-09-15 19:54:48'),
(26, 18, 'CORNBEEF OMELETTE', '', 160.00, 1, 0, '2024-09-15 19:55:52', '2024-09-15 19:55:52'),
(27, 18, 'EGG CHEESE OMELETTE', '', 150.00, 1, 0, '2024-09-15 19:57:05', '2024-09-15 19:57:05'),
(28, 18, 'STIRFRY HOTDOG W/ EGG ', '', 130.00, 1, 0, '2024-09-15 19:58:21', '2024-09-15 19:58:21'),
(29, 19, 'FRIED CHICKEN W/ RICE & GRAVY SAUCE', '', 150.00, 1, 0, '2024-09-15 20:02:21', '2024-09-15 20:02:21'),
(30, 19, 'PORKCHOP W/ RICE & VEGETABLES ', '', 170.00, 1, 0, '2024-09-15 20:05:46', '2024-09-15 20:05:46'),
(31, 19, 'SHIRMP CURRY RICE', '', 210.00, 1, 0, '2024-09-15 20:06:42', '2024-09-15 20:06:42'),
(32, 19, 'SWEET & SOUR CHICKEN W/ RICE & VEGETABLE', '', 200.00, 1, 0, '2024-09-15 20:09:20', '2024-09-15 20:09:20'),
(33, 19, 'GARLIC CHICKEN W/ RICE & VEGETABLE ', '', 200.00, 1, 0, '2024-09-15 20:10:13', '2024-09-15 20:10:13'),
(34, 20, 'KALDERETANG KAMBING', '', 550.00, 1, 0, '2024-09-15 20:14:34', '2024-09-15 20:14:34'),
(35, 20, 'HOT & SPICY KAMBING', '', 550.00, 1, 0, '2024-09-15 20:15:37', '2024-09-15 20:15:37'),
(36, 20, 'KILAWIN KAMBING', '', 330.00, 1, 0, '2024-09-15 20:16:18', '2024-09-15 20:16:18'),
(37, 20, 'KALDERETANG BAKA', '', 430.00, 1, 0, '2024-09-15 20:16:56', '2024-09-15 20:16:56'),
(38, 20, 'KALDERETANG BABOY', '', 370.00, 1, 0, '2024-09-15 20:17:44', '2024-09-15 20:17:44'),
(39, 20, 'KALDERETANG MANOK', '', 330.00, 1, 0, '2024-09-15 20:18:18', '2024-09-15 20:18:18'),
(40, 20, 'PORK KARE-KARE', '', 370.00, 1, 0, '2024-09-15 20:18:53', '2024-09-15 20:18:53'),
(41, 20, 'MIX SEAFOODS KARE-KARE', '', 400.00, 1, 0, '2024-09-15 20:19:44', '2024-09-15 20:19:44'),
(42, 20, 'ORIENTAL BEEF RIBS', '', 370.00, 1, 0, '2024-09-15 20:20:23', '2024-09-15 20:20:23'),
(43, 21, 'BASTIE RICE', '', 350.00, 1, 0, '2024-09-15 20:26:09', '2024-09-15 20:26:09'),
(44, 21, 'FRIED RICE', '', 260.00, 1, 0, '2024-09-15 20:26:38', '2024-09-15 20:26:38'),
(45, 21, 'SHANGHAI RICE', '', 280.00, 1, 0, '2024-09-15 20:27:07', '2024-09-15 20:27:07'),
(46, 21, 'GARLIC RICE', '', 230.00, 1, 0, '2024-09-15 20:27:35', '2024-09-15 20:27:35'),
(47, 21, 'PLAIN PLATTER RICE', '', 190.00, 1, 0, '2024-09-15 20:28:00', '2024-09-15 20:28:00'),
(48, 22, 'KATSUDON (PORK)', '', 250.00, 1, 0, '2024-09-15 20:30:45', '2024-09-15 20:30:45'),
(49, 22, 'GYUDON (BEEF) ', '', 300.00, 1, 0, '2024-09-15 20:31:16', '2024-09-15 20:31:16'),
(50, 22, 'SUKIYAKIDON (BEE)', '', 320.00, 1, 0, '2024-09-15 20:32:19', '2024-09-15 20:32:19'),
(51, 22, 'TENDO (SHIRMP) ', '', 250.00, 1, 0, '2024-09-15 20:33:08', '2024-09-15 20:33:08'),
(52, 22, 'OYAKUDON (CHICKEN)', '', 250.00, 1, 0, '2024-09-15 20:34:08', '2024-09-15 20:34:50'),
(53, 23, 'BEEF TERIYAKI', '', 350.00, 1, 0, '2024-09-15 20:37:02', '2024-09-15 20:37:02'),
(54, 23, 'PORK TERIYAKI', '', 310.00, 1, 0, '2024-09-15 20:37:48', '2024-09-15 20:37:48'),
(55, 23, 'EBI TEMPURA', '', 400.00, 1, 0, '2024-09-15 20:38:33', '2024-09-15 20:38:33'),
(56, 23, 'CHICKEN TERIYAKI', '', 290.00, 1, 0, '2024-09-15 20:39:28', '2024-09-15 20:39:28'),
(57, 23, 'BEEF TEPPANYAKI', '', 380.00, 1, 0, '2024-09-15 20:43:56', '2024-09-15 20:43:56'),
(58, 23, 'PORK TEPPANYAKI', '', 310.00, 1, 0, '2024-09-15 20:44:27', '2024-09-15 20:44:27'),
(59, 23, 'CHICKEN TEPPANYAKI', '', 290.00, 1, 0, '2024-09-15 20:44:47', '2024-09-15 20:44:47'),
(60, 23, 'TUNA TEPPANYAKI', '', 350.00, 1, 0, '2024-09-15 20:45:06', '2024-09-15 20:45:06'),
(61, 24, 'BOUILLABISSE SOUP', '', 410.00, 1, 0, '2024-09-15 20:47:08', '2024-09-15 20:47:08'),
(62, 24, 'CRAB & CORN', '', 270.00, 1, 0, '2024-09-15 20:47:33', '2024-09-15 20:47:33'),
(63, 24, 'SHIRMP & CORN', '', 280.00, 1, 0, '2024-09-15 20:48:12', '2024-09-15 20:48:12'),
(64, 24, 'CHICKEN SOUP', '', 260.00, 1, 0, '2024-09-15 20:48:29', '2024-09-15 20:48:29'),
(65, 24, 'BEEF NOODLES SOUP', '', 370.00, 1, 0, '2024-09-15 20:48:52', '2024-09-15 20:48:52'),
(66, 24, 'NATIVE CHICKEN TINOLA', '', 310.00, 1, 0, '2024-09-15 20:49:24', '2024-09-15 20:49:24'),
(67, 24, 'BULALO (Small)', '', 400.00, 1, 0, '2024-09-15 20:50:36', '2024-09-15 20:50:36'),
(68, 24, 'BULALO (Large)', '', 550.00, 1, 0, '2024-09-15 20:51:04', '2024-09-15 20:51:04'),
(69, 24, 'PAPAITAN KAMBING', '', 290.00, 1, 0, '2024-09-15 20:51:29', '2024-09-15 20:51:29'),
(70, 24, 'NILAGANG BAKA', '', 400.00, 1, 0, '2024-09-15 20:51:56', '2024-09-15 20:51:56'),
(71, 24, 'NILAGANG BABOY', '', 370.00, 1, 0, '2024-09-15 20:52:37', '2024-09-15 20:52:37'),
(72, 24, 'SINIGANG BAKA', '', 400.00, 1, 0, '2024-09-15 20:53:01', '2024-09-15 20:53:01'),
(73, 24, 'SINIGANG BABOY', '', 370.00, 1, 0, '2024-09-15 20:53:19', '2024-09-15 20:53:19'),
(74, 24, 'SINIGANG HIPON', '', 400.00, 1, 0, '2024-09-15 20:53:36', '2024-09-15 20:53:36'),
(75, 24, 'SINIGANG LAPU-LAPU', '', 390.00, 1, 0, '2024-09-15 20:54:06', '2024-09-15 20:54:06'),
(76, 24, 'SINIGANG TANGIGUE', '', 330.00, 1, 0, '2024-09-15 20:54:57', '2024-09-15 20:54:57'),
(77, 24, 'SINIGANG TUNA', '', 330.00, 1, 0, '2024-09-15 20:55:11', '2024-09-15 20:55:11'),
(78, 24, 'TINOLANG TANGIGUE', '', 310.00, 1, 0, '2024-09-15 20:55:38', '2024-09-15 20:55:38'),
(79, 24, 'TINOLANG TUNA', '', 310.00, 1, 0, '2024-09-15 20:55:54', '2024-09-15 20:55:54'),
(80, 24, 'TINOLANG LAPU-LAPU', '', 370.00, 1, 0, '2024-09-15 20:56:15', '2024-09-15 20:56:15'),
(81, 24, 'SINANGPALUKANG KAMBING', '', 350.00, 1, 0, '2024-09-15 20:56:36', '2024-09-15 20:56:36'),
(82, 25, 'BASTIE PANCIT PALABOK', '', 400.00, 1, 0, '2024-09-15 20:57:30', '2024-09-15 20:57:30'),
(83, 25, 'CHICKEN STIR FRY NOODLES', '', 330.00, 1, 0, '2024-09-15 20:58:10', '2024-09-15 20:58:10'),
(84, 25, 'PANCIT GUISADO', '', 310.00, 1, 0, '2024-09-15 20:58:27', '2024-09-15 20:58:27'),
(85, 25, 'PANCIT CANTON ', '', 320.00, 1, 0, '2024-09-15 20:58:42', '2024-09-15 20:58:42'),
(86, 25, 'BAM-I', '', 320.00, 1, 0, '2024-09-15 20:59:20', '2024-09-15 20:59:20'),
(87, 25, 'BIHON GUISADO', '', 300.00, 1, 0, '2024-09-15 20:59:38', '2024-09-15 20:59:38'),
(88, 25, 'SOTANGHON', '', 300.00, 1, 0, '2024-09-15 21:00:01', '2024-09-15 21:00:01'),
(89, 25, 'LOMI', '', 300.00, 1, 0, '2024-09-15 21:00:28', '2024-09-15 21:00:28'),
(90, 25, 'BEEF PARES MAMI', '', 300.00, 1, 0, '2024-09-15 21:00:43', '2024-09-15 21:00:43'),
(91, 25, 'BEEF MAMI', '', 300.00, 1, 0, '2024-09-15 21:01:42', '2024-09-15 21:01:42'),
(92, 25, 'BEEF PORK MAMI', '', 300.00, 1, 0, '2024-09-15 21:02:07', '2024-09-15 21:02:07'),
(93, 25, 'CHICKEN MAMI', '', 300.00, 1, 0, '2024-09-15 21:02:31', '2024-09-15 21:02:31'),
(94, 26, 'CHOPSUEY', '', 320.00, 1, 0, '2024-09-15 21:03:38', '2024-09-15 21:03:38'),
(95, 26, 'FOUR SEASON', '', 320.00, 1, 0, '2024-09-15 21:04:29', '2024-09-15 21:04:29'),
(96, 26, 'VEGETABLE SAUTE', '', 320.00, 1, 0, '2024-09-15 21:05:32', '2024-09-15 21:05:32'),
(97, 26, 'MIX VEGETABLE WITH MEAT', '', 300.00, 1, 0, '2024-09-15 21:06:36', '2024-09-15 21:06:36'),
(98, 26, 'GARLIC CABBAGE WITH SHRIM', '', 320.00, 1, 0, '2024-09-15 21:07:27', '2024-09-15 21:07:27'),
(99, 26, 'AMPALAYA WITH BEEF', '', 300.00, 1, 0, '2024-09-15 21:08:11', '2024-09-15 21:08:11'),
(100, 26, 'BROCCOLI WITH BEEF', '', 350.00, 1, 0, '2024-09-15 21:08:42', '2024-09-15 21:08:42'),
(101, 26, 'PENAKBET', '', 280.00, 1, 0, '2024-09-15 21:09:06', '2024-09-15 21:09:06'),
(102, 26, 'FRESH LUMPIA', '', 400.00, 1, 0, '2024-09-15 21:09:22', '2024-09-15 21:09:22'),
(103, 26, 'BROCCOLI WITH SHRIMP GARLIC SOUCE', '', 300.00, 1, 0, '2024-09-15 21:09:55', '2024-09-15 21:09:55'),
(104, 27, 'CHEF SALAD', '', 400.00, 1, 0, '2024-09-15 21:22:45', '2024-09-15 21:22:45'),
(105, 27, 'GARDEN SALAD', '', 320.00, 1, 0, '2024-09-15 21:23:08', '2024-09-15 21:23:08'),
(106, 27, 'COLESLAW', '', 280.00, 1, 0, '2024-09-15 21:23:39', '2024-09-15 21:23:39'),
(107, 27, 'VEGETABLE SALAD TUNA', '', 350.00, 1, 0, '2024-09-15 21:24:07', '2024-09-15 21:24:07'),
(108, 27, 'VEGETABLE SALAD CHICKEN', '', 340.00, 1, 0, '2024-09-15 21:24:36', '2024-09-15 21:24:36'),
(109, 27, 'SPICY CUCUMBER', '', 250.00, 1, 0, '2024-09-15 21:24:57', '2024-09-15 21:24:57'),
(110, 28, 'CALIFORNIA MAKI', '', 320.00, 1, 0, '2024-09-15 21:26:02', '2024-09-15 21:26:02'),
(111, 28, 'KIMBAP ROLL', '', 350.00, 1, 0, '2024-09-15 21:26:26', '2024-09-15 21:26:26'),
(112, 28, 'SPICY TUNA ROLL', '', 270.00, 1, 0, '2024-09-15 21:26:59', '2024-09-15 21:26:59'),
(113, 28, 'MANGO SUSHI ROLL', '', 310.00, 1, 0, '2024-09-15 21:27:24', '2024-09-15 21:27:24'),
(114, 28, 'DYNAMITE ROLL', '', 300.00, 1, 0, '2024-09-15 21:27:48', '2024-09-15 21:27:48'),
(115, 28, 'TUNA SUSHI ROLL', '', 400.00, 1, 0, '2024-09-15 21:28:07', '2024-09-15 21:28:07'),
(116, 29, 'SPICY SEAFOODS RAMEN', '', 485.00, 1, 0, '2024-09-15 21:29:00', '2024-09-15 21:29:00'),
(117, 29, 'BEEF CHILLI RAMEN', '', 485.00, 1, 0, '2024-09-15 21:29:23', '2024-09-15 21:29:23'),
(118, 29, 'CHICKEN CHILLI RAMEN', '', 450.00, 1, 0, '2024-09-15 21:29:57', '2024-09-15 21:29:57'),
(119, 29, 'TONKATSU RAMEN', '', 450.00, 1, 0, '2024-09-15 21:30:27', '2024-09-15 21:30:27'),
(120, 30, 'TUNA SASHIMI', '', 450.00, 1, 0, '2024-09-15 21:31:19', '2024-09-15 21:31:19'),
(121, 30, 'TANGIGUE SASHIMI', '', 400.00, 1, 0, '2024-09-15 21:31:42', '2024-09-15 21:31:42'),
(122, 30, 'BLUE MARLIN SASHIMI', '', 450.00, 1, 0, '2024-09-15 21:32:11', '2024-09-15 21:32:11'),
(123, 31, 'KOREAN FRIED CHICKEN', '', 350.00, 1, 0, '2024-09-15 21:33:13', '2024-09-15 21:33:13'),
(124, 31, 'BEEF BULGOGI', '', 370.00, 1, 0, '2024-09-15 21:33:42', '2024-09-16 01:43:03'),
(125, 31, 'PORK BULGOGI', '', 350.00, 1, 0, '2024-09-15 21:34:07', '2024-09-15 21:34:07'),
(126, 31, 'SPICY STIR FRY PORK', '', 320.00, 1, 0, '2024-09-15 21:35:00', '2024-09-15 21:35:00'),
(127, 31, 'BIBIMBAP', '', 350.00, 1, 0, '2024-09-15 21:35:56', '2024-09-15 21:35:56'),
(128, 32, 'FRIED CHICKEN', '', 320.00, 1, 0, '2024-09-15 21:37:20', '2024-09-15 21:37:20'),
(129, 32, 'BUTTERED CHICKEN', '', 350.00, 1, 0, '2024-09-15 21:37:41', '2024-09-15 21:37:41'),
(130, 32, 'HOT AND SPICY GARLIC CHICKEN', '', 350.00, 1, 0, '2024-09-15 21:38:16', '2024-09-15 21:38:16'),
(131, 32, 'ORANGE CHICKEN', '', 350.00, 1, 0, '2024-09-15 21:38:39', '2024-09-15 21:38:39'),
(132, 32, 'SWEET AND SOUR CHICKEN', '', 350.00, 1, 0, '2024-09-15 21:39:06', '2024-09-15 21:39:06'),
(133, 32, 'CHICKEN CURRY', '', 350.00, 1, 0, '2024-09-15 21:39:24', '2024-09-15 21:39:24'),
(134, 32, 'HONEY GARLIC CHICKEN', '', 355.00, 1, 0, '2024-09-15 21:39:48', '2024-09-15 21:39:48'),
(135, 32, 'SWEET CHILLI CHICKEN', '', 350.00, 1, 0, '2024-09-15 21:40:15', '2024-09-15 21:40:15'),
(136, 32, 'BASTIE CHICKEN EXPRESS', '', 350.00, 1, 0, '2024-09-15 21:40:40', '2024-09-15 21:40:40'),
(137, 33, 'BASTIE CREAMY STEAK', '', 420.00, 1, 0, '2024-09-15 21:47:07', '2024-09-15 21:47:07'),
(138, 33, 'BEEF STEAK TAGALOG', '', 350.00, 1, 0, '2024-09-15 21:47:46', '2024-09-15 21:47:46'),
(139, 33, 'PEPPER STEAK', '', 450.00, 1, 0, '2024-09-15 21:48:09', '2024-09-15 21:48:09'),
(140, 33, 'MONGOLIAN BEEF', '', 350.00, 1, 0, '2024-09-15 21:48:36', '2024-09-15 21:48:36'),
(141, 33, 'CHILLI BEEF', '', 350.00, 1, 0, '2024-09-15 21:48:56', '2024-09-15 21:48:56'),
(142, 33, 'BEEF STIR FRY', '', 360.00, 1, 0, '2024-09-15 21:49:17', '2024-09-15 21:49:17'),
(143, 33, 'BEEF WITH MUSHROOM', '', 370.00, 1, 0, '2024-09-15 21:52:49', '2024-09-15 21:52:49'),
(144, 33, 'BEEF WITH GREENBELL PEPPER', '', 450.00, 1, 0, '2024-09-15 21:53:16', '2024-09-15 21:53:16'),
(145, 33, 'BEEEF TAPA', '', 400.00, 1, 0, '2024-09-15 21:53:35', '2024-09-15 21:53:35'),
(146, 34, 'BASTIE PATATIM', '', 650.00, 1, 0, '2024-09-15 21:54:21', '2024-09-15 21:54:21'),
(147, 34, 'PORK HAMONADO (PATA)', '', 680.00, 1, 0, '2024-09-15 21:54:53', '2024-09-15 21:54:53'),
(148, 34, 'CRISPY PATA', '', 600.00, 1, 0, '2024-09-15 21:55:22', '2024-09-15 21:55:22'),
(149, 34, 'LECHON KAWALI', '', 390.00, 1, 0, '2024-09-15 21:55:43', '2024-09-15 21:55:43'),
(150, 34, 'LUMPIA SHANGHAI', '', 350.00, 1, 0, '2024-09-15 21:56:04', '2024-09-15 21:56:04'),
(151, 34, 'SPICY FRIED SPARIBS', '', 300.00, 1, 0, '2024-09-15 21:56:35', '2024-09-15 21:56:35'),
(152, 34, 'SWEET & SOUR PORK', '', 360.00, 1, 0, '2024-09-15 21:57:10', '2024-09-15 21:57:10'),
(153, 34, 'SWEET & SOUR SPARIBS', '', 360.00, 1, 0, '2024-09-15 21:58:02', '2024-09-15 21:58:02'),
(154, 34, 'PORK STEAK', '', 300.00, 1, 0, '2024-09-15 21:58:31', '2024-09-15 21:58:31'),
(155, 34, 'SPECIAL PORK HUMBA', '', 380.00, 1, 0, '2024-09-15 21:59:03', '2024-09-15 21:59:03'),
(156, 34, 'BICOL EXPRESS', '', 350.00, 1, 0, '2024-09-15 21:59:36', '2024-09-15 21:59:36'),
(157, 34, 'RIBS ADOBO W/ PINEAPPLE', '', 380.00, 1, 0, '2024-09-15 22:00:07', '2024-09-15 22:00:07'),
(158, 34, 'PORK TAPA', '', 350.00, 1, 0, '2024-09-15 22:00:25', '2024-09-15 22:00:25'),
(159, 35, 'CHICKEN BBQ COMBO SET-A', 'CHICKEN LEGS, JAVA RICE, SOUP', 190.00, 1, 0, '2024-09-15 22:01:53', '2024-09-15 22:01:53'),
(160, 35, 'CHICKEN BBQ COMBO SET-B', 'CHICKEN WINGS, JAVA RICE, SOUP', 200.00, 1, 0, '2024-09-15 22:02:50', '2024-09-15 22:02:50'),
(161, 35, 'PORK RIBS BBQ', '', 350.00, 1, 0, '2024-09-15 22:03:49', '2024-09-15 22:03:49'),
(162, 35, 'GRILLED PORKBELLY', '', 350.00, 1, 0, '2024-09-15 22:04:16', '2024-09-15 22:04:16'),
(163, 35, 'GRILLED TUNABELLY', '', 320.00, 1, 0, '2024-09-15 22:04:38', '2024-09-15 22:04:38'),
(164, 35, 'GRILLED TUNA (UNOD)', '', 300.00, 1, 0, '2024-09-15 22:05:09', '2024-09-15 22:05:09'),
(165, 35, 'GRILLED TANGIGUE', '', 290.00, 1, 0, '2024-09-15 22:05:28', '2024-09-15 22:05:28'),
(166, 35, 'GRILLED SQUID', '', 350.00, 1, 0, '2024-09-15 22:05:47', '2024-09-15 22:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `sale_list`
--

CREATE TABLE `sale_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `client_name` text NOT NULL,
  `amount` float(15,2) NOT NULL DEFAULT 0.00,
  `tendered` float(15,2) NOT NULL DEFAULT 0.00,
  `payment_type` tinyint(1) NOT NULL COMMENT '1 = Cash,\r\n2 = Debit Card,\r\n3 = Credit Card',
  `payment_code` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_products`
--

CREATE TABLE `sale_products` (
  `sale_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` float(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Design and implementation of a web - based self ordering system utilizing qr technology for Bastie Coffeeshop & Resto.'),
(6, 'short_name', 'Bastie Coffeeshop & Resto'),
(11, 'logo', 'uploads/logo.png?v=1650590302'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1650590309');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-04-13 15:24:24'),
(5, 'kenjil', 'yabnez', 'kenjil', 'dd7e97a4a9726d6c88b1498c4a44b591', NULL, NULL, 1, '2024-09-10 00:39:04', '2024-09-10 00:39:04'),
(7, 'kim ', 'sulapas', 'kim', 'fb1eaf2bd9f2a7013602be235c305e7a', NULL, NULL, 3, '2024-09-14 23:34:18', '2024-09-14 23:34:18'),
(11, 'dhean', 'docto', 'docto', 'caf1a3dfb505ffed0d024130f58c5cfa', NULL, NULL, 2, '2024-09-15 17:58:47', '2024-09-15 17:58:47'),
(12, 'Ging2', 'rivero', 'rivero', '202cb962ac59075b964b07152d234b70', NULL, NULL, 3, '2024-09-15 17:59:21', '2024-09-15 18:00:32'),
(13, 'LATBI', 'TEN O', 'bluten', '202cb962ac59075b964b07152d234b70', NULL, NULL, 3, '2024-09-15 18:45:15', '2024-09-15 18:46:09'),
(14, 'basic', 'lang', 'sakalam', '202cb962ac59075b964b07152d234b70', NULL, NULL, 3, '2024-09-15 18:46:52', '2024-09-15 18:46:52'),
(15, 'Customer', 'Customer', 'Customer', 'caf1a3dfb505ffed0d024130f58c5cfa', NULL, NULL, 2, '2024-09-15 18:54:03', '2024-09-15 18:59:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sale_list`
--
ALTER TABLE `sale_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_products`
--
ALTER TABLE `sale_products`
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `sale_list`
--
ALTER TABLE `sale_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `category_id_fk_pl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sale_list`
--
ALTER TABLE `sale_list`
  ADD CONSTRAINT `user_id_fk_sl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `sale_products`
--
ALTER TABLE `sale_products`
  ADD CONSTRAINT `product_id_fk_sp` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sale_id_fk_sp` FOREIGN KEY (`sale_id`) REFERENCES `sale_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
