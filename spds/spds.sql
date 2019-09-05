-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2018 at 03:10 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spds`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-26 14:39:51', '2018-01-26 16:39:51', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
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
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://spds', 'yes'),
(2, 'home', 'http://spds', 'yes'),
(3, 'blogname', 'SPDS', 'yes'),
(4, 'blogdescription', 'São Paulo Digital School', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vanssiler.goncalves@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(22, 'posts_per_page', '20', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:212:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:10:"sliders/?$";s:27:"index.php?post_type=sliders";s:40:"sliders/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=sliders&feed=$matches[1]";s:35:"sliders/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=sliders&feed=$matches[1]";s:27:"sliders/page/([0-9]{1,})/?$";s:45:"index.php?post_type=sliders&paged=$matches[1]";s:14:"professores/?$";s:31:"index.php?post_type=professores";s:44:"professores/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=professores&feed=$matches[1]";s:39:"professores/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=professores&feed=$matches[1]";s:31:"professores/page/([0-9]{1,})/?$";s:49:"index.php?post_type=professores&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:56:"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:51:"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:32:"categoria-produto/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:44:"categoria-produto/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:26:"categoria-produto/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"produto-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"produto-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"produto-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:59:"nivel-conhecimento/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?pa_nivel-conhecimento=$matches[1]&feed=$matches[2]";s:54:"nivel-conhecimento/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?pa_nivel-conhecimento=$matches[1]&feed=$matches[2]";s:35:"nivel-conhecimento/([^/]+)/embed/?$";s:54:"index.php?pa_nivel-conhecimento=$matches[1]&embed=true";s:47:"nivel-conhecimento/([^/]+)/page/?([0-9]{1,})/?$";s:61:"index.php?pa_nivel-conhecimento=$matches[1]&paged=$matches[2]";s:29:"nivel-conhecimento/([^/]+)/?$";s:43:"index.php?pa_nivel-conhecimento=$matches[1]";s:35:"produto/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"produto/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"produto/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"produto/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"produto/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"produto/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"produto/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"produto/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"produto/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"produto/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"produto/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"produto/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:56:"slider-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?sliders-category=$matches[1]&feed=$matches[2]";s:51:"slider-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?sliders-category=$matches[1]&feed=$matches[2]";s:32:"slider-category/([^/]+)/embed/?$";s:49:"index.php?sliders-category=$matches[1]&embed=true";s:44:"slider-category/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?sliders-category=$matches[1]&paged=$matches[2]";s:26:"slider-category/([^/]+)/?$";s:38:"index.php?sliders-category=$matches[1]";s:33:"sliders/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"sliders/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"sliders/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"sliders/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"sliders/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"sliders/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"sliders/(.+?)/embed/?$";s:40:"index.php?sliders=$matches[1]&embed=true";s:26:"sliders/(.+?)/trackback/?$";s:34:"index.php?sliders=$matches[1]&tb=1";s:46:"sliders/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?sliders=$matches[1]&feed=$matches[2]";s:41:"sliders/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?sliders=$matches[1]&feed=$matches[2]";s:34:"sliders/(.+?)/page/?([0-9]{1,})/?$";s:47:"index.php?sliders=$matches[1]&paged=$matches[2]";s:41:"sliders/(.+?)/comment-page-([0-9]{1,})/?$";s:47:"index.php?sliders=$matches[1]&cpage=$matches[2]";s:31:"sliders/(.+?)/wc-api(/(.*))?/?$";s:48:"index.php?sliders=$matches[1]&wc-api=$matches[3]";s:37:"sliders/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"sliders/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"sliders/(.+?)(?:/([0-9]+))?/?$";s:46:"index.php?sliders=$matches[1]&page=$matches[2]";s:57:"teacher-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?professores-category=$matches[1]&feed=$matches[2]";s:52:"teacher-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?professores-category=$matches[1]&feed=$matches[2]";s:33:"teacher-category/([^/]+)/embed/?$";s:53:"index.php?professores-category=$matches[1]&embed=true";s:45:"teacher-category/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?professores-category=$matches[1]&paged=$matches[2]";s:27:"teacher-category/([^/]+)/?$";s:42:"index.php?professores-category=$matches[1]";s:37:"professores/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"professores/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"professores/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professores/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professores/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"professores/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"professores/(.+?)/embed/?$";s:44:"index.php?professores=$matches[1]&embed=true";s:30:"professores/(.+?)/trackback/?$";s:38:"index.php?professores=$matches[1]&tb=1";s:50:"professores/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?professores=$matches[1]&feed=$matches[2]";s:45:"professores/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?professores=$matches[1]&feed=$matches[2]";s:38:"professores/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?professores=$matches[1]&paged=$matches[2]";s:45:"professores/(.+?)/comment-page-([0-9]{1,})/?$";s:51:"index.php?professores=$matches[1]&cpage=$matches[2]";s:35:"professores/(.+?)/wc-api(/(.*))?/?$";s:52:"index.php?professores=$matches[1]&wc-api=$matches[3]";s:41:"professores/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"professores/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"professores/(.+?)(?:/([0-9]+))?/?$";s:50:"index.php?professores=$matches[1]&page=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";i:2;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:3;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'SPDS', 'yes'),
(41, 'stylesheet', 'SPDS', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '6', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"fullbannerhome";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'nonce_key', ',`rvJHWVZ1AS9ois{l}`4~!=Ns8doeK?QVK/1dAX>uZ&c2N xS5,7sw1W(t)S$$L', 'no'),
(108, 'nonce_salt', 'yKaItV@fXJw?k7&NW,6IF45y_b|UYo&lV}(iZiMSA/AwX[b1E}|>)1,]`Q5QmuYI', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:8:{i:1520273904;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1520298738;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1520305200;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1520311191;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1520344205;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1520354435;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1522713600;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517330408;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'auth_key', 'V,u/(*WOxI|;.14 &v)t8^3|jMX-TBn[7E8B^ke7-^__ht813u!%dNq$4OR]b5|H', 'no'),
(124, 'auth_salt', 'Zr[|Aekpxdo`Uu8{%K9|;YW_o7^]Lt#{5ALuk5cWYv%CaRA9` g<GU9GeS1j>qF>', 'no'),
(125, 'logged_in_key', 'SOTicG=H^_D$R*ut]`Z1DNBA;a+]X!FR? =DF0_lFY#$%vGox5kg1l2_bWssrcp^', 'no'),
(126, 'logged_in_salt', '%++FS8U  2fV8_uJ&SA,u^1xcOYqe4Ru,bFpa&h;v(Y6g8D+:0X=_9i~hOu!kl}k', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(186, 'current_theme', 'SPDS', 'yes'),
(187, 'theme_mods_SPDS', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:6:{s:7:"primary";i:15;s:10:"slidermenu";i:16;s:9:"quemsomos";i:18;s:6:"cursos";i:19;s:11:"consultoria";i:20;s:7:"contatp";i:21;}s:18:"custom_css_post_id";i:-1;s:11:"font_family";s:93:"<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">";s:15:"font_family_css";s:33:"font-family: "Roboto", sans-serif";}', 'yes'),
(188, 'theme_switched', '', 'yes'),
(242, 'recently_activated', 'a:0:{}', 'yes'),
(245, 'woocommerce_store_address', 'Rua Nove de Julho', 'yes'),
(246, 'woocommerce_store_address_2', '', 'yes'),
(247, 'woocommerce_store_city', 'Marília', 'yes'),
(248, 'woocommerce_default_country', 'BR:SP', 'yes'),
(249, 'woocommerce_store_postcode', '17509110', 'yes'),
(250, 'woocommerce_allowed_countries', 'all', 'yes'),
(251, 'woocommerce_all_except_countries', '', 'yes'),
(252, 'woocommerce_specific_allowed_countries', '', 'yes'),
(253, 'woocommerce_ship_to_countries', '', 'yes'),
(254, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(255, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(256, 'woocommerce_calc_taxes', 'no', 'yes'),
(257, 'woocommerce_demo_store', 'no', 'yes'),
(258, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(259, 'woocommerce_currency', 'BRL', 'yes'),
(260, 'woocommerce_currency_pos', 'left', 'yes'),
(261, 'woocommerce_price_thousand_sep', '.', 'yes'),
(262, 'woocommerce_price_decimal_sep', ',', 'yes'),
(263, 'woocommerce_price_num_decimals', '2', 'yes'),
(264, 'woocommerce_weight_unit', 'kg', 'yes'),
(265, 'woocommerce_dimension_unit', 'cm', 'yes'),
(266, 'woocommerce_enable_reviews', 'yes', 'yes'),
(267, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(268, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(269, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(270, 'woocommerce_review_rating_required', 'yes', 'no'),
(271, 'woocommerce_shop_page_id', '11', 'yes'),
(272, 'woocommerce_shop_page_display', '', 'yes'),
(273, 'woocommerce_category_archive_display', '', 'yes'),
(274, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(275, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(276, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(277, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(278, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(279, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(280, 'woocommerce_manage_stock', 'yes', 'yes'),
(281, 'woocommerce_hold_stock_minutes', '60', 'no'),
(282, 'woocommerce_notify_low_stock', 'yes', 'no'),
(283, 'woocommerce_notify_no_stock', 'yes', 'no'),
(284, 'woocommerce_stock_email_recipient', 'vanssiler.goncalves@gmail.com', 'no'),
(285, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(286, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(287, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(288, 'woocommerce_stock_format', '', 'yes'),
(289, 'woocommerce_file_download_method', 'force', 'no'),
(290, 'woocommerce_downloads_require_login', 'no', 'no'),
(291, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(292, 'woocommerce_prices_include_tax', 'no', 'yes'),
(293, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(294, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(295, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(296, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(297, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(298, 'woocommerce_tax_display_cart', 'excl', 'no'),
(299, 'woocommerce_price_display_suffix', '', 'yes'),
(300, 'woocommerce_tax_total_display', 'itemized', 'no'),
(301, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(302, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(303, 'woocommerce_ship_to_destination', 'billing', 'no'),
(304, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(305, 'woocommerce_enable_coupons', 'yes', 'yes'),
(306, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(307, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(308, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(309, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(310, 'woocommerce_cart_page_id', '12', 'yes'),
(311, 'woocommerce_checkout_page_id', '13', 'yes'),
(312, 'woocommerce_terms_page_id', '', 'no'),
(313, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(314, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(315, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(316, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(317, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(318, 'woocommerce_myaccount_page_id', '14', 'yes'),
(319, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(320, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(321, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(322, 'woocommerce_registration_generate_username', 'yes', 'no'),
(323, 'woocommerce_registration_generate_password', 'no', 'no'),
(324, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(325, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(326, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(327, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(328, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(329, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(330, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(331, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(332, 'woocommerce_email_from_name', 'SPDS', 'no'),
(333, 'woocommerce_email_from_address', 'vanssiler.goncalves@gmail.com', 'no'),
(334, 'woocommerce_email_header_image', '', 'no'),
(335, 'woocommerce_email_footer_text', 'SPDS', 'no'),
(336, 'woocommerce_email_base_color', '#96588a', 'no'),
(337, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(338, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(339, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(340, 'woocommerce_api_enabled', 'yes', 'yes'),
(346, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(347, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(348, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(349, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(350, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(351, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(352, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(353, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(356, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(357, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(358, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(359, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(361, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(362, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(363, 'woocommerce_product_type', 'both', 'yes'),
(364, 'woocommerce_allow_tracking', 'yes', 'yes'),
(365, 'woocommerce_tracker_last_send', '1520208211', 'yes'),
(367, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(368, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";b:0;}', 'yes'),
(369, 'wc_ppec_version', '1.5.2', 'yes'),
(370, 'wc_gateway_ppce_bootstrap_warning_message', 'WooCommerce Gateway PayPal Express Checkout requires OpenSSL >= 1.0.1 to be installed on your server', 'yes'),
(376, '_transient_shipping-transient-version', '1517513328', 'yes'),
(407, 'category_children', 'a:0:{}', 'yes'),
(422, 'woocommerce_tracker_ua', 'a:2:{i:0;s:121:"mozilla/5.0 (macintosh; intel mac os x 10_12_6) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.132 safari/537.36";i:1;s:121:"mozilla/5.0 (macintosh; intel mac os x 10_12_6) applewebkit/537.36 (khtml, like gecko) chrome/64.0.3282.167 safari/537.36";}', 'yes'),
(442, 'wc_gateway_ppec_bootstrap_warning_message_dismissed', 'yes', 'yes'),
(458, 'acf_version', '5.4.2', 'yes'),
(477, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(721, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:8:"/produto";s:13:"category_base";s:17:"categoria-produto";s:8:"tag_base";s:11:"produto-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(722, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(727, 'default_product_cat', '17', 'yes'),
(733, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(734, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(735, 'woocommerce_single_image_width', '600', 'yes'),
(834, '_transient_timeout_external_ip_address_::1', '1520346923', 'no'),
(835, '_transient_external_ip_address_::1', '2804:14d:1882:401b:edb3:54be:50f8:7524', 'no'),
(845, '_site_transient_timeout_browser_d3b8d64a156767756c3e2c71c25097f3', '1520347076', 'no'),
(846, '_site_transient_browser_d3b8d64a156767756c3e2c71c25097f3', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"64.0.3282.167";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(943, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(946, 'woocommerce_version', '3.3.3', 'yes'),
(947, 'woocommerce_db_version', '3.3.3', 'yes'),
(950, '_transient_product_query-transient-version', '1519957867', 'yes'),
(952, '_transient_product-transient-version', '1519957867', 'yes'),
(953, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:18:"nivel-conhecimento";s:15:"attribute_label";s:22:"Nível de conhecimento";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"1";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1011, 'product_cat_children', 'a:0:{}', 'yes'),
(1031, '_transient_timeout_wc_term_counts', '1522550783', 'no'),
(1032, '_transient_wc_term_counts', 'a:23:{i:23;s:1:"2";i:51;s:1:"2";i:34;s:1:"3";i:31;s:1:"3";i:43;s:1:"3";i:40;s:1:"3";i:46;s:1:"3";i:30;s:1:"3";i:48;s:1:"3";i:39;s:1:"3";i:29;s:1:"3";i:38;s:1:"3";i:35;s:1:"3";i:36;s:1:"3";i:49;s:1:"3";i:47;s:1:"3";i:42;s:1:"3";i:44;s:1:"3";i:41;s:1:"3";i:45;s:1:"3";i:37;s:1:"3";i:32;s:1:"3";i:33;s:1:"3";}', 'no'),
(1060, '_transient_timeout_wc_shipping_method_count_1_1517513328', '1522598185', 'no'),
(1061, '_transient_wc_shipping_method_count_1_1517513328', '0', 'no'),
(1096, 'professores-category_22_banner', '96', 'no'),
(1097, '_professores-category_22_banner', 'field_5a99bc38f3bd3', 'no'),
(1098, 'professores-category_22_descricao_completa', 'ajhsd kajhsvdkadvhaj', 'no'),
(1099, '_professores-category_22_descricao_completa', 'field_5a99bc4df3bd4', 'no'),
(1103, 'professores-category_22_teste', 'TESTE2', 'no'),
(1104, '_professores-category_22_teste', 'field_5a99c323069b4', 'no'),
(1105, 'professores-category_children', 'a:0:{}', 'yes'),
(1161, '_transient_timeout_acf_get_remote_plugin_info', '1520294618', 'no'),
(1162, '_transient_acf_get_remote_plugin_info', 'a:13:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.6.9";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.9.9";s:6:"tagged";s:61:"acf, advanced, custom, field, fields, form, repeater, content";s:9:"changelog";s:505:"<h4>5.6.9</h4><ul><li>User field: Added new <code>Return Format</code> setting (Array, Object, ID)</li><li>Core: Added basic compatibility with Gutenberg - values now save</li><li>Core: Fixed bug affecting the loading of fields on new Menu Items</li><li>Core: Removed private (<code>show_ui</code> => false) post types from the <code>Post Type</code> location rule choices</li><li>Core: Minor fixes and improvements</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>";s:14:"upgrade_notice";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}}', 'no'),
(1170, '_transient_timeout_wc_report_sales_by_date', '1520312120', 'no'),
(1171, '_transient_wc_report_sales_by_date', 'a:48:{s:32:"4bf16a7cbd951982a58bbb187fab8e32";a:0:{}s:32:"727d3e9a5963853254fb9b6572bb7ecb";a:0:{}s:32:"f3a00302e6a9607192d41b2b15af1489";a:0:{}s:32:"4a2607d6efd1f79f5adb2ec2a792dd56";N;s:32:"2749416743f8380742fd34e58b0aa17f";a:0:{}s:32:"a97e81f46771cb29e700358dcdef9f19";a:0:{}s:32:"27e605097ced39dd6eea734fa6e4e093";a:0:{}s:32:"2ba6dfd2f2c243ce914fe147a9213520";a:0:{}s:32:"b02cf568f4abdeea04f3b1e5405ffea4";a:0:{}s:32:"6447c5ce2170634a3d94946bf6f93649";a:0:{}s:32:"4e19547d099d17a733b467b7162607c3";a:0:{}s:32:"5dcec89b32cae6f52853e3882cdd95c8";N;s:32:"7dd596e9f384ffdb7a587aeb54b3d2c2";a:0:{}s:32:"68004dc4b7b8de1f8e80443f7745d4ec";a:0:{}s:32:"2f8599e55716e3efc84fab760ed53b1e";a:0:{}s:32:"618a51f343c47578072dd6abe7142a0c";a:0:{}s:32:"7f436a00b05daf352f8a41ad277cc2ac";a:0:{}s:32:"ec7c07a396ce492764ca0d449487215e";a:0:{}s:32:"2c61a12111090ba0faf235a79e75dccd";a:0:{}s:32:"1762100e0834bab5217054881a17c02a";N;s:32:"38f42b05a0e1856c2b8a9eecfad184f1";a:0:{}s:32:"1ee13acf00c2b07e6419870c24875179";a:0:{}s:32:"325a1f39be6978c9af99e2333c4caa41";a:0:{}s:32:"ecd4ff84b634300df768e59cc8c63138";a:0:{}s:32:"22bfbf2b1db6b25cc128b63eaa9bba2a";a:0:{}s:32:"8a2192f981d418e1b8fbe1fe665b7b75";a:0:{}s:32:"e852eaaa9d5e1953c793e89d5d03edba";a:0:{}s:32:"968a6228077de84c0f33b7ef6d1d26e4";N;s:32:"4ec8ddd44b908cb67d0396f57e2ce639";a:0:{}s:32:"a979c8f14e99e71be87e5d4130984c7c";a:0:{}s:32:"8e25cb9b3f51611600ab68df93655f78";a:0:{}s:32:"e3bdc7f5bfd29c7a7841e88559b27d81";a:0:{}s:32:"bb3f327c59569b8b69c8b4d9fd8b9944";a:0:{}s:32:"a0bb861174ff9f1a103abe7d10107994";a:0:{}s:32:"f0ad5c9828f42533c0b8b9b195f446c7";a:0:{}s:32:"e51e8676b2ee412510b981160f416377";N;s:32:"19d82e7ec87fae7a8dd7b66d506b096b";a:0:{}s:32:"cd7752da68eb04e639dd44a878ee35a6";a:0:{}s:32:"c3d1950bb7beddfc23512cefbde3a4d0";a:0:{}s:32:"579db15d27d5cf04a16c8fc6d43e4b24";a:0:{}s:32:"e0d237e91cee98c37840783e4b825db4";a:0:{}s:32:"0a2f1d1b7fe52226af53448e86d80863";a:0:{}s:32:"f4f5a20aca5337f2b42e41ef3fdc24e5";a:0:{}s:32:"ff20e40d5d76c64cfcdb1f420fcf4662";N;s:32:"13e7ec75aefe5154556ff87a4a157a75";a:0:{}s:32:"c846d8047ee6094970851ca9ef5c2177";a:0:{}s:32:"378095cc63fc7f860fb65bf8ee7e61af";a:0:{}s:32:"42d9c284aa06389e7377705561ab333b";a:0:{}}', 'no'),
(1172, '_transient_timeout_wc_admin_report', '1520311388', 'no'),
(1173, '_transient_wc_admin_report', 'a:2:{s:32:"ebe35be10ce9c33573bac3506f57278f";a:0:{}s:32:"7d1b2e9fe8d37b3938571fedd50eb8bd";a:0:{}}', 'no'),
(1174, '_transient_timeout_wc_low_stock_count', '1522801257', 'no'),
(1175, '_transient_wc_low_stock_count', '0', 'no'),
(1176, '_transient_timeout_wc_outofstock_count', '1522801257', 'no'),
(1177, '_transient_wc_outofstock_count', '0', 'no'),
(1195, 'sliders-category_children', 'a:0:{}', 'yes'),
(1211, '_transient_timeout_plugin_slugs', '1520306842', 'no'),
(1212, '_transient_plugin_slugs', 'a:5:{i:0;s:33:"advanced-custom-fieldsBKP/acf.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";i:3;s:27:"woocommerce/woocommerce.php";i:4;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";}', 'no'),
(1214, '_transient_is_multi_author', '0', 'yes'),
(1242, '_site_transient_timeout_theme_roots', '1520269803', 'no'),
(1243, '_site_transient_theme_roots', 'a:4:{s:4:"SPDS";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(1246, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.4.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1520268007;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-22 19:29:24";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/pt_BR.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(1247, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1520268008;s:7:"checked";a:4:{s:4:"SPDS";s:0:"";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.4.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip";}}s:12:"translations";a:0:{}}', 'no'),
(1248, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1520268009;s:7:"checked";a:5:{s:33:"advanced-custom-fieldsBKP/acf.php";s:6:"4.4.12";s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.4.2";s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";s:5:"2.2.3";s:27:"woocommerce/woocommerce.php";s:5:"3.3.3";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:5:"1.5.2";}s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.6.9";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"3.3.3";s:7:"updated";s:19:"2018-02-20 17:12:49";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/woocommerce/3.3.3/pt_BR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:4:{s:33:"advanced-custom-fieldsBKP/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:33:"advanced-custom-fieldsBKP/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";O:8:"stdClass":9:{s:2:"id";s:44:"w.org/plugins/html-editor-syntax-highlighter";s:4:"slug";s:30:"html-editor-syntax-highlighter";s:6:"plugin";s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";s:11:"new_version";s:5:"2.2.3";s:3:"url";s:61:"https://wordpress.org/plugins/html-editor-syntax-highlighter/";s:7:"package";s:79:"https://downloads.wordpress.org/plugin/html-editor-syntax-highlighter.2.2.3.zip";s:5:"icons";a:4:{s:2:"1x";s:83:"https://ps.w.org/html-editor-syntax-highlighter/assets/icon-128x128.png?rev=1669116";s:2:"2x";s:83:"https://ps.w.org/html-editor-syntax-highlighter/assets/icon-256x256.png?rev=1669116";s:3:"svg";s:75:"https://ps.w.org/html-editor-syntax-highlighter/assets/icon.svg?rev=1669116";s:7:"default";s:75:"https://ps.w.org/html-editor-syntax-highlighter/assets/icon.svg?rev=1669116";}s:7:"banners";a:3:{s:2:"2x";s:86:"https://ps.w.org/html-editor-syntax-highlighter/assets/banner-1544x500.png?rev=1669110";s:2:"1x";s:85:"https://ps.w.org/html-editor-syntax-highlighter/assets/banner-772x250.png?rev=1669110";s:7:"default";s:86:"https://ps.w.org/html-editor-syntax-highlighter/assets/banner-1544x500.png?rev=1669110";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.3.3";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.3.3.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:7:"default";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";s:7:"default";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";}s:11:"banners_rtl";a:0:{}}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":9:{s:2:"id";s:57:"w.org/plugins/woocommerce-gateway-paypal-express-checkout";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.5.2";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.5.2.zip";s:5:"icons";a:3:{s:2:"1x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389";s:2:"2x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389";s:7:"default";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389";}s:7:"banners";a:3:{s:2:"2x";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389";s:2:"1x";s:98:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389";s:7:"default";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=1205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_wp_attached_file', '2018/02/favicon.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:19:"2018/02/favicon.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"favicon-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 6, '_wp_attached_file', '2018/02/cropped-favicon.png'),
(7, 6, '_wp_attachment_context', 'site-icon'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:27:"2018/02/cropped-favicon.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"cropped-favicon-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-favicon-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium-thumb";a:4:{s:4:"file";s:27:"cropped-favicon-400x300.png";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:27:"cropped-favicon-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:27:"cropped-favicon-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:27:"cropped-favicon-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:25:"cropped-favicon-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 15, '_menu_item_type', 'custom'),
(18, 15, '_menu_item_menu_item_parent', '0'),
(19, 15, '_menu_item_object_id', '15'),
(20, 15, '_menu_item_object', 'custom'),
(21, 15, '_menu_item_target', ''),
(22, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 15, '_menu_item_xfn', ''),
(24, 15, '_menu_item_url', 'http://spds/'),
(25, 15, '_menu_item_orphaned', '1517513364'),
(26, 16, '_menu_item_type', 'post_type'),
(27, 16, '_menu_item_menu_item_parent', '0'),
(28, 16, '_menu_item_object_id', '12'),
(29, 16, '_menu_item_object', 'page'),
(30, 16, '_menu_item_target', ''),
(31, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 16, '_menu_item_xfn', ''),
(33, 16, '_menu_item_url', ''),
(34, 16, '_menu_item_orphaned', '1517513364'),
(35, 17, '_menu_item_type', 'post_type'),
(36, 17, '_menu_item_menu_item_parent', '0'),
(37, 17, '_menu_item_object_id', '13'),
(38, 17, '_menu_item_object', 'page'),
(39, 17, '_menu_item_target', ''),
(40, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 17, '_menu_item_xfn', ''),
(42, 17, '_menu_item_url', ''),
(43, 17, '_menu_item_orphaned', '1517513364'),
(44, 18, '_menu_item_type', 'post_type'),
(45, 18, '_menu_item_menu_item_parent', '0'),
(46, 18, '_menu_item_object_id', '14'),
(47, 18, '_menu_item_object', 'page'),
(48, 18, '_menu_item_target', ''),
(49, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 18, '_menu_item_xfn', ''),
(51, 18, '_menu_item_url', ''),
(52, 18, '_menu_item_orphaned', '1517513364'),
(53, 19, '_menu_item_type', 'post_type'),
(54, 19, '_menu_item_menu_item_parent', '0'),
(55, 19, '_menu_item_object_id', '2'),
(56, 19, '_menu_item_object', 'page'),
(57, 19, '_menu_item_target', ''),
(58, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 19, '_menu_item_xfn', ''),
(60, 19, '_menu_item_url', ''),
(61, 19, '_menu_item_orphaned', '1517513364'),
(62, 20, '_menu_item_type', 'post_type'),
(63, 20, '_menu_item_menu_item_parent', '0'),
(64, 20, '_menu_item_object_id', '11'),
(65, 20, '_menu_item_object', 'page'),
(66, 20, '_menu_item_target', ''),
(67, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 20, '_menu_item_xfn', ''),
(69, 20, '_menu_item_url', ''),
(70, 20, '_menu_item_orphaned', '1517513364'),
(71, 21, '_menu_item_type', 'custom'),
(72, 21, '_menu_item_menu_item_parent', '0'),
(73, 21, '_menu_item_object_id', '21'),
(74, 21, '_menu_item_object', 'custom'),
(75, 21, '_menu_item_target', ''),
(76, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 21, '_menu_item_xfn', ''),
(78, 21, '_menu_item_url', 'http://spds/'),
(79, 21, '_menu_item_orphaned', '1517576757'),
(80, 22, '_menu_item_type', 'post_type'),
(81, 22, '_menu_item_menu_item_parent', '0'),
(82, 22, '_menu_item_object_id', '12'),
(83, 22, '_menu_item_object', 'page'),
(84, 22, '_menu_item_target', ''),
(85, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 22, '_menu_item_xfn', ''),
(87, 22, '_menu_item_url', ''),
(88, 22, '_menu_item_orphaned', '1517576757'),
(89, 23, '_menu_item_type', 'post_type'),
(90, 23, '_menu_item_menu_item_parent', '0'),
(91, 23, '_menu_item_object_id', '13'),
(92, 23, '_menu_item_object', 'page'),
(93, 23, '_menu_item_target', ''),
(94, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 23, '_menu_item_xfn', ''),
(96, 23, '_menu_item_url', ''),
(97, 23, '_menu_item_orphaned', '1517576757'),
(98, 24, '_menu_item_type', 'post_type'),
(99, 24, '_menu_item_menu_item_parent', '0'),
(100, 24, '_menu_item_object_id', '14'),
(101, 24, '_menu_item_object', 'page'),
(102, 24, '_menu_item_target', ''),
(103, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 24, '_menu_item_xfn', ''),
(105, 24, '_menu_item_url', ''),
(106, 24, '_menu_item_orphaned', '1517576757'),
(107, 25, '_menu_item_type', 'post_type'),
(108, 25, '_menu_item_menu_item_parent', '0'),
(109, 25, '_menu_item_object_id', '2'),
(110, 25, '_menu_item_object', 'page'),
(111, 25, '_menu_item_target', ''),
(112, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 25, '_menu_item_xfn', ''),
(114, 25, '_menu_item_url', ''),
(115, 25, '_menu_item_orphaned', '1517576757'),
(116, 26, '_menu_item_type', 'post_type'),
(117, 26, '_menu_item_menu_item_parent', '0'),
(118, 26, '_menu_item_object_id', '11'),
(119, 26, '_menu_item_object', 'page'),
(120, 26, '_menu_item_target', ''),
(121, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 26, '_menu_item_xfn', ''),
(123, 26, '_menu_item_url', ''),
(124, 26, '_menu_item_orphaned', '1517576758'),
(125, 27, '_menu_item_type', 'custom'),
(126, 27, '_menu_item_menu_item_parent', '0'),
(127, 27, '_menu_item_object_id', '27'),
(128, 27, '_menu_item_object', 'custom'),
(129, 27, '_menu_item_target', ''),
(130, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 27, '_menu_item_xfn', ''),
(132, 27, '_menu_item_url', 'http://spds/'),
(133, 27, '_menu_item_orphaned', '1517578837'),
(134, 28, '_menu_item_type', 'post_type'),
(135, 28, '_menu_item_menu_item_parent', '0'),
(136, 28, '_menu_item_object_id', '12'),
(137, 28, '_menu_item_object', 'page'),
(138, 28, '_menu_item_target', ''),
(139, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 28, '_menu_item_xfn', ''),
(141, 28, '_menu_item_url', ''),
(142, 28, '_menu_item_orphaned', '1517578837'),
(143, 29, '_menu_item_type', 'post_type'),
(144, 29, '_menu_item_menu_item_parent', '0'),
(145, 29, '_menu_item_object_id', '13'),
(146, 29, '_menu_item_object', 'page'),
(147, 29, '_menu_item_target', ''),
(148, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 29, '_menu_item_xfn', ''),
(150, 29, '_menu_item_url', ''),
(151, 29, '_menu_item_orphaned', '1517578837'),
(152, 30, '_menu_item_type', 'post_type'),
(153, 30, '_menu_item_menu_item_parent', '0'),
(154, 30, '_menu_item_object_id', '14'),
(155, 30, '_menu_item_object', 'page'),
(156, 30, '_menu_item_target', ''),
(157, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 30, '_menu_item_xfn', ''),
(159, 30, '_menu_item_url', ''),
(160, 30, '_menu_item_orphaned', '1517578837'),
(161, 31, '_menu_item_type', 'post_type'),
(162, 31, '_menu_item_menu_item_parent', '0'),
(163, 31, '_menu_item_object_id', '2'),
(164, 31, '_menu_item_object', 'page'),
(165, 31, '_menu_item_target', ''),
(166, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 31, '_menu_item_xfn', ''),
(168, 31, '_menu_item_url', ''),
(169, 31, '_menu_item_orphaned', '1517578837'),
(170, 32, '_menu_item_type', 'post_type'),
(171, 32, '_menu_item_menu_item_parent', '0'),
(172, 32, '_menu_item_object_id', '11'),
(173, 32, '_menu_item_object', 'page'),
(174, 32, '_menu_item_target', ''),
(175, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(176, 32, '_menu_item_xfn', ''),
(177, 32, '_menu_item_url', ''),
(178, 32, '_menu_item_orphaned', '1517578837'),
(179, 33, '_menu_item_type', 'custom'),
(180, 33, '_menu_item_menu_item_parent', '0'),
(181, 33, '_menu_item_object_id', '33'),
(182, 33, '_menu_item_object', 'custom'),
(183, 33, '_menu_item_target', ''),
(184, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 33, '_menu_item_xfn', ''),
(186, 33, '_menu_item_url', 'http://spds/'),
(187, 33, '_menu_item_orphaned', '1517578890'),
(188, 34, '_menu_item_type', 'post_type'),
(189, 34, '_menu_item_menu_item_parent', '0'),
(190, 34, '_menu_item_object_id', '12'),
(191, 34, '_menu_item_object', 'page'),
(192, 34, '_menu_item_target', ''),
(193, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 34, '_menu_item_xfn', ''),
(195, 34, '_menu_item_url', ''),
(196, 34, '_menu_item_orphaned', '1517578890'),
(197, 35, '_menu_item_type', 'post_type'),
(198, 35, '_menu_item_menu_item_parent', '0'),
(199, 35, '_menu_item_object_id', '13'),
(200, 35, '_menu_item_object', 'page'),
(201, 35, '_menu_item_target', ''),
(202, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(203, 35, '_menu_item_xfn', ''),
(204, 35, '_menu_item_url', ''),
(205, 35, '_menu_item_orphaned', '1517578890'),
(206, 36, '_menu_item_type', 'post_type'),
(207, 36, '_menu_item_menu_item_parent', '0'),
(208, 36, '_menu_item_object_id', '14'),
(209, 36, '_menu_item_object', 'page'),
(210, 36, '_menu_item_target', ''),
(211, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 36, '_menu_item_xfn', ''),
(213, 36, '_menu_item_url', ''),
(214, 36, '_menu_item_orphaned', '1517578890'),
(215, 37, '_menu_item_type', 'post_type'),
(216, 37, '_menu_item_menu_item_parent', '0'),
(217, 37, '_menu_item_object_id', '2'),
(218, 37, '_menu_item_object', 'page'),
(219, 37, '_menu_item_target', ''),
(220, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(221, 37, '_menu_item_xfn', ''),
(222, 37, '_menu_item_url', ''),
(223, 37, '_menu_item_orphaned', '1517578890'),
(224, 38, '_menu_item_type', 'post_type'),
(225, 38, '_menu_item_menu_item_parent', '0'),
(226, 38, '_menu_item_object_id', '11'),
(227, 38, '_menu_item_object', 'page'),
(228, 38, '_menu_item_target', ''),
(229, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 38, '_menu_item_xfn', ''),
(231, 38, '_menu_item_url', ''),
(232, 38, '_menu_item_orphaned', '1517578890'),
(233, 39, '_menu_item_type', 'custom'),
(234, 39, '_menu_item_menu_item_parent', '0'),
(235, 39, '_menu_item_object_id', '39'),
(236, 39, '_menu_item_object', 'custom'),
(237, 39, '_menu_item_target', ''),
(238, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(239, 39, '_menu_item_xfn', ''),
(240, 39, '_menu_item_url', 'http://spds/'),
(241, 39, '_menu_item_orphaned', '1517578935'),
(242, 40, '_menu_item_type', 'post_type'),
(243, 40, '_menu_item_menu_item_parent', '0'),
(244, 40, '_menu_item_object_id', '12'),
(245, 40, '_menu_item_object', 'page'),
(246, 40, '_menu_item_target', ''),
(247, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(248, 40, '_menu_item_xfn', ''),
(249, 40, '_menu_item_url', ''),
(250, 40, '_menu_item_orphaned', '1517578935'),
(251, 41, '_menu_item_type', 'post_type'),
(252, 41, '_menu_item_menu_item_parent', '0'),
(253, 41, '_menu_item_object_id', '13'),
(254, 41, '_menu_item_object', 'page'),
(255, 41, '_menu_item_target', ''),
(256, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(257, 41, '_menu_item_xfn', ''),
(258, 41, '_menu_item_url', ''),
(259, 41, '_menu_item_orphaned', '1517578935'),
(260, 42, '_menu_item_type', 'post_type'),
(261, 42, '_menu_item_menu_item_parent', '0'),
(262, 42, '_menu_item_object_id', '14'),
(263, 42, '_menu_item_object', 'page'),
(264, 42, '_menu_item_target', ''),
(265, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(266, 42, '_menu_item_xfn', ''),
(267, 42, '_menu_item_url', ''),
(268, 42, '_menu_item_orphaned', '1517578935'),
(269, 43, '_menu_item_type', 'post_type'),
(270, 43, '_menu_item_menu_item_parent', '0'),
(271, 43, '_menu_item_object_id', '2'),
(272, 43, '_menu_item_object', 'page'),
(273, 43, '_menu_item_target', ''),
(274, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(275, 43, '_menu_item_xfn', ''),
(276, 43, '_menu_item_url', ''),
(277, 43, '_menu_item_orphaned', '1517578935'),
(278, 44, '_menu_item_type', 'post_type'),
(279, 44, '_menu_item_menu_item_parent', '0'),
(280, 44, '_menu_item_object_id', '11'),
(281, 44, '_menu_item_object', 'page'),
(282, 44, '_menu_item_target', ''),
(283, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(284, 44, '_menu_item_xfn', ''),
(285, 44, '_menu_item_url', ''),
(286, 44, '_menu_item_orphaned', '1517578935'),
(287, 45, '_edit_last', '1'),
(288, 45, '_edit_lock', '1520045853:1'),
(289, 46, '_wp_attached_file', '2018/02/slider01.png'),
(290, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:739;s:4:"file";s:20:"2018/02/slider01.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"slider01-300x154.png";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider01-768x394.png";s:5:"width";i:768;s:6:"height";i:394;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"slider01-1024x526.png";s:5:"width";i:1024;s:6:"height";i:526;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"slider01-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"slider01-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"slider01-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:12:"medium-thumb";a:4:{s:4:"file";s:20:"slider01-400x300.png";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(291, 45, '_thumbnail_id', '46'),
(292, 48, '_edit_last', '1'),
(293, 48, '_edit_lock', '1520212215:1'),
(294, 48, '_thumbnail_id', '46'),
(295, 49, '_edit_last', '1'),
(296, 49, 'field_5a74a7ef4836d', 'a:14:{s:3:"key";s:19:"field_5a74a7ef4836d";s:5:"label";s:12:"Pré Título";s:4:"name";s:10:"pre_titulo";s:4:"type";s:4:"text";s:12:"instructions";s:56:"Parte do título do Slider que será exibido em amarelo.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(297, 49, 'field_5a74abfd4836e', 'a:14:{s:3:"key";s:19:"field_5a74abfd4836e";s:5:"label";s:13:"Texto do link";s:4:"name";s:13:"texto_do_link";s:4:"type";s:4:"text";s:12:"instructions";s:46:"Título do botão que contém o link do slider";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(298, 49, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"sliders";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(299, 49, 'position', 'acf_after_title'),
(300, 49, 'layout', 'default'),
(301, 49, 'hide_on_screen', ''),
(302, 49, '_edit_lock', '1517676222:1'),
(303, 48, 'pre_titulo', 'cursos presenciais em'),
(304, 48, '_pre_titulo', 'field_5a74a7ef4836d'),
(305, 48, 'texto_do_link', 'Explore nossos cursos'),
(306, 48, '_texto_do_link', 'field_5a74abfd4836e'),
(316, 51, '_menu_item_type', 'custom'),
(317, 51, '_menu_item_menu_item_parent', '0'),
(318, 51, '_menu_item_object_id', '51'),
(319, 51, '_menu_item_object', 'custom'),
(320, 51, '_menu_item_target', ''),
(321, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(322, 51, '_menu_item_xfn', ''),
(323, 51, '_menu_item_url', 'http://#'),
(325, 52, '_menu_item_type', 'custom'),
(326, 52, '_menu_item_menu_item_parent', '0'),
(327, 52, '_menu_item_object_id', '52'),
(328, 52, '_menu_item_object', 'custom'),
(329, 52, '_menu_item_target', ''),
(330, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(331, 52, '_menu_item_xfn', ''),
(332, 52, '_menu_item_url', 'http://#'),
(334, 53, '_menu_item_type', 'custom'),
(335, 53, '_menu_item_menu_item_parent', '0'),
(336, 53, '_menu_item_object_id', '53'),
(337, 53, '_menu_item_object', 'custom'),
(338, 53, '_menu_item_target', ''),
(339, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(340, 53, '_menu_item_xfn', ''),
(341, 53, '_menu_item_url', 'http://#'),
(343, 54, '_menu_item_type', 'custom'),
(344, 54, '_menu_item_menu_item_parent', '0'),
(345, 54, '_menu_item_object_id', '54'),
(346, 54, '_menu_item_object', 'custom'),
(347, 54, '_menu_item_target', ''),
(348, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(349, 54, '_menu_item_xfn', ''),
(350, 54, '_menu_item_url', 'http://#'),
(352, 55, '_menu_item_type', 'custom'),
(353, 55, '_menu_item_menu_item_parent', '0'),
(354, 55, '_menu_item_object_id', '55'),
(355, 55, '_menu_item_object', 'custom'),
(356, 55, '_menu_item_target', ''),
(357, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(358, 55, '_menu_item_xfn', ''),
(359, 55, '_menu_item_url', 'http://#'),
(361, 56, '_menu_item_type', 'custom'),
(362, 56, '_menu_item_menu_item_parent', '0'),
(363, 56, '_menu_item_object_id', '56'),
(364, 56, '_menu_item_object', 'custom'),
(365, 56, '_menu_item_target', ''),
(366, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(367, 56, '_menu_item_xfn', ''),
(368, 56, '_menu_item_url', 'http://#'),
(370, 57, '_menu_item_type', 'custom'),
(371, 57, '_menu_item_menu_item_parent', '0'),
(372, 57, '_menu_item_object_id', '57'),
(373, 57, '_menu_item_object', 'custom'),
(374, 57, '_menu_item_target', ''),
(375, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(376, 57, '_menu_item_xfn', ''),
(377, 57, '_menu_item_url', 'http://#'),
(379, 58, '_edit_last', '1'),
(380, 58, '_edit_lock', '1517833354:1'),
(381, 59, '_wp_attached_file', '2018/02/sobre.jpg'),
(382, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:550;s:4:"file";s:17:"2018/02/sobre.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"sobre-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"sobre-300x275.jpg";s:5:"width";i:300;s:6:"height";i:275;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"sobre-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"sobre-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"sobre-600x550.jpg";s:5:"width";i:600;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-thumb";a:4:{s:4:"file";s:17:"sobre-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(383, 58, '_thumbnail_id', '59'),
(384, 58, '_wp_page_template', 'default'),
(385, 61, '_menu_item_type', 'post_type'),
(386, 61, '_menu_item_menu_item_parent', '0'),
(387, 61, '_menu_item_object_id', '58'),
(388, 61, '_menu_item_object', 'page'),
(389, 61, '_menu_item_target', ''),
(390, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(391, 61, '_menu_item_xfn', ''),
(392, 61, '_menu_item_url', ''),
(393, 63, '_menu_item_type', 'custom'),
(394, 63, '_menu_item_menu_item_parent', '0'),
(395, 63, '_menu_item_object_id', '63'),
(396, 63, '_menu_item_object', 'custom'),
(397, 63, '_menu_item_target', ''),
(398, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(399, 63, '_menu_item_xfn', ''),
(400, 63, '_menu_item_url', 'http://#'),
(402, 64, '_menu_item_type', 'custom'),
(403, 64, '_menu_item_menu_item_parent', '0'),
(404, 64, '_menu_item_object_id', '64'),
(405, 64, '_menu_item_object', 'custom'),
(406, 64, '_menu_item_target', ''),
(407, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(408, 64, '_menu_item_xfn', ''),
(409, 64, '_menu_item_url', 'http://#'),
(411, 65, '_menu_item_type', 'custom'),
(412, 65, '_menu_item_menu_item_parent', '0'),
(413, 65, '_menu_item_object_id', '65'),
(414, 65, '_menu_item_object', 'custom'),
(415, 65, '_menu_item_target', ''),
(416, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(417, 65, '_menu_item_xfn', ''),
(418, 65, '_menu_item_url', 'http://#'),
(420, 66, '_menu_item_type', 'custom'),
(421, 66, '_menu_item_menu_item_parent', '0'),
(422, 66, '_menu_item_object_id', '66'),
(423, 66, '_menu_item_object', 'custom'),
(424, 66, '_menu_item_target', ''),
(425, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(426, 66, '_menu_item_xfn', ''),
(427, 66, '_menu_item_url', 'http://#'),
(429, 67, '_menu_item_type', 'custom'),
(430, 67, '_menu_item_menu_item_parent', '0'),
(431, 67, '_menu_item_object_id', '67'),
(432, 67, '_menu_item_object', 'custom'),
(433, 67, '_menu_item_target', ''),
(434, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(435, 67, '_menu_item_xfn', ''),
(436, 67, '_menu_item_url', 'http://#'),
(438, 68, '_menu_item_type', 'custom'),
(439, 68, '_menu_item_menu_item_parent', '0'),
(440, 68, '_menu_item_object_id', '68'),
(441, 68, '_menu_item_object', 'custom'),
(442, 68, '_menu_item_target', ''),
(443, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(444, 68, '_menu_item_xfn', ''),
(445, 68, '_menu_item_url', 'http://#'),
(447, 69, '_menu_item_type', 'custom'),
(448, 69, '_menu_item_menu_item_parent', '0'),
(449, 69, '_menu_item_object_id', '69'),
(450, 69, '_menu_item_object', 'custom'),
(451, 69, '_menu_item_target', ''),
(452, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(453, 69, '_menu_item_xfn', ''),
(454, 69, '_menu_item_url', 'http://#'),
(456, 70, '_menu_item_type', 'custom'),
(457, 70, '_menu_item_menu_item_parent', '0'),
(458, 70, '_menu_item_object_id', '70'),
(459, 70, '_menu_item_object', 'custom'),
(460, 70, '_menu_item_target', ''),
(461, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(462, 70, '_menu_item_xfn', ''),
(463, 70, '_menu_item_url', 'http://#'),
(465, 71, '_menu_item_type', 'custom'),
(466, 71, '_menu_item_menu_item_parent', '0'),
(467, 71, '_menu_item_object_id', '71'),
(468, 71, '_menu_item_object', 'custom'),
(469, 71, '_menu_item_target', ''),
(470, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(471, 71, '_menu_item_xfn', ''),
(472, 71, '_menu_item_url', 'http://#'),
(474, 72, '_menu_item_type', 'custom'),
(475, 72, '_menu_item_menu_item_parent', '0'),
(476, 72, '_menu_item_object_id', '72'),
(477, 72, '_menu_item_object', 'custom'),
(478, 72, '_menu_item_target', ''),
(479, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(480, 72, '_menu_item_xfn', ''),
(481, 72, '_menu_item_url', 'http://#'),
(483, 73, '_menu_item_type', 'custom'),
(484, 73, '_menu_item_menu_item_parent', '0'),
(485, 73, '_menu_item_object_id', '73'),
(486, 73, '_menu_item_object', 'custom'),
(487, 73, '_menu_item_target', ''),
(488, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(489, 73, '_menu_item_xfn', ''),
(490, 73, '_menu_item_url', 'http://#'),
(492, 74, '_menu_item_type', 'custom'),
(493, 74, '_menu_item_menu_item_parent', '0'),
(494, 74, '_menu_item_object_id', '74'),
(495, 74, '_menu_item_object', 'custom'),
(496, 74, '_menu_item_target', ''),
(497, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(498, 74, '_menu_item_xfn', ''),
(499, 74, '_menu_item_url', 'http://#'),
(501, 75, '_menu_item_type', 'custom'),
(502, 75, '_menu_item_menu_item_parent', '0'),
(503, 75, '_menu_item_object_id', '75'),
(504, 75, '_menu_item_object', 'custom'),
(505, 75, '_menu_item_target', ''),
(506, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(507, 75, '_menu_item_xfn', ''),
(508, 75, '_menu_item_url', 'http://#'),
(510, 76, '_menu_item_type', 'custom'),
(511, 76, '_menu_item_menu_item_parent', '0'),
(512, 76, '_menu_item_object_id', '76'),
(513, 76, '_menu_item_object', 'custom'),
(514, 76, '_menu_item_target', ''),
(515, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(516, 76, '_menu_item_xfn', ''),
(517, 76, '_menu_item_url', 'http://#'),
(519, 77, '_menu_item_type', 'custom'),
(520, 77, '_menu_item_menu_item_parent', '0'),
(521, 77, '_menu_item_object_id', '77'),
(522, 77, '_menu_item_object', 'custom'),
(523, 77, '_menu_item_target', ''),
(524, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(525, 77, '_menu_item_xfn', ''),
(526, 77, '_menu_item_url', 'http://#'),
(528, 78, '_menu_item_type', 'custom'),
(529, 78, '_menu_item_menu_item_parent', '0'),
(530, 78, '_menu_item_object_id', '78'),
(531, 78, '_menu_item_object', 'custom'),
(532, 78, '_menu_item_target', ''),
(533, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(534, 78, '_menu_item_xfn', ''),
(535, 78, '_menu_item_url', 'http://#'),
(537, 79, '_menu_item_type', 'custom'),
(538, 79, '_menu_item_menu_item_parent', '0'),
(539, 79, '_menu_item_object_id', '79'),
(540, 79, '_menu_item_object', 'custom'),
(541, 79, '_menu_item_target', ''),
(542, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(543, 79, '_menu_item_xfn', ''),
(544, 79, '_menu_item_url', 'http://#'),
(546, 80, '_menu_item_type', 'custom'),
(547, 80, '_menu_item_menu_item_parent', '0'),
(548, 80, '_menu_item_object_id', '80'),
(549, 80, '_menu_item_object', 'custom'),
(550, 80, '_menu_item_target', ''),
(551, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(552, 80, '_menu_item_xfn', ''),
(553, 80, '_menu_item_url', 'http://#'),
(555, 81, '_menu_item_type', 'custom'),
(556, 81, '_menu_item_menu_item_parent', '0'),
(557, 81, '_menu_item_object_id', '81'),
(558, 81, '_menu_item_object', 'custom'),
(559, 81, '_menu_item_target', ''),
(560, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(561, 81, '_menu_item_xfn', ''),
(562, 81, '_menu_item_url', 'http://#'),
(564, 82, '_menu_item_type', 'custom'),
(565, 82, '_menu_item_menu_item_parent', '54'),
(566, 82, '_menu_item_object_id', '82'),
(567, 82, '_menu_item_object', 'custom'),
(568, 82, '_menu_item_target', ''),
(569, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(570, 82, '_menu_item_xfn', ''),
(571, 82, '_menu_item_url', 'http://#'),
(573, 83, '_menu_item_type', 'custom'),
(574, 83, '_menu_item_menu_item_parent', '54'),
(575, 83, '_menu_item_object_id', '83'),
(576, 83, '_menu_item_object', 'custom'),
(577, 83, '_menu_item_target', ''),
(578, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(579, 83, '_menu_item_xfn', ''),
(580, 83, '_menu_item_url', 'http://#'),
(582, 84, '_menu_item_type', 'custom'),
(583, 84, '_menu_item_menu_item_parent', '54'),
(584, 84, '_menu_item_object_id', '84'),
(585, 84, '_menu_item_object', 'custom'),
(586, 84, '_menu_item_target', ''),
(587, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(588, 84, '_menu_item_xfn', ''),
(589, 84, '_menu_item_url', 'http://#'),
(591, 85, '_menu_item_type', 'custom'),
(592, 85, '_menu_item_menu_item_parent', '53'),
(593, 85, '_menu_item_object_id', '85'),
(594, 85, '_menu_item_object', 'custom'),
(595, 85, '_menu_item_target', ''),
(596, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(597, 85, '_menu_item_xfn', ''),
(598, 85, '_menu_item_url', 'http://#'),
(600, 86, '_menu_item_type', 'custom'),
(601, 86, '_menu_item_menu_item_parent', '53'),
(602, 86, '_menu_item_object_id', '86'),
(603, 86, '_menu_item_object', 'custom'),
(604, 86, '_menu_item_target', ''),
(605, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(606, 86, '_menu_item_xfn', ''),
(607, 86, '_menu_item_url', 'http://#'),
(609, 87, '_menu_item_type', 'custom'),
(610, 87, '_menu_item_menu_item_parent', '53'),
(611, 87, '_menu_item_object_id', '87'),
(612, 87, '_menu_item_object', 'custom'),
(613, 87, '_menu_item_target', ''),
(614, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(615, 87, '_menu_item_xfn', ''),
(616, 87, '_menu_item_url', 'http://#'),
(618, 88, '_menu_item_type', 'custom'),
(619, 88, '_menu_item_menu_item_parent', '61'),
(620, 88, '_menu_item_object_id', '88'),
(621, 88, '_menu_item_object', 'custom'),
(622, 88, '_menu_item_target', ''),
(623, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(624, 88, '_menu_item_xfn', ''),
(625, 88, '_menu_item_url', 'http://#'),
(627, 89, '_menu_item_type', 'custom'),
(628, 89, '_menu_item_menu_item_parent', '61'),
(629, 89, '_menu_item_object_id', '89'),
(630, 89, '_menu_item_object', 'custom'),
(631, 89, '_menu_item_target', ''),
(632, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(633, 89, '_menu_item_xfn', ''),
(634, 89, '_menu_item_url', 'http://#'),
(636, 90, '_menu_item_type', 'custom'),
(637, 90, '_menu_item_menu_item_parent', '61'),
(638, 90, '_menu_item_object_id', '90'),
(639, 90, '_menu_item_object', 'custom'),
(640, 90, '_menu_item_target', ''),
(641, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(642, 90, '_menu_item_xfn', ''),
(643, 90, '_menu_item_url', 'http://#'),
(646, 93, '_edit_last', '1'),
(647, 93, '_edit_lock', '1520007147:1'),
(651, 95, '_edit_last', '1'),
(652, 95, 'field_5a957e1299df9', 'a:14:{s:3:"key";s:19:"field_5a957e1299df9";s:5:"label";s:10:"Ocupação";s:4:"name";s:8:"ocupacao";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(653, 95, 'field_5a957e2899dfa', 'a:13:{s:3:"key";s:19:"field_5a957e2899dfa";s:5:"label";s:40:"Descrição para listagem de professores";s:4:"name";s:18:"descricao_listagem";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(654, 95, 'field_5a957e6699dfb', 'a:11:{s:3:"key";s:19:"field_5a957e6699dfb";s:5:"label";s:24:"Imagem de capa do perfil";s:4:"name";s:14:"capa_do_perfil";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(655, 95, 'field_5a957ed899dfd', 'a:14:{s:3:"key";s:19:"field_5a957ed899dfd";s:5:"label";s:6:"E-mail";s:4:"name";s:6:"e-mail";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(656, 95, 'field_5a957e9299dfc', 'a:14:{s:3:"key";s:19:"field_5a957e9299dfc";s:5:"label";s:8:"LinkedIn";s:4:"name";s:8:"linkedin";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(657, 95, 'field_5a957ee499dfe', 'a:14:{s:3:"key";s:19:"field_5a957ee499dfe";s:5:"label";s:8:"Facebook";s:4:"name";s:8:"facebook";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(658, 95, 'field_5a957eef99dff', 'a:14:{s:3:"key";s:19:"field_5a957eef99dff";s:5:"label";s:7:"Twitter";s:4:"name";s:7:"twitter";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(659, 95, 'field_5a957f0199e00', 'a:14:{s:3:"key";s:19:"field_5a957f0199e00";s:5:"label";s:7:"Youtube";s:4:"name";s:7:"youtube";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(660, 95, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"professores";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(661, 95, 'position', 'acf_after_title'),
(662, 95, 'layout', 'default'),
(663, 95, 'hide_on_screen', ''),
(664, 95, '_edit_lock', '1519873139:1'),
(665, 96, '_wp_attached_file', '2018/02/capa_lucas.jpg'),
(666, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:195;s:4:"file";s:22:"2018/02/capa_lucas.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"capa_lucas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"capa_lucas-300x41.jpg";s:5:"width";i:300;s:6:"height";i:41;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"capa_lucas-768x104.jpg";s:5:"width";i:768;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"capa_lucas-1024x139.jpg";s:5:"width";i:1024;s:6:"height";i:139;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-thumb";a:4:{s:4:"file";s:22:"capa_lucas-400x195.jpg";s:5:"width";i:400;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:4:{s:4:"file";s:22:"capa_lucas-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"capa_lucas-600x81.jpg";s:5:"width";i:600;s:6:"height";i:81;s:9:"mime-type";s:10:"image/jpeg";}s:24:"woocommerce_thumbnail_2x";a:4:{s:4:"file";s:22:"capa_lucas-600x195.jpg";s:5:"width";i:600;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"capa_lucas-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"capa_lucas-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"capa_lucas-600x81.jpg";s:5:"width";i:600;s:6:"height";i:81;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(667, 93, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(668, 93, '_ocupacao', 'field_5a957e1299df9'),
(669, 93, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(670, 93, '_descricao_listagem', 'field_5a957e2899dfa'),
(671, 93, 'capa_do_perfil', '96'),
(672, 93, '_capa_do_perfil', 'field_5a957e6699dfb'),
(673, 93, 'e-mail', 'lucas@dbs.com.br'),
(674, 93, '_e-mail', 'field_5a957ed899dfd'),
(675, 93, 'linkedin', 'https://www.facebook.com/'),
(676, 93, '_linkedin', 'field_5a957e9299dfc'),
(677, 93, 'facebook', 'https://www.facebook.com/'),
(678, 93, '_facebook', 'field_5a957ee499dfe'),
(679, 93, 'twitter', 'https://www.facebook.com/'),
(680, 93, '_twitter', 'field_5a957eef99dff'),
(681, 93, 'youtube', 'https://www.facebook.com/'),
(682, 93, '_youtube', 'field_5a957f0199e00'),
(683, 97, '_wc_review_count', '0'),
(684, 97, '_wc_rating_count', 'a:0:{}'),
(685, 97, '_wc_average_rating', '0'),
(686, 97, '_edit_last', '1'),
(687, 97, '_edit_lock', '1520006446:1'),
(688, 98, '_wp_attached_file', '2018/02/curso_ecommerce.jpg'),
(689, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:479;s:4:"file";s:27:"2018/02/curso_ecommerce.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"curso_ecommerce-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"curso_ecommerce-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-thumb";a:4:{s:4:"file";s:27:"curso_ecommerce-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"curso_ecommerce-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"curso_ecommerce-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"curso_ecommerce-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"curso_ecommerce-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(690, 97, '_thumbnail_id', '98'),
(691, 97, '_sku', ''),
(692, 97, '_regular_price', '750'),
(693, 97, '_sale_price', ''),
(694, 97, '_sale_price_dates_from', ''),
(695, 97, '_sale_price_dates_to', ''),
(696, 97, 'total_sales', '0'),
(697, 97, '_tax_status', 'taxable'),
(698, 97, '_tax_class', ''),
(699, 97, '_manage_stock', 'no'),
(700, 97, '_backorders', 'no'),
(701, 97, '_sold_individually', 'no'),
(702, 97, '_weight', ''),
(703, 97, '_length', ''),
(704, 97, '_width', ''),
(705, 97, '_height', ''),
(706, 97, '_upsell_ids', 'a:0:{}'),
(707, 97, '_crosssell_ids', 'a:0:{}'),
(708, 97, '_purchase_note', ''),
(709, 97, '_default_attributes', 'a:0:{}'),
(710, 97, '_virtual', 'no'),
(711, 97, '_downloadable', 'no'),
(712, 97, '_product_image_gallery', ''),
(713, 97, '_download_limit', '-1'),
(714, 97, '_download_expiry', '-1'),
(715, 97, '_stock', NULL),
(716, 97, '_stock_status', 'instock'),
(717, 97, '_product_version', '3.3.3'),
(718, 97, '_price', '750'),
(719, 97, '_product_attributes', 'a:1:{s:21:"pa_nivel-conhecimento";a:6:{s:4:"name";s:21:"pa_nivel-conhecimento";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(720, 112, '_edit_last', '1'),
(721, 112, '_edit_lock', '1519957437:1'),
(722, 97, 'conteudo-e-objetivos_0_modulo', ''),
(723, 97, '_conteudo-e-objetivos_0_modulo', 'field_5a976ebee62b9'),
(724, 97, 'conteudo-e-objetivos_0_descricao_do_modulo', ''),
(725, 97, '_conteudo-e-objetivos_0_descricao_do_modulo', 'field_5a976f14e62ba'),
(726, 97, 'conteudo-e-objetivos', '1'),
(727, 97, '_conteudo-e-objetivos', 'field_5a976e46e62b8'),
(728, 97, 'duracao', '8hs (em 2 dias)'),
(729, 97, '_duracao', 'field_5a9866b07c32a'),
(730, 97, 'proxima_turma', '17, 18 de Set.'),
(731, 97, '_proxima_turma', 'field_5a9866e77c32b'),
(732, 119, '_sku', ''),
(733, 119, '_regular_price', '750'),
(734, 119, '_sale_price', ''),
(735, 119, '_sale_price_dates_from', ''),
(736, 119, '_sale_price_dates_to', ''),
(737, 119, 'total_sales', '0'),
(738, 119, '_tax_status', 'taxable'),
(739, 119, '_tax_class', ''),
(740, 119, '_manage_stock', 'no'),
(741, 119, '_backorders', 'no'),
(742, 119, '_sold_individually', 'no'),
(743, 119, '_weight', ''),
(744, 119, '_length', ''),
(745, 119, '_width', ''),
(746, 119, '_height', ''),
(747, 119, '_upsell_ids', 'a:0:{}'),
(748, 119, '_crosssell_ids', 'a:0:{}'),
(749, 119, '_purchase_note', ''),
(750, 119, '_default_attributes', 'a:0:{}'),
(751, 119, '_virtual', 'no'),
(752, 119, '_downloadable', 'no'),
(753, 119, '_product_image_gallery', ''),
(754, 119, '_download_limit', '-1'),
(755, 119, '_download_expiry', '-1'),
(756, 119, '_thumbnail_id', '98'),
(757, 119, '_stock', NULL),
(758, 119, '_stock_status', 'instock'),
(759, 119, '_wc_average_rating', '0'),
(760, 119, '_wc_rating_count', 'a:0:{}'),
(761, 119, '_wc_review_count', '0'),
(762, 119, '_downloadable_files', 'a:0:{}'),
(763, 119, '_product_attributes', 'a:1:{s:21:"pa_nivel-conhecimento";a:6:{s:4:"name";s:21:"pa_nivel-conhecimento";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(764, 119, '_product_version', '3.3.3'),
(765, 119, '_price', '750'),
(766, 119, 'conteudo-e-objetivos_0_modulo', ''),
(767, 119, '_conteudo-e-objetivos_0_modulo', 'field_5a976ebee62b9'),
(768, 119, 'conteudo-e-objetivos_0_descricao_do_modulo', ''),
(769, 119, '_conteudo-e-objetivos_0_descricao_do_modulo', 'field_5a976f14e62ba'),
(770, 119, 'conteudo-e-objetivos', '1'),
(771, 119, '_conteudo-e-objetivos', 'field_5a976e46e62b8'),
(772, 119, 'duracao', '8hs (em 2 dias)'),
(773, 119, '_duracao', 'field_5a9866b07c32a'),
(774, 119, 'proxima_turma', '17, 18 de Set.'),
(775, 119, '_proxima_turma', 'field_5a9866e77c32b'),
(776, 119, '_edit_lock', '1519939365:1'),
(777, 119, '_edit_last', '1'),
(778, 120, '_sku', ''),
(779, 120, '_regular_price', '750'),
(780, 120, '_sale_price', ''),
(781, 120, '_sale_price_dates_from', ''),
(782, 120, '_sale_price_dates_to', ''),
(783, 120, 'total_sales', '0'),
(784, 120, '_tax_status', 'taxable'),
(785, 120, '_tax_class', ''),
(786, 120, '_manage_stock', 'no'),
(787, 120, '_backorders', 'no'),
(788, 120, '_sold_individually', 'no'),
(789, 120, '_weight', ''),
(790, 120, '_length', ''),
(791, 120, '_width', ''),
(792, 120, '_height', ''),
(793, 120, '_upsell_ids', 'a:0:{}'),
(794, 120, '_crosssell_ids', 'a:0:{}'),
(795, 120, '_purchase_note', ''),
(796, 120, '_default_attributes', 'a:0:{}'),
(797, 120, '_virtual', 'no'),
(798, 120, '_downloadable', 'no'),
(799, 120, '_product_image_gallery', ''),
(800, 120, '_download_limit', '-1'),
(801, 120, '_download_expiry', '-1'),
(802, 120, '_thumbnail_id', '98'),
(803, 120, '_stock', NULL),
(804, 120, '_stock_status', 'instock'),
(805, 120, '_wc_average_rating', '0'),
(806, 120, '_wc_rating_count', 'a:0:{}'),
(807, 120, '_wc_review_count', '0'),
(808, 120, '_downloadable_files', 'a:0:{}'),
(809, 120, '_product_attributes', 'a:1:{s:21:"pa_nivel-conhecimento";a:6:{s:4:"name";s:21:"pa_nivel-conhecimento";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(810, 120, '_product_version', '3.3.3'),
(811, 120, '_price', '750'),
(812, 120, 'conteudo-e-objetivos_0_modulo', ''),
(813, 120, '_conteudo-e-objetivos_0_modulo', 'field_5a976ebee62b9'),
(814, 120, 'conteudo-e-objetivos_0_descricao_do_modulo', ''),
(815, 120, '_conteudo-e-objetivos_0_descricao_do_modulo', 'field_5a976f14e62ba'),
(816, 120, 'conteudo-e-objetivos', '1'),
(817, 120, '_conteudo-e-objetivos', 'field_5a976e46e62b8'),
(818, 120, 'duracao', '8hs (em 2 dias)'),
(819, 120, '_duracao', 'field_5a9866b07c32a'),
(820, 120, 'proxima_turma', '17, 18 de Set.'),
(821, 120, '_proxima_turma', 'field_5a9866e77c32b'),
(822, 120, '_edit_lock', '1519957640:1'),
(823, 120, '_edit_last', '1'),
(827, 121, '_edit_last', '1'),
(828, 121, '_edit_lock', '1520009066:1'),
(829, 122, '_wp_attached_file', '2018/03/Ana.jpg'),
(830, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:442;s:6:"height";i:443;s:4:"file";s:15:"2018/03/Ana.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"Ana-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"Ana-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-thumb";a:4:{s:4:"file";s:15:"Ana-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"Ana-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"Ana-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"Ana-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"Ana-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(831, 121, '_thumbnail_id', '122'),
(832, 121, 'ocupacao', 'Sócio-diretora & Professora'),
(833, 121, '_ocupacao', 'field_5a957e1299df9'),
(834, 121, 'descricao_listagem', 'Profissional com vasta experiência em marketing digital, com passagens por sites de e-commerce como o UNIKO, por departamentos de marketing tradicionais (CI - Central de intercâmbio) e por agências consagradas como a F.biz.'),
(835, 121, '_descricao_listagem', 'field_5a957e2899dfa'),
(836, 121, 'capa_do_perfil', '96'),
(837, 121, '_capa_do_perfil', 'field_5a957e6699dfb'),
(838, 121, 'e-mail', 'ana@email.com'),
(839, 121, '_e-mail', 'field_5a957ed899dfd'),
(840, 121, 'linkedin', 'https://www.facebook.com/'),
(841, 121, '_linkedin', 'field_5a957e9299dfc'),
(842, 121, 'facebook', 'https://www.facebook.com/'),
(843, 121, '_facebook', 'field_5a957ee499dfe'),
(844, 121, 'twitter', 'https://www.facebook.com/'),
(845, 121, '_twitter', 'field_5a957eef99dff'),
(846, 121, 'youtube', 'https://www.facebook.com/'),
(847, 121, '_youtube', 'field_5a957f0199e00'),
(848, 103, '_edit_lock', '1520024365:1'),
(849, 103, '_edit_last', '1'),
(850, 121, 'titulo', 'professora'),
(851, 121, '_titulo', 'field_5a98b67522f75'),
(852, 93, 'titulo', 'professor'),
(853, 93, '_titulo', 'field_5a98b67522f75'),
(854, 124, '_wp_attached_file', '2018/02/Lucas.jpg'),
(855, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:17:"2018/02/Lucas.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Lucas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"Lucas-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-thumb";a:4:{s:4:"file";s:17:"Lucas-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:17:"Lucas-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"Lucas-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"Lucas-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"Lucas-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(856, 93, '_thumbnail_id', '124'),
(857, 121, 'lideranca', 'a:1:{i:0;s:3:"Sim";}'),
(858, 121, '_lideranca', 'field_5a98c8205718d'),
(859, 93, 'lideranca', 'Sim'),
(860, 93, '_lideranca', 'field_5a98c8205718d'),
(861, 127, '_edit_last', '1'),
(862, 127, '_edit_lock', '1520009067:1'),
(863, 127, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(864, 127, '_ocupacao', 'field_5a957e1299df9'),
(865, 127, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(866, 127, '_descricao_listagem', 'field_5a957e2899dfa'),
(867, 127, 'capa_do_perfil', '96'),
(868, 127, '_capa_do_perfil', 'field_5a957e6699dfb'),
(869, 127, 'e-mail', 'lucas@dbs.com.br'),
(870, 127, '_e-mail', 'field_5a957ed899dfd'),
(871, 127, 'linkedin', 'https://www.facebook.com/'),
(872, 127, '_linkedin', 'field_5a957e9299dfc'),
(873, 127, 'facebook', 'https://www.facebook.com/'),
(874, 127, '_facebook', 'field_5a957ee499dfe'),
(875, 127, 'twitter', 'https://www.facebook.com/'),
(876, 127, '_twitter', 'field_5a957eef99dff'),
(877, 127, 'youtube', 'https://www.facebook.com/'),
(878, 127, '_youtube', 'field_5a957f0199e00'),
(879, 127, 'titulo', 'professor'),
(880, 127, '_titulo', 'field_5a98b67522f75'),
(881, 127, '_thumbnail_id', '124'),
(882, 127, 'lideranca', ''),
(883, 127, '_lideranca', 'field_5a98c8205718d'),
(892, 128, '_edit_last', '1'),
(893, 128, '_edit_lock', '1520009870:1'),
(894, 128, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(895, 128, '_ocupacao', 'field_5a957e1299df9');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(896, 128, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(897, 128, '_descricao_listagem', 'field_5a957e2899dfa'),
(898, 128, 'capa_do_perfil', '96'),
(899, 128, '_capa_do_perfil', 'field_5a957e6699dfb'),
(900, 128, 'e-mail', 'lucas@dbs.com.br'),
(901, 128, '_e-mail', 'field_5a957ed899dfd'),
(902, 128, 'linkedin', 'https://www.facebook.com/'),
(903, 128, '_linkedin', 'field_5a957e9299dfc'),
(904, 128, 'facebook', 'https://www.facebook.com/'),
(905, 128, '_facebook', 'field_5a957ee499dfe'),
(906, 128, 'twitter', 'https://www.facebook.com/'),
(907, 128, '_twitter', 'field_5a957eef99dff'),
(908, 128, 'youtube', 'https://www.facebook.com/'),
(909, 128, '_youtube', 'field_5a957f0199e00'),
(910, 128, 'titulo', 'professor'),
(911, 128, '_titulo', 'field_5a98b67522f75'),
(912, 128, '_thumbnail_id', '124'),
(913, 128, 'lideranca', ''),
(914, 128, '_lideranca', 'field_5a98c8205718d'),
(923, 129, '_edit_last', '1'),
(924, 129, '_edit_lock', '1520009636:1'),
(925, 129, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(926, 129, '_ocupacao', 'field_5a957e1299df9'),
(927, 129, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(928, 129, '_descricao_listagem', 'field_5a957e2899dfa'),
(929, 129, 'capa_do_perfil', '96'),
(930, 129, '_capa_do_perfil', 'field_5a957e6699dfb'),
(931, 129, 'e-mail', 'lucas@dbs.com.br'),
(932, 129, '_e-mail', 'field_5a957ed899dfd'),
(933, 129, 'linkedin', 'https://www.facebook.com/'),
(934, 129, '_linkedin', 'field_5a957e9299dfc'),
(935, 129, 'facebook', 'https://www.facebook.com/'),
(936, 129, '_facebook', 'field_5a957ee499dfe'),
(937, 129, 'twitter', 'https://www.facebook.com/'),
(938, 129, '_twitter', 'field_5a957eef99dff'),
(939, 129, 'youtube', 'https://www.facebook.com/'),
(940, 129, '_youtube', 'field_5a957f0199e00'),
(941, 129, 'titulo', 'professor'),
(942, 129, '_titulo', 'field_5a98b67522f75'),
(943, 129, '_thumbnail_id', '124'),
(944, 129, 'lideranca', ''),
(945, 129, '_lideranca', 'field_5a98c8205718d'),
(954, 130, '_edit_last', '1'),
(955, 130, '_edit_lock', '1520009880:1'),
(956, 130, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(957, 130, '_ocupacao', 'field_5a957e1299df9'),
(958, 130, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(959, 130, '_descricao_listagem', 'field_5a957e2899dfa'),
(960, 130, 'capa_do_perfil', '96'),
(961, 130, '_capa_do_perfil', 'field_5a957e6699dfb'),
(962, 130, 'e-mail', 'lucas@dbs.com.br'),
(963, 130, '_e-mail', 'field_5a957ed899dfd'),
(964, 130, 'linkedin', 'https://www.facebook.com/'),
(965, 130, '_linkedin', 'field_5a957e9299dfc'),
(966, 130, 'facebook', 'https://www.facebook.com/'),
(967, 130, '_facebook', 'field_5a957ee499dfe'),
(968, 130, 'twitter', 'https://www.facebook.com/'),
(969, 130, '_twitter', 'field_5a957eef99dff'),
(970, 130, 'youtube', 'https://www.facebook.com/'),
(971, 130, '_youtube', 'field_5a957f0199e00'),
(972, 130, 'titulo', 'professor'),
(973, 130, '_titulo', 'field_5a98b67522f75'),
(974, 130, '_thumbnail_id', '124'),
(975, 130, 'lideranca', ''),
(976, 130, '_lideranca', 'field_5a98c8205718d'),
(985, 131, '_edit_last', '1'),
(986, 131, '_edit_lock', '1520010453:1'),
(987, 131, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(988, 131, '_ocupacao', 'field_5a957e1299df9'),
(989, 131, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(990, 131, '_descricao_listagem', 'field_5a957e2899dfa'),
(991, 131, 'capa_do_perfil', '96'),
(992, 131, '_capa_do_perfil', 'field_5a957e6699dfb'),
(993, 131, 'e-mail', 'lucas@dbs.com.br'),
(994, 131, '_e-mail', 'field_5a957ed899dfd'),
(995, 131, 'linkedin', 'https://www.facebook.com/'),
(996, 131, '_linkedin', 'field_5a957e9299dfc'),
(997, 131, 'facebook', 'https://www.facebook.com/'),
(998, 131, '_facebook', 'field_5a957ee499dfe'),
(999, 131, 'twitter', 'https://www.facebook.com/'),
(1000, 131, '_twitter', 'field_5a957eef99dff'),
(1001, 131, 'youtube', 'https://www.facebook.com/'),
(1002, 131, '_youtube', 'field_5a957f0199e00'),
(1003, 131, 'titulo', 'professor'),
(1004, 131, '_titulo', 'field_5a98b67522f75'),
(1005, 131, '_thumbnail_id', '124'),
(1006, 131, 'lideranca', ''),
(1007, 131, '_lideranca', 'field_5a98c8205718d'),
(1016, 132, '_edit_last', '1'),
(1017, 132, '_edit_lock', '1520010452:1'),
(1018, 132, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(1019, 132, '_ocupacao', 'field_5a957e1299df9'),
(1020, 132, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(1021, 132, '_descricao_listagem', 'field_5a957e2899dfa'),
(1022, 132, 'capa_do_perfil', '96'),
(1023, 132, '_capa_do_perfil', 'field_5a957e6699dfb'),
(1024, 132, 'e-mail', 'lucas@dbs.com.br'),
(1025, 132, '_e-mail', 'field_5a957ed899dfd'),
(1026, 132, 'linkedin', 'https://www.facebook.com/'),
(1027, 132, '_linkedin', 'field_5a957e9299dfc'),
(1028, 132, 'facebook', 'https://www.facebook.com/'),
(1029, 132, '_facebook', 'field_5a957ee499dfe'),
(1030, 132, 'twitter', 'https://www.facebook.com/'),
(1031, 132, '_twitter', 'field_5a957eef99dff'),
(1032, 132, 'youtube', 'https://www.facebook.com/'),
(1033, 132, '_youtube', 'field_5a957f0199e00'),
(1034, 132, 'titulo', 'professor'),
(1035, 132, '_titulo', 'field_5a98b67522f75'),
(1036, 132, '_thumbnail_id', '124'),
(1037, 132, 'lideranca', ''),
(1038, 132, '_lideranca', 'field_5a98c8205718d'),
(1047, 133, '_edit_last', '1'),
(1048, 133, '_edit_lock', '1520010497:1'),
(1049, 133, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(1050, 133, '_ocupacao', 'field_5a957e1299df9'),
(1051, 133, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(1052, 133, '_descricao_listagem', 'field_5a957e2899dfa'),
(1053, 133, 'capa_do_perfil', '96'),
(1054, 133, '_capa_do_perfil', 'field_5a957e6699dfb'),
(1055, 133, 'e-mail', 'lucas@dbs.com.br'),
(1056, 133, '_e-mail', 'field_5a957ed899dfd'),
(1057, 133, 'linkedin', 'https://www.facebook.com/'),
(1058, 133, '_linkedin', 'field_5a957e9299dfc'),
(1059, 133, 'facebook', 'https://www.facebook.com/'),
(1060, 133, '_facebook', 'field_5a957ee499dfe'),
(1061, 133, 'twitter', 'https://www.facebook.com/'),
(1062, 133, '_twitter', 'field_5a957eef99dff'),
(1063, 133, 'youtube', 'https://www.facebook.com/'),
(1064, 133, '_youtube', 'field_5a957f0199e00'),
(1065, 133, 'titulo', 'professor'),
(1066, 133, '_titulo', 'field_5a98b67522f75'),
(1067, 133, '_thumbnail_id', '124'),
(1068, 133, 'lideranca', ''),
(1069, 133, '_lideranca', 'field_5a98c8205718d'),
(1078, 134, '_edit_last', '1'),
(1079, 134, '_edit_lock', '1520010551:1'),
(1080, 134, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(1081, 134, '_ocupacao', 'field_5a957e1299df9'),
(1082, 134, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(1083, 134, '_descricao_listagem', 'field_5a957e2899dfa'),
(1084, 134, 'capa_do_perfil', '96'),
(1085, 134, '_capa_do_perfil', 'field_5a957e6699dfb'),
(1086, 134, 'e-mail', 'lucas@dbs.com.br'),
(1087, 134, '_e-mail', 'field_5a957ed899dfd'),
(1088, 134, 'linkedin', 'https://www.facebook.com/'),
(1089, 134, '_linkedin', 'field_5a957e9299dfc'),
(1090, 134, 'facebook', 'https://www.facebook.com/'),
(1091, 134, '_facebook', 'field_5a957ee499dfe'),
(1092, 134, 'twitter', 'https://www.facebook.com/'),
(1093, 134, '_twitter', 'field_5a957eef99dff'),
(1094, 134, 'youtube', 'https://www.facebook.com/'),
(1095, 134, '_youtube', 'field_5a957f0199e00'),
(1096, 134, 'titulo', 'professor'),
(1097, 134, '_titulo', 'field_5a98b67522f75'),
(1098, 134, '_thumbnail_id', '124'),
(1099, 134, 'lideranca', ''),
(1100, 134, '_lideranca', 'field_5a98c8205718d'),
(1109, 135, '_edit_last', '1'),
(1110, 135, '_edit_lock', '1520010602:1'),
(1111, 135, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(1112, 135, '_ocupacao', 'field_5a957e1299df9'),
(1113, 135, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(1114, 135, '_descricao_listagem', 'field_5a957e2899dfa'),
(1115, 135, 'capa_do_perfil', '96'),
(1116, 135, '_capa_do_perfil', 'field_5a957e6699dfb'),
(1117, 135, 'e-mail', 'lucas@dbs.com.br'),
(1118, 135, '_e-mail', 'field_5a957ed899dfd'),
(1119, 135, 'linkedin', 'https://www.facebook.com/'),
(1120, 135, '_linkedin', 'field_5a957e9299dfc'),
(1121, 135, 'facebook', 'https://www.facebook.com/'),
(1122, 135, '_facebook', 'field_5a957ee499dfe'),
(1123, 135, 'twitter', 'https://www.facebook.com/'),
(1124, 135, '_twitter', 'field_5a957eef99dff'),
(1125, 135, 'youtube', 'https://www.facebook.com/'),
(1126, 135, '_youtube', 'field_5a957f0199e00'),
(1127, 135, 'titulo', 'professor'),
(1128, 135, '_titulo', 'field_5a98b67522f75'),
(1129, 135, '_thumbnail_id', '124'),
(1130, 135, 'lideranca', ''),
(1131, 135, '_lideranca', 'field_5a98c8205718d'),
(1140, 136, '_edit_last', '1'),
(1141, 136, '_edit_lock', '1520024150:1'),
(1142, 136, 'ocupacao', 'Professor de e-commerce <br>& CEO DBR.ag'),
(1143, 136, '_ocupacao', 'field_5a957e1299df9'),
(1144, 136, 'descricao_listagem', 'Empreendedor digital, é co-fundador de quatro empresas de Internet, todas em atividade, entre elas a Recomind.net, adquirida pelo Buscapé Company. Ocupa o cargo de CEO da agência digital DBR.ag - www.dbr.ag.'),
(1145, 136, '_descricao_listagem', 'field_5a957e2899dfa'),
(1146, 136, 'capa_do_perfil', '96'),
(1147, 136, '_capa_do_perfil', 'field_5a957e6699dfb'),
(1148, 136, 'e-mail', 'lucas@dbs.com.br'),
(1149, 136, '_e-mail', 'field_5a957ed899dfd'),
(1150, 136, 'linkedin', 'https://www.facebook.com/'),
(1151, 136, '_linkedin', 'field_5a957e9299dfc'),
(1152, 136, 'facebook', 'https://www.facebook.com/'),
(1153, 136, '_facebook', 'field_5a957ee499dfe'),
(1154, 136, 'twitter', 'https://www.facebook.com/'),
(1155, 136, '_twitter', 'field_5a957eef99dff'),
(1156, 136, 'youtube', 'https://www.facebook.com/'),
(1157, 136, '_youtube', 'field_5a957f0199e00'),
(1158, 136, 'titulo', 'professor'),
(1159, 136, '_titulo', 'field_5a98b67522f75'),
(1160, 136, '_thumbnail_id', '124'),
(1161, 136, 'lideranca', ''),
(1162, 136, '_lideranca', 'field_5a98c8205718d'),
(1171, 137, '_edit_last', '1'),
(1172, 137, '_edit_lock', '1520221589:1'),
(1173, 146, '_edit_last', '1'),
(1174, 146, '_edit_lock', '1520047714:1'),
(1175, 147, '_edit_last', '1'),
(1176, 147, '_edit_lock', '1520085621:1'),
(1177, 148, '_wp_attached_file', '2018/03/banner_professores.jpg'),
(1178, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:422;s:4:"file";s:30:"2018/03/banner_professores.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"banner_professores-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"banner_professores-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"banner_professores-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"banner_professores-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-thumb";a:4:{s:4:"file";s:30:"banner_professores-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"banner_professores-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:30:"banner_professores-600x176.jpg";s:5:"width";i:600;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"banner_professores-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"banner_professores-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"banner_professores-600x176.jpg";s:5:"width";i:600;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"banner_professores-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1179, 147, '_thumbnail_id', '148'),
(1180, 147, 'pre_titulo', ''),
(1181, 147, '_pre_titulo', 'field_5a74a7ef4836d'),
(1182, 147, 'texto_do_link', ''),
(1183, 147, '_texto_do_link', 'field_5a74abfd4836e'),
(1184, 146, '_wp_trash_meta_status', 'draft'),
(1185, 146, '_wp_trash_meta_time', '1520213978'),
(1186, 146, '_wp_desired_post_slug', ''),
(1190, 147, '_wp_trash_meta_status', 'publish'),
(1191, 147, '_wp_trash_meta_time', '1520216129'),
(1192, 147, '_wp_desired_post_slug', 'nossos-professores_'),
(1193, 137, '_wp_trash_meta_status', 'publish'),
(1194, 137, '_wp_trash_meta_time', '1520221818'),
(1195, 137, '_wp_desired_post_slug', 'group_5a99bbede5789'),
(1196, 138, '_wp_trash_meta_status', 'publish'),
(1197, 138, '_wp_trash_meta_time', '1520221818'),
(1198, 138, '_wp_desired_post_slug', 'field_5a99bc38f3bd3'),
(1199, 139, '_wp_trash_meta_status', 'publish'),
(1200, 139, '_wp_trash_meta_time', '1520221818'),
(1201, 139, '_wp_desired_post_slug', 'field_5a99bc4df3bd4'),
(1202, 140, '_wp_trash_meta_status', 'publish'),
(1203, 140, '_wp_trash_meta_time', '1520221818'),
(1204, 140, '_wp_desired_post_slug', 'field_5a99c323069b4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-26 14:39:51', '2018-01-26 16:39:51', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2018-01-26 14:39:51', '2018-01-26 16:39:51', '', 0, 'http://spds/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-26 14:39:51', '2018-01-26 16:39:51', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página ''Sobre'' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins-de-semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href="http://spds/wp-admin/">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2018-01-26 14:39:51', '2018-01-26 16:39:51', '', 0, 'http://spds/?page_id=2', 0, 'page', '', 0),
(5, 1, '2018-02-01 12:26:41', '2018-02-01 14:26:41', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-02-01 12:26:41', '2018-02-01 14:26:41', '', 0, 'http://spds/wp-content/uploads/2018/02/favicon.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2018-02-01 12:26:52', '2018-02-01 14:26:52', 'http://spds/wp-content/uploads/2018/02/cropped-favicon.png', 'cropped-favicon.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2018-02-01 12:26:52', '2018-02-01 14:26:52', '', 0, 'http://spds/wp-content/uploads/2018/02/cropped-favicon.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2018-02-01 17:27:42', '2018-02-01 19:27:42', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-02-01 17:27:42', '2018-02-01 19:27:42', '', 0, 'http://spds/shop/', 0, 'page', '', 0),
(12, 1, '2018-02-01 17:27:42', '2018-02-01 19:27:42', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-02-01 17:27:42', '2018-02-01 19:27:42', '', 0, 'http://spds/cart/', 0, 'page', '', 0),
(13, 1, '2018-02-01 17:27:42', '2018-02-01 19:27:42', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-02-01 17:27:42', '2018-02-01 19:27:42', '', 0, 'http://spds/checkout/', 0, 'page', '', 0),
(14, 1, '2018-02-01 17:27:42', '2018-02-01 19:27:42', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-02-01 17:27:42', '2018-02-01 19:27:42', '', 0, 'http://spds/my-account/', 0, 'page', '', 0),
(15, 1, '2018-02-01 17:29:24', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-01 17:29:24', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-02-01 17:29:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-01 17:29:24', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-02-01 17:29:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-01 17:29:24', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2018-02-01 17:29:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-01 17:29:24', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-02-01 17:29:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-01 17:29:24', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-02-01 17:29:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-01 17:29:24', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-02-02 11:05:57', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:05:57', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-02-02 11:05:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:05:57', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-02-02 11:05:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:05:57', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-02-02 11:05:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:05:57', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-02-02 11:05:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:05:57', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-02-02 11:05:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:05:57', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-02-02 11:40:37', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:40:37', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-02-02 11:40:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:40:37', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2018-02-02 11:40:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:40:37', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2018-02-02 11:40:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:40:37', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-02-02 11:40:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:40:37', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-02-02 11:40:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:40:37', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-02-02 11:41:30', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:41:30', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-02-02 11:41:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:41:30', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-02-02 11:41:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:41:30', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-02-02 11:41:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:41:30', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-02-02 11:41:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:41:30', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-02-02 11:41:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:41:30', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-02-02 11:42:15', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:42:15', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-02-02 11:42:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:42:15', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2018-02-02 11:42:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:42:15', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2018-02-02 11:42:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:42:15', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-02-02 11:42:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:42:15', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2018-02-02 11:42:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-02 11:42:15', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2018-02-02 11:51:38', '2018-02-02 13:51:38', 'akbs dajsbda ,hjv', 'Fase01', '', 'publish', 'closed', 'closed', '', 'fase01', '', '', '2018-03-02 23:57:33', '2018-03-03 02:57:33', '', 0, 'http://spds/?post_type=sliders&#038;p=45', 0, 'sliders', '', 0),
(46, 1, '2018-02-02 11:51:30', '2018-02-02 13:51:30', '', 'slider01', '', 'inherit', 'open', 'closed', '', 'slider01', '', '', '2018-02-02 11:51:30', '2018-02-02 13:51:30', '', 45, 'http://spds/wp-content/uploads/2018/02/slider01.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2018-02-02 14:44:30', '2018-02-02 16:44:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin finibus mi eget sapien volutpatdapibus. Integer eleifend neque sit amet mauris aliquam pellentesque.', 'Comunicação & Marketing Digital', '', 'publish', 'closed', 'closed', '', 'fase01-2', '', '', '2018-03-04 22:10:15', '2018-03-05 01:10:15', '', 0, 'http://spds/?post_type=sliders&#038;p=48', 0, 'sliders', '', 0),
(49, 1, '2018-02-02 18:02:26', '2018-02-02 20:02:26', '', 'Campos dos sliders', '', 'publish', 'closed', 'closed', '', 'acf_campos-dos-sliders', '', '', '2018-02-02 18:02:26', '2018-02-02 20:02:26', '', 0, 'http://spds/?post_type=acf&#038;p=49', 0, 'acf', '', 0),
(51, 1, '2018-02-03 12:02:24', '2018-02-03 14:02:24', '', 'CURSOS', '', 'publish', 'closed', 'closed', '', 'cursos', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=51', 5, 'nav_menu_item', '', 0),
(52, 1, '2018-02-03 12:02:24', '2018-02-03 14:02:24', '', 'CALENDÁRIO', '', 'publish', 'closed', 'closed', '', 'calendario', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=52', 6, 'nav_menu_item', '', 0),
(53, 1, '2018-02-03 12:02:24', '2018-02-03 14:02:24', '', 'CONSULTORIA', '', 'publish', 'closed', 'closed', '', 'consultoria', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=53', 7, 'nav_menu_item', '', 0),
(54, 1, '2018-02-03 12:02:25', '2018-02-03 14:02:25', '', 'CONTATO', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=54', 11, 'nav_menu_item', '', 0),
(55, 1, '2018-02-03 12:11:20', '2018-02-03 14:11:20', '', '<span>Calendário: <strong>Próximos cursos</strong></span>', '', 'publish', 'closed', 'closed', '', 'calendario-proximos-cursos', '', '', '2018-02-05 16:53:03', '2018-02-05 18:53:03', '', 0, 'http://spds/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2018-02-03 12:12:19', '2018-02-03 14:12:19', '', '<span>Conheça nosso <strong>Corpo docente</strong></span>', '', 'publish', 'closed', 'closed', '', 'conheca-nosso-corpo-docente', '', '', '2018-02-05 16:53:03', '2018-02-05 18:53:03', '', 0, 'http://spds/?p=56', 2, 'nav_menu_item', '', 0),
(57, 1, '2018-02-03 12:12:19', '2018-02-03 14:12:19', '', '<span>Soluções <strong>Corporativas</strong></span>', '', 'publish', 'closed', 'closed', '', 'solucoes-corporativas', '', '', '2018-02-05 16:53:03', '2018-02-05 18:53:03', '', 0, 'http://spds/?p=57', 3, 'nav_menu_item', '', 0),
(58, 1, '2018-02-03 14:45:58', '2018-02-03 16:45:58', '<h1>Entre de cabeça na era digitale prepare-se para o seu novofuturo.</h1>\r\nBem vindo à <strong>São Paulo Digital School.</strong> Um novo conceito em centro de capacitação de profissionais de marketing e internet. Aqui em nosso website você poderá encontrar além de informações sobre os cursos ministrados em nossa sede, informações sobre o mercado de marketing e internet para deixá-lo a par das novidades e tendências deste novo mundo que se forma.\r\n\r\n<!--more-->', 'Conheça a SPDS', '', 'publish', 'closed', 'closed', '', 'conheca-a-spds', '', '', '2018-02-03 14:45:58', '2018-02-03 16:45:58', '', 0, 'http://spds/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-02-03 14:45:54', '2018-02-03 16:45:54', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre', '', '', '2018-02-03 14:45:54', '2018-02-03 16:45:54', '', 58, 'http://spds/wp-content/uploads/2018/02/sobre.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-02-03 14:45:58', '2018-02-03 16:45:58', '<h1>Entre de cabeça na era digitale prepare-se para o seu novofuturo.</h1>\r\nBem vindo à <strong>São Paulo Digital School.</strong> Um novo conceito em centro de capacitação de profissionais de marketing e internet. Aqui em nosso website você poderá encontrar além de informações sobre os cursos ministrados em nossa sede, informações sobre o mercado de marketing e internet para deixá-lo a par das novidades e tendências deste novo mundo que se forma.\r\n\r\n<!--more-->', 'Conheça a SPDS', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-03 14:45:58', '2018-02-03 16:45:58', '', 58, 'http://spds/2018/02/03/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-02-03 14:48:37', '2018-02-03 16:48:37', '', 'CONHEÇA A SPDS', '', 'publish', 'closed', 'closed', '', 'conheca-a-spds-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=61', 1, 'nav_menu_item', '', 0),
(63, 1, '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 'Sobre a SPDS', '', 'publish', 'closed', 'closed', '', 'sobre-a-spds', '', '', '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 0, 'http://spds/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 'Clientes', '', 'publish', 'closed', 'closed', '', 'clientes', '', '', '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 0, 'http://spds/?p=64', 2, 'nav_menu_item', '', 0),
(65, 1, '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 'Professores', '', 'publish', 'closed', 'closed', '', 'professores', '', '', '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 0, 'http://spds/?p=65', 3, 'nav_menu_item', '', 0),
(66, 1, '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 'Outras Localidades', '', 'publish', 'closed', 'closed', '', 'outras-localidades', '', '', '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 0, 'http://spds/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 'Termos e Condições', '', 'publish', 'closed', 'closed', '', 'termos-e-condicoes', '', '', '2018-02-15 15:25:03', '2018-02-15 17:25:03', '', 0, 'http://spds/?p=67', 5, 'nav_menu_item', '', 0),
(68, 1, '2018-02-15 15:29:15', '2018-02-15 17:29:15', '', 'Marketing Digital', '', 'publish', 'closed', 'closed', '', 'marketing-digital', '', '', '2018-02-15 15:29:36', '2018-02-15 17:29:36', '', 0, 'http://spds/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2018-02-15 15:29:15', '2018-02-15 17:29:15', '', 'Mídias Sociais', '', 'publish', 'closed', 'closed', '', 'midias-sociais', '', '', '2018-02-15 15:29:36', '2018-02-15 17:29:36', '', 0, 'http://spds/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2018-02-15 15:29:15', '2018-02-15 17:29:15', '', 'Métricas Digitais', '', 'publish', 'closed', 'closed', '', 'metricas-digitais', '', '', '2018-02-15 15:29:36', '2018-02-15 17:29:36', '', 0, 'http://spds/?p=70', 3, 'nav_menu_item', '', 0),
(71, 1, '2018-02-15 15:29:15', '2018-02-15 17:29:15', '', 'Planejamento', '', 'publish', 'closed', 'closed', '', 'planejamento', '', '', '2018-02-15 15:29:36', '2018-02-15 17:29:36', '', 0, 'http://spds/?p=71', 4, 'nav_menu_item', '', 0),
(72, 1, '2018-02-15 15:29:15', '2018-02-15 17:29:15', '', 'Code & Design', '', 'publish', 'closed', 'closed', '', 'code-design', '', '', '2018-02-15 15:29:36', '2018-02-15 17:29:36', '', 0, 'http://spds/?p=72', 5, 'nav_menu_item', '', 0),
(73, 1, '2018-02-15 15:29:15', '2018-02-15 17:29:15', '', 'Publicidade Digital', '', 'publish', 'closed', 'closed', '', 'publicidade-digital', '', '', '2018-02-15 15:29:36', '2018-02-15 17:29:36', '', 0, 'http://spds/?p=73', 6, 'nav_menu_item', '', 0),
(74, 1, '2018-02-15 15:29:15', '2018-02-15 17:29:15', '', 'Business', '', 'publish', 'closed', 'closed', '', 'business', '', '', '2018-02-15 15:29:36', '2018-02-15 17:29:36', '', 0, 'http://spds/?p=74', 7, 'nav_menu_item', '', 0),
(75, 1, '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 'Consultoria', '', 'publish', 'closed', 'closed', '', 'consultoria-2', '', '', '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 0, 'http://spds/?p=75', 1, 'nav_menu_item', '', 0),
(76, 1, '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 'Coaching', '', 'publish', 'closed', 'closed', '', 'coaching', '', '', '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 0, 'http://spds/?p=76', 2, 'nav_menu_item', '', 0),
(77, 1, '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 'Soluções Corporativas', '', 'publish', 'closed', 'closed', '', 'solucoes-corporativas-2', '', '', '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 0, 'http://spds/?p=77', 3, 'nav_menu_item', '', 0),
(78, 1, '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 'Outros', '', 'publish', 'closed', 'closed', '', 'outros', '', '', '2018-02-15 15:31:39', '2018-02-15 17:31:39', '', 0, 'http://spds/?p=78', 4, 'nav_menu_item', '', 0),
(79, 1, '2018-02-15 15:32:40', '2018-02-15 17:32:40', '', 'Fale Conosco', '', 'publish', 'closed', 'closed', '', 'fale-conosco', '', '', '2018-02-15 15:32:40', '2018-02-15 17:32:40', '', 0, 'http://spds/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2018-02-15 15:32:40', '2018-02-15 17:32:40', '', 'Trabalhe Conosco', '', 'publish', 'closed', 'closed', '', 'trabalhe-conosco', '', '', '2018-02-15 15:32:40', '2018-02-15 17:32:40', '', 0, 'http://spds/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2018-02-15 15:32:40', '2018-02-15 17:32:40', '', 'Seja um Parceiro', '', 'publish', 'closed', 'closed', '', 'seja-um-parceiro', '', '', '2018-02-15 15:32:40', '2018-02-15 17:32:40', '', 0, 'http://spds/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2018-02-15 15:41:05', '2018-02-15 17:41:05', '', 'Fale conosco', '', 'publish', 'closed', 'closed', '', 'fale-conosco-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=82', 12, 'nav_menu_item', '', 0),
(83, 1, '2018-02-15 15:41:05', '2018-02-15 17:41:05', '', 'Trabalhe conosco', '', 'publish', 'closed', 'closed', '', 'trabalhe-conosco-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=83', 13, 'nav_menu_item', '', 0),
(84, 1, '2018-02-15 15:41:05', '2018-02-15 17:41:05', '', 'Seja um parceiro', '', 'publish', 'closed', 'closed', '', 'seja-um-parceiro-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=84', 14, 'nav_menu_item', '', 0),
(85, 1, '2018-02-15 16:26:12', '2018-02-15 18:26:12', '', 'Consultoria', '', 'publish', 'closed', 'closed', '', 'consultoria-3', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=85', 8, 'nav_menu_item', '', 0),
(86, 1, '2018-02-15 16:26:12', '2018-02-15 18:26:12', '', 'Coaching', '', 'publish', 'closed', 'closed', '', 'coaching-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=86', 9, 'nav_menu_item', '', 0),
(87, 1, '2018-02-15 16:26:12', '2018-02-15 18:26:12', '', 'Soluções corporativas', '', 'publish', 'closed', 'closed', '', 'solucoes-corporativas-3', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=87', 10, 'nav_menu_item', '', 0),
(88, 1, '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 'Sobre a SPDS', '', 'publish', 'closed', 'closed', '', 'sobre-a-spds-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=88', 2, 'nav_menu_item', '', 0),
(89, 1, '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 'Professores', '', 'publish', 'closed', 'closed', '', 'professores-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=89', 3, 'nav_menu_item', '', 0),
(90, 1, '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 'Termos e condições', '', 'publish', 'closed', 'closed', '', 'termos-e-condicoes-2', '', '', '2018-02-15 16:27:51', '2018-02-15 18:27:51', '', 0, 'http://spds/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2018-02-27 11:37:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-27 11:37:57', '0000-00-00 00:00:00', '', 0, 'http://spds/?p=91', 0, 'post', '', 0),
(93, 1, '2018-02-27 12:10:35', '2018-02-27 15:10:35', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Lucas de Paula Lima', '', 'publish', 'closed', 'closed', '', 'lucas-de-paula-lima', '', '', '2018-03-02 01:41:58', '2018-03-02 04:41:58', '', 0, 'http://spds/?post_type=professores&#038;p=93', 0, 'professores', '', 0),
(95, 1, '2018-02-27 12:54:15', '2018-02-27 15:54:15', '', 'Campos para professores', '', 'publish', 'closed', 'closed', '', 'acf_campos-para-professores', '', '', '2018-02-27 12:54:15', '2018-02-27 15:54:15', '', 0, 'http://spds/?post_type=acf&#038;p=95', 0, 'acf', '', 0),
(96, 1, '2018-02-27 12:58:44', '2018-02-27 15:58:44', '', 'capa_lucas', '', 'inherit', 'open', 'closed', '', 'capa_lucas', '', '', '2018-03-02 18:14:17', '2018-03-02 21:14:17', '', 93, 'http://spds/wp-content/uploads/2018/02/capa_lucas.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-02-28 22:42:50', '2018-03-01 01:42:50', '<h1>Venda seu produto ou serviço\r\nde forma eficiente e rentável\r\nna internet_</h1>\r\n<div class="column-left">O e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens, o valor deve chegar a R$ 28 bilhões. Porém, alcançar esses números não é fácil, pois abrir uma loja virtual não significa necessariamente ter vendas. A grande sacada é utilizar a tecnologia a favor desse fluxo.</div>\r\n<div class="column-right">\r\n\r\nE então como fazer o planejamento de um e-commerce? Quais plataformas são mais indicadas? Como administrar produtos, promoções e toda a burocracia necessária? O Google Analytics pode ser útil? Como analisar os retornos? E isso sem deixar de fora a ativação da marca nas redes sociais que se tornaram grandes potencializadoras dos processos de compra. Mas como administrar tudo isso ?As respostas para essas e outras questões fazem parte do conteúdo do Curso E-commerce, que apresenta toda a estrutura necessária, desde o princípio mais básico, para a abertura de uma loja virtual.\r\n\r\n</div>', 'E-Commerce', 'O e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens,', 'publish', 'open', 'closed', '', 'e-commerce', '', '', '2018-03-01 23:31:07', '2018-03-02 02:31:07', '', 0, 'http://spds/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2018-02-28 22:38:03', '2018-03-01 01:38:03', '', 'curso_ecommerce', '', 'inherit', 'open', 'closed', '', 'curso_ecommerce', '', '', '2018-02-28 22:38:03', '2018-03-01 01:38:03', '', 97, 'http://spds/wp-content/uploads/2018/02/curso_ecommerce.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-03-01 00:01:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-01 00:01:23', '0000-00-00 00:00:00', '', 0, 'http://spds/?post_type=acf&p=99', 0, 'acf', '', 0),
(100, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"sliders";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:0:{}s:11:"description";s:0:"";s:6:"old_ID";i:49;}', 'Campos dos sliders', 'campos-dos-sliders', 'publish', 'closed', 'closed', '', 'group_5a976db19cc8b', '', '', '2018-03-01 00:04:17', '2018-03-01 03:04:17', '', 0, 'http://spds/?post_type=acf-field-group&p=100', 0, 'acf-field-group', '', 0),
(101, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:56:"Parte do título do Slider que será exibido em amarelo.";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Pré Título', 'pre_titulo', 'publish', 'closed', 'closed', '', 'field_5a74a7ef4836d', '', '', '2018-03-01 00:04:17', '2018-03-01 03:04:17', '', 100, 'http://spds/?post_type=acf-field&p=101', 0, 'acf-field', '', 0),
(102, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:46:"Título do botão que contém o link do slider";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Texto do link', 'texto_do_link', 'publish', 'closed', 'closed', '', 'field_5a74abfd4836e', '', '', '2018-03-01 00:04:17', '2018-03-01 03:04:17', '', 100, 'http://spds/?post_type=acf-field&p=102', 1, 'acf-field', '', 0),
(103, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"professores";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Campos para professores', 'campos-para-professores', 'publish', 'closed', 'closed', '', 'group_5a976db1a4156', '', '', '2018-03-02 13:07:02', '2018-03-02 16:07:02', '', 0, 'http://spds/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Ocupação', 'ocupacao', 'publish', 'closed', 'closed', '', 'field_5a957e1299df9', '', '', '2018-03-01 00:04:17', '2018-03-01 03:04:17', '', 103, 'http://spds/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:17:"conditional_logic";i:0;s:9:"new_lines";s:0:"";}', 'Descrição para listagem de professores', 'descricao_listagem', 'publish', 'closed', 'closed', '', 'field_5a957e2899dfa', '', '', '2018-03-02 00:44:13', '2018-03-02 03:44:13', '', 103, 'http://spds/?post_type=acf-field&#038;p=105', 3, 'acf-field', '', 0),
(106, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";i:0;s:13:"return_format";s:3:"url";s:9:"min_width";i:0;s:10:"min_height";i:0;s:8:"min_size";i:0;s:9:"max_width";i:0;s:10:"max_height";i:0;s:8:"max_size";i:0;s:10:"mime_types";s:0:"";}', 'Imagem de capa do perfil', 'capa_do_perfil', 'publish', 'closed', 'closed', '', 'field_5a957e6699dfb', '', '', '2018-03-02 00:44:13', '2018-03-02 03:44:13', '', 103, 'http://spds/?post_type=acf-field&#038;p=106', 4, 'acf-field', '', 0),
(107, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'LinkedIn', 'linkedin', 'publish', 'closed', 'closed', '', 'field_5a957e9299dfc', '', '', '2018-03-02 00:44:13', '2018-03-02 03:44:13', '', 103, 'http://spds/?post_type=acf-field&#038;p=107', 6, 'acf-field', '', 0),
(108, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'E-mail', 'e-mail', 'publish', 'closed', 'closed', '', 'field_5a957ed899dfd', '', '', '2018-03-02 00:44:13', '2018-03-02 03:44:13', '', 103, 'http://spds/?post_type=acf-field&#038;p=108', 5, 'acf-field', '', 0),
(109, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5a957ee499dfe', '', '', '2018-03-02 00:44:13', '2018-03-02 03:44:13', '', 103, 'http://spds/?post_type=acf-field&#038;p=109', 7, 'acf-field', '', 0),
(110, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5a957eef99dff', '', '', '2018-03-02 00:44:13', '2018-03-02 03:44:13', '', 103, 'http://spds/?post_type=acf-field&#038;p=110', 8, 'acf-field', '', 0),
(111, 1, '2018-03-01 00:04:17', '2018-03-01 03:04:17', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Youtube', 'youtube', 'publish', 'closed', 'closed', '', 'field_5a957f0199e00', '', '', '2018-03-02 00:44:13', '2018-03-02 03:44:13', '', 103, 'http://spds/?post_type=acf-field&#038;p=111', 9, 'acf-field', '', 0),
(112, 1, '2018-03-01 00:11:53', '2018-03-01 03:11:53', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"product";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Campos para produtos', 'campos-para-produtos', 'publish', 'closed', 'closed', '', 'group_5a976ddfac891', '', '', '2018-03-01 17:48:47', '2018-03-01 20:48:47', '', 0, 'http://spds/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2018-03-01 00:11:54', '2018-03-01 03:11:54', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:15:"Adicionar Linha";}', 'Conteúdo e Objetivos', 'conteudo-e-objetivos', 'publish', 'closed', 'closed', '', 'field_5a976e46e62b8', '', '', '2018-03-01 00:11:54', '2018-03-01 03:11:54', '', 112, 'http://spds/?post_type=acf-field&p=113', 0, 'acf-field', '', 0),
(114, 1, '2018-03-01 00:11:54', '2018-03-01 03:11:54', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"25";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Módulo', 'modulo', 'publish', 'closed', 'closed', '', 'field_5a976ebee62b9', '', '', '2018-03-01 00:13:08', '2018-03-01 03:13:08', '', 113, 'http://spds/?post_type=acf-field&#038;p=114', 0, 'acf-field', '', 0),
(115, 1, '2018-03-01 00:11:54', '2018-03-01 03:11:54', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"75";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Descrição do módulo', 'descricao_do_modulo', 'publish', 'closed', 'closed', '', 'field_5a976f14e62ba', '', '', '2018-03-01 00:13:08', '2018-03-01 03:13:08', '', 113, 'http://spds/?post_type=acf-field&#038;p=115', 1, 'acf-field', '', 0),
(116, 1, '2018-03-01 00:25:05', '2018-03-01 03:25:05', '<h1>Venda seu produto ou serviço<br> de forma eficiente e rentável<br> na internet_</h1>\n<p>\nO e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens, o valor deve chegar a R$ 28 bilhões. Porém, alcançar esses números não é fácil, pois abrir uma loja virtual não significa necessariamente ter vendas. A grande sacada é utilizar a tecnologia a favor desse fluxo.\n</span>\n', 'E-Commerce', 'O e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens,', 'inherit', 'closed', 'closed', '', '97-autosave-v1', '', '', '2018-03-01 00:25:05', '2018-03-01 03:25:05', '', 97, 'http://spds/2018/03/01/97-autosave-v1/', 0, 'revision', '', 0),
(117, 1, '2018-03-01 17:47:54', '2018-03-01 20:47:54', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Duração', 'duracao', 'publish', 'closed', 'closed', '', 'field_5a9866b07c32a', '', '', '2018-03-01 17:47:54', '2018-03-01 20:47:54', '', 112, 'http://spds/?post_type=acf-field&p=117', 1, 'acf-field', '', 0),
(118, 1, '2018-03-01 17:47:54', '2018-03-01 20:47:54', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Próxima turma', 'proxima_turma', 'publish', 'closed', 'closed', '', 'field_5a9866e77c32b', '', '', '2018-03-01 17:47:54', '2018-03-01 20:47:54', '', 112, 'http://spds/?post_type=acf-field&p=118', 2, 'acf-field', '', 0),
(119, 1, '2018-03-01 18:09:59', '2018-03-01 21:09:59', '<h1>Venda seu produto ou serviço\r\nde forma eficiente e rentável\r\nna internet_</h1>\r\n<div class="column-left">O e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens, o valor deve chegar a R$ 28 bilhões. Porém, alcançar esses números não é fácil, pois abrir uma loja virtual não significa necessariamente ter vendas. A grande sacada é utilizar a tecnologia a favor desse fluxo.</div>\r\n<div class="column-right">\r\n\r\nE então como fazer o planejamento de um e-commerce? Quais plataformas são mais indicadas? Como administrar produtos, promoções e toda a burocracia necessária? O Google Analytics pode ser útil? Como analisar os retornos? E isso sem deixar de fora a ativação da marca nas redes sociais que se tornaram grandes potencializadoras dos processos de compra. Mas como administrar tudo isso ?As respostas para essas e outras questões fazem parte do conteúdo do Curso E-commerce, que apresenta toda a estrutura necessária, desde o princípio mais básico, para a abertura de uma loja virtual.\r\n\r\n</div>', 'E-mail marketing', 'O e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens,', 'publish', 'open', 'closed', '', 'e-mail-marketing', '', '', '2018-03-01 18:11:37', '2018-03-01 21:11:37', '', 0, 'http://spds/?post_type=product&#038;p=119', 0, 'product', '', 0),
(120, 1, '2018-03-01 18:25:23', '2018-03-01 21:25:23', '<h1>Venda seu produto ou serviço\r\nde forma eficiente e rentável\r\nna internet_</h1>\r\n<div class="column-left">O e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens, o valor deve chegar a R$ 28 bilhões. Porém, alcançar esses números não é fácil, pois abrir uma loja virtual não significa necessariamente ter vendas. A grande sacada é utilizar a tecnologia a favor desse fluxo.</div>\r\n<div class="column-right">\r\n\r\nE então como fazer o planejamento de um e-commerce? Quais plataformas são mais indicadas? Como administrar produtos, promoções e toda a burocracia necessária? O Google Analytics pode ser útil? Como analisar os retornos? E isso sem deixar de fora a ativação da marca nas redes sociais que se tornaram grandes potencializadoras dos processos de compra. Mas como administrar tudo isso ?As respostas para essas e outras questões fazem parte do conteúdo do Curso E-commerce, que apresenta toda a estrutura necessária, desde o princípio mais básico, para a abertura de uma loja virtual.\r\n\r\n</div>', 'COMUNICAMP# MKT + e-commerce', 'O e-commerce na América Latina tende a crescer 26,7%, e no Brasil, as estimativas são de um aumento de 23%, podendo atingir um faturamento de US$ 10,8 bilhões. Incluindo as operações de turismo e vendas on-line de passagens,', 'publish', 'open', 'closed', '', 'comunicamp-mkt-e-commerce', '', '', '2018-03-01 23:21:29', '2018-03-02 02:21:29', '', 0, 'http://spds/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2018-03-01 22:56:45', '2018-03-02 01:56:45', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Ana Antoniazzi', '', 'publish', 'closed', 'closed', '', 'ana-antoniazzi', '', '', '2018-03-02 13:19:40', '2018-03-02 16:19:40', '', 0, 'http://spds/?post_type=professores&#038;p=121', 0, 'professores', '', 0),
(122, 1, '2018-03-01 22:56:12', '2018-03-02 01:56:12', '', 'Ana', '', 'inherit', 'open', 'closed', '', 'ana', '', '', '2018-03-01 22:56:12', '2018-03-02 01:56:12', '', 121, 'http://spds/wp-content/uploads/2018/03/Ana.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2018-03-01 23:28:23', '2018-03-02 02:28:23', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:10:"professora";s:10:"professora";s:9:"professor";s:9:"professor";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_5a98b67522f75', '', '', '2018-03-01 23:33:51', '2018-03-02 02:33:51', '', 103, 'http://spds/?post_type=acf-field&#038;p=123', 1, 'acf-field', '', 0),
(124, 1, '2018-03-01 23:44:26', '2018-03-02 02:44:26', '', 'Lucas', '', 'inherit', 'open', 'closed', '', 'lucas', '', '', '2018-03-01 23:44:26', '2018-03-02 02:44:26', '', 93, 'http://spds/wp-content/uploads/2018/02/Lucas.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2018-03-02 00:44:13', '2018-03-02 03:44:13', 'a:10:{s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:1:{s:3:"Sim";s:3:"Sim";}s:13:"default_value";a:1:{i:0;s:3:"sim";}s:6:"layout";s:8:"vertical";s:6:"toggle";i:0;s:13:"return_format";s:5:"value";}', 'Liderança', 'lideranca', 'publish', 'closed', 'closed', '', 'field_5a98c8205718d', '', '', '2018-03-02 13:07:02', '2018-03-02 16:07:02', '', 103, 'http://spds/?post_type=acf-field&#038;p=125', 2, 'acf-field', '', 0),
(126, 1, '2018-03-02 00:51:31', '2018-03-02 03:51:31', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\n\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\n\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Ana Antoniazzi', '', 'inherit', 'closed', 'closed', '', '121-autosave-v1', '', '', '2018-03-02 00:51:31', '2018-03-02 03:51:31', '', 121, 'http://spds/2018/03/02/121-autosave-v1/', 0, 'revision', '', 0),
(127, 1, '2018-03-02 12:57:42', '2018-03-02 15:57:42', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 03', '', 'publish', 'closed', 'closed', '', 'perfil-03', '', '', '2018-03-02 13:31:37', '2018-03-02 16:31:37', '', 0, 'http://spds/?post_type=professores&#038;p=127', 0, 'professores', '', 0),
(128, 1, '2018-03-02 13:35:42', '2018-03-02 16:35:42', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 04', '', 'publish', 'closed', 'closed', '', 'perfil-04', '', '', '2018-03-02 13:35:42', '2018-03-02 16:35:42', '', 0, 'http://spds/?post_type=professores&#038;p=128', 0, 'professores', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(129, 1, '2018-03-02 13:52:39', '2018-03-02 16:52:39', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 05', '', 'publish', 'closed', 'closed', '', 'perfil-05', '', '', '2018-03-02 13:53:36', '2018-03-02 16:53:36', '', 0, 'http://spds/?post_type=professores&#038;p=129', 0, 'professores', '', 0),
(130, 1, '2018-03-02 13:56:41', '2018-03-02 16:56:41', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 06', '', 'publish', 'closed', 'closed', '', 'perfil-06', '', '', '2018-03-02 13:56:41', '2018-03-02 16:56:41', '', 0, 'http://spds/?post_type=professores&#038;p=130', 0, 'professores', '', 0),
(131, 1, '2018-03-02 14:01:19', '2018-03-02 17:01:19', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 07', '', 'publish', 'closed', 'closed', '', 'perfil-07-2', '', '', '2018-03-02 14:08:17', '2018-03-02 17:08:17', '', 0, 'http://spds/?post_type=professores&#038;p=131', 0, 'professores', '', 0),
(132, 1, '2018-03-02 14:08:49', '2018-03-02 17:08:49', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 08', '', 'publish', 'closed', 'closed', '', 'perfil-08', '', '', '2018-03-02 14:08:49', '2018-03-02 17:08:49', '', 0, 'http://spds/?post_type=professores&#038;p=132', 0, 'professores', '', 0),
(133, 1, '2018-03-02 14:10:36', '2018-03-02 17:10:36', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 09', '', 'publish', 'closed', 'closed', '', 'perfil-09', '', '', '2018-03-02 14:10:36', '2018-03-02 17:10:36', '', 0, 'http://spds/?post_type=professores&#038;p=133', 0, 'professores', '', 0),
(134, 1, '2018-03-02 14:11:30', '2018-03-02 17:11:30', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 10', '', 'publish', 'closed', 'closed', '', 'perfil-10', '', '', '2018-03-02 14:11:30', '2018-03-02 17:11:30', '', 0, 'http://spds/?post_type=professores&#038;p=134', 0, 'professores', '', 0),
(135, 1, '2018-03-02 14:12:20', '2018-03-02 17:12:20', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 11', '', 'publish', 'closed', 'closed', '', 'perfil-11', '', '', '2018-03-02 14:12:20', '2018-03-02 17:12:20', '', 0, 'http://spds/?post_type=professores&#038;p=135', 0, 'professores', '', 0),
(136, 1, '2018-03-02 14:13:06', '2018-03-02 17:13:06', 'Me chamo Lucas de Paula Lima, sou um empreendedor brasileiro em São Paulo e tenho mais de 19 anos dedicados ao mercado de tecnologia. Após alguns anos trabalhando em consultorias de TI, fundei minha primeira empresa aos 19 anos e adotei o empreendedorismo como forma de materializar mudanças.\r\n\r\nMinha principal atividade é ser CEO da agência de inteligência digital DBR.ag, empresa que fundei em 2002 e pela qual participei de algumas centenas de projetos digitais na última década. A partir desse enorme laboratório de idéias e de negócios, me uni com alguns sócios na criação de um grupo company builder, por onde passei a estar sempre buscando formas de potencialização entre nossos negócios e os de outros empreendedores em quem acreditamos.\r\n\r\nAtravés do nosso grupo, tenho tido a oportunidade de trabalhar com profissionais brilhantes em suas áreas, atuando em alguns negócios empolgantes, como no aplicativo de recomendações profissionais Recomind.net, vendido para o Buscapé Company em 2011. Mais recentemente, passei a compartilhar parte dos erros e acertos obtidos até aqui através de cursos especializados gerenciados pelas instituições São Paulo Digital School e Universidade Buscapé Company.', 'Perfil 12', '', 'publish', 'closed', 'closed', '', 'perfil-12', '', '', '2018-03-02 14:13:06', '2018-03-02 17:13:06', '', 0, 'http://spds/?post_type=professores&#038;p=136', 0, 'professores', '', 0),
(137, 1, '2018-03-02 18:05:19', '2018-03-02 21:05:19', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:20:"professores-category";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Campos da categoria professores', 'campos-da-categoria-professores', 'trash', 'closed', 'closed', '', 'group_5a99bbede5789__trashed', '', '', '2018-03-05 00:50:18', '2018-03-05 03:50:18', '', 0, 'http://spds/?post_type=acf-field-group&#038;p=137', 0, 'acf-field-group', '', 0),
(138, 1, '2018-03-02 18:05:19', '2018-03-02 21:05:19', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner', 'banner', 'trash', 'closed', 'closed', '', 'field_5a99bc38f3bd3__trashed', '', '', '2018-03-05 00:50:18', '2018-03-05 03:50:18', '', 137, 'http://spds/?post_type=acf-field&#038;p=138', 0, 'acf-field', '', 0),
(139, 1, '2018-03-02 18:05:19', '2018-03-02 21:05:19', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Descrição completa', 'descricao_completa', 'trash', 'closed', 'closed', '', 'field_5a99bc4df3bd4__trashed', '', '', '2018-03-05 00:50:18', '2018-03-05 03:50:18', '', 137, 'http://spds/?post_type=acf-field&#038;p=139', 1, 'acf-field', '', 0),
(140, 1, '2018-03-02 18:33:46', '2018-03-02 21:33:46', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Teste', 'teste', 'trash', 'closed', 'closed', '', 'field_5a99c323069b4__trashed', '', '', '2018-03-05 00:50:18', '2018-03-05 03:50:18', '', 137, 'http://spds/?post_type=acf-field&#038;p=140', 2, 'acf-field', '', 0),
(141, 1, '2018-03-02 20:02:06', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-02 20:02:06', '0000-00-00 00:00:00', '', 0, 'http://spds/?post_type=sliders&p=141', 0, 'sliders', '', 0),
(142, 1, '2018-03-02 20:04:28', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-02 20:04:28', '0000-00-00 00:00:00', '', 0, 'http://spds/?post_type=sliders&p=142', 0, 'sliders', '', 0),
(143, 1, '2018-03-02 20:04:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-02 20:04:45', '0000-00-00 00:00:00', '', 0, 'http://spds/?post_type=sliders&p=143', 0, 'sliders', '', 0),
(144, 1, '2018-03-02 20:06:04', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-02 20:06:04', '0000-00-00 00:00:00', '', 0, 'http://spds/?post_type=sliders&p=144', 0, 'sliders', '', 0),
(145, 1, '2018-03-02 20:57:41', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-02 20:57:41', '0000-00-00 00:00:00', '', 0, 'http://spds/?post_type=sliders&p=145', 0, 'sliders', '', 0),
(146, 1, '2018-03-04 22:39:38', '2018-03-05 01:39:38', '', 'Nossos professores_', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-03-04 22:39:38', '2018-03-05 01:39:38', '', 0, 'http://spds/?post_type=sliders&#038;p=146', 0, 'sliders', '', 0),
(147, 1, '2018-03-03 00:33:15', '2018-03-03 03:33:15', '', 'Nossos professores_', '', 'trash', 'closed', 'closed', '', 'nossos-professores___trashed', '', '', '2018-03-04 23:15:29', '2018-03-05 02:15:29', '', 0, 'http://spds/?post_type=sliders&#038;p=147', 0, 'sliders', '', 0),
(148, 1, '2018-03-03 00:32:34', '2018-03-03 03:32:34', '', 'banner_professores', '', 'inherit', 'open', 'closed', '', 'banner_professores', '', '', '2018-03-03 00:32:34', '2018-03-03 03:32:34', '', 147, 'http://spds/wp-content/uploads/2018/03/banner_professores.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '0'),
(2, 23, 'order', '0'),
(3, 23, 'product_count_product_cat', '2'),
(4, 24, 'order_pa_nivel-conhecimento', '0'),
(5, 25, 'order_pa_nivel-conhecimento', '0'),
(6, 26, 'order_pa_nivel-conhecimento', '0'),
(7, 27, 'order_pa_nivel-conhecimento', '0'),
(8, 28, 'order_pa_nivel-conhecimento', '0'),
(9, 29, 'product_count_product_tag', '3'),
(10, 30, 'product_count_product_tag', '3'),
(11, 31, 'product_count_product_tag', '3'),
(12, 32, 'product_count_product_tag', '3'),
(13, 33, 'product_count_product_tag', '3'),
(14, 34, 'product_count_product_tag', '3'),
(15, 35, 'product_count_product_tag', '3'),
(16, 36, 'product_count_product_tag', '3'),
(17, 37, 'product_count_product_tag', '3'),
(18, 38, 'product_count_product_tag', '3'),
(19, 39, 'product_count_product_tag', '3'),
(20, 40, 'product_count_product_tag', '3'),
(21, 41, 'product_count_product_tag', '3'),
(22, 42, 'product_count_product_tag', '3'),
(23, 43, 'product_count_product_tag', '3'),
(24, 44, 'product_count_product_tag', '3'),
(25, 45, 'product_count_product_tag', '3'),
(26, 46, 'product_count_product_tag', '3'),
(27, 47, 'product_count_product_tag', '3'),
(28, 48, 'product_count_product_tag', '3'),
(29, 49, 'product_count_product_tag', '3'),
(30, 50, 'order', '0'),
(31, 50, 'product_count_product_cat', '1'),
(32, 51, 'product_count_product_tag', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Menu Principal', 'menu-principal', 0),
(16, 'Menu do Slider', 'menu-do-slider', 0),
(17, 'Sem categoria', 'sem-categoria', 0),
(18, 'Quem Somos', 'quem-somos', 0),
(19, 'Cursos', 'cursos', 0),
(20, 'Consultoria', 'consultoria', 0),
(21, 'Contato', 'contato', 0),
(22, 'Professores', 'professores', 0),
(23, 'Business', 'business', 0),
(24, 'Iniciante', 'iniciante', 0),
(25, 'Básico', 'basico', 0),
(26, 'Médio', 'medio', 0),
(27, 'Avançado', 'avancado', 0),
(28, 'Especialista', 'especialista', 0),
(29, 'Google', 'google', 0),
(30, 'Facebook', 'facebook', 0),
(31, 'Blog', 'blog', 0),
(32, 'Wordpress', 'wordpress', 0),
(33, 'Youtube', 'youtube', 0),
(34, 'Apresentação', 'apresentacao', 0),
(35, 'Instagram', 'instagram', 0),
(36, 'Loja virtual', 'loja-virtual', 0),
(37, 'Viral', 'viral', 0),
(38, 'Influenciadores', 'influenciadores', 0),
(39, 'Gerenciamento', 'gerenciamento', 0),
(40, 'Design', 'design', 0),
(41, 'Redação', 'redacao', 0),
(42, 'Moda', 'moda', 0),
(43, 'Campanhas', 'campanhas', 0),
(44, 'Publicidade', 'publicidade', 0),
(45, 'Vídeos', 'videos', 0),
(46, 'Estratégia', 'estrategia', 0),
(47, 'Marca', 'marca', 0),
(48, 'Fotografia', 'fotografia', 0),
(49, 'Lucas de Paula Lima', 'lucas-de-paula-lima', 0),
(50, 'Marketing', 'marketing', 0),
(51, 'Ana Antoniazzi', 'ana-antoniazzi', 0),
(53, 'Home Slider', 'home-slider', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(45, 53, 0),
(48, 53, 0),
(51, 15, 0),
(52, 15, 0),
(53, 15, 0),
(54, 15, 0),
(55, 16, 0),
(56, 16, 0),
(57, 16, 0),
(61, 15, 0),
(63, 18, 0),
(64, 18, 0),
(65, 18, 0),
(66, 18, 0),
(67, 18, 0),
(68, 19, 0),
(69, 19, 0),
(70, 19, 0),
(71, 19, 0),
(72, 19, 0),
(73, 19, 0),
(74, 19, 0),
(75, 20, 0),
(76, 20, 0),
(77, 20, 0),
(78, 20, 0),
(79, 21, 0),
(80, 21, 0),
(81, 21, 0),
(82, 15, 0),
(83, 15, 0),
(84, 15, 0),
(85, 15, 0),
(86, 15, 0),
(87, 15, 0),
(88, 15, 0),
(89, 15, 0),
(90, 15, 0),
(93, 22, 0),
(97, 2, 0),
(97, 23, 0),
(97, 24, 0),
(97, 25, 0),
(97, 26, 0),
(97, 29, 0),
(97, 30, 0),
(97, 31, 0),
(97, 32, 0),
(97, 33, 0),
(97, 34, 0),
(97, 35, 0),
(97, 36, 0),
(97, 37, 0),
(97, 38, 0),
(97, 39, 0),
(97, 40, 0),
(97, 41, 0),
(97, 42, 0),
(97, 43, 0),
(97, 44, 0),
(97, 45, 0),
(97, 46, 0),
(97, 47, 0),
(97, 48, 0),
(97, 49, 0),
(97, 51, 0),
(119, 2, 0),
(119, 24, 0),
(119, 25, 0),
(119, 26, 0),
(119, 29, 0),
(119, 30, 0),
(119, 31, 0),
(119, 32, 0),
(119, 33, 0),
(119, 34, 0),
(119, 35, 0),
(119, 36, 0),
(119, 37, 0),
(119, 38, 0),
(119, 39, 0),
(119, 40, 0),
(119, 41, 0),
(119, 42, 0),
(119, 43, 0),
(119, 44, 0),
(119, 45, 0),
(119, 46, 0),
(119, 47, 0),
(119, 48, 0),
(119, 49, 0),
(119, 50, 0),
(120, 2, 0),
(120, 23, 0),
(120, 24, 0),
(120, 25, 0),
(120, 26, 0),
(120, 29, 0),
(120, 30, 0),
(120, 31, 0),
(120, 32, 0),
(120, 33, 0),
(120, 34, 0),
(120, 35, 0),
(120, 36, 0),
(120, 37, 0),
(120, 38, 0),
(120, 39, 0),
(120, 40, 0),
(120, 41, 0),
(120, 42, 0),
(120, 43, 0),
(120, 44, 0),
(120, 45, 0),
(120, 46, 0),
(120, 47, 0),
(120, 48, 0),
(120, 49, 0),
(120, 51, 0),
(121, 22, 0),
(127, 22, 0),
(128, 22, 0),
(129, 22, 0),
(130, 22, 0),
(131, 22, 0),
(132, 22, 0),
(133, 22, 0),
(134, 22, 0),
(135, 22, 0),
(136, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'nav_menu', '', 0, 14),
(16, 16, 'nav_menu', '', 0, 3),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'nav_menu', '', 0, 5),
(19, 19, 'nav_menu', '', 0, 7),
(20, 20, 'nav_menu', '', 0, 4),
(21, 21, 'nav_menu', '', 0, 3),
(22, 22, 'professores-category', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor magna, pellentesque a fringilla id, consectetur id mi. Ut vulputate, purus quis commodo vestibulum.', 0, 12),
(23, 23, 'product_cat', '', 0, 2),
(24, 24, 'pa_nivel-conhecimento', '', 0, 3),
(25, 25, 'pa_nivel-conhecimento', '', 0, 3),
(26, 26, 'pa_nivel-conhecimento', '', 0, 3),
(27, 27, 'pa_nivel-conhecimento', '', 0, 0),
(28, 28, 'pa_nivel-conhecimento', '', 0, 0),
(29, 29, 'product_tag', '', 0, 3),
(30, 30, 'product_tag', '', 0, 3),
(31, 31, 'product_tag', '', 0, 3),
(32, 32, 'product_tag', '', 0, 3),
(33, 33, 'product_tag', '', 0, 3),
(34, 34, 'product_tag', '', 0, 3),
(35, 35, 'product_tag', '', 0, 3),
(36, 36, 'product_tag', '', 0, 3),
(37, 37, 'product_tag', '', 0, 3),
(38, 38, 'product_tag', '', 0, 3),
(39, 39, 'product_tag', '', 0, 3),
(40, 40, 'product_tag', '', 0, 3),
(41, 41, 'product_tag', '', 0, 3),
(42, 42, 'product_tag', '', 0, 3),
(43, 43, 'product_tag', '', 0, 3),
(44, 44, 'product_tag', '', 0, 3),
(45, 45, 'product_tag', '', 0, 3),
(46, 46, 'product_tag', '', 0, 3),
(47, 47, 'product_tag', '', 0, 3),
(48, 48, 'product_tag', '', 0, 3),
(49, 49, 'product_tag', '', 0, 3),
(50, 50, 'product_cat', '', 0, 1),
(51, 51, 'product_tag', '', 0, 2),
(53, 53, 'sliders-category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'spds'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"d9aa4556ac2ab4816d78da5274cad849d7731c7c590049cf99413f218e196560";a:4:{s:10:"expiration";i:1520382055;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36";s:5:"login";i:1520209255;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '91'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&professorescategory_tab=pop'),
(20, 1, 'wp_user-settings-time', '1519955383'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(24, 1, 'nav_menu_recently_edited', '15'),
(25, 1, 'closedpostboxes_product', 'a:0:{}'),
(26, 1, 'metaboxhidden_product', 'a:4:{i:0;s:23:"acf-group_5a976db19cc8b";i:1;s:23:"acf-group_5a976db1a4156";i:2;s:10:"postcustom";i:3;s:7:"slugdiv";}'),
(27, 1, 'acf_user_settings', 'a:0:{}'),
(28, 1, 'meta-box-order_product', 'a:4:{s:15:"acf_after_title";s:47:"acf-group_5a976db19cc8b,acf-group_5a976db1a4156";s:4:"side";s:84:"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images";s:6:"normal";s:91:"woocommerce-product-data,postcustom,postexcerpt,acf-group_5a976ddfac891,slugdiv,commentsdiv";s:8:"advanced";s:0:"";}'),
(29, 1, 'screen_layout_product', '2'),
(30, 1, 'hesh_theme', 'material'),
(31, 1, 'hesh_tabSize', '4'),
(32, 1, 'hesh_lineWrapping', '1'),
(33, 1, 'hesh_lineNumbers', '1'),
(34, 1, 'hesh_fontSize', '13'),
(35, 1, 'hesh_lineHeight', '1.5'),
(36, 1, 'hesh_matchBrackets', ''),
(37, 1, 'hesh_matchTags', ''),
(38, 1, 'hesh_highlightSelectionMatches', ''),
(39, 1, 'hesh_autoCloseTags', ''),
(40, 1, 'hesh_autoCloseBrackets', ''),
(41, 1, 'hesh_foldGutter', ''),
(42, 1, 'hesh_scrollbarStyle', ''),
(43, 1, 'hesh_keyMap', 'default'),
(44, 1, 'closedpostboxes_professores', 'a:0:{}'),
(45, 1, 'metaboxhidden_professores', 'a:3:{i:0;s:23:"acf-group_5a976db19cc8b";i:1;s:23:"acf-group_5a976ddfac891";i:2;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'spds', '$P$BsQReeEl9qlZC22trCanE9sVxDTMsC0', 'spds', 'vanssiler.goncalves@gmail.com', '', '2018-01-26 16:39:51', '', 0, 'spds');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'nivel-conhecimento', 'Nível de conhecimento', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(5, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:721:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"SP";s:7:"country";s:2:"BR";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"SP";s:16:"shipping_country";s:2:"BR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:29:"vanssiler.goncalves@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1520382058);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1251;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1205;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
