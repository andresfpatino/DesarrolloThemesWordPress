-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2019 a las 16:43:21
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lapizzeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_commentmeta`
--

CREATE TABLE `pz_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_comments`
--

CREATE TABLE `pz_comments` (
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

--
-- Volcado de datos para la tabla `pz_comments`
--

INSERT INTO `pz_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-13 13:24:16', '2018-06-13 13:24:16', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_links`
--

CREATE TABLE `pz_links` (
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
-- Estructura de tabla para la tabla `pz_options`
--

CREATE TABLE `pz_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pz_options`
--

INSERT INTO `pz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/lapizzeria', 'yes'),
(2, 'home', 'http://localhost/lapizzeria', 'yes'),
(3, 'blogname', 'Dommo', 'yes'),
(4, 'blogdescription', 'La mejor pizzeria de la ciudad', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'felipe.patino@eiso.com.co', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"especialidades/?$\";s:34:\"index.php?post_type=especialidades\";s:47:\"especialidades/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=especialidades&feed=$matches[1]\";s:42:\"especialidades/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=especialidades&feed=$matches[1]\";s:34:\"especialidades/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=especialidades&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"especialidades/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"especialidades/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"especialidades/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"especialidades/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"especialidades/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"especialidades/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"especialidades/([^/]+)/embed/?$\";s:47:\"index.php?especialidades=$matches[1]&embed=true\";s:35:\"especialidades/([^/]+)/trackback/?$\";s:41:\"index.php?especialidades=$matches[1]&tb=1\";s:55:\"especialidades/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?especialidades=$matches[1]&feed=$matches[2]\";s:50:\"especialidades/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?especialidades=$matches[1]&feed=$matches[2]\";s:43:\"especialidades/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?especialidades=$matches[1]&paged=$matches[2]\";s:50:\"especialidades/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?especialidades=$matches[1]&cpage=$matches[2]\";s:39:\"especialidades/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?especialidades=$matches[1]&page=$matches[2]\";s:31:\"especialidades/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"especialidades/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"especialidades/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"especialidades/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"especialidades/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"especialidades/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:65:\"C:\\xampp\\htdocs\\lapizzeria/wp-content/themes/lapizzeria/style.css\";i:1;s:73:\"C:\\xampp\\htdocs\\lapizzeria/wp-content/themes/lapizzeria/page-contacto.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'lapizzeria', 'yes'),
(41, 'stylesheet', 'lapizzeria', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(83, 'page_for_posts', '9', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'pz_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_ES', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"blog_sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1551889338;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1551921858;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1551965069;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1551965313;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(134, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528896286;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(135, 'current_theme', 'Domno - La Pizzeria', 'yes'),
(136, 'theme_mods_lapizzeria', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:11:\"social-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(145, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"felipe.patino@eiso.com.co\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1547497344;}', 'no'),
(149, 'acf_version', '5.7.10', 'yes'),
(153, 'new_admin_email', 'felipe.patino@eiso.com.co', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(161, 'category_children', 'a:0:{}', 'yes'),
(169, 'Dommo_dbversion', '1.0', 'yes'),
(206, 'wp_page_for_privacy_policy', '0', 'yes'),
(207, 'show_comments_cookies_opt_in', '0', 'yes'),
(208, 'db_upgraded', '', 'yes'),
(211, 'can_compress_scripts', '1', 'no'),
(221, 'direccion', 'Avenida 6bis # 28N - 93', 'yes'),
(222, 'telefono', '(2)380 4560', 'yes'),
(242, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1551879007;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(269, '_site_transient_timeout_theme_roots', '1551880809', 'no'),
(270, '_site_transient_theme_roots', 'a:2:{s:10:\"lapizzeria\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(271, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1551879012;s:7:\"checked\";a:2:{s:10:\"lapizzeria\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(272, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1551879013;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.7.10\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.7.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.9\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(273, '_site_transient_timeout_browser_7633b6fff3875069843b1efa82426ca5', '1552483919', 'no'),
(274, '_site_transient_browser_7633b6fff3875069843b1efa82426ca5', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"66.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_postmeta`
--

CREATE TABLE `pz_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pz_postmeta`
--

INSERT INTO `pz_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_last', '1'),
(3, 2, '_edit_lock', '1550690823:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_wp_page_template', 'about-us.php'),
(6, 5, '_edit_lock', '1548362437:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_wp_page_template', 'especialidades.php'),
(9, 7, '_edit_lock', '1550689707:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_wp_page_template', 'default'),
(12, 9, '_edit_lock', '1528896405:1'),
(13, 11, '_edit_last', '1'),
(14, 11, '_wp_page_template', 'default'),
(15, 11, '_edit_lock', '1548350742:1'),
(16, 13, '_menu_item_type', 'post_type'),
(17, 13, '_menu_item_menu_item_parent', '0'),
(18, 13, '_menu_item_object_id', '11'),
(19, 13, '_menu_item_object', 'page'),
(20, 13, '_menu_item_target', ''),
(21, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 13, '_menu_item_xfn', ''),
(23, 13, '_menu_item_url', ''),
(25, 14, '_menu_item_type', 'post_type'),
(26, 14, '_menu_item_menu_item_parent', '0'),
(27, 14, '_menu_item_object_id', '9'),
(28, 14, '_menu_item_object', 'page'),
(29, 14, '_menu_item_target', ''),
(30, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 14, '_menu_item_xfn', ''),
(32, 14, '_menu_item_url', ''),
(34, 15, '_menu_item_type', 'post_type'),
(35, 15, '_menu_item_menu_item_parent', '0'),
(36, 15, '_menu_item_object_id', '7'),
(37, 15, '_menu_item_object', 'page'),
(38, 15, '_menu_item_target', ''),
(39, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 15, '_menu_item_xfn', ''),
(41, 15, '_menu_item_url', ''),
(43, 16, '_menu_item_type', 'post_type'),
(44, 16, '_menu_item_menu_item_parent', '0'),
(45, 16, '_menu_item_object_id', '5'),
(46, 16, '_menu_item_object', 'page'),
(47, 16, '_menu_item_target', ''),
(48, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 16, '_menu_item_xfn', ''),
(50, 16, '_menu_item_url', ''),
(52, 17, '_menu_item_type', 'post_type'),
(53, 17, '_menu_item_menu_item_parent', '0'),
(54, 17, '_menu_item_object_id', '2'),
(55, 17, '_menu_item_object', 'page'),
(56, 17, '_menu_item_target', ''),
(57, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 17, '_menu_item_xfn', ''),
(59, 17, '_menu_item_url', ''),
(61, 18, '_edit_last', '1'),
(62, 18, 'field_5b211dc749686', 'a:14:{s:3:\"key\";s:19:\"field_5b211dc749686\";s:5:\"label\";s:6:\"Precio\";s:4:\"name\";s:6:\"precio\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(64, 18, 'position', 'normal'),
(65, 18, 'layout', 'no_box'),
(66, 18, 'hide_on_screen', ''),
(67, 18, '_edit_lock', '1528896885:1'),
(68, 18, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"especialidades\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(69, 19, '_edit_last', '1'),
(70, 19, 'field_5b211e1347734', 'a:14:{s:3:\"key\";s:19:\"field_5b211e1347734\";s:5:\"label\";s:13:\"Descripción1\";s:4:\"name\";s:12:\"descripcion1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(71, 19, 'field_5b211e3147735', 'a:14:{s:3:\"key\";s:19:\"field_5b211e3147735\";s:5:\"label\";s:13:\"Descripción2\";s:4:\"name\";s:12:\"descripcion2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(72, 19, 'field_5b211e3b47736', 'a:14:{s:3:\"key\";s:19:\"field_5b211e3b47736\";s:5:\"label\";s:13:\"Descripción3\";s:4:\"name\";s:12:\"descripcion3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(74, 19, 'position', 'normal'),
(75, 19, 'layout', 'no_box'),
(76, 19, 'hide_on_screen', ''),
(77, 19, '_edit_lock', '1528897069:1'),
(78, 19, 'field_5b211e693c704', 'a:11:{s:3:\"key\";s:19:\"field_5b211e693c704\";s:5:\"label\";s:7:\"Imagen1\";s:4:\"name\";s:7:\"imagen1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:2:\"id\";s:12:\"preview_size\";s:8:\"nosotros\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(79, 19, 'field_5b211e893c705', 'a:11:{s:3:\"key\";s:19:\"field_5b211e893c705\";s:5:\"label\";s:7:\"Imagen2\";s:4:\"name\";s:7:\"imagen2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:2:\"id\";s:12:\"preview_size\";s:8:\"nosotros\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(80, 19, 'field_5b211e923c706', 'a:11:{s:3:\"key\";s:19:\"field_5b211e923c706\";s:5:\"label\";s:7:\"Imagen3\";s:4:\"name\";s:7:\"imagen3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:2:\"id\";s:12:\"preview_size\";s:8:\"nosotros\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(81, 19, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(82, 20, '_edit_last', '1'),
(83, 20, '_edit_lock', '1550690001:1'),
(84, 20, 'precio', '20.000'),
(85, 20, '_precio', 'field_5b211dc749686'),
(86, 23, '_edit_last', '1'),
(87, 23, '_edit_lock', '1548344869:1'),
(88, 24, '_wp_attached_file', '2019/01/01.jpg'),
(89, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/01/01.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"01-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 23, '_thumbnail_id', '24'),
(91, 23, '_wp_page_template', 'default'),
(92, 11, '_thumbnail_id', '24'),
(93, 5, '_thumbnail_id', '24'),
(94, 5, 'descripcion1', ''),
(95, 5, '_descripcion1', 'field_5b211e1347734'),
(96, 5, 'imagen1', ''),
(97, 5, '_imagen1', 'field_5b211e693c704'),
(98, 5, 'descripcion2', ''),
(99, 5, '_descripcion2', 'field_5b211e3147735'),
(100, 5, 'imagen2', ''),
(101, 5, '_imagen2', 'field_5b211e893c705'),
(102, 5, 'descripcion3', ''),
(103, 5, '_descripcion3', 'field_5b211e3b47736'),
(104, 5, 'imagen3', ''),
(105, 5, '_imagen3', 'field_5b211e923c706'),
(106, 6, 'descripcion1', ''),
(107, 6, '_descripcion1', 'field_5b211e1347734'),
(108, 6, 'imagen1', ''),
(109, 6, '_imagen1', 'field_5b211e693c704'),
(110, 6, 'descripcion2', ''),
(111, 6, '_descripcion2', 'field_5b211e3147735'),
(112, 6, 'imagen2', ''),
(113, 6, '_imagen2', 'field_5b211e893c705'),
(114, 6, 'descripcion3', ''),
(115, 6, '_descripcion3', 'field_5b211e3b47736'),
(116, 6, 'imagen3', ''),
(117, 6, '_imagen3', 'field_5b211e923c706'),
(119, 36, '_wp_attached_file', '2018/06/otros_01.jpg'),
(120, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:20:\"2018/06/otros_01.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"otros_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"otros_01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"otros_01-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"otros_01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"otros_01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 20, '_thumbnail_id', '36'),
(122, 37, '_edit_last', '1'),
(123, 37, '_edit_lock', '1550689808:1'),
(124, 38, '_wp_attached_file', '2019/01/otros_02.jpg'),
(125, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2019/01/otros_02.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"otros_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"otros_02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"otros_02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"otros_02-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"otros_02-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 37, '_thumbnail_id', '38'),
(127, 37, 'precio', '$30.000'),
(128, 37, '_precio', 'field_5b211dc749686'),
(129, 41, '_wp_attached_file', '2019/02/destacada.jpg'),
(130, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1286;s:4:\"file\";s:21:\"2019/02/destacada.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"destacada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"destacada-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"destacada-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"destacada-1024x686.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:686;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:21:\"destacada-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:21:\"destacada-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 2, '_thumbnail_id', '41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_posts`
--

CREATE TABLE `pz_posts` (
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
-- Volcado de datos para la tabla `pz_posts`
--

INSERT INTO `pz_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-13 13:24:16', '2018-06-13 13:24:16', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-06-13 13:24:16', '2018-06-13 13:24:16', '', 0, 'http://localhost/lapizzeria/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-13 13:24:16', '2018-06-13 13:24:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2019-02-20 19:20:48', '2019-02-20 19:20:48', '', 0, 'http://localhost/lapizzeria/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-06-13 13:28:30', '2018-06-13 13:28:30', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost/lapizzeria/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-13 13:28:30', '2018-06-13 13:28:30', '', 2, 'http://localhost/lapizzeria/2018/06/13/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-06-13 13:28:39', '2018-06-13 13:28:39', '', 'Acerca de', '', 'publish', 'closed', 'closed', '', 'acerca-de', '', '', '2019-01-24 17:28:38', '2019-01-24 17:28:38', '', 0, 'http://localhost/lapizzeria/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-06-13 13:28:39', '2018-06-13 13:28:39', '', 'Acerca de', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-13 13:28:39', '2018-06-13 13:28:39', '', 5, 'http://localhost/lapizzeria/2018/06/13/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-13 13:28:52', '2018-06-13 13:28:52', '', 'Especialidades', '', 'publish', 'closed', 'closed', '', 'especialidades', '', '', '2019-02-20 19:10:34', '2019-02-20 19:10:34', '', 0, 'http://localhost/lapizzeria/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-06-13 13:28:52', '2018-06-13 13:28:52', '', 'Especialidades', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-06-13 13:28:52', '2018-06-13 13:28:52', '', 7, 'http://localhost/lapizzeria/2018/06/13/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-06-13 13:29:04', '2018-06-13 13:29:04', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-06-13 13:29:04', '2018-06-13 13:29:04', '', 0, 'http://localhost/lapizzeria/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-06-13 13:29:04', '2018-06-13 13:29:04', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-13 13:29:04', '2018-06-13 13:29:04', '', 9, 'http://localhost/lapizzeria/2018/06/13/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-06-13 13:29:19', '2018-06-13 13:29:19', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2019-01-24 17:27:37', '2019-01-24 17:27:37', '', 0, 'http://localhost/lapizzeria/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-06-13 13:29:19', '2018-06-13 13:29:19', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-13 13:29:19', '2018-06-13 13:29:19', '', 11, 'http://localhost/lapizzeria/2018/06/13/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-13 13:31:09', '2018-06-13 13:31:09', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-06-13 13:31:14', '2018-06-13 13:31:14', '', 0, 'http://localhost/lapizzeria/?p=13', 5, 'nav_menu_item', '', 0),
(14, 1, '2018-06-13 13:31:09', '2018-06-13 13:31:09', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-06-13 13:31:14', '2018-06-13 13:31:14', '', 0, 'http://localhost/lapizzeria/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2018-06-13 13:31:09', '2018-06-13 13:31:09', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-06-13 13:31:14', '2018-06-13 13:31:14', '', 0, 'http://localhost/lapizzeria/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2018-06-13 13:31:08', '2018-06-13 13:31:08', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-06-13 13:31:14', '2018-06-13 13:31:14', '', 0, 'http://localhost/lapizzeria/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2018-06-13 13:31:08', '2018-06-13 13:31:08', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-06-13 13:31:14', '2018-06-13 13:31:14', '', 0, 'http://localhost/lapizzeria/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2018-06-13 13:36:35', '2018-06-13 13:36:35', '', 'Especialidades', '', 'publish', 'closed', 'closed', '', 'acf_especialidades', '', '', '2018-06-13 13:36:54', '2018-06-13 13:36:54', '', 0, 'http://localhost/lapizzeria/?post_type=acf&#038;p=18', 0, 'acf', '', 0),
(19, 1, '2018-06-13 13:38:32', '2018-06-13 13:38:32', '', 'Acerca de', '', 'publish', 'closed', 'closed', '', 'acf_acerca-de', '', '', '2018-06-13 13:39:53', '2018-06-13 13:39:53', '', 0, 'http://localhost/lapizzeria/?post_type=acf&#038;p=19', 0, 'acf', '', 0),
(20, 1, '2018-06-13 13:40:56', '2018-06-13 13:40:56', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Jamon queso', '', 'publish', 'closed', 'closed', '', 'jamon-queso', '', '', '2019-02-20 19:13:20', '2019-02-20 19:13:20', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=20', 0, 'especialidades', '', 0),
(23, 1, '2019-01-24 15:49:58', '2019-01-24 15:49:58', 'Recibimos su reservación, nos pondremos en contacto lo más pronto posible.', 'Reserva éxitosa', '', 'publish', 'closed', 'closed', '', 'reserva-exitosa', '', '', '2019-01-24 15:49:58', '2019-01-24 15:49:58', '', 0, 'http://localhost/lapizzeria/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-01-24 15:49:53', '2019-01-24 15:49:53', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2019-01-24 15:49:53', '2019-01-24 15:49:53', '', 23, 'http://localhost/lapizzeria/wp-content/uploads/2019/01/01.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-01-24 15:49:58', '2019-01-24 15:49:58', 'Recibimos su reservación, nos pondremos en contacto lo más pronto posible.', 'Reserva éxitosa', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-01-24 15:49:58', '2019-01-24 15:49:58', '', 23, 'http://localhost/lapizzeria/2019/01/24/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-01-24 17:24:14', '2019-01-24 17:24:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:0:{}s:11:\"description\";s:0:\"\";}', 'Acerca de', 'acerca-de', 'publish', 'closed', 'closed', '', 'group_5c49f4be96f6c', '', '', '2019-01-24 17:24:14', '2019-01-24 17:24:14', '', 0, 'http://localhost/lapizzeria/?post_type=acf-field-group&p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2019-01-24 17:24:14', '2019-01-24 17:24:14', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Descripción1', 'descripcion1', 'publish', 'closed', 'closed', '', 'field_5b211e1347734', '', '', '2019-01-24 17:24:14', '2019-01-24 17:24:14', '', 26, 'http://localhost/lapizzeria/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2019-01-24 17:24:14', '2019-01-24 17:24:14', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Descripción2', 'descripcion2', 'publish', 'closed', 'closed', '', 'field_5b211e3147735', '', '', '2019-01-24 17:24:14', '2019-01-24 17:24:14', '', 26, 'http://localhost/lapizzeria/?post_type=acf-field&p=28', 2, 'acf-field', '', 0),
(29, 1, '2019-01-24 17:24:15', '2019-01-24 17:24:15', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Descripción3', 'descripcion3', 'publish', 'closed', 'closed', '', 'field_5b211e3b47736', '', '', '2019-01-24 17:24:15', '2019-01-24 17:24:15', '', 26, 'http://localhost/lapizzeria/?post_type=acf-field&p=29', 4, 'acf-field', '', 0),
(30, 1, '2019-01-24 17:24:15', '2019-01-24 17:24:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:8:\"nosotros\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:2:\"id\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Imagen1', 'imagen1', 'publish', 'closed', 'closed', '', 'field_5b211e693c704', '', '', '2019-01-24 17:24:15', '2019-01-24 17:24:15', '', 26, 'http://localhost/lapizzeria/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2019-01-24 17:24:15', '2019-01-24 17:24:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:8:\"nosotros\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:2:\"id\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Imagen2', 'imagen2', 'publish', 'closed', 'closed', '', 'field_5b211e893c705', '', '', '2019-01-24 17:24:15', '2019-01-24 17:24:15', '', 26, 'http://localhost/lapizzeria/?post_type=acf-field&p=31', 3, 'acf-field', '', 0),
(32, 1, '2019-01-24 17:24:15', '2019-01-24 17:24:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:8:\"nosotros\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:2:\"id\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Imagen3', 'imagen3', 'publish', 'closed', 'closed', '', 'field_5b211e923c706', '', '', '2019-01-24 17:24:15', '2019-01-24 17:24:15', '', 26, 'http://localhost/lapizzeria/?post_type=acf-field&p=32', 5, 'acf-field', '', 0),
(33, 1, '2019-01-24 17:24:15', '2019-01-24 17:24:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"especialidades\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:0:{}s:11:\"description\";s:0:\"\";}', 'Especialidades', 'especialidades', 'publish', 'closed', 'closed', '', 'group_5c49f4bfb08c0', '', '', '2019-01-24 17:24:15', '2019-01-24 17:24:15', '', 0, 'http://localhost/lapizzeria/?post_type=acf-field-group&p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2019-01-24 17:24:15', '2019-01-24 17:24:15', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Precio', 'precio', 'publish', 'closed', 'closed', '', 'field_5b211dc749686', '', '', '2019-01-24 17:24:15', '2019-01-24 17:24:15', '', 33, 'http://localhost/lapizzeria/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(36, 1, '2019-01-24 20:39:59', '2019-01-24 20:39:59', '', 'otros_01', '', 'inherit', 'open', 'closed', '', 'otros_01', '', '', '2019-01-24 20:39:59', '2019-01-24 20:39:59', '', 20, 'http://localhost/lapizzeria/wp-content/uploads/2018/06/otros_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-01-24 20:41:14', '2019-01-24 20:41:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Pizza queso', '', 'publish', 'closed', 'closed', '', 'pizza-queso', '', '', '2019-01-24 20:41:34', '2019-01-24 20:41:34', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=37', 0, 'especialidades', '', 0),
(38, 1, '2019-01-24 20:41:03', '2019-01-24 20:41:03', '', 'otros_02', '', 'inherit', 'open', 'closed', '', 'otros_02', '', '', '2019-01-24 20:41:03', '2019-01-24 20:41:03', '', 37, 'http://localhost/lapizzeria/wp-content/uploads/2019/01/otros_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-01-24 22:06:49', '2019-01-24 22:06:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-24 22:06:49', '2019-01-24 22:06:49', '', 2, 'http://localhost/lapizzeria/2019/01/24/2-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-02-20 19:20:40', '2019-02-20 19:20:40', '', 'destacada', '', 'inherit', 'open', 'closed', '', 'destacada', '', '', '2019-02-20 19:20:40', '2019-02-20 19:20:40', '', 2, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/destacada.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-03-06 13:32:00', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-06 13:32:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/lapizzeria/?p=42', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_reservaciones`
--

CREATE TABLE `pz_reservaciones` (
  `id` mediumint(9) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensaje` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pz_reservaciones`
--

INSERT INTO `pz_reservaciones` (`id`, `nombre`, `fecha`, `correo`, `telefono`, `mensaje`) VALUES
(7, 'Andrés Felipe Patiño', '0000-00-00 00:00:00', 'andresf1395@hotmail.com', '380 45 60', 'para aniversario'),
(11, 'Andrés Felipe Patiño', '0000-00-00 00:00:00', 'felipe.patino@eiso.com.co', '3804560', 'gtdfgfdgdfg'),
(12, 'Andrés Felipe Patiño', '0000-00-00 00:00:00', 'felipe.patino@eiso.com.co', '3804560', 'sdfsdfsdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_termmeta`
--

CREATE TABLE `pz_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_terms`
--

CREATE TABLE `pz_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pz_terms`
--

INSERT INTO `pz_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Social menu', 'social-menu', 0),
(4, 'Pizzas', 'pizzas', 0),
(5, 'Otros', 'otros', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_term_relationships`
--

CREATE TABLE `pz_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pz_term_relationships`
--

INSERT INTO `pz_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(20, 5, 0),
(37, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_term_taxonomy`
--

CREATE TABLE `pz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pz_term_taxonomy`
--

INSERT INTO `pz_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_usermeta`
--

CREATE TABLE `pz_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pz_usermeta`
--

INSERT INTO `pz_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'comasy'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'pz_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'pz_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'pz_dashboard_quick_press_last_post_id', '42'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:28:\"add-post-type-especialidades\";i:1;s:12:\"add-post_tag\";}'),
(21, 1, 'pz_user-settings', 'libraryContent=browse'),
(22, 1, 'pz_user-settings-time', '1548350883'),
(23, 1, 'show_try_gutenberg_panel', '0'),
(24, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(25, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}'),
(27, 1, 'session_tokens', 'a:1:{s:64:\"747d66453e62b9c04fa6c019e176ba75d3d2b6df99ebefa5a0b4a4b9f2a42471\";a:4:{s:10:\"expiration\";i:1552055920;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0\";s:5:\"login\";i:1551883120;}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pz_users`
--

CREATE TABLE `pz_users` (
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
-- Volcado de datos para la tabla `pz_users`
--

INSERT INTO `pz_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'comasy', '$P$B91W/wSuj2hnimPAgEHD2tkLbmzMMC.', 'comasy', 'felipe.patino@eiso.com.co', '', '2018-06-13 13:24:14', '', 0, 'comasy');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pz_commentmeta`
--
ALTER TABLE `pz_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `pz_comments`
--
ALTER TABLE `pz_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `pz_links`
--
ALTER TABLE `pz_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `pz_options`
--
ALTER TABLE `pz_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `pz_postmeta`
--
ALTER TABLE `pz_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `pz_posts`
--
ALTER TABLE `pz_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `pz_reservaciones`
--
ALTER TABLE `pz_reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pz_termmeta`
--
ALTER TABLE `pz_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `pz_terms`
--
ALTER TABLE `pz_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `pz_term_relationships`
--
ALTER TABLE `pz_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `pz_term_taxonomy`
--
ALTER TABLE `pz_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `pz_usermeta`
--
ALTER TABLE `pz_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `pz_users`
--
ALTER TABLE `pz_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pz_commentmeta`
--
ALTER TABLE `pz_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pz_comments`
--
ALTER TABLE `pz_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pz_links`
--
ALTER TABLE `pz_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pz_options`
--
ALTER TABLE `pz_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT de la tabla `pz_postmeta`
--
ALTER TABLE `pz_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `pz_posts`
--
ALTER TABLE `pz_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `pz_reservaciones`
--
ALTER TABLE `pz_reservaciones`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pz_termmeta`
--
ALTER TABLE `pz_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pz_terms`
--
ALTER TABLE `pz_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pz_term_taxonomy`
--
ALTER TABLE `pz_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pz_usermeta`
--
ALTER TABLE `pz_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `pz_users`
--
ALTER TABLE `pz_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
