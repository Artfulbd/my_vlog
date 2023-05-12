-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 02:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'dG6PPH7iIy0D0WIV4kCSBr1iTqhmpRgg', 1, '2023-05-02 21:04:33', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(2, 2, 'Jdha2xzGPSkDcxLeziQpv8fubgm42pT2', 1, '2023-05-02 21:04:33', '2023-05-02 21:04:33', '2023-05-02 21:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`) VALUES
(1, 'Panel Ads', '2028-05-03 00:00:00', 'panel-ads', 'IBXS4A3AS3XZ', 'banners/1.jpg', 'https://botble.com', 0, 1, 'published', '2023-05-02 21:04:34', '2023-05-02 21:04:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ads_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` text DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `reference_user` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 0, 1, 'Super Admin', 'info', '2023-05-08 23:58:31', '2023-05-08 23:58:31'),
(2, 1, 'user', '{\"first_name\":\"Ariful\",\"last_name\":\"Haque\",\"email\":\"admin@artful.com\",\"bio\":null,\"submit\":\"submit\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Ariful Haque', 'primary', '2023-05-09 00:13:05', '2023-05-09 00:13:05'),
(3, 1, 'user', '{\"submit\":\"submit\"}', 'updated profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Ariful Haque', 'info', '2023-05-09 00:13:30', '2023-05-09 00:13:30'),
(4, 1, 'user', '{\"submit\":\"submit\"}', 'changed password', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Ariful Haque', 'danger', '2023-05-09 00:13:30', '2023-05-09 00:13:30'),
(5, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[about-banner title=\\\"Hello, I\\u2019m &lt;span&gt;Ariful Haque&lt;\\/span&gt;\\\" subtitle=\\\"Welcome to my blog\\\" text_muted=\\\"Travel Blogger., Content Writer., Food Guides\\\" newsletter_title=\\\"Don\'t miss out the updates on cyber security world\\\" image=\\\"general\\/pro-n.jpg\\\" show_newsletter_form=\\\"no\\\"][\\/about-banner]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-posts title=\\\"Featured posts\\\"][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-categories-posts category_id=\\\"2\\\"][\\/blog-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[categories-with-posts category_id_1=\\\"3\\\" category_id_2=\\\"4\\\" category_id_3=\\\"5\\\"][\\/categories-with-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories title=\\\"Categories\\\"][\\/featured-categories]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-09 00:21:44', '2023-05-09 00:21:44'),
(6, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[about-banner title=\\\"Hello, I\\u2019m &lt;span&gt;Ariful Haque&lt;\\/span&gt;\\\" subtitle=\\\"Welcome to my blog\\\" text_muted=\\\"Travel Blogger., Content Writer., Food Guides\\\" image=\\\"general\\/pro-n.jpg\\\" show_newsletter_form=\\\"no\\\"][\\/about-banner]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-posts title=\\\"Featured posts\\\"][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-categories-posts category_id=\\\"2\\\"][\\/blog-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[categories-with-posts category_id_1=\\\"3\\\" category_id_2=\\\"4\\\" category_id_3=\\\"5\\\"][\\/categories-with-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories title=\\\"Categories\\\"][\\/featured-categories]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-09 00:22:24', '2023-05-09 00:22:24'),
(7, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Some ddlkfgj sdfg sdkjfg sdfg dfgdfg\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[about-banner title=\\\"Hello, I\\u2019m &lt;span&gt;Ariful Haque&lt;\\/span&gt;\\\" subtitle=\\\"Welcome to my blog\\\" text_muted=\\\"Travel Blogger., Content Writer., Food Guides\\\" image=\\\"general\\/pro-n.jpg\\\" show_newsletter_form=\\\"no\\\"][\\/about-banner]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-posts title=\\\"Featured posts\\\"][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-categories-posts category_id=\\\"2\\\"][\\/blog-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[categories-with-posts category_id_1=\\\"3\\\" category_id_2=\\\"4\\\" category_id_3=\\\"5\\\"][\\/categories-with-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories title=\\\"Categories\\\"][\\/featured-categories]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-09 00:22:57', '2023-05-09 00:22:57'),
(8, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[about-banner title=\\\"Hello, I\\u2019m &lt;span&gt;Ariful Haque&lt;\\/span&gt;\\\" subtitle=\\\"Welcome to my blog\\\" text_muted=\\\"Travel Blogger., Content Writer., Food Guides\\\" image=\\\"general\\/pro-n.jpg\\\" show_newsletter_form=\\\"no\\\"][\\/about-banner]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-posts title=\\\"Featured posts\\\"][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-categories-posts category_id=\\\"2\\\"][\\/blog-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[categories-with-posts category_id_1=\\\"3\\\" category_id_2=\\\"4\\\" category_id_3=\\\"5\\\"][\\/categories-with-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories title=\\\"Categories\\\"][\\/featured-categories]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-09 00:23:16', '2023-05-09 00:23:16'),
(9, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 0, 1, 'Ariful Haque', 'info', '2023-05-09 00:27:58', '2023-05-09 00:27:58'),
(10, 1, 'menu', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Main menu', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(11, 1, 'menu_location', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 4, 'ID: 4', 'info', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(12, 1, 'menu_location', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 5, 'ID: 5', 'info', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(13, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(14, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 2, 'Home default', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(15, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 3, 'Home 2', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(16, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 4, 'Home 3', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(17, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 5, 'Travel', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(18, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 6, 'Destination', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(19, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 7, 'Hotels', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(20, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 8, 'Lifestyle', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(21, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 9, 'Blog', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(22, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 10, 'Galleries', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(23, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 11, 'Blog layouts', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(24, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 12, 'Grid layout', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(25, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 13, 'List layout', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(26, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 14, 'Big layout', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(27, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"header-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 15, 'Contact', 'primary', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(28, 1, 'menu', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Main menu', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(29, 1, 'menu_location', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2023-05-09 00:32:58', '2023-05-09 00:32:58');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(30, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(31, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 2, 'Home default', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(32, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 3, 'Home 2', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(33, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 4, 'Home 3', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(34, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 5, 'Travel', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(35, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 6, 'Destination', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(36, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 7, 'Hotels', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(37, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 8, 'Lifestyle', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(38, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 9, 'Blog', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(39, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 10, 'Galleries', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(40, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 11, 'Blog layouts', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(41, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 12, 'Grid layout', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(42, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 13, 'List layout', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(43, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 14, 'Big layout', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(44, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":5,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/travel\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Travel\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":6,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/destination\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Destination\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":7,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":6,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/hotels\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Hotels\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":7,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":8,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 1, 15, 'Contact', 'primary', '2023-05-09 00:32:58', '2023-05-09 00:32:58'),
(45, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '::1', 0, 1, 'Ariful Haque', 'info', '2023-05-11 02:19:35', '2023-05-11 02:19:35'),
(46, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 0, 1, 'Ariful Haque', 'info', '2023-05-11 23:09:38', '2023-05-11 23:09:38'),
(47, 1, 'page', '{\"name\":\"Projects\",\"slug\":\"projects\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"some of my projects\",\"content\":\"<p>Some text<\\/p><shortcode class=\\\"bb-shortcode\\\">[blog-big limit=\\\"200\\\"][\\/blog-big]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 10, 'Projects', 'info', '2023-05-11 23:13:48', '2023-05-11 23:13:48'),
(48, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 0, 1, 'Ariful Haque', 'info', '2023-05-11 23:16:34', '2023-05-11 23:16:34'),
(49, 1, 'category', '{\"name\":\"Projects\",\"slug\":\"travel\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Autem est qui qui quaerat. Illum culpa veritatis perferendis quis officiis. Beatae pariatur sint corporis dolor adipisci sequi.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/2.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Projects', 'primary', '2023-05-11 23:19:58', '2023-05-11 23:19:58'),
(50, 1, 'category', '{\"name\":\"Projects\",\"slug\":\"projects-1\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Some of my projects\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/2.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Projects', 'primary', '2023-05-11 23:21:16', '2023-05-11 23:21:16'),
(51, 1, 'menu_node', '{\"ref_from\":\"1\",\"ref_lang\":\"en_US\",\"data\":{\"reference_type\":\"Botble\\\\Page\\\\Models\\\\Page\",\"reference_id\":\"10\",\"title\":\"Projects\",\"menu_id\":\"1\",\"position\":\"16\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 42, 'Projects', 'info', '2023-05-11 23:24:00', '2023-05-11 23:24:00'),
(52, 1, 'menu', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Main menu', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(53, 1, 'menu_location', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 6, 'ID: 6', 'info', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(54, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(55, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Home default', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(56, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 3, 'Home 2', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(57, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 4, 'Home 3', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(58, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 42, 'Projects', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(59, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 8, 'Lifestyle', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(60, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'Blog', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(61, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 10, 'Galleries', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(62, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 11, 'Blog layouts', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(63, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 12, 'Grid layout', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(64, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 13, 'List layout', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(65, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 14, 'Big layout', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(66, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"5 6 7\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":10,\\\"title\\\":\\\"Projects\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":1,\\\"url\\\":\\\"\\/projects\\\",\\\"id\\\":42,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":8,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"url\\\":\\\"\\/lifestyle\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Lifestyle\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":10,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/galleries\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Galleries\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":11,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Blog layouts\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":12,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":9,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-grid-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Grid layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":13,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":7,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-list-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"List layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":14,\\\"menu_id\\\":1,\\\"parent_id\\\":11,\\\"reference_id\\\":8,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog-big-layout\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Big layout\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":6,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/blog\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 15, 'Contact', 'primary', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(67, 1, 'menu', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Main menu', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(68, 1, 'menu_location', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 7, 'ID: 7', 'info', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(69, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(70, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Home default', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(71, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 3, 'Home 2', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(72, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 4, 'Home 3', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(73, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 42, 'Projects', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(74, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'Blog', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(75, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":\"8 10 11 14 12 13\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":3,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":2,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-2\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Home 2\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":4,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":3,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/home-3\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Home 3\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 15, 'Contact', 'primary', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(76, 1, 'page', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Home 2', 'danger', '2023-05-11 23:27:47', '2023-05-11 23:27:47'),
(77, 1, 'page', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 3, 'Home 3', 'danger', '2023-05-11 23:28:13', '2023-05-11 23:28:13'),
(78, 1, 'page', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'Blog Grid layout', 'danger', '2023-05-11 23:28:32', '2023-05-11 23:28:32'),
(79, 1, 'page', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 8, 'Blog Big layout', 'danger', '2023-05-11 23:28:36', '2023-05-11 23:28:36'),
(80, 1, 'page', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 7, 'Blog List layout', 'danger', '2023-05-11 23:28:40', '2023-05-11 23:28:40'),
(81, 1, 'contact', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 10, 'Prof. Jasmin Flatley DDS', 'danger', '2023-05-11 23:29:18', '2023-05-11 23:29:18'),
(82, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'Rossie Hauck', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(83, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 8, 'Lou Heidenreich', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(84, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 7, 'Titus Farrell', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(85, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 6, 'Noemie Hudson', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(86, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 5, 'Alvis Auer DDS', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(87, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 4, 'Ms. Jammie Turcotte II', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(88, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 3, 'Jacynthe Lesch', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(89, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Jennyfer Torp', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(90, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Jacquelyn Leannon', 'danger', '2023-05-11 23:29:24', '2023-05-11 23:29:24'),
(91, 1, 'page', '{\"name\":\"Me\",\"slug\":\"me\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"About me\",\"content\":\"<p>About me<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"full-width\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 11, 'Me', 'info', '2023-05-11 23:31:14', '2023-05-11 23:31:14'),
(92, 1, 'menu_node', '{\"ref_from\":\"1\",\"ref_lang\":\"en_US\",\"data\":{\"reference_type\":\"Botble\\\\Page\\\\Models\\\\Page\",\"reference_id\":\"11\",\"title\":\"Me\",\"menu_id\":\"1\",\"position\":\"6\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 43, 'Me', 'info', '2023-05-11 23:31:31', '2023-05-11 23:31:31'),
(93, 1, 'menu', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Main menu', 'primary', '2023-05-11 23:31:44', '2023-05-11 23:31:44'),
(94, 1, 'menu_location', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 8, 'ID: 8', 'info', '2023-05-11 23:31:44', '2023-05-11 23:31:44');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(95, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Home', 'primary', '2023-05-11 23:31:44', '2023-05-11 23:31:44'),
(96, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Home default', 'primary', '2023-05-11 23:31:44', '2023-05-11 23:31:44'),
(97, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 42, 'Projects', 'primary', '2023-05-11 23:31:44', '2023-05-11 23:31:44'),
(98, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'Blog', 'primary', '2023-05-11 23:31:44', '2023-05-11 23:31:44'),
(99, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 43, 'Me', 'primary', '2023-05-11 23:31:44', '2023-05-11 23:31:44'),
(100, 1, 'menu_node', '{\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"elegant-icon icon_house_alt mr-5\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":1,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home default\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[]}}]},{\\\"menuItem\\\":{\\\"id\\\":42,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":10,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/projects\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Projects\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":9,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":4,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/blog\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Blog\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"reference_id\\\":11,\\\"title\\\":\\\"Me\\\",\\\"menu_id\\\":\\\"1\\\",\\\"position\\\":3,\\\"url\\\":\\\"\\/me\\\",\\\"id\\\":43,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":5,\\\"reference_type\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"url\\\":\\\"\\/contact\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Contact\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"icon_image\\\":\\\"\\\",\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"Contact\",\"url\":\"\\/\",\"icon_font\":null,\"icon_image\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 15, 'Contact', 'primary', '2023-05-11 23:31:44', '2023-05-11 23:31:44'),
(101, 1, 'page', '{\"name\":\"Me\",\"slug\":\"me\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"About me\",\"content\":\"<p>About me<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":null,\"status\":\"published\",\"template\":\"right-sidebar\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 11, 'Me', 'primary', '2023-05-11 23:32:12', '2023-05-11 23:32:12'),
(102, 1, 'page', '{\"name\":\"Me\",\"slug\":\"me\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"About me\",\"content\":\"<p>About me<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 11, 'Me', 'primary', '2023-05-11 23:32:27', '2023-05-11 23:32:27'),
(103, 1, 'tag', '{\"name\":\"Malware\",\"slug\":\"modern\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 5, 'Malware', 'primary', '2023-05-11 23:33:39', '2023-05-11 23:33:39'),
(104, 1, 'tag', '{\"name\":\"Evaluation\",\"slug\":\"branding\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 4, 'Evaluation', 'primary', '2023-05-11 23:33:59', '2023-05-11 23:33:59'),
(105, 1, 'tag', '{\"name\":\"how to\",\"slug\":\"fashion\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 3, 'how to', 'primary', '2023-05-11 23:34:34', '2023-05-11 23:34:34'),
(106, 1, 'tag', '{\"name\":\"Security\",\"slug\":\"design\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Security', 'primary', '2023-05-11 23:34:51', '2023-05-11 23:34:51'),
(107, 1, 'tag', '{\"name\":\"Cryptology\",\"slug\":null,\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 6, 'Cryptology', 'info', '2023-05-11 23:35:14', '2023-05-11 23:35:14'),
(108, 1, 'post', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 16, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'danger', '2023-05-11 23:35:54', '2023-05-11 23:35:54'),
(109, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 7, 'Imagine Losing 20 Pounds In 14 Days!', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(110, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 8, 'Are You Still Using That Slow, Old Typewriter?', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(111, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'A Skin Cream That’s Proven To Work', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(112, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 10, '10 Reasons To Start Your Own, Profitable Website!', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(113, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 11, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(114, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 12, 'Apple iMac with Retina 5K display review', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(115, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 13, '10,000 Web Site Visitors In One Month:Guaranteed', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(116, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 14, 'Unlock The Secrets Of Selling High Ticket Items', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(117, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 15, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(118, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'The Top 2020 Handbag Trends to Know', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(119, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, 'Top Search Engine Optimization Strategies!', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(120, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 3, 'Which Company Would You Choose?', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(121, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 4, 'Used Car Dealer Sales Tricks Exposed', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(122, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 5, '20 Ways To Sell Your Product Faster', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(123, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 6, 'The Secrets Of Rich And Famous Writers', 'danger', '2023-05-11 23:36:49', '2023-05-11 23:36:49'),
(124, 1, 'category', '{\"name\":\"Operation System\",\"slug\":\"hotels\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Eius ipsam et architecto quia. Assumenda id vero eos reiciendis consequatur ad. Minus laboriosam aut tenetur modi. Consequatur ducimus quia dolorem modi placeat et unde.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/4.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 6, 'Operation System', 'primary', '2023-05-11 23:37:48', '2023-05-11 23:37:48'),
(125, 1, 'category', '{\"name\":\"Cloud\",\"slug\":\"healthy\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Et odit corporis explicabo. Ratione eaque unde maxime accusamus voluptatem nesciunt ducimus. Assumenda pariatur eius est consequatur quisquam consequatur et quia.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/5.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 8, 'Cloud', 'primary', '2023-05-11 23:38:09', '2023-05-11 23:38:09'),
(126, 1, 'category', '{\"name\":\"Virus\",\"slug\":\"lifestyle\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Illo qui rem incidunt officia velit inventore blanditiis et. Delectus rerum dolor cumque. Excepturi ullam assumenda quis ut quam consequatur. Dicta dolore qui sit modi sint quis enim ea.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/6.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'Virus', 'primary', '2023-05-11 23:38:28', '2023-05-11 23:38:28'),
(127, 1, 'category', '{\"name\":\"Virus\",\"slug\":\"destination\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Error inventore non nesciunt porro delectus. Asperiores id accusamus praesentium dolorum ut voluptas sed. Asperiores et occaecati corporis vel facilis rerum aperiam.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/3.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 4, 'Virus', 'primary', '2023-05-11 23:38:47', '2023-05-11 23:38:47'),
(128, 1, 'category', '{\"name\":\"Worm\",\"slug\":\"food\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"4\",\"description\":\"Harum alias velit beatae quos debitis dolorem rerum. Sapiente repellat sed tempora eum. Quasi quibusdam qui atque molestiae molestias in. Non quasi repellat ratione vitae expedita quibusdam quod.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/3.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 5, 'Worm', 'primary', '2023-05-11 23:39:09', '2023-05-11 23:39:09'),
(129, 1, 'category', '{\"name\":\"Adversary\",\"slug\":\"lifestyle\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Illo qui rem incidunt officia velit inventore blanditiis et. Delectus rerum dolor cumque. Excepturi ullam assumenda quis ut quam consequatur. Dicta dolore qui sit modi sint quis enim ea.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"language\":null,\"image\":\"categories\\/6.jpg\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 9, 'Adversary', 'primary', '2023-05-11 23:39:42', '2023-05-11 23:39:42'),
(130, 1, 'language', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 2, '', 'danger', '2023-05-11 23:41:46', '2023-05-11 23:41:46'),
(131, 1, 'language', '{\"lang_id\":\"3\",\"lang_name\":\"Arabic\",\"lang_locale\":\"ar\",\"lang_code\":\"ar\",\"lang_flag\":\"sa\",\"lang_order\":\"2\",\"lang_is_rtl\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 3, '', 'primary', '2023-05-11 23:42:23', '2023-05-11 23:42:23'),
(132, 1, 'language', '{\"lang_id\":\"1\",\"lang_name\":\"English\",\"lang_locale\":\"en\",\"lang_code\":\"en_US\",\"lang_flag\":\"ca\",\"lang_order\":\"0\",\"lang_is_rtl\":\"0\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, '', 'primary', '2023-05-11 23:43:08', '2023-05-11 23:43:08'),
(133, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 1, 1, 'Ariful Haque', 'info', '2023-05-11 23:46:30', '2023-05-11 23:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 0, 'Est earum labore dolores amet quae doloribus. Deserunt laudantium enim et eum. Possimus maxime quos sapiente quo accusantium sit. Sapiente molestiae omnis accusamus sequi doloremque laudantium eos.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(2, 'Projects', 0, 'Some of my projects', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:04:33', '2023-05-11 23:21:16'),
(3, 'Guides', 2, 'Corporis repellat quos non ad illum. Ipsum sit consequuntur eligendi ratione ex. Nihil reiciendis dolorum in dolorem. Odit assumenda nihil harum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(4, 'Virus', 0, 'Error inventore non nesciunt porro delectus. Asperiores id accusamus praesentium dolorum ut voluptas sed. Asperiores et occaecati corporis vel facilis rerum aperiam.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:04:33', '2023-05-11 23:38:47'),
(5, 'Worm', 4, 'Harum alias velit beatae quos debitis dolorem rerum. Sapiente repellat sed tempora eum. Quasi quibusdam qui atque molestiae molestias in. Non quasi repellat ratione vitae expedita quibusdam quod.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-05-02 21:04:33', '2023-05-11 23:39:09'),
(6, 'Operation System', 0, 'Eius ipsam et architecto quia. Assumenda id vero eos reiciendis consequatur ad. Minus laboriosam aut tenetur modi. Consequatur ducimus quia dolorem modi placeat et unde.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:04:33', '2023-05-11 23:37:48'),
(7, 'Review', 6, 'Accusantium saepe cumque rerum sequi ipsum repellat qui placeat. Neque quibusdam ea quod molestiae. Corporis repellendus velit quis qui rem.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(8, 'Cloud', 0, 'Et odit corporis explicabo. Ratione eaque unde maxime accusamus voluptatem nesciunt ducimus. Assumenda pariatur eius est consequatur quisquam consequatur et quia.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:04:33', '2023-05-11 23:38:09'),
(9, 'Adversary', 0, 'Illo qui rem incidunt officia velit inventore blanditiis et. Delectus rerum dolor cumque. Excepturi ullam assumenda quis ut quam consequatur. Dicta dolore qui sit modi sint quis enim ea.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:04:33', '2023-05-11 23:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(2, 'widget_total_users', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(3, 'widget_total_pages', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(4, 'widget_total_plugins', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(5, 'widget_analytics_general', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(6, 'widget_analytics_page', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(7, 'widget_analytics_browser', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(8, 'widget_analytics_referrer', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(9, 'widget_posts_recent', '2023-05-08 06:43:32', '2023-05-08 06:43:32'),
(10, 'widget_audit_logs', '2023-05-08 06:43:32', '2023-05-08 06:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Distinctio voluptatem dicta nisi beatae ratione omnis. Totam corporis maiores aut dolores molestiae rerum et et. Error rerum sit corrupti atque.', 1, 0, 'galleries/1.jpg', 1, 'published', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(2, 'New Day', 'Et aut beatae sed. Consequuntur ratione et perspiciatis libero. Et unde ut reprehenderit ipsa consequatur.', 1, 0, 'galleries/2.jpg', 1, 'published', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(3, 'Happy Day', 'Rerum tempore consequatur nihil aliquid consequuntur et. Iste ad sunt non. Non qui numquam illo.', 1, 0, 'galleries/3.jpg', 1, 'published', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(4, 'Nature', 'Maiores minima unde et qui. Earum nisi reiciendis cupiditate porro ipsam sit hic. Itaque suscipit atque numquam optio aut.', 1, 0, 'galleries/4.jpg', 1, 'published', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(5, 'Morning', 'Vitae ullam porro nemo non. Rerum nesciunt ad quia ducimus modi et. Magni consequatur sapiente debitis autem sint.', 1, 0, 'galleries/5.jpg', 1, 'published', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(6, 'Photography', 'Nihil eaque a minus doloribus necessitatibus quisquam eum sint. Perspiciatis aut dolor laborum ex sint sed. Animi debitis cum voluptatem est alias.', 1, 0, 'galleries/6.jpg', 1, 'published', '2023-05-02 21:04:34', '2023-05-02 21:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) NOT NULL,
  `galleries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Dolorem eum provident repellendus est repellendus sed molestiae quia. Aut ipsa quisquam aliquid hic voluptas laboriosam et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est nihil consequuntur qui quod ut minus. Sit voluptas praesentium ipsa voluptatibus sunt nihil aut. Voluptatem odit aspernatur dicta cum blanditiis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem voluptatum non molestiae nemo qui. Aliquam impedit quibusdam rem inventore similique reprehenderit. A porro cum tempora.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quia corrupti officiis vel sequi ad ut. Suscipit est est rerum dolore in. Minima nobis harum corporis et perspiciatis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Iusto omnis illo ipsum animi ut. Neque sit velit magnam earum. Reprehenderit ut sit libero aspernatur quia.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et animi est reiciendis eveniet quia. Velit quo et neque quia praesentium hic voluptatum. Nulla velit architecto molestiae consequatur totam laborum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Veniam occaecati ab vel in unde cum recusandae praesentium. In natus hic sit voluptatum.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sunt eos nemo ullam ea. Aut doloribus aspernatur perferendis saepe.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Itaque iure aliquam at nostrum asperiores sed odit voluptatibus. Eos quia animi optio enim explicabo id. Consequuntur ipsa qui est ut sunt id aut.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Dolorem eum provident repellendus est repellendus sed molestiae quia. Aut ipsa quisquam aliquid hic voluptas laboriosam et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est nihil consequuntur qui quod ut minus. Sit voluptas praesentium ipsa voluptatibus sunt nihil aut. Voluptatem odit aspernatur dicta cum blanditiis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem voluptatum non molestiae nemo qui. Aliquam impedit quibusdam rem inventore similique reprehenderit. A porro cum tempora.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quia corrupti officiis vel sequi ad ut. Suscipit est est rerum dolore in. Minima nobis harum corporis et perspiciatis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Iusto omnis illo ipsum animi ut. Neque sit velit magnam earum. Reprehenderit ut sit libero aspernatur quia.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et animi est reiciendis eveniet quia. Velit quo et neque quia praesentium hic voluptatum. Nulla velit architecto molestiae consequatur totam laborum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Veniam occaecati ab vel in unde cum recusandae praesentium. In natus hic sit voluptatum.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sunt eos nemo ullam ea. Aut doloribus aspernatur perferendis saepe.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Itaque iure aliquam at nostrum asperiores sed odit voluptatibus. Eos quia animi optio enim explicabo id. Consequuntur ipsa qui est ut sunt id aut.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Dolorem eum provident repellendus est repellendus sed molestiae quia. Aut ipsa quisquam aliquid hic voluptas laboriosam et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est nihil consequuntur qui quod ut minus. Sit voluptas praesentium ipsa voluptatibus sunt nihil aut. Voluptatem odit aspernatur dicta cum blanditiis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem voluptatum non molestiae nemo qui. Aliquam impedit quibusdam rem inventore similique reprehenderit. A porro cum tempora.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quia corrupti officiis vel sequi ad ut. Suscipit est est rerum dolore in. Minima nobis harum corporis et perspiciatis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Iusto omnis illo ipsum animi ut. Neque sit velit magnam earum. Reprehenderit ut sit libero aspernatur quia.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et animi est reiciendis eveniet quia. Velit quo et neque quia praesentium hic voluptatum. Nulla velit architecto molestiae consequatur totam laborum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Veniam occaecati ab vel in unde cum recusandae praesentium. In natus hic sit voluptatum.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sunt eos nemo ullam ea. Aut doloribus aspernatur perferendis saepe.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Itaque iure aliquam at nostrum asperiores sed odit voluptatibus. Eos quia animi optio enim explicabo id. Consequuntur ipsa qui est ut sunt id aut.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Dolorem eum provident repellendus est repellendus sed molestiae quia. Aut ipsa quisquam aliquid hic voluptas laboriosam et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est nihil consequuntur qui quod ut minus. Sit voluptas praesentium ipsa voluptatibus sunt nihil aut. Voluptatem odit aspernatur dicta cum blanditiis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem voluptatum non molestiae nemo qui. Aliquam impedit quibusdam rem inventore similique reprehenderit. A porro cum tempora.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quia corrupti officiis vel sequi ad ut. Suscipit est est rerum dolore in. Minima nobis harum corporis et perspiciatis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Iusto omnis illo ipsum animi ut. Neque sit velit magnam earum. Reprehenderit ut sit libero aspernatur quia.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et animi est reiciendis eveniet quia. Velit quo et neque quia praesentium hic voluptatum. Nulla velit architecto molestiae consequatur totam laborum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Veniam occaecati ab vel in unde cum recusandae praesentium. In natus hic sit voluptatum.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sunt eos nemo ullam ea. Aut doloribus aspernatur perferendis saepe.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Itaque iure aliquam at nostrum asperiores sed odit voluptatibus. Eos quia animi optio enim explicabo id. Consequuntur ipsa qui est ut sunt id aut.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Dolorem eum provident repellendus est repellendus sed molestiae quia. Aut ipsa quisquam aliquid hic voluptas laboriosam et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est nihil consequuntur qui quod ut minus. Sit voluptas praesentium ipsa voluptatibus sunt nihil aut. Voluptatem odit aspernatur dicta cum blanditiis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem voluptatum non molestiae nemo qui. Aliquam impedit quibusdam rem inventore similique reprehenderit. A porro cum tempora.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quia corrupti officiis vel sequi ad ut. Suscipit est est rerum dolore in. Minima nobis harum corporis et perspiciatis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Iusto omnis illo ipsum animi ut. Neque sit velit magnam earum. Reprehenderit ut sit libero aspernatur quia.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et animi est reiciendis eveniet quia. Velit quo et neque quia praesentium hic voluptatum. Nulla velit architecto molestiae consequatur totam laborum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Veniam occaecati ab vel in unde cum recusandae praesentium. In natus hic sit voluptatum.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sunt eos nemo ullam ea. Aut doloribus aspernatur perferendis saepe.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Itaque iure aliquam at nostrum asperiores sed odit voluptatibus. Eos quia animi optio enim explicabo id. Consequuntur ipsa qui est ut sunt id aut.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Dolorem eum provident repellendus est repellendus sed molestiae quia. Aut ipsa quisquam aliquid hic voluptas laboriosam et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est nihil consequuntur qui quod ut minus. Sit voluptas praesentium ipsa voluptatibus sunt nihil aut. Voluptatem odit aspernatur dicta cum blanditiis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem voluptatum non molestiae nemo qui. Aliquam impedit quibusdam rem inventore similique reprehenderit. A porro cum tempora.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quia corrupti officiis vel sequi ad ut. Suscipit est est rerum dolore in. Minima nobis harum corporis et perspiciatis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Iusto omnis illo ipsum animi ut. Neque sit velit magnam earum. Reprehenderit ut sit libero aspernatur quia.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et animi est reiciendis eveniet quia. Velit quo et neque quia praesentium hic voluptatum. Nulla velit architecto molestiae consequatur totam laborum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Veniam occaecati ab vel in unde cum recusandae praesentium. In natus hic sit voluptatum.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sunt eos nemo ullam ea. Aut doloribus aspernatur perferendis saepe.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Itaque iure aliquam at nostrum asperiores sed odit voluptatibus. Eos quia animi optio enim explicabo id. Consequuntur ipsa qui est ut sunt id aut.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(9, NULL, 10, 'Botble\\Page\\Models\\Page', '2023-05-11 23:13:48', '2023-05-11 23:13:48'),
(11, NULL, 11, 'Botble\\Page\\Models\\Page', '2023-05-11 23:32:27', '2023-05-11 23:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(191) NOT NULL,
  `gallery_meta_id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'ca', 1, 0, 0),
(3, 'Arabic', 'ar', 'ar', 'sa', 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` text DEFAULT NULL,
  `lang_meta_origin` varchar(255) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '92f6f180e51e196575866418a1987687', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', 'deaac8144c1e0a120f90d70816ac909f', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', '017e95f8097622b3aa5b3c354a335b87', 2, 'Botble\\Menu\\Models\\Menu'),
(9, 'en_US', '286841dbe6195a28151463b2b0b47d38', 4, 'Botble\\Menu\\Models\\MenuLocation'),
(10, 'en_US', '349c91d00bc49ee081efc1402e086303', 5, 'Botble\\Menu\\Models\\MenuLocation'),
(11, 'en_US', 'bf1db6dbc0283d6d880ba8ff33337df7', 6, 'Botble\\Menu\\Models\\MenuLocation'),
(12, 'en_US', 'd592f40810cb888e30c0b15320b12d4d', 7, 'Botble\\Menu\\Models\\MenuLocation'),
(13, 'en_US', '9aa8a30ad120f67051b6589f763e895a', 8, 'Botble\\Menu\\Models\\MenuLocation');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'author', 'author', 1, 'image/jpeg', 116780, 'general/author.jpg', '[]', '2023-05-02 21:04:33', '2023-05-08 03:29:08', '2023-05-08 03:29:08'),
(2, 0, 'favicon', 'favicon', 1, 'image/png', 818, 'general/favicon.png', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(3, 0, 'featured', 'featured', 1, 'image/png', 1796, 'general/featured.png', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(4, 0, 'logo-white', 'logo-white', 1, 'image/png', 1244, 'general/logo-white.png', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(5, 0, 'logo', 'logo', 1, 'image/png', 4346, 'general/logo.png', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(6, 0, '1', '1', 2, 'image/jpeg', 2165, 'news/1.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(7, 0, '10', '10', 2, 'image/jpeg', 2165, 'news/10.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(8, 0, '11', '11', 2, 'image/jpeg', 2165, 'news/11.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(9, 0, '12', '12', 2, 'image/jpeg', 2165, 'news/12.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(10, 0, '13', '13', 2, 'image/jpeg', 2165, 'news/13.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(11, 0, '14', '14', 2, 'image/jpeg', 2165, 'news/14.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(12, 0, '15', '15', 2, 'image/jpeg', 2165, 'news/15.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(13, 0, '16', '16', 2, 'image/jpeg', 2165, 'news/16.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(14, 0, '17', '17', 2, 'image/jpeg', 2165, 'news/17.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(15, 0, '18', '18', 2, 'image/jpeg', 2165, 'news/18.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(16, 0, '19', '19', 2, 'image/jpeg', 2165, 'news/19.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(17, 0, '2', '2', 2, 'image/jpeg', 2165, 'news/2.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(18, 0, '3', '3', 2, 'image/jpeg', 2165, 'news/3.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(19, 0, '4', '4', 2, 'image/jpeg', 2165, 'news/4.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(20, 0, '5', '5', 2, 'image/jpeg', 2165, 'news/5.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(21, 0, '6', '6', 2, 'image/jpeg', 2165, 'news/6.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(22, 0, '7', '7', 2, 'image/jpeg', 2165, 'news/7.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(23, 0, '8', '8', 2, 'image/jpeg', 2165, 'news/8.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(24, 0, '9', '9', 2, 'image/jpeg', 2165, 'news/9.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(25, 0, '1', '1', 3, 'image/jpeg', 2165, 'categories/1.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(26, 0, '2', '2', 3, 'image/jpeg', 2165, 'categories/2.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(27, 0, '3', '3', 3, 'image/jpeg', 2165, 'categories/3.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(28, 0, '4', '4', 3, 'image/jpeg', 2165, 'categories/4.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(29, 0, '5', '5', 3, 'image/jpeg', 2165, 'categories/5.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(30, 0, '6', '6', 3, 'image/jpeg', 2165, 'categories/6.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(31, 0, '7', '7', 3, 'image/jpeg', 2165, 'categories/7.jpg', '[]', '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(32, 0, '1', '1', 4, 'image/jpeg', 2165, 'galleries/1.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(33, 0, '10', '10', 4, 'image/jpeg', 2165, 'galleries/10.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(34, 0, '2', '2', 4, 'image/jpeg', 2165, 'galleries/2.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(35, 0, '3', '3', 4, 'image/jpeg', 2165, 'galleries/3.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(36, 0, '4', '4', 4, 'image/jpeg', 2165, 'galleries/4.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(37, 0, '5', '5', 4, 'image/jpeg', 2165, 'galleries/5.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(38, 0, '6', '6', 4, 'image/jpeg', 2165, 'galleries/6.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(39, 0, '7', '7', 4, 'image/jpeg', 2165, 'galleries/7.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(40, 0, '8', '8', 4, 'image/jpeg', 2165, 'galleries/8.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(41, 0, '9', '9', 4, 'image/jpeg', 2165, 'galleries/9.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(42, 0, '1', '1', 5, 'image/jpeg', 1715, 'banners/1.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(43, 0, '2', '2', 5, 'image/jpeg', 1715, 'banners/2.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(44, 0, '3', '3', 5, 'image/jpeg', 1715, 'banners/3.jpg', '[]', '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(45, 1, 'author-1', 'pro_n', 1, 'image/jpeg', 80570, 'general/pro-n.jpg', '[]', '2023-05-08 03:31:16', '2023-05-08 03:31:27', NULL),
(46, 1, 'fav', 'logo-1', 1, 'image/png', 27145, 'general/logo-1.png', '[]', '2023-05-09 00:05:20', '2023-05-09 00:05:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'general', 'general', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(2, 0, 'news', 'news', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(3, 0, 'categories', 'categories', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33', NULL),
(4, 0, 'galleries', 'galleries', 0, '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL),
(5, 0, 'banners', 'banners', 0, '2023-05-02 21:04:34', '2023-05-02 21:04:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2023-05-02 21:04:33', '2023-05-11 23:31:44'),
(2, 'Quick links', 'quick-links', 'published', '2023-05-02 21:04:33', '2023-05-02 21:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(4, 1, 'main-menu', '2023-05-09 00:32:45', '2023-05-09 00:32:45'),
(6, 1, 'main-menu', '2023-05-11 23:24:31', '2023-05-11 23:24:31'),
(7, 1, 'main-menu', '2023-05-11 23:25:21', '2023-05-11 23:25:21'),
(8, 1, 'main-menu', '2023-05-11 23:31:44', '2023-05-11 23:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `icon_font` varchar(50) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) DEFAULT NULL,
  `css_class` varchar(120) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/', 'elegant-icon icon_house_alt mr-5', 0, 'Home', '', '_self', 1, '2023-05-02 21:04:33', '2023-05-11 23:31:44'),
(2, 1, 1, 0, NULL, '/', '', 0, 'Home default', '', '_self', 0, '2023-05-02 21:04:33', '2023-05-11 23:31:44'),
(9, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/blog', '', 2, 'Blog', '', '_self', 0, '2023-05-02 21:04:33', '2023-05-11 23:31:44'),
(15, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', '', 4, 'Contact', '', '_self', 0, '2023-05-02 21:04:33', '2023-05-11 23:31:44'),
(16, 2, 0, NULL, NULL, '/', NULL, 0, 'Homepage', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(17, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(18, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(19, 2, 0, 2, 'Botble\\Blog\\Models\\Category', '/projects-1', NULL, 0, 'Travel', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-11 23:21:16'),
(20, 2, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(21, 3, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(22, 4, 0, NULL, NULL, '/', 'elegant-icon icon_house_alt mr-5', 0, 'Trang chủ', NULL, '_self', 1, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(23, 4, 22, NULL, NULL, '/', NULL, 0, 'Trang chủ chính', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(26, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/projects-1', NULL, 0, 'Du lịch', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-11 23:21:16'),
(27, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/destination', NULL, 0, 'Điểm đến', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-08 23:59:14'),
(28, 4, 0, 6, 'Botble\\Blog\\Models\\Category', '/hotels', NULL, 0, 'Khách sạn', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-08 23:59:14'),
(29, 4, 0, 9, 'Botble\\Blog\\Models\\Category', '/lifestyle', NULL, 0, 'Phong cách sống', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-08 23:59:14'),
(30, 4, 0, 4, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(31, 4, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(32, 4, 0, NULL, NULL, '/tin-tuc', NULL, 0, 'Giao diện tin tức', NULL, '_self', 1, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(36, 4, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(37, 5, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(38, 5, 0, 5, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(39, 5, 0, 4, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(40, 5, 0, 2, 'Botble\\Blog\\Models\\Category', '/projects-1', NULL, 0, 'Du lịch', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-11 23:21:16'),
(41, 5, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(42, 1, 0, 10, 'Botble\\Page\\Models\\Page', '/projects', '', 1, 'Projects', '', '_self', 0, '2023-05-11 23:24:00', '2023-05-11 23:31:44'),
(43, 1, 0, 11, 'Botble\\Page\\Models\\Page', '/me', NULL, 3, 'Me', NULL, '_self', 0, '2023-05-11 23:31:31', '2023-05-11 23:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'image', '[\"categories\\/1.jpg\"]', 1, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(2, 'image', '[\"categories\\/2.jpg\"]', 2, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(3, 'image', '[\"categories\\/2.jpg\"]', 3, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(4, 'image', '[\"categories\\/3.jpg\"]', 4, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(5, 'image', '[\"categories\\/3.jpg\"]', 5, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(6, 'image', '[\"categories\\/4.jpg\"]', 6, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(7, 'image', '[\"categories\\/4.jpg\"]', 7, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(8, 'image', '[\"categories\\/5.jpg\"]', 8, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(9, 'image', '[\"categories\\/6.jpg\"]', 9, 'Botble\\Blog\\Models\\Category', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(10, 'bio', '[null]', 1, 'Botble\\ACL\\Models\\User', '2023-05-09 00:13:05', '2023-05-09 00:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_04_20_100851_add_index_to_media_table', 1),
(17, '2022_04_20_101046_add_index_to_menu_table', 1),
(18, '2022_07_10_034813_move_lang_folder_to_root', 1),
(19, '2022_08_04_051940_add_missing_column_expires_at', 1),
(20, '2022_09_01_000001_create_admin_notifications_tables', 1),
(21, '2022_10_14_024629_drop_column_is_featured', 1),
(22, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(23, '2022_12_02_093615_update_slug_index_columns', 1),
(24, '2023_01_30_024431_add_alt_to_media_table', 1),
(25, '2023_02_16_042611_drop_table_password_resets', 1),
(26, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(27, '2020_11_18_150916_ads_create_ads_table', 2),
(28, '2021_12_02_035301_add_ads_translations_table', 2),
(29, '2023_04_17_062645_add_open_in_new_tab', 2),
(30, '2015_06_29_025744_create_audit_history', 3),
(31, '2015_06_18_033822_create_blog_table', 4),
(32, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(33, '2021_12_03_030600_create_blog_translations', 4),
(34, '2022_04_19_113923_add_index_to_table_posts', 4),
(35, '2016_06_17_091537_create_contacts_table', 5),
(36, '2016_10_13_150201_create_galleries_table', 6),
(37, '2021_12_03_082953_create_gallery_translations', 6),
(38, '2022_04_30_034048_create_gallery_meta_translations_table', 6),
(39, '2016_10_03_032336_create_languages_table', 7),
(40, '2021_10_25_021023_fix-priority-load-for-language-advanced', 8),
(41, '2021_12_03_075608_create_page_translations', 8),
(42, '2017_10_24_154832_create_newsletter_table', 9),
(43, '2016_10_07_193005_create_translations_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<shortcode class=\"bb-shortcode\">[about-banner title=\"Hello, I’m &lt;span&gt;Ariful Haque&lt;/span&gt;\" subtitle=\"Welcome to my blog\" text_muted=\"Travel Blogger., Content Writer., Food Guides\" image=\"general/pro-n.jpg\" show_newsletter_form=\"no\"][/about-banner]</shortcode><shortcode class=\"bb-shortcode\">[featured-posts title=\"Featured posts\"][/featured-posts]</shortcode><shortcode class=\"bb-shortcode\">[blog-categories-posts category_id=\"2\"][/blog-categories-posts]</shortcode><shortcode class=\"bb-shortcode\">[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"][/categories-with-posts]</shortcode><shortcode class=\"bb-shortcode\">[featured-categories title=\"Categories\"][/featured-categories]</shortcode>', 1, NULL, 'homepage', '', 'published', '2023-05-02 21:04:33', '2023-05-09 00:23:16'),
(4, 'Blog', '---', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(5, 'Contact', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(6, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(10, 'Projects', '<p>Some text</p><shortcode class=\"bb-shortcode\">[blog-big limit=\"200\"][/blog-big]</shortcode>', 1, NULL, 'default', 'some of my projects', 'published', '2023-05-11 23:13:48', '2023-05-11 23:13:48'),
(11, 'Me', '<p>About me</p>', 1, NULL, 'default', 'About me', 'published', '2023-05-11 23:31:14', '2023-05-11 23:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('ar', 10, 'Projects', 'some of my projects', '<p>Some text</p><shortcode class=\"bb-shortcode\">[blog-big limit=\"200\"][/blog-big]</shortcode>'),
('ar', 11, 'Me', 'About me', '<p>About me</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(191) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 1, 1, 'description', NULL, '', '2023-05-09 00:21:44', '2023-05-09 00:21:44'),
(2, 'Botble\\Page\\Models\\Page', 1, 1, 'description', '', 'Some ddlkfgj sdfg sdkjfg sdfg dfgdfg', '2023-05-09 00:22:57', '2023-05-09 00:22:57'),
(3, 'Botble\\Page\\Models\\Page', 1, 1, 'description', 'Some ddlkfgj sdfg sdkjfg sdfg dfgdfg', '', '2023-05-09 00:23:16', '2023-05-09 00:23:16'),
(4, 'Botble\\Page\\Models\\Page', 11, 1, 'template', 'full-width', 'right-sidebar', '2023-05-11 23:32:12', '2023-05-11 23:32:12'),
(5, 'Botble\\Page\\Models\\Page', 11, 1, 'template', 'right-sidebar', 'default', '2023-05-11 23:32:27', '2023-05-11 23:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}', NULL, 1, 1, 1, '2023-05-02 21:04:33', '2023-05-02 21:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(2, 1, 1, '2023-05-08 07:00:11', '2023-05-08 07:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"gallery\",\"newsletter\",\"rss-feed\",\"translation\"]', NULL, '2023-05-09 00:30:00'),
(2, 'language_hide_default', '1', NULL, '2023-05-09 00:30:00'),
(3, 'language_switcher_display', 'list', NULL, '2023-05-09 00:30:00'),
(4, 'language_display', 'all', NULL, '2023-05-09 00:30:00'),
(5, 'language_hide_languages', '[]', NULL, '2023-05-09 00:30:00'),
(6, 'show_admin_bar', '1', NULL, '2023-05-09 00:30:01'),
(7, 'theme', 'stories', NULL, '2023-05-09 00:30:01'),
(8, 'admin_logo', 'general/logo-white.png', NULL, '2023-05-09 00:30:00'),
(9, 'admin_favicon', 'general/logo-1.png', NULL, '2023-05-09 00:30:00'),
(10, 'theme-stories-site_title', 'Ariful\'s planet', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(11, 'theme-stories-seo_description', 'Computer security blog | Cyber Security blog | Malware defense | Network security', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(12, 'theme-stories-copyright', '©2023 Ariful\'s Planet - Personal blog', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(13, 'theme-stories-designed_by', 'Powered by Ariful Haque | All rights reserved.', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(14, 'theme-stories-favicon', 'general/logo-1.png', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(15, 'theme-stories-site_description', 'Currently I am a Cyber Security student, studying and exploring different aspects related to my field.', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(16, 'theme-stories-address', 'Somewhere in Montreal, Quebec, Canada', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(17, 'theme-stories-facebook', 'https://facebook.com', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(18, 'theme-stories-twitter', 'https://twitter.com', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(19, 'theme-stories-youtube', 'https://youtube.com', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(20, 'theme-stories-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(21, 'theme-stories-cookie_consent_learn_more_url', 'http://localhost/cookie-policy', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(22, 'theme-stories-cookie_consent_learn_more_text', 'Cookie Policy', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(23, 'theme-stories-homepage_id', '1', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(24, 'theme-stories-blog_page_id', '4', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(25, 'theme-stories-logo', 'general/logo.png', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(26, 'theme-stories-social_1_name', 'Linkedin', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(27, 'theme-stories-social_1_icon', 'social_linkedin', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(28, 'theme-stories-social_1_url', 'https://linkedin.com/in/ariful-haque1', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(29, 'theme-stories-social_1_color', '#3B5999', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(30, 'theme-stories-social_2_name', 'Facebook', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(31, 'theme-stories-social_2_icon', 'social_facebook', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(32, 'theme-stories-social_2_url', 'https://www.facebook.com/artfulhaque.shipu/', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(33, 'theme-stories-social_2_color', '#319AF7', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(34, 'theme-stories-social_3_name', '', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(35, 'theme-stories-social_3_icon', 'social_linkedin', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(36, 'theme-stories-social_3_url', '', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(37, 'theme-stories-social_3_color', '#0A66C2', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(38, 'theme-stories-action_button_text', '', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(39, 'theme-stories-action_button_url', '', '2023-05-02 21:04:33', '2023-05-09 00:30:01'),
(70, 'media_random_hash', 'a1c256acaa810a1a66da79765c77e1da', NULL, '2023-05-09 00:30:01'),
(71, 'theme-stories-show_site_name', '', NULL, '2023-05-09 00:30:01'),
(72, 'theme-stories-seo_title', 'Ariful\'s planet', NULL, '2023-05-09 00:30:01'),
(73, 'theme-stories-seo_og_image', '', NULL, '2023-05-09 00:30:01'),
(74, 'theme-stories-preloader_enabled', 'yes', NULL, '2023-05-09 00:30:01'),
(75, 'theme-stories-primary_font', 'Roboto', NULL, '2023-05-09 00:30:01'),
(76, 'theme-stories-primary_color', '#58DA7B', NULL, '2023-05-09 00:30:01'),
(77, 'theme-stories-secondary_color', '#5D7A6F', NULL, '2023-05-09 00:30:01'),
(78, 'theme-stories-danger_color', '#E3363E', NULL, '2023-05-09 00:30:01'),
(79, 'theme-stories-facebook_chat_enabled', 'no', NULL, '2023-05-09 00:30:01'),
(80, 'theme-stories-facebook_page_id', '', NULL, '2023-05-09 00:30:01'),
(81, 'theme-stories-facebook_comment_enabled_in_post', 'no', NULL, '2023-05-09 00:30:01'),
(82, 'theme-stories-facebook_app_id', '', NULL, '2023-05-09 00:30:01'),
(83, 'theme-stories-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, '2023-05-09 00:30:01'),
(84, 'theme-stories-facebook_comment_enabled_in_gallery', 'no', NULL, '2023-05-09 00:30:01'),
(85, 'theme-stories-social_4_name', '', NULL, '2023-05-09 00:30:01'),
(86, 'theme-stories-social_4_icon', '', NULL, '2023-05-09 00:30:01'),
(87, 'theme-stories-social_4_url', '', NULL, '2023-05-09 00:30:01'),
(88, 'theme-stories-social_4_color', '#000000', NULL, '2023-05-09 00:30:01'),
(89, 'theme-stories-social_5_name', '', NULL, '2023-05-09 00:30:01'),
(90, 'theme-stories-social_5_icon', '', NULL, '2023-05-09 00:30:01'),
(91, 'theme-stories-social_5_url', '', NULL, '2023-05-09 00:30:01'),
(92, 'theme-stories-social_5_color', '#000000', NULL, '2023-05-09 00:30:01'),
(93, 'theme-stories-blog_single_layout', 'blog-full-width', NULL, '2023-05-09 00:30:01'),
(94, 'theme-stories-blog_layout', 'grid', NULL, '2023-05-09 00:30:01'),
(95, 'theme-stories-number_of_posts_in_a_category', '12', NULL, '2023-05-09 00:30:01'),
(96, 'theme-stories-number_of_posts_in_a_tag', '12', NULL, '2023-05-09 00:30:01'),
(98, 'theme-stories-cookie_consent_enable', 'no', NULL, '2023-05-09 00:30:01'),
(99, 'theme-stories-cookie_consent_style', 'full-width', NULL, '2023-05-09 00:30:01'),
(100, 'theme-stories-cookie_consent_button_text', 'Allow cookies', NULL, '2023-05-09 00:30:01'),
(101, 'theme-stories-cookie_consent_background_color', '#000000', NULL, '2023-05-09 00:30:01'),
(102, 'theme-stories-cookie_consent_text_color', '#FFFFFF', NULL, '2023-05-09 00:30:01'),
(103, 'theme-stories-cookie_consent_max_width', '1170', NULL, '2023-05-09 00:30:01'),
(104, 'admin_email', '[\"admin@artful.com\"]', NULL, '2023-05-09 00:30:00'),
(105, 'time_zone', 'America/Toronto', NULL, '2023-05-09 00:30:01'),
(106, 'locale_direction', 'ltr', NULL, '2023-05-09 00:30:00'),
(107, 'enable_send_error_reporting_via_email', '0', NULL, '2023-05-09 00:30:00'),
(108, 'login_screen_backgrounds', '[]', NULL, '2023-05-09 00:30:00'),
(109, 'admin_title', 'Your App', NULL, '2023-05-09 00:30:00'),
(110, 'rich_editor', 'ckeditor', NULL, '2023-05-09 00:30:01'),
(111, 'enable_change_admin_theme', '0', NULL, '2023-05-09 00:30:00'),
(112, 'enable_cache', '0', NULL, '2023-05-09 00:30:00'),
(113, 'cache_time', '10', NULL, '2023-05-09 00:30:00'),
(114, 'disable_cache_in_the_admin_panel', '1', NULL, '2023-05-09 00:30:00'),
(115, 'cache_admin_menu_enable', '0', NULL, '2023-05-09 00:30:00'),
(116, 'optimize_page_speed_enable', '0', NULL, '2023-05-09 00:30:01'),
(117, 'optimize_collapse_white_space', '0', NULL, '2023-05-09 00:30:01'),
(118, 'optimize_elide_attributes', '0', NULL, '2023-05-09 00:30:01'),
(119, 'optimize_inline_css', '0', NULL, '2023-05-09 00:30:01'),
(120, 'optimize_insert_dns_prefetch', '0', NULL, '2023-05-09 00:30:01'),
(121, 'optimize_remove_comments', '0', NULL, '2023-05-09 00:30:01'),
(122, 'optimize_remove_quotes', '0', NULL, '2023-05-09 00:30:01'),
(123, 'optimize_defer_javascript', '0', NULL, '2023-05-09 00:30:01'),
(124, 'enable_cache_site_map', '1', NULL, '2023-05-09 00:30:00'),
(125, 'cache_time_site_map', '60', NULL, '2023-05-09 00:30:00'),
(126, 'redirect_404_to_homepage', '0', NULL, '2023-05-09 00:30:01'),
(127, 'show_theme_guideline_link', '0', NULL, '2023-05-09 00:30:01'),
(128, 'blacklist_keywords', '', NULL, '2023-05-09 00:30:00'),
(129, 'blacklist_email_domains', '', NULL, '2023-05-09 00:30:00'),
(130, 'enable_math_captcha_for_contact_form', '0', NULL, '2023-05-09 00:30:00'),
(131, 'google_analytics', '', NULL, '2023-05-09 00:30:00'),
(132, 'analytics_type', 'ua', NULL, '2023-05-09 00:30:00'),
(133, 'analytics_view_id', '', NULL, '2023-05-09 00:30:00'),
(134, 'analytics_property_id', '', NULL, '2023-05-09 00:30:00'),
(135, 'analytics_service_account_credentials', '', NULL, '2023-05-09 00:30:00'),
(136, 'blog_post_schema_enabled', '1', NULL, '2023-05-09 00:30:00'),
(137, 'blog_post_schema_type', 'BlogPosting', NULL, '2023-05-09 00:30:00'),
(138, 'enable_newsletter_contacts_list_api', '0', NULL, '2023-05-09 00:30:00'),
(139, 'newsletter_mailchimp_api_key', '', NULL, '2023-05-09 00:30:01'),
(140, 'newsletter_mailchimp_list_id', '', NULL, '2023-05-09 00:30:01'),
(141, 'newsletter_sendgrid_api_key', '', NULL, '2023-05-09 00:30:01'),
(142, 'newsletter_sendgrid_list_id', '', NULL, '2023-05-09 00:30:01'),
(143, 'enable_captcha', '0', NULL, '2023-05-09 00:30:00'),
(144, 'captcha_type', 'v2', NULL, '2023-05-09 00:30:00'),
(145, 'captcha_hide_badge', '0', NULL, '2023-05-09 00:30:00'),
(146, 'captcha_site_key', '', NULL, '2023-05-09 00:30:00'),
(147, 'captcha_secret', '', NULL, '2023-05-09 00:30:00'),
(149, 'locale', 'en', NULL, '2023-05-09 00:30:00'),
(150, 'default_admin_theme', 'default', NULL, '2023-05-09 00:30:00'),
(152, 'admin_locale_direction', 'ltr', NULL, '2023-05-09 00:30:00'),
(156, 'media_driver', 'public', NULL, '2023-05-09 00:30:01'),
(157, 'media_aws_access_key_id', '', NULL, '2023-05-09 00:30:00'),
(158, 'media_aws_secret_key', '', NULL, '2023-05-09 00:30:00'),
(159, 'media_aws_default_region', '', NULL, '2023-05-09 00:30:00'),
(160, 'media_aws_bucket', '', NULL, '2023-05-09 00:30:00'),
(161, 'media_aws_url', '', NULL, '2023-05-09 00:30:00'),
(162, 'media_aws_endpoint', '', NULL, '2023-05-09 00:30:00'),
(163, 'media_do_spaces_access_key_id', '', NULL, '2023-05-09 00:30:01'),
(164, 'media_do_spaces_secret_key', '', NULL, '2023-05-09 00:30:01'),
(165, 'media_do_spaces_default_region', '', NULL, '2023-05-09 00:30:01'),
(166, 'media_do_spaces_bucket', '', NULL, '2023-05-09 00:30:01'),
(167, 'media_do_spaces_endpoint', '', NULL, '2023-05-09 00:30:01'),
(168, 'media_do_spaces_cdn_enabled', '0', NULL, '2023-05-09 00:30:01'),
(169, 'media_do_spaces_cdn_custom_domain', '', NULL, '2023-05-09 00:30:01'),
(170, 'media_wasabi_access_key_id', '', NULL, '2023-05-09 00:30:01'),
(171, 'media_wasabi_secret_key', '', NULL, '2023-05-09 00:30:01'),
(172, 'media_wasabi_default_region', '', NULL, '2023-05-09 00:30:01'),
(173, 'media_wasabi_bucket', '', NULL, '2023-05-09 00:30:01'),
(174, 'media_wasabi_root', '', NULL, '2023-05-09 00:30:01'),
(175, 'media_bunnycdn_hostname', '', NULL, '2023-05-09 00:30:00'),
(176, 'media_bunnycdn_zone', '', NULL, '2023-05-09 00:30:00'),
(177, 'media_bunnycdn_key', '', NULL, '2023-05-09 00:30:00'),
(178, 'media_bunnycdn_region', '', NULL, '2023-05-09 00:30:00'),
(179, 'media_turn_off_automatic_url_translation_into_latin', '0', NULL, '2023-05-09 00:30:01'),
(180, 'media_default_placeholder_image', '', NULL, '2023-05-09 00:30:01'),
(181, 'max_upload_filesize', '', NULL, '2023-05-09 00:30:00'),
(182, 'media_chunk_enabled', '0', NULL, '2023-05-09 00:30:00'),
(183, 'media_chunk_size', '1048576', NULL, '2023-05-09 00:30:00'),
(184, 'media_max_file_size', '1048576', NULL, '2023-05-09 00:30:01'),
(185, 'media_watermark_enabled', '1', NULL, '2023-05-09 00:30:01'),
(186, 'media_folders_can_add_watermark', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', NULL, '2023-05-09 00:30:01'),
(187, 'media_watermark_source', 'general/logo-1.png', NULL, '2023-05-09 00:30:01'),
(188, 'media_watermark_size', '10', NULL, '2023-05-09 00:30:01'),
(189, 'watermark_opacity', '70', NULL, '2023-05-09 00:30:01'),
(190, 'media_watermark_position', 'bottom-right', NULL, '2023-05-09 00:30:01'),
(191, 'watermark_position_x', '10', NULL, '2023-05-09 00:30:01'),
(192, 'watermark_position_y', '10', NULL, '2023-05-09 00:30:01'),
(193, 'media_image_processing_library', 'gd', NULL, '2023-05-09 00:30:01'),
(194, 'media_sizes_thumb_width', '150', NULL, '2023-05-09 00:30:01'),
(195, 'media_sizes_thumb_height', '150', NULL, '2023-05-09 00:30:01'),
(197, 'api_enabled', '0', NULL, '2023-05-09 00:30:00'),
(198, 'theme-stories-admin_logo', 'general/logo-white.png', NULL, '2023-05-09 00:30:01'),
(199, 'theme-stories-admin_favicon', 'general/logo-1.png', NULL, '2023-05-09 00:30:01'),
(200, 'is_completed_get_started', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(4, 'blog', 4, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(5, 'contact', 5, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(6, 'cookie-policy', 6, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(10, 'uncategorized', 1, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(11, 'projects-1', 2, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-11 23:21:16'),
(12, 'guides', 3, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(13, 'destination', 4, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(14, 'food', 5, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(15, 'hotels', 6, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(16, 'review', 7, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(17, 'healthy', 8, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(18, 'lifestyle', 9, 'Botble\\Blog\\Models\\Category', '', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(19, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(20, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(21, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(22, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(23, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(40, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(41, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(42, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(43, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(44, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(45, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(46, 'projects', 10, 'Botble\\Page\\Models\\Page', '', '2023-05-11 23:13:48', '2023-05-11 23:13:48'),
(47, 'me', 11, 'Botble\\Page\\Models\\Page', '', '2023-05-11 23:31:14', '2023-05-11 23:31:14'),
(48, 'cryptology', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-11 23:35:14', '2023-05-11 23:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT '',
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:04:33', '2023-05-02 21:04:33'),
(2, 'Security', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:04:33', '2023-05-11 23:34:51'),
(3, 'how to', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:04:33', '2023-05-11 23:34:34'),
(4, 'Evaluation', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:04:33', '2023-05-11 23:33:59'),
(5, 'Malware', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:04:33', '2023-05-11 23:33:39'),
(6, 'Cryptology', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-11 23:35:14', '2023-05-11 23:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(12, 1, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(13, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(14, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(15, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(16, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(17, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(18, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(19, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(20, 1, 'en', 'validation', 'ascii', 'The :attribute must only contain single-byte alphanumeric characters and symbols.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(21, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(22, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(24, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(25, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(26, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(27, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(28, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(29, 1, 'en', 'validation', 'current_password', 'The password is incorrect.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(30, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(31, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(32, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(33, 1, 'en', 'validation', 'decimal', 'The :attribute must have :decimal decimal places.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(34, 1, 'en', 'validation', 'declined', 'The :attribute must be declined.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(35, 1, 'en', 'validation', 'declined_if', 'The :attribute must be declined when :other is :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(36, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(37, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(38, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(39, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(40, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(41, 1, 'en', 'validation', 'doesnt_end_with', 'The :attribute may not end with one of the following: :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(42, 1, 'en', 'validation', 'doesnt_start_with', 'The :attribute may not start with one of the following: :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(43, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(44, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(45, 1, 'en', 'validation', 'enum', 'The selected :attribute is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(46, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(47, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(48, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(49, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(50, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(51, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(52, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(53, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(54, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(55, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(56, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(57, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(58, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(59, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(60, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(61, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(62, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(63, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(64, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(65, 1, 'en', 'validation', 'lowercase', 'The :attribute must be lowercase.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(66, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(67, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(68, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(69, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(70, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(71, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(72, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(73, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(74, 1, 'en', 'validation', 'mac_address', 'The :attribute must be a valid MAC address.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(75, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(76, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(77, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(78, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(79, 1, 'en', 'validation', 'max_digits', 'The :attribute must not have more than :max digits.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(80, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(81, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(82, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(83, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(84, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(85, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(86, 1, 'en', 'validation', 'min_digits', 'The :attribute must have at least :min digits.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(87, 1, 'en', 'validation', 'missing', 'The :attribute field must be missing.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(88, 1, 'en', 'validation', 'missing_if', 'The :attribute field must be missing when :other is :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(89, 1, 'en', 'validation', 'missing_unless', 'The :attribute field must be missing unless :other is :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(90, 1, 'en', 'validation', 'missing_with', 'The :attribute field must be missing when :values is present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(91, 1, 'en', 'validation', 'missing_with_all', 'The :attribute field must be missing when :values are present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(92, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(93, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(94, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(95, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(96, 1, 'en', 'validation', 'password.letters', 'The :attribute must contain at least one letter.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(97, 1, 'en', 'validation', 'password.mixed', 'The :attribute must contain at least one uppercase and one lowercase letter.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(98, 1, 'en', 'validation', 'password.numbers', 'The :attribute must contain at least one number.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(99, 1, 'en', 'validation', 'password.symbols', 'The :attribute must contain at least one symbol.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(100, 1, 'en', 'validation', 'password.uncompromised', 'The given :attribute has appeared in a data leak. Please choose a different :attribute.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(101, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(102, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(103, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(104, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(105, 1, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(106, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(107, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(108, 1, 'en', 'validation', 'required_array_keys', 'The :attribute field must contain entries for: :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(109, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(110, 1, 'en', 'validation', 'required_if_accepted', 'The :attribute field is required when :other is accepted.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(111, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(112, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(113, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(114, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(115, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(116, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(117, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(118, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(119, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(120, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(121, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(122, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(123, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(124, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(125, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(126, 1, 'en', 'validation', 'uppercase', 'The :attribute must be uppercase.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(127, 1, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(128, 1, 'en', 'validation', 'ulid', 'The :attribute must be a valid ULID.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(129, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(130, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(131, 1, 'en', 'acl/auth', 'login.username', 'Email/Username', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(132, 1, 'en', 'acl/auth', 'login.email', 'Email', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(133, 1, 'en', 'acl/auth', 'login.password', 'Password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(134, 1, 'en', 'acl/auth', 'login.title', 'User Login', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(135, 1, 'en', 'acl/auth', 'login.remember', 'Remember me?', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(136, 1, 'en', 'acl/auth', 'login.login', 'Sign in', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(137, 1, 'en', 'acl/auth', 'login.placeholder.username', 'Please enter your username', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(138, 1, 'en', 'acl/auth', 'login.placeholder.email', 'Please enter your email', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(139, 1, 'en', 'acl/auth', 'login.success', 'Login successfully!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(140, 1, 'en', 'acl/auth', 'login.fail', 'Wrong username or password.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(141, 1, 'en', 'acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(142, 1, 'en', 'acl/auth', 'login.banned', 'This account is banned.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(143, 1, 'en', 'acl/auth', 'login.logout_success', 'Logout successfully!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(144, 1, 'en', 'acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(145, 1, 'en', 'acl/auth', 'forgot_password.title', 'Forgot Password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(146, 1, 'en', 'acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(147, 1, 'en', 'acl/auth', 'forgot_password.submit', 'Submit', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(148, 1, 'en', 'acl/auth', 'reset.new_password', 'New password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(149, 1, 'en', 'acl/auth', 'reset.password_confirmation', 'Confirm new password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(150, 1, 'en', 'acl/auth', 'reset.email', 'Email', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(151, 1, 'en', 'acl/auth', 'reset.title', 'Reset your password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(152, 1, 'en', 'acl/auth', 'reset.update', 'Update', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(153, 1, 'en', 'acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(154, 1, 'en', 'acl/auth', 'reset.user_not_found', 'This username is not exist.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(155, 1, 'en', 'acl/auth', 'reset.success', 'Reset password successfully!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(156, 1, 'en', 'acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(157, 1, 'en', 'acl/auth', 'reset.reset.title', 'Email reset password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(158, 1, 'en', 'acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(159, 1, 'en', 'acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(160, 1, 'en', 'acl/auth', 'reset.new-password', 'New password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(161, 1, 'en', 'acl/auth', 'email.reminder.title', 'Email reset password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(162, 1, 'en', 'acl/auth', 'password_confirmation', 'Password confirm', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(163, 1, 'en', 'acl/auth', 'failed', 'Failed', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(164, 1, 'en', 'acl/auth', 'throttle', 'Throttle', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(165, 1, 'en', 'acl/auth', 'not_member', 'Not a member yet?', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(166, 1, 'en', 'acl/auth', 'register_now', 'Register now', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(167, 1, 'en', 'acl/auth', 'lost_your_password', 'Lost your password?', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(168, 1, 'en', 'acl/auth', 'login_title', 'Admin', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(169, 1, 'en', 'acl/auth', 'login_via_social', 'Login with social networks', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(170, 1, 'en', 'acl/auth', 'back_to_login', 'Back to login page', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(171, 1, 'en', 'acl/auth', 'sign_in_below', 'Sign In Below', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(172, 1, 'en', 'acl/auth', 'languages', 'Languages', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(173, 1, 'en', 'acl/auth', 'reset_password', 'Reset Password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(174, 1, 'en', 'acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(175, 1, 'en', 'acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(176, 1, 'en', 'acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(177, 1, 'en', 'acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(178, 1, 'en', 'acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(179, 1, 'en', 'acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(180, 1, 'en', 'acl/permissions', 'notices.create_success', 'The new role was successfully created', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(181, 1, 'en', 'acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(182, 1, 'en', 'acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(183, 1, 'en', 'acl/permissions', 'notices.not_found', 'Role not found', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(184, 1, 'en', 'acl/permissions', 'name', 'Name', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(185, 1, 'en', 'acl/permissions', 'current_role', 'Current Role', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(186, 1, 'en', 'acl/permissions', 'no_role_assigned', 'No role assigned', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(187, 1, 'en', 'acl/permissions', 'role_assigned', 'Assigned Role', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(188, 1, 'en', 'acl/permissions', 'create_role', 'Create New Role', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(189, 1, 'en', 'acl/permissions', 'role_name', 'Name', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(190, 1, 'en', 'acl/permissions', 'role_description', 'Description', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(191, 1, 'en', 'acl/permissions', 'permission_flags', 'Permission Flags', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(192, 1, 'en', 'acl/permissions', 'cancel', 'Cancel', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(193, 1, 'en', 'acl/permissions', 'reset', 'Reset', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(194, 1, 'en', 'acl/permissions', 'save', 'Save', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(195, 1, 'en', 'acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(196, 1, 'en', 'acl/permissions', 'details', 'Details', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(197, 1, 'en', 'acl/permissions', 'duplicate', 'Duplicate', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(198, 1, 'en', 'acl/permissions', 'all', 'All Permissions', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(199, 1, 'en', 'acl/permissions', 'list_role', 'List Roles', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(200, 1, 'en', 'acl/permissions', 'created_on', 'Created On', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(201, 1, 'en', 'acl/permissions', 'created_by', 'Created By', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(202, 1, 'en', 'acl/permissions', 'actions', 'Actions', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(203, 1, 'en', 'acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(204, 1, 'en', 'acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(205, 1, 'en', 'acl/permissions', 'delete_global_role', 'Can not delete global role', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(206, 1, 'en', 'acl/permissions', 'delete_success', 'Delete role successfully', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(207, 1, 'en', 'acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(208, 1, 'en', 'acl/permissions', 'not_found', 'No role found!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(209, 1, 'en', 'acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(210, 1, 'en', 'acl/permissions', 'modified_success', 'Modified successfully', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(211, 1, 'en', 'acl/permissions', 'create_success', 'Create successfully', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(212, 1, 'en', 'acl/permissions', 'duplicated_success', 'Duplicated successfully', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(213, 1, 'en', 'acl/permissions', 'options', 'Options', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(214, 1, 'en', 'acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(215, 1, 'en', 'acl/permissions', 'roles', 'Roles', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(216, 1, 'en', 'acl/permissions', 'role_permission', 'Roles and Permissions', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(217, 1, 'en', 'acl/permissions', 'user_management', 'User Management', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(218, 1, 'en', 'acl/permissions', 'super_user_management', 'Super User Management', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(219, 1, 'en', 'acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(220, 1, 'en', 'acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(221, 1, 'en', 'acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(222, 1, 'en', 'acl/reminders', 'token', 'This password reset token is invalid.', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(223, 1, 'en', 'acl/reminders', 'sent', 'Password reminder sent!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(224, 1, 'en', 'acl/reminders', 'reset', 'Password has been reset!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(225, 1, 'en', 'acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(226, 1, 'en', 'acl/users', 'no_select', 'Please select at least one record to take this action!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(227, 1, 'en', 'acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(228, 1, 'en', 'acl/users', 'update_success', 'Update status successfully!', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(229, 1, 'en', 'acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(230, 1, 'en', 'acl/users', 'not_found', 'User not found', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(231, 1, 'en', 'acl/users', 'email_exist', 'That email address already belongs to an existing account', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(232, 1, 'en', 'acl/users', 'username_exist', 'That username address already belongs to an existing account', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(233, 1, 'en', 'acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(234, 1, 'en', 'acl/users', 'password_update_success', 'Password successfully changed', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(235, 1, 'en', 'acl/users', 'current_password_not_valid', 'Current password is not valid', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(236, 1, 'en', 'acl/users', 'user_exist_in', 'User is already a member', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(237, 1, 'en', 'acl/users', 'email', 'Email', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(238, 1, 'en', 'acl/users', 'role', 'Role', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(239, 1, 'en', 'acl/users', 'username', 'Username', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(240, 1, 'en', 'acl/users', 'last_name', 'Last Name', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(241, 1, 'en', 'acl/users', 'first_name', 'First Name', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(242, 1, 'en', 'acl/users', 'message', 'Message', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(243, 1, 'en', 'acl/users', 'cancel_btn', 'Cancel', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(244, 1, 'en', 'acl/users', 'change_password', 'Change password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(245, 1, 'en', 'acl/users', 'current_password', 'Current password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(246, 1, 'en', 'acl/users', 'new_password', 'New Password', '2023-05-02 21:04:34', '2023-05-02 21:04:34'),
(247, 1, 'en', 'acl/users', 'confirm_new_password', 'Confirm New Password', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(248, 1, 'en', 'acl/users', 'password', 'Password', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(249, 1, 'en', 'acl/users', 'save', 'Save', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(250, 1, 'en', 'acl/users', 'cannot_delete', 'User could not be deleted', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(251, 1, 'en', 'acl/users', 'deleted', 'User deleted', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(252, 1, 'en', 'acl/users', 'last_login', 'Last Login', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(253, 1, 'en', 'acl/users', 'error_update_profile_image', 'Error when update profile image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(254, 1, 'en', 'acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(255, 1, 'en', 'acl/users', 'change_profile_image', 'Change Profile Image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(256, 1, 'en', 'acl/users', 'new_image', 'New Image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(257, 1, 'en', 'acl/users', 'loading', 'Loading', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(258, 1, 'en', 'acl/users', 'close', 'Close', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(259, 1, 'en', 'acl/users', 'update', 'Update', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(260, 1, 'en', 'acl/users', 'read_image_failed', 'Failed to read the image file', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(261, 1, 'en', 'acl/users', 'users', 'Users', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(262, 1, 'en', 'acl/users', 'update_avatar_success', 'Update profile image successfully!', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(263, 1, 'en', 'acl/users', 'info.title', 'User profile', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(264, 1, 'en', 'acl/users', 'info.first_name', 'First Name', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(265, 1, 'en', 'acl/users', 'info.last_name', 'Last Name', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(266, 1, 'en', 'acl/users', 'info.email', 'Email', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(267, 1, 'en', 'acl/users', 'info.second_email', 'Secondary Email', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(268, 1, 'en', 'acl/users', 'info.address', 'Address', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(269, 1, 'en', 'acl/users', 'info.second_address', 'Secondary Address', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(270, 1, 'en', 'acl/users', 'info.birth_day', 'Date of birth', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(271, 1, 'en', 'acl/users', 'info.job', 'Job Position', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(272, 1, 'en', 'acl/users', 'info.mobile_number', 'Mobile Number', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(273, 1, 'en', 'acl/users', 'info.second_mobile_number', 'Secondary Phone', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(274, 1, 'en', 'acl/users', 'info.interes', 'Interests', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(275, 1, 'en', 'acl/users', 'info.about', 'About', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(276, 1, 'en', 'acl/users', 'gender.title', 'Gender', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(277, 1, 'en', 'acl/users', 'gender.male', 'Male', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(278, 1, 'en', 'acl/users', 'gender.female', 'Female', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(279, 1, 'en', 'acl/users', 'total_users', 'Total users', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(280, 1, 'en', 'acl/users', 'statuses.activated', 'Activated', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(281, 1, 'en', 'acl/users', 'statuses.deactivated', 'Deactivated', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(282, 1, 'en', 'acl/users', 'make_super', 'Make super', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(283, 1, 'en', 'acl/users', 'remove_super', 'Remove super', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(284, 1, 'en', 'acl/users', 'is_super', 'Is super?', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(285, 1, 'en', 'acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(286, 1, 'en', 'acl/users', 'password_confirmation', 'Re-type password', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(287, 1, 'en', 'acl/users', 'select_role', 'Select role', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(288, 1, 'en', 'acl/users', 'create_new_user', 'Create a new user', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(289, 1, 'en', 'acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(290, 1, 'en', 'acl/users', 'assigned_role', 'Assigned Role', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(291, 1, 'en', 'acl/users', 'no_role_assigned', 'No role assigned', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(292, 1, 'en', 'acl/users', 'view_user_profile', 'View user\'s profile', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(455, 1, 'en', 'base/base', 'yes', 'Yes', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(456, 1, 'en', 'base/base', 'no', 'No', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(457, 1, 'en', 'base/base', 'is_default', 'Is default?', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(458, 1, 'en', 'base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(459, 1, 'en', 'base/base', 'email_template.header', 'Email template header', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(460, 1, 'en', 'base/base', 'email_template.footer', 'Email template footer', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(461, 1, 'en', 'base/base', 'email_template.site_title', 'Site title', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(462, 1, 'en', 'base/base', 'email_template.site_url', 'Site URL', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(463, 1, 'en', 'base/base', 'email_template.site_logo', 'Site Logo', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(464, 1, 'en', 'base/base', 'email_template.date_time', 'Current date time', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(465, 1, 'en', 'base/base', 'email_template.date_year', 'Current year', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(466, 1, 'en', 'base/base', 'email_template.site_admin_email', 'Site admin email', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(467, 1, 'en', 'base/base', 'change_image', 'Change image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(468, 1, 'en', 'base/base', 'delete_image', 'Delete image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(469, 1, 'en', 'base/base', 'preview_image', 'Preview image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(470, 1, 'en', 'base/base', 'image', 'Image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(471, 1, 'en', 'base/base', 'using_button', 'Using button', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(472, 1, 'en', 'base/base', 'select_image', 'Select image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(473, 1, 'en', 'base/base', 'to_add_more_image', 'to add more images', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(474, 1, 'en', 'base/base', 'add_image', 'Add image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(475, 1, 'en', 'base/cache', 'cache_management', 'Cache management', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(476, 1, 'en', 'base/cache', 'cache_commands', 'Clear cache commands', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(477, 1, 'en', 'base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(478, 1, 'en', 'base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(479, 1, 'en', 'base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(480, 1, 'en', 'base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(481, 1, 'en', 'base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(482, 1, 'en', 'base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(483, 1, 'en', 'base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(484, 1, 'en', 'base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(485, 1, 'en', 'base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(486, 1, 'en', 'base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(487, 1, 'en', 'base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(488, 1, 'en', 'base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(489, 1, 'en', 'base/cache', 'commands.clear_log.title', 'Clear log', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(490, 1, 'en', 'base/cache', 'commands.clear_log.description', 'Clear system log files', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(491, 1, 'en', 'base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(492, 1, 'en', 'base/enums', 'statuses.draft', 'Draft', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(493, 1, 'en', 'base/enums', 'statuses.pending', 'Pending', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(494, 1, 'en', 'base/enums', 'statuses.published', 'Published', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(495, 1, 'en', 'base/errors', '401_title', 'Permission Denied', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(496, 1, 'en', 'base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(497, 1, 'en', 'base/errors', '404_title', 'Page could not be found', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(498, 1, 'en', 'base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(499, 1, 'en', 'base/errors', '500_title', 'Page could not be loaded', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(500, 1, 'en', 'base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(501, 1, 'en', 'base/errors', 'reasons', 'This may have occurred because of several reasons', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(502, 1, 'en', 'base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://cms.local/admin\">clicking here</a>.', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(503, 1, 'en', 'base/errors', 'not_found', 'Not Found', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(504, 1, 'en', 'base/forms', 'choose_image', 'Choose image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(505, 1, 'en', 'base/forms', 'actions', 'Actions', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(506, 1, 'en', 'base/forms', 'save', 'Save', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(507, 1, 'en', 'base/forms', 'save_and_continue', 'Save & Edit', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(508, 1, 'en', 'base/forms', 'image', 'Image', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(509, 1, 'en', 'base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(510, 1, 'en', 'base/forms', 'create', 'Create', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(511, 1, 'en', 'base/forms', 'edit', 'Edit', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(512, 1, 'en', 'base/forms', 'permalink', 'Permalink', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(513, 1, 'en', 'base/forms', 'ok', 'OK', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(514, 1, 'en', 'base/forms', 'cancel', 'Cancel', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(515, 1, 'en', 'base/forms', 'character_remain', 'character(s) remain', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(516, 1, 'en', 'base/forms', 'template', 'Template', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(517, 1, 'en', 'base/forms', 'choose_file', 'Choose file', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(518, 1, 'en', 'base/forms', 'file', 'File', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(519, 1, 'en', 'base/forms', 'content', 'Content', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(520, 1, 'en', 'base/forms', 'description', 'Description', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(521, 1, 'en', 'base/forms', 'name', 'Name', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(522, 1, 'en', 'base/forms', 'slug', 'Slug', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(523, 1, 'en', 'base/forms', 'title', 'Title', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(524, 1, 'en', 'base/forms', 'value', 'Value', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(525, 1, 'en', 'base/forms', 'name_placeholder', 'Name', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(526, 1, 'en', 'base/forms', 'alias_placeholder', 'Alias', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(527, 1, 'en', 'base/forms', 'description_placeholder', 'Short description', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(528, 1, 'en', 'base/forms', 'parent', 'Parent', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(529, 1, 'en', 'base/forms', 'icon', 'Icon', '2023-05-02 21:04:35', '2023-05-02 21:04:35'),
(530, 1, 'en', 'base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(531, 1, 'en', 'base/forms', 'order_by', 'Order by', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(532, 1, 'en', 'base/forms', 'order_by_placeholder', 'Order by', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(533, 1, 'en', 'base/forms', 'is_featured', 'Is featured?', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(534, 1, 'en', 'base/forms', 'is_default', 'Is default?', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(535, 1, 'en', 'base/forms', 'update', 'Update', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(536, 1, 'en', 'base/forms', 'publish', 'Publish', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(537, 1, 'en', 'base/forms', 'remove_image', 'Remove image', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(538, 1, 'en', 'base/forms', 'remove_file', 'Remove file', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(539, 1, 'en', 'base/forms', 'order', 'Order', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(540, 1, 'en', 'base/forms', 'alias', 'Alias', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(541, 1, 'en', 'base/forms', 'basic_information', 'Basic information', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(542, 1, 'en', 'base/forms', 'short_code', 'Shortcode', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(543, 1, 'en', 'base/forms', 'add_short_code', 'Add a shortcode', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(544, 1, 'en', 'base/forms', 'add', 'Add', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(545, 1, 'en', 'base/forms', 'link', 'Link', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(546, 1, 'en', 'base/forms', 'show_hide_editor', 'Show/Hide Editor', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(547, 1, 'en', 'base/forms', 'basic_info_title', 'Basic information', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(548, 1, 'en', 'base/forms', 'expand_all', 'Expand all', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(549, 1, 'en', 'base/forms', 'collapse_all', 'Collapse all', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(550, 1, 'en', 'base/forms', 'view_new_tab', 'Open in new tab', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(551, 1, 'en', 'base/layouts', 'platform_admin', 'Platform Administration', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(552, 1, 'en', 'base/layouts', 'dashboard', 'Dashboard', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(553, 1, 'en', 'base/layouts', 'widgets', 'Widgets', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(554, 1, 'en', 'base/layouts', 'plugins', 'Plugins', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(555, 1, 'en', 'base/layouts', 'settings', 'Settings', '2023-05-02 21:04:36', '2023-05-02 21:04:36');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(556, 1, 'en', 'base/layouts', 'setting_general', 'General', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(557, 1, 'en', 'base/layouts', 'setting_email', 'Email', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(558, 1, 'en', 'base/layouts', 'system_information', 'System information', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(559, 1, 'en', 'base/layouts', 'theme', 'Theme', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(560, 1, 'en', 'base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(561, 1, 'en', 'base/layouts', 'profile', 'Profile', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(562, 1, 'en', 'base/layouts', 'logout', 'Logout', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(563, 1, 'en', 'base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(564, 1, 'en', 'base/layouts', 'home', 'Home', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(565, 1, 'en', 'base/layouts', 'search', 'Search', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(566, 1, 'en', 'base/layouts', 'add_new', 'Add new', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(567, 1, 'en', 'base/layouts', 'n_a', 'N/A', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(568, 1, 'en', 'base/layouts', 'page_loaded_time', 'Page loaded in', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(569, 1, 'en', 'base/layouts', 'view_website', 'View website', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(570, 1, 'en', 'base/notices', 'create_success_message', 'Created successfully', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(571, 1, 'en', 'base/notices', 'update_success_message', 'Updated successfully', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(572, 1, 'en', 'base/notices', 'delete_success_message', 'Deleted successfully', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(573, 1, 'en', 'base/notices', 'success_header', 'Success!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(574, 1, 'en', 'base/notices', 'error_header', 'Error!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(575, 1, 'en', 'base/notices', 'no_select', 'Please select at least one record to perform this action!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(576, 1, 'en', 'base/notices', 'processing_request', 'We are processing your request.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(577, 1, 'en', 'base/notices', 'error', 'Error!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(578, 1, 'en', 'base/notices', 'success', 'Success!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(579, 1, 'en', 'base/notices', 'info', 'Info!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(580, 1, 'en', 'base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(581, 1, 'en', 'base/system', 'no_select', 'Please select at least one record to take this action!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(582, 1, 'en', 'base/system', 'cannot_find_user', 'Unable to find specified user', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(583, 1, 'en', 'base/system', 'supper_revoked', 'Super user access revoked', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(584, 1, 'en', 'base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(585, 1, 'en', 'base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(586, 1, 'en', 'base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(587, 1, 'en', 'base/system', 'supper_granted', 'Super user access granted', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(588, 1, 'en', 'base/system', 'delete_log_success', 'Delete log file successfully!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(589, 1, 'en', 'base/system', 'get_member_success', 'Member list retrieved successfully', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(590, 1, 'en', 'base/system', 'error_occur', 'The following errors occurred', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(591, 1, 'en', 'base/system', 'user_management', 'User Management', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(592, 1, 'en', 'base/system', 'user_management_description', 'Manage users.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(593, 1, 'en', 'base/system', 'role_and_permission', 'Roles and Permissions', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(594, 1, 'en', 'base/system', 'role_and_permission_description', 'Manage the available roles.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(595, 1, 'en', 'base/system', 'user.list_super', 'List Super Users', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(596, 1, 'en', 'base/system', 'user.email', 'Email', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(597, 1, 'en', 'base/system', 'user.last_login', 'Last Login', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(598, 1, 'en', 'base/system', 'user.username', 'Username', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(599, 1, 'en', 'base/system', 'user.add_user', 'Add Super User', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(600, 1, 'en', 'base/system', 'user.cancel', 'Cancel', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(601, 1, 'en', 'base/system', 'user.create', 'Create', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(602, 1, 'en', 'base/system', 'options.features', 'Feature Access Control', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(603, 1, 'en', 'base/system', 'options.feature_description', 'Manage the available.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(604, 1, 'en', 'base/system', 'options.manage_super', 'Super User Management', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(605, 1, 'en', 'base/system', 'options.manage_super_description', 'Add/remove super users.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(606, 1, 'en', 'base/system', 'options.info', 'System information', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(607, 1, 'en', 'base/system', 'options.info_description', 'All information about current system configuration.', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(608, 1, 'en', 'base/system', 'info.title', 'System information', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(609, 1, 'en', 'base/system', 'info.cache', 'Cache', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(610, 1, 'en', 'base/system', 'info.locale', 'Active locale', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(611, 1, 'en', 'base/system', 'info.environment', 'Environment', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(612, 1, 'en', 'base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(613, 1, 'en', 'base/system', 'report_description', 'Please share this information for troubleshooting', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(614, 1, 'en', 'base/system', 'get_system_report', 'Get System Report', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(615, 1, 'en', 'base/system', 'system_environment', 'System Environment', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(616, 1, 'en', 'base/system', 'framework_version', 'Framework Version', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(617, 1, 'en', 'base/system', 'timezone', 'Timezone', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(618, 1, 'en', 'base/system', 'debug_mode', 'Debug Mode', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(619, 1, 'en', 'base/system', 'storage_dir_writable', 'Storage Dir Writable', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(620, 1, 'en', 'base/system', 'cache_dir_writable', 'Cache Dir Writable', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(621, 1, 'en', 'base/system', 'app_size', 'App Size', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(622, 1, 'en', 'base/system', 'server_environment', 'Server Environment', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(623, 1, 'en', 'base/system', 'php_version', 'PHP Version', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(624, 1, 'en', 'base/system', 'php_version_error', 'PHP must be >= :version', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(625, 1, 'en', 'base/system', 'server_software', 'Server Software', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(626, 1, 'en', 'base/system', 'server_os', 'Server OS', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(627, 1, 'en', 'base/system', 'database', 'Database', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(628, 1, 'en', 'base/system', 'ssl_installed', 'SSL Installed', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(629, 1, 'en', 'base/system', 'cache_driver', 'Cache Driver', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(630, 1, 'en', 'base/system', 'session_driver', 'Session Driver', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(631, 1, 'en', 'base/system', 'queue_connection', 'Queue Connection', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(632, 1, 'en', 'base/system', 'mbstring_ext', 'Mbstring Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(633, 1, 'en', 'base/system', 'openssl_ext', 'OpenSSL Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(634, 1, 'en', 'base/system', 'pdo_ext', 'PDO Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(635, 1, 'en', 'base/system', 'curl_ext', 'CURL Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(636, 1, 'en', 'base/system', 'exif_ext', 'Exif Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(637, 1, 'en', 'base/system', 'file_info_ext', 'File info Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(638, 1, 'en', 'base/system', 'tokenizer_ext', 'Tokenizer Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(639, 1, 'en', 'base/system', 'extra_stats', 'Extra Stats', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(640, 1, 'en', 'base/system', 'installed_packages', 'Installed packages and their version numbers', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(641, 1, 'en', 'base/system', 'extra_information', 'Extra Information', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(642, 1, 'en', 'base/system', 'copy_report', 'Copy Report', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(643, 1, 'en', 'base/system', 'package_name', 'Package Name', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(644, 1, 'en', 'base/system', 'dependency_name', 'Dependency Name', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(645, 1, 'en', 'base/system', 'version', 'Version', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(646, 1, 'en', 'base/system', 'cms_version', 'CMS Version', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(647, 1, 'en', 'base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(648, 1, 'en', 'base/system', 'updater', 'System Updater', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(649, 1, 'en', 'base/tables', 'id', 'ID', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(650, 1, 'en', 'base/tables', 'name', 'Name', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(651, 1, 'en', 'base/tables', 'slug', 'Slug', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(652, 1, 'en', 'base/tables', 'title', 'Title', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(653, 1, 'en', 'base/tables', 'order_by', 'Order By', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(654, 1, 'en', 'base/tables', 'order', 'Order', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(655, 1, 'en', 'base/tables', 'status', 'Status', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(656, 1, 'en', 'base/tables', 'created_at', 'Created At', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(657, 1, 'en', 'base/tables', 'updated_at', 'Updated At', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(658, 1, 'en', 'base/tables', 'description', 'Description', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(659, 1, 'en', 'base/tables', 'operations', 'Operations', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(660, 1, 'en', 'base/tables', 'url', 'URL', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(661, 1, 'en', 'base/tables', 'author', 'Author', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(662, 1, 'en', 'base/tables', 'notes', 'Notes', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(663, 1, 'en', 'base/tables', 'column', 'Column', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(664, 1, 'en', 'base/tables', 'origin', 'Origin', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(665, 1, 'en', 'base/tables', 'after_change', 'After changes', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(666, 1, 'en', 'base/tables', 'views', 'Views', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(667, 1, 'en', 'base/tables', 'browser', 'Browser', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(668, 1, 'en', 'base/tables', 'session', 'Session', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(669, 1, 'en', 'base/tables', 'activated', 'activated', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(670, 1, 'en', 'base/tables', 'deactivated', 'deactivated', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(671, 1, 'en', 'base/tables', 'is_featured', 'Is featured', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(672, 1, 'en', 'base/tables', 'edit', 'Edit', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(673, 1, 'en', 'base/tables', 'delete', 'Delete', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(674, 1, 'en', 'base/tables', 'restore', 'Restore', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(675, 1, 'en', 'base/tables', 'activate', 'Activate', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(676, 1, 'en', 'base/tables', 'deactivate', 'Deactivate', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(677, 1, 'en', 'base/tables', 'excel', 'Excel', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(678, 1, 'en', 'base/tables', 'export', 'Export', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(679, 1, 'en', 'base/tables', 'csv', 'CSV', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(680, 1, 'en', 'base/tables', 'pdf', 'PDF', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(681, 1, 'en', 'base/tables', 'print', 'Print', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(682, 1, 'en', 'base/tables', 'reset', 'Reset', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(683, 1, 'en', 'base/tables', 'reload', 'Reload', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(684, 1, 'en', 'base/tables', 'display', 'Display', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(685, 1, 'en', 'base/tables', 'all', 'All', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(686, 1, 'en', 'base/tables', 'add_new', 'Add New', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(687, 1, 'en', 'base/tables', 'action', 'Actions', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(688, 1, 'en', 'base/tables', 'delete_entry', 'Delete', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(689, 1, 'en', 'base/tables', 'view', 'View Detail', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(690, 1, 'en', 'base/tables', 'save', 'Save', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(691, 1, 'en', 'base/tables', 'show_from', 'Show from', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(692, 1, 'en', 'base/tables', 'to', 'to', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(693, 1, 'en', 'base/tables', 'in', 'in', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(694, 1, 'en', 'base/tables', 'records', 'records', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(695, 1, 'en', 'base/tables', 'no_data', 'No data to display', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(696, 1, 'en', 'base/tables', 'no_record', 'No record', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(697, 1, 'en', 'base/tables', 'confirm_delete', 'Confirm delete', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(698, 1, 'en', 'base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(699, 1, 'en', 'base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(700, 1, 'en', 'base/tables', 'cancel', 'Cancel', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(701, 1, 'en', 'base/tables', 'template', 'Template', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(702, 1, 'en', 'base/tables', 'email', 'Email', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(703, 1, 'en', 'base/tables', 'last_login', 'Last login', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(704, 1, 'en', 'base/tables', 'shortcode', 'Shortcode', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(705, 1, 'en', 'base/tables', 'image', 'Image', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(706, 1, 'en', 'base/tables', 'bulk_changes', 'Bulk changes', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(707, 1, 'en', 'base/tables', 'submit', 'Submit', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(708, 1, 'en', 'base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(709, 1, 'en', 'base/tabs', 'detail', 'Detail', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(710, 1, 'en', 'base/tabs', 'file', 'Files', '2023-05-02 21:04:36', '2023-05-02 21:04:36'),
(711, 1, 'en', 'base/tabs', 'record_note', 'Record Note', '2023-05-02 21:04:37', '2023-05-02 21:04:37'),
(712, 1, 'en', 'base/tabs', 'revision', 'Revision History', '2023-05-02 21:04:37', '2023-05-02 21:04:37'),
(968, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(969, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(970, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(971, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(972, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(973, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(974, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(975, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(976, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(977, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(978, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(979, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(980, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(981, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(982, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(983, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(984, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(985, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(986, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(987, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(988, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(989, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(990, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(991, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(992, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(993, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(994, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(995, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(996, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(997, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(998, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(999, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1000, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1001, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1002, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1003, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1004, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1005, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1006, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1007, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1008, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1009, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1010, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1011, 1, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1012, 1, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1013, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1014, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1015, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1016, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1017, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1018, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1019, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1020, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1021, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1022, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1023, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1024, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1025, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1026, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1027, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1028, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1029, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1030, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1031, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1032, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1033, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1034, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1035, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1036, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1037, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1038, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1039, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1040, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1041, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1042, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1043, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1044, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1045, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1046, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1047, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1048, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1049, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1050, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1051, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1052, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1053, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1054, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1055, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1056, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1057, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1058, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1059, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1060, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1061, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1062, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1063, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1064, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1065, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1066, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1067, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1068, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1069, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1070, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1071, 1, 'en', 'core/acl/users', 'email', 'Email', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1072, 1, 'en', 'core/acl/users', 'role', 'Role', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1073, 1, 'en', 'core/acl/users', 'username', 'Username', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1074, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1075, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1076, 1, 'en', 'core/acl/users', 'message', 'Message', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1077, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1078, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1079, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1080, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1081, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1082, 1, 'en', 'core/acl/users', 'password', 'Password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1083, 1, 'en', 'core/acl/users', 'save', 'Save', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1084, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1085, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1086, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1087, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1088, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1089, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1090, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1091, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1092, 1, 'en', 'core/acl/users', 'close', 'Close', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1093, 1, 'en', 'core/acl/users', 'update', 'Update', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1094, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1095, 1, 'en', 'core/acl/users', 'users', 'Users', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1096, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1097, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1098, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1099, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1100, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1101, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1102, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1103, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1104, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1105, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1106, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1107, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1108, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1109, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1110, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1111, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1112, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1113, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2023-05-02 21:04:38', '2023-05-02 21:04:38'),
(1276, 1, 'en', 'core/base/base', 'yes', 'Yes', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1277, 1, 'en', 'core/base/base', 'no', 'No', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1278, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1279, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1280, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1281, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1282, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1283, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1284, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1285, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1286, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1287, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1288, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1289, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1290, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1291, 1, 'en', 'core/base/base', 'image', 'Image', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1292, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1293, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1294, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1295, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1296, 1, 'en', 'core/base/base', 'tools', 'Tools', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1297, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1298, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1299, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1300, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1301, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1302, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2023-05-02 21:04:39', '2023-05-02 21:04:39'),
(1303, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1304, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1305, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1306, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1307, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1308, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1309, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1310, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1311, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1312, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1313, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1314, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1315, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1316, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1317, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1318, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1319, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1320, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1321, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1322, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1323, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1324, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\":link\">clicking here</a>.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1325, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1326, 1, 'en', 'core/base/errors', 'results_not_found', 'Results not found!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1327, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1328, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1329, 1, 'en', 'core/base/forms', 'save', 'Save & Exit', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1330, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1331, 1, 'en', 'core/base/forms', 'image', 'Image', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1332, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1333, 1, 'en', 'core/base/forms', 'create', 'Create', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1334, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1335, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1336, 1, 'en', 'core/base/forms', 'ok', 'OK', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1337, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1338, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1339, 1, 'en', 'core/base/forms', 'template', 'Template', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1340, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1341, 1, 'en', 'core/base/forms', 'file', 'File', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1342, 1, 'en', 'core/base/forms', 'content', 'Content', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1343, 1, 'en', 'core/base/forms', 'description', 'Description', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1344, 1, 'en', 'core/base/forms', 'name', 'Name', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1345, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1346, 1, 'en', 'core/base/forms', 'title', 'Title', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1347, 1, 'en', 'core/base/forms', 'value', 'Value', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1348, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1349, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1350, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1351, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1352, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1353, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1354, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1355, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1356, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1357, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1358, 1, 'en', 'core/base/forms', 'update', 'Update', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1359, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1360, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1361, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1362, 1, 'en', 'core/base/forms', 'order', 'Order', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1363, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1364, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1365, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1366, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1367, 1, 'en', 'core/base/forms', 'add', 'Add', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1368, 1, 'en', 'core/base/forms', 'link', 'Link', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1369, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1370, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1371, 1, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1372, 1, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1373, 1, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1374, 1, 'en', 'core/base/forms', 'view_preview_image', 'View preview image', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1375, 1, 'en', 'core/base/forms', 'edit_item', 'Edit \":name\"', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1376, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1377, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1378, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1379, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1380, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1381, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1382, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1383, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1384, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2023-05-02 21:04:40', '2023-05-02 21:04:40');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1385, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1386, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1387, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1388, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1389, 1, 'en', 'core/base/layouts', 'home', 'Home', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1390, 1, 'en', 'core/base/layouts', 'search', 'Search', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1391, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1392, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1393, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1394, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1395, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1396, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1397, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1398, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1399, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1400, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1401, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1402, 1, 'en', 'core/base/notices', 'error', 'Error!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1403, 1, 'en', 'core/base/notices', 'success', 'Success!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1404, 1, 'en', 'core/base/notices', 'info', 'Info!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1405, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1406, 1, 'en', 'core/base/notifications', 'notifications', 'Notifications', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1407, 1, 'en', 'core/base/notifications', 'mark_as_read', 'Mark as read', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1408, 1, 'en', 'core/base/notifications', 'clear', 'Clear', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1409, 1, 'en', 'core/base/notifications', 'no_notification_here', 'No notifications here', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1410, 1, 'en', 'core/base/notifications', 'please_check_again_later', 'Please check again later', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1411, 1, 'en', 'core/base/notifications', 'view_more', 'View more...', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1412, 1, 'en', 'core/base/notifications', 'view', 'View', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1413, 1, 'en', 'core/base/notifications', 'show_more', 'Show more', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1414, 1, 'en', 'core/base/notifications', 'show_less', 'Show less', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1415, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1416, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1417, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1418, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1419, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1420, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1421, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1422, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1423, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1424, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1425, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1426, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1427, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1428, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1429, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1430, 1, 'en', 'core/base/system', 'user.email', 'Email', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1431, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1432, 1, 'en', 'core/base/system', 'user.username', 'Username', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1433, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1434, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1435, 1, 'en', 'core/base/system', 'user.create', 'Create', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1436, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1437, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1438, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1439, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1440, 1, 'en', 'core/base/system', 'options.info', 'System information', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1441, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1442, 1, 'en', 'core/base/system', 'info.title', 'System information', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1443, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1444, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1445, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1446, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1447, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1448, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1449, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1450, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1451, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1452, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1453, 1, 'en', 'core/base/system', 'debug_mode_off', 'Debug Mode Off', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1454, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1455, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1456, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1457, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1458, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1459, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1460, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1461, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1462, 1, 'en', 'core/base/system', 'database', 'Database', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1463, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1464, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1465, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2023-05-02 21:04:40', '2023-05-02 21:04:40'),
(1466, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1467, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1468, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1469, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1470, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1471, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1472, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1473, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1474, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1475, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1476, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1477, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1478, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1479, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1480, 1, 'en', 'core/base/system', 'version', 'Version', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1481, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1482, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1483, 1, 'en', 'core/base/system', 'updater', 'System Updater', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1484, 1, 'en', 'core/base/system', 'zip', 'Zip Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1485, 1, 'en', 'core/base/system', 'iconv', 'Iconv Ext', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1486, 1, 'en', 'core/base/system', 'memory_limit', 'Memory limit', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1487, 1, 'en', 'core/base/system', 'max_execution_time', 'Max execution time (s)', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1488, 1, 'en', 'core/base/system', 'allow_url_fopen_enabled', 'allow_url_fopen enabled', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1489, 1, 'en', 'core/base/system', 'cleanup.title', 'Cleanup System', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1490, 1, 'en', 'core/base/system', 'cleanup.table.name', 'Table Name', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1491, 1, 'en', 'core/base/system', 'cleanup.table.count', 'Records', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1492, 1, 'en', 'core/base/system', 'cleanup.backup_alert', 'Please backup your database and script files before cleanup, it will clear your data in database.', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1493, 1, 'en', 'core/base/system', 'cleanup.messenger_choose_without_table', 'Please choose to ignore tables that do not want to be cleaned', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1494, 1, 'en', 'core/base/system', 'cleanup.messenger_confirm_cleanup', 'Are you sure you want to database cleanup action, it will clear your data in database?', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1495, 1, 'en', 'core/base/system', 'cleanup.submit_button', 'Cleanup', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1496, 1, 'en', 'core/base/system', 'cleanup.success_message', 'Cleaned data successfully', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1497, 1, 'en', 'core/base/system', 'cleanup.not_enabled_yet', 'This featured is not enabled yet. <br />Please add into .env: <code>CMS_ENABLED_CLEANUP_DATABASE=true</code> to enable this feature!', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1498, 1, 'en', 'core/base/tables', 'id', 'ID', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1499, 1, 'en', 'core/base/tables', 'name', 'Name', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1500, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1501, 1, 'en', 'core/base/tables', 'title', 'Title', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1502, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1503, 1, 'en', 'core/base/tables', 'order', 'Order', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1504, 1, 'en', 'core/base/tables', 'status', 'Status', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1505, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1506, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1507, 1, 'en', 'core/base/tables', 'description', 'Description', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1508, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1509, 1, 'en', 'core/base/tables', 'url', 'URL', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1510, 1, 'en', 'core/base/tables', 'author', 'Author', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1511, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1512, 1, 'en', 'core/base/tables', 'column', 'Column', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1513, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1514, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1515, 1, 'en', 'core/base/tables', 'views', 'Views', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1516, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1517, 1, 'en', 'core/base/tables', 'session', 'Session', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1518, 1, 'en', 'core/base/tables', 'activated', 'activated', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1519, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1520, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1521, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1522, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1523, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1524, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1525, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1526, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1527, 1, 'en', 'core/base/tables', 'export', 'Export', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1528, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1529, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1530, 1, 'en', 'core/base/tables', 'print', 'Print', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1531, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1532, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1533, 1, 'en', 'core/base/tables', 'display', 'Display', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1534, 1, 'en', 'core/base/tables', 'all', 'All', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1535, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1536, 1, 'en', 'core/base/tables', 'action', 'Actions', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1537, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1538, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1539, 1, 'en', 'core/base/tables', 'save', 'Save', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1540, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1541, 1, 'en', 'core/base/tables', 'to', 'to', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1542, 1, 'en', 'core/base/tables', 'in', 'in', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1543, 1, 'en', 'core/base/tables', 'records', 'records', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1544, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1545, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1546, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1547, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1548, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1549, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1550, 1, 'en', 'core/base/tables', 'template', 'Template', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1551, 1, 'en', 'core/base/tables', 'email', 'Email', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1552, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1553, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1554, 1, 'en', 'core/base/tables', 'image', 'Image', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1555, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1556, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1557, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1558, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1559, 1, 'en', 'core/base/tabs', 'file', 'Files', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1560, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1561, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2023-05-02 21:04:41', '2023-05-02 21:04:41'),
(1819, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1820, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1821, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1822, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1823, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1824, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1825, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1826, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1827, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1828, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1829, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1830, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1831, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1832, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1833, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Today', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1834, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Yesterday', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1835, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'This Week', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1836, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Last 7 Days', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1837, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'This Month', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1838, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Last 30 Days', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1839, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'This Year', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1854, 1, 'en', 'core/media/media', 'filter', 'Filter', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1855, 1, 'en', 'core/media/media', 'everything', 'Everything', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1856, 1, 'en', 'core/media/media', 'image', 'Image', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1857, 1, 'en', 'core/media/media', 'video', 'Video', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1858, 1, 'en', 'core/media/media', 'document', 'Document', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1859, 1, 'en', 'core/media/media', 'view_in', 'View in', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1860, 1, 'en', 'core/media/media', 'all_media', 'All media', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1861, 1, 'en', 'core/media/media', 'trash', 'Trash', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1862, 1, 'en', 'core/media/media', 'recent', 'Recent', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1863, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1864, 1, 'en', 'core/media/media', 'upload', 'Upload', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1865, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1866, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1867, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1868, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search in current folder', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1869, 1, 'en', 'core/media/media', 'sort', 'Sort', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1870, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1871, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1872, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1873, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1874, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1875, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1876, 1, 'en', 'core/media/media', 'actions', 'Actions', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1877, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1878, 1, 'en', 'core/media/media', 'insert', 'Insert', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1879, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1880, 1, 'en', 'core/media/media', 'create', 'Create', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1881, 1, 'en', 'core/media/media', 'rename', 'Rename', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1882, 1, 'en', 'core/media/media', 'crop', 'Crop', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1883, 1, 'en', 'core/media/media', 'close', 'Close', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1884, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1885, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1886, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1887, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1888, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1889, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1890, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1891, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1892, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1893, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1894, 1, 'en', 'core/media/media', 'alt_text', 'Alt text', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1895, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1896, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1897, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1898, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1899, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1900, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1901, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1902, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1903, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1904, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1905, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1906, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1907, 1, 'en', 'core/media/media', 'crop_success', 'Crop image successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1908, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1909, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1910, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1911, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1912, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1913, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1914, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1915, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1916, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1917, 1, 'en', 'core/media/media', 'file_too_big_readable_size', 'File too big. Max file upload is :size.', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1918, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1919, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1920, 1, 'en', 'core/media/media', 'failed_to_crop_image', 'The file cropping must be image type', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1921, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1922, 1, 'en', 'core/media/media', 'add', 'Add media', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1923, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1924, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1925, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1926, 1, 'en', 'core/media/media', 'javascript.alt', 'Alt text', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1927, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1928, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1929, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1930, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1931, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2023-05-02 21:04:43', '2023-05-02 21:04:43'),
(1932, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1933, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1934, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1935, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1936, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1937, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1938, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1939, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1940, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1941, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1942, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1943, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1944, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1945, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1946, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1947, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1948, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1949, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1950, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1951, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1952, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1953, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.crop', 'Crop', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1954, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1955, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1956, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1957, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1958, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1959, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1960, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1961, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1962, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1963, 1, 'en', 'core/media/media', 'javascript.change_image', 'Change image', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1964, 1, 'en', 'core/media/media', 'javascript.delete_image', 'Delete image', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1965, 1, 'en', 'core/media/media', 'javascript.choose_image', 'Choose image', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1966, 1, 'en', 'core/media/media', 'javascript.preview_image', 'Preview image', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1967, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1968, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1969, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1970, 1, 'en', 'core/media/media', 'download_link', 'Download', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1971, 1, 'en', 'core/media/media', 'url', 'URL', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1972, 1, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1973, 1, 'en', 'core/media/media', 'downloading', 'Downloading...', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1974, 1, 'en', 'core/media/media', 'prepare_file_to_download', 'Preparing file to download...', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1975, 1, 'en', 'core/media/media', 'update_alt_text_success', 'Update alt text successfully!', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1976, 1, 'en', 'core/media/media', 'cropper.height', 'Height', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1977, 1, 'en', 'core/media/media', 'cropper.width', 'Width', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1978, 1, 'en', 'core/media/media', 'cropper.aspect_ratio', 'Aspect ratio?', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(1979, 1, 'en', 'core/media/media', 'unable_to_write', 'Unable to write file. Please chmod folder \":folder\" to make it writeable!', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2088, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2089, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2090, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2091, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2092, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2093, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2094, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2095, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2096, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2097, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2023-05-02 21:04:44', '2023-05-02 21:04:44'),
(2098, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2099, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2100, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2101, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2102, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2103, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2104, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2105, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2106, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2107, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2108, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2109, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2110, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2111, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2112, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2113, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2114, 1, 'en', 'core/setting/setting', 'general.disable_cache_in_the_admin_panel', 'Disable cache in the admin panel?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2115, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2116, 1, 'en', 'core/setting/setting', 'general.enable_cache_site_map', 'Enable cache site map?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2117, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map (minutes)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2118, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2119, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2120, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2121, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2122, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2123, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2124, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2125, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2126, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2127, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2128, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2129, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2130, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2131, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2132, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2133, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2134, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2135, 1, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2136, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2137, 1, 'en', 'core/setting/setting', 'general.minutes', 'minutes', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2138, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2139, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2140, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2141, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2142, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2143, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2144, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2145, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2146, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2147, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2148, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2149, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2150, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2151, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2152, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2153, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2154, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2155, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2156, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2157, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2158, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2159, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2160, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2161, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2023-05-02 21:04:45', '2023-05-02 21:04:45');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2162, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2163, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2164, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2165, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2166, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2167, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2168, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2169, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2170, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2171, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2172, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2173, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2174, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2175, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2176, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2177, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2178, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2179, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2180, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2181, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2182, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2183, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2184, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2185, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2186, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2187, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2188, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2189, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2190, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2191, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2192, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2193, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2194, 1, 'en', 'core/setting/setting', 'media.aws_endpoint', 'AWS Endpoint (Optional)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2195, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2196, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2197, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2198, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2199, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2200, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2201, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2202, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2203, 1, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2204, 1, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2205, 1, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2206, 1, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2207, 1, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2208, 1, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2209, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2210, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2211, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2212, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2213, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2214, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2215, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2216, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2217, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2218, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2219, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2220, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2221, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2222, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2223, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2224, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2225, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2226, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2227, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2228, 1, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2229, 1, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2230, 1, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2231, 1, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2232, 1, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2233, 1, 'en', 'core/setting/setting', 'media.optional', 'Optional', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2234, 1, 'en', 'core/setting/setting', 'media.sizes', 'Media thumbnails sizes', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2235, 1, 'en', 'core/setting/setting', 'media.media_sizes_helper', 'Set width or height to 0 if you just want to crop by width or height. Need to click on \"Generate thumbnails\" to apply changes.', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2236, 1, 'en', 'core/setting/setting', 'media.width', 'Width', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2237, 1, 'en', 'core/setting/setting', 'media.height', 'Height', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2238, 1, 'en', 'core/setting/setting', 'media.default_size_value', 'Default: :size', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2239, 1, 'en', 'core/setting/setting', 'media.all', 'All', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2240, 1, 'en', 'core/setting/setting', 'media.media_folders_can_add_watermark', 'Add watermark for images in folders:', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2241, 1, 'en', 'core/setting/setting', 'media.max_upload_filesize', 'Max upload filesize (MB)', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2242, 1, 'en', 'core/setting/setting', 'media.max_upload_filesize_placeholder', 'Default: :size, must less than :size.', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2243, 1, 'en', 'core/setting/setting', 'media.max_upload_filesize_helper', 'Your server allows to upload files maximum :size, you can change this value to limit upload filesize.', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2244, 1, 'en', 'core/setting/setting', 'media.image_processing_library', 'Image processing library', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2245, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2246, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2247, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2248, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2249, 1, 'en', 'core/setting/setting', 'template', 'Template', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2250, 1, 'en', 'core/setting/setting', 'description', 'Description', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2251, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2252, 1, 'en', 'core/setting/setting', 'send', 'Send', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2253, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2254, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2255, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2256, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2257, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2258, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2259, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2260, 1, 'en', 'core/setting/setting', 'saving', 'Saving...', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2261, 1, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2023-05-02 21:04:45', '2023-05-02 21:04:45'),
(2262, 1, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2263, 1, 'en', 'core/setting/setting', 'generate', 'Generate', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2264, 1, 'en', 'core/setting/setting', 'generate_thumbnails', 'Generate thumbnails', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2265, 1, 'en', 'core/setting/setting', 'generate_thumbnails_success', 'Generate thumbnails successfully. :count files are generated!', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2266, 1, 'en', 'core/setting/setting', 'generate_thumbnails_error', 'We are unable to regenerate thumbnail for these files :count files!', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2267, 1, 'en', 'core/setting/setting', 'generate_thumbnails_description', 'Are you sure you want to re-generate thumbnails for all images? It will take time so please DO NOT leave this page, wait until it is finished.', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2268, 1, 'en', 'core/setting/setting', 'enable_chunk_description', 'Chunk size upload is used to upload large file size.', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2269, 1, 'en', 'core/setting/setting', 'watermark_description', 'WARNING: Watermark is just added to new uploaded images, it won\'t be added to existing images. Disable watermark won\'t remove watermark from existing images.', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2270, 1, 'en', 'core/setting/setting', 'submit', 'Submit', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2271, 1, 'en', 'core/setting/setting', 'back', 'Back', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2272, 1, 'en', 'core/setting/setting', 'enter_sample_value', 'Enter sample values for testing', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2273, 1, 'en', 'core/setting/setting', 'preview', 'Preview', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2420, 1, 'en', 'core/table/table', 'operations', 'Operations', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2421, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2422, 1, 'en', 'core/table/table', 'display', 'Display', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2423, 1, 'en', 'core/table/table', 'all', 'All', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2424, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2425, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2426, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2427, 1, 'en', 'core/table/table', 'to', 'to', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2428, 1, 'en', 'core/table/table', 'in', 'in', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2429, 1, 'en', 'core/table/table', 'records', 'records', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2430, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2431, 1, 'en', 'core/table/table', 'no_record', 'No record', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2432, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2023-05-02 21:04:46', '2023-05-02 21:04:46'),
(2433, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2434, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2435, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2436, 1, 'en', 'core/table/table', 'delete', 'Delete', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2437, 1, 'en', 'core/table/table', 'close', 'Close', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2438, 1, 'en', 'core/table/table', 'contains', 'Contains', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2439, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2440, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2441, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2442, 1, 'en', 'core/table/table', 'value', 'Value', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2443, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2444, 1, 'en', 'core/table/table', 'reset', 'Reset', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2445, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2446, 1, 'en', 'core/table/table', 'apply', 'Apply', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2447, 1, 'en', 'core/table/table', 'filters', 'Filters', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2448, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2449, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2450, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2451, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2452, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2453, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2454, 1, 'en', 'core/table/table', 'search', 'Search...', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2522, 1, 'en', 'dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2523, 1, 'en', 'dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2524, 1, 'en', 'dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2525, 1, 'en', 'dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2526, 1, 'en', 'dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2527, 1, 'en', 'dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2528, 1, 'en', 'dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2529, 1, 'en', 'dashboard/dashboard', 'hide', 'Hide', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2530, 1, 'en', 'dashboard/dashboard', 'reload', 'Reload', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2531, 1, 'en', 'dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2532, 1, 'en', 'dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2533, 1, 'en', 'dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2534, 1, 'en', 'dashboard/dashboard', 'fullscreen', 'Full screen', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2535, 1, 'en', 'dashboard/dashboard', 'title', 'Dashboard', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2550, 1, 'en', 'media/media', 'filter', 'Filter', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2551, 1, 'en', 'media/media', 'everything', 'Everything', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2552, 1, 'en', 'media/media', 'image', 'Image', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2553, 1, 'en', 'media/media', 'video', 'Video', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2554, 1, 'en', 'media/media', 'document', 'Document', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2555, 1, 'en', 'media/media', 'view_in', 'View in', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2556, 1, 'en', 'media/media', 'all_media', 'All media', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2557, 1, 'en', 'media/media', 'trash', 'Trash', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2558, 1, 'en', 'media/media', 'recent', 'Recent', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2559, 1, 'en', 'media/media', 'favorites', 'Favorites', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2560, 1, 'en', 'media/media', 'upload', 'Upload', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2561, 1, 'en', 'media/media', 'create_folder', 'Create folder', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2562, 1, 'en', 'media/media', 'refresh', 'Refresh', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2563, 1, 'en', 'media/media', 'empty_trash', 'Empty trash', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2564, 1, 'en', 'media/media', 'search_file_and_folder', 'Search in current folder', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2565, 1, 'en', 'media/media', 'sort', 'Sort', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2566, 1, 'en', 'media/media', 'file_name_asc', 'File name - ASC', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2567, 1, 'en', 'media/media', 'file_name_desc', 'File name - DESC', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2568, 1, 'en', 'media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2569, 1, 'en', 'media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2570, 1, 'en', 'media/media', 'size_asc', 'Size - ASC', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2571, 1, 'en', 'media/media', 'size_desc', 'Size - DESC', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2572, 1, 'en', 'media/media', 'actions', 'Actions', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2573, 1, 'en', 'media/media', 'nothing_is_selected', 'Nothing is selected', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2574, 1, 'en', 'media/media', 'insert', 'Insert', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2575, 1, 'en', 'media/media', 'folder_name', 'Folder name', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2576, 1, 'en', 'media/media', 'create', 'Create', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2577, 1, 'en', 'media/media', 'rename', 'Rename', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2578, 1, 'en', 'media/media', 'close', 'Close', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2579, 1, 'en', 'media/media', 'save_changes', 'Save changes', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2580, 1, 'en', 'media/media', 'move_to_trash', 'Move items to trash', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2581, 1, 'en', 'media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2582, 1, 'en', 'media/media', 'confirm', 'Confirm', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2583, 1, 'en', 'media/media', 'confirm_delete', 'Delete item(s)', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2584, 1, 'en', 'media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2585, 1, 'en', 'media/media', 'empty_trash_title', 'Empty trash', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2586, 1, 'en', 'media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2587, 1, 'en', 'media/media', 'up_level', 'Up one level', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2588, 1, 'en', 'media/media', 'upload_progress', 'Upload progress', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2589, 1, 'en', 'media/media', 'folder_created', 'Folder is created successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2590, 1, 'en', 'media/media', 'gallery', 'Media gallery', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2591, 1, 'en', 'media/media', 'trash_error', 'Error when delete selected item(s)', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2592, 1, 'en', 'media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2593, 1, 'en', 'media/media', 'restore_error', 'Error when restore selected item(s)', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2594, 1, 'en', 'media/media', 'restore_success', 'Restore selected item(s) successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2595, 1, 'en', 'media/media', 'copy_success', 'Copied selected item(s) successfully!', '2023-05-02 21:04:47', '2023-05-02 21:04:47'),
(2596, 1, 'en', 'media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2597, 1, 'en', 'media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2598, 1, 'en', 'media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2599, 1, 'en', 'media/media', 'rename_error', 'Error when rename item(s)', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2600, 1, 'en', 'media/media', 'rename_success', 'Rename selected item(s) successfully!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2601, 1, 'en', 'media/media', 'empty_trash_success', 'Empty trash successfully!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2602, 1, 'en', 'media/media', 'invalid_action', 'Invalid action!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2603, 1, 'en', 'media/media', 'file_not_exists', 'File is not exists!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2604, 1, 'en', 'media/media', 'download_file_error', 'Error when downloading files!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2605, 1, 'en', 'media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2606, 1, 'en', 'media/media', 'can_not_download_file', 'Can not download this file!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2607, 1, 'en', 'media/media', 'invalid_request', 'Invalid request!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2608, 1, 'en', 'media/media', 'add_success', 'Add item successfully!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2609, 1, 'en', 'media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2610, 1, 'en', 'media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2611, 1, 'en', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2612, 1, 'en', 'media/media', 'menu_name', 'Media', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2613, 1, 'en', 'media/media', 'add', 'Add media', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2614, 1, 'en', 'media/media', 'javascript.name', 'Name', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2615, 1, 'en', 'media/media', 'javascript.url', 'URL', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2616, 1, 'en', 'media/media', 'javascript.full_url', 'Full URL', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2617, 1, 'en', 'media/media', 'javascript.size', 'Size', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2618, 1, 'en', 'media/media', 'javascript.mime_type', 'Type', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2619, 1, 'en', 'media/media', 'javascript.created_at', 'Uploaded at', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2620, 1, 'en', 'media/media', 'javascript.updated_at', 'Modified at', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2621, 1, 'en', 'media/media', 'javascript.nothing_selected', 'Nothing is selected', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2622, 1, 'en', 'media/media', 'javascript.visit_link', 'Open link', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2623, 1, 'en', 'media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2624, 1, 'en', 'media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2625, 1, 'en', 'media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2626, 1, 'en', 'media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2627, 1, 'en', 'media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2628, 1, 'en', 'media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2629, 1, 'en', 'media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2630, 1, 'en', 'media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2631, 1, 'en', 'media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2632, 1, 'en', 'media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2633, 1, 'en', 'media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2634, 1, 'en', 'media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2635, 1, 'en', 'media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2636, 1, 'en', 'media/media', 'javascript.no_item.default.title', 'No items', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2637, 1, 'en', 'media/media', 'javascript.no_item.default.message', 'This directory has no item', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2638, 1, 'en', 'media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2639, 1, 'en', 'media/media', 'javascript.message.error_header', 'Error', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2640, 1, 'en', 'media/media', 'javascript.message.success_header', 'Success', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2641, 1, 'en', 'media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2642, 1, 'en', 'media/media', 'javascript.actions_list.basic.preview', 'Preview', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2643, 1, 'en', 'media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2644, 1, 'en', 'media/media', 'javascript.actions_list.file.rename', 'Rename', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2645, 1, 'en', 'media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2646, 1, 'en', 'media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2647, 1, 'en', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2648, 1, 'en', 'media/media', 'javascript.actions_list.other.download', 'Download', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2649, 1, 'en', 'media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2650, 1, 'en', 'media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2651, 1, 'en', 'media/media', 'javascript.actions_list.other.restore', 'Restore', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2652, 1, 'en', 'media/media', 'name_invalid', 'The folder name has invalid character(s).', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2653, 1, 'en', 'media/media', 'url_invalid', 'Please provide a valid URL', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2654, 1, 'en', 'media/media', 'path_invalid', 'Please provide a valid path', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2655, 1, 'en', 'media/media', 'download_link', 'Download', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2656, 1, 'en', 'media/media', 'url', 'URL', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2657, 1, 'en', 'media/media', 'download_explain', 'Enter one URL per line.', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2658, 1, 'en', 'media/media', 'downloading', 'Downloading...', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2767, 1, 'en', 'packages/api/api', 'settings', 'API Settings', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2768, 1, 'en', 'packages/api/api', 'save_settings', 'Save settings', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2769, 1, 'en', 'packages/api/api', 'setting_title', 'API settings', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2770, 1, 'en', 'packages/api/api', 'setting_description', 'Settings for API', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2771, 1, 'en', 'packages/api/api', 'api_enabled', 'API enabled?', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2772, 1, 'en', 'packages/get-started/get-started', 'welcome_title', 'Welcome to your admin dashboard!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2773, 1, 'en', 'packages/get-started/get-started', 'welcome_description', 'In a few short steps, you can have your new dashboard up and running!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2774, 1, 'en', 'packages/get-started/get-started', 'get_started', 'Get Started!', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2775, 1, 'en', 'packages/get-started/get-started', 'customize_branding_title', 'Customize branding', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2776, 1, 'en', 'packages/get-started/get-started', 'customize_branding_description', 'Customize your site with colors, logo and subdomain to match your business unique branding and identity.', '2023-05-02 21:04:48', '2023-05-02 21:04:48'),
(2777, 1, 'en', 'packages/get-started/get-started', 'colors', 'Colors', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2778, 1, 'en', 'packages/get-started/get-started', 'fonts', 'Fonts', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2779, 1, 'en', 'packages/get-started/get-started', 'primary_color', 'Primary color', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2780, 1, 'en', 'packages/get-started/get-started', 'primary_font', 'Primary font', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2781, 1, 'en', 'packages/get-started/get-started', 'setup_wizard_button', ':link to finish Quick setup Wizard!', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2782, 1, 'en', 'packages/get-started/get-started', 'click_here', 'Click here', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2783, 1, 'en', 'packages/get-started/get-started', 'site_title', 'Site title', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2784, 1, 'en', 'packages/get-started/get-started', 'identify', 'Identify', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2785, 1, 'en', 'packages/get-started/get-started', 'logo', 'Logo', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2786, 1, 'en', 'packages/get-started/get-started', 'admin_logo', 'Admin logo', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2787, 1, 'en', 'packages/get-started/get-started', 'favicon', 'Favicon', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2788, 1, 'en', 'packages/get-started/get-started', 'admin_favicon', 'Admin favicon', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2789, 1, 'en', 'packages/get-started/get-started', 'next_step', 'Next step', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2790, 1, 'en', 'packages/get-started/get-started', 'site_ready_title', 'Your site is ready!', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2791, 1, 'en', 'packages/get-started/get-started', 'site_ready_description', 'Welcome to your new site! Your website has been created and populated with sample data. You are in the admin area of your site where you can set up everything else needed to complete your site.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2792, 1, 'en', 'packages/get-started/get-started', 'finish', 'Finish', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2793, 1, 'en', 'packages/get-started/get-started', 'exit_wizard_title', 'Are you sure you want to exit the Quick Setup Wizard?', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2794, 1, 'en', 'packages/get-started/get-started', 'exit_wizard_confirm', 'Yes, I\'ll finish it later', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2795, 1, 'en', 'packages/get-started/get-started', 'exit_wizard_cancel', 'No, take me back to the wizard', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2796, 1, 'en', 'packages/get-started/get-started', 'change_default_account_info_title', 'Change default account info', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2797, 1, 'en', 'packages/get-started/get-started', 'change_default_account_info_description', 'The default account is using a weak password. You need to change it to a complex password for better security.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2798, 1, 'en', 'packages/get-started/get-started', 'username', 'Username', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2799, 1, 'en', 'packages/get-started/get-started', 'email', 'Email', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2800, 1, 'en', 'packages/get-started/get-started', 'password', 'Password', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2801, 1, 'en', 'packages/get-started/get-started', 'password_confirmation', 'Password confirmation', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2802, 1, 'en', 'packages/installer/installer', 'title', 'Installer', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2803, 1, 'en', 'packages/installer/installer', 'next', 'Next Step', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2804, 1, 'en', 'packages/installer/installer', 'back', 'Previous', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2805, 1, 'en', 'packages/installer/installer', 'finish', 'Install', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2806, 1, 'en', 'packages/installer/installer', 'installation', 'Installation', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2807, 1, 'en', 'packages/installer/installer', 'forms.errorTitle', 'The following errors occurred:', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2808, 1, 'en', 'packages/installer/installer', 'welcome.templateTitle', 'Welcome', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2809, 1, 'en', 'packages/installer/installer', 'welcome.title', 'Welcome', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2810, 1, 'en', 'packages/installer/installer', 'welcome.message', 'Before getting started, we need some information on the database. You will need to know the following items before proceeding.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2811, 1, 'en', 'packages/installer/installer', 'welcome.next', 'Let\'s go', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2812, 1, 'en', 'packages/installer/installer', 'requirements.templateTitle', 'Step 1 | Server Requirements', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2813, 1, 'en', 'packages/installer/installer', 'requirements.title', 'Server Requirements', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2814, 1, 'en', 'packages/installer/installer', 'requirements.next', 'Check Permissions', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2815, 1, 'en', 'packages/installer/installer', 'permissions.templateTitle', 'Step 2 | Permissions', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2816, 1, 'en', 'packages/installer/installer', 'permissions.title', 'Permissions', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2817, 1, 'en', 'packages/installer/installer', 'permissions.next', 'Configure Environment', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2818, 1, 'en', 'packages/installer/installer', 'environment.wizard.templateTitle', 'Environment Settings', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2819, 1, 'en', 'packages/installer/installer', 'environment.wizard.title', 'Environment Settings', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2820, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.name_required', 'An environment name is required.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2821, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_label', 'Site title', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2822, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_placeholder', 'Site title', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2823, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_label', 'URL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2824, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_placeholder', 'URL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2825, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label', 'Database Connection', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2826, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_mysql', 'MySQL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2827, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_sqlite', 'SQLite', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2828, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_pgsql', 'PostgreSQL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2829, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_label', 'Database host', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2830, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_placeholder', 'Database host', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2831, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_label', 'Database port', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2832, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_placeholder', 'Database port', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2833, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_label', 'Database name', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2834, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_placeholder', 'Database name', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2835, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_label', 'Database username', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2836, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_placeholder', 'Database username', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2837, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_label', 'Database password', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2838, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_placeholder', 'Database password', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2839, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.buttons.install', 'Install', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2840, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_helper', 'If you use Laravel Sail, just change DB_HOST to DB_HOST=mysql. On some hosting DB_HOST can be localhost instead of 127.0.0.1', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2841, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connections.mysql', 'MySQL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2842, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connections.sqlite', 'SQLite', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2843, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connections.pgsql', 'PostgreSQL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2844, 1, 'en', 'packages/installer/installer', 'environment.success', 'Your .env file settings have been saved.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2845, 1, 'en', 'packages/installer/installer', 'environment.errors', 'Unable to save the .env file, Please create it manually.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2846, 1, 'en', 'packages/installer/installer', 'install', 'Install', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2847, 1, 'en', 'packages/installer/installer', 'final.title', 'Installation Finished', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2848, 1, 'en', 'packages/installer/installer', 'final.templateTitle', 'Installation Finished', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2849, 1, 'en', 'packages/installer/installer', 'final.finished', 'Application has been successfully installed.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2850, 1, 'en', 'packages/installer/installer', 'final.exit', 'Click here to exit', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2851, 1, 'en', 'packages/installer/installer', 'create_account', 'Create account', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2852, 1, 'en', 'packages/installer/installer', 'first_name', 'First name', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2853, 1, 'en', 'packages/installer/installer', 'last_name', 'Last name', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2854, 1, 'en', 'packages/installer/installer', 'username', 'Username', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2855, 1, 'en', 'packages/installer/installer', 'email', 'Email', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2856, 1, 'en', 'packages/installer/installer', 'password', 'Password', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2857, 1, 'en', 'packages/installer/installer', 'password_confirmation', 'Password confirmation', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2858, 1, 'en', 'packages/installer/installer', 'create', 'Create', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2859, 1, 'en', 'packages/installer/installer', 'install_success', 'Installed successfully!', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2860, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2861, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2862, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2863, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2864, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2865, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2866, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2867, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2868, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2869, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2870, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2871, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2872, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2873, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2023-05-02 21:04:49', '2023-05-02 21:04:49');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2874, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2875, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2876, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2877, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2878, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2879, 1, 'en', 'packages/menu/menu', 'title_placeholder', 'Title', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2880, 1, 'en', 'packages/menu/menu', 'icon_placeholder', 'Icon', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2881, 1, 'en', 'packages/menu/menu', 'url_placeholder', 'URL', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2882, 1, 'en', 'packages/menu/menu', 'css_class_placeholder', 'CSS class', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2883, 1, 'en', 'packages/menu/menu', 'menu_id', 'Menu ID', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2904, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2905, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2906, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2907, 1, 'en', 'packages/optimize/optimize', 'collapse_white_space', 'Collapse white space', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2908, 1, 'en', 'packages/optimize/optimize', 'collapse_white_space_description', 'This filter reduces bytes transmitted in an HTML file by removing unnecessary whitespace.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2909, 1, 'en', 'packages/optimize/optimize', 'elide_attributes', 'Elide attributes', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2910, 1, 'en', 'packages/optimize/optimize', 'elide_attributes_description', 'This filter reduces the transfer size of HTML files by removing attributes from tags when the specified value is equal to the default value for that attribute. This can save a modest number of bytes, and may make the document more compressible by canonicalizing the affected tags.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2911, 1, 'en', 'packages/optimize/optimize', 'inline_css', 'Inline CSS', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2912, 1, 'en', 'packages/optimize/optimize', 'inline_css_description', 'This filter transforms the inline \"style\" attribute of tags into classes by moving the CSS to the header.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2913, 1, 'en', 'packages/optimize/optimize', 'insert_dns_prefetch', 'Insert DNS prefetch', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2914, 1, 'en', 'packages/optimize/optimize', 'insert_dns_prefetch_description', 'This filter injects tags in the HEAD to enable the browser to do DNS prefetching.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2915, 1, 'en', 'packages/optimize/optimize', 'remove_comments', 'Remove comments', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2916, 1, 'en', 'packages/optimize/optimize', 'remove_comments_description', 'This filter eliminates HTML, JS and CSS comments. The filter reduces the transfer size of HTML files by removing the comments. Depending on the HTML file, this filter can significantly reduce the number of bytes transmitted on the network.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2917, 1, 'en', 'packages/optimize/optimize', 'remove_quotes', 'Remove quotes', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2918, 1, 'en', 'packages/optimize/optimize', 'remove_quotes_description', 'This filter eliminates unnecessary quotation marks from HTML attributes. While required by the various HTML specifications, browsers permit their omission when the value of an attribute is composed of a certain subset of characters (alphanumerics and some punctuation characters).', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2919, 1, 'en', 'packages/optimize/optimize', 'defer_javascript', 'Defer javascript', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2920, 1, 'en', 'packages/optimize/optimize', 'defer_javascript_description', 'Defers the execution of javascript in the HTML. If necessary cancel deferring in some script, use data-pagespeed-no-defer as script attribute to cancel deferring.', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2924, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2925, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2926, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2927, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2928, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2929, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2930, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2931, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2932, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2933, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2934, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2935, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2936, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2937, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2938, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2939, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2940, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2023-05-02 21:04:49', '2023-05-02 21:04:49'),
(2959, 1, 'en', 'packages/plugin-management/marketplace', 'previous', '&laquo; Previous', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2960, 1, 'en', 'packages/plugin-management/marketplace', 'next', 'Next &raquo;', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2961, 1, 'en', 'packages/plugin-management/marketplace', 'showing', 'Showing', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2962, 1, 'en', 'packages/plugin-management/marketplace', 'to', 'to', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2963, 1, 'en', 'packages/plugin-management/marketplace', 'of', 'of', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2964, 1, 'en', 'packages/plugin-management/marketplace', 'results', 'results', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2965, 1, 'en', 'packages/plugin-management/marketplace', 'add_new', 'Add new', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2966, 1, 'en', 'packages/plugin-management/marketplace', 'installed', 'Installed', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2967, 1, 'en', 'packages/plugin-management/marketplace', 'install_now', 'Install now', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2968, 1, 'en', 'packages/plugin-management/marketplace', 'installing', 'Installing...', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2969, 1, 'en', 'packages/plugin-management/marketplace', 'detail', 'Details', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2970, 1, 'en', 'packages/plugin-management/marketplace', 'version', 'Version', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2971, 1, 'en', 'packages/plugin-management/marketplace', 'minimum_core_version', 'Minimum core version', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2972, 1, 'en', 'packages/plugin-management/marketplace', 'last_update', 'Last update', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2973, 1, 'en', 'packages/plugin-management/marketplace', 'compatible_version', 'Compatible with your version', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2974, 1, 'en', 'packages/plugin-management/marketplace', 'incompatible_version', 'Incompatible with your version', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2975, 1, 'en', 'packages/plugin-management/marketplace', 'deactivate', 'Deactivate', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2976, 1, 'en', 'packages/plugin-management/marketplace', 'activate', 'Activate', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2977, 1, 'en', 'packages/plugin-management/marketplace', 'activating', 'Activating...', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2978, 1, 'en', 'packages/plugin-management/marketplace', 'activated', 'Activated', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2979, 1, 'en', 'packages/plugin-management/marketplace', 'connection_aborted', 'Connection Aborted', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2980, 1, 'en', 'packages/plugin-management/marketplace', 'connection_aborted_description', 'Connection Aborted Description', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2981, 1, 'en', 'packages/plugin-management/marketplace', 'api_connect_error', 'Connect to Marketplace API Error, please contact support', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2982, 1, 'en', 'packages/plugin-management/marketplace', 'keyword', 'Keyword', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2983, 1, 'en', 'packages/plugin-management/marketplace', 'search', 'Search', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2984, 1, 'en', 'packages/plugin-management/marketplace', 'all', 'All', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2985, 1, 'en', 'packages/plugin-management/marketplace', 'featured', 'Featured', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2986, 1, 'en', 'packages/plugin-management/marketplace', 'popular', 'Popular', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2987, 1, 'en', 'packages/plugin-management/marketplace', 'top_rated', 'Top Rated', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2988, 1, 'en', 'packages/plugin-management/marketplace', 'install_plugin', 'Install plugin', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2989, 1, 'en', 'packages/plugin-management/marketplace', 'cancel', 'Cancel', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2990, 1, 'en', 'packages/plugin-management/marketplace', 'yes_install', ' Yes! Install', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2991, 1, 'en', 'packages/plugin-management/marketplace', 'message_alert', 'Are you sure you want to install this plugin?', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2992, 1, 'en', 'packages/plugin-management/marketplace', 'folder_permissions', 'Folder does not have permission to write file or the update file path could not be resolved, please contact support', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2993, 1, 'en', 'packages/plugin-management/marketplace', 'unzip_failed', 'Unzip extraction failed', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2994, 1, 'en', 'packages/plugin-management/marketplace', 'unzip_success', 'Download file extracted', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2995, 1, 'en', 'packages/plugin-management/marketplace', 'install_success', 'Installed plugin successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2996, 1, 'en', 'packages/plugin-management/marketplace', 'update_success', 'Updated plugin successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2997, 1, 'en', 'packages/plugin-management/marketplace', 'minimum_core_version_error', 'Cannot install this plugin. Minimum core version is :version.', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2998, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(2999, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3000, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3001, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3002, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3003, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3004, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3005, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3006, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3007, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3008, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3009, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3010, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3011, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3012, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3013, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3014, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3015, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3016, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3017, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3018, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3019, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3020, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3021, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3022, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3023, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3024, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3025, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3026, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3027, 1, 'en', 'packages/plugin-management/plugin', 'plugins_installed', 'Installed Plugins', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3028, 1, 'en', 'packages/plugin-management/plugin', 'plugins_add_new', 'Add new', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3029, 1, 'en', 'packages/plugin-management/plugin', 'update', 'Update', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3030, 1, 'en', 'packages/plugin-management/plugin', 'requirement_not_met', 'Plugin :plugin requires plugin(s): :required_plugins. Do you want to install them and activate :plugin now?', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3031, 1, 'en', 'packages/plugin-management/plugin', 'install', 'Install now', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3032, 1, 'en', 'packages/plugin-management/plugin', 'install_plugin', 'Install Plugin', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3060, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3061, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3062, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3063, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3064, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3070, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3071, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3072, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3073, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3074, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3075, 1, 'en', 'packages/slug/slug', 'settings.available_variables', 'Available variables', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3076, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3077, 1, 'en', 'packages/slug/slug', 'prefix_for', 'Prefix for :name', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3083, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3084, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3085, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3086, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3087, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3088, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3089, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3090, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3091, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3092, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3093, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3094, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3095, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3096, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3097, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3098, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3099, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3100, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3101, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3102, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3103, 1, 'en', 'packages/theme/theme', 'custom_html', 'Custom HTML', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3104, 1, 'en', 'packages/theme/theme', 'custom_header_html', 'Header HTML', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3105, 1, 'en', 'packages/theme/theme', 'custom_header_html_placeholder', 'HTML in header of page, no special tags: script, style, iframe...', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3106, 1, 'en', 'packages/theme/theme', 'custom_body_html', 'Body HTML', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3107, 1, 'en', 'packages/theme/theme', 'custom_body_html_placeholder', 'HTML in body of page, no special tags: script, style, iframe...', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3108, 1, 'en', 'packages/theme/theme', 'custom_footer_html', 'Footer HTML', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3109, 1, 'en', 'packages/theme/theme', 'custom_footer_html_placeholder', 'HTML in footer of page, no special tags: script, style, iframe...', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3110, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3111, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3112, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3113, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3114, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3115, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3116, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3117, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3118, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3119, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2023-05-02 21:04:50', '2023-05-02 21:04:50'),
(3120, 1, 'en', 'packages/theme/theme', 'settings.redirect_404_to_homepage', 'Redirect all not found requests to homepage?', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3121, 1, 'en', 'packages/theme/theme', 'settings.show_guidelines', 'Show guidelines?', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3122, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3123, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3124, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3125, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3126, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3127, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3128, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3129, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3130, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3131, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3132, 1, 'en', 'packages/theme/theme', 'update_custom_html_success', 'Update custom HTML successfully!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3133, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3134, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3135, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3136, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3137, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3138, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3139, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3140, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3164, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3165, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3166, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3167, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3168, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3169, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3170, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3171, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3172, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3173, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3174, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3175, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3176, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3177, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3178, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3179, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3180, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3181, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3182, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3183, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3184, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3223, 1, 'en', 'plugins/ads/ads', 'name', 'Ads', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3224, 1, 'en', 'plugins/ads/ads', 'create', 'New ads', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3225, 1, 'en', 'plugins/ads/ads', 'edit', 'Edit ads', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3226, 1, 'en', 'plugins/ads/ads', 'location', 'Location', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3227, 1, 'en', 'plugins/ads/ads', 'url', 'URL', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3228, 1, 'en', 'plugins/ads/ads', 'expired_at', 'Expired at', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3229, 1, 'en', 'plugins/ads/ads', 'key', 'Key', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3230, 1, 'en', 'plugins/ads/ads', 'shortcode', 'Shortcode', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3231, 1, 'en', 'plugins/ads/ads', 'clicked', 'Clicked', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3232, 1, 'en', 'plugins/ads/ads', 'not_set', 'Not set', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3233, 1, 'en', 'plugins/ads/ads', 'adblock_warning', 'If you are using Adblock browser extension, you need to disable this extension on your site first. It may block your ads if it is enabled on your site! <br /> Tips: Image name SHOULD NOT contain some ads keywords (ad, promotion...)', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3234, 1, 'en', 'plugins/ads/ads', 'select_ad', 'Select Ad', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3235, 1, 'en', 'plugins/ads/ads', 'open_in_new_tab', 'Open in new tab?', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3236, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3237, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3238, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3239, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3240, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3241, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3242, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3243, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3244, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3245, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3246, 1, 'en', 'plugins/analytics/analytics', 'property_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3247, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3248, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3249, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a Google Analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3250, 1, 'en', 'plugins/analytics/analytics', 'property_id_is_invalid', 'Property ID is invalid. Check this: https://developers.google.com/analytics/devguides/reporting/data/v1/property-id', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3251, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3252, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3253, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Measurement ID / Tracking ID', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3254, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: G-76NX8HY29D', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3255, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID for UA', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3256, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID (UA)', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3257, 1, 'en', 'plugins/analytics/analytics', 'settings.analytics_property_id', 'Property ID for GA4', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3258, 1, 'en', 'plugins/analytics/analytics', 'settings.analytics_property_id_description', 'Google Analytics Property ID (GA4)', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3259, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3260, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3261, 1, 'en', 'plugins/analytics/analytics', 'settings.type', 'Type', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3262, 1, 'en', 'plugins/analytics/analytics', 'settings.ua_description', 'Universal Analytics', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3263, 1, 'en', 'plugins/analytics/analytics', 'settings.ga4_description', 'Google Analytics 4 (GA4)', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3264, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3265, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3266, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3267, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2023-05-02 21:04:51', '2023-05-02 21:04:51'),
(3294, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3295, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3296, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3297, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3298, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3299, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3300, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3301, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3302, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3303, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3304, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3305, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3306, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3307, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3308, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3309, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3310, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3311, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3312, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3313, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3314, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3315, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3316, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3317, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3318, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3319, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3346, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3347, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3348, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3349, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3350, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3351, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3352, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3353, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3354, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3355, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3356, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3357, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3358, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3359, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3360, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3361, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3362, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3363, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3364, 1, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3365, 1, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3366, 1, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3367, 1, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3368, 1, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3369, 1, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3370, 1, 'en', 'plugins/backup/backup', 'important_message4', 'It is not a full backup, it is just back up uploaded files and your database.', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3371, 1, 'en', 'plugins/backup/backup', 'cannot_restore_database', 'Cannot restore database. The database backup is missing!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3388, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3389, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3390, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3391, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3392, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3393, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3394, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3395, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3396, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3397, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3398, 1, 'en', 'plugins/blog/base', 'settings.title', 'Blog', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3399, 1, 'en', 'plugins/blog/base', 'settings.description', 'Settings for Blog', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3400, 1, 'en', 'plugins/blog/base', 'settings.enable_blog_post_schema', 'Enable Blog Post Schema?', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3401, 1, 'en', 'plugins/blog/base', 'settings.enable_blog_post_schema_description', 'Learn more: https://schema.org/Article', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3402, 1, 'en', 'plugins/blog/base', 'settings.schema_type', 'Schema type', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3403, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3404, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3405, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3406, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3407, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3408, 1, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3409, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3410, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3411, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3412, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3413, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3414, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3415, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3416, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3417, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3418, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3419, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3420, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3421, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3422, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3423, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3424, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3425, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3426, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3427, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3428, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3429, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3430, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3431, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3432, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3433, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3434, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3435, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3436, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2023-05-02 21:04:52', '2023-05-02 21:04:52'),
(3437, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3438, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3439, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2023-05-02 21:04:53', '2023-05-02 21:04:53');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3440, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3441, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3442, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3443, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3444, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3445, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3446, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3447, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3448, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3449, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3503, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3504, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3505, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3506, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3507, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3508, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3509, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3510, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3511, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3512, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3513, 1, 'en', 'plugins/captcha/captcha', 'numbers.0', 'Zero', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3514, 1, 'en', 'plugins/captcha/captcha', 'numbers.1', 'One', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3515, 1, 'en', 'plugins/captcha/captcha', 'numbers.2', 'Two', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3516, 1, 'en', 'plugins/captcha/captcha', 'numbers.3', 'Three', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3517, 1, 'en', 'plugins/captcha/captcha', 'numbers.4', 'Four', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3518, 1, 'en', 'plugins/captcha/captcha', 'numbers.5', 'Five', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3519, 1, 'en', 'plugins/captcha/captcha', 'numbers.6', 'Six', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3520, 1, 'en', 'plugins/captcha/captcha', 'numbers.7', 'Seven', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3521, 1, 'en', 'plugins/captcha/captcha', 'numbers.8', 'Eight', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3522, 1, 'en', 'plugins/captcha/captcha', 'numbers.9', 'Nine', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3523, 1, 'en', 'plugins/captcha/captcha', 'numbers.10', 'Ten', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3524, 1, 'en', 'plugins/captcha/captcha', 'numbers.11', 'Eleven', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3525, 1, 'en', 'plugins/captcha/captcha', 'numbers.12', 'Twelve', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3526, 1, 'en', 'plugins/captcha/captcha', 'operands.+', 'plus', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3527, 1, 'en', 'plugins/captcha/captcha', 'operands.-', 'minus', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3528, 1, 'en', 'plugins/captcha/captcha', 'operands.*', 'times', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3529, 1, 'en', 'plugins/captcha/captcha', 'operands./', 'divided by', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3536, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3537, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3538, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3539, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3540, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3541, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3542, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3543, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3544, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3545, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3546, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3547, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3548, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3549, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3550, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3551, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3552, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3553, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3554, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3555, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3556, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3557, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3558, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3559, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3560, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3561, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3562, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3563, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3564, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3565, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3566, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3567, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3568, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3569, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3570, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3571, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3572, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3573, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3574, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3575, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3576, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3577, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3578, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3579, 1, 'en', 'plugins/contact/contact', 'settings.title', 'Contact', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3580, 1, 'en', 'plugins/contact/contact', 'settings.description', 'Settings for contact plugin', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3581, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords', 'Blacklist keywords', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3582, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_placeholder', 'keywords...', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3583, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_helper', 'Blacklist contact requests if it includes those keywords in the content field (separate by comma).', '2023-05-02 21:04:53', '2023-05-02 21:04:53'),
(3584, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains', 'Blacklist email domains', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3585, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_placeholder', 'domain...', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3586, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_helper', 'Blacklist contact requests if the email domain is in blacklist domains (separate by comma).', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3587, 1, 'en', 'plugins/contact/contact', 'settings.enable_math_captcha', 'Enable math captcha?', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3588, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3589, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3590, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3591, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3592, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3593, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3594, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3638, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3639, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3640, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3641, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3642, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3643, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3644, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3645, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3646, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3647, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3648, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3649, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3650, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3651, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3652, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3653, 1, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3654, 1, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3655, 1, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3656, 1, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3657, 1, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3658, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3659, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3660, 1, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3661, 1, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3662, 1, 'en', 'plugins/gallery/gallery', 'by', 'By', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3663, 1, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3664, 1, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3665, 1, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3666, 1, 'en', 'plugins/gallery/gallery', 'shortcode_name', 'Gallery images', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3667, 1, 'en', 'plugins/gallery/gallery', 'limit_display', 'Limit number display', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3668, 1, 'en', 'plugins/gallery/gallery', 'edit_this_gallery', 'Edit this gallery', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3669, 1, 'en', 'plugins/gallery/gallery', 'galleries_page', 'Galleries page', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3684, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3685, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3686, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3687, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3688, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3689, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3690, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3691, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3692, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3693, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3694, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3695, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3696, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3697, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3698, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3699, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3700, 1, 'en', 'plugins/language/language', 'order', 'Order', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3701, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3702, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3703, 1, 'en', 'plugins/language/language', 'code', 'Code', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3704, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3705, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3706, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3707, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3708, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3709, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3710, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3711, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3712, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3713, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3714, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3715, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3716, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3717, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3718, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3719, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3720, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3721, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3722, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3723, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3724, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3725, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3726, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3727, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3728, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3729, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2023-05-02 21:04:54', '2023-05-02 21:04:54'),
(3730, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3731, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3732, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3733, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3734, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3735, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3736, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3737, 1, 'en', 'plugins/language/language', 'language_auto_detect_user_language', 'Auto detect user language?', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3788, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3789, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3790, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3791, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3792, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3793, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3794, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3795, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3796, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter (auto send newsletter email to SendGrid, Mailchimp... when someone register newsletter on website).', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3797, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3798, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3799, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list', 'Mailchimp List', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3800, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3801, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3802, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list', 'Sendgrid List', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3803, 1, 'en', 'plugins/newsletter/newsletter', 'settings.enable_newsletter_contacts_list_api', 'Enable newsletter contacts list API?', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3804, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3805, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3815, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3816, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3817, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the :lang_path file, using \'php artisan cms:translations:export\' command or publish button.', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3818, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3819, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3820, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3821, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3822, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3823, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3824, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3825, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3826, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3827, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3828, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3829, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3830, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3831, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3832, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3833, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3834, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3835, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3836, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3837, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3838, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3839, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3840, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3841, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3842, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3843, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3844, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3845, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3846, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder :lang_path is not writable. Please chmod to make it writable!', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3847, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3848, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in :lang_path!', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3849, 1, 'en', 'plugins/translation/translation', 'download', 'Download', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3850, 1, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3851, 1, 'en', 'plugins/translation/translation', 'theme_translations_instruction', 'Click on text to translate. Do NOT translate variables, Eg. :username, :query, :link...', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3852, 1, 'en', 'plugins/translation/translation', 'import_available_locale', 'Or import available locale from our GitHub repository', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3853, 1, 'en', 'plugins/translation/translation', 'add_new_locale', 'Add new locale', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3854, 1, 'en', 'plugins/translation/translation', 'download_locale', 'Download locale', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3855, 1, 'en', 'plugins/translation/translation', 'import_available_locale_confirmation', 'Download locale from GitHub', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3856, 1, 'en', 'plugins/translation/translation', 'import_available_locale_confirmation_content', 'Are you sure you want to download this locale? It will be downloaded into :lang_path, you can delete it later if you want.', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3857, 1, 'en', 'plugins/translation/translation', 'is_default', 'Is default?', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3889, 1, 'en', 'setting/setting', 'title', 'Settings', '2023-05-02 21:04:55', '2023-05-02 21:04:55'),
(3890, 1, 'en', 'setting/setting', 'email_setting_title', 'Email settings', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3891, 1, 'en', 'setting/setting', 'general.theme', 'Theme', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3892, 1, 'en', 'setting/setting', 'general.description', 'Setting site information', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3893, 1, 'en', 'setting/setting', 'general.title', 'General', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3894, 1, 'en', 'setting/setting', 'general.general_block', 'General Information', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3895, 1, 'en', 'setting/setting', 'general.rich_editor', 'Rich Editor', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3896, 1, 'en', 'setting/setting', 'general.site_title', 'Site title', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3897, 1, 'en', 'setting/setting', 'general.admin_email', 'Admin Email', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3898, 1, 'en', 'setting/setting', 'general.seo_block', 'SEO Configuration', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3899, 1, 'en', 'setting/setting', 'general.seo_title', 'SEO Title', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3900, 1, 'en', 'setting/setting', 'general.seo_description', 'SEO Description', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3901, 1, 'en', 'setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3902, 1, 'en', 'setting/setting', 'general.google_site_verification', 'Google site verification', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3903, 1, 'en', 'setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3904, 1, 'en', 'setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3905, 1, 'en', 'setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3906, 1, 'en', 'setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3907, 1, 'en', 'setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3908, 1, 'en', 'setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3909, 1, 'en', 'setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3910, 1, 'en', 'setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3911, 1, 'en', 'setting/setting', 'general.time_zone', 'Timezone', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3912, 1, 'en', 'setting/setting', 'general.default_admin_theme', 'Default admin theme', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3913, 1, 'en', 'setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3914, 1, 'en', 'setting/setting', 'general.enable', 'Enable', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3915, 1, 'en', 'setting/setting', 'general.disable', 'Disable', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3916, 1, 'en', 'setting/setting', 'general.enable_cache', 'Enable cache?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3917, 1, 'en', 'setting/setting', 'general.cache_time', 'Cache time (minutes)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3918, 1, 'en', 'setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3919, 1, 'en', 'setting/setting', 'general.admin_logo', 'Admin logo', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3920, 1, 'en', 'setting/setting', 'general.admin_favicon', 'Admin favicon', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3921, 1, 'en', 'setting/setting', 'general.admin_title', 'Admin title', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3922, 1, 'en', 'setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3923, 1, 'en', 'setting/setting', 'general.cache_block', 'Cache', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3924, 1, 'en', 'setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3925, 1, 'en', 'setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3926, 1, 'en', 'setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3927, 1, 'en', 'setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3928, 1, 'en', 'setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3929, 1, 'en', 'setting/setting', 'general.yes', 'Yes', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3930, 1, 'en', 'setting/setting', 'general.no', 'No', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3931, 1, 'en', 'setting/setting', 'general.show_on_front', 'Your homepage displays', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3932, 1, 'en', 'setting/setting', 'general.select', '— Select —', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3933, 1, 'en', 'setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3934, 1, 'en', 'setting/setting', 'general.locale', 'Site language', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3935, 1, 'en', 'setting/setting', 'general.locale_direction', 'Front site language direction', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3936, 1, 'en', 'setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3937, 1, 'en', 'setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3938, 1, 'en', 'setting/setting', 'email.subject', 'Subject', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3939, 1, 'en', 'setting/setting', 'email.content', 'Content', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3940, 1, 'en', 'setting/setting', 'email.title', 'Setting for email template', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3941, 1, 'en', 'setting/setting', 'email.description', 'Email template using HTML & system variables.', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3942, 1, 'en', 'setting/setting', 'email.reset_to_default', 'Reset to default', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3943, 1, 'en', 'setting/setting', 'email.back', 'Back to settings', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3944, 1, 'en', 'setting/setting', 'email.reset_success', 'Reset back to default successfully', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3945, 1, 'en', 'setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3946, 1, 'en', 'setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3947, 1, 'en', 'setting/setting', 'email.continue', 'Continue', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3948, 1, 'en', 'setting/setting', 'email.sender_name', 'Sender name', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3949, 1, 'en', 'setting/setting', 'email.sender_name_placeholder', 'Name', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3950, 1, 'en', 'setting/setting', 'email.sender_email', 'Sender email', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3951, 1, 'en', 'setting/setting', 'email.mailer', 'Mailer', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3952, 1, 'en', 'setting/setting', 'email.port', 'Port', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3953, 1, 'en', 'setting/setting', 'email.port_placeholder', 'Ex: 587', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3954, 1, 'en', 'setting/setting', 'email.host', 'Host', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3955, 1, 'en', 'setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3956, 1, 'en', 'setting/setting', 'email.username', 'Username', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3957, 1, 'en', 'setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3958, 1, 'en', 'setting/setting', 'email.password', 'Password', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3959, 1, 'en', 'setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3960, 1, 'en', 'setting/setting', 'email.encryption', 'Encryption', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3961, 1, 'en', 'setting/setting', 'email.mail_gun_domain', 'Domain', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3962, 1, 'en', 'setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3963, 1, 'en', 'setting/setting', 'email.mail_gun_secret', 'Secret', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3964, 1, 'en', 'setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3965, 1, 'en', 'setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3966, 1, 'en', 'setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3967, 1, 'en', 'setting/setting', 'email.log_channel', 'Log channel', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3968, 1, 'en', 'setting/setting', 'email.sendmail_path', 'Sendmail Path', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3969, 1, 'en', 'setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3970, 1, 'en', 'setting/setting', 'email.ses_key', 'Key', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3971, 1, 'en', 'setting/setting', 'email.ses_key_placeholder', 'Key', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3972, 1, 'en', 'setting/setting', 'email.ses_secret', 'Secret', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3973, 1, 'en', 'setting/setting', 'email.ses_secret_placeholder', 'Secret', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3974, 1, 'en', 'setting/setting', 'email.ses_region', 'Region', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3975, 1, 'en', 'setting/setting', 'email.ses_region_placeholder', 'Region', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3976, 1, 'en', 'setting/setting', 'email.postmark_token', 'Token', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3977, 1, 'en', 'setting/setting', 'email.postmark_token_placeholder', 'Token', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3978, 1, 'en', 'setting/setting', 'email.template_title', 'Email templates', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3979, 1, 'en', 'setting/setting', 'email.template_description', 'Base templates for all emails', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3980, 1, 'en', 'setting/setting', 'email.template_header', 'Email template header', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3981, 1, 'en', 'setting/setting', 'email.template_header_description', 'Template for header of emails', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3982, 1, 'en', 'setting/setting', 'email.template_footer', 'Email template footer', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3983, 1, 'en', 'setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3984, 1, 'en', 'setting/setting', 'email.default', 'Default', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3985, 1, 'en', 'setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3986, 1, 'en', 'setting/setting', 'media.title', 'Media', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3987, 1, 'en', 'setting/setting', 'media.driver', 'Driver', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3988, 1, 'en', 'setting/setting', 'media.description', 'Settings for media', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3989, 1, 'en', 'setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3990, 1, 'en', 'setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3991, 1, 'en', 'setting/setting', 'media.aws_default_region', 'AWS Default Region', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3992, 1, 'en', 'setting/setting', 'media.aws_bucket', 'AWS Bucket', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3993, 1, 'en', 'setting/setting', 'media.aws_url', 'AWS URL', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3994, 1, 'en', 'setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3995, 1, 'en', 'setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3996, 1, 'en', 'setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3997, 1, 'en', 'setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3998, 1, 'en', 'setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(3999, 1, 'en', 'setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4000, 1, 'en', 'setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4001, 1, 'en', 'setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4002, 1, 'en', 'setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4003, 1, 'en', 'setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4004, 1, 'en', 'setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4005, 1, 'en', 'setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4006, 1, 'en', 'setting/setting', 'media.wasabi_root', 'Wasabi Root', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4007, 1, 'en', 'setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4008, 1, 'en', 'setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4009, 1, 'en', 'setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4010, 1, 'en', 'setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4011, 1, 'en', 'setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2023-05-02 21:04:56', '2023-05-02 21:04:56');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4012, 1, 'en', 'setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4013, 1, 'en', 'setting/setting', 'media.enable_watermark', 'Enable watermark?', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4014, 1, 'en', 'setting/setting', 'media.watermark_source', 'Watermark image', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4015, 1, 'en', 'setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4016, 1, 'en', 'setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4017, 1, 'en', 'setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4018, 1, 'en', 'setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4019, 1, 'en', 'setting/setting', 'media.watermark_position', 'Watermark position', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4020, 1, 'en', 'setting/setting', 'media.watermark_position_x', 'Watermark position X', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4021, 1, 'en', 'setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4022, 1, 'en', 'setting/setting', 'media.watermark_position_top_left', 'Top left', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4023, 1, 'en', 'setting/setting', 'media.watermark_position_top_right', 'Top right', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4024, 1, 'en', 'setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4025, 1, 'en', 'setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4026, 1, 'en', 'setting/setting', 'media.watermark_position_center', 'Center', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4027, 1, 'en', 'setting/setting', 'license.purchase_code', 'Purchase code', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4028, 1, 'en', 'setting/setting', 'license.buyer', 'Buyer', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4029, 1, 'en', 'setting/setting', 'field_type_not_exists', 'This field type does not exist', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4030, 1, 'en', 'setting/setting', 'save_settings', 'Save settings', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4031, 1, 'en', 'setting/setting', 'template', 'Template', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4032, 1, 'en', 'setting/setting', 'description', 'Description', '2023-05-02 21:04:56', '2023-05-02 21:04:56'),
(4033, 1, 'en', 'setting/setting', 'enable', 'Enable', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4034, 1, 'en', 'setting/setting', 'send', 'Send', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4035, 1, 'en', 'setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4036, 1, 'en', 'setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4037, 1, 'en', 'setting/setting', 'test_email_modal_title', 'Send a test email', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4038, 1, 'en', 'setting/setting', 'test_send_mail', 'Send test mail', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4039, 1, 'en', 'setting/setting', 'test_email_send_success', 'Send email successfully!', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4040, 1, 'en', 'setting/setting', 'locale_direction_ltr', 'Left to Right', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4041, 1, 'en', 'setting/setting', 'locale_direction_rtl', 'Right to Left', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4042, 1, 'en', 'setting/setting', 'saving', 'Saving...', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4043, 1, 'en', 'setting/setting', 'emails_warning', 'You can add up to :count emails', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4044, 1, 'en', 'setting/setting', 'email_add_more', 'Add more', '2023-05-02 21:04:57', '2023-05-02 21:04:57'),
(4191, 1, 'en', 'table/table', 'operations', 'Operations', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4192, 1, 'en', 'table/table', 'loading_data', 'Loading data from server', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4193, 1, 'en', 'table/table', 'display', 'Display', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4194, 1, 'en', 'table/table', 'all', 'All', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4195, 1, 'en', 'table/table', 'edit_entry', 'Edit', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4196, 1, 'en', 'table/table', 'delete_entry', 'Delete', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4197, 1, 'en', 'table/table', 'show_from', 'Showing from', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4198, 1, 'en', 'table/table', 'to', 'to', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4199, 1, 'en', 'table/table', 'in', 'in', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4200, 1, 'en', 'table/table', 'records', 'records', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4201, 1, 'en', 'table/table', 'no_data', 'No data to display', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4202, 1, 'en', 'table/table', 'no_record', 'No record', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4203, 1, 'en', 'table/table', 'loading', 'Loading data from server', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4204, 1, 'en', 'table/table', 'confirm_delete', 'Confirm delete', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4205, 1, 'en', 'table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4206, 1, 'en', 'table/table', 'cancel', 'Cancel', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4207, 1, 'en', 'table/table', 'delete', 'Delete', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4208, 1, 'en', 'table/table', 'close', 'Close', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4209, 1, 'en', 'table/table', 'contains', 'Contains', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4210, 1, 'en', 'table/table', 'is_equal_to', 'Is equal to', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4211, 1, 'en', 'table/table', 'greater_than', 'Greater than', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4212, 1, 'en', 'table/table', 'less_than', 'Less than', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4213, 1, 'en', 'table/table', 'value', 'Value', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4214, 1, 'en', 'table/table', 'select_field', 'Select field', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4215, 1, 'en', 'table/table', 'reset', 'Reset', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4216, 1, 'en', 'table/table', 'add_additional_filter', 'Add additional filter', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4217, 1, 'en', 'table/table', 'apply', 'Apply', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4218, 1, 'en', 'table/table', 'filters', 'Filters', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4219, 1, 'en', 'table/table', 'bulk_change', 'Bulk changes', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4220, 1, 'en', 'table/table', 'select_option', 'Select option', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4221, 1, 'en', 'table/table', 'bulk_actions', 'Bulk Actions', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4222, 1, 'en', 'table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4223, 1, 'en', 'table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4224, 1, 'en', 'table/table', 'filtered', '(filtered from _MAX_ total records)', '2023-05-02 21:04:58', '2023-05-02 21:04:58'),
(4225, 1, 'en', 'table/table', 'search', 'Search...', '2023-05-02 21:04:58', '2023-05-02 21:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@artful.com', NULL, '$2y$10$MDSRhXDSs2RJ4da2lt5cpetThtGLyfmm0HQPZnAyLxhDgCUtJIdze', '8QrdBsQwrOvuRfmE1FvshqB45h6eJ55K0mdoQb0auK891yNNKK8dzoVCCLHF', '2023-05-02 21:04:33', '2023-05-11 23:16:34', 'Ariful', 'Haque', 'artful', NULL, 1, 1, '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"superuser\":1,\"manage_supers\":1}', '2023-05-11 23:16:34'),
(2, 'user@botble.com', NULL, '$2y$10$M6d6Vvs3RiccynAkiyaddOUlyvZHYsqW1J1cpKSkT7oj6M4eyB7mm', NULL, '2023-05-02 21:04:33', '2023-05-02 21:04:33', 'Normal', 'Admin', 'admin', NULL, 0, 0, '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(16, 'AboutWidget', 'primary_sidebar', 'stories', 0, '{\"id\":\"AboutWidget\",\"name\":\"Hello, I\'m Ariful Haque\",\"description\":\"Hi, I\\u2019m Ariful Hauqe, a Cyber Security student in Concordia University.\",\"image\":\"general\\/pro-n.jpg\"}', '2023-05-08 03:33:38', '2023-05-08 03:33:38'),
(17, 'PopularPostsWidget', 'primary_sidebar', 'stories', 1, '{\"id\":\"PopularPostsWidget\",\"name\":\"Most popular\",\"number_display\":\"5\"}', '2023-05-08 03:33:38', '2023-05-08 03:33:38'),
(18, 'GalleriesWidget', 'primary_sidebar', 'stories', 2, '{\"id\":\"GalleriesWidget\",\"name\":\"Galleries\",\"number_display\":\"6\"}', '2023-05-08 03:33:38', '2023-05-08 03:33:38'),
(19, 'CustomMenuWidget', 'footer_sidebar', 'stories', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2023-05-09 00:35:42', '2023-05-09 00:35:42'),
(20, 'TagsWidget', 'footer_sidebar', 'stories', 1, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":\"5\"}', '2023-05-09 00:35:42', '2023-05-09 00:35:42'),
(21, 'NewsletterWidget', 'footer_sidebar', 'stories', 2, '{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\"}', '2023-05-09 00:35:42', '2023-05-09 00:35:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `gallery_meta_translations`
--
ALTER TABLE `gallery_meta_translations`
  ADD PRIMARY KEY (`lang_code`,`gallery_meta_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `author_type` (`author_type`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4372;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
