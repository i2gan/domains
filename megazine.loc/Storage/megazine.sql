-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2020 г., 17:14
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `megazine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-17 14:40:40', '2020-03-17 11:40:40', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://megazine.loc', 'yes'),
(2, 'home', 'http://megazine.loc', 'yes'),
(3, 'blogname', 'Megazine', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ermeck@bk.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '20', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'megazine', 'yes'),
(41, 'stylesheet', 'megazine', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1599997239', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', '', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1584697242;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1584704441;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584704442;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1584704456;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584704458;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"0nYYu15wPN4QR6cnHNgnk3\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BzCn88z8PvKRQvhuKjJxrz2sd1.WD4.\";s:10:\"created_at\";i:1584642030;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584445277;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, '_site_transient_timeout_browser_97fc230848bc304ccee289a55f3e5339', '1585050057', 'no'),
(127, '_site_transient_browser_97fc230848bc304ccee289a55f3e5339', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_b3655adab148a1a6c8391bd3893ea554', '1585050058', 'no'),
(129, '_site_transient_php_check_b3655adab148a1a6c8391bd3893ea554', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'Megazine', 'yes'),
(145, 'theme_mods_megazine', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:4:\"menu\";i:9;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(195, 'new_admin_email', 'ermeck@bk.ru', 'yes'),
(198, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1584676311;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(199, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1584676311;s:7:\"checked\";a:1:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(200, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1584676311;s:7:\"checked\";a:4:{s:8:\"megazine\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(249, 'category_children', 'a:0:{}', 'yes'),
(286, 'recovery_mode_email_last_sent', '1584642030', 'yes'),
(288, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(291, '_site_transient_timeout_theme_roots', '1584678111', 'no'),
(292, '_site_transient_theme_roots', 'a:4:{s:8:\"megazine\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(294, '_site_transient_timeout_browser_b4046c447614dcbe06d949fe3062a42a', '1585281112', 'no'),
(295, '_site_transient_browser_b4046c447614dcbe06d949fe3062a42a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.149\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(299, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1584731928', 'no'),
(300, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1584448160:1'),
(4, 10, '_edit_last', '1'),
(5, 10, '_edit_lock', '1584510572:1'),
(6, 10, 'cat', 'STYLE'),
(8, 12, '_wp_attached_file', '2020/03/blog-1.jpg'),
(9, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:18:\"2020/03/blog-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 13, '_wp_attached_file', '2020/03/blog-2.jpg'),
(11, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:670;s:4:\"file\";s:18:\"2020/03/blog-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-2-300x251.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:251;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-2-768x643.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:643;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 14, '_wp_attached_file', '2020/03/blog-3.jpg'),
(13, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:532;s:4:\"file\";s:18:\"2020/03/blog-3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-3-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 15, '_wp_attached_file', '2020/03/blog-4.jpg'),
(15, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:18:\"2020/03/blog-4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-4-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 16, '_wp_attached_file', '2020/03/blog-5.jpg'),
(17, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:18:\"2020/03/blog-5.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 17, '_wp_attached_file', '2020/03/blog-6.jpg'),
(19, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2020/03/blog-6.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-6-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-6-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 18, '_wp_attached_file', '2020/03/blog-7.jpg'),
(21, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2020/03/blog-7.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-7-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-7-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 19, '_wp_attached_file', '2020/03/blog-8.jpg'),
(23, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:329;s:4:\"file\";s:18:\"2020/03/blog-8.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-8-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-8-768x316.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 20, '_wp_attached_file', '2020/03/blog-9.jpg'),
(25, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:566;s:4:\"file\";s:18:\"2020/03/blog-9.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-9-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog-9-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 21, '_wp_attached_file', '2020/03/blog-10.jpg'),
(27, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:19:\"2020/03/blog-10.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog-10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog-10-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 22, '_wp_attached_file', '2020/03/blog-11.jpg'),
(29, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:535;s:4:\"file\";s:19:\"2020/03/blog-11.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog-11-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog-11-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 23, '_wp_attached_file', '2020/03/blog-12.jpg'),
(31, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:19:\"2020/03/blog-12.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog-12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog-12-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 24, '_wp_attached_file', '2020/03/blog-13.jpg'),
(33, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:558;s:4:\"file\";s:19:\"2020/03/blog-13.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog-13-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog-13-768x536.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 25, '_wp_attached_file', '2020/03/blog-14.jpg'),
(35, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:819;s:6:\"height\";i:651;s:4:\"file\";s:19:\"2020/03/blog-14.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog-14-300x238.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog-14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog-14-768x610.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 26, '_wp_attached_file', '2020/03/gallery-1.jpg'),
(37, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:21:\"2020/03/gallery-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gallery-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 27, '_wp_attached_file', '2020/03/gallery-2.jpg'),
(39, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2020/03/gallery-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gallery-2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 28, '_wp_attached_file', '2020/03/gallery-3.jpg'),
(41, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2020/03/gallery-3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"gallery-3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 29, '_wp_attached_file', '2020/03/gallery-4.jpg'),
(43, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:21:\"2020/03/gallery-4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gallery-4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 30, '_wp_attached_file', '2020/03/gallery-5.jpg'),
(45, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2020/03/gallery-5.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gallery-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 31, '_wp_attached_file', '2020/03/gallery-6.jpg'),
(47, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2020/03/gallery-6.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-6-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"gallery-6-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-6-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 32, '_wp_attached_file', '2020/03/gallery-7.jpg'),
(49, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:739;s:4:\"file\";s:21:\"2020/03/gallery-7.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-7-300x277.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gallery-7-768x709.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:709;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 33, '_wp_attached_file', '2020/03/gallery-8.jpg'),
(51, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:21:\"2020/03/gallery-8.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gallery-8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gallery-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gallery-8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 34, '_wp_attached_file', '2020/03/img_bg_1.jpg'),
(53, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:867;s:4:\"file\";s:20:\"2020/03/img_bg_1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_bg_1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"img_bg_1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_bg_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_bg_1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 35, '_wp_attached_file', '2020/03/img_bg_2.jpg'),
(55, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:861;s:4:\"file\";s:20:\"2020/03/img_bg_2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_bg_2-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"img_bg_2-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_bg_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_bg_2-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 36, '_wp_attached_file', '2020/03/img_bg_3.jpg'),
(57, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:919;s:4:\"file\";s:20:\"2020/03/img_bg_3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_bg_3-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"img_bg_3-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_bg_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_bg_3-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 37, '_wp_attached_file', '2020/03/loc.png'),
(59, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:57;s:6:\"height\";i:66;s:4:\"file\";s:15:\"2020/03/loc.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 38, '_wp_attached_file', '2020/03/person1.jpg'),
(61, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:19:\"2020/03/person1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"person1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"person1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 39, '_wp_attached_file', '2020/03/person2.jpg'),
(63, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:19:\"2020/03/person2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"person2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"person2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 40, '_wp_attached_file', '2020/03/person3.jpg'),
(65, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:19:\"2020/03/person3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"person3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"person3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 10, '_thumbnail_id', '34'),
(68, 41, '_edit_last', '1'),
(69, 41, '_edit_lock', '1584516338:1'),
(70, 41, 'cat', 'sports'),
(71, 41, '_thumbnail_id', '35'),
(73, 43, '_edit_last', '1'),
(74, 43, '_edit_lock', '1584692783:1'),
(75, 43, 'cat', 'fashion'),
(76, 43, '_thumbnail_id', '36'),
(79, 45, '_edit_last', '1'),
(81, 45, '_edit_lock', '1584522266:1'),
(82, 47, '_edit_last', '1'),
(84, 47, '_edit_lock', '1584522276:1'),
(85, 49, '_edit_last', '1'),
(87, 49, '_edit_lock', '1584522239:1'),
(88, 51, '_edit_last', '1'),
(90, 51, '_edit_lock', '1584522230:1'),
(91, 53, '_edit_last', '1'),
(93, 53, '_edit_lock', '1584522222:1'),
(94, 55, '_edit_last', '1'),
(96, 55, '_edit_lock', '1584522091:1'),
(97, 57, '_edit_last', '1'),
(99, 57, '_edit_lock', '1584522097:1'),
(100, 59, '_edit_last', '1'),
(102, 59, '_edit_lock', '1584522198:1'),
(103, 61, '_edit_last', '1'),
(105, 61, '_edit_lock', '1584522189:1'),
(106, 63, '_edit_last', '1'),
(108, 63, '_edit_lock', '1584522179:1'),
(109, 65, '_edit_last', '1'),
(111, 65, '_edit_lock', '1584522169:1'),
(112, 67, '_edit_last', '1'),
(114, 67, '_edit_lock', '1584522157:1'),
(115, 69, '_edit_last', '1'),
(117, 69, '_edit_lock', '1584522147:1'),
(118, 71, '_edit_last', '1'),
(120, 71, '_edit_lock', '1584522139:1'),
(135, 71, '_thumbnail_id', '12'),
(137, 69, '_thumbnail_id', '14'),
(139, 67, '_thumbnail_id', '13'),
(141, 65, '_thumbnail_id', '15'),
(143, 63, '_thumbnail_id', '16'),
(145, 61, '_thumbnail_id', '20'),
(147, 59, '_thumbnail_id', '19'),
(149, 57, '_thumbnail_id', '17'),
(151, 55, '_thumbnail_id', '18'),
(153, 53, '_thumbnail_id', '22'),
(155, 51, '_thumbnail_id', '21'),
(157, 49, '_thumbnail_id', '23'),
(159, 47, '_thumbnail_id', '25'),
(161, 45, '_thumbnail_id', '24'),
(179, 1, '_edit_last', '1'),
(180, 1, '_edit_lock', '1584538227:1'),
(181, 88, '_edit_last', '1'),
(182, 88, '_edit_lock', '1584693169:1'),
(183, 90, '_edit_last', '1'),
(184, 90, '_edit_lock', '1584639002:1'),
(185, 92, '_edit_last', '1'),
(186, 92, '_edit_lock', '1584639025:1'),
(187, 94, '_edit_last', '1'),
(188, 94, '_edit_lock', '1584639048:1'),
(189, 96, '_edit_last', '1'),
(190, 96, '_edit_lock', '1584639063:1'),
(191, 98, '_edit_last', '1'),
(192, 98, '_edit_lock', '1584639074:1'),
(193, 100, '_menu_item_type', 'custom'),
(194, 100, '_menu_item_menu_item_parent', '0'),
(195, 100, '_menu_item_object_id', '100'),
(196, 100, '_menu_item_object', 'custom'),
(197, 100, '_menu_item_target', ''),
(198, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 100, '_menu_item_xfn', ''),
(200, 100, '_menu_item_url', 'http://megazine.loc/'),
(202, 101, '_menu_item_type', 'post_type'),
(203, 101, '_menu_item_menu_item_parent', '0'),
(204, 101, '_menu_item_object_id', '98'),
(205, 101, '_menu_item_object', 'page'),
(206, 101, '_menu_item_target', ''),
(207, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 101, '_menu_item_xfn', ''),
(209, 101, '_menu_item_url', ''),
(211, 102, '_menu_item_type', 'post_type'),
(212, 102, '_menu_item_menu_item_parent', '0'),
(213, 102, '_menu_item_object_id', '90'),
(214, 102, '_menu_item_object', 'page'),
(215, 102, '_menu_item_target', ''),
(216, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 102, '_menu_item_xfn', ''),
(218, 102, '_menu_item_url', ''),
(220, 103, '_menu_item_type', 'post_type'),
(221, 103, '_menu_item_menu_item_parent', '0'),
(222, 103, '_menu_item_object_id', '94'),
(223, 103, '_menu_item_object', 'page'),
(224, 103, '_menu_item_target', ''),
(225, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 103, '_menu_item_xfn', ''),
(227, 103, '_menu_item_url', ''),
(229, 104, '_menu_item_type', 'post_type'),
(230, 104, '_menu_item_menu_item_parent', '0'),
(231, 104, '_menu_item_object_id', '88'),
(232, 104, '_menu_item_object', 'page'),
(233, 104, '_menu_item_target', ''),
(234, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 104, '_menu_item_xfn', ''),
(236, 104, '_menu_item_url', ''),
(238, 105, '_menu_item_type', 'post_type'),
(239, 105, '_menu_item_menu_item_parent', '0'),
(240, 105, '_menu_item_object_id', '92'),
(241, 105, '_menu_item_object', 'page'),
(242, 105, '_menu_item_target', ''),
(243, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(244, 105, '_menu_item_xfn', ''),
(245, 105, '_menu_item_url', ''),
(247, 106, '_menu_item_type', 'post_type'),
(248, 106, '_menu_item_menu_item_parent', '0'),
(249, 106, '_menu_item_object_id', '96'),
(250, 106, '_menu_item_object', 'page'),
(251, 106, '_menu_item_target', ''),
(252, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(253, 106, '_menu_item_xfn', ''),
(254, 106, '_menu_item_url', ''),
(256, 107, '_menu_item_type', 'post_type'),
(257, 107, '_menu_item_menu_item_parent', '0'),
(258, 107, '_menu_item_object_id', '2'),
(259, 107, '_menu_item_object', 'page'),
(260, 107, '_menu_item_target', ''),
(261, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(262, 107, '_menu_item_xfn', ''),
(263, 107, '_menu_item_url', ''),
(264, 107, '_menu_item_orphaned', '1584657370'),
(265, 88, '_wp_page_template', 'style.php');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-17 14:40:40', '2020-03-17 11:40:40', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'draft', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-03-18 16:30:27', '2020-03-18 13:30:27', '', 0, 'http://megazine.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2020-03-17 14:40:40', '2020-03-17 11:40:40', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://megazine.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-03-17 14:40:40', '2020-03-17 11:40:40', '', 0, 'http://megazine.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-03-17 14:40:40', '2020-03-17 11:40:40', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://megazine.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-03-17 14:40:40', '2020-03-17 11:40:40', '', 0, 'http://megazine.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-03-17 14:40:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-17 14:40:58', '0000-00-00 00:00:00', '', 0, 'http://megazine.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2020-03-17 15:31:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-17 15:31:32', '0000-00-00 00:00:00', '', 0, 'http://megazine.loc/?p=5', 0, 'post', '', 0),
(6, 1, '2020-03-17 15:32:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-17 15:32:35', '0000-00-00 00:00:00', '', 0, 'http://megazine.loc/?p=6', 0, 'post', '', 0),
(7, 1, '2020-03-18 08:15:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-18 08:15:39', '0000-00-00 00:00:00', '', 0, 'http://megazine.loc/?p=7', 0, 'post', '', 0),
(8, 1, '2020-03-18 08:27:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-18 08:27:59', '0000-00-00 00:00:00', '', 0, 'http://megazine.loc/?p=8', 0, 'post', '', 0),
(9, 1, '2020-03-18 08:28:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-18 08:28:27', '0000-00-00 00:00:00', '', 0, 'http://megazine.loc/?p=9', 0, 'post', '', 0),
(10, 1, '2020-03-18 08:33:11', '2020-03-18 05:33:11', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life', 'Strategic Design for Brands', '', 'publish', 'open', 'open', '', 'strategic-design-for-brands', '', '', '2020-03-18 08:49:31', '2020-03-18 05:49:31', '', 0, 'http://megazine.loc/?p=10', 0, 'post', '', 0),
(11, 1, '2020-03-18 08:33:11', '2020-03-18 05:33:11', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life', 'Strategic Design for Brands', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-03-18 08:33:11', '2020-03-18 05:33:11', '', 10, 'http://megazine.loc/2020/03/18/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-03-18 08:34:41', '2020-03-18 05:34:41', '', 'blog-1', '', 'inherit', 'open', 'closed', '', 'blog-1', '', '', '2020-03-18 08:34:41', '2020-03-18 05:34:41', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-03-18 08:34:44', '2020-03-18 05:34:44', '', 'blog-2', '', 'inherit', 'open', 'closed', '', 'blog-2', '', '', '2020-03-18 08:34:44', '2020-03-18 05:34:44', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-03-18 08:34:44', '2020-03-18 05:34:44', '', 'blog-3', '', 'inherit', 'open', 'closed', '', 'blog-3', '', '', '2020-03-18 08:34:44', '2020-03-18 05:34:44', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-03-18 08:34:45', '2020-03-18 05:34:45', '', 'blog-4', '', 'inherit', 'open', 'closed', '', 'blog-4', '', '', '2020-03-18 08:34:45', '2020-03-18 05:34:45', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2020-03-18 08:34:46', '2020-03-18 05:34:46', '', 'blog-5', '', 'inherit', 'open', 'closed', '', 'blog-5', '', '', '2020-03-18 08:34:46', '2020-03-18 05:34:46', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2020-03-18 08:34:46', '2020-03-18 05:34:46', '', 'blog-6', '', 'inherit', 'open', 'closed', '', 'blog-6', '', '', '2020-03-18 08:34:46', '2020-03-18 05:34:46', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2020-03-18 08:34:47', '2020-03-18 05:34:47', '', 'blog-7', '', 'inherit', 'open', 'closed', '', 'blog-7', '', '', '2020-03-18 08:34:47', '2020-03-18 05:34:47', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-03-18 08:34:48', '2020-03-18 05:34:48', '', 'blog-8', '', 'inherit', 'open', 'closed', '', 'blog-8', '', '', '2020-03-18 08:34:48', '2020-03-18 05:34:48', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2020-03-18 08:34:48', '2020-03-18 05:34:48', '', 'blog-9', '', 'inherit', 'open', 'closed', '', 'blog-9', '', '', '2020-03-18 08:34:48', '2020-03-18 05:34:48', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-03-18 08:34:49', '2020-03-18 05:34:49', '', 'blog-10', '', 'inherit', 'open', 'closed', '', 'blog-10', '', '', '2020-03-18 08:34:49', '2020-03-18 05:34:49', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-03-18 08:34:49', '2020-03-18 05:34:49', '', 'blog-11', '', 'inherit', 'open', 'closed', '', 'blog-11', '', '', '2020-03-18 08:34:49', '2020-03-18 05:34:49', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-03-18 08:34:50', '2020-03-18 05:34:50', '', 'blog-12', '', 'inherit', 'open', 'closed', '', 'blog-12', '', '', '2020-03-18 08:34:50', '2020-03-18 05:34:50', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-03-18 08:34:51', '2020-03-18 05:34:51', '', 'blog-13', '', 'inherit', 'open', 'closed', '', 'blog-13', '', '', '2020-03-18 08:34:51', '2020-03-18 05:34:51', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-03-18 08:34:51', '2020-03-18 05:34:51', '', 'blog-14', '', 'inherit', 'open', 'closed', '', 'blog-14', '', '', '2020-03-18 08:34:51', '2020-03-18 05:34:51', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/blog-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2020-03-18 08:34:52', '2020-03-18 05:34:52', '', 'gallery-1', '', 'inherit', 'open', 'closed', '', 'gallery-1', '', '', '2020-03-18 08:34:52', '2020-03-18 05:34:52', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2020-03-18 08:34:53', '2020-03-18 05:34:53', '', 'gallery-2', '', 'inherit', 'open', 'closed', '', 'gallery-2', '', '', '2020-03-18 08:34:53', '2020-03-18 05:34:53', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-03-18 08:34:53', '2020-03-18 05:34:53', '', 'gallery-3', '', 'inherit', 'open', 'closed', '', 'gallery-3', '', '', '2020-03-18 08:34:53', '2020-03-18 05:34:53', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2020-03-18 08:34:55', '2020-03-18 05:34:55', '', 'gallery-4', '', 'inherit', 'open', 'closed', '', 'gallery-4', '', '', '2020-03-18 08:34:55', '2020-03-18 05:34:55', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2020-03-18 08:34:55', '2020-03-18 05:34:55', '', 'gallery-5', '', 'inherit', 'open', 'closed', '', 'gallery-5', '', '', '2020-03-18 08:34:55', '2020-03-18 05:34:55', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-03-18 08:34:56', '2020-03-18 05:34:56', '', 'gallery-6', '', 'inherit', 'open', 'closed', '', 'gallery-6', '', '', '2020-03-18 08:34:56', '2020-03-18 05:34:56', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-03-18 08:34:57', '2020-03-18 05:34:57', '', 'gallery-7', '', 'inherit', 'open', 'closed', '', 'gallery-7', '', '', '2020-03-18 08:34:57', '2020-03-18 05:34:57', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-03-18 08:34:58', '2020-03-18 05:34:58', '', 'gallery-8', '', 'inherit', 'open', 'closed', '', 'gallery-8', '', '', '2020-03-18 08:34:58', '2020-03-18 05:34:58', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/gallery-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-03-18 08:34:58', '2020-03-18 05:34:58', '', 'img_bg_1', '', 'inherit', 'open', 'closed', '', 'img_bg_1', '', '', '2020-03-18 08:34:58', '2020-03-18 05:34:58', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/img_bg_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-03-18 08:34:59', '2020-03-18 05:34:59', '', 'img_bg_2', '', 'inherit', 'open', 'closed', '', 'img_bg_2', '', '', '2020-03-18 08:34:59', '2020-03-18 05:34:59', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/img_bg_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-03-18 08:35:00', '2020-03-18 05:35:00', '', 'img_bg_3', '', 'inherit', 'open', 'closed', '', 'img_bg_3', '', '', '2020-03-18 08:35:00', '2020-03-18 05:35:00', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/img_bg_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-03-18 08:35:01', '2020-03-18 05:35:01', '', 'loc', '', 'inherit', 'open', 'closed', '', 'loc', '', '', '2020-03-18 08:35:01', '2020-03-18 05:35:01', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/loc.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2020-03-18 08:35:02', '2020-03-18 05:35:02', '', 'person1', '', 'inherit', 'open', 'closed', '', 'person1', '', '', '2020-03-18 08:35:02', '2020-03-18 05:35:02', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/person1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-03-18 08:35:02', '2020-03-18 05:35:02', '', 'person2', '', 'inherit', 'open', 'closed', '', 'person2', '', '', '2020-03-18 08:35:02', '2020-03-18 05:35:02', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/person2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-03-18 08:35:03', '2020-03-18 05:35:03', '', 'person3', '', 'inherit', 'open', 'closed', '', 'person3', '', '', '2020-03-18 08:35:03', '2020-03-18 05:35:03', '', 0, 'http://megazine.loc/wp-content/uploads/2020/03/person3.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-03-18 10:27:54', '2020-03-18 07:27:54', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life', 'Creators of Brands Template', '', 'publish', 'open', 'open', '', 'creators-of-brands-template', '', '', '2020-03-18 10:27:54', '2020-03-18 07:27:54', '', 0, 'http://megazine.loc/?p=41', 0, 'post', '', 0),
(42, 1, '2020-03-18 10:27:54', '2020-03-18 07:27:54', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life', 'Creators of Brands Template', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2020-03-18 10:27:54', '2020-03-18 07:27:54', '', 41, 'http://megazine.loc/2020/03/18/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-03-18 10:28:52', '2020-03-18 07:28:52', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life', 'Design & develop functional sites', '', 'publish', 'open', 'open', '', 'design-develop-functional-sites', '', '', '2020-03-20 10:21:10', '2020-03-20 07:21:10', '', 0, 'http://megazine.loc/?p=43', 0, 'post', '', 0),
(44, 1, '2020-03-18 10:28:52', '2020-03-18 07:28:52', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life', 'Design & develop functional sites', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-03-18 10:28:52', '2020-03-18 07:28:52', '', 43, 'http://megazine.loc/2020/03/18/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-03-18 11:44:10', '2020-03-18 08:44:10', 'Even the all-powerful Pointing has no control about', 'GYM FITNESS', '', 'publish', 'open', 'open', '', 'gym-fitness', '', '', '2020-03-18 12:04:26', '2020-03-18 09:04:26', '', 0, 'http://megazine.loc/?p=45', 0, 'post', '', 0),
(46, 1, '2020-03-18 11:44:10', '2020-03-18 08:44:10', '', 'GYM FITNESS', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2020-03-18 11:44:10', '2020-03-18 08:44:10', '', 45, 'http://megazine.loc/2020/03/18/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-03-18 11:44:19', '2020-03-18 08:44:19', 'Even the all-powerful Pointing has no control about', 'NATURE', '', 'publish', 'open', 'open', '', 'nature', '', '', '2020-03-18 12:04:36', '2020-03-18 09:04:36', '', 0, 'http://megazine.loc/?p=47', 0, 'post', '', 0),
(48, 1, '2020-03-18 11:44:19', '2020-03-18 08:44:19', '', 'NATURE', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-03-18 11:44:19', '2020-03-18 08:44:19', '', 47, 'http://megazine.loc/2020/03/18/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-03-18 11:44:30', '2020-03-18 08:44:30', 'Even the all-powerful Pointing has no control about', 'BOXING SPORTS', '', 'publish', 'open', 'open', '', 'boxing-sports', '', '', '2020-03-18 12:03:59', '2020-03-18 09:03:59', '', 0, 'http://megazine.loc/?p=49', 0, 'post', '', 0),
(50, 1, '2020-03-18 11:44:30', '2020-03-18 08:44:30', '', 'BOXING SPORTS', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-03-18 11:44:30', '2020-03-18 08:44:30', '', 49, 'http://megazine.loc/2020/03/18/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-03-18 11:44:39', '2020-03-18 08:44:39', 'Even the all-powerful Pointing has no control about', 'BMW I8', '', 'publish', 'open', 'open', '', 'bmw-i8', '', '', '2020-03-18 12:03:50', '2020-03-18 09:03:50', '', 0, 'http://megazine.loc/?p=51', 0, 'post', '', 0),
(52, 1, '2020-03-18 11:44:39', '2020-03-18 08:44:39', '', 'BMW I8', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-03-18 11:44:39', '2020-03-18 08:44:39', '', 51, 'http://megazine.loc/2020/03/18/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-03-18 11:44:47', '2020-03-18 08:44:47', 'Even the all-powerful Pointing has no control about', 'BOXING SPORTS', '', 'publish', 'open', 'open', '', 'boxing-sports-2', '', '', '2020-03-18 12:03:42', '2020-03-18 09:03:42', '', 0, 'http://megazine.loc/?p=53', 0, 'post', '', 0),
(54, 1, '2020-03-18 11:44:47', '2020-03-18 08:44:47', '', 'BOXING SPORTS', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-03-18 11:44:47', '2020-03-18 08:44:47', '', 53, 'http://megazine.loc/2020/03/18/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-03-18 11:44:59', '2020-03-18 08:44:59', 'Even the all-powerful Pointing has no control about', 'JOHN WICK', '', 'publish', 'open', 'open', '', 'john-wick', '', '', '2020-03-18 12:01:31', '2020-03-18 09:01:31', '', 0, 'http://megazine.loc/?p=55', 0, 'post', '', 0),
(56, 1, '2020-03-18 11:44:59', '2020-03-18 08:44:59', '', 'JOHN WICK', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-03-18 11:44:59', '2020-03-18 08:44:59', '', 55, 'http://megazine.loc/2020/03/18/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-03-18 11:45:08', '2020-03-18 08:45:08', 'Even the all-powerful Pointing has no control about', 'LIAM NEESON', '', 'publish', 'open', 'open', '', 'liam-neeson', '', '', '2020-03-18 12:01:37', '2020-03-18 09:01:37', '', 0, 'http://megazine.loc/?p=57', 0, 'post', '', 0),
(58, 1, '2020-03-18 11:45:08', '2020-03-18 08:45:08', '', 'LIAM NEESON', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-03-18 11:45:08', '2020-03-18 08:45:08', '', 57, 'http://megazine.loc/2020/03/18/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-03-18 11:45:17', '2020-03-18 08:45:17', 'Even the all-powerful Pointing has no control about', 'SURFING', '', 'publish', 'open', 'open', '', 'surfing', '', '', '2020-03-18 12:03:18', '2020-03-18 09:03:18', '', 0, 'http://megazine.loc/?p=59', 0, 'post', '', 0),
(60, 1, '2020-03-18 11:45:17', '2020-03-18 08:45:17', '', 'SURFING', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-03-18 11:45:17', '2020-03-18 08:45:17', '', 59, 'http://megazine.loc/2020/03/18/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-03-18 11:45:25', '2020-03-18 08:45:25', 'Even the all-powerful Pointing has no control about', 'NATURE', '', 'publish', 'open', 'open', '', 'nature-2', '', '', '2020-03-18 12:03:09', '2020-03-18 09:03:09', '', 0, 'http://megazine.loc/?p=61', 0, 'post', '', 0),
(62, 1, '2020-03-18 11:45:25', '2020-03-18 08:45:25', '', 'NATURE', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-18 11:45:25', '2020-03-18 08:45:25', '', 61, 'http://megazine.loc/2020/03/18/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-03-18 11:45:34', '2020-03-18 08:45:34', 'Even the all-powerful Pointing has no control about', 'GYM FITNESS', '', 'publish', 'open', 'open', '', 'gym-fitness-2', '', '', '2020-03-18 12:02:59', '2020-03-18 09:02:59', '', 0, 'http://megazine.loc/?p=63', 0, 'post', '', 0),
(64, 1, '2020-03-18 11:45:34', '2020-03-18 08:45:34', '', 'GYM FITNESS', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-03-18 11:45:34', '2020-03-18 08:45:34', '', 63, 'http://megazine.loc/2020/03/18/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-03-18 11:45:45', '2020-03-18 08:45:45', 'Even the all-powerful Pointing has no control about', 'BOXING SPORTS', '', 'publish', 'open', 'open', '', 'boxing-sports-3', '', '', '2020-03-18 12:02:49', '2020-03-18 09:02:49', '', 0, 'http://megazine.loc/?p=65', 0, 'post', '', 0),
(66, 1, '2020-03-18 11:45:45', '2020-03-18 08:45:45', '', 'BOXING SPORTS', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-03-18 11:45:45', '2020-03-18 08:45:45', '', 65, 'http://megazine.loc/2020/03/18/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-03-18 11:45:53', '2020-03-18 08:45:53', 'Even the all-powerful Pointing has no control about', 'BMW I8', '', 'publish', 'open', 'open', '', 'bmw-i8-2', '', '', '2020-03-18 12:02:37', '2020-03-18 09:02:37', '', 0, 'http://megazine.loc/?p=67', 0, 'post', '', 0),
(68, 1, '2020-03-18 11:45:53', '2020-03-18 08:45:53', '', 'BMW I8', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-03-18 11:45:53', '2020-03-18 08:45:53', '', 67, 'http://megazine.loc/2020/03/18/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-03-18 11:46:09', '2020-03-18 08:46:09', 'Even the all-powerful Pointing has no control about', 'GYM FITNESS', '', 'publish', 'open', 'open', '', 'gym-fitness-3', '', '', '2020-03-18 12:02:27', '2020-03-18 09:02:27', '', 0, 'http://megazine.loc/?p=69', 0, 'post', '', 0),
(70, 1, '2020-03-18 11:46:09', '2020-03-18 08:46:09', '', 'GYM FITNESS', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-03-18 11:46:09', '2020-03-18 08:46:09', '', 69, 'http://megazine.loc/2020/03/18/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-03-18 11:46:18', '2020-03-18 08:46:18', 'Even the all-powerful Pointing has no control about', 'NATURE', '', 'publish', 'open', 'open', '', 'nature-3', '', '', '2020-03-18 12:02:18', '2020-03-18 09:02:18', '', 0, 'http://megazine.loc/?p=71', 0, 'post', '', 0),
(72, 1, '2020-03-18 11:46:18', '2020-03-18 08:46:18', '', 'NATURE', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-03-18 11:46:18', '2020-03-18 08:46:18', '', 71, 'http://megazine.loc/2020/03/18/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-03-18 11:46:47', '2020-03-18 08:46:47', 'Even the all-powerful Pointing has no control about', 'NATURE', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-03-18 11:46:47', '2020-03-18 08:46:47', '', 71, 'http://megazine.loc/2020/03/18/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-03-18 11:47:05', '2020-03-18 08:47:05', 'Even the all-powerful Pointing has no control about', 'GYM FITNESS', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-03-18 11:47:05', '2020-03-18 08:47:05', '', 69, 'http://megazine.loc/2020/03/18/69-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-03-18 11:47:14', '2020-03-18 08:47:14', 'Even the all-powerful Pointing has no control about', 'BMW I8', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-03-18 11:47:14', '2020-03-18 08:47:14', '', 67, 'http://megazine.loc/2020/03/18/67-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-03-18 11:47:26', '2020-03-18 08:47:26', 'Even the all-powerful Pointing has no control about', 'BOXING SPORTS', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-03-18 11:47:26', '2020-03-18 08:47:26', '', 65, 'http://megazine.loc/2020/03/18/65-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-03-18 11:47:49', '2020-03-18 08:47:49', 'Even the all-powerful Pointing has no control about', 'GYM FITNESS', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-03-18 11:47:49', '2020-03-18 08:47:49', '', 63, 'http://megazine.loc/2020/03/18/63-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-03-18 11:47:59', '2020-03-18 08:47:59', 'Even the all-powerful Pointing has no control about', 'NATURE', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-18 11:47:59', '2020-03-18 08:47:59', '', 61, 'http://megazine.loc/2020/03/18/61-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-03-18 11:48:10', '2020-03-18 08:48:10', 'Even the all-powerful Pointing has no control about', 'SURFING', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-03-18 11:48:10', '2020-03-18 08:48:10', '', 59, 'http://megazine.loc/2020/03/18/59-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-03-18 11:48:21', '2020-03-18 08:48:21', 'Even the all-powerful Pointing has no control about', 'LIAM NEESON', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-03-18 11:48:21', '2020-03-18 08:48:21', '', 57, 'http://megazine.loc/2020/03/18/57-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-03-18 11:48:31', '2020-03-18 08:48:31', 'Even the all-powerful Pointing has no control about', 'JOHN WICK', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-03-18 11:48:31', '2020-03-18 08:48:31', '', 55, 'http://megazine.loc/2020/03/18/55-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-03-18 11:48:43', '2020-03-18 08:48:43', 'Even the all-powerful Pointing has no control about', 'BOXING SPORTS', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-03-18 11:48:43', '2020-03-18 08:48:43', '', 53, 'http://megazine.loc/2020/03/18/53-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-03-18 11:48:53', '2020-03-18 08:48:53', 'Even the all-powerful Pointing has no control about', 'BMW I8', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-03-18 11:48:53', '2020-03-18 08:48:53', '', 51, 'http://megazine.loc/2020/03/18/51-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-03-18 11:49:04', '2020-03-18 08:49:04', 'Even the all-powerful Pointing has no control about', 'BOXING SPORTS', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-03-18 11:49:04', '2020-03-18 08:49:04', '', 49, 'http://megazine.loc/2020/03/18/49-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-03-18 11:49:17', '2020-03-18 08:49:17', 'Even the all-powerful Pointing has no control about', 'NATURE', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-03-18 11:49:17', '2020-03-18 08:49:17', '', 47, 'http://megazine.loc/2020/03/18/47-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-03-18 11:49:27', '2020-03-18 08:49:27', 'Even the all-powerful Pointing has no control about', 'GYM FITNESS', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2020-03-18 11:49:27', '2020-03-18 08:49:27', '', 45, 'http://megazine.loc/2020/03/18/45-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-03-18 16:30:27', '2020-03-18 13:30:27', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-03-18 16:30:27', '2020-03-18 13:30:27', '', 1, 'http://megazine.loc/2020/03/18/1-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-03-19 20:31:54', '2020-03-19 17:31:54', 'Lorem', 'Style', '', 'publish', 'closed', 'closed', '', 'style', '', '', '2020-03-20 07:36:29', '2020-03-20 04:36:29', '', 0, 'http://megazine.loc/?page_id=88', 0, 'page', '', 0),
(89, 1, '2020-03-19 20:31:54', '2020-03-19 17:31:54', 'Lorem', 'Style', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-03-19 20:31:54', '2020-03-19 17:31:54', '', 88, 'http://megazine.loc/2020/03/19/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-03-19 20:32:22', '2020-03-19 17:32:22', 'fashion lorem', 'Fashion', '', 'publish', 'closed', 'closed', '', 'fashion', '', '', '2020-03-19 20:32:22', '2020-03-19 17:32:22', '', 0, 'http://megazine.loc/?page_id=90', 0, 'page', '', 0),
(91, 1, '2020-03-19 20:32:22', '2020-03-19 17:32:22', 'fashion lorem', 'Fashion', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2020-03-19 20:32:22', '2020-03-19 17:32:22', '', 90, 'http://megazine.loc/2020/03/19/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-03-19 20:32:44', '2020-03-19 17:32:44', 'travel ipsum', 'Travel', '', 'publish', 'closed', 'closed', '', 'travel', '', '', '2020-03-19 20:32:44', '2020-03-19 17:32:44', '', 0, 'http://megazine.loc/?page_id=92', 0, 'page', '', 0),
(93, 1, '2020-03-19 20:32:44', '2020-03-19 17:32:44', 'travel ipsum', 'Travel', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2020-03-19 20:32:44', '2020-03-19 17:32:44', '', 92, 'http://megazine.loc/2020/03/19/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-03-19 20:33:05', '2020-03-19 17:33:05', 'lorem sports', 'Sports', '', 'publish', 'closed', 'closed', '', 'sports', '', '', '2020-03-19 20:33:05', '2020-03-19 17:33:05', '', 0, 'http://megazine.loc/?page_id=94', 0, 'page', '', 0),
(95, 1, '2020-03-19 20:33:05', '2020-03-19 17:33:05', 'lorem sports', 'Sports', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-03-19 20:33:05', '2020-03-19 17:33:05', '', 94, 'http://megazine.loc/2020/03/19/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-03-19 20:33:18', '2020-03-19 17:33:18', '', 'Video', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2020-03-19 20:33:18', '2020-03-19 17:33:18', '', 0, 'http://megazine.loc/?page_id=96', 0, 'page', '', 0),
(97, 1, '2020-03-19 20:33:18', '2020-03-19 17:33:18', '', 'Video', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-03-19 20:33:18', '2020-03-19 17:33:18', '', 96, 'http://megazine.loc/2020/03/19/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-03-19 20:33:33', '2020-03-19 17:33:33', '', 'archives', '', 'publish', 'closed', 'closed', '', 'archives', '', '', '2020-03-19 20:33:33', '2020-03-19 17:33:33', '', 0, 'http://megazine.loc/?page_id=98', 0, 'page', '', 0),
(99, 1, '2020-03-19 20:33:33', '2020-03-19 17:33:33', '', 'archives', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-03-19 20:33:33', '2020-03-19 17:33:33', '', 98, 'http://megazine.loc/2020/03/19/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-03-20 01:37:52', '2020-03-19 22:37:52', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-03-20 01:38:59', '2020-03-19 22:38:59', '', 0, 'http://megazine.loc/?p=100', 1, 'nav_menu_item', '', 0),
(101, 1, '2020-03-20 01:37:52', '2020-03-19 22:37:52', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2020-03-20 01:38:59', '2020-03-19 22:38:59', '', 0, 'http://megazine.loc/?p=101', 7, 'nav_menu_item', '', 0),
(102, 1, '2020-03-20 01:37:52', '2020-03-19 22:37:52', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2020-03-20 01:38:59', '2020-03-19 22:38:59', '', 0, 'http://megazine.loc/?p=102', 3, 'nav_menu_item', '', 0),
(103, 1, '2020-03-20 01:37:52', '2020-03-19 22:37:52', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2020-03-20 01:38:59', '2020-03-19 22:38:59', '', 0, 'http://megazine.loc/?p=103', 5, 'nav_menu_item', '', 0),
(104, 1, '2020-03-20 01:37:52', '2020-03-19 22:37:52', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2020-03-20 01:38:59', '2020-03-19 22:38:59', '', 0, 'http://megazine.loc/?p=104', 2, 'nav_menu_item', '', 0),
(105, 1, '2020-03-20 01:37:52', '2020-03-19 22:37:52', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2020-03-20 01:38:59', '2020-03-19 22:38:59', '', 0, 'http://megazine.loc/?p=105', 4, 'nav_menu_item', '', 0),
(106, 1, '2020-03-20 01:37:52', '2020-03-19 22:37:52', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2020-03-20 01:38:59', '2020-03-19 22:38:59', '', 0, 'http://megazine.loc/?p=106', 6, 'nav_menu_item', '', 0),
(107, 1, '2020-03-20 01:36:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-20 01:36:10', '0000-00-00 00:00:00', '', 0, 'http://megazine.loc/?p=107', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Slides', 'slides', 0),
(3, 'HEALTHY', 'healthy', 0),
(4, 'PLACE', 'place', 0),
(5, 'SPORTS', 'sports', 0),
(6, 'AUTO', 'auto', 0),
(7, 'MOVIES', 'movies', 0),
(8, 'NATURE', 'nature', 0),
(9, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(41, 2, 0),
(43, 2, 0),
(45, 3, 0),
(47, 6, 0),
(49, 5, 0),
(51, 4, 0),
(53, 8, 0),
(55, 7, 0),
(57, 7, 0),
(59, 3, 0),
(61, 6, 0),
(63, 5, 0),
(65, 4, 0),
(67, 8, 0),
(69, 3, 0),
(71, 6, 0),
(100, 9, 0),
(101, 9, 0),
(102, 9, 0),
(103, 9, 0),
(104, 9, 0),
(105, 9, 0),
(106, 9, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 3),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 2),
(9, 9, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ermeck'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"17339b44c8ce12f8c8980789fb9dd8064c078e5ab1715bc8e635e6a54eca93b5\";a:4:{s:10:\"expiration\";i:1585654855;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584445255;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_post', 'a:0:{}'),
(20, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1584510567'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '9');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ermeck', '$P$BdK6SaQwBAJ/BRa95zBe1bNHyKUEGb1', 'ermeck', 'ermeck@bk.ru', '', '2020-03-17 11:40:40', '', 0, 'ermeck');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
