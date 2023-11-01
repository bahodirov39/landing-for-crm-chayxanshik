-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 21 2023 г., 03:25
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chayxanshik`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-02-19 19:31:36', '2023-02-19 19:31:36');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'rich_text_box', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 9, 'title_uz', 'text', 'Title Uz', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 9, 'title_ru', 'text', 'Title Ru', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 9, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(61, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(62, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 10, 'title_uz', 'text', 'Title Uz', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 10, 'title_ru', 'text', 'Title Ru', 0, 1, 1, 1, 1, 1, '{}', 3),
(65, 10, 'body_ru', 'rich_text_box', 'Body Ru', 0, 1, 1, 1, 1, 1, '{}', 4),
(66, 10, 'body_uz', 'rich_text_box', 'Body Uz', 0, 1, 1, 1, 1, 1, '{}', 5),
(67, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(68, 10, 'review', 'text', 'Review', 0, 1, 1, 1, 1, 1, '{}', 7),
(69, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(70, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(71, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 11, 'plan_id', 'text', 'Plan Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(73, 11, 'plan_number', 'text', 'Plan Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 11, 'body_uz', 'text', 'Body Uz', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 11, 'body_ru', 'text', 'Body Ru', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(77, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(78, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 12, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 3),
(81, 12, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(83, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(84, 11, 'plan_feature_belongsto_plan_relationship', 'relationship', 'Plan', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Plan\",\"table\":\"plans\",\"type\":\"belongsTo\",\"column\":\"plan_id\",\"key\":\"id\",\"label\":\"title_ru\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(86, 5, 'title_ru', 'text', 'Title Ru', 0, 1, 1, 1, 1, 1, '{}', 5),
(88, 5, 'body_ru', 'rich_text_box', 'Body Ru', 0, 1, 1, 1, 1, 1, '{}', 9),
(89, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 13, 'title_ru', 'text', 'Title Ru', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 13, 'title_uz', 'text', 'Title Uz', 1, 1, 1, 1, 1, 1, '{}', 3),
(92, 13, 'body_uz', 'rich_text_box', 'Body Uz', 1, 1, 1, 1, 1, 1, '{}', 4),
(93, 13, 'body_ru', 'rich_text_box', 'Body Ru', 1, 1, 1, 1, 1, 1, '{}', 5),
(94, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(95, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(96, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 14, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(98, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(99, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(100, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(101, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(102, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(103, 5, 'body', 'rich_text_box', 'Body', 1, 1, 1, 1, 1, 1, '{}', 8),
(104, 6, 'title_ru', 'text', 'Title Ru', 0, 1, 1, 1, 1, 1, '{}', 4),
(105, 6, 'body_ru', 'rich_text_box', 'Body Ru', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 19:31:36', '2023-02-19 21:53:04'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 19:31:36', '2023-02-21 01:35:58'),
(9, 'plans', 'plans', 'Plan', 'Plans', 'voyager-pie-chart', 'App\\Models\\Plan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 20:27:56', '2023-02-19 20:43:29'),
(10, 'testimonals', 'testimonals', 'Testimonal', 'Testimonals', 'voyager-heart', 'App\\Models\\Testimonal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 20:28:27', '2023-02-19 21:15:36'),
(11, 'plan_features', 'plan-features', 'Plan Feature', 'Plan Features', 'voyager-wand', 'App\\Models\\PlanFeature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 20:30:36', '2023-02-19 20:32:14'),
(12, 'messages', 'messages', 'Message', 'Messages', 'voyager-chat', 'App\\Models\\Message', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-19 20:31:14', '2023-02-19 20:31:14'),
(13, 'faqs', 'faqs', 'Faq', 'FAQs', 'voyager-warning', 'App\\Models\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-19 20:34:04', '2023-02-19 20:34:04'),
(14, 'emails', 'emails', 'Email', 'Emails', 'voyager-mail', 'App\\Models\\Email', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-19 20:35:24', '2023-02-19 20:35:24');

-- --------------------------------------------------------

--
-- Структура таблицы `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `emails`
--

