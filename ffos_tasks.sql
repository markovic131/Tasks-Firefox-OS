-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2014 at 05:27 PM
-- Server version: 5.5.37-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ffos_tasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `completed`, `created_at`, `updated_at`) VALUES
(1, 'Test Task', 1, '2014-05-15 13:34:53', '2014-05-10 12:28:29'),
(11, 'New Task', 1, '2014-05-10 12:26:26', '2014-05-10 12:28:34'),
(14, 'Buy milk', 1, '2014-05-10 12:31:03', '2014-05-10 12:37:42'),
(15, 'get chocolate', 1, '2014-05-10 12:31:07', '2014-05-10 14:41:01'),
(17, 'workout', 1, '2014-05-10 12:31:55', '2014-05-10 15:11:09'),
(18, 'Testing', 1, '2014-05-10 12:32:23', '2014-05-10 12:37:40'),
(24, 'mysql', 0, '2014-05-10 14:40:54', '2014-05-10 14:40:54'),
(25, 'Buy Milk', 0, '2014-05-10 15:05:52', '2014-05-10 15:05:52'),
(26, 'Testignnn', 0, '2014-05-10 15:11:08', '2014-05-10 15:11:08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
