-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2026 at 03:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meritsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int UNSIGNED NOT NULL,
  `transaction` char(36) NOT NULL,
  `type` varchar(7) NOT NULL,
  `primary_key` int UNSIGNED DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `parent_source` varchar(255) DEFAULT NULL,
  `original` mediumtext,
  `changed` mediumtext,
  `meta` mediumtext,
  `status` int NOT NULL DEFAULT '1',
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(1, 'ec6c75c0-187d-410c-b5d1-6e6c77fab2d8', 'update', 6, 'campuses', NULL, '{\"street_1\":\"-\"}', '{\"street_1\":\"--\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Campuses\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/campuses\\/edit\\/6\",\"slug\":1}', 1, NULL, '2026-01-12 15:52:31'),
(2, '7a6c897e-efc2-4542-b0f1-78a35395f6f4', 'update', 1, 'programs', NULL, '{\"description\":\"Program ini bertujuan meraikan MT lama, menyambut MT baharu, serta mengeratkan hubungan sesama ahli melalui aktiviti menarik, antaranya: \\r\\n\\ud83c\\udfaf Grab the Bottle,\\r\\n\\ud83c\\udfaf Good Chemistry,\\r\\n\\ud83c\\udfaf Don\\u2019t Drop the Ball, dan\\r\\n\\ud83c\\udf81 Pelbagai hadiah menarik! \"}', '{\"description\":\"Program ini bertujuan meraikan Majlis T lama, menyambut MT baharu, serta mengeratkan hubungan sesama ahli melalui aktiviti menarik, antaranya: \\r\\n\\ud83c\\udfaf Grab the Bottle,\\r\\n\\ud83c\\udfaf Good Chemistry,\\r\\n\\ud83c\\udfaf Don\\u2019t Drop the Ball, dan\\r\\n\\ud83c\\udf81 Pelbagai hadiah menarik! \"}', '{\"a_name\":\"Edit\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/programs\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-01-12 16:38:29'),
(3, 'adec3313-3961-4057-838a-974c1e149c06', 'update', 6, 'campuses', NULL, '{\"street_1\":\"--\",\"street_2\":\"-\"}', '{\"street_1\":\"UiTM KK\",\"street_2\":\"Kota Kinabalu\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Campuses\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/campuses\\/edit\\/6\",\"slug\":1}', 1, NULL, '2026-01-12 16:38:57'),
(4, '0084e88b-e01d-4892-b09f-2fe3e5f9d9e9', 'update', 1, 'programs', NULL, '{\"description\":\"Program ini bertujuan meraikan Majlis T lama, menyambut MT baharu, serta mengeratkan hubungan sesama ahli melalui aktiviti menarik, antaranya: \\r\\n\\ud83c\\udfaf Grab the Bottle,\\r\\n\\ud83c\\udfaf Good Chemistry,\\r\\n\\ud83c\\udfaf Don\\u2019t Drop the Ball, dan\\r\\n\\ud83c\\udf81 Pelbagai hadiah menarik! \"}', '{\"description\":\"Program ini bertujuan meraikan Majlis Tertinggi lama, menyambut MT baharu, serta mengeratkan hubungan sesama ahli melalui aktiviti menarik, antaranya: \\r\\n\\ud83c\\udfaf Grab the Bottle,\\r\\n\\ud83c\\udfaf Good Chemistry,\\r\\n\\ud83c\\udfaf Don\\u2019t Drop the Ball, dan\\r\\n\\ud83c\\udf81 Pelbagai hadiah menarik! \"}', '{\"a_name\":\"Edit\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/programs\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-01-12 16:42:31'),
(5, '33cedb3a-06c5-4a26-a94c-cefb24df95d0', 'create', 7, 'campuses', NULL, '[]', '{\"id\":7,\"name\":\"UiTM Kampus Samarahan\",\"code\":\"Q\",\"branch\":\"Sarawak\",\"street_1\":\"Jalan Meranek\",\"street_2\":\"Kota Samarahan\",\"postcode\":94300,\"city\":\"Kuching\",\"state\":\"Sarawak\"}', '{\"a_name\":\"Add\",\"c_name\":\"Campuses\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/campuses\\/add\",\"slug\":1}', 1, NULL, '2026-01-12 17:01:01'),
(6, 'd74080f8-e636-4fa3-9e8a-7eb631dfd276', 'delete', 7, 'campuses', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Campuses\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/campuses\\/delete\\/7\",\"slug\":1}', 1, NULL, '2026-01-12 17:01:07'),
(7, '53564cd2-a0ec-4fc2-8fb8-698fb41b73ed', 'create', 2, 'programs', NULL, '[]', '{\"id\":2,\"campus_id\":1,\"student_association_name\":\"Association Information System Management (AiMS) \",\"society_logo\":\"1768200138_AIMS.png\",\"program_name\":\"AiMS Bidding Farewell\",\"start_date\":\"2026-01-09\",\"end_date\":\"2026-01-09\",\"start_time\":\"17:01:19\",\"end_time\":\"19:01:23\",\"venue\":\"Dewan Serbaguna, Kolej Jasmine\",\"mode\":\"Physical\",\"description\":\"as\",\"url\":\"https:\\/\\/forms.gle\\/34zai7PmjX4f1aXX9\",\"closing_date\":\"2026-01-05\",\"strategic_partner\":\"N\\/A\",\"poster\":\"1768200138_PosterAIMS.jpeg\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/programs\\/add\",\"slug\":1}', 1, NULL, '2026-01-12 17:01:29'),
(8, '574e2adf-9277-4ce5-ae82-1247a942e932', 'delete', 1, 'programs', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/programs\\/delete\\/1\",\"slug\":1}', 1, NULL, '2026-01-12 17:08:00'),
(9, 'c5f53066-207c-4f12-820e-5368c1b482af', 'delete', 2, 'programs', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/programs\\/delete\\/2\",\"slug\":1}', 1, NULL, '2026-01-12 17:08:05'),
(10, '7be120f8-ee6a-4e01-b2e2-5ca3a17b1aa6', 'update', 1, 'campuses', NULL, '{\"branch\":\"Sarawak\"}', '{\"branch\":\"Saraw\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Campuses\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/campuses\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-01-12 17:16:16'),
(11, '828a5001-9469-4c42-acf8-91d2cf080aaf', 'create', 1, 'merits', NULL, '[]', '{\"id\":1,\"campus_id\":3,\"student_name\":\"Muhammad Naim bin Sazali\",\"organizer\":\"Association Information System Management (AiMS)\",\"start_date\":\"2026-01-09\",\"end_date\":\"2026-01-09\",\"start_time\":\"17:00:08\",\"end_time\":\"20:00:11\",\"venue\":\"Dewan Serbaguna, Kolej Jasmine\",\"mode\":\"Physical\",\"url\":\"https:\\/\\/forms.gle\\/34zai7PmjX4f1aXX9\",\"description\":\"as\",\"emerit_points\":1,\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Merits\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/meritsys\\/merits\\/add\",\"slug\":1}', 1, NULL, '2026-01-12 17:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `campuses`
--

CREATE TABLE `campuses` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(5) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `street_1` varchar(250) NOT NULL,
  `street_2` varchar(250) NOT NULL,
  `postcode` int NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`id`, `name`, `code`, `branch`, `street_1`, `street_2`, `postcode`, `city`, `state`, `status`, `created`, `modified`) VALUES
(1, 'UiTM Kampus Samarahan', 'Q', 'Saraw', 'Jalan Meranek', 'Kota Samarahan', 94300, 'Kuching', 'Sarawak', 1, '2026-01-12 05:22:52', '2026-01-12 17:16:16'),
(3, 'UiTM Kampus Puncak Perdana', 'B9', 'Selangor', 'Jalan Pulau Indah AU 10/A', 'Seksyen U10', 40150, 'Shah Alam', 'Selangor', 1, '2026-01-12 05:26:35', '2026-01-12 05:26:35'),
(5, 'UiTM Kampus Arau', 'R', 'Perlis', 'UiTM Arau', '-', 2600, 'Arau', 'Perlis', 1, '2026-01-12 05:30:04', '2026-01-12 05:30:04'),
(6, 'UiTM Kampus Kota Kinabalu', 'S', 'Sabah', 'UiTM KK', 'Kota Kinabalu', 88997, 'Kota Kinabalu', 'Sabah', 1, '2026-01-12 06:26:10', '2026-01-12 16:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ticket` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `note_admin` text,
  `ip` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `is_replied` tinyint(1) NOT NULL,
  `respond_date_time` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category`, `question`, `answer`, `slug`, `status`, `created`, `modified`) VALUES
(1, 'General', 'General Questions 1', 'General Answer 1', 'General-Questions-1', 1, '2022-11-13 15:41:26', '2022-11-13 16:31:14'),
(2, 'Account', 'Account Questions 1', 'Account Answer 1', 'Account-Questions-1', 1, '2022-11-13 15:43:15', '2022-11-13 15:43:15'),
(3, 'Other', 'Other Questions 1', 'Other Answer 1', 'Other-Questions-1', 1, '2022-11-13 15:43:34', '2022-11-13 15:43:34'),
(6, 'General', 'General Questions 2', 'General Answer 2', 'General-Questions-2', 0, '2022-11-13 16:54:25', '2024-06-25 13:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rght` int DEFAULT NULL,
  `level` int DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `auth` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `divider_before` tinyint(1) DEFAULT '0',
  `parent_separator` tinyint(1) DEFAULT NULL,
  `division` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `lft`, `rght`, `level`, `icon`, `controller`, `action`, `target`, `name`, `url`, `prefix`, `auth`, `admin`, `active`, `disabled`, `divider_before`, `parent_separator`, `division`) VALUES
(1, NULL, 1, 2, 0, '<i class=\"fa-solid fa-code\"></i>', 'Dashboards', 'Index', NULL, 'Dashboard', '', '', 1, 0, 1, 0, 0, 0, 0),
(2, NULL, 3, 4, 0, '<i class=\"fa-regular fa-circle-question\"></i>', 'Faqs', '', NULL, 'FAQs', '', '', 0, 0, 1, 0, 0, NULL, 0),
(3, NULL, 5, 6, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Add', NULL, 'Contact Us', '', '', 0, 0, 1, NULL, 0, NULL, 0),
(4, NULL, 7, 14, 0, '<i class=\"fa-solid fa-circle-info\"></i>', 'Pages', 'manual', NULL, 'Documentation', '', '', 0, 0, 1, 0, 0, 1, 0),
(5, NULL, 15, 16, 0, '', '', '', NULL, 'Administrator', '', NULL, 0, 1, 1, NULL, 0, NULL, 1),
(6, NULL, 17, 18, 0, '<i class=\"fa-solid fa-gear\"></i>', 'Settings', 'Update', 'recrud', 'System Configuration', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(7, NULL, 19, 20, 0, '<i class=\"fa-solid fa-users-viewfinder\"></i>', 'Users', 'Index', NULL, 'User Management', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(8, NULL, 21, 22, 0, '<i class=\"fa-solid fa-bars\"></i>', 'Menus', 'Index', NULL, 'Menu Management', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(9, NULL, 23, 24, 0, '<i class=\"menu-icon fa-solid fa-list-check\"></i>', 'Todos', 'Index', NULL, 'Todo List', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(10, NULL, 25, 26, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Index', NULL, 'Contact', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(11, NULL, 27, 28, 0, '<i class=\"menu-icon fa-solid fa-timeline\"></i>', 'AuditLogs', 'Index', NULL, 'Audit Trail', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(12, NULL, 29, 30, 0, '<i class=\"menu-icon fa-regular fa-circle-question\"></i>', 'Faqs', 'Index', NULL, 'FAQs', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(13, 4, 10, 11, 1, '<i class=\"fa-solid fa-code\"></i>', '', '', NULL, 'Code The Pixel', 'https://codethepixel.com/', '', 0, 0, 1, NULL, 0, 0, 0),
(14, 4, 8, 9, 1, '<i class=\"fa-regular fa-file-code\"></i>', 'Pages', 'manual', NULL, 'User Manual', '', '', 0, 0, 1, NULL, 0, 0, 0),
(15, 4, 12, 13, 1, '<i class=\"fa-brands fa-github\"></i>', '', '', NULL, 'Re-CRUD Github', 'https://github.com/Asyraf-wa/recrud', '', 0, 0, 1, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `merits`
--

CREATE TABLE `merits` (
  `id` int NOT NULL,
  `campus_id` int NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `program_name` varchar(250) NOT NULL,
  `organizer` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `venue` varchar(250) NOT NULL,
  `mode` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `poster` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `emerit_points` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `merits`
--

INSERT INTO `merits` (`id`, `campus_id`, `student_name`, `program_name`, `organizer`, `start_date`, `end_date`, `start_time`, `end_time`, `venue`, `mode`, `url`, `poster`, `description`, `emerit_points`, `status`, `created`, `modified`) VALUES
(1, 3, 'Muhammad Naim bin Sazali', '', 'Association Information System Management (AiMS)', '2026-01-09', '2026-01-09', '17:00:08', '20:00:11', 'Dewan Serbaguna, Kolej Jasmine', 'Physical', 'https://forms.gle/34zai7PmjX4f1aXX9', '', 'as', 1, 1, '2026-01-12 17:25:14', '2026-01-12 17:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20241029053753, 'Initial', '2026-01-12 07:35:01', '2026-01-12 07:35:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int NOT NULL,
  `campus_id` int NOT NULL,
  `student_association_name` varchar(250) NOT NULL,
  `society_logo` varchar(250) NOT NULL,
  `program_name` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `venue` varchar(250) NOT NULL,
  `mode` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `closing_date` date NOT NULL,
  `strategic_partner` varchar(250) NOT NULL,
  `poster` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` char(36) NOT NULL,
  `system_name` varchar(255) NOT NULL,
  `system_abbr` varchar(255) NOT NULL,
  `system_slogan` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notification_email` varchar(50) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_subject` varchar(255) NOT NULL,
  `meta_copyright` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `site_status` tinyint(1) NOT NULL,
  `user_reg` tinyint(1) NOT NULL,
  `config_2` tinyint(1) NOT NULL,
  `config_3` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `private_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `public_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `banned_username` text,
  `telegram_bot_token` varchar(255) DEFAULT NULL,
  `telegram_chatid` varchar(255) DEFAULT NULL,
  `hcaptcha_sitekey` varchar(255) DEFAULT NULL,
  `hcaptcha_secretkey` varchar(255) DEFAULT NULL,
  `notification` text NOT NULL,
  `notification_status` tinyint(1) NOT NULL,
  `notification_date` date DEFAULT NULL,
  `ribbon_title` varchar(20) NOT NULL,
  `ribbon_link` varchar(255) NOT NULL,
  `ribbon_status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_name`, `system_abbr`, `system_slogan`, `organization_name`, `domain_name`, `email`, `notification_email`, `meta_title`, `meta_keyword`, `meta_subject`, `meta_copyright`, `meta_desc`, `timezone`, `author`, `site_status`, `user_reg`, `config_2`, `config_3`, `version`, `private_key_from_recaptcha`, `public_key_from_recaptcha`, `banned_username`, `telegram_bot_token`, `telegram_chatid`, `hcaptcha_sitekey`, `hcaptcha_secretkey`, `notification`, `notification_status`, `notification_date`, `ribbon_title`, `ribbon_link`, `ribbon_status`, `created`, `modified`) VALUES
('recrud', 'Code The Pixel', 'Re-CRUD', 'Code The Experiences', 'Code The Pixel Inc.', 'codethepixel.com', 'noreply@codethepixel.com', 'noreply@codethepixel.com', 'Re-CRUD', 'Re-CRUD, CakePHP, Learning, CRUD', 'Re-CRUD', 'Re-CRUD', 'Re-CRUD', 'Asia/Kuala_Lumpur', 'Re-CRUD', 0, 0, 0, 0, '1.1', '', '', NULL, '', '', '', '', '<p><strong>Server maintenance</strong> is scheduled to be executed on Jan 1, 2023, from 1.00 am to 4.00 am. An intermittent connection is expected during the server maintenance period.</p>', 0, '2022-11-07', 'Code The Pixel', 'https://codethepixel.com', 0, '2020-04-08 20:56:04', '2024-07-08 20:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `urgency` varchar(255) NOT NULL COMMENT 'high, medium, low',
  `task` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `note` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending' COMMENT 'Pending, In Progress, Completed, Canceled',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `urgency`, `task`, `description`, `note`, `status`, `created`, `modified`) VALUES
('a02daac9-27e3-49ea-8090-927e60f9e255', '1', 'High', 'task 4 desc', '<p>task 4 desc</p>', '<p>task 4 desc</p>', 'In Progress', '2024-05-31 13:48:26', '2024-05-31 13:48:31'),
('a8618f9e-a3f7-4e7a-8a3f-05a5323cd5af', '1', 'High', 'task 1', '<p>task 1 desc</p>', '<p>task 1 desc</p>', 'Completed', '2024-05-31 13:45:22', '2024-05-31 13:45:40'),
('c892f026-c6f8-4353-82c2-75f49c0f5d6b', '1', 'Medium', 'Task 3 - Develop the To Do Task and render in Dashboard', '<p>task 3 desc</p>', '<p>task 3 desc</p>', 'Pending', '2024-05-31 13:48:06', '2024-05-31 13:48:06'),
('eda46e51-555a-4309-a28b-d0835bf4f4b2', '1', 'Low', 'task 2', '<p>task 2 desc</p>', '<p>task 2 desc</p>', 'Canceled', '2024-05-31 13:46:12', '2024-05-31 13:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_group_id` int DEFAULT '3',
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_dir` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_created_at` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '	is_active',
  `is_email_verified` int NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` int DEFAULT NULL COMMENT 'user_id',
  `modified_by` int DEFAULT NULL COMMENT 'user_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `fullname`, `password`, `email`, `avatar`, `avatar_dir`, `token`, `token_created_at`, `status`, `is_email_verified`, `last_login`, `ip_address`, `slug`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'Administrator', '$2y$10$OrUKHzNQUic6dFqSuG9QBeDzMbbwPz1BQXKgBKPcQyMTNdv3Z22xe', 'admin@localhost.com', '', '', NULL, '2024-07-10 20:30:04', '1', 1, '2026-01-12 15:38:49', '::1', 'Administrator', '2022-10-26 02:54:19', '2024-07-08 21:08:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Admin', 'Admninistrator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(2, 'Mod', 'Moderator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(3, 'User', 'Normal User', '2021-01-23 13:21:29', '2021-01-23 13:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `useragent` varchar(256) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `action`, `useragent`, `os`, `ip`, `host`, `referrer`, `status`, `created`, `modified`) VALUES
(1, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'build 26200 (Windows 11)', '::1', 'LAPTOP-EH40OT0L', NULL, 1, '2026-01-12 15:38:49', '2026-01-12 15:38:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `type` (`type`),
  ADD KEY `primary_key` (`primary_key`),
  ADD KEY `source` (`source`),
  ADD KEY `parent_source` (`parent_source`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `campuses`
--
ALTER TABLE `campuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lft` (`lft`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `merits`
--
ALTER TABLE `merits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `campuses`
--
ALTER TABLE `campuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `merits`
--
ALTER TABLE `merits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