INSERT INTO `emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'bahodirovmuhammadd@gmail.com', '2023-02-19 21:36:22', '2023-02-19 21:36:22'),
(2, 'bahodirovmuhammadd@gmail.com', '2023-02-19 21:36:22', '2023-02-19 21:36:22'),
(3, 'admin@admin.com', '2023-02-19 21:36:40', '2023-02-19 21:36:40');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `faqs`
--

INSERT INTO `faqs` (`id`, `title_ru`, `title_uz`, `body_uz`, `body_ru`, `created_at`, `updated_at`) VALUES
(1, 'Faq 1 ru', 'Faq 1 uz', '<p>Faq 1 uz</p>', '<p>Faq 1 ru</p>', '2023-02-19 22:47:49', '2023-02-19 22:47:49'),
(2, 'Faq 2 ru', 'Faq 2 uz', '<p>Faq 2 uz</p>', '<p>Faq 2 ru</p>', '2023-02-19 22:48:15', '2023-02-19 22:48:15');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-02-19 19:31:36', '2023-02-19 19:31:36');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-02-19 19:31:36', '2023-02-19 19:31:36', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2023-02-19 19:31:36', '2023-02-19 20:35:52', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-02-19 19:31:36', '2023-02-19 19:31:36', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-02-19 19:31:36', '2023-02-19 19:31:36', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 15, '2023-02-19 19:31:36', '2023-02-19 20:35:52', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-02-19 19:31:36', '2023-02-19 20:35:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-02-19 19:31:36', '2023-02-19 20:35:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-02-19 19:31:36', '2023-02-19 20:35:52', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-02-19 19:31:36', '2023-02-19 20:35:52', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-02-19 19:31:36', '2023-02-19 20:35:57', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 6, '2023-02-19 19:31:36', '2023-02-19 20:36:14', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 7, '2023-02-19 19:31:36', '2023-02-19 20:36:12', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2023-02-19 19:31:36', '2023-02-19 20:36:14', 'voyager.pages.index', NULL),
(14, 1, 'Plans', '', '_self', 'voyager-pie-chart', NULL, NULL, 8, '2023-02-19 20:27:56', '2023-02-19 20:36:18', 'voyager.plans.index', NULL),
(15, 1, 'Testimonals', '', '_self', 'voyager-heart', NULL, NULL, 10, '2023-02-19 20:28:27', '2023-02-19 20:36:18', 'voyager.testimonals.index', NULL),
(16, 1, 'Plan Features', '', '_self', 'voyager-wand', NULL, NULL, 9, '2023-02-19 20:30:36', '2023-02-19 20:36:18', 'voyager.plan-features.index', NULL),
(17, 1, 'Messages', '', '_self', 'voyager-chat', NULL, NULL, 11, '2023-02-19 20:31:14', '2023-02-19 20:35:57', 'voyager.messages.index', NULL),
(18, 1, 'FAQs', '', '_self', 'voyager-warning', NULL, NULL, 12, '2023-02-19 20:34:04', '2023-02-19 20:35:57', 'voyager.faqs.index', NULL),
(19, 1, 'Emails', '', '_self', 'voyager-mail', NULL, NULL, 13, '2023-02-19 20:35:24', '2023-02-19 20:35:57', 'voyager.emails.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'aadsad', '+460762179849', 'asdasd', '2023-02-19 22:42:45', '2023-02-19 22:42:45');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2023_02_19_225806_create_faqs_table', 3),
(30, '2023_02_19_225828_create_emails_table', 3),
(31, '2023_02_19_225937_create_testimonals_table', 3),
(32, '2023_02_19_230122_create_plan_features_table', 3),
(33, '2023_02_19_231531_create_plans_table', 3),
(34, '2023_02_19_231959_add_columds_to_posts_table', 3),
(35, '2023_02_19_232303_create_messages_table', 3),
(36, '2023_02_19_234152_add_image_to_plans_table', 4),
(37, '2023_02_20_001311_add_name_to_testimonals_table', 5),
(38, '2023_02_20_232851_add_new_columns_to_pages_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `body_ru` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `title_ru`, `excerpt`, `body`, `body_ru`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', NULL, 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', NULL, 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(2, 1, 'Saytdan foydalanish shartlari', 'Условиями использования сайта', NULL, '<p>Body uz</p>', '<p>Body ru</p>', NULL, 'saytdan-foydalanish-shartlari', NULL, NULL, 'ACTIVE', '2023-02-21 01:36:40', '2023-02-21 01:36:40');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(2, 'browse_bread', NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(3, 'browse_database', NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(4, 'browse_media', NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(5, 'browse_compass', NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(6, 'browse_menus', 'menus', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(7, 'read_menus', 'menus', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(8, 'edit_menus', 'menus', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(9, 'add_menus', 'menus', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(10, 'delete_menus', 'menus', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(11, 'browse_roles', 'roles', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(12, 'read_roles', 'roles', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(13, 'edit_roles', 'roles', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(14, 'add_roles', 'roles', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(15, 'delete_roles', 'roles', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(16, 'browse_users', 'users', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(17, 'read_users', 'users', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(18, 'edit_users', 'users', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(19, 'add_users', 'users', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(20, 'delete_users', 'users', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(21, 'browse_settings', 'settings', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(22, 'read_settings', 'settings', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(23, 'edit_settings', 'settings', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(24, 'add_settings', 'settings', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(25, 'delete_settings', 'settings', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(26, 'browse_categories', 'categories', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(27, 'read_categories', 'categories', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(28, 'edit_categories', 'categories', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(29, 'add_categories', 'categories', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(30, 'delete_categories', 'categories', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(31, 'browse_posts', 'posts', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(32, 'read_posts', 'posts', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(33, 'edit_posts', 'posts', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(34, 'add_posts', 'posts', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(35, 'delete_posts', 'posts', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(36, 'browse_pages', 'pages', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(37, 'read_pages', 'pages', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(38, 'edit_pages', 'pages', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(39, 'add_pages', 'pages', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(40, 'delete_pages', 'pages', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(41, 'browse_plans', 'plans', '2023-02-19 20:27:56', '2023-02-19 20:27:56'),
(42, 'read_plans', 'plans', '2023-02-19 20:27:56', '2023-02-19 20:27:56'),
(43, 'edit_plans', 'plans', '2023-02-19 20:27:56', '2023-02-19 20:27:56'),
(44, 'add_plans', 'plans', '2023-02-19 20:27:56', '2023-02-19 20:27:56'),
(45, 'delete_plans', 'plans', '2023-02-19 20:27:56', '2023-02-19 20:27:56'),
(46, 'browse_testimonals', 'testimonals', '2023-02-19 20:28:27', '2023-02-19 20:28:27'),
(47, 'read_testimonals', 'testimonals', '2023-02-19 20:28:27', '2023-02-19 20:28:27'),
(48, 'edit_testimonals', 'testimonals', '2023-02-19 20:28:27', '2023-02-19 20:28:27'),
(49, 'add_testimonals', 'testimonals', '2023-02-19 20:28:27', '2023-02-19 20:28:27'),
(50, 'delete_testimonals', 'testimonals', '2023-02-19 20:28:27', '2023-02-19 20:28:27'),
(51, 'browse_plan_features', 'plan_features', '2023-02-19 20:30:36', '2023-02-19 20:30:36'),
(52, 'read_plan_features', 'plan_features', '2023-02-19 20:30:36', '2023-02-19 20:30:36'),
(53, 'edit_plan_features', 'plan_features', '2023-02-19 20:30:36', '2023-02-19 20:30:36'),
(54, 'add_plan_features', 'plan_features', '2023-02-19 20:30:36', '2023-02-19 20:30:36'),
(55, 'delete_plan_features', 'plan_features', '2023-02-19 20:30:36', '2023-02-19 20:30:36'),
(56, 'browse_messages', 'messages', '2023-02-19 20:31:14', '2023-02-19 20:31:14'),
(57, 'read_messages', 'messages', '2023-02-19 20:31:14', '2023-02-19 20:31:14'),
(58, 'edit_messages', 'messages', '2023-02-19 20:31:14', '2023-02-19 20:31:14'),
(59, 'add_messages', 'messages', '2023-02-19 20:31:14', '2023-02-19 20:31:14'),
(60, 'delete_messages', 'messages', '2023-02-19 20:31:14', '2023-02-19 20:31:14'),
(61, 'browse_faqs', 'faqs', '2023-02-19 20:34:04', '2023-02-19 20:34:04'),
(62, 'read_faqs', 'faqs', '2023-02-19 20:34:04', '2023-02-19 20:34:04'),
(63, 'edit_faqs', 'faqs', '2023-02-19 20:34:04', '2023-02-19 20:34:04'),
(64, 'add_faqs', 'faqs', '2023-02-19 20:34:04', '2023-02-19 20:34:04'),
(65, 'delete_faqs', 'faqs', '2023-02-19 20:34:04', '2023-02-19 20:34:04'),
(66, 'browse_emails', 'emails', '2023-02-19 20:35:24', '2023-02-19 20:35:24'),
(67, 'read_emails', 'emails', '2023-02-19 20:35:24', '2023-02-19 20:35:24'),
(68, 'edit_emails', 'emails', '2023-02-19 20:35:24', '2023-02-19 20:35:24'),
(69, 'add_emails', 'emails', '2023-02-19 20:35:24', '2023-02-19 20:35:24'),
(70, 'delete_emails', 'emails', '2023-02-19 20:35:24', '2023-02-19 20:35:24');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plans`
--

