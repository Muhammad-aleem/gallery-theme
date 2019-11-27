-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 01:09 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/gallery/wordpress', 'yes'),
(2, 'home', 'http://localhost/gallery/wordpress', 'yes'),
(3, 'blogname', ' Gallery ', 'yes'),
(4, 'blogdescription', 'Just another WordPress Gallery site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mian.aleem151@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"course/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?course=$matches[1]&feed=$matches[2]\";s:42:\"course/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?course=$matches[1]&feed=$matches[2]\";s:23:\"course/([^/]+)/embed/?$\";s:39:\"index.php?course=$matches[1]&embed=true\";s:35:\"course/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?course=$matches[1]&paged=$matches[2]\";s:17:\"course/([^/]+)/?$\";s:28:\"index.php?course=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:35:\"course-taxonomy/course-taxonomy.php\";i:2;s:30:\"crt-metabox/wp-crt-metabox.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'chiledtwentynineteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:8:\"category\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '8', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:4;a:1:{s:5:\"title\";s:6:\"search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:8:\"search-4\";i:7;s:12:\"categories-3\";i:8;s:7:\"pages-2\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:4:\"page\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1572628789;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572628803;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572628804;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559922545;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(124, 'current_theme', 'chiled Twenty Nineteen', 'yes'),
(125, 'theme_mods_Gallery', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1572623019;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"footer_1\";a:1:{i:0;s:8:\"search-4\";}s:8:\"footer_2\";a:1:{i:0;s:12:\"categories-3\";}s:8:\"footer_3\";a:1:{i:0;s:7:\"pages-2\";}}}s:26:\"custom_theme_title_setting\";s:31:\"custom Customizing theme option\";s:32:\"custom_theme_description_setting\";s:37:\"this is a simple text  ctreated by me\";}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(135, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1559829805;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(180, 'course_children', 'a:0:{}', 'yes'),
(185, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559843477;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(261, 'genre_children', 'a:0:{}', 'yes'),
(270, 'book_children', 'a:0:{}', 'yes'),
(298, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"mian.aleem151@gmail.com\";s:7:\"version\";s:5:\"5.1.3\";s:9:\"timestamp\";i:1572595542;}', 'no'),
(305, 'theme_mods_chiledtwentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1572595582;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:8:\"search-4\";i:7;s:12:\"categories-3\";i:8;s:7:\"pages-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(324, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572595540;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"course-taxonomy/course-taxonomy.php\";s:3:\"1.0\";s:30:\"crt-metabox/wp-crt-metabox.php\";s:5:\"1.7.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(325, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572623012;s:7:\"checked\";a:5:{s:7:\"Gallery\";s:5:\"1.0.0\";s:20:\"chiledtwentynineteen\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.3\";s:15:\"twentyseventeen\";s:3:\"2.1\";s:13:\"twentysixteen\";s:3:\"1.9\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(326, '_site_transient_timeout_browser_f4623462f1251beec89b312c8e07c6a8', '1573200337', 'no'),
(327, '_site_transient_browser_f4623462f1251beec89b312c8e07c6a8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"78.0.3904.87\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(328, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1572595540;s:15:\"version_checked\";s:5:\"5.1.3\";s:12:\"translations\";a:0:{}}', 'no'),
(329, '_site_transient_timeout_php_check_e301b7ebbf9957b807d7b363ee55d206', '1573200338', 'no'),
(330, '_site_transient_php_check_e301b7ebbf9957b807d7b363ee55d206', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(331, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1572638742', 'no'),
(332, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Islamabad\";s:3:\"url\";s:36:\"https://2019.islamabad.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-11-16 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:30:\"Islamabad, Islamabad, Pakistan\";s:7:\"country\";s:2:\"PK\";s:8:\"latitude\";d:33.7201418;s:9:\"longitude\";d:73.024578899999995;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Lahore\";s:3:\"url\";s:32:\"https://2019.lahore.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-11-30 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Lahore\";s:7:\"country\";s:2:\"PK\";s:8:\"latitude\";d:31.4787952;s:9:\"longitude\";d:74.304487899999998;}}}}', 'no'),
(336, '_site_transient_timeout_theme_roots', '1572624807', 'no'),
(337, '_site_transient_theme_roots', 'a:5:{s:7:\"Gallery\";s:7:\"/themes\";s:20:\"chiledtwentynineteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(340, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(7, 7, '_wp_attached_file', '2019/06/tm-img-12.jpg'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:725;s:6:\"height\";i:480;s:4:\"file\";s:21:\"2019/06/tm-img-12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tm-img-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tm-img-12-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2019/06/cropped-tm-img-12.jpg'),
(10, 8, '_wp_attachment_context', 'site-icon'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2019/06/cropped-tm-img-12.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-tm-img-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-tm-img-12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-tm-img-12-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-tm-img-12-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-tm-img-12-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-tm-img-12-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_menu_item_type', 'custom'),
(15, 10, '_menu_item_menu_item_parent', '0'),
(16, 10, '_menu_item_object_id', '10'),
(17, 10, '_menu_item_object', 'custom'),
(18, 10, '_menu_item_target', ''),
(19, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 10, '_menu_item_xfn', ''),
(21, 10, '_menu_item_url', 'http://localhost/gallery/wordpress/'),
(22, 10, '_menu_item_orphaned', '1559795336'),
(32, 12, '_menu_item_type', 'custom'),
(33, 12, '_menu_item_menu_item_parent', '0'),
(34, 12, '_menu_item_object_id', '12'),
(35, 12, '_menu_item_object', 'custom'),
(36, 12, '_menu_item_target', ''),
(37, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 12, '_menu_item_xfn', ''),
(39, 12, '_menu_item_url', 'http://localhost/gallery/wordpress/'),
(54, 16, '_edit_lock', '1559808443:1'),
(55, 17, '_wp_attached_file', '2019/06/tm-img-09.jpg'),
(56, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:480;s:4:\"file\";s:21:\"2019/06/tm-img-09.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tm-img-09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tm-img-09-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small-thumbnail\";a:4:{s:4:\"file\";s:20:\"tm-img-09-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"banner-thumbnail\";a:4:{s:4:\"file\";s:21:\"tm-img-09-700x350.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 16, '_thumbnail_id', '17'),
(64, 20, '_edit_lock', '1559808611:1'),
(65, 21, '_wp_attached_file', '2019/06/tm-img-08-tn.jpg'),
(66, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:24:\"2019/06/tm-img-08-tn.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"tm-img-08-tn-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"tm-img-08-tn-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small-thumbnail\";a:4:{s:4:\"file\";s:23:\"tm-img-08-tn-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"banner-thumbnail\";a:4:{s:4:\"file\";s:24:\"tm-img-08-tn-480x350.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 20, '_thumbnail_id', '21'),
(73, 23, '_edit_lock', '1559842968:1'),
(76, 23, '_thumbnail_id', '7'),
(128, 32, '_edit_lock', '1559876247:1'),
(129, 34, '_edit_lock', '1559910364:1'),
(130, 36, '_edit_lock', '1559908448:1'),
(131, 34, '_edit_last', '1'),
(132, 39, '_edit_lock', '1559830071:1'),
(133, 41, '_menu_item_type', 'post_type'),
(134, 41, '_menu_item_menu_item_parent', '0'),
(135, 41, '_menu_item_object_id', '39'),
(136, 41, '_menu_item_object', 'page'),
(137, 41, '_menu_item_target', ''),
(138, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 41, '_menu_item_xfn', ''),
(140, 41, '_menu_item_url', ''),
(142, 42, '_menu_item_type', 'post_type'),
(143, 42, '_menu_item_menu_item_parent', '0'),
(144, 42, '_menu_item_object_id', '36'),
(145, 42, '_menu_item_object', 'page'),
(146, 42, '_menu_item_target', ''),
(147, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 42, '_menu_item_xfn', ''),
(149, 42, '_menu_item_url', ''),
(151, 43, '_menu_item_type', 'post_type'),
(152, 43, '_menu_item_menu_item_parent', '0'),
(153, 43, '_menu_item_object_id', '34'),
(154, 43, '_menu_item_object', 'page'),
(155, 43, '_menu_item_target', ''),
(156, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 43, '_menu_item_xfn', ''),
(158, 43, '_menu_item_url', ''),
(160, 44, '_menu_item_type', 'post_type'),
(161, 44, '_menu_item_menu_item_parent', '0'),
(162, 44, '_menu_item_object_id', '32'),
(163, 44, '_menu_item_object', 'page'),
(164, 44, '_menu_item_target', ''),
(165, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 44, '_menu_item_xfn', ''),
(167, 44, '_menu_item_url', ''),
(170, 45, '_edit_lock', '1560658946:1'),
(171, 46, '_wp_attached_file', '2019/06/tm-img-07-tn.jpg'),
(172, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:24:\"2019/06/tm-img-07-tn.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"tm-img-07-tn-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"tm-img-07-tn-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small-thumbnail\";a:4:{s:4:\"file\";s:23:\"tm-img-07-tn-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"banner-thumbnail\";a:4:{s:4:\"file\";s:24:\"tm-img-07-tn-480x350.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 45, '_thumbnail_id', '46'),
(176, 48, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(177, 48, '_mail', 'a:8:{s:7:\"subject\";s:26:\" Gallery  \"[your-subject]\"\";s:6:\"sender\";s:35:\" Gallery  <mian.aleem151@gmail.com>\";s:4:\"body\";s:182:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\";s:9:\"recipient\";s:23:\"mian.aleem151@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(178, 48, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\" Gallery  \"[your-subject]\"\";s:6:\"sender\";s:35:\" Gallery  <mian.aleem151@gmail.com>\";s:4:\"body\";s:124:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:33:\"Reply-To: mian.aleem151@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(179, 48, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(180, 48, '_additional_settings', NULL),
(181, 48, '_locale', 'en_US'),
(182, 50, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(183, 50, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Gallery  \"[your-subject]\"\";s:6:\"sender\";s:34:\"Gallery  <mian.aleem151@gmail.com>\";s:9:\"recipient\";s:23:\"mian.aleem151@gmail.com\";s:4:\"body\";s:182:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(184, 50, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Gallery  \"[your-subject]\"\";s:6:\"sender\";s:34:\"Gallery  <mian.aleem151@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:124:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\";s:18:\"additional_headers\";s:33:\"Reply-To: mian.aleem151@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(185, 50, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(186, 50, '_additional_settings', ''),
(187, 50, '_locale', 'en_US'),
(189, 45, '_edit_last', '1'),
(192, 23, '_edit_last', '1'),
(194, 32, '_edit_last', '1'),
(195, 32, '_thumbnail_id', '46'),
(196, 61, '_edit_lock', '1559878414:1'),
(197, 61, '_thumbnail_id', '7'),
(198, 63, '_edit_lock', '1559876464:1'),
(199, 64, '_wp_attached_file', '2019/06/tm-img-11-tn.jpg'),
(200, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:24:\"2019/06/tm-img-11-tn.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"tm-img-11-tn-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"tm-img-11-tn-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small-thumbnail\";a:4:{s:4:\"file\";s:23:\"tm-img-11-tn-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"banner-thumbnail\";a:4:{s:4:\"file\";s:24:\"tm-img-11-tn-480x350.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 63, '_thumbnail_id', '64'),
(202, 68, '_edit_last', '1'),
(203, 68, '_edit_lock', '1559884865:1'),
(204, 69, '_edit_last', '1'),
(205, 69, '_edit_lock', '1559884888:1'),
(206, 70, '_edit_last', '1'),
(207, 70, '_edit_lock', '1559922807:1'),
(212, 34, '_wp_page_template', 'page-customtemplate.php'),
(219, 45, 'myfiled', 'hello how are you'),
(226, 45, 'Time', 'night'),
(260, 120, '_edit_last', '1'),
(261, 120, '_edit_lock', '1560265796:1'),
(262, 120, 'Publisher_name', 'cte_meta'),
(263, 121, '_edit_last', '1'),
(264, 121, '_edit_lock', '1560266008:1'),
(265, 121, 'Publisher_name', 'created by me'),
(276, 142, '_edit_lock', '1560336933:1'),
(277, 142, '_edit_last', '1'),
(278, 142, 'Publisher_name', 'created by me'),
(279, 142, 'author_name', '3'),
(295, 154, '_edit_lock', '1560658633:1'),
(296, 154, '_edit_last', '1'),
(297, 154, 'Publisher_name', 'Aleem'),
(298, 154, 'author_name', '2'),
(299, 154, 'crt_online_metabox_enter_name', ''),
(300, 155, '_edit_lock', '1560658933:1'),
(303, 155, '_edit_last', '1'),
(305, 159, '_edit_lock', '1570294414:1'),
(306, 159, '_wp_page_template', 'page.php'),
(307, 159, '_edit_last', '1'),
(308, 162, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(309, 161, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(310, 163, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(311, 164, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(312, 165, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(313, 166, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(314, 167, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(315, 168, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(316, 169, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(317, 170, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(318, 171, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(319, 172, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(320, 173, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(321, 174, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(322, 174, '_edit_lock', '1570287486:1'),
(323, 175, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(324, 176, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(325, 176, '_edit_lock', '1570286582:1'),
(326, 176, '_wp_trash_meta_status', 'draft'),
(327, 176, '_wp_trash_meta_time', '1570286732'),
(328, 176, '_wp_desired_post_slug', ''),
(329, 174, '_wp_trash_meta_status', 'draft'),
(330, 174, '_wp_trash_meta_time', '1570286735'),
(331, 174, '_wp_desired_post_slug', ''),
(332, 173, '_wp_trash_meta_status', 'draft'),
(333, 173, '_wp_trash_meta_time', '1570286739'),
(334, 173, '_wp_desired_post_slug', ''),
(335, 165, '_wp_trash_meta_status', 'draft'),
(336, 165, '_wp_trash_meta_time', '1570286744'),
(337, 165, '_wp_desired_post_slug', ''),
(338, 168, '_wp_trash_meta_status', 'draft'),
(339, 168, '_wp_trash_meta_time', '1570286747'),
(340, 168, '_wp_desired_post_slug', ''),
(341, 171, '_wp_trash_meta_status', 'draft'),
(342, 171, '_wp_trash_meta_time', '1570286761'),
(343, 171, '_wp_desired_post_slug', ''),
(344, 185, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(345, 184, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(346, 186, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(347, 187, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(348, 188, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(349, 189, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(350, 190, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(351, 191, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(352, 193, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(353, 195, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(354, 192, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(355, 194, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(356, 196, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(357, 197, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(358, 200, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(359, 199, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(360, 198, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(361, 201, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(362, 202, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(363, 203, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(364, 204, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(365, 206, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(366, 205, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(367, 207, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(368, 208, '_user_metabox_post', 'mian.aleem151@gmail.com'),
(369, 209, '_user_metabox_post', 'mian.aleem151@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2019-06-06 04:21:54', '2019-06-06 04:21:54', '', 'tm-img-12', '', 'inherit', 'open', 'closed', '', 'tm-img-12', '', '', '2019-06-06 04:21:54', '2019-06-06 04:21:54', '', 0, 'http://localhost/gallery/wordpress/wp-content/uploads/2019/06/tm-img-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-06-06 04:21:59', '2019-06-06 04:21:59', 'http://localhost/gallery/wordpress/wp-content/uploads/2019/06/cropped-tm-img-12.jpg', 'cropped-tm-img-12.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-tm-img-12-jpg', '', '', '2019-06-06 04:21:59', '2019-06-06 04:21:59', '', 0, 'http://localhost/gallery/wordpress/wp-content/uploads/2019/06/cropped-tm-img-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2019-06-06 04:28:55', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-06-06 04:28:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=10', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-06-06 04:33:27', '2019-06-06 04:33:27', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-06-06 12:58:31', '2019-06-06 12:58:31', '', 0, 'http://localhost/gallery/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-06-06 08:07:38', '2019-06-06 08:07:38', '<p style=\"text-align: justify;\">Aenean congue nulla et ligula consectetur consequat. Nullam fringilla blandit risus vitae auctor.</p>', 'Image2', '', 'publish', 'open', 'open', '', 'image2', '', '', '2019-06-06 08:07:38', '2019-06-06 08:07:38', '', 0, 'http://localhost/gallery/wordpress/?p=16', 0, 'post', '', 0),
(17, 1, '2019-06-06 08:07:33', '2019-06-06 08:07:33', '', 'tm-img-09', '', 'inherit', 'open', 'closed', '', 'tm-img-09', '', '', '2019-06-06 08:07:33', '2019-06-06 08:07:33', '', 16, 'http://localhost/gallery/wordpress/wp-content/uploads/2019/06/tm-img-09.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-06-06 08:07:38', '2019-06-06 08:07:38', '<p style=\"text-align: justify;\">Aenean congue nulla et ligula consectetur consequat. Nullam fringilla blandit risus vitae auctor.</p>', 'Image2', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-06-06 08:07:38', '2019-06-06 08:07:38', '', 16, 'http://localhost/gallery/wordpress/2019/06/06/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-06-06 08:11:18', '2019-06-06 08:11:18', '', 'Image 3', '', 'publish', 'open', 'open', '', 'image-3', '', '', '2019-06-06 08:11:18', '2019-06-06 08:11:18', '', 0, 'http://localhost/gallery/wordpress/?p=20', 0, 'post', '', 0),
(21, 1, '2019-06-06 08:11:14', '2019-06-06 08:11:14', '', 'tm-img-08-tn', '', 'inherit', 'open', 'closed', '', 'tm-img-08-tn', '', '', '2019-06-06 08:11:14', '2019-06-06 08:11:14', '', 20, 'http://localhost/gallery/wordpress/wp-content/uploads/2019/06/tm-img-08-tn.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-06-06 08:11:18', '2019-06-06 08:11:18', '', 'Image 3', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-06-06 08:11:18', '2019-06-06 08:11:18', '', 20, 'http://localhost/gallery/wordpress/2019/06/06/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-06-06 08:14:02', '2019-06-06 08:14:02', '<p style=\"text-align: justify;\">Aenean congue nulla et ligula consectetur consequat.</p>', 'image 1', '', 'publish', 'open', 'open', '', 'image-1', '', '', '2019-06-06 17:42:48', '2019-06-06 17:42:48', '', 0, 'http://localhost/gallery/wordpress/?p=23', 0, 'post', '', 0),
(24, 1, '2019-06-06 08:14:02', '2019-06-06 08:14:02', '<p style=\"text-align: justify;\">Aenean congue nulla et ligula consectetur consequat.</p>', 'image 1', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-06-06 08:14:02', '2019-06-06 08:14:02', '', 23, 'http://localhost/gallery/wordpress/2019/06/06/23-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-06-06 13:05:43', '2019-06-06 13:05:43', '', '1st fluid', '', 'publish', 'closed', 'closed', '', '1st-fluid', '', '', '2019-06-07 02:59:46', '2019-06-07 02:59:46', '', 0, 'http://localhost/gallery/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2019-06-06 13:05:43', '2019-06-06 13:05:43', '', '1st fluid', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-06-06 13:05:43', '2019-06-06 13:05:43', '', 32, 'http://localhost/gallery/wordpress/2019/06/06/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-06-06 13:06:04', '2019-06-06 13:06:04', '<!-- wp:paragraph -->\n<p> <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night. </p>\n<!-- /wp:paragraph -->', '2nd fluid', '', 'publish', 'closed', 'closed', '', '2st-fluid', '', '', '2019-06-07 12:25:15', '2019-06-07 12:25:15', '', 0, 'http://localhost/gallery/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2019-06-06 13:06:04', '2019-06-06 13:06:04', '', '2st fluid', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-06-06 13:06:04', '2019-06-06 13:06:04', '', 34, 'http://localhost/gallery/wordpress/2019/06/06/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-06-06 13:06:34', '2019-06-06 13:06:34', '', '3rd fluid', '', 'publish', 'closed', 'closed', '', '3rd-fluid', '', '', '2019-06-06 13:06:34', '2019-06-06 13:06:34', '', 0, 'http://localhost/gallery/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2019-06-06 13:06:34', '2019-06-06 13:06:34', '', '3rd fluid', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-06-06 13:06:34', '2019-06-06 13:06:34', '', 36, 'http://localhost/gallery/wordpress/2019/06/06/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-06-06 13:06:47', '2019-06-06 13:06:47', '', '2nd fluid', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-06-06 13:06:47', '2019-06-06 13:06:47', '', 34, 'http://localhost/gallery/wordpress/2019/06/06/34-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-06-06 13:07:09', '2019-06-06 13:07:09', '<!-- wp:shortcode -->\n[contact-form-7 id=\"50\" title=\"Form\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Message', '', 'publish', 'closed', 'closed', '', 'message', '', '', '2019-06-06 14:10:01', '2019-06-06 14:10:01', '', 0, 'http://localhost/gallery/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-06-06 13:07:09', '2019-06-06 13:07:09', '', 'Message', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-06 13:07:09', '2019-06-06 13:07:09', '', 39, 'http://localhost/gallery/wordpress/2019/06/06/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-06-06 13:08:00', '2019-06-06 13:08:00', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2019-06-07 05:27:23', '2019-06-07 05:27:23', '', 0, 'http://localhost/gallery/wordpress/?p=41', 4, 'nav_menu_item', '', 0),
(42, 1, '2019-06-06 13:08:00', '2019-06-06 13:08:00', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2019-06-07 05:27:23', '2019-06-07 05:27:23', '', 0, 'http://localhost/gallery/wordpress/?p=42', 3, 'nav_menu_item', '', 0),
(43, 1, '2019-06-06 13:08:00', '2019-06-06 13:08:00', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2019-06-07 05:27:23', '2019-06-07 05:27:23', '', 0, 'http://localhost/gallery/wordpress/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2019-06-06 13:08:00', '2019-06-06 13:08:00', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2019-06-07 05:27:22', '2019-06-07 05:27:22', '', 0, 'http://localhost/gallery/wordpress/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-06-06 13:21:10', '2019-06-06 13:21:10', '', 'Image 4', '', 'publish', 'open', 'open', '', 'image-4', '', '', '2019-06-16 04:22:26', '2019-06-16 04:22:26', '', 0, 'http://localhost/gallery/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2019-06-06 13:21:04', '2019-06-06 13:21:04', '', 'tm-img-07-tn', '', 'inherit', 'open', 'closed', '', 'tm-img-07-tn', '', '', '2019-06-06 13:21:04', '2019-06-06 13:21:04', '', 45, 'http://localhost/gallery/wordpress/wp-content/uploads/2019/06/tm-img-07-tn.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-06-06 13:21:10', '2019-06-06 13:21:10', '', 'Image 4', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-06-06 13:21:10', '2019-06-06 13:21:10', '', 45, 'http://localhost/gallery/wordpress/2019/06/06/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-06-06 14:03:25', '2019-06-06 14:03:25', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\n Gallery  \"[your-subject]\"\n Gallery  <mian.aleem151@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\nmian.aleem151@gmail.com\nReply-To: [your-email]\n\n0\n0\n\n Gallery  \"[your-subject]\"\n Gallery  <mian.aleem151@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\n[your-email]\nReply-To: mian.aleem151@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-06-06 14:03:25', '2019-06-06 14:03:25', '', 0, 'http://localhost/gallery/wordpress/?post_type=wpcf7_contact_form&p=48', 0, 'wpcf7_contact_form', '', 0),
(49, 1, '2019-06-06 14:04:28', '2019-06-06 14:04:28', '<!-- wp:shortcode -->\n[contact-form-7 id=\"48\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Message', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-06 14:04:28', '2019-06-06 14:04:28', '', 39, 'http://localhost/gallery/wordpress/39-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-06-06 14:05:40', '2019-06-06 14:05:40', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nGallery  \"[your-subject]\"\nGallery  <mian.aleem151@gmail.com>\nmian.aleem151@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\nReply-To: [your-email]\n\n\n\n\nGallery  \"[your-subject]\"\nGallery  <mian.aleem151@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on  Gallery  (http://localhost/gallery/wordpress)\nReply-To: mian.aleem151@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Form', '', 'publish', 'closed', 'closed', '', 'form', '', '', '2019-06-06 14:05:40', '2019-06-06 14:05:40', '', 0, 'http://localhost/gallery/wordpress/?post_type=wpcf7_contact_form&p=50', 0, 'wpcf7_contact_form', '', 0),
(51, 1, '2019-06-06 14:07:06', '2019-06-06 14:07:06', '<!-- wp:shortcode -->\n[contact-form-7 id=\"50\" title=\"Form\"]\n<!-- /wp:shortcode -->', 'Message', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-06 14:07:06', '2019-06-06 14:07:06', '', 39, 'http://localhost/gallery/wordpress/39-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-06-06 14:07:09', '2019-06-06 14:07:09', '<!-- wp:shortcode -->\n[contact-form-7 id=\"50\" title=\"Form\"]\n<!-- /wp:shortcode -->', 'Message', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2019-06-06 14:07:09', '2019-06-06 14:07:09', '', 39, 'http://localhost/gallery/wordpress/39-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2019-06-06 14:10:01', '2019-06-06 14:10:01', '<!-- wp:shortcode -->\n[contact-form-7 id=\"50\" title=\"Form\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Message', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-06 14:10:01', '2019-06-06 14:10:01', '', 39, 'http://localhost/gallery/wordpress/39-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-06-06 16:58:50', '2019-06-06 16:58:50', '<!-- wp:paragraph -->\n<p> <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night.  <br>hello good night. </p>\n<!-- /wp:paragraph -->', '2nd fluid', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-06-06 16:58:50', '2019-06-06 16:58:50', '', 34, 'http://localhost/gallery/wordpress/34-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-06-06 17:52:27', '2019-06-06 17:52:27', '<!-- wp:shortcode -->\n[foobar]\n<!-- /wp:shortcode -->', '1st fluid', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-06-06 17:52:27', '2019-06-06 17:52:27', '', 32, 'http://localhost/gallery/wordpress/32-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-06-06 17:54:42', '2019-06-06 17:54:42', '<!-- wp:shortcode -->\n[foobar]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"50\" title=\"Form\"]\n<!-- /wp:shortcode -->', '1st fluid', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-06-06 17:54:42', '2019-06-06 17:54:42', '', 32, 'http://localhost/gallery/wordpress/32-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-06-07 02:46:09', '2019-06-07 02:46:09', '', '1st fluid', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-06-07 02:46:09', '2019-06-07 02:46:09', '', 32, 'http://localhost/gallery/wordpress/32-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-06-07 02:59:29', '2019-06-07 02:59:29', '', '1st fluid', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2019-06-07 02:59:29', '2019-06-07 02:59:29', '', 32, 'http://localhost/gallery/wordpress/32-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2019-06-07 03:00:59', '2019-06-07 03:00:59', '<!-- wp:paragraph -->\n<p>hello good night. <br>hello good night. <br><br></p>\n<!-- /wp:paragraph -->', 'Sample pape', '', 'publish', 'closed', 'closed', '', 'sample-pape', '', '', '2019-06-07 03:03:42', '2019-06-07 03:03:42', '', 0, 'http://localhost/gallery/wordpress/?page_id=61', 0, 'page', '', 0),
(62, 1, '2019-06-07 03:00:59', '2019-06-07 03:00:59', '<!-- wp:paragraph -->\n<p>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.&nbsp;<br>hello good night.</p>\n<!-- /wp:paragraph -->', 'Sample pape', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-06-07 03:00:59', '2019-06-07 03:00:59', '', 61, 'http://localhost/gallery/wordpress/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-06-07 03:02:22', '2019-06-07 03:02:22', '<!-- wp:paragraph -->\n<p>helo every one</p>\n<!-- /wp:paragraph -->', 'sample page 2', '', 'publish', 'closed', 'closed', '', 'sample-page-2', '', '', '2019-06-07 03:02:22', '2019-06-07 03:02:22', '', 0, 'http://localhost/gallery/wordpress/?page_id=63', 0, 'page', '', 0),
(64, 1, '2019-06-07 03:02:16', '2019-06-07 03:02:16', '', 'tm-img-11-tn', '', 'inherit', 'open', 'closed', '', 'tm-img-11-tn', '', '', '2019-06-07 03:02:16', '2019-06-07 03:02:16', '', 63, 'http://localhost/gallery/wordpress/wp-content/uploads/2019/06/tm-img-11-tn.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-06-07 03:02:22', '2019-06-07 03:02:22', '<!-- wp:paragraph -->\n<p>helo every one</p>\n<!-- /wp:paragraph -->', 'sample page 2', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-06-07 03:02:22', '2019-06-07 03:02:22', '', 63, 'http://localhost/gallery/wordpress/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-06-07 03:03:42', '2019-06-07 03:03:42', '<!-- wp:paragraph -->\n<p>hello good night. <br>hello good night. <br><br></p>\n<!-- /wp:paragraph -->', 'Sample pape', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-06-07 03:03:42', '2019-06-07 03:03:42', '', 61, 'http://localhost/gallery/wordpress/61-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-06-07 05:23:26', '2019-06-07 05:23:26', 'This is a first post', 'custom_post1', '', 'publish', 'closed', 'closed', '', 'custom_post1', '', '', '2019-06-07 05:23:26', '2019-06-07 05:23:26', '', 0, 'http://localhost/gallery/wordpress/?post_type=custom_post&#038;p=68', 0, 'custom_post', '', 0),
(69, 1, '2019-06-07 05:23:47', '2019-06-07 05:23:47', 'this is a  post 2', 'post-2', '', 'publish', 'closed', 'closed', '', 'post-2', '', '', '2019-06-07 05:23:47', '2019-06-07 05:23:47', '', 0, 'http://localhost/gallery/wordpress/?post_type=custom_post&#038;p=69', 0, 'custom_post', '', 0),
(70, 1, '2019-06-07 05:24:02', '2019-06-07 05:24:02', 'this is a  post 3', 'post_3', '', 'publish', 'closed', 'closed', '', 'post_3', '', '', '2019-06-07 05:24:02', '2019-06-07 05:24:02', '', 0, 'http://localhost/gallery/wordpress/?post_type=custom_post&#038;p=70', 0, 'custom_post', '', 0),
(120, 1, '2019-06-11 14:15:29', '2019-06-11 14:15:29', 'this is a text', 'metabook', '', 'publish', 'closed', 'closed', '', 'metabook', '', '', '2019-06-11 14:15:29', '2019-06-11 14:15:29', '', 0, 'http://localhost/gallery/wordpress/?post_type=custom_post&#038;p=120', 0, 'custom_post', '', 0),
(121, 1, '2019-06-11 15:12:52', '2019-06-11 15:12:52', 'i,m testing', 'metabook 2', '', 'publish', 'closed', 'closed', '', 'metabook-2', '', '', '2019-06-11 15:12:52', '2019-06-11 15:12:52', '', 0, 'http://localhost/gallery/wordpress/?post_type=custom_post&#038;p=121', 0, 'custom_post', '', 0),
(142, 1, '2019-06-12 10:48:01', '2019-06-12 10:48:01', 'this is a math book:', 'math', '', 'publish', 'closed', 'closed', '', 'math', '', '', '2019-06-12 10:48:01', '2019-06-12 10:48:01', '', 0, 'http://localhost/gallery/wordpress/?post_type=custom_post&#038;p=142', 0, 'custom_post', '', 0),
(154, 1, '2019-06-16 04:18:00', '2019-06-16 04:18:00', 'this is a text', 'post 1', '', 'publish', 'closed', 'closed', '', 'post-1', '', '', '2019-06-16 04:18:00', '2019-06-16 04:18:00', '', 0, 'http://localhost/gallery/wordpress/?post_type=custom_post&#038;p=154', 0, 'custom_post', '', 0),
(155, 1, '2019-06-16 04:20:49', '2019-06-16 04:20:49', '', 'post', '', 'publish', 'open', 'open', '', 'post', '', '', '2019-06-16 04:22:13', '2019-06-16 04:22:13', '', 0, 'http://localhost/gallery/wordpress/?p=155', 0, 'post', '', 0),
(156, 1, '2019-06-16 04:20:49', '2019-06-16 04:20:49', '', 'post', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2019-06-16 04:20:49', '2019-06-16 04:20:49', '', 155, 'http://localhost/gallery/wordpress/155-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-10-05 10:40:33', '2019-10-05 10:40:33', '', 'form', '', 'publish', 'closed', 'closed', '', 'form', '', '', '2019-10-05 10:40:34', '2019-10-05 10:40:34', '', 0, 'http://localhost/gallery/wordpress/?page_id=159', 0, 'page', '', 0),
(160, 1, '2019-10-05 10:40:33', '2019-10-05 10:40:33', '', 'form', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2019-10-05 10:40:33', '2019-10-05 10:40:33', '', 159, 'http://localhost/gallery/wordpress/159-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2019-10-05 12:52:42', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=161', 0, 'post', '', 0),
(162, 1, '2019-10-05 12:52:42', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=162', 0, 'post', '', 0),
(163, 1, '2019-10-05 12:52:45', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=163', 0, 'post', '', 0),
(164, 1, '2019-10-05 12:52:45', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=164', 0, 'post', '', 0),
(165, 1, '2019-10-05 14:45:44', '2019-10-05 14:45:44', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'trash', 'open', 'open', '', '__trashed-4', '', '', '2019-10-05 14:45:44', '2019-10-05 14:45:44', '', 0, 'http://localhost/gallery/wordpress/?p=165', 0, 'post', '', 0),
(166, 1, '2019-10-05 12:52:45', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=166', 0, 'post', '', 0),
(167, 1, '2019-10-05 12:52:45', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=167', 0, 'post', '', 0),
(168, 1, '2019-10-05 14:45:47', '2019-10-05 14:45:47', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'trash', 'open', 'open', '', '__trashed-5', '', '', '2019-10-05 14:45:47', '2019-10-05 14:45:47', '', 0, 'http://localhost/gallery/wordpress/?p=168', 0, 'post', '', 0),
(169, 1, '2019-10-05 12:52:46', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=169', 0, 'post', '', 0),
(170, 1, '2019-10-05 12:52:47', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=170', 0, 'post', '', 0),
(171, 1, '2019-10-05 14:46:01', '2019-10-05 14:46:01', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'trash', 'open', 'open', '', '__trashed-6', '', '', '2019-10-05 14:46:01', '2019-10-05 14:46:01', '', 0, 'http://localhost/gallery/wordpress/?p=171', 0, 'post', '', 0),
(172, 1, '2019-10-05 12:52:48', '0000-00-00 00:00:00', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 12:52:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=172', 0, 'post', '', 0),
(173, 1, '2019-10-05 14:45:39', '2019-10-05 14:45:39', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'trash', 'open', 'open', '', '__trashed-3', '', '', '2019-10-05 14:45:39', '2019-10-05 14:45:39', '', 0, 'http://localhost/gallery/wordpress/?p=173', 0, 'post', '', 0),
(174, 1, '2019-10-05 14:45:35', '2019-10-05 14:45:35', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2019-10-05 14:45:35', '2019-10-05 14:45:35', '', 0, 'http://localhost/gallery/wordpress/?p=174', 0, 'post', '', 0),
(175, 1, '2019-10-05 14:44:53', '0000-00-00 00:00:00', '\n		sdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdas	', 'Aleem', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-05 14:44:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=175', 0, 'post', '', 0),
(176, 1, '2019-10-05 14:45:32', '2019-10-05 14:45:32', '\n		sdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdas	', 'Aleem', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2019-10-05 14:45:32', '2019-10-05 14:45:32', '', 0, 'http://localhost/gallery/wordpress/?p=176', 0, 'post', '', 0),
(177, 1, '2019-10-05 14:45:32', '2019-10-05 14:45:32', '\n		sdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdassdsdas	', 'Aleem', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2019-10-05 14:45:32', '2019-10-05 14:45:32', '', 176, 'http://localhost/gallery/wordpress/176-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-10-05 14:45:35', '2019-10-05 14:45:35', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2019-10-05 14:45:35', '2019-10-05 14:45:35', '', 174, 'http://localhost/gallery/wordpress/174-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-10-05 14:45:39', '2019-10-05 14:45:39', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-10-05 14:45:39', '2019-10-05 14:45:39', '', 173, 'http://localhost/gallery/wordpress/173-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-10-05 14:45:44', '2019-10-05 14:45:44', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2019-10-05 14:45:44', '2019-10-05 14:45:44', '', 165, 'http://localhost/gallery/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2019-10-05 14:45:47', '2019-10-05 14:45:47', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2019-10-05 14:45:47', '2019-10-05 14:45:47', '', 168, 'http://localhost/gallery/wordpress/168-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2019-10-05 14:46:01', '2019-10-05 14:46:01', '\n	this is a first post type this is a first post type this is a first post type 		', 'post title', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2019-10-05 14:46:01', '2019-10-05 14:46:01', '', 171, 'http://localhost/gallery/wordpress/171-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2019-11-01 15:43:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-01 15:43:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=183', 0, 'post', '', 0),
(184, 1, '2019-11-01 15:44:35', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=184', 0, 'post', '', 0),
(185, 1, '2019-11-01 15:44:35', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=185', 0, 'post', '', 0),
(186, 1, '2019-11-01 15:44:36', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=186', 0, 'post', '', 0),
(187, 1, '2019-11-01 15:44:36', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=187', 0, 'post', '', 0),
(188, 1, '2019-11-01 15:44:38', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=188', 0, 'post', '', 0),
(189, 1, '2019-11-01 15:44:38', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=189', 0, 'post', '', 0),
(190, 1, '2019-11-01 15:44:38', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=190', 0, 'post', '', 0),
(191, 1, '2019-11-01 15:44:38', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=191', 0, 'post', '', 0),
(192, 1, '2019-11-01 15:44:39', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=192', 0, 'post', '', 0),
(193, 1, '2019-11-01 15:44:39', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=193', 0, 'post', '', 0),
(194, 1, '2019-11-01 15:44:39', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=194', 0, 'post', '', 0),
(195, 1, '2019-11-01 15:44:39', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=195', 0, 'post', '', 0),
(196, 1, '2019-11-01 15:44:40', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=196', 0, 'post', '', 0),
(197, 1, '2019-11-01 15:44:41', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=197', 0, 'post', '', 0),
(198, 1, '2019-11-01 15:44:41', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=198', 0, 'post', '', 0),
(199, 1, '2019-11-01 15:44:41', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=199', 0, 'post', '', 0),
(200, 1, '2019-11-01 15:44:41', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=200', 0, 'post', '', 0),
(201, 1, '2019-11-01 15:44:42', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=201', 0, 'post', '', 0),
(202, 1, '2019-11-01 15:44:42', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=202', 0, 'post', '', 0),
(203, 1, '2019-11-01 15:44:42', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=203', 0, 'post', '', 0),
(204, 1, '2019-11-01 15:44:43', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=204', 0, 'post', '', 0),
(205, 1, '2019-11-01 15:44:43', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=205', 0, 'post', '', 0),
(206, 1, '2019-11-01 15:44:44', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=206', 0, 'post', '', 0),
(207, 1, '2019-11-01 15:44:45', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=207', 0, 'post', '', 0),
(208, 1, '2019-11-01 15:44:45', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=208', 0, 'post', '', 0),
(209, 1, '2019-11-01 15:44:45', '0000-00-00 00:00:00', '\n	this is a text		', 'azeem', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-01 15:44:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/gallery/wordpress/?p=209', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'header_menu', 'header_menu', 0),
(4, 'web development', 'web-development', 0),
(5, 'mobile development', 'mobile-development', 0),
(6, 'Math', 'math', 0),
(7, 'computer', 'computer', 0),
(8, 'math', 'math', 0),
(9, 'option three', 'option-three', 0),
(11, 'option two', 'option-two', 0),
(12, 'option One', 'option-one', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(12, 2, 0),
(16, 1, 0),
(20, 1, 0),
(23, 1, 0),
(23, 4, 0),
(23, 5, 0),
(41, 3, 0),
(42, 3, 0),
(43, 3, 0),
(44, 3, 0),
(45, 1, 0),
(45, 5, 0),
(45, 8, 0),
(155, 1, 0),
(155, 8, 0),
(161, 10, 0),
(162, 10, 0),
(163, 10, 0),
(164, 10, 0),
(165, 10, 0),
(166, 10, 0),
(167, 10, 0),
(168, 10, 0),
(169, 10, 0),
(170, 10, 0),
(171, 10, 0),
(172, 10, 0),
(173, 10, 0),
(174, 10, 0),
(175, 12, 0),
(176, 12, 0),
(184, 13, 0),
(185, 13, 0),
(186, 13, 0),
(187, 13, 0),
(188, 13, 0),
(189, 13, 0),
(190, 13, 0),
(191, 13, 0),
(192, 13, 0),
(193, 13, 0),
(194, 13, 0),
(195, 13, 0),
(196, 13, 0),
(197, 13, 0),
(198, 13, 0),
(199, 13, 0),
(200, 13, 0),
(201, 13, 0),
(202, 13, 0),
(203, 13, 0),
(204, 13, 0),
(205, 13, 0),
(206, 13, 0),
(207, 13, 0),
(208, 13, 0),
(209, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'course', '', 0, 1),
(5, 5, 'course', '', 0, 2),
(6, 6, 'genre', 'this is a math book', 0, 0),
(7, 7, 'genre', 'this is  a Computer book', 0, 0),
(8, 8, 'book', '', 0, 2),
(10, 9, 'category', '', 0, 0),
(12, 11, 'category', '', 0, 0),
(13, 12, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Aleem'),
(2, 1, 'first_name', 'aleem'),
(3, 1, 'last_name', 'khalid'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"e08897318eb6c42727eeaa11f6db625eb978985ca26c24c208908ef02633dd80\";a:4:{s:10:\"expiration\";i:1572768329;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36\";s:5:\"login\";i:1572595529;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '183'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'wp_user-settings-time', '1559915186'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '3'),
(23, 1, 'enable_custom_fields', '1'),
(24, 1, 'closedpostboxes_custom_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_custom_post', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:0:{}'),
(28, 1, 'closedpostboxes_page', 'a:2:{i:0;s:14:\"ctr_metabox_id\";i:1;s:10:\"postcustom\";}'),
(29, 1, 'metaboxhidden_page', 'a:0:{}'),
(30, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:25:\"postcustom,ctr_metabox_id\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'meta-box-order_post', 'a:3:{s:6:\"normal\";s:26:\"post_metabox_id,postcustom\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'meta-box-order_custom_post', 'a:3:{s:4:\"side\";s:45:\"custom_post_metabox_id,submitdiv,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_custom_post', '2'),
(34, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:20:\"dashboard_metabox_id\";i:1;s:17:\"dashboard_primary\";}'),
(35, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(36, 2, 'nickname', 'author 1'),
(37, 2, 'first_name', 'author 1'),
(38, 2, 'last_name', ''),
(39, 2, 'description', ''),
(40, 2, 'rich_editing', 'true'),
(41, 2, 'syntax_highlighting', 'true'),
(42, 2, 'comment_shortcuts', 'false'),
(43, 2, 'admin_color', 'fresh'),
(44, 2, 'use_ssl', '0'),
(45, 2, 'show_admin_bar_front', 'true'),
(46, 2, 'locale', ''),
(47, 2, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(48, 2, 'wp_user_level', '2'),
(49, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(50, 3, 'nickname', 'author2'),
(51, 3, 'first_name', 'author 2'),
(52, 3, 'last_name', ''),
(53, 3, 'description', ''),
(54, 3, 'rich_editing', 'true'),
(55, 3, 'syntax_highlighting', 'true'),
(56, 3, 'comment_shortcuts', 'false'),
(57, 3, 'admin_color', 'fresh'),
(58, 3, 'use_ssl', '0'),
(59, 3, 'show_admin_bar_front', 'true'),
(60, 3, 'locale', ''),
(61, 3, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(62, 3, 'wp_user_level', '2'),
(63, 3, 'dismissed_wp_pointers', 'wp496_privacy');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Aleem', '$P$BRWn02j1PERh0/LcrwqsTxrV6GLVts1', 'aleem', 'mian.aleem151@gmail.com', '', '2019-06-05 17:19:47', '', 0, 'Aleem'),
(2, 'author 1', '$P$BDHAHcBCK4jfpnSPDnc6H9LB210.eA0', 'author-1', 'author1@gamil.com', '', '2019-06-11 15:16:29', '1560266191:$P$BLsjCFvHNdsmkWgQMHWS/1kK..c7Ak.', 0, 'author 1'),
(3, 'author2', '$P$Bnp6ETHTrNaZUlX0UOKEFAoczq7U.d0', 'author2', 'author2@gamil.com', '', '2019-06-11 15:17:52', '1560266274:$P$BMXp6aDSTxyTcAfsdEbVXOrRLf1XYm/', 0, 'author 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
