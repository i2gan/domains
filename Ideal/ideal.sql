-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 01 2020 г., 11:28
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
-- База данных: `ideal`
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
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-14 13:28:33', '2019-12-14 10:28:33', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(1, 'siteurl', 'http://ideal.loc', 'yes'),
(2, 'home', 'http://ideal.loc', 'yes'),
(3, 'blogname', 'Ideal', 'yes'),
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
(33, 'active_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ideal', 'yes'),
(41, 'stylesheet', 'ideal', 'yes'),
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
(93, 'admin_email_lifespan', '1591871313', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1579012115;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579040914;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579040915;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579084114;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579084138;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579084147;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576319488;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(131, 'can_compress_scripts', '0', 'no'),
(146, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:12:\"ermeck@bk.ru\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1576758674;}', 'no'),
(148, 'current_theme', 'Ideal', 'yes'),
(149, 'theme_mods_ideal', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:16:\"menu_header_left\";i:2;s:17:\"menu_header_right\";i:3;s:11:\"menu_footer\";i:12;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(163, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(164, 'recovery_mode_email_last_sent', '1576343290', 'yes'),
(293, 'category_children', 'a:0:{}', 'yes'),
(312, '_site_transient_timeout_theme_roots', '1579010731', 'no'),
(313, '_site_transient_theme_roots', 'a:4:{s:5:\"ideal\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(316, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579008984;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(317, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579008986;s:7:\"checked\";a:4:{s:5:\"ideal\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(318, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579008987;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(3, 5, '_edit_lock', '1576324648:1'),
(4, 7, '_edit_last', '1'),
(5, 7, '_edit_lock', '1576324696:1'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1577167431:1'),
(8, 11, '_edit_last', '1'),
(9, 11, '_edit_lock', '1576324717:1'),
(10, 13, '_edit_last', '1'),
(11, 13, '_edit_lock', '1576324734:1'),
(12, 15, '_menu_item_type', 'custom'),
(13, 15, '_menu_item_menu_item_parent', '0'),
(14, 15, '_menu_item_object_id', '15'),
(15, 15, '_menu_item_object', 'custom'),
(16, 15, '_menu_item_target', ''),
(17, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 15, '_menu_item_xfn', ''),
(19, 15, '_menu_item_url', 'http://ideal.loc/'),
(21, 16, '_menu_item_type', 'post_type'),
(22, 16, '_menu_item_menu_item_parent', '0'),
(23, 16, '_menu_item_object_id', '5'),
(24, 16, '_menu_item_object', 'page'),
(25, 16, '_menu_item_target', ''),
(26, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 16, '_menu_item_xfn', ''),
(28, 16, '_menu_item_url', ''),
(30, 17, '_menu_item_type', 'post_type'),
(31, 17, '_menu_item_menu_item_parent', '0'),
(32, 17, '_menu_item_object_id', '7'),
(33, 17, '_menu_item_object', 'page'),
(34, 17, '_menu_item_target', ''),
(35, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 17, '_menu_item_xfn', ''),
(37, 17, '_menu_item_url', ''),
(39, 18, '_menu_item_type', 'post_type'),
(40, 18, '_menu_item_menu_item_parent', '0'),
(41, 18, '_menu_item_object_id', '13'),
(42, 18, '_menu_item_object', 'page'),
(43, 18, '_menu_item_target', ''),
(44, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 18, '_menu_item_xfn', ''),
(46, 18, '_menu_item_url', ''),
(47, 18, '_menu_item_orphaned', '1576324970'),
(48, 19, '_menu_item_type', 'post_type'),
(49, 19, '_menu_item_menu_item_parent', '0'),
(50, 19, '_menu_item_object_id', '11'),
(51, 19, '_menu_item_object', 'page'),
(52, 19, '_menu_item_target', ''),
(53, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 19, '_menu_item_xfn', ''),
(55, 19, '_menu_item_url', ''),
(56, 19, '_menu_item_orphaned', '1576324971'),
(57, 20, '_menu_item_type', 'post_type'),
(58, 20, '_menu_item_menu_item_parent', '0'),
(59, 20, '_menu_item_object_id', '9'),
(60, 20, '_menu_item_object', 'page'),
(61, 20, '_menu_item_target', ''),
(62, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 20, '_menu_item_xfn', ''),
(64, 20, '_menu_item_url', ''),
(65, 20, '_menu_item_orphaned', '1576324971'),
(66, 21, '_menu_item_type', 'post_type'),
(67, 21, '_menu_item_menu_item_parent', '0'),
(68, 21, '_menu_item_object_id', '13'),
(69, 21, '_menu_item_object', 'page'),
(70, 21, '_menu_item_target', ''),
(71, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 21, '_menu_item_xfn', ''),
(73, 21, '_menu_item_url', ''),
(75, 22, '_menu_item_type', 'post_type'),
(76, 22, '_menu_item_menu_item_parent', '0'),
(77, 22, '_menu_item_object_id', '11'),
(78, 22, '_menu_item_object', 'page'),
(79, 22, '_menu_item_target', ''),
(80, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 22, '_menu_item_xfn', ''),
(82, 22, '_menu_item_url', ''),
(84, 23, '_menu_item_type', 'post_type'),
(85, 23, '_menu_item_menu_item_parent', '0'),
(86, 23, '_menu_item_object_id', '9'),
(87, 23, '_menu_item_object', 'page'),
(88, 23, '_menu_item_target', ''),
(89, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 23, '_menu_item_xfn', ''),
(91, 23, '_menu_item_url', ''),
(93, 24, '_edit_last', '1'),
(94, 24, '_edit_lock', '1576349747:1'),
(95, 26, '_edit_last', '1'),
(96, 26, '_edit_lock', '1576349718:1'),
(97, 27, '_edit_last', '1'),
(98, 27, '_edit_lock', '1576355524:1'),
(99, 28, '_wp_attached_file', '2019/12/hero_1.png'),
(100, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1360;s:6:\"height\";i:872;s:4:\"file\";s:18:\"2019/12/hero_1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero_1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero_1-1024x657.png\";s:5:\"width\";i:1024;s:6:\"height\";i:657;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hero_1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 29, '_wp_attached_file', '2019/12/hero_2.png'),
(102, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1360;s:6:\"height\";i:872;s:4:\"file\";s:18:\"2019/12/hero_2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero_2-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero_2-1024x657.png\";s:5:\"width\";i:1024;s:6:\"height\";i:657;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero_2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hero_2-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 30, '_wp_attached_file', '2019/12/hero_3.jpg'),
(104, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1360;s:6:\"height\";i:872;s:4:\"file\";s:18:\"2019/12/hero_3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero_3-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero_3-1024x657.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:657;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hero_3-768x492.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 31, '_wp_attached_file', '2019/12/img_1.jpg'),
(106, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/12/img_1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img_1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img_1-768x683.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 32, '_wp_attached_file', '2019/12/img_2.jpg'),
(108, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/12/img_2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img_2-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img_2-768x683.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 33, '_wp_attached_file', '2019/12/img_3.jpg'),
(110, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/12/img_3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img_3-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img_3-768x683.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 34, '_wp_attached_file', '2019/12/img_4.jpg'),
(112, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/12/img_4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img_4-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img_4-768x683.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 35, '_wp_attached_file', '2019/12/img_5.jpg'),
(114, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/12/img_5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img_5-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 36, '_wp_attached_file', '2019/12/img_6.jpg'),
(116, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/12/img_6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img_6-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img_6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 37, '_wp_attached_file', '2019/12/person_1.jpg'),
(118, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2019/12/person_1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 38, '_wp_attached_file', '2019/12/person_2.jpg'),
(120, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2019/12/person_2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 39, '_wp_attached_file', '2019/12/person_3.jpg'),
(122, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2019/12/person_3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 40, '_wp_attached_file', '2019/12/person_4.jpg'),
(124, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2019/12/person_4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 41, '_wp_attached_file', '2019/12/person_5.jpg'),
(126, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2019/12/person_5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"person_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 42, '_wp_attached_file', '2019/12/post_1.jpg'),
(128, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/12/post_1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post_1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 43, '_wp_attached_file', '2019/12/post_2.jpg'),
(130, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/12/post_2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post_2-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 44, '_wp_attached_file', '2019/12/post_3.jpg'),
(132, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/12/post_3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post_3-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 45, '_wp_attached_file', '2019/12/post_4.jpg'),
(134, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/12/post_4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post_4-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 46, '_wp_attached_file', '2019/12/post_5.jpg'),
(136, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/12/post_5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post_5-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 47, '_wp_attached_file', '2019/12/post_6.jpg'),
(138, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/12/post_6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post_6-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post_6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 50, '_edit_last', '1'),
(140, 50, '_edit_lock', '1576362173:1'),
(142, 52, '_edit_last', '1'),
(143, 52, '_edit_lock', '1576362371:1'),
(145, 54, '_edit_last', '1'),
(146, 54, '_edit_lock', '1576362210:1'),
(148, 56, '_edit_last', '1'),
(150, 56, '_edit_lock', '1576362193:1'),
(152, 56, '_thumbnail_id', '31'),
(154, 54, '_thumbnail_id', '33'),
(156, 52, '_thumbnail_id', '32'),
(159, 50, '_thumbnail_id', '34'),
(167, 62, '_edit_last', '1'),
(168, 62, '_edit_lock', '1577162322:1'),
(179, 62, 'images', '28,29,30'),
(183, 66, '_edit_last', '1'),
(184, 66, '_edit_lock', '1576404860:1'),
(186, 66, 'quote_author', 'Mark Dorney'),
(187, 66, 'quote_spec', 'CEO and Co-Founder'),
(189, 68, '_edit_last', '1'),
(190, 68, '_edit_lock', '1576404871:1'),
(192, 68, 'quote_author', 'John Smith'),
(193, 68, 'quote_spec', 'CEO and Co-Founder'),
(195, 70, '_edit_last', '1'),
(196, 70, '_edit_lock', '1576406101:1'),
(197, 70, 'quote_author', 'Jack London'),
(198, 70, 'quote_spec', 'CEO and Co-Founder'),
(199, 72, '_edit_last', '1'),
(200, 72, '_edit_lock', '1577186084:1'),
(202, 74, '_edit_last', '1'),
(204, 74, '_edit_lock', '1577186098:1'),
(205, 76, '_edit_last', '1'),
(207, 76, '_edit_lock', '1577186111:1'),
(208, 78, '_edit_last', '1'),
(210, 78, '_edit_lock', '1577186126:1'),
(211, 72, '_thumbnail_id', '42'),
(213, 74, '_thumbnail_id', '43'),
(215, 76, '_thumbnail_id', '44'),
(217, 78, '_thumbnail_id', '45'),
(219, 1, '_edit_last', '1'),
(220, 1, '_edit_lock', '1576421612:1'),
(221, 1, '_wp_trash_meta_status', 'draft'),
(222, 1, '_wp_trash_meta_time', '1576421615'),
(223, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(224, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(225, 62, '_thumbnail_id', '33'),
(227, 83, '_edit_last', '1'),
(228, 83, '_edit_lock', '1577105296:1'),
(229, 83, '_thumbnail_id', '29'),
(231, 85, '_edit_last', '1'),
(232, 85, '_edit_lock', '1577105344:1'),
(233, 85, '_thumbnail_id', '31'),
(235, 87, '_edit_last', '1'),
(236, 87, '_edit_lock', '1577105520:1'),
(237, 87, '_thumbnail_id', '34'),
(240, 91, '_edit_last', '1'),
(241, 91, '_edit_lock', '1577165814:1'),
(242, 91, 'specialty', 'Founder'),
(243, 91, '_thumbnail_id', '37'),
(245, 93, '_edit_last', '1'),
(246, 93, '_edit_lock', '1577165507:1'),
(247, 93, 'specialty', 'Founder'),
(248, 93, '_thumbnail_id', '38'),
(250, 95, '_edit_last', '1'),
(251, 95, '_edit_lock', '1577165547:1'),
(252, 95, 'specialty', 'Founder'),
(253, 95, '_thumbnail_id', '40'),
(255, 97, '_edit_last', '1'),
(256, 97, '_edit_lock', '1577165576:1'),
(257, 97, 'specialty', 'Founder'),
(258, 97, '_thumbnail_id', '39'),
(260, 99, '_edit_last', '1'),
(261, 99, '_edit_lock', '1577165619:1'),
(262, 99, 'specialty', 'Founder'),
(263, 99, '_thumbnail_id', '41'),
(265, 101, '_edit_last', '1'),
(266, 101, '_edit_lock', '1577165646:1'),
(267, 101, 'specialty', 'Founder'),
(268, 101, '_thumbnail_id', '37'),
(271, 104, '_edit_last', '1'),
(272, 104, '_edit_lock', '1577186137:1'),
(273, 104, '_thumbnail_id', '42'),
(275, 106, '_edit_last', '1'),
(276, 106, '_edit_lock', '1577186147:1'),
(277, 106, '_thumbnail_id', '43'),
(279, 108, '_edit_last', '1'),
(280, 108, '_edit_lock', '1577186156:1'),
(281, 108, '_thumbnail_id', '44'),
(283, 110, '_edit_last', '1'),
(284, 110, '_edit_lock', '1577186288:1'),
(285, 110, '_thumbnail_id', '45'),
(288, 112, '_menu_item_type', 'custom'),
(289, 112, '_menu_item_menu_item_parent', '0'),
(290, 112, '_menu_item_object_id', '112'),
(291, 112, '_menu_item_object', 'custom'),
(292, 112, '_menu_item_target', ''),
(293, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(294, 112, '_menu_item_xfn', ''),
(295, 112, '_menu_item_url', 'http://ideal.loc'),
(297, 113, '_menu_item_type', 'post_type'),
(298, 113, '_menu_item_menu_item_parent', '0'),
(299, 113, '_menu_item_object_id', '9'),
(300, 113, '_menu_item_object', 'page'),
(301, 113, '_menu_item_target', ''),
(302, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(303, 113, '_menu_item_xfn', ''),
(304, 113, '_menu_item_url', ''),
(306, 114, '_menu_item_type', 'post_type'),
(307, 114, '_menu_item_menu_item_parent', '0'),
(308, 114, '_menu_item_object_id', '13'),
(309, 114, '_menu_item_object', 'page'),
(310, 114, '_menu_item_target', ''),
(311, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(312, 114, '_menu_item_xfn', ''),
(313, 114, '_menu_item_url', ''),
(315, 115, '_menu_item_type', 'post_type'),
(316, 115, '_menu_item_menu_item_parent', '0'),
(317, 115, '_menu_item_object_id', '7'),
(318, 115, '_menu_item_object', 'page'),
(319, 115, '_menu_item_target', ''),
(320, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 115, '_menu_item_xfn', ''),
(322, 115, '_menu_item_url', ''),
(324, 116, '_menu_item_type', 'post_type'),
(325, 116, '_menu_item_menu_item_parent', '0'),
(326, 116, '_menu_item_object_id', '11'),
(327, 116, '_menu_item_object', 'page'),
(328, 116, '_menu_item_target', ''),
(329, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(330, 116, '_menu_item_xfn', ''),
(331, 116, '_menu_item_url', '');

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
(1, 1, '2019-12-14 13:28:33', '2019-12-14 10:28:33', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2019-12-15 17:53:35', '2019-12-15 14:53:35', '', 0, 'http://ideal.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-14 13:28:33', '2019-12-14 10:28:33', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://ideal.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-12-14 13:28:33', '2019-12-14 10:28:33', '', 0, 'http://ideal.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-14 13:28:33', '2019-12-14 10:28:33', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://ideal.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-14 13:28:33', '2019-12-14 10:28:33', '', 0, 'http://ideal.loc/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-12-14 14:59:50', '2019-12-14 11:59:50', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2019-12-14 14:59:50', '2019-12-14 11:59:50', '', 0, 'http://ideal.loc/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-12-14 14:59:50', '2019-12-14 11:59:50', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-12-14 14:59:50', '2019-12-14 11:59:50', '', 5, 'http://ideal.loc/2019/12/14/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-12-14 15:00:37', '2019-12-14 12:00:37', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-12-14 15:00:37', '2019-12-14 12:00:37', '', 0, 'http://ideal.loc/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-12-14 15:00:37', '2019-12-14 12:00:37', '', 'Services', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-12-14 15:00:37', '2019-12-14 12:00:37', '', 7, 'http://ideal.loc/2019/12/14/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-12-14 15:00:50', '2019-12-14 12:00:50', '<div class=\"row\">\r\n  <div class=\"col-md-5\">\r\n    <h2 class=\"heading-39291\">We Create Building, and Interior Design That Enhance The Human Experience</h2>\r\n    <p class=\"mb-5\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, consequuntur, harum? Culpa, iure vel fugiat veritatis obcaecati architecto.</p>\r\n    <p><a href=\"#\" class=\"more-39291\">More About Us</a></p>\r\n  </div>\r\n\r\n  <div class=\"col-md-4 ml-auto\">\r\n    <div class=\"year-experience-99301\">\r\n      <h2 class=\"heading-39291\">The Best In Interior Design</h2>\r\n      <span class=\"text\">Years <span>of Experience</span></span>\r\n      <span class=\"number\"><span>75</span></span>\r\n    </div>\r\n  </div>\r\n</div>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-12-14 23:38:36', '2019-12-14 20:38:36', '', 0, 'http://ideal.loc/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-12-14 15:00:50', '2019-12-14 12:00:50', '', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-12-14 15:00:50', '2019-12-14 12:00:50', '', 9, 'http://ideal.loc/2019/12/14/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-12-14 15:00:58', '2019-12-14 12:00:58', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-12-14 15:00:58', '2019-12-14 12:00:58', '', 0, 'http://ideal.loc/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-12-14 15:00:58', '2019-12-14 12:00:58', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-14 15:00:58', '2019-12-14 12:00:58', '', 11, 'http://ideal.loc/2019/12/14/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-12-14 15:01:07', '2019-12-14 12:01:07', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-14 15:01:07', '2019-12-14 12:01:07', '', 0, 'http://ideal.loc/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-12-14 15:01:07', '2019-12-14 12:01:07', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-14 15:01:07', '2019-12-14 12:01:07', '', 13, 'http://ideal.loc/2019/12/14/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-12-14 15:02:16', '2019-12-14 12:02:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-12-14 15:03:07', '2019-12-14 12:03:07', '', 0, 'http://ideal.loc/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-12-14 15:02:16', '2019-12-14 12:02:16', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-12-14 15:03:07', '2019-12-14 12:03:07', '', 0, 'http://ideal.loc/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2019-12-14 15:02:16', '2019-12-14 12:02:16', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-12-14 15:03:07', '2019-12-14 12:03:07', '', 0, 'http://ideal.loc/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2019-12-14 15:02:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-14 15:02:50', '0000-00-00 00:00:00', '', 0, 'http://ideal.loc/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-12-14 15:02:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-14 15:02:50', '0000-00-00 00:00:00', '', 0, 'http://ideal.loc/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-12-14 15:02:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-14 15:02:51', '0000-00-00 00:00:00', '', 0, 'http://ideal.loc/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-12-14 15:03:54', '2019-12-14 12:03:54', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-12-14 15:03:54', '2019-12-14 12:03:54', '', 0, 'http://ideal.loc/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2019-12-14 15:03:54', '2019-12-14 12:03:54', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-12-14 15:03:54', '2019-12-14 12:03:54', '', 0, 'http://ideal.loc/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2019-12-14 15:03:54', '2019-12-14 12:03:54', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-12-14 15:03:54', '2019-12-14 12:03:54', '', 0, 'http://ideal.loc/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2019-12-14 21:36:28', '2019-12-14 18:36:28', '<div class=\"ftco-blocks-cover-1\">\r\n  <div class=\"ftco-cover-1\" style=\"background-image: url(\'http://ideal.loc/wp-content/uploads/2019/12/hero_1.png\');\">\r\n      <div class=\"container\">\r\n        <div class=\"row align-items-center justify-content-center\">\r\n          <div class=\"col-lg-6 text-center\">\r\n            <h1>Welcome to <span class=\"text-primary\">Ideal.</span>  </h1>\r\n            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\r\n            <p class=\"mb-0\"><a href=\"#\" class=\"btn btn-primary px-4 py-2 rounded-0\">Get A Quote</a></p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n  </div>\r\n</div>', 'Slide 1', '', 'publish', 'closed', 'closed', '', 'slide-1', '', '', '2019-12-14 21:58:08', '2019-12-14 18:58:08', '', 0, 'http://ideal.loc/?post_type=slider&#038;p=24', 0, 'slider', '', 0),
(25, 1, '2019-12-14 21:38:30', '2019-12-14 18:38:30', '<div class=\"ftco-blocks-cover-1\">\n<div class=\"ftco-cover-1\" style=\"background-image: url(\'&lt;?php bloginfo(\'template_url\'); ?&gt;&lt;p&gt;/images/hero_1.jpg\');\">\n<div class=\"container\">\n<div class=\"row align-items-center justify-content-center\">\n<div class=\"col-lg-6 text-center\">\n<h1>Welcome to <span class=\"text-primary\">Ideal.</span></h1>\nLorem ipsum dolor sit amet consectetur adipisicing elit.\n<p class=\"mb-0\"><a class=\"btn btn-primary px-4 py-2 rounded-0\" href=\"#\">Get A Quote</a></p>\n\n</div>\n</div>\n</div>\n</div>\n</div>', 'Slide 1', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2019-12-14 21:38:30', '2019-12-14 18:38:30', '', 24, 'http://ideal.loc/2019/12/14/24-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2019-12-14 21:39:23', '2019-12-14 18:39:23', '<div class=\"ftco-blocks-cover-1\">\r\n        <div class=\"ftco-cover-1\" style=\"background-image: url(\'http://ideal.loc/wp-content/uploads/2019/12/hero_2.png\');\">\r\n          <div class=\"container\">\r\n              <div class=\"row align-items-center justify-content-center\">\r\n                <div class=\"col-lg-6 text-center\">\r\n                  <h1>Enhance Human Experience</h1>\r\n                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\r\n                  <p class=\"mb-0\"><a href=\"#\" class=\"btn btn-primary px-4 py-2 rounded-0\">Get A Quote</a></p>\r\n                </div>\r\n              </div>\r\n            </div>\r\n        </div>\r\n      </div>', 'Slide 2', '', 'publish', 'closed', 'closed', '', 'slide-2', '', '', '2019-12-14 21:57:39', '2019-12-14 18:57:39', '', 0, 'http://ideal.loc/?post_type=slider&#038;p=26', 0, 'slider', '', 0),
(27, 1, '2019-12-14 21:39:48', '2019-12-14 18:39:48', '<div class=\"ftco-blocks-cover-1\">\r\n        <div class=\"ftco-cover-1\" style=\"background-image: url(\'http://ideal.loc/wp-content/uploads/2019/12/hero_3.jpg\');\">\r\n          <div class=\"container\">\r\n            <div class=\"row align-items-center justify-content-center\">\r\n              <div class=\"col-lg-6 text-center\">\r\n                <h1>The Best Interior Design</h1>\r\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\r\n                <p class=\"mb-0\"><a href=\"#\" class=\"btn btn-primary px-4 py-2 rounded-0\">Get A Quote</a></p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>', 'Slide 3', '', 'publish', 'closed', 'closed', '', 'slide-3', '', '', '2019-12-14 21:56:27', '2019-12-14 18:56:27', '', 0, 'http://ideal.loc/?post_type=slider&#038;p=27', 0, 'slider', '', 0),
(28, 1, '2019-12-14 21:54:50', '2019-12-14 18:54:50', '', 'hero_1', '', 'inherit', 'open', 'closed', '', 'hero_1', '', '', '2019-12-14 21:54:50', '2019-12-14 18:54:50', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/hero_1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-12-14 21:54:53', '2019-12-14 18:54:53', '', 'hero_2', '', 'inherit', 'open', 'closed', '', 'hero_2', '', '', '2019-12-14 21:54:53', '2019-12-14 18:54:53', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/hero_2.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-12-14 21:54:55', '2019-12-14 18:54:55', '', 'hero_3', '', 'inherit', 'open', 'closed', '', 'hero_3', '', '', '2019-12-14 21:54:55', '2019-12-14 18:54:55', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/hero_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-12-14 21:54:56', '2019-12-14 18:54:56', '', 'img_1', '', 'inherit', 'open', 'closed', '', 'img_1', '', '', '2019-12-14 21:54:56', '2019-12-14 18:54:56', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/img_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-12-14 21:54:57', '2019-12-14 18:54:57', '', 'img_2', '', 'inherit', 'open', 'closed', '', 'img_2', '', '', '2019-12-14 21:54:57', '2019-12-14 18:54:57', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/img_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-12-14 21:54:58', '2019-12-14 18:54:58', '', 'img_3', '', 'inherit', 'open', 'closed', '', 'img_3', '', '', '2019-12-14 21:54:58', '2019-12-14 18:54:58', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/img_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-12-14 21:54:59', '2019-12-14 18:54:59', '', 'img_4', '', 'inherit', 'open', 'closed', '', 'img_4', '', '', '2019-12-14 21:54:59', '2019-12-14 18:54:59', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/img_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-12-14 21:55:00', '2019-12-14 18:55:00', '', 'img_5', '', 'inherit', 'open', 'closed', '', 'img_5', '', '', '2019-12-14 21:55:00', '2019-12-14 18:55:00', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/img_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-12-14 21:55:00', '2019-12-14 18:55:00', '', 'img_6', '', 'inherit', 'open', 'closed', '', 'img_6', '', '', '2019-12-14 21:55:00', '2019-12-14 18:55:00', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/img_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-12-14 21:55:01', '2019-12-14 18:55:01', '', 'person_1', '', 'inherit', 'open', 'closed', '', 'person_1', '', '', '2019-12-14 21:55:01', '2019-12-14 18:55:01', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/person_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-12-14 21:55:01', '2019-12-14 18:55:01', '', 'person_2', '', 'inherit', 'open', 'closed', '', 'person_2', '', '', '2019-12-14 21:55:01', '2019-12-14 18:55:01', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/person_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-12-14 21:55:02', '2019-12-14 18:55:02', '', 'person_3', '', 'inherit', 'open', 'closed', '', 'person_3', '', '', '2019-12-14 21:55:02', '2019-12-14 18:55:02', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/person_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-12-14 21:55:02', '2019-12-14 18:55:02', '', 'person_4', '', 'inherit', 'open', 'closed', '', 'person_4', '', '', '2019-12-14 21:55:02', '2019-12-14 18:55:02', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/person_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-12-14 21:55:03', '2019-12-14 18:55:03', '', 'person_5', '', 'inherit', 'open', 'closed', '', 'person_5', '', '', '2019-12-14 21:55:03', '2019-12-14 18:55:03', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/person_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-12-14 21:55:04', '2019-12-14 18:55:04', '', 'post_1', '', 'inherit', 'open', 'closed', '', 'post_1', '', '', '2019-12-14 21:55:04', '2019-12-14 18:55:04', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/post_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-12-14 21:55:04', '2019-12-14 18:55:04', '', 'post_2', '', 'inherit', 'open', 'closed', '', 'post_2', '', '', '2019-12-14 21:55:04', '2019-12-14 18:55:04', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/post_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-12-14 21:55:05', '2019-12-14 18:55:05', '', 'post_3', '', 'inherit', 'open', 'closed', '', 'post_3', '', '', '2019-12-14 21:55:05', '2019-12-14 18:55:05', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/post_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-12-14 21:55:05', '2019-12-14 18:55:05', '', 'post_4', '', 'inherit', 'open', 'closed', '', 'post_4', '', '', '2019-12-14 21:55:05', '2019-12-14 18:55:05', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/post_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-12-14 21:55:06', '2019-12-14 18:55:06', '', 'post_5', '', 'inherit', 'open', 'closed', '', 'post_5', '', '', '2019-12-14 21:55:06', '2019-12-14 18:55:06', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/post_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-12-14 21:55:07', '2019-12-14 18:55:07', '', 'post_6', '', 'inherit', 'open', 'closed', '', 'post_6', '', '', '2019-12-14 21:55:07', '2019-12-14 18:55:07', '', 0, 'http://ideal.loc/wp-content/uploads/2019/12/post_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-12-14 21:57:36', '2019-12-14 18:57:36', '<div class=\"ftco-blocks-cover-1\">\n        <div class=\"ftco-cover-1\" style=\"background-image: url(\'http://ideal.loc/wp-content/uploads/2019/12/hero_3.jpg\');\">\n          <div class=\"container\">\n              <div class=\"row align-items-center justify-content-center\">\n                <div class=\"col-lg-6 text-center\">\n                  <h1>Enhance Human Experience</h1>\n                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\n                  <p class=\"mb-0\"><a href=\"#\" class=\"btn btn-primary px-4 py-2 rounded-0\">Get A Quote</a></p>\n                </div>\n              </div>\n            </div>\n        </div>\n      </div>', 'Slide 2', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2019-12-14 21:57:36', '2019-12-14 18:57:36', '', 26, 'http://ideal.loc/2019/12/14/26-autosave-v1/', 0, 'revision', '', 0),
(49, 1, '2019-12-14 23:38:36', '2019-12-14 20:38:36', '<div class=\"row\">\r\n  <div class=\"col-md-5\">\r\n    <h2 class=\"heading-39291\">We Create Building, and Interior Design That Enhance The Human Experience</h2>\r\n    <p class=\"mb-5\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, consequuntur, harum? Culpa, iure vel fugiat veritatis obcaecati architecto.</p>\r\n    <p><a href=\"#\" class=\"more-39291\">More About Us</a></p>\r\n  </div>\r\n\r\n  <div class=\"col-md-4 ml-auto\">\r\n    <div class=\"year-experience-99301\">\r\n      <h2 class=\"heading-39291\">The Best In Interior Design</h2>\r\n      <span class=\"text\">Years <span>of Experience</span></span>\r\n      <span class=\"number\"><span>75</span></span>\r\n    </div>\r\n  </div>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-12-14 23:38:36', '2019-12-14 20:38:36', '', 9, 'http://ideal.loc/2019/12/14/9-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-12-15 00:50:17', '2019-12-14 21:50:17', '', 'SED UT PERSPICIATIS UNDE THIS', '', 'publish', 'open', 'open', '', 'sed-ut-perspiciatis-unde-this', '', '', '2019-12-15 01:25:14', '2019-12-14 22:25:14', '', 0, 'http://ideal.loc/?p=50', 0, 'post', '', 0),
(51, 1, '2019-12-15 00:50:17', '2019-12-14 21:50:17', '', 'SED UT PERSPICIATIS UNDE THIS', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-12-15 00:50:17', '2019-12-14 21:50:17', '', 50, 'http://ideal.loc/2019/12/15/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-12-15 00:50:44', '2019-12-14 21:50:44', '', 'CURABITUR BIBENDUM', '', 'publish', 'open', 'open', '', 'curabitur-bibendum', '', '', '2019-12-15 01:26:10', '2019-12-14 22:26:10', '', 0, 'http://ideal.loc/?p=52', 0, 'post', '', 0),
(53, 1, '2019-12-15 00:50:44', '2019-12-14 21:50:44', '', 'CURABITUR BIBENDUM', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-12-15 00:50:44', '2019-12-14 21:50:44', '', 52, 'http://ideal.loc/2019/12/15/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-12-15 00:51:02', '2019-12-14 21:51:02', '', 'Obcaecati Architecto', '', 'publish', 'open', 'open', '', 'obcaecati-architecto', '', '', '2019-12-15 01:25:51', '2019-12-14 22:25:51', '', 0, 'http://ideal.loc/?p=54', 0, 'post', '', 0),
(55, 1, '2019-12-15 00:51:02', '2019-12-14 21:51:02', '', 'Obcaecati Architecto', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-12-15 00:51:02', '2019-12-14 21:51:02', '', 54, 'http://ideal.loc/2019/12/15/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-12-15 00:51:22', '2019-12-14 21:51:22', '', 'QUISQUE NON AUGUE', '', 'publish', 'open', 'open', '', 'quisque-non-augue', '', '', '2019-12-15 01:25:34', '2019-12-14 22:25:34', '', 0, 'http://ideal.loc/?p=56', 0, 'post', '', 0),
(57, 1, '2019-12-15 00:51:22', '2019-12-14 21:51:22', '', 'QUISQUE NON AUGUE', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-12-15 00:51:22', '2019-12-14 21:51:22', '', 56, 'http://ideal.loc/2019/12/15/56-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-12-15 09:52:40', '2019-12-15 06:52:40', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Obcaecati Architecto', '', 'publish', 'open', 'open', '', 'curabitur-bibendum-2', '', '', '2019-12-24 07:34:00', '2019-12-24 04:34:00', '', 0, 'http://ideal.loc/?p=62', 0, 'post', '', 0),
(63, 1, '2019-12-15 09:52:40', '2019-12-15 06:52:40', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non libero blanditiis dignissimos natus, necessitatibus consequatur vel alias delectus!', 'CURABITUR BIBENDUM', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-12-15 09:52:40', '2019-12-15 06:52:40', '', 62, 'http://ideal.loc/2019/12/15/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-12-23 12:30:33', '2019-12-23 09:30:33', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Obcaecati Architecto', '', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2019-12-23 12:30:33', '2019-12-23 09:30:33', '', 62, 'http://ideal.loc/2019/12/15/62-autosave-v1/', 0, 'revision', '', 0),
(65, 1, '2019-12-15 12:05:53', '2019-12-15 09:05:53', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non libero blanditiis dignissimos natus, necessitatibus consequatur vel alias delectus!', 'Obcaecati Architecto', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-12-15 12:05:53', '2019-12-15 09:05:53', '', 62, 'http://ideal.loc/2019/12/15/62-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-12-15 13:12:12', '2019-12-15 10:12:12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus totam sit delectus earum facere ex ea sunt, eos?', 'Quote 1', '', 'publish', 'open', 'open', '', 'quote-1', '', '', '2019-12-15 13:14:18', '2019-12-15 10:14:18', '', 0, 'http://ideal.loc/?p=66', 0, 'post', '', 0),
(67, 1, '2019-12-15 13:12:12', '2019-12-15 10:12:12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus totam sit delectus earum facere ex ea sunt, eos?', 'Quote 1', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-12-15 13:12:12', '2019-12-15 10:12:12', '', 66, 'http://ideal.loc/2019/12/15/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-12-15 13:14:53', '2019-12-15 10:14:53', 'Eligendi earum ad perferendis dolores, dolor quas. Ullam in, eaque mollitia suscipit id aspernatur rerum! Sit quibusdam ullam tempora quis, in voluptatum maiores veritatis recusandae!', 'Quote 2', '', 'publish', 'open', 'open', '', 'quote-2', '', '', '2019-12-15 13:15:25', '2019-12-15 10:15:25', '', 0, 'http://ideal.loc/?p=68', 0, 'post', '', 0),
(69, 1, '2019-12-15 13:14:53', '2019-12-15 10:14:53', 'Eligendi earum ad perferendis dolores, dolor quas. Ullam in, eaque mollitia suscipit id aspernatur rerum! Sit quibusdam ullam tempora quis, in voluptatum maiores veritatis recusandae!', 'Quote 2', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2019-12-15 13:14:53', '2019-12-15 10:14:53', '', 68, 'http://ideal.loc/2019/12/15/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-12-15 13:16:28', '2019-12-15 10:16:28', 'Officia, eius omnis rem non quis eos excepturi cumque sequi pariatur eaque quasi nihil dicta tempore voluptate culpa, veritatis incidunt voluptatibus qui?', 'Quote 3', '', 'publish', 'open', 'open', '', 'quote-3', '', '', '2019-12-15 13:16:28', '2019-12-15 10:16:28', '', 0, 'http://ideal.loc/?p=70', 0, 'post', '', 0),
(71, 1, '2019-12-15 13:16:28', '2019-12-15 10:16:28', 'Officia, eius omnis rem non quis eos excepturi cumque sequi pariatur eaque quasi nihil dicta tempore voluptate culpa, veritatis incidunt voluptatibus qui?', 'Quote 3', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-12-15 13:16:28', '2019-12-15 10:16:28', '', 70, 'http://ideal.loc/2019/12/15/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-12-15 17:36:21', '2019-12-15 14:36:21', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Soluta possimus ad a, cumque!', '', 'publish', 'open', 'open', '', 'soluta-possimus-ad-a-cumque', '', '', '2019-12-24 14:16:59', '2019-12-24 11:16:59', '', 0, 'http://ideal.loc/?p=72', 0, 'post', '', 0),
(73, 1, '2019-12-15 17:36:21', '2019-12-15 14:36:21', '', 'Soluta possimus ad a, cumque!', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-12-15 17:36:21', '2019-12-15 14:36:21', '', 72, 'http://ideal.loc/2019/12/15/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-12-15 17:36:30', '2019-12-15 14:36:30', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Reiciendis autem, maxime ex possimus.', '', 'publish', 'open', 'open', '', 'reiciendis-autem-maxime-ex-possimus', '', '', '2019-12-24 14:17:18', '2019-12-24 11:17:18', '', 0, 'http://ideal.loc/?p=74', 0, 'post', '', 0),
(75, 1, '2019-12-15 17:36:30', '2019-12-15 14:36:30', '', 'Reiciendis autem, maxime ex possimus.', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-12-15 17:36:30', '2019-12-15 14:36:30', '', 74, 'http://ideal.loc/2019/12/15/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-12-15 17:36:38', '2019-12-15 14:36:38', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Distinctio cumque quia molestias quos!', '', 'publish', 'open', 'open', '', 'distinctio-cumque-quia-molestias-quos', '', '', '2019-12-24 14:17:32', '2019-12-24 11:17:32', '', 0, 'http://ideal.loc/?p=76', 0, 'post', '', 0),
(77, 1, '2019-12-15 17:36:38', '2019-12-15 14:36:38', '', 'Distinctio cumque quia molestias quos!', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-12-15 17:36:38', '2019-12-15 14:36:38', '', 76, 'http://ideal.loc/2019/12/15/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-12-15 17:36:48', '2019-12-15 14:36:48', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'A laborum, labore ab recusandae.', '', 'publish', 'open', 'open', '', 'a-laborum-labore-ab-recusandae', '', '', '2019-12-24 14:17:47', '2019-12-24 11:17:47', '', 0, 'http://ideal.loc/?p=78', 0, 'post', '', 0),
(79, 1, '2019-12-15 17:36:48', '2019-12-15 14:36:48', '', 'A laborum, labore ab recusandae.', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2019-12-15 17:36:48', '2019-12-15 14:36:48', '', 78, 'http://ideal.loc/2019/12/15/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-12-15 17:53:32', '2019-12-15 14:53:32', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-15 17:53:32', '2019-12-15 14:53:32', '', 1, 'http://ideal.loc/2019/12/15/1-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-12-23 12:32:05', '2019-12-23 09:32:05', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\n<!--more-->\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Obcaecati Architecto', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-12-23 12:32:05', '2019-12-23 09:32:05', '', 62, 'http://ideal.loc/2019/12/23/62-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-12-23 15:50:33', '2019-12-23 12:50:33', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Consectetur elit', '', 'publish', 'open', 'open', '', 'consectetur-elit', '', '', '2019-12-23 15:50:33', '2019-12-23 12:50:33', '', 0, 'http://ideal.loc/?p=83', 0, 'post', '', 0),
(84, 1, '2019-12-23 15:50:33', '2019-12-23 12:50:33', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Consectetur elit', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-12-23 15:50:33', '2019-12-23 12:50:33', '', 83, 'http://ideal.loc/2019/12/23/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-12-23 15:51:19', '2019-12-23 12:51:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'laudantium voluptas', '', 'publish', 'open', 'open', '', 'laudantium-voluptas', '', '', '2019-12-23 15:51:19', '2019-12-23 12:51:19', '', 0, 'http://ideal.loc/?p=85', 0, 'post', '', 0),
(86, 1, '2019-12-23 15:51:19', '2019-12-23 12:51:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'laudantium voluptas', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-12-23 15:51:19', '2019-12-23 12:51:19', '', 85, 'http://ideal.loc/2019/12/23/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-12-23 15:51:59', '2019-12-23 12:51:59', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Consectetur elit', '', 'publish', 'open', 'open', '', 'consectetur-elit-2', '', '', '2019-12-23 15:51:59', '2019-12-23 12:51:59', '', 0, 'http://ideal.loc/?p=87', 0, 'post', '', 0),
(88, 1, '2019-12-23 15:51:59', '2019-12-23 12:51:59', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Consectetur elit', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-12-23 15:51:59', '2019-12-23 12:51:59', '', 87, 'http://ideal.loc/2019/12/23/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-12-24 07:33:39', '2019-12-24 04:33:39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Obcaecati Architecto', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-12-24 07:33:39', '2019-12-24 04:33:39', '', 62, 'http://ideal.loc/2019/12/24/62-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-12-24 07:34:00', '2019-12-24 04:34:00', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eaque laborum animi fugiat, suscipit in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est vitae magni impedit cum laudantium, voluptas.', 'Obcaecati Architecto', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-12-24 07:34:00', '2019-12-24 04:34:00', '', 62, 'http://ideal.loc/2019/12/24/62-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-12-24 08:33:14', '2019-12-24 05:33:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'publish', 'open', 'open', '', 'james-doe', '', '', '2019-12-24 08:36:54', '2019-12-24 05:36:54', '', 0, 'http://ideal.loc/?p=91', 0, 'post', '', 0),
(92, 1, '2019-12-24 08:33:14', '2019-12-24 05:33:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-12-24 08:33:14', '2019-12-24 05:33:14', '', 91, 'http://ideal.loc/2019/12/24/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-12-24 08:34:06', '2019-12-24 05:34:06', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'publish', 'open', 'open', '', 'james-doe-2', '', '', '2019-12-24 08:34:06', '2019-12-24 05:34:06', '', 0, 'http://ideal.loc/?p=93', 0, 'post', '', 0),
(94, 1, '2019-12-24 08:34:06', '2019-12-24 05:34:06', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-12-24 08:34:06', '2019-12-24 05:34:06', '', 93, 'http://ideal.loc/2019/12/24/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-12-24 08:34:48', '2019-12-24 05:34:48', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'publish', 'open', 'open', '', 'james-doe-3', '', '', '2019-12-24 08:34:48', '2019-12-24 05:34:48', '', 0, 'http://ideal.loc/?p=95', 0, 'post', '', 0),
(96, 1, '2019-12-24 08:34:48', '2019-12-24 05:34:48', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-12-24 08:34:48', '2019-12-24 05:34:48', '', 95, 'http://ideal.loc/2019/12/24/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-12-24 08:35:16', '2019-12-24 05:35:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'publish', 'open', 'open', '', 'james-doe-4', '', '', '2019-12-24 08:35:16', '2019-12-24 05:35:16', '', 0, 'http://ideal.loc/?p=97', 0, 'post', '', 0),
(98, 1, '2019-12-24 08:35:16', '2019-12-24 05:35:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2019-12-24 08:35:16', '2019-12-24 05:35:16', '', 97, 'http://ideal.loc/2019/12/24/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-12-24 08:35:44', '2019-12-24 05:35:44', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'publish', 'open', 'open', '', 'james-doe-5', '', '', '2019-12-24 08:35:44', '2019-12-24 05:35:44', '', 0, 'http://ideal.loc/?p=99', 0, 'post', '', 0),
(100, 1, '2019-12-24 08:35:44', '2019-12-24 05:35:44', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-12-24 08:35:44', '2019-12-24 05:35:44', '', 99, 'http://ideal.loc/2019/12/24/99-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2019-12-24 08:36:27', '2019-12-24 05:36:27', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'publish', 'open', 'open', '', 'james-doe-6', '', '', '2019-12-24 08:36:27', '2019-12-24 05:36:27', '', 0, 'http://ideal.loc/?p=101', 0, 'post', '', 0),
(102, 1, '2019-12-24 08:36:27', '2019-12-24 05:36:27', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.', 'James Doe', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2019-12-24 08:36:27', '2019-12-24 05:36:27', '', 101, 'http://ideal.loc/2019/12/24/101-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-12-24 09:13:10', '2019-12-24 06:13:10', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Soluta possimus ad a, cumque!', '', 'publish', 'open', 'open', '', 'soluta-possimus-ad-a-cumque-2', '', '', '2019-12-24 14:17:57', '2019-12-24 11:17:57', '', 0, 'http://ideal.loc/?p=104', 0, 'post', '', 0),
(105, 1, '2019-12-24 09:13:10', '2019-12-24 06:13:10', '', 'Soluta possimus ad a, cumque!', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-12-24 09:13:10', '2019-12-24 06:13:10', '', 104, 'http://ideal.loc/2019/12/24/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-12-24 09:13:40', '2019-12-24 06:13:40', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Reiciendis autem, maxime ex possimus.', '', 'publish', 'open', 'open', '', 'reiciendis-autem-maxime-ex-possimus-2', '', '', '2019-12-24 14:18:08', '2019-12-24 11:18:08', '', 0, 'http://ideal.loc/?p=106', 0, 'post', '', 0),
(107, 1, '2019-12-24 09:13:40', '2019-12-24 06:13:40', '', 'Reiciendis autem, maxime ex possimus.', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-12-24 09:13:40', '2019-12-24 06:13:40', '', 106, 'http://ideal.loc/2019/12/24/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-12-24 09:14:09', '2019-12-24 06:14:09', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Distinctio cumque quia molestias quos!', '', 'publish', 'open', 'open', '', 'distinctio-cumque-quia-molestias-quos-2', '', '', '2019-12-24 14:18:17', '2019-12-24 11:18:17', '', 0, 'http://ideal.loc/?p=108', 0, 'post', '', 0),
(109, 1, '2019-12-24 09:14:09', '2019-12-24 06:14:09', '', 'Distinctio cumque quia molestias quos!', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-12-24 09:14:09', '2019-12-24 06:14:09', '', 108, 'http://ideal.loc/2019/12/24/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-12-24 09:14:42', '2019-12-24 06:14:42', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'A laborum, labore ab recusandae.', '', 'publish', 'open', 'open', '', 'a-laborum-labore-ab-recusandae-2', '', '', '2019-12-24 14:18:27', '2019-12-24 11:18:27', '', 0, 'http://ideal.loc/?p=110', 0, 'post', '', 0),
(111, 1, '2019-12-24 09:14:42', '2019-12-24 06:14:42', '', 'A laborum, labore ab recusandae.', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-12-24 09:14:42', '2019-12-24 06:14:42', '', 110, 'http://ideal.loc/2019/12/24/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 0, 'http://ideal.loc/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 0, 'http://ideal.loc/?p=113', 3, 'nav_menu_item', '', 0),
(114, 1, '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 0, 'http://ideal.loc/?p=114', 5, 'nav_menu_item', '', 0),
(115, 1, '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 'Terms of Service', '', 'publish', 'closed', 'closed', '', 'terms-of-service', '', '', '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 0, 'http://ideal.loc/?p=115', 4, 'nav_menu_item', '', 0),
(116, 1, '2019-12-24 10:14:39', '2019-12-24 07:14:39', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2019-12-24 10:14:39', '2019-12-24 07:14:39', '', 0, 'http://ideal.loc/?p=116', 2, 'nav_menu_item', '', 0),
(117, 1, '2019-12-24 14:16:59', '2019-12-24 11:16:59', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Soluta possimus ad a, cumque!', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-12-24 14:16:59', '2019-12-24 11:16:59', '', 72, 'http://ideal.loc/2019/12/24/72-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-12-24 14:17:18', '2019-12-24 11:17:18', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Reiciendis autem, maxime ex possimus.', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-12-24 14:17:18', '2019-12-24 11:17:18', '', 74, 'http://ideal.loc/2019/12/24/74-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-12-24 14:17:32', '2019-12-24 11:17:32', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Distinctio cumque quia molestias quos!', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-12-24 14:17:32', '2019-12-24 11:17:32', '', 76, 'http://ideal.loc/2019/12/24/76-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2019-12-24 14:17:47', '2019-12-24 11:17:47', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'A laborum, labore ab recusandae.', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2019-12-24 14:17:47', '2019-12-24 11:17:47', '', 78, 'http://ideal.loc/2019/12/24/78-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-12-24 14:17:57', '2019-12-24 11:17:57', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Soluta possimus ad a, cumque!', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-12-24 14:17:57', '2019-12-24 11:17:57', '', 104, 'http://ideal.loc/2019/12/24/104-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-12-24 14:18:08', '2019-12-24 11:18:08', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Reiciendis autem, maxime ex possimus.', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-12-24 14:18:08', '2019-12-24 11:18:08', '', 106, 'http://ideal.loc/2019/12/24/106-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2019-12-24 14:18:17', '2019-12-24 11:18:17', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'Distinctio cumque quia molestias quos!', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-12-24 14:18:17', '2019-12-24 11:18:17', '', 108, 'http://ideal.loc/2019/12/24/108-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-12-24 14:18:27', '2019-12-24 11:18:27', '<p class=\"lead\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>\r\n\r\n            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n\r\n            <blockquote><p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p></blockquote>\r\n\r\n            <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n            \r\n            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>', 'A laborum, labore ab recusandae.', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-12-24 14:18:27', '2019-12-24 11:18:27', '', 110, 'http://ideal.loc/2019/12/24/110-revision-v1/', 0, 'revision', '', 0);

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
(2, 'Header Left Menu', 'header-left-menu', 0),
(3, 'Header Right Menu', 'header-right-menu', 0),
(4, 'Services', 'services', 0),
(5, 'Product Design', 'product-design', 0),
(6, 'Architecture', 'architecture', 0),
(7, 'Gym &amp; Arena', 'gym-arena', 0),
(8, 'Interior Design', 'interior-design', 0),
(9, 'Projects', 'projects', 0),
(10, 'Quotes', 'quotes', 0),
(11, 'Team', 'team', 0),
(12, 'Menu in Footer', 'menu-in-footer', 0);

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
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(50, 4, 0),
(50, 5, 0),
(52, 4, 0),
(52, 8, 0),
(54, 4, 0),
(54, 7, 0),
(56, 4, 0),
(56, 6, 0),
(62, 5, 0),
(62, 9, 0),
(66, 10, 0),
(68, 10, 0),
(70, 10, 0),
(72, 1, 0),
(74, 1, 0),
(76, 1, 0),
(78, 1, 0),
(83, 9, 0),
(85, 9, 0),
(87, 9, 0),
(91, 11, 0),
(93, 11, 0),
(95, 11, 0),
(97, 11, 0),
(99, 11, 0),
(101, 11, 0),
(104, 1, 0),
(106, 1, 0),
(108, 1, 0),
(110, 1, 0),
(112, 12, 0),
(113, 12, 0),
(114, 12, 0),
(115, 12, 0),
(116, 12, 0);

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
(1, 1, 'category', '', 0, 8),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '', 0, 4),
(5, 5, 'post_tag', '', 0, 2),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 4),
(10, 10, 'category', '', 0, 3),
(11, 11, 'category', '', 0, 6),
(12, 12, 'nav_menu', '', 0, 5);

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
(1, 1, 'nickname', 'Admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"0ad69ec6ed7b61c473ad055a23694a4c9e68617eb119ddfd3738d620b0098f26\";a:4:{s:10:\"expiration\";i:1577528937;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0\";s:5:\"login\";i:1576319337;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '81'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '12'),
(22, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1577167614'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(26, 1, 'wp_media_library_mode', 'grid');

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
(1, 'Admin', '$P$BLoX8/neo9cVfOISnZX3bWaHRcnnkV1', 'admin', 'ermeck@bk.ru', '', '2019-12-14 10:28:33', '', 0, 'Admin');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