INSERT INTO `plans` (`id`, `title_uz`, `title_ru`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'KOFE', 'КОФЕ', 229000, 'plans\\February2023\\FQ5P5iUyKQrM4ijvPTYG.jfif', '2023-02-19 20:37:00', '2023-02-19 20:44:47'),
(2, 'OSHXONA', 'КУХНЯ', 339000, 'plans\\February2023\\xofmVSljImjZEcO7FOtn.jfif', '2023-02-19 20:37:00', '2023-02-19 20:44:55'),
(3, 'CHOYXONA', 'ЧАЙХАНА', 529000, 'plans\\February2023\\uv8rs5ruXT1QgDT6y64t.png', '2023-02-19 20:38:00', '2023-02-19 20:44:35');

-- --------------------------------------------------------

--
-- Структура таблицы `plan_features`
--

CREATE TABLE `plan_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `plan_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_uz` text COLLATE utf8mb4_unicode_ci,
  `body_ru` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plan_features`
--

INSERT INTO `plan_features` (`id`, `plan_id`, `plan_number`, `body_uz`, `body_ru`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Ficha uz', 'Ficha ru', '2023-02-19 20:39:01', '2023-02-19 20:39:01'),
(2, 2, NULL, 'Ficha uz', 'Ficha ru', '2023-02-19 20:40:00', '2023-02-19 20:40:35'),
(3, 3, NULL, 'Ficha uz', 'Ficha ru', '2023-02-19 20:40:43', '2023-02-19 20:40:43');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `title_ru`, `seo_title`, `excerpt`, `body`, `body_ru`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', '<p>This is the body of the lorem ipsum post</p>', 'posts\\February2023\\6c39QoeBcQAaFGN2TrnV.png', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-02-19 19:31:36', '2023-02-19 21:54:12'),
(2, 1, 1, 'My Sample Post', 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts\\February2023\\ne0Y8LIci09kJLCZT6Ab.png', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-02-19 19:31:36', '2023-02-19 21:54:24'),
(3, 1, 1, 'Latest Post', 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', '<p>This is the body for the latest post</p>', 'posts\\February2023\\8jcI4oZnBzmUggO7Z3aj.png', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-02-19 19:31:36', '2023-02-19 21:54:39'),
(4, 1, 1, 'Yarr Post', 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'asdasdas\r\n', 'posts\\February2023\\dXSNSyL32QdnCboLySiU.png', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-02-19 19:31:36', '2023-02-19 21:54:49');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(2, 'user', 'Normal User', '2023-02-19 19:31:36', '2023-02-19 19:31:36');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'Phone', '+998 71 250-93-91', NULL, 'text', 6, 'Site'),
(12, 'site.email', 'Email', 'email@email.com', NULL, 'text', 7, 'Site'),
(13, 'site.telegram_link', 'Telegram Link', NULL, NULL, 'text', 8, 'Site'),
(14, 'site.facebook_link', 'Facebook Link', NULL, NULL, 'text', 9, 'Site'),
(15, 'site.intagram_link', 'Instagram Link', NULL, NULL, 'text', 10, 'Site'),
(16, 'site.number_of_clients', 'Number of Clients', '500', NULL, 'text', 11, 'Site'),
(17, 'home.plan_one_name_uz', 'Plan #1 name (uz)', NULL, NULL, 'text', 12, 'Home'),
(19, 'home.plan_one_name_ru', 'Plan #1 name (ru)', NULL, NULL, 'text', 14, 'Home'),
(20, 'site.address_uz', 'Address (uz)', 'Республика Узбекистан, г.Ташкент, Юнусабадский район, ул. Чинобод, 10А, ориентир метро Шахристан uz', NULL, 'text', 15, 'Site'),
(21, 'site.address_ru', 'Address (ru)', 'Республика Узбекистан, г.Ташкент, Юнусабадский район, ул. Чинобод, 10А, ориентир метро Шахристан', NULL, 'text', 16, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `testimonals`
--

CREATE TABLE `testimonals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_ru` text COLLATE utf8mb4_unicode_ci,
  `body_uz` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `testimonals`
--

INSERT INTO `testimonals` (`id`, `name`, `title_uz`, `title_ru`, `body_ru`, `body_uz`, `image`, `review`, `created_at`, `updated_at`) VALUES
(1, 'Ангелина Джаббаров', 'Качественный сервис - качественный история! uz', 'Качественный сервис - качественный история!', '<div>\r\n<div>Невероятнейший сервис , благодаря вам наши продажи выросли в 3 раза. Полная аналитика ,&nbsp;отчетность и сравнительная дешевизна выделяют ваш продукт на фоне остальных. Продолжайте в том же духе!</div>\r\n</div>', '<div>\r\n<div>Невероятнейший сервис , благодаря вам наши продажи выросли в 3 раза. Полная аналитика ,&nbsp;отчетность и сравнительная дешевизна выделяют ваш продукт на фоне остальных. Продолжайте в том же духе! uz</div>\r\n</div>', 'testimonals\\February2023\\1bLg627YO0haQcpsnwpN.png', 5, '2023-02-19 21:12:00', '2023-02-19 21:16:22'),
(2, 'Ангелина Джаббаров', 'Прекрасный сервис - прекрасные люди uz', 'Прекрасный сервис - прекрасные люди', '<div>\r\n<div>Невероятнейший сервис , благодаря вам наши продажи выросли в 3 раза. Полная аналитика ,&nbsp;отчетность и сравнительная дешевизна выделяют ваш продукт на фоне остальных. Продолжайте в том же духе!</div>\r\n</div>', '<div>\r\n<div>Невероятнейший сервис , благодаря вам наши продажи выросли в 3 раза. Полная аналитика ,&nbsp;отчетность и сравнительная дешевизна выделяют ваш продукт на фоне остальных. Продолжайте в том же духе! uz</div>\r\n</div>', 'testimonals\\February2023\\5EEJ04xla7nyuLuhAfg9.png', 5, '2023-02-19 21:17:17', '2023-02-19 21:17:17');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-02-19 19:31:36', '2023-02-19 19:31:36'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-02-19 19:31:36', '2023-02-19 19:31:36');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$PjTNc/HPtgxkm7WJpVw0pecqnRdyCpQx0onkdyS8LGSoouEtnMnRm', 'usvo9PUp6Z2pKrwySXUYHIwhfJqGw3mLifvPxEGILmDe9o5V2yF40P4y1npJ', NULL, '2023-02-19 19:31:36', '2023-02-19 19:31:36');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plan_features`
--
ALTER TABLE `plan_features`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `testimonals`
--
ALTER TABLE `testimonals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `plan_features`
--
ALTER TABLE `plan_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `testimonals`
--
ALTER TABLE `testimonals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
