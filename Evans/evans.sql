-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 01 2020 г., 11:27
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `evans`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-03 15:04:05', '2019-11-03 12:04:05', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://evans.loc', 'yes'),
(2, 'home', 'http://evans.loc', 'yes'),
(3, 'blogname', 'Evans', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
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
(33, 'active_plugins', 'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'evans', 'yes'),
(41, 'stylesheet', 'evans', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', '', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1576249446;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1576281846;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576325045;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576325202;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576325208;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1572785286;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(129, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:12:\"ermeck@bk.ru\";s:7:\"version\";s:5:\"5.2.4\";s:9:\"timestamp\";i:1572782720;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'Evans', 'yes'),
(145, 'theme_mods_evans', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header_menu\";i:3;s:11:\"footer_menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(149, 'recovery_mode_email_last_sent', '1572800321', 'yes'),
(163, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(281, 'new_admin_email', 'ermeck@bk.ru', 'yes'),
(303, 'category_children', 'a:0:{}', 'yes'),
(312, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.3.1.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-5.3.1-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-5.3.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.1\";s:7:\"version\";s:5:\"5.3.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1576245984;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(314, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1576245988;s:7:\"checked\";a:4:{s:5:\"evans\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(315, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1573056081;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(368, '_site_transient_timeout_theme_roots', '1576247787', 'no'),
(369, '_site_transient_theme_roots', 'a:4:{s:5:\"evans\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(370, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1576245989;s:7:\"checked\";a:2:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";}s:8:\"response\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 7, '_edit_last', '1'),
(5, 7, '_edit_lock', '1573043030:1'),
(15, 11, '_menu_item_type', 'post_type'),
(16, 11, '_menu_item_menu_item_parent', '0'),
(17, 11, '_menu_item_object_id', '7'),
(18, 11, '_menu_item_object', 'page'),
(19, 11, '_menu_item_target', ''),
(20, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 11, '_menu_item_xfn', ''),
(22, 11, '_menu_item_url', ''),
(24, 12, '_menu_item_type', 'taxonomy'),
(25, 12, '_menu_item_menu_item_parent', '0'),
(26, 12, '_menu_item_object_id', '2'),
(27, 12, '_menu_item_object', 'category'),
(28, 12, '_menu_item_target', ''),
(29, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 12, '_menu_item_xfn', ''),
(31, 12, '_menu_item_url', ''),
(33, 13, '_edit_last', '1'),
(34, 13, '_edit_lock', '1573044977:1'),
(35, 15, '_menu_item_type', 'post_type'),
(36, 15, '_menu_item_menu_item_parent', '0'),
(37, 15, '_menu_item_object_id', '13'),
(38, 15, '_menu_item_object', 'page'),
(39, 15, '_menu_item_target', ''),
(40, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 15, '_menu_item_xfn', ''),
(42, 15, '_menu_item_url', ''),
(44, 16, '_menu_item_type', 'post_type'),
(45, 16, '_menu_item_menu_item_parent', '0'),
(46, 16, '_menu_item_object_id', '13'),
(47, 16, '_menu_item_object', 'page'),
(48, 16, '_menu_item_target', ''),
(49, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 16, '_menu_item_xfn', ''),
(51, 16, '_menu_item_url', ''),
(53, 17, '_menu_item_type', 'post_type'),
(54, 17, '_menu_item_menu_item_parent', '0'),
(55, 17, '_menu_item_object_id', '7'),
(56, 17, '_menu_item_object', 'page'),
(57, 17, '_menu_item_target', ''),
(58, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 17, '_menu_item_xfn', ''),
(60, 17, '_menu_item_url', ''),
(62, 18, '_menu_item_type', 'custom'),
(63, 18, '_menu_item_menu_item_parent', '0'),
(64, 18, '_menu_item_object_id', '18'),
(65, 18, '_menu_item_object', 'custom'),
(66, 18, '_menu_item_target', ''),
(67, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 18, '_menu_item_xfn', ''),
(69, 18, '_menu_item_url', 'http://evans.loc'),
(71, 19, '_menu_item_type', 'taxonomy'),
(72, 19, '_menu_item_menu_item_parent', '0'),
(73, 19, '_menu_item_object_id', '2'),
(74, 19, '_menu_item_object', 'category'),
(75, 19, '_menu_item_target', ''),
(76, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 19, '_menu_item_xfn', ''),
(78, 19, '_menu_item_url', ''),
(80, 22, '_edit_last', '1'),
(81, 22, '_edit_lock', '1572803757:1'),
(83, 24, '_edit_last', '1'),
(85, 24, '_edit_lock', '1573004616:1'),
(86, 26, '_edit_last', '1'),
(88, 26, '_edit_lock', '1572803809:1'),
(89, 28, '_edit_last', '1'),
(91, 28, '_edit_lock', '1572803838:1'),
(92, 30, '_edit_last', '1'),
(94, 30, '_edit_lock', '1572803866:1'),
(95, 32, '_edit_last', '1'),
(97, 32, '_edit_lock', '1572806694:1'),
(110, 40, '_wp_attached_file', '2019/11/bg_1.jpg'),
(111, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2876;s:4:\"file\";s:16:\"2019/11/bg_1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bg_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"bg_1-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg_1-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 41, '_wp_attached_file', '2019/11/bg_2.jpg'),
(113, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1449;s:4:\"file\";s:16:\"2019/11/bg_2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bg_2-207x300.jpg\";s:5:\"width\";i:207;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"bg_2-768x1113.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg_2-707x1024.jpg\";s:5:\"width\";i:707;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 42, '_wp_attached_file', '2019/11/bg_3.jpg'),
(115, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1371;s:4:\"file\";s:16:\"2019/11/bg_3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bg_3-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg_3-768x526.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg_3-1024x702.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 43, '_wp_attached_file', '2019/11/loc.png'),
(117, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:47;s:6:\"height\";i:57;s:4:\"file\";s:15:\"2019/11/loc.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 44, '_wp_attached_file', '2019/11/person_1.jpg'),
(119, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:479;s:6:\"height\";i:479;s:4:\"file\";s:20:\"2019/11/person_1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"person_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 45, '_wp_attached_file', '2019/11/person_2.jpg'),
(121, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:607;s:6:\"height\";i:607;s:4:\"file\";s:20:\"2019/11/person_2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"person_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 46, '_wp_attached_file', '2019/11/person_3.jpg'),
(123, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:517;s:6:\"height\";i:517;s:4:\"file\";s:20:\"2019/11/person_3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"person_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 47, '_wp_attached_file', '2019/11/person_4.jpg'),
(125, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:433;s:6:\"height\";i:433;s:4:\"file\";s:20:\"2019/11/person_4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"person_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 48, '_wp_attached_file', '2019/11/work-1.jpg'),
(127, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1920;s:4:\"file\";s:18:\"2019/11/work-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"work-1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work-1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 49, '_wp_attached_file', '2019/11/work-2.jpg'),
(129, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:18:\"2019/11/work-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"work-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 50, '_wp_attached_file', '2019/11/work-3.jpg'),
(131, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1351;s:4:\"file\";s:18:\"2019/11/work-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work-3-300x211.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"work-3-768x540.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work-3-1024x721.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:721;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 51, '_wp_attached_file', '2019/11/work-4.jpg'),
(133, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1923;s:4:\"file\";s:18:\"2019/11/work-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work-4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"work-4-768x1154.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work-4-682x1024.jpg\";s:5:\"width\";i:682;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 52, '_wp_attached_file', '2019/11/work-5.jpg'),
(135, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:18:\"2019/11/work-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work-5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"work-5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"work-5-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 53, '_wp_attached_file', '2019/11/work-6.jpg'),
(137, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1280;s:4:\"file\";s:18:\"2019/11/work-6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"work-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"work-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"work-6-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"work-6-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 22, '_thumbnail_id', '53'),
(140, 24, '_thumbnail_id', '52'),
(142, 26, '_thumbnail_id', '51'),
(144, 28, '_thumbnail_id', '50'),
(146, 30, '_thumbnail_id', '49'),
(148, 32, '_thumbnail_id', '48'),
(150, 1, '_edit_last', '1'),
(151, 1, '_edit_lock', '1572806850:1'),
(152, 55, '_edit_last', '1'),
(153, 55, '_edit_lock', '1572937934:1'),
(154, 55, '_thumbnail_id', '40'),
(155, 56, '_edit_last', '1'),
(156, 56, '_edit_lock', '1572944924:1'),
(157, 56, '_thumbnail_id', '41'),
(158, 57, '_edit_last', '1'),
(159, 57, '_edit_lock', '1572944999:1'),
(160, 57, '_thumbnail_id', '51'),
(161, 60, '_edit_last', '1'),
(162, 60, '_edit_lock', '1572951986:1'),
(164, 62, '_edit_last', '1'),
(165, 62, '_edit_lock', '1572952023:1'),
(167, 64, '_edit_last', '1'),
(168, 64, '_edit_lock', '1572952065:1'),
(170, 66, '_edit_last', '1'),
(171, 66, '_edit_lock', '1573624672:1'),
(179, 60, 'classes', 'media block-6 services d-block'),
(180, 60, 'icon', 'flaticon-layers'),
(182, 62, 'classes', 'media block-6 services active d-block'),
(183, 62, 'icon', 'flaticon-web-programming'),
(185, 64, 'classes', 'media block-6 services d-block'),
(186, 64, 'icon', 'flaticon-idea'),
(188, 66, 'classes', 'media block-6 services active-2 d-block'),
(189, 66, 'icon', 'flaticon-contract'),
(192, 7, '_thumbnail_id', '41'),
(193, 7, '_wp_page_template', 'page-about.php'),
(194, 68, '_edit_last', '1'),
(195, 68, '_edit_lock', '1573026328:1'),
(197, 68, 'customer_name', 'Jeff Nucci'),
(198, 68, 'customer_pos', 'Businessman'),
(199, 68, '_thumbnail_id', '44'),
(201, 70, '_edit_last', '1'),
(202, 70, '_edit_lock', '1573026377:1'),
(203, 70, 'customer_name', 'John Doe'),
(204, 70, 'customer_pos', 'Manager'),
(205, 70, '_thumbnail_id', '45'),
(207, 72, '_edit_last', '1'),
(208, 72, '_edit_lock', '1573026650:1'),
(209, 72, 'customer_name', 'Allan Edgar'),
(210, 72, 'customer_pos', 'Writer'),
(211, 72, '_thumbnail_id', '47'),
(213, 74, '_edit_last', '1'),
(214, 74, '_edit_lock', '1573026717:1'),
(215, 74, 'customer_name', 'Jack London'),
(216, 74, 'customer_pos', 'Designer'),
(217, 74, '_thumbnail_id', '46'),
(219, 76, '_edit_last', '1'),
(220, 76, '_edit_lock', '1573028309:1'),
(221, 76, 'customer_name', 'Tom Hanks'),
(222, 76, 'customer_pos', 'Gamer'),
(223, 76, '_thumbnail_id', '47'),
(230, 80, '_edit_last', '1'),
(231, 80, '_edit_lock', '1573044563:1'),
(233, 80, 'ContactData', 'icon-phone2'),
(235, 13, '_wp_page_template', 'page-contact.php'),
(236, 82, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(237, 82, '_mail', 'a:8:{s:7:\"subject\";s:22:\"Evans \"[your-subject]\"\";s:6:\"sender\";s:27:\"Evans <wordpress@evans.loc>\";s:4:\"body\";s:160:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Evans (http://evans.loc)\";s:9:\"recipient\";s:12:\"ermeck@bk.ru\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(238, 82, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Evans \"[your-subject]\"\";s:6:\"sender\";s:27:\"Evans <wordpress@evans.loc>\";s:4:\"body\";s:102:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Evans (http://evans.loc)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:22:\"Reply-To: ermeck@bk.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(239, 82, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(240, 82, '_additional_settings', NULL),
(241, 82, '_locale', 'en_US');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-03 15:04:05', '2019-11-03 12:04:05', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'draft', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2019-11-03 21:47:30', '2019-11-03 18:47:30', '', 0, 'http://evans.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2019-11-03 15:04:05', '2019-11-03 12:04:05', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://evans.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-11-03 15:04:05', '2019-11-03 12:04:05', '', 0, 'http://evans.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-03 15:04:05', '2019-11-03 12:04:05', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://evans.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-11-03 15:04:05', '2019-11-03 12:04:05', '', 0, 'http://evans.loc/?page_id=3', 0, 'page', '', 0),
(7, 1, '2019-11-03 20:02:20', '2019-11-03 17:02:20', '<h2>Web <span>Designer</span>, hobbyist writer, and the CEO &amp; Founder of <span>Evans</span></h2>\r\n\r\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-11-06 09:35:52', '2019-11-06 06:35:52', '', 0, 'http://evans.loc/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-11-03 20:02:20', '2019-11-03 17:02:20', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-03 20:02:20', '2019-11-03 17:02:20', '', 7, 'http://evans.loc/2019/11/03/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-11-03 20:02:32', '2019-11-03 17:02:32', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-03 20:02:32', '2019-11-03 17:02:32', '', 7, 'http://evans.loc/2019/11/03/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-11-03 20:04:05', '2019-11-03 17:04:05', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2019-11-03 20:34:54', '2019-11-03 17:34:54', '', 0, 'http://evans.loc/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-11-03 20:04:05', '2019-11-03 17:04:05', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2019-11-03 20:34:54', '2019-11-03 17:34:54', '', 0, 'http://evans.loc/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2019-11-03 20:04:22', '2019-11-03 17:04:22', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-11-06 15:58:34', '2019-11-06 12:58:34', '', 0, 'http://evans.loc/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-11-03 20:04:22', '2019-11-03 17:04:22', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-11-03 20:04:22', '2019-11-03 17:04:22', '', 13, 'http://evans.loc/2019/11/03/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-11-03 20:04:42', '2019-11-03 17:04:42', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2019-11-03 20:34:54', '2019-11-03 17:34:54', '', 0, 'http://evans.loc/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2019-11-03 20:06:43', '2019-11-03 17:06:43', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-11-03 20:34:32', '2019-11-03 17:34:32', '', 0, 'http://evans.loc/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2019-11-03 20:06:43', '2019-11-03 17:06:43', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-11-03 20:34:32', '2019-11-03 17:34:32', '', 0, 'http://evans.loc/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2019-11-03 20:06:43', '2019-11-03 17:06:43', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2019-11-03 20:34:32', '2019-11-03 17:34:32', '', 0, 'http://evans.loc/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-11-03 20:06:43', '2019-11-03 17:06:43', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-11-03 20:34:32', '2019-11-03 17:34:32', '', 0, 'http://evans.loc/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2019-11-03 20:33:56', '2019-11-03 17:33:56', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-03 20:33:56', '2019-11-03 17:33:56', '', 7, 'http://evans.loc/2019/11/03/7-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-11-03 20:34:13', '2019-11-03 17:34:13', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-11-03 20:34:13', '2019-11-03 17:34:13', '', 13, 'http://evans.loc/2019/11/03/13-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-11-03 20:44:32', '2019-11-03 17:44:32', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Prickly', '', 'publish', 'open', 'open', '', 'prickly', '', '', '2019-11-03 20:58:11', '2019-11-03 17:58:11', '', 0, 'http://evans.loc/?p=22', 0, 'post', '', 0),
(23, 1, '2019-11-03 20:44:32', '2019-11-03 17:44:32', '', 'Prickly', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-03 20:44:32', '2019-11-03 17:44:32', '', 22, 'http://evans.loc/2019/11/03/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-11-03 20:44:44', '2019-11-03 17:44:44', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Fashion Style', '', 'publish', 'open', 'open', '', 'fashion-style', '', '', '2019-11-06 04:43:35', '2019-11-06 01:43:35', '', 0, 'http://evans.loc/?p=24', 0, 'post', '', 0),
(25, 1, '2019-11-03 20:44:44', '2019-11-03 17:44:44', '', 'Fashion Style', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-03 20:44:44', '2019-11-03 17:44:44', '', 24, 'http://evans.loc/2019/11/03/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-11-03 20:45:01', '2019-11-03 17:45:01', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Topless', '', 'publish', 'open', 'open', '', 'topless', '', '', '2019-11-03 20:59:01', '2019-11-03 17:59:01', '', 0, 'http://evans.loc/?p=26', 0, 'post', '', 0),
(27, 1, '2019-11-03 20:45:01', '2019-11-03 17:45:01', '', 'Topless', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-11-03 20:45:01', '2019-11-03 17:45:01', '', 26, 'http://evans.loc/2019/11/03/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-11-03 20:45:15', '2019-11-03 17:45:15', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Jacket Leather', '', 'publish', 'open', 'open', '', 'jacket-leather', '', '', '2019-11-03 20:59:31', '2019-11-03 17:59:31', '', 0, 'http://evans.loc/?p=28', 0, 'post', '', 0),
(29, 1, '2019-11-03 20:45:15', '2019-11-03 17:45:15', '', 'Jacket Leather', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-11-03 20:45:15', '2019-11-03 17:45:15', '', 28, 'http://evans.loc/2019/11/03/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-11-03 20:45:29', '2019-11-03 17:45:29', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Workplace Office', '', 'publish', 'open', 'open', '', 'workplace-office', '', '', '2019-11-03 21:00:02', '2019-11-03 18:00:02', '', 0, 'http://evans.loc/?p=30', 0, 'post', '', 0),
(31, 1, '2019-11-03 20:45:29', '2019-11-03 17:45:29', '', 'Workplace Office', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-11-03 20:45:29', '2019-11-03 17:45:29', '', 30, 'http://evans.loc/2019/11/03/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-11-03 20:45:43', '2019-11-03 17:45:43', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Midway', '', 'publish', 'open', 'open', '', 'midway', '', '', '2019-11-03 21:00:28', '2019-11-03 18:00:28', '', 0, 'http://evans.loc/?p=32', 0, 'post', '', 0),
(33, 1, '2019-11-03 20:45:43', '2019-11-03 17:45:43', '', 'Midway', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-11-03 20:45:43', '2019-11-03 17:45:43', '', 32, 'http://evans.loc/2019/11/03/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-11-03 20:46:19', '2019-11-03 17:46:19', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Midway', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-11-03 20:46:19', '2019-11-03 17:46:19', '', 32, 'http://evans.loc/2019/11/03/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-11-03 20:46:36', '2019-11-03 17:46:36', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Workplace Office', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-11-03 20:46:36', '2019-11-03 17:46:36', '', 30, 'http://evans.loc/2019/11/03/30-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-11-03 20:46:47', '2019-11-03 17:46:47', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Jacket Leather', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-11-03 20:46:47', '2019-11-03 17:46:47', '', 28, 'http://evans.loc/2019/11/03/28-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-11-03 20:47:01', '2019-11-03 17:47:01', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Topless', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-11-03 20:47:01', '2019-11-03 17:47:01', '', 26, 'http://evans.loc/2019/11/03/26-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-11-03 20:47:17', '2019-11-03 17:47:17', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Fashion Style', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-03 20:47:17', '2019-11-03 17:47:17', '', 24, 'http://evans.loc/2019/11/03/24-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-11-03 20:47:37', '2019-11-03 17:47:37', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.', 'Prickly', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-03 20:47:37', '2019-11-03 17:47:37', '', 22, 'http://evans.loc/2019/11/03/22-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-11-03 20:57:27', '2019-11-03 17:57:27', '', 'bg_1', '', 'inherit', 'open', 'closed', '', 'bg_1', '', '', '2019-11-03 20:57:27', '2019-11-03 17:57:27', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/bg_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-11-03 20:57:29', '2019-11-03 17:57:29', '', 'bg_2', '', 'inherit', 'open', 'closed', '', 'bg_2', '', '', '2019-11-03 20:57:29', '2019-11-03 17:57:29', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/bg_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-11-03 20:57:30', '2019-11-03 17:57:30', '', 'bg_3', '', 'inherit', 'open', 'closed', '', 'bg_3', '', '', '2019-11-03 20:57:30', '2019-11-03 17:57:30', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/bg_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-11-03 20:57:31', '2019-11-03 17:57:31', '', 'loc', '', 'inherit', 'open', 'closed', '', 'loc', '', '', '2019-11-03 20:57:31', '2019-11-03 17:57:31', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/loc.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2019-11-03 20:57:31', '2019-11-03 17:57:31', '', 'person_1', '', 'inherit', 'open', 'closed', '', 'person_1', '', '', '2019-11-03 20:57:31', '2019-11-03 17:57:31', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/person_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-11-03 20:57:32', '2019-11-03 17:57:32', '', 'person_2', '', 'inherit', 'open', 'closed', '', 'person_2', '', '', '2019-11-03 20:57:32', '2019-11-03 17:57:32', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/person_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-11-03 20:57:33', '2019-11-03 17:57:33', '', 'person_3', '', 'inherit', 'open', 'closed', '', 'person_3', '', '', '2019-11-03 20:57:33', '2019-11-03 17:57:33', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/person_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-11-03 20:57:33', '2019-11-03 17:57:33', '', 'person_4', '', 'inherit', 'open', 'closed', '', 'person_4', '', '', '2019-11-03 20:57:33', '2019-11-03 17:57:33', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/person_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-11-03 20:57:34', '2019-11-03 17:57:34', '', 'work-1', '', 'inherit', 'open', 'closed', '', 'work-1', '', '', '2019-11-03 20:57:34', '2019-11-03 17:57:34', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/work-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-11-03 20:57:35', '2019-11-03 17:57:35', '', 'work-2', '', 'inherit', 'open', 'closed', '', 'work-2', '', '', '2019-11-03 20:57:35', '2019-11-03 17:57:35', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/work-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-11-03 20:57:36', '2019-11-03 17:57:36', '', 'work-3', '', 'inherit', 'open', 'closed', '', 'work-3', '', '', '2019-11-03 20:57:36', '2019-11-03 17:57:36', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/work-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-11-03 20:57:37', '2019-11-03 17:57:37', '', 'work-4', '', 'inherit', 'open', 'closed', '', 'work-4', '', '', '2019-11-03 20:57:37', '2019-11-03 17:57:37', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/work-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-11-03 20:57:39', '2019-11-03 17:57:39', '', 'work-5', '', 'inherit', 'open', 'closed', '', 'work-5', '', '', '2019-11-03 20:57:39', '2019-11-03 17:57:39', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/work-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-11-03 20:57:40', '2019-11-03 17:57:40', '', 'work-6', '', 'inherit', 'open', 'closed', '', 'work-6', '', '', '2019-11-03 20:57:40', '2019-11-03 17:57:40', '', 0, 'http://evans.loc/wp-content/uploads/2019/11/work-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-11-03 21:47:30', '2019-11-03 18:47:30', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-03 21:47:30', '2019-11-03 18:47:30', '', 1, 'http://evans.loc/2019/11/03/1-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-11-05 10:13:12', '2019-11-05 07:13:12', '', 'Slide 1', '', 'publish', 'closed', 'closed', '', 'slide-1', '', '', '2019-11-05 10:13:38', '2019-11-05 07:13:38', '', 0, 'http://evans.loc/?post_type=slider_post&#038;p=55', 0, 'slider_post', '', 0),
(56, 1, '2019-11-05 10:14:53', '2019-11-05 07:14:53', '', 'Slide 2', '', 'publish', 'closed', 'closed', '', 'slide-2', '', '', '2019-11-05 10:14:53', '2019-11-05 07:14:53', '', 0, 'http://evans.loc/?post_type=slider_post&#038;p=56', 0, 'slider_post', '', 0),
(57, 1, '2019-11-05 10:29:45', '2019-11-05 07:29:45', '', 'Slide 3', '', 'publish', 'closed', 'closed', '', 'slide-3', '', '', '2019-11-05 10:29:45', '2019-11-05 07:29:45', '', 0, 'http://evans.loc/?post_type=slider_post&#038;p=57', 0, 'slider_post', '', 0),
(58, 1, '2019-11-05 12:10:07', '2019-11-05 09:10:07', '&nbsp;\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'About', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2019-11-05 12:10:07', '2019-11-05 09:10:07', '', 7, 'http://evans.loc/2019/11/05/7-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2019-11-05 12:11:01', '2019-11-05 09:11:01', '<h2>Web <span>Designer</span>, hobbyist writer, and the CEO &amp; Founder of <span>Evans</span></h2>\r\n\r\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-05 12:11:01', '2019-11-05 09:11:01', '', 7, 'http://evans.loc/2019/11/05/7-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-11-05 13:19:15', '2019-11-05 10:19:15', '203 Fake St. Mountain View, San Francisco, California, USA', 'Web Design', '', 'publish', 'open', 'open', '', 'web-design', '', '', '2019-11-05 14:08:44', '2019-11-05 11:08:44', '', 0, 'http://evans.loc/?p=60', 0, 'post', '', 0),
(61, 1, '2019-11-05 13:19:15', '2019-11-05 10:19:15', '203 Fake St. Mountain View, San Francisco, California, USA', 'Web Design', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-11-05 13:19:15', '2019-11-05 10:19:15', '', 60, 'http://evans.loc/2019/11/05/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-11-05 13:19:40', '2019-11-05 10:19:40', 'A small river named Duden flows by their place and supplies.', 'Web Development', '', 'publish', 'open', 'open', '', 'web-development', '', '', '2019-11-05 14:09:23', '2019-11-05 11:09:23', '', 0, 'http://evans.loc/?p=62', 0, 'post', '', 0),
(63, 1, '2019-11-05 13:19:40', '2019-11-05 10:19:40', 'A small river named Duden flows by their place and supplies.', 'Web Development', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-11-05 13:19:40', '2019-11-05 10:19:40', '', 62, 'http://evans.loc/2019/11/05/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-11-05 13:20:03', '2019-11-05 10:20:03', 'A small river named Duden flows by their place and supplies.', 'Graphic Design', '', 'publish', 'open', 'open', '', 'graphic-design', '', '', '2019-11-05 14:10:06', '2019-11-05 11:10:06', '', 0, 'http://evans.loc/?p=64', 0, 'post', '', 0),
(65, 1, '2019-11-05 13:20:03', '2019-11-05 10:20:03', 'A small river named Duden flows by their place and supplies.', 'Graphic Design', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-11-05 13:20:03', '2019-11-05 10:20:03', '', 64, 'http://evans.loc/2019/11/05/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-11-05 13:20:18', '2019-11-05 10:20:18', 'A small river named Duden flows by their place and supplies.', 'Writing', '', 'publish', 'open', 'open', '', 'writing', '', '', '2019-11-05 14:10:40', '2019-11-05 11:10:40', '', 0, 'http://evans.loc/?p=66', 0, 'post', '', 0),
(67, 1, '2019-11-05 13:20:18', '2019-11-05 10:20:18', 'A small river named Duden flows by their place and supplies.', 'Writing', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-11-05 13:20:18', '2019-11-05 10:20:18', '', 66, 'http://evans.loc/2019/11/05/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-11-06 10:45:24', '2019-11-06 07:45:24', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 1', '', 'publish', 'open', 'open', '', 'customer-1', '', '', '2019-11-06 10:47:31', '2019-11-06 07:47:31', '', 0, 'http://evans.loc/?p=68', 0, 'post', '', 0),
(69, 1, '2019-11-06 10:45:24', '2019-11-06 07:45:24', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 1', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2019-11-06 10:45:24', '2019-11-06 07:45:24', '', 68, 'http://evans.loc/2019/11/06/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-11-06 10:48:37', '2019-11-06 07:48:37', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 2', '', 'publish', 'open', 'open', '', 'customer-2', '', '', '2019-11-06 10:48:37', '2019-11-06 07:48:37', '', 0, 'http://evans.loc/?p=70', 0, 'post', '', 0),
(71, 1, '2019-11-06 10:48:37', '2019-11-06 07:48:37', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 2', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-06 10:48:37', '2019-11-06 07:48:37', '', 70, 'http://evans.loc/2019/11/06/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-11-06 10:51:33', '2019-11-06 07:51:33', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 3', '', 'publish', 'open', 'open', '', 'customer-3', '', '', '2019-11-06 10:51:33', '2019-11-06 07:51:33', '', 0, 'http://evans.loc/?p=72', 0, 'post', '', 0),
(73, 1, '2019-11-06 10:51:33', '2019-11-06 07:51:33', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 3', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-11-06 10:51:33', '2019-11-06 07:51:33', '', 72, 'http://evans.loc/2019/11/06/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-11-06 10:54:18', '2019-11-06 07:54:18', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 4', '', 'publish', 'open', 'open', '', 'customer-4', '', '', '2019-11-06 10:54:18', '2019-11-06 07:54:18', '', 0, 'http://evans.loc/?p=74', 0, 'post', '', 0),
(75, 1, '2019-11-06 10:54:18', '2019-11-06 07:54:18', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 4', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-11-06 10:54:18', '2019-11-06 07:54:18', '', 74, 'http://evans.loc/2019/11/06/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-11-06 10:55:38', '2019-11-06 07:55:38', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 5', '', 'publish', 'open', 'open', '', 'customer-5', '', '', '2019-11-06 10:55:38', '2019-11-06 07:55:38', '', 0, 'http://evans.loc/?p=76', 0, 'post', '', 0),
(77, 1, '2019-11-06 10:55:38', '2019-11-06 07:55:38', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 'Customer 5', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-11-06 10:55:38', '2019-11-06 07:55:38', '', 76, 'http://evans.loc/2019/11/06/76-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-11-06 15:41:03', '2019-11-06 12:41:03', '198 West 21th Street, Suite 721 New York NY 10016', 'Address', '', 'publish', 'open', 'open', '', 'address', '', '', '2019-11-06 15:45:16', '2019-11-06 12:45:16', '', 0, 'http://evans.loc/?p=80', 0, 'post', '', 0),
(81, 1, '2019-11-06 15:41:03', '2019-11-06 12:41:03', '198 West 21th Street, Suite 721 New York NY 10016', 'Address', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-11-06 15:41:03', '2019-11-06 12:41:03', '', 80, 'http://evans.loc/2019/11/06/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-11-06 16:01:21', '2019-11-06 13:01:21', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nEvans \"[your-subject]\"\nEvans <wordpress@evans.loc>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Evans (http://evans.loc)\nermeck@bk.ru\nReply-To: [your-email]\n\n0\n0\n\nEvans \"[your-subject]\"\nEvans <wordpress@evans.loc>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Evans (http://evans.loc)\n[your-email]\nReply-To: ermeck@bk.ru\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-11-06 16:01:21', '2019-11-06 13:01:21', '', 0, 'http://evans.loc/?post_type=wpcf7_contact_form&p=82', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Work', 'work', 0),
(3, 'Menu in header', 'menu-in-header', 0),
(4, 'Menu in footer', 'menu-in-footer', 0),
(5, 'Illustration', 'illustration', 0),
(6, 'Writing', 'writing', 0),
(7, 'Application', 'application', 0),
(9, 'Web Design', 'web-design', 0),
(10, 'Skils', 'skils', 0),
(11, 'Customers', 'customers', 0),
(13, 'Contact Data', 'contact-data', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 3, 0),
(12, 3, 0),
(15, 3, 0),
(16, 4, 0),
(17, 4, 0),
(18, 4, 0),
(19, 4, 0),
(22, 5, 0),
(24, 6, 0),
(26, 7, 0),
(28, 5, 0),
(30, 6, 0),
(32, 9, 0),
(60, 10, 0),
(62, 10, 0),
(64, 10, 0),
(66, 10, 0),
(68, 11, 0),
(70, 11, 0),
(72, 11, 0),
(74, 11, 0),
(76, 11, 0),
(80, 13, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 4),
(11, 11, 'category', '', 0, 5),
(13, 13, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'i2gan'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"c7fcf0be36341d37bc485dcf2c0e99cdc802ae14efa6380bbd7462176af2c764\";a:4:{s:10:\"expiration\";i:1573992402;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36\";s:5:\"login\";i:1572782802;}s:64:\"edebab8e3b97e0aab2d183e6fa84b8743a649c05db5b0ed4854529b8e6656d36\";a:4:{s:10:\"expiration\";i:1574147115;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1572937515;}s:64:\"ba04dc5f967f53515b49216f7b08ce29abb9e62d3476e67ee301b932b3631b03\";a:4:{s:10:\"expiration\";i:1574830852;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1573621252;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '83'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '3'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1572945057'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'i2gan', '$P$Bnuk4STPrVzTkbgu3uHV3teYZIv02C0', 'i2gan', 'ermeck@bk.ru', '', '2019-11-03 12:04:05', '', 0, 'i2gan');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
