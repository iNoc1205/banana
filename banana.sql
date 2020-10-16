-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 07:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banana`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20200926_bananaprint', '0c32de9aafd828d42839_20200926003028', 100, '2020-09-26 00:31:10', 'unknown', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-26 00:30:28\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.4.14\";s:10:\"VersionPHP\";s:5:\"7.4.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:20:\"20200926_bananaprint\";s:4:\"Hash\";s:35:\"0c32de9aafd828d42839_20200926003028\";s:8:\"NameHash\";s:56:\"20200926_bananaprint_0c32de9aafd828d42839_20200926003028\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:66:\"20200926_bananaprint_0c32de9aafd828d42839_20200926003028_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"36.30 sec.\";s:7:\"ExeSize\";s:7:\"61.32KB\";s:7:\"ZipSize\";s:7:\"22.61MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:68:\"20200926_bananaprint_0c32de9aafd828d42839_20200926003028_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:22:\"C:/xampp/htdocs/banana\";s:4:\"Size\";i:23704330;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:3349;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:31:\"C:/xampp/htdocs/banana/wp-admin\";i:1;s:41:\"C:/xampp/htdocs/banana/wp-content/uploads\";i:2;s:43:\"C:/xampp/htdocs/banana/wp-content/languages\";i:3;s:40:\"C:/xampp/htdocs/banana/wp-content/themes\";i:4;s:34:\"C:/xampp/htdocs/banana/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:22:\"C:/xampp/htdocs/banana\";i:1;s:33:\"C:/xampp/htdocs/banana/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:34:\"C:/xampp/htdocs/banana/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:70:\"20200926_bananaprint_0c32de9aafd828d42839_20200926003028_installer.php\";s:4:\"Size\";i:62789;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:155329;s:4:\"File\";s:69:\"20200926_bananaprint_0c32de9aafd828d42839_20200926003028_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:13:\"collationList\";a:2:{i:0;s:18:\"utf8mb4_unicode_ci\";i:1;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:6:\"banana\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:14:\"tablesRowCount\";s:3:\"537\";s:16:\"tablesSizeOnDisk\";s:6:\"1.77MB\";s:18:\"varLowerCaseTables\";s:1:\"1\";s:7:\"version\";s:7:\"10.4.14\";s:14:\"versionComment\";s:31:\"mariadb.org binary distribution\";s:18:\"tableWiseRowCounts\";a:13:{s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"0\";s:22:\"wp_duplicator_packages\";s:1:\"1\";s:8:\"wp_links\";s:1:\"0\";s:10:\"wp_options\";s:3:\"159\";s:11:\"wp_postmeta\";s:3:\"275\";s:8:\"wp_posts\";s:2:\"86\";s:21:\"wp_term_relationships\";s:2:\"11\";s:16:\"wp_term_taxonomy\";s:1:\"4\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"4\";s:11:\"wp_usermeta\";s:2:\"27\";s:8:\"wp_users\";s:1:\"1\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:124:\"C:/xampp/htdocs/banana/wp-content/backups-dup-lite/tmp/20200926_bananaprint_0c32de9aafd828d42839_20200926003028_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-26 00:30:28\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.4.14\";s:10:\"VersionPHP\";s:5:\"7.4.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20200926_bananaprint\";s:4:\"Hash\";s:35:\"0c32de9aafd828d42839_20200926003028\";s:8:\"NameHash\";s:56:\"20200926_bananaprint_0c32de9aafd828d42839_20200926003028\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:74;s:8:\"Database\";r:86;s:13:\"BuildProgress\";r:132;}}}'),
(2, '20200926_bananaprint', '89efb40238d1f8c76307_20200928224057', 100, '2020-09-28 22:41:27', 'unknown', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-28 22:40:57\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.4.14\";s:10:\"VersionPHP\";s:5:\"7.4.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:2;s:4:\"Name\";s:20:\"20200926_bananaprint\";s:4:\"Hash\";s:35:\"89efb40238d1f8c76307_20200928224057\";s:8:\"NameHash\";s:56:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:66:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"38.40 sec.\";s:7:\"ExeSize\";s:7:\"61.32KB\";s:7:\"ZipSize\";s:7:\"23.19MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:68:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:22:\"C:/xampp/htdocs/banana\";s:4:\"Size\";i:24312397;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:3375;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:31:\"C:/xampp/htdocs/banana/wp-admin\";i:1;s:41:\"C:/xampp/htdocs/banana/wp-content/uploads\";i:2;s:43:\"C:/xampp/htdocs/banana/wp-content/languages\";i:3;s:40:\"C:/xampp/htdocs/banana/wp-content/themes\";i:4;s:34:\"C:/xampp/htdocs/banana/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:22:\"C:/xampp/htdocs/banana\";i:1;s:33:\"C:/xampp/htdocs/banana/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:34:\"C:/xampp/htdocs/banana/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:70:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057_installer.php\";s:4:\"Size\";i:62789;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:169943;s:4:\"File\";s:69:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:13:\"collationList\";a:2:{i:0;s:18:\"utf8mb4_unicode_ci\";i:1;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:6:\"banana\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:14:\"tablesRowCount\";s:3:\"638\";s:16:\"tablesSizeOnDisk\";s:6:\"1.78MB\";s:18:\"varLowerCaseTables\";s:1:\"1\";s:7:\"version\";s:7:\"10.4.14\";s:14:\"versionComment\";s:31:\"mariadb.org binary distribution\";s:18:\"tableWiseRowCounts\";a:13:{s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"0\";s:22:\"wp_duplicator_packages\";s:1:\"2\";s:8:\"wp_links\";s:1:\"0\";s:10:\"wp_options\";s:3:\"157\";s:11:\"wp_postmeta\";s:3:\"341\";s:8:\"wp_posts\";s:2:\"97\";s:21:\"wp_term_relationships\";s:2:\"11\";s:16:\"wp_term_taxonomy\";s:1:\"4\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"4\";s:11:\"wp_usermeta\";s:2:\"27\";s:8:\"wp_users\";s:1:\"1\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:124:\"C:/xampp/htdocs/banana/wp-content/backups-dup-lite/tmp/20200926_bananaprint_89efb40238d1f8c76307_20200928224057_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-28 22:40:57\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.4.14\";s:10:\"VersionPHP\";s:5:\"7.4.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20200926_bananaprint\";s:4:\"Hash\";s:35:\"89efb40238d1f8c76307_20200928224057\";s:8:\"NameHash\";s:56:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:74;s:8:\"Database\";r:86;s:13:\"BuildProgress\";r:132;}}}');

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://localhost:8012/banana', 'yes'),
(2, 'home', 'http://localhost:8012/banana', 'yes'),
(3, 'blogname', 'Banana Print', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'enoc.villa16@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:155:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:18:\"banana_products/?$\";s:35:\"index.php?post_type=banana_products\";s:48:\"banana_products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=banana_products&feed=$matches[1]\";s:43:\"banana_products/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=banana_products&feed=$matches[1]\";s:35:\"banana_products/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=banana_products&paged=$matches[1]\";s:6:\"faq/?$\";s:23:\"index.php?post_type=faq\";s:36:\"faq/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:31:\"faq/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:23:\"faq/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=faq&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"banana_products/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"banana_products/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"banana_products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"banana_products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"banana_products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"banana_products/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"banana_products/([^/]+)/embed/?$\";s:48:\"index.php?banana_products=$matches[1]&embed=true\";s:36:\"banana_products/([^/]+)/trackback/?$\";s:42:\"index.php?banana_products=$matches[1]&tb=1\";s:56:\"banana_products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?banana_products=$matches[1]&feed=$matches[2]\";s:51:\"banana_products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?banana_products=$matches[1]&feed=$matches[2]\";s:44:\"banana_products/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?banana_products=$matches[1]&paged=$matches[2]\";s:51:\"banana_products/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?banana_products=$matches[1]&cpage=$matches[2]\";s:40:\"banana_products/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?banana_products=$matches[1]&page=$matches[2]\";s:32:\"banana_products/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"banana_products/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"banana_products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"banana_products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"banana_products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"banana_products/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"faq/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"faq/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"faq/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"faq/([^/]+)/embed/?$\";s:36:\"index.php?faq=$matches[1]&embed=true\";s:24:\"faq/([^/]+)/trackback/?$\";s:30:\"index.php?faq=$matches[1]&tb=1\";s:44:\"faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?faq=$matches[1]&feed=$matches[2]\";s:39:\"faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?faq=$matches[1]&feed=$matches[2]\";s:32:\"faq/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&paged=$matches[2]\";s:39:\"faq/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&cpage=$matches[2]\";s:28:\"faq/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?faq=$matches[1]&page=$matches[2]\";s:20:\"faq/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"faq/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"faq/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"product-2/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"product-2/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"product-2/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"product-2/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"product-2/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"product-2/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"product-2/([^/]+)/embed/?$\";s:42:\"index.php?product_2=$matches[1]&embed=true\";s:30:\"product-2/([^/]+)/trackback/?$\";s:36:\"index.php?product_2=$matches[1]&tb=1\";s:38:\"product-2/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?product_2=$matches[1]&paged=$matches[2]\";s:45:\"product-2/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?product_2=$matches[1]&cpage=$matches[2]\";s:34:\"product-2/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?product_2=$matches[1]&page=$matches[2]\";s:26:\"product-2/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"product-2/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"product-2/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"product-2/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"product-2/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"product-2/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:36:\"acf-repeater-master/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:35:\"banana-products/banana-products.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:25:\"duplicator/duplicator.php\";i:6;s:25:\"menu-image/menu-image.php\";i:7;s:23:\"mobile-menu/mobmenu.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-6', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:\"C:\\xampp\\htdocs\\banana/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'banana', 'yes'),
(41, 'stylesheet', 'banana', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:13:\"pods/init.php\";a:2:{i:0;s:8:\"Freemius\";i:1;s:22:\"_uninstall_plugin_hook\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '44', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1613841458', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'es_CR', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1602872270;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602911870;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602955068;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602955115;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602955116;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602955117;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603214268;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598376193;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'finished_updating_comment_type', '1', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(151, 'recently_activated', 'a:4:{s:29:\"acf-repeater/acf-repeater.php\";i:1602820923;s:34:\"advanced-custom-fields-pro/acf.php\";i:1602819347;s:13:\"pods/init.php\";i:1602796655;s:29:\"acf-extended/acf-extended.php\";i:1602796480;}', 'yes'),
(154, 'new_admin_email', 'enoc.villa16@gmail.com', 'yes'),
(164, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"8\",\"critical\":\"0\"}', 'yes'),
(166, 'current_theme', 'Banana', 'yes'),
(167, 'theme_mods_banana', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"left-menu\";i:2;s:11:\"social-menu\";i:4;}s:18:\"custom_css_post_id\";i:41;}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(207, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"enoc.villa16@gmail.com\";s:7:\"version\";s:5:\"5.5.1\";s:9:\"timestamp\";i:1599509196;}', 'no'),
(222, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(223, 'recovery_mode_email_last_sent', '1602783750', 'yes'),
(235, 'category_children', 'a:0:{}', 'yes'),
(244, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:2:{s:19:\"menu-image/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"2.4.0.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1599598405;s:11:\"plugin_path\";s:25:\"menu-image/menu-image.php\";}s:20:\"mobile-menu/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"2.4.0.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1602789523;s:11:\"plugin_path\";s:23:\"mobile-menu/mobmenu.php\";}}s:7:\"abspath\";s:23:\"C:\\xampp\\htdocs\\banana/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:25:\"menu-image/menu-image.php\";s:8:\"sdk_path\";s:19:\"menu-image/freemius\";s:7:\"version\";s:7:\"2.4.0.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1602796655;}}', 'yes'),
(245, 'fs_debug_mode', '', 'yes'),
(246, 'fs_accounts', 'a:7:{s:21:\"id_slug_type_path_map\";a:3:{i:4123;a:3:{s:4:\"slug\";s:10:\"menu-image\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"menu-image/menu-image.php\";}i:235;a:3:{s:4:\"slug\";s:11:\"mobile-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}i:5347;a:2:{s:4:\"slug\";s:4:\"pods\";s:4:\"type\";s:6:\"plugin\";}}s:11:\"plugin_data\";a:3:{s:10:\"menu-image\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"menu-image/menu-image.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1599598405;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:7:\"2.4.0.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.9.7\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8012\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1599598405;s:7:\"version\";s:5:\"2.9.7\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1599598465;s:7:\"version\";s:5:\"2.9.7\";}}s:11:\"mobile-menu\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1600875850;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:7:\"2.4.0.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:7:\"2.8.1.4\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8012\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1600875850;s:7:\"version\";s:7:\"2.8.1.4\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1600875859;s:7:\"version\";s:7:\"2.8.1.4\";}s:21:\"trial_promotion_shown\";i:1600968527;}s:4:\"pods\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:9:\"prev_path\";s:13:\"pods/init.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1602690972;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:7:\"2.4.0.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"2.7.22\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8012\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1602690972;s:7:\"version\";s:6:\"2.7.22\";}s:15:\"prev_is_premium\";b:0;}}s:13:\"file_slug_map\";a:3:{s:25:\"menu-image/menu-image.php\";s:10:\"menu-image\";s:23:\"mobile-menu/mobmenu.php\";s:11:\"mobile-menu\";s:13:\"pods/init.php\";s:4:\"pods\";}s:7:\"plugins\";a:3:{s:10:\"menu-image\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:10:\"Menu Image\";s:4:\"slug\";s:10:\"menu-image\";s:12:\"premium_slug\";s:18:\"menu-image-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"menu-image/menu-image.php\";s:7:\"version\";s:5:\"2.9.7\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1a1cac31f5af1ba3d31bd86fe0e8b\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"4123\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:11:\"mobile-menu\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Mobile Menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:12:\"premium_slug\";s:19:\"mobile-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:23:\"mobile-menu/mobmenu.php\";s:7:\"version\";s:7:\"2.8.1.4\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:7:\"Premium\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1ec93edfb66875251b62505b96489\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"235\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:4:\"pods\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:38:\"Pods - Custom Content Types and Fields\";s:4:\"slug\";s:4:\"pods\";s:12:\"premium_slug\";s:12:\"pods-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:13:\"pods/init.php\";s:7:\"version\";s:6:\"2.7.22\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_737105490825babae220297e18920\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5347\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"1dd64ce7dc9125e67a5a9fe7e9bf92dc\";s:13:\"admin_notices\";a:2:{s:11:\"mobile-menu\";a:0:{}s:4:\"pods\";a:0:{}}s:6:\"addons\";a:1:{i:5347;a:5:{i:0;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"5347\";s:5:\"title\";s:22:\"Pods Alternative Cache\";s:4:\"slug\";s:22:\"pods-alternative-cache\";s:12:\"premium_slug\";s:33:\"pods-simple-relationships-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:0;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"5348\";s:11:\"description\";N;s:17:\"short_description\";s:124:\"Alternative caching engine for Pods for large sites on hosts with hard limits on how much you can store in the object cache.\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5348/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5348/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1352\";s:7:\"updated\";s:19:\"2020-03-18 23:02:11\";s:7:\"created\";s:19:\"2020-01-16 15:38:46\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_c51e7ff51e827ecaddb23664c050d\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5348\";s:7:\"updated\";s:19:\"2020-10-07 18:58:48\";s:7:\"created\";s:19:\"2020-01-16 15:35:45\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"5347\";s:5:\"title\";s:18:\"Pods Beaver Themer\";s:4:\"slug\";s:33:\"pods-beaver-builder-themer-add-on\";s:12:\"premium_slug\";s:41:\"pods-beaver-builder-themer-add-on-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:0;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"5349\";s:11:\"description\";N;s:17:\"short_description\";s:94:\"Integration with Beaver Builder Themer. Provides a UI for mapping Field Connections with Pods.\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5349/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5349/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1503\";s:7:\"updated\";s:19:\"2020-03-23 13:29:21\";s:7:\"created\";s:19:\"2020-03-18 16:27:22\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_d8a10a25a662419add4ff3fbcc493\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5349\";s:7:\"updated\";s:19:\"2020-10-13 11:50:31\";s:7:\"created\";s:19:\"2020-01-16 15:37:32\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"5347\";s:5:\"title\";s:8:\"Pods SEO\";s:4:\"slug\";s:8:\"pods-seo\";s:12:\"premium_slug\";s:16:\"pods-seo-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:0;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"5753\";s:11:\"description\";s:0:\"\";s:17:\"short_description\";s:114:\"Integrates with WP SEO Analysis for custom fields and Pods Advanced Content Types with WordPress SEO XML Sitemaps.\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5753/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5753/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1505\";s:7:\"updated\";s:19:\"2020-03-18 23:05:03\";s:7:\"created\";s:19:\"2020-03-18 16:41:19\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_46fa00cfe39af82dd1ed03033bea4\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5753\";s:7:\"updated\";s:19:\"2020-10-13 19:10:13\";s:7:\"created\";s:19:\"2020-03-18 16:30:02\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:3;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"5347\";s:5:\"title\";s:18:\"Pods Gravity Forms\";s:4:\"slug\";s:18:\"pods-gravity-forms\";s:12:\"premium_slug\";s:26:\"pods-gravity-forms-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:0;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"5754\";s:11:\"description\";N;s:17:\"short_description\";s:90:\"Integration with Gravity Forms. Provides a UI for mapping a Form\'s submissions into a Pod.\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5754/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5754/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1506\";s:7:\"updated\";s:19:\"2020-03-23 13:27:45\";s:7:\"created\";s:19:\"2020-03-18 22:53:21\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1aaaee6bf8963f2077405e84f2ac5\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5754\";s:7:\"updated\";s:19:\"2020-10-15 14:10:04\";s:7:\"created\";s:19:\"2020-03-18 16:40:29\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:4;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:4:\"5347\";s:5:\"title\";s:15:\"Pods AJAX Views\";s:4:\"slug\";s:15:\"pods-ajax-views\";s:12:\"premium_slug\";s:23:\"pods-ajax-views-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:0;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"5755\";s:11:\"description\";N;s:17:\"short_description\";s:81:\"An easy way to generate cached views from AJAX when they haven\'t been cached yet.\";s:10:\"banner_url\";s:61:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5755/banner.png\";s:15:\"card_banner_url\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/5755/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:4:\"1507\";s:7:\"updated\";s:19:\"2020-03-18 23:00:49\";s:7:\"created\";s:19:\"2020-03-18 22:54:20\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_8606e36bd5153a1faf1e041342634\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5755\";s:7:\"updated\";s:19:\"2020-10-13 19:07:11\";s:7:\"created\";s:19:\"2020-03-18 16:43:04\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}}', 'yes'),
(247, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(248, 'fs_api_cache', 'a:0:{}', 'no'),
(251, 'menu_image_size_1', '26x26', 'yes'),
(252, 'menu_image_size_2', '36x36', 'yes'),
(253, 'menu_image_size_3', '48x48', 'yes'),
(254, 'menu_image_hover', '1', 'yes'),
(385, 'acf_version', '5.9.1', 'yes'),
(411, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"es_CR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602870299;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(413, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602870302;s:7:\"checked\";a:1:{s:6:\"banana\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(414, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1600807162;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(416, 'secret_key', 'Xm:Zc_C6[wK2Zr1awF`+h6r-d9GdGf^*0(6jn&S(})A=o5kM5(^(y!n6.@GYmjJQ', 'no'),
(431, 'mobmenu_latest_update_version', '2.8.1.4', 'yes'),
(432, 'mobmenu_options', 's:3429:\"a:86:{s:16:\"c03f36469558a0e0\";s:0:\"\";s:21:\"enabled_sticky_header\";s:1:\"1\";s:20:\"enabled_naked_header\";s:1:\"0\";s:18:\"disabled_logo_text\";s:1:\"0\";s:16:\"f6894ce9bb6f22fc\";s:0:\"\";s:13:\"header_shadow\";s:1:\"1\";s:13:\"header_height\";s:2:\"50\";s:11:\"header_text\";s:0:\"\";s:17:\"header_text_align\";s:6:\"center\";s:23:\"header_text_left_margin\";s:2:\"20\";s:24:\"header_text_right_margin\";s:2:\"20\";s:16:\"14a7409fee222344\";s:0:\"\";s:12:\"enabled_logo\";s:1:\"0\";s:15:\"header_branding\";s:4:\"logo\";s:8:\"logo_img\";s:2:\"92\";s:11:\"logo_height\";s:2:\"25\";s:15:\"logo_img_retina\";s:0:\"\";s:17:\"disabled_logo_url\";s:1:\"0\";s:8:\"logo_url\";s:0:\"\";s:15:\"logo_top_margin\";s:2:\"13\";s:16:\"aa60e3d5fe704267\";s:0:\"\";s:16:\"enable_left_menu\";s:1:\"0\";s:9:\"left_menu\";s:0:\"\";s:17:\"enable_right_menu\";s:1:\"1\";s:10:\"right_menu\";s:8:\"Left Bar\";s:16:\"55e89d9a7f740b76\";s:0:\"\";s:13:\"width_trigger\";s:4:\"1024\";s:16:\"edc117863e7ad302\";s:0:\"\";s:19:\"only_mobile_devices\";s:1:\"0\";s:17:\"only_testing_mode\";s:1:\"0\";s:16:\"dde6c32f06c5caf8\";s:0:\"\";s:16:\"428234e58be7b887\";s:0:\"\";s:13:\"hide_elements\";s:0:\"\";s:22:\"default_hided_elements\";s:198:\"a:15:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:2:\"10\";i:10;s:2:\"11\";i:11;s:2:\"12\";i:12;s:2:\"13\";i:13;s:2:\"14\";i:14;s:2:\"15\";}\";s:16:\"eb4218389e2d7f1a\";s:0:\"\";s:17:\"menu_display_type\";s:13:\"slideout-over\";s:18:\"autoclose_submenus\";s:1:\"0\";s:22:\"menu_items_border_size\";s:1:\"0\";s:15:\"close_icon_font\";s:8:\"cancel-1\";s:20:\"close_icon_font_size\";s:2:\"30\";s:22:\"submenu_open_icon_font\";s:9:\"down-open\";s:23:\"submenu_close_icon_font\";s:7:\"up-open\";s:22:\"submenu_icon_font_size\";s:2:\"25\";s:16:\"967bcf13a38e2bab\";s:0:\"\";s:17:\"cache_dynamic_css\";s:1:\"0\";s:15:\"sticky_elements\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:9:\"custom_js\";s:0:\"\";s:16:\"7a9dbb4c45fde28a\";s:0:\"\";s:16:\"6ac253251e631bc4\";s:0:\"\";s:16:\"d82aab16c3557b41\";s:0:\"\";s:16:\"53f2817c7eea9607\";s:0:\"\";s:16:\"overlay_bg_color\";s:19:\"rgba(0, 0, 0, 0.83)\";s:23:\"menu_items_border_color\";s:19:\"rgba(0, 0, 0, 0.83)\";s:16:\"cfe42b8d91c3ea0b\";s:0:\"\";s:15:\"header_bg_color\";s:7:\"#231f20\";s:17:\"header_text_color\";s:4:\"#FFF\";s:16:\"2a4ff950f8777f71\";s:0:\"\";s:20:\"left_menu_icon_color\";s:4:\"#FFF\";s:22:\"header_text_after_icon\";s:4:\"#222\";s:19:\"left_panel_bg_color\";s:7:\"#F7F7F7\";s:21:\"left_panel_text_color\";s:4:\"#666\";s:24:\"left_panel_hover_bgcolor\";s:4:\"#666\";s:27:\"left_panel_hover_text_color\";s:4:\"#FFF\";s:26:\"left_panel_submenu_bgcolor\";s:7:\"#3a3a3a\";s:29:\"left_panel_submenu_text_color\";s:4:\"#fff\";s:30:\"left_panel_cancel_button_color\";s:7:\"#0a0a0a\";s:16:\"122cf101513b7c04\";s:0:\"\";s:21:\"right_menu_icon_color\";s:4:\"#FFF\";s:23:\"header_text_before_icon\";s:4:\"#222\";s:20:\"right_panel_bg_color\";s:7:\"#e7025a\";s:22:\"right_panel_text_color\";s:7:\"#0a0a0a\";s:25:\"right_panel_hover_bgcolor\";s:4:\"#666\";s:28:\"right_panel_hover_text_color\";s:4:\"#FFF\";s:27:\"right_panel_submenu_bgcolor\";s:7:\"#3a3a3a\";s:30:\"right_panel_submenu_text_color\";s:4:\"#fff\";s:31:\"right_panel_cancel_button_color\";s:7:\"#0a0a0a\";s:16:\"2942cfa338633fe0\";s:0:\"\";s:30:\"left_panel_3rd_menu_text_color\";s:4:\"#fff\";s:36:\"left_panel_3rd_menu_text_color_hover\";s:4:\"#ccc\";s:28:\"left_panel_3rd_menu_bg_color\";s:4:\"#222\";s:34:\"left_panel_3rd_menu_bg_color_hover\";s:4:\"#666\";s:31:\"right_panel_3rd_menu_text_color\";s:4:\"#fff\";s:37:\"right_panel_3rd_menu_text_color_hover\";s:4:\"#ccc\";s:29:\"right_panel_3rd_menu_bg_color\";s:4:\"#222\";s:35:\"right_panel_3rd_menu_bg_color_hover\";s:4:\"#666\";}\";', 'yes'),
(455, 'wp_mobile_menu_banner_dismissed', 'yes', 'yes'),
(474, 'duplicator_settings', 'a:17:{s:7:\"version\";s:6:\"1.3.38\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:2;}', 'yes'),
(475, 'duplicator_lite_inst_hash_notice', '1', 'yes'),
(476, 'duplicator_version_plugin', '1.3.38', 'yes'),
(477, 'duplicator_ui_view_state', 'a:3:{s:24:\"dup-pack-installer-panel\";s:1:\"1\";s:22:\"dup-pack-storage-panel\";s:1:\"0\";s:22:\"dup-pack-archive-panel\";s:1:\"0\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(478, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-28 22:40:57\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.4.14\";s:10:\"VersionPHP\";s:5:\"7.4.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20200926_bananaprint\";s:4:\"Hash\";s:35:\"89efb40238d1f8c76307_20200928224057\";s:8:\"NameHash\";s:56:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:66:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:22:\"C:/xampp/htdocs/banana\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-09-28 22:40:57\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:7:\"10.4.14\";s:10:\"VersionPHP\";s:5:\"7.4.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20200926_bananaprint\";s:4:\"Hash\";s:35:\"89efb40238d1f8c76307_20200928224057\";s:8:\"NameHash\";s:56:\"20200926_bananaprint_89efb40238d1f8c76307_20200928224057\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:61;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:31:\"C:/xampp/htdocs/banana/wp-admin\";i:1;s:41:\"C:/xampp/htdocs/banana/wp-content/uploads\";i:2;s:43:\"C:/xampp/htdocs/banana/wp-content/languages\";i:3;s:40:\"C:/xampp/htdocs/banana/wp-content/themes\";i:4;s:34:\"C:/xampp/htdocs/banana/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:22:\"C:/xampp/htdocs/banana\";i:1;s:33:\"C:/xampp/htdocs/banana/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:94;s:13:\"BuildProgress\";r:124;}', 'yes'),
(560, 'text_example', 'Hola como estás?', 'yes'),
(575, 'first_name', 'Panchito', 'yes'),
(587, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1603214891', 'no'),
(588, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(614, 'pods_component_settings', '{\"components\":{\"templates\":[]}}', 'yes'),
(615, 'pods_framework_version', '2.7.22', 'yes'),
(616, 'pods_framework_db_version', '2.3.5', 'yes'),
(628, 'widget_pods_widget_single', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(629, 'widget_pods_widget_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(630, 'widget_pods_widget_field', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(631, 'widget_pods_widget_form', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(632, 'widget_pods_widget_view', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(738, '_transient_pods_pods_flush_rewrites-2.7.22', '1', 'yes'),
(746, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1602870299;s:8:\"response\";a:1:{s:36:\"acf-repeater-master/acf-repeater.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:12:\"acf-repeater\";s:6:\"plugin\";s:36:\"acf-repeater-master/acf-repeater.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:36:\"http://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.0\";s:7:\"package\";s:183:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicmVwZWF0ZXIiLCJrIjoiUUpGNy1MNElYLVVDTlAtUkYyVyIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDEyXC9iYW5hbmEifQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.3.38\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.3.38.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"menu-image/menu-image.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/menu-image\";s:4:\"slug\";s:10:\"menu-image\";s:6:\"plugin\";s:25:\"menu-image/menu-image.php\";s:11:\"new_version\";s:5:\"2.9.7\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/menu-image/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/menu-image.2.9.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/menu-image/assets/icon-128x128.png?rev=2123398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/menu-image/assets/banner-772x250.png?rev=2125369\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"mobile-menu/mobmenu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/mobile-menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:6:\"plugin\";s:23:\"mobile-menu/mobmenu.php\";s:11:\"new_version\";s:7:\"2.8.1.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/mobile-menu/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/mobile-menu.2.8.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/mobile-menu/assets/icon-128x128.png?rev=1890426\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/mobile-menu/assets/banner-772x250.jpg?rev=1976792\";}s:11:\"banners_rtl\";a:0:{}}s:13:\"pods/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:18:\"w.org/plugins/pods\";s:4:\"slug\";s:4:\"pods\";s:6:\"plugin\";s:13:\"pods/init.php\";s:11:\"new_version\";s:6:\"2.7.22\";s:3:\"url\";s:35:\"https://wordpress.org/plugins/pods/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/pods.2.7.22.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:57:\"https://ps.w.org/pods/assets/icon-256x256.png?rev=1667333\";s:2:\"1x\";s:49:\"https://ps.w.org/pods/assets/icon.svg?rev=1667333\";s:3:\"svg\";s:49:\"https://ps.w.org/pods/assets/icon.svg?rev=1667333\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:59:\"https://ps.w.org/pods/assets/banner-772x250.png?rev=1667333\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(749, '_site_transient_timeout_browser_44a5e524f134e3228c7b0b16c2224ffc', '1603421282', 'no'),
(750, '_site_transient_browser_44a5e524f134e3228c7b0b16c2224ffc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.75\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(753, '_site_transient_timeout_browser_e0b7751b8040fb7c8de50ddf95d10645', '1603423028', 'no'),
(754, '_site_transient_browser_e0b7751b8040fb7c8de50ddf95d10645', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"64.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(758, '_site_transient_timeout_theme_roots', '1602872100', 'no'),
(759, '_site_transient_theme_roots', 'a:1:{s:6:\"banana\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_podsrel`
--

CREATE TABLE `wp_podsrel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pod_id` int(10) UNSIGNED DEFAULT NULL,
  `field_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `related_pod_id` int(10) UNSIGNED DEFAULT NULL,
  `related_field_id` int(10) UNSIGNED DEFAULT NULL,
  `related_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` smallint(5) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 8, '_edit_lock', '1599515002:1'),
(14, 8, '_edit_last', '1'),
(15, 13, '_edit_last', '1'),
(16, 13, '_edit_lock', '1601345525:1'),
(17, 13, '_wp_page_template', 'aboutus.php'),
(18, 16, '_menu_item_type', 'post_type'),
(19, 16, '_menu_item_menu_item_parent', '0'),
(20, 16, '_menu_item_object_id', '8'),
(21, 16, '_menu_item_object', 'page'),
(22, 16, '_menu_item_target', ''),
(23, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 16, '_menu_item_xfn', ''),
(25, 16, '_menu_item_url', ''),
(27, 17, '_menu_item_type', 'post_type'),
(28, 17, '_menu_item_menu_item_parent', '0'),
(29, 17, '_menu_item_object_id', '13'),
(30, 17, '_menu_item_object', 'page'),
(31, 17, '_menu_item_target', ''),
(32, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 17, '_menu_item_xfn', ''),
(34, 17, '_menu_item_url', ''),
(36, 18, '_edit_last', '1'),
(37, 18, '_edit_lock', '1602690261:1'),
(49, 22, '_menu_item_type', 'custom'),
(50, 22, '_menu_item_menu_item_parent', '0'),
(51, 22, '_menu_item_object_id', '22'),
(52, 22, '_menu_item_object', 'custom'),
(53, 22, '_menu_item_target', ''),
(54, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 22, '_menu_item_xfn', ''),
(56, 22, '_menu_item_url', 'https://www.facebook.com/xbananacr/'),
(58, 23, '_wp_attached_file', '2020/09/facebook.png'),
(59, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:20:\"2020/09/facebook.png\";s:5:\"sizes\";a:1:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"facebook-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 23, '_wp_attachment_image_alt', 'Facebook Logo'),
(61, 22, '_thumbnail_id', '23'),
(62, 24, '_wp_attached_file', '2020/09/facebook-hover.png'),
(63, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:26:\"2020/09/facebook-hover.png\";s:5:\"sizes\";a:1:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:24:\"facebook-hover-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 24, '_wp_attachment_image_alt', ''),
(65, 22, '_thumbnail_hover_id', '24'),
(66, 22, '_menu_item_image_size', 'menu-36x36'),
(67, 22, '_menu_item_image_title_position', 'hide'),
(68, 25, '_menu_item_type', 'custom'),
(69, 25, '_menu_item_menu_item_parent', '0'),
(70, 25, '_menu_item_object_id', '25'),
(71, 25, '_menu_item_object', 'custom'),
(72, 25, '_menu_item_target', ''),
(73, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 25, '_menu_item_xfn', ''),
(75, 25, '_menu_item_url', 'https://www.instagram.com/bananacr/'),
(77, 26, '_wp_attached_file', '2020/09/insta.png'),
(78, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:17:\"2020/09/insta.png\";s:5:\"sizes\";a:1:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"insta-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 26, '_wp_attachment_image_alt', 'Instagram Logo'),
(80, 25, '_thumbnail_id', '26'),
(81, 27, '_wp_attached_file', '2020/09/insta-hover.png'),
(82, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:23:\"2020/09/insta-hover.png\";s:5:\"sizes\";a:1:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:21:\"insta-hover-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 27, '_wp_attachment_image_alt', ''),
(84, 25, '_thumbnail_hover_id', '27'),
(85, 25, '_menu_item_image_size', 'menu-36x36'),
(86, 25, '_menu_item_image_title_position', 'hide'),
(87, 28, '_edit_last', '1'),
(88, 28, '_edit_lock', '1601071356:1'),
(89, 28, '_wp_page_template', 'contact.php'),
(90, 30, '_menu_item_type', 'post_type'),
(91, 30, '_menu_item_menu_item_parent', '0'),
(92, 30, '_menu_item_object_id', '28'),
(93, 30, '_menu_item_object', 'page'),
(94, 30, '_menu_item_target', ''),
(95, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 30, '_menu_item_xfn', ''),
(97, 30, '_menu_item_url', ''),
(99, 31, '_wp_attached_file', '2020/09/email.png'),
(100, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:17:\"2020/09/email.png\";s:5:\"sizes\";a:1:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"email-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 31, '_wp_attachment_image_alt', 'Redireccionar página de Contacto'),
(102, 30, '_thumbnail_id', '31'),
(103, 32, '_wp_attached_file', '2020/09/email-hover.png'),
(104, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:23:\"2020/09/email-hover.png\";s:5:\"sizes\";a:1:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:21:\"email-hover-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 32, '_wp_attachment_image_alt', ''),
(106, 30, '_thumbnail_hover_id', '32'),
(107, 30, '_menu_item_image_size', 'menu-36x36'),
(108, 30, '_menu_item_image_title_position', 'hide'),
(109, 33, '_menu_item_type', 'post_type'),
(110, 33, '_menu_item_menu_item_parent', '0'),
(111, 33, '_menu_item_object_id', '28'),
(112, 33, '_menu_item_object', 'page'),
(113, 33, '_menu_item_target', ''),
(114, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 33, '_menu_item_xfn', ''),
(116, 33, '_menu_item_url', ''),
(118, 16, '_menu_item_image_size', 'menu-36x36'),
(119, 16, '_menu_item_image_title_position', 'after'),
(122, 17, '_menu_item_image_size', 'menu-36x36'),
(123, 17, '_menu_item_image_title_position', 'after'),
(124, 33, '_menu_item_image_size', 'menu-36x36'),
(125, 33, '_menu_item_image_title_position', 'after'),
(126, 34, '_edit_last', '1'),
(127, 34, '_wp_page_template', 'services.php'),
(128, 34, '_edit_lock', '1601075204:1'),
(129, 36, '_edit_last', '1'),
(130, 36, '_wp_page_template', 'default'),
(131, 36, '_edit_lock', '1599778472:1'),
(141, 39, '_menu_item_type', 'post_type'),
(142, 39, '_menu_item_menu_item_parent', '0'),
(143, 39, '_menu_item_object_id', '34'),
(144, 39, '_menu_item_object', 'page'),
(145, 39, '_menu_item_target', ''),
(146, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 39, '_menu_item_xfn', ''),
(148, 39, '_menu_item_url', ''),
(150, 39, '_menu_item_image_size', 'menu-36x36'),
(151, 39, '_menu_item_image_title_position', 'after'),
(156, 43, '_wp_attached_file', '2020/09/icon.png'),
(157, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2020/09/icon.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-26x26\";a:4:{s:4:\"file\";s:14:\"icon-26x26.png\";s:5:\"width\";i:26;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"icon-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:14:\"icon-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 44, '_wp_attached_file', '2020/09/cropped-icon.png'),
(159, 44, '_wp_attachment_context', 'site-icon'),
(160, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2020/09/cropped-icon.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-26x26\";a:4:{s:4:\"file\";s:22:\"cropped-icon-26x26.png\";s:5:\"width\";i:26;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:22:\"cropped-icon-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:22:\"cropped-icon-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-icon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-icon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-icon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-icon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 46, '_edit_last', '1'),
(165, 46, '_edit_lock', '1599778598:1'),
(166, 46, '_wp_page_template', 'productos.php'),
(167, 48, '_menu_item_type', 'post_type'),
(168, 48, '_menu_item_menu_item_parent', '0'),
(169, 48, '_menu_item_object_id', '46'),
(170, 48, '_menu_item_object', 'page'),
(171, 48, '_menu_item_target', ''),
(172, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 48, '_menu_item_xfn', ''),
(174, 48, '_menu_item_url', ''),
(176, 48, '_menu_item_image_size', 'menu-36x36'),
(177, 48, '_menu_item_image_title_position', 'after'),
(178, 50, '_edit_last', '1'),
(179, 50, '_edit_lock', '1600356082:1'),
(180, 50, '_wp_page_template', 'single.php'),
(181, 53, '_edit_last', '1'),
(182, 53, '_edit_lock', '1600373921:1'),
(183, 53, '_wp_page_template', 'cart.php'),
(184, 55, '_menu_item_type', 'post_type'),
(185, 55, '_menu_item_menu_item_parent', '0'),
(186, 55, '_menu_item_object_id', '53'),
(187, 55, '_menu_item_object', 'page'),
(188, 55, '_menu_item_target', ''),
(189, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 55, '_menu_item_xfn', ''),
(191, 55, '_menu_item_url', ''),
(193, 55, '_menu_item_image_size', 'menu-36x36'),
(194, 55, '_menu_item_image_title_position', 'after'),
(195, 57, '_edit_last', '1'),
(196, 57, '_edit_lock', '1600813619:1'),
(197, 28, 'direccion', '75 Sur Plaza Villa Herrera, San Isidro de<br />El General, Pérez Zeledón.'),
(198, 28, '_direccion', 'field_5f6924edd8906'),
(199, 28, 'telefono', '2770-4369 / 8522-6262'),
(200, 28, '_telefono', 'field_5f6926093b830'),
(201, 60, 'direccion', '75 Sur Plaza Villa Herrera, San Isidro de<br />El General, Pérez Zeledón.'),
(202, 60, '_direccion', 'field_5f6924edd8906'),
(203, 60, 'telefono', '0'),
(204, 60, '_telefono', 'field_5f6926093b830'),
(205, 61, 'direccion', '75 Sur Plaza Villa Herrera, San Isidro de<br />El General, Pérez Zeledón.'),
(206, 61, '_direccion', 'field_5f6924edd8906'),
(207, 61, 'telefono', '2770-4369 / 8522-6262'),
(208, 61, '_telefono', 'field_5f6926093b830'),
(209, 62, '_edit_last', '1'),
(210, 62, '_edit_lock', '1602817193:1'),
(211, 13, 'bananeidad', 'Es algo que adquieren los miembros de Banana, pero que sólo despierta fuertemente en algunos, aunque de algún modo todos lo tienen. No sé puede describir, solo sentir. Es similar a compañerismo, combinado con amistad, con ocurrencia, aleatoriedad, espontaneidad y un toquecito de vainilla.'),
(212, 13, '_bananeidad', 'field_5f6929dfda044'),
(213, 13, 'valores', 'Calidad - Eficiencia - Diseño - Aliados - Marcas - Crea - Sin mínimos - Talento - Asesoría'),
(214, 13, '_valores', 'field_5f692accda045'),
(215, 13, 'productos_servicios', 'Las tarjetas de presentación, los afiches, los volantes y los stickers son unos de los productos estrella que se ofrecen, pero mientras exista la posibilidad de crear algo a partir de una impresión, todo se puede hacer. La creatividad es ilimitada en este espacio, por lo que se le traspasa a los clientes a través de diseños hechos para la identidad de cada uno. Más allá de realizar impresiones y confeccionar diseños, en Banana se aseguran de brindar asesoría y dar recomendaciones a las necesidades de sus clientes, de modo que se ahorre tiempo y dinero en el proceso, además de fortalecer relaciones con quienes llegan a este lugar.'),
(216, 13, '_productos_servicios', 'field_5f692b56da046'),
(217, 13, 'escenario', 'Ubicados en Pérez Zeledón, pero con muchas ganas de expandir nuestro servicio en los alrededores, se dedican a la atención de personas y empresas a quienes les ayudan con la promoción de sus productos y a darles una identidad.'),
(218, 13, '_escenario', 'field_5f692bdada047'),
(219, 13, 'hobbies', 'La música, ejercicio, la comida y la comunicación, son algunos de los pasatiempos favoritos de Ban y Ana. Les gusta aprender a hacer los trabajos de forma distinta siempre, así como ayudarle a innovar a los clientes. El buen humor y el café son parte esencial de una actitud agradable para dar la mejor atención posible a los que necesitan de ellos.'),
(220, 13, '_hobbies', 'field_5f692c28da048'),
(221, 68, 'bananeidad', 'Es algo que adquieren los miembros de Banana, pero que sólo despierta fuertemente en algunos, aunque de algún modo todos lo tienen. No sé puede describir, solo sentir. Es similar a compañerismo, combinado con amistad, con ocurrencia, aleatoriedad, espontaneidad y un toquecito de vainilla.'),
(222, 68, '_bananeidad', 'field_5f6929dfda044'),
(223, 68, 'valores', 'Calidad - Eficiencia - Diseño - Aliados - Marcas - Crea - Sin mínimos - Talento - Asesoría'),
(224, 68, '_valores', 'field_5f692accda045'),
(225, 68, 'productos_servicios', 'Las tarjetas de presentación, los afiches, los volantes y los stickers son unos de los productos estrella que se ofrecen, pero mientras exista la posibilidad de crear algo a partir de una impresión, todo se puede hacer. La creatividad es ilimitada en este espacio, por lo que se le traspasa a los clientes a través de diseños hechos para la identidad de cada uno. Más allá de realizar impresiones y confeccionar diseños, en Banana se aseguran de brindar asesoría y dar recomendaciones a las necesidades de sus clientes, de modo que se ahorre tiempo y dinero en el proceso, además de fortalecer relaciones con quienes llegan a este lugar.'),
(226, 68, '_productos_servicios', 'field_5f692b56da046'),
(227, 68, 'escenario', 'Ubicados en Pérez Zeledón, pero con muchas ganas de expandir nuestro servicio en los alrededores, se dedican a la atención de personas y empresas a quienes les ayudan con la promoción de sus productos y a darles una identidad.'),
(228, 68, '_escenario', 'field_5f692bdada047'),
(229, 68, 'hobbies', 'La música, ejercicio, la comida y la comunicación, son algunos de los pasatiempos favoritos de Ban y Ana. Les gusta aprender a hacer los trabajos de forma distinta siempre, así como ayudarle a innovar a los clientes. El buen humor y el café son parte esencial de una actitud agradable para dar la mejor atención posible a los que necesitan de ellos.'),
(230, 68, '_hobbies', 'field_5f692c28da048'),
(231, 70, '_edit_last', '1'),
(232, 70, '_edit_lock', '1600875138:1'),
(233, 34, 'impresiones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lorem mi, pellentesque nec quam vitae, molestie congue odio. Duis accumsan, risus vitae venenatis scelerisque, nisi magna congue quam, nec consectetur purus orci sed tellus. Aliquam erat volutpat. Nulla a consectetur nisl. Sed tempor ullamcorper ipsum non pulvinar. Curabitur porta dui neque, sit amet sollicitudin erat placerat sed. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vitae urna luctus, accumsan augue quis, commodo felis. Pellentesque ullamcorper sollicitudin dictum. Integer sodales tristique dolor vitae venenatis. Proin egestas augue augue, cursus mollis ligula varius dignissim.\r\n\r\nNam a nisl massa. Nulla in velit augue. Aliquam et massa non nibh eleifend porttitor. Aliquam vitae dui ex. Suspendisse sollicitudin velit in lorem facilisis viverra. Maecenas gravida dui non metus pulvinar auctor. Morbi nec nibh eget lorem sollicitudin malesuada sit amet et leo. Etiam id lacus vel risus pellentesque iaculis. Suspendisse dignissim gravida velit in tincidunt. Phasellus magna quam, ultrices et lorem eget, eleifend tempor turpis. Integer et mauris sit amet nulla hendrerit pulvinar. Vestibulum aliquet velit sit amet augue porttitor, id sagittis urna pellentesque. In hac habitasse platea dictumst. In tincidunt accumsan dictum. Aenean pellentesque vestibulum libero, eu tristique neque rutrum et.'),
(234, 34, '_impresiones', 'field_5f692ff6421cd'),
(235, 34, 'disenos', 'Integer lorem nulla, faucibus nec neque et, luctus elementum ante. Fusce eu nibh odio. Mauris tristique, lectus nec congue laoreet, nisi enim gravida orci, varius vehicula odio odio sit amet nisi. Etiam eget feugiat quam. Morbi sed interdum magna. Sed suscipit laoreet dapibus. Phasellus quis efficitur ante, eu dapibus diam. Aenean pharetra purus ac nunc finibus congue. Aliquam ut mollis ipsum. Etiam ut egestas dui. Cras accumsan ipsum nibh, et consectetur dolor molestie ac. Nulla bibendum ipsum felis, id tempor dui ornare eu. Etiam sed molestie leo. Etiam mollis odio dignissim odio bibendum, nec sollicitudin ante convallis. Pellentesque accumsan nulla sit amet lectus finibus consectetur. Curabitur justo orci, rutrum a magna at, euismod aliquet sapien.'),
(236, 34, '_disenos', 'field_5f693072421ce'),
(237, 34, 'community_manager', 'Duis sed rutrum velit. Ut posuere libero vel elit vestibulum, ac ornare erat rhoncus. Quisque quis magna ultrices, vulputate augue non, interdum est. Cras rhoncus erat dictum pulvinar tristique. Praesent non sagittis sapien. Maecenas imperdiet dolor sit amet elit laoreet mattis in vel dolor. Aliquam laoreet erat vel nibh gravida maximus. Praesent sit amet elementum eros, eget suscipit mi. Quisque interdum dictum nisi, sed tincidunt nisi pulvinar vel. Quisque interdum est a nisl viverra ornare.\r\n\r\nNullam vestibulum nisi et nunc iaculis, ac porttitor nibh aliquet. Donec ullamcorper ultricies justo at tincidunt. Nullam sapien ante, sagittis a congue id, semper placerat turpis. Vestibulum viverra iaculis sollicitudin. Sed eget justo non nulla dapibus hendrerit. Phasellus lobortis posuere eros nec dapibus. Aenean venenatis condimentum velit. Fusce tellus orci, feugiat mattis consectetur quis, fringilla in leo. Integer mollis eros vitae sagittis laoreet. Mauris dui arcu, porttitor ut tincidunt eu, ultrices vel dui. Vivamus egestas purus et diam viverra mattis.\r\n\r\nCras vel dignissim mauris, sed faucibus sem. Curabitur aliquam dui in suscipit scelerisque. Morbi sollicitudin, nisi sed rutrum fringilla, dui mauris faucibus lorem, eu vehicula quam leo at nisl. Aliquam urna felis, semper vel elit in, ultrices suscipit risus. Ut at commodo est. Aliquam nec diam ut nisl tempus lacinia. Ut lacus nibh, congue vehicula dui in, semper egestas turpis.'),
(238, 34, '_community_manager', 'field_5f6930af421cf'),
(239, 74, 'impresiones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lorem mi, pellentesque nec quam vitae, molestie congue odio. Duis accumsan, risus vitae venenatis scelerisque, nisi magna congue quam, nec consectetur purus orci sed tellus. Aliquam erat volutpat. Nulla a consectetur nisl. Sed tempor ullamcorper ipsum non pulvinar. Curabitur porta dui neque, sit amet sollicitudin erat placerat sed. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vitae urna luctus, accumsan augue quis, commodo felis. Pellentesque ullamcorper sollicitudin dictum. Integer sodales tristique dolor vitae venenatis. Proin egestas augue augue, cursus mollis ligula varius dignissim.\r\n\r\nNam a nisl massa. Nulla in velit augue. Aliquam et massa non nibh eleifend porttitor. Aliquam vitae dui ex. Suspendisse sollicitudin velit in lorem facilisis viverra. Maecenas gravida dui non metus pulvinar auctor. Morbi nec nibh eget lorem sollicitudin malesuada sit amet et leo. Etiam id lacus vel risus pellentesque iaculis. Suspendisse dignissim gravida velit in tincidunt. Phasellus magna quam, ultrices et lorem eget, eleifend tempor turpis. Integer et mauris sit amet nulla hendrerit pulvinar. Vestibulum aliquet velit sit amet augue porttitor, id sagittis urna pellentesque. In hac habitasse platea dictumst. In tincidunt accumsan dictum. Aenean pellentesque vestibulum libero, eu tristique neque rutrum et.'),
(240, 74, '_impresiones', 'field_5f692ff6421cd'),
(241, 74, 'disenos', 'Integer lorem nulla, faucibus nec neque et, luctus elementum ante. Fusce eu nibh odio. Mauris tristique, lectus nec congue laoreet, nisi enim gravida orci, varius vehicula odio odio sit amet nisi. Etiam eget feugiat quam. Morbi sed interdum magna. Sed suscipit laoreet dapibus. Phasellus quis efficitur ante, eu dapibus diam. Aenean pharetra purus ac nunc finibus congue. Aliquam ut mollis ipsum. Etiam ut egestas dui. Cras accumsan ipsum nibh, et consectetur dolor molestie ac. Nulla bibendum ipsum felis, id tempor dui ornare eu. Etiam sed molestie leo. Etiam mollis odio dignissim odio bibendum, nec sollicitudin ante convallis. Pellentesque accumsan nulla sit amet lectus finibus consectetur. Curabitur justo orci, rutrum a magna at, euismod aliquet sapien.'),
(242, 74, '_disenos', 'field_5f693072421ce'),
(243, 74, 'community_manager', 'Duis sed rutrum velit. Ut posuere libero vel elit vestibulum, ac ornare erat rhoncus. Quisque quis magna ultrices, vulputate augue non, interdum est. Cras rhoncus erat dictum pulvinar tristique. Praesent non sagittis sapien. Maecenas imperdiet dolor sit amet elit laoreet mattis in vel dolor. Aliquam laoreet erat vel nibh gravida maximus. Praesent sit amet elementum eros, eget suscipit mi. Quisque interdum dictum nisi, sed tincidunt nisi pulvinar vel. Quisque interdum est a nisl viverra ornare.\r\n\r\nNullam vestibulum nisi et nunc iaculis, ac porttitor nibh aliquet. Donec ullamcorper ultricies justo at tincidunt. Nullam sapien ante, sagittis a congue id, semper placerat turpis. Vestibulum viverra iaculis sollicitudin. Sed eget justo non nulla dapibus hendrerit. Phasellus lobortis posuere eros nec dapibus. Aenean venenatis condimentum velit. Fusce tellus orci, feugiat mattis consectetur quis, fringilla in leo. Integer mollis eros vitae sagittis laoreet. Mauris dui arcu, porttitor ut tincidunt eu, ultrices vel dui. Vivamus egestas purus et diam viverra mattis.\r\n\r\nCras vel dignissim mauris, sed faucibus sem. Curabitur aliquam dui in suscipit scelerisque. Morbi sollicitudin, nisi sed rutrum fringilla, dui mauris faucibus lorem, eu vehicula quam leo at nisl. Aliquam urna felis, semper vel elit in, ultrices suscipit risus. Ut at commodo est. Aliquam nec diam ut nisl tempus lacinia. Ut lacus nibh, congue vehicula dui in, semper egestas turpis.'),
(244, 74, '_community_manager', 'field_5f6930af421cf'),
(245, 13, 'bananafesto', '<strong>1.</strong> Nacimos para cambiar el mundo.\r\n<strong>2.</strong> Vivimos adaptándonos con flexibilidad, divirtiéndonos y acostumbrándonos con los detalles.\r\n<strong>3.</strong> Creamos comunicación valiosa.\r\n<strong>4.</strong> No nos dejamos vencer por las derrotas, aprendemos de ellas.\r\n<strong>5.</strong> Compartimos lo que sabemos, pensamos y sentimos sin temores.\r\n<strong>6.</strong> Nos comunicamos siempre con la verdad.\r\n<strong>7.</strong> No ponemos límite a nuestros sueños, nuestras ideas, y conocimiento.\r\n<strong>8.</strong> Simplificamos lo complicado y lo transformamos en sencillo.\r\n<strong>9.</strong> Enfrentamos cada nuevo reto con pasión, y lo hacemos todo con el corazón.'),
(246, 13, '_bananafesto', 'field_5f6a24a053fcf'),
(247, 76, 'bananeidad', 'Es algo que adquieren los miembros de Banana, pero que sólo despierta fuertemente en algunos, aunque de algún modo todos lo tienen. No sé puede describir, solo sentir. Es similar a compañerismo, combinado con amistad, con ocurrencia, aleatoriedad, espontaneidad y un toquecito de vainilla.'),
(248, 76, '_bananeidad', 'field_5f6929dfda044'),
(249, 76, 'valores', 'Calidad - Eficiencia - Diseño - Aliados - Marcas - Crea - Sin mínimos - Talento - Asesoría'),
(250, 76, '_valores', 'field_5f692accda045'),
(251, 76, 'productos_servicios', 'Las tarjetas de presentación, los afiches, los volantes y los stickers son unos de los productos estrella que se ofrecen, pero mientras exista la posibilidad de crear algo a partir de una impresión, todo se puede hacer. La creatividad es ilimitada en este espacio, por lo que se le traspasa a los clientes a través de diseños hechos para la identidad de cada uno. Más allá de realizar impresiones y confeccionar diseños, en Banana se aseguran de brindar asesoría y dar recomendaciones a las necesidades de sus clientes, de modo que se ahorre tiempo y dinero en el proceso, además de fortalecer relaciones con quienes llegan a este lugar.'),
(252, 76, '_productos_servicios', 'field_5f692b56da046'),
(253, 76, 'escenario', 'Ubicados en Pérez Zeledón, pero con muchas ganas de expandir nuestro servicio en los alrededores, se dedican a la atención de personas y empresas a quienes les ayudan con la promoción de sus productos y a darles una identidad.'),
(254, 76, '_escenario', 'field_5f692bdada047'),
(255, 76, 'hobbies', 'La música, ejercicio, la comida y la comunicación, son algunos de los pasatiempos favoritos de Ban y Ana. Les gusta aprender a hacer los trabajos de forma distinta siempre, así como ayudarle a innovar a los clientes. El buen humor y el café son parte esencial de una actitud agradable para dar la mejor atención posible a los que necesitan de ellos.'),
(256, 76, '_hobbies', 'field_5f692c28da048'),
(257, 76, 'bananafesto', '<strong>1.</strong> Nacimos para cambiar el mundo.\r\n<strong>2.</strong> Vivimos adaptándonos con flexibilidad,divirtiéndonos y acostumbrándonos con los detalles.\r\n<strong>3.</strong> Creamos comunicación valiosa.\r\n<strong>4.</strong> No nos dejamos vencer por las derrotas,aprendemos de ellas.\r\n<strong>5.</strong> Compartimos lo que sabemos, pensamos y sentimos sin temores.\r\n<strong>6.</strong> Nos comunicamos siempre con la verdad.\r\n<strong>7.</strong> No ponemos límite a nuestros sueños,nuestras ideas, y conocimiento.\r\n<strong>8.</strong> Simplificamos lo complicado y lo transformamos en sencillo.\r\n<strong>9.</strong> Enfrentamos cada nuevo reto con pasión,y lo hacemos todo con el corazón.'),
(258, 76, '_bananafesto', 'field_5f6a24a053fcf'),
(259, 78, '_edit_last', '1'),
(260, 78, '_edit_lock', '1600795678:1'),
(261, 79, '_edit_last', '1'),
(262, 79, '_edit_lock', '1600795728:1'),
(263, 80, '_edit_last', '1'),
(264, 80, '_edit_lock', '1600795812:1'),
(265, 81, '_edit_last', '1'),
(266, 81, '_edit_lock', '1600795945:1'),
(267, 82, '_edit_last', '1'),
(268, 82, '_edit_lock', '1600795994:1'),
(269, 83, '_edit_last', '1'),
(270, 83, '_edit_lock', '1600796050:1'),
(271, 84, '_edit_last', '1'),
(272, 84, '_edit_lock', '1600796099:1'),
(273, 85, '_edit_last', '1'),
(274, 85, '_edit_lock', '1600796136:1'),
(275, 86, '_edit_last', '1'),
(276, 86, '_edit_lock', '1600796261:1'),
(277, 87, '_edit_last', '1'),
(278, 87, '_edit_lock', '1600796321:1'),
(279, 88, '_menu_item_type', 'post_type_archive'),
(280, 88, '_menu_item_menu_item_parent', '0'),
(281, 88, '_menu_item_object_id', '-28'),
(282, 88, '_menu_item_object', 'faq'),
(283, 88, '_menu_item_target', ''),
(284, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(285, 88, '_menu_item_xfn', ''),
(286, 88, '_menu_item_url', ''),
(288, 88, '_menu_item_image_size', 'menu-36x36'),
(289, 88, '_menu_item_image_title_position', 'after'),
(290, 89, '_edit_last', '1'),
(291, 89, '_edit_lock', '1600802822:1'),
(292, 89, '_wp_trash_meta_status', 'publish'),
(293, 89, '_wp_trash_meta_time', '1600802971'),
(294, 89, '_wp_desired_post_slug', 'una-pregunta'),
(295, 91, '_form', '<label> Nombre Completo\n    [text* your-name] </label>\n\n<label> Correo Electrónico\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Mensaje\n    [textarea your-message x5] </label>\n\n[submit \"Enviar\"]'),
(296, 91, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:29:\"Banana Print \"[your-subject]\"\";s:6:\"sender\";s:37:\"Banana Print <enoc.villa16@gmail.com>\";s:9:\"recipient\";s:22:\"enoc.villa16@gmail.com\";s:4:\"body\";s:200:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Banana Print (http://localhost:8012/banana)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(297, 91, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"Banana Print \"[your-subject]\"\";s:6:\"sender\";s:37:\"Banana Print <enoc.villa16@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:145:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Banana Print (http://localhost:8012/banana)\";s:18:\"additional_headers\";s:32:\"Reply-To: enoc.villa16@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(298, 91, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:40:\"Gracias por su mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar su mensaje. Por favor inténtelo de nuevo más tarde.\";s:16:\"validation_error\";s:74:\"Uno o más campos tienen un error. Por favor revise e inténtelo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar su mensaje. Por favor inténtelo de nuevo más tarde.\";s:12:\"accept_terms\";s:68:\"Debe aceptar los términos y condiciones antes de enviar su mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:36:\"La fecha es anterior a la permitida.\";s:13:\"date_too_late\";s:37:\"La fecha es posterior a la permitida.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:51:\"No tiene permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:45:\"Se ha producido un error subiendo el archivo.\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:63:\"La dirección de correo electrónico introducida no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}'),
(299, 91, '_additional_settings', ''),
(300, 91, '_locale', 'es_CR'),
(301, 36, '_wp_trash_meta_status', 'publish'),
(302, 36, '_wp_trash_meta_time', '1600813301'),
(303, 36, '_wp_desired_post_slug', 'preguntas-frecuentes'),
(304, 92, '_wp_attached_file', '2020/09/mobile-logo.png'),
(305, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:176;s:6:\"height\";i:40;s:4:\"file\";s:23:\"2020/09/mobile-logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"mobile-logo-150x40.png\";s:5:\"width\";i:150;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-26x26\";a:4:{s:4:\"file\";s:20:\"mobile-logo-26x6.png\";s:5:\"width\";i:26;s:6:\"height\";i:6;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:20:\"mobile-logo-36x8.png\";s:5:\"width\";i:36;s:6:\"height\";i:8;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:21:\"mobile-logo-48x11.png\";s:5:\"width\";i:48;s:6:\"height\";i:11;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 92, '_wp_attachment_image_alt', 'Banana Text Logo'),
(307, 93, 'bananeidad', 'Es algo que adquieren los miembros de Banana, pero que sólo despierta fuertemente en algunos, aunque de algún modo todos lo tienen. No sé puede describir, solo sentir. Es similar a compañerismo, combinado con amistad, con ocurrencia, aleatoriedad, espontaneidad y un toquecito de vainilla.'),
(308, 93, '_bananeidad', 'field_5f6929dfda044'),
(309, 93, 'valores', 'Calidad - Eficiencia - Diseño - Aliados - Marcas - Crea - Sin mínimos - Talento - Asesoría'),
(310, 93, '_valores', 'field_5f692accda045'),
(311, 93, 'productos_servicios', 'Las tarjetas de presentación, los afiches, los volantes y los stickers son unos de los productos estrella que se ofrecen, pero mientras exista la posibilidad de crear algo a partir de una impresión, todo se puede hacer. La creatividad es ilimitada en este espacio, por lo que se le traspasa a los clientes a través de diseños hechos para la identidad de cada uno. Más allá de realizar impresiones y confeccionar diseños, en Banana se aseguran de brindar asesoría y dar recomendaciones a las necesidades de sus clientes, de modo que se ahorre tiempo y dinero en el proceso, además de fortalecer relaciones con quienes llegan a este lugar.'),
(312, 93, '_productos_servicios', 'field_5f692b56da046'),
(313, 93, 'escenario', 'Ubicados en Pérez Zeledón, pero con muchas ganas de expandir nuestro servicio en los alrededores, se dedican a la atención de personas y empresas a quienes les ayudan con la promoción de sus productos y a darles una identidad.'),
(314, 93, '_escenario', 'field_5f692bdada047'),
(315, 93, 'hobbies', 'La música, ejercicio, la comida y la comunicación, son algunos de los pasatiempos favoritos de Ban y Ana. Les gusta aprender a hacer los trabajos de forma distinta siempre, así como ayudarle a innovar a los clientes. El buen humor y el café son parte esencial de una actitud agradable para dar la mejor atención posible a los que necesitan de ellos.'),
(316, 93, '_hobbies', 'field_5f692c28da048'),
(317, 93, 'bananafesto', '<strong>1.</strong> Nacimos para cambiar el mundo.\r\n<strong>2.</strong> Vivimos adaptándonos con flexibilidad, divirtiéndonos y acostumbrándonos con los detalles.\r\n<strong>3.</strong> Creamos comunicación valiosa.\r\n<strong>4.</strong> No nos dejamos vencer por las derrotas, aprendemos de ellas.\r\n<strong>5.</strong> Compartimos lo que sabemos, pensamos y sentimos sin temores.\r\n<strong>6.</strong> Nos comunicamos siempre con la verdad.\r\n<strong>7.</strong> No ponemos límite a nuestros sueños, nuestras ideas, y conocimiento.\r\n<strong>8.</strong> Simplificamos lo complicado y lo transformamos en sencillo.\r\n<strong>9.</strong> Enfrentamos cada nuevo reto con pasión, y lo hacemos todo con el corazón.'),
(318, 93, '_bananafesto', 'field_5f6a24a053fcf'),
(319, 13, 'mobmenu_604b852304ec892e', ''),
(320, 97, '_edit_last', '1'),
(321, 97, '_edit_lock', '1601075260:1'),
(322, 99, '_wp_attached_file', '2020/09/Ana.png'),
(323, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:334;s:6:\"height\";i:410;s:4:\"file\";s:15:\"2020/09/Ana.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"Ana-244x300.png\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"Ana-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-26x26\";a:4:{s:4:\"file\";s:13:\"Ana-21x26.png\";s:5:\"width\";i:21;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"Ana-29x36.png\";s:5:\"width\";i:29;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:13:\"Ana-39x48.png\";s:5:\"width\";i:39;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(324, 13, 'ana', '99'),
(325, 13, '_ana', 'field_5f725cc1edc0f'),
(326, 100, 'bananeidad', 'Es algo que adquieren los miembros de Banana, pero que sólo despierta fuertemente en algunos, aunque de algún modo todos lo tienen. No sé puede describir, solo sentir. Es similar a compañerismo, combinado con amistad, con ocurrencia, aleatoriedad, espontaneidad y un toquecito de vainilla.'),
(327, 100, '_bananeidad', 'field_5f6929dfda044'),
(328, 100, 'valores', 'Calidad - Eficiencia - Diseño - Aliados - Marcas - Crea - Sin mínimos - Talento - Asesoría'),
(329, 100, '_valores', 'field_5f692accda045'),
(330, 100, 'productos_servicios', 'Las tarjetas de presentación, los afiches, los volantes y los stickers son unos de los productos estrella que se ofrecen, pero mientras exista la posibilidad de crear algo a partir de una impresión, todo se puede hacer. La creatividad es ilimitada en este espacio, por lo que se le traspasa a los clientes a través de diseños hechos para la identidad de cada uno. Más allá de realizar impresiones y confeccionar diseños, en Banana se aseguran de brindar asesoría y dar recomendaciones a las necesidades de sus clientes, de modo que se ahorre tiempo y dinero en el proceso, además de fortalecer relaciones con quienes llegan a este lugar.'),
(331, 100, '_productos_servicios', 'field_5f692b56da046'),
(332, 100, 'escenario', 'Ubicados en Pérez Zeledón, pero con muchas ganas de expandir nuestro servicio en los alrededores, se dedican a la atención de personas y empresas a quienes les ayudan con la promoción de sus productos y a darles una identidad.'),
(333, 100, '_escenario', 'field_5f692bdada047'),
(334, 100, 'hobbies', 'La música, ejercicio, la comida y la comunicación, son algunos de los pasatiempos favoritos de Ban y Ana. Les gusta aprender a hacer los trabajos de forma distinta siempre, así como ayudarle a innovar a los clientes. El buen humor y el café son parte esencial de una actitud agradable para dar la mejor atención posible a los que necesitan de ellos.'),
(335, 100, '_hobbies', 'field_5f692c28da048'),
(336, 100, 'bananafesto', '<strong>1.</strong> Nacimos para cambiar el mundo.\r\n<strong>2.</strong> Vivimos adaptándonos con flexibilidad, divirtiéndonos y acostumbrándonos con los detalles.\r\n<strong>3.</strong> Creamos comunicación valiosa.\r\n<strong>4.</strong> No nos dejamos vencer por las derrotas, aprendemos de ellas.\r\n<strong>5.</strong> Compartimos lo que sabemos, pensamos y sentimos sin temores.\r\n<strong>6.</strong> Nos comunicamos siempre con la verdad.\r\n<strong>7.</strong> No ponemos límite a nuestros sueños, nuestras ideas, y conocimiento.\r\n<strong>8.</strong> Simplificamos lo complicado y lo transformamos en sencillo.\r\n<strong>9.</strong> Enfrentamos cada nuevo reto con pasión, y lo hacemos todo con el corazón.'),
(337, 100, '_bananafesto', 'field_5f6a24a053fcf'),
(338, 100, 'ana', '99'),
(339, 100, '_ana', 'field_5f725cc1edc0f'),
(340, 102, '_wp_attached_file', '2020/09/Ban.png'),
(341, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:334;s:6:\"height\";i:410;s:4:\"file\";s:15:\"2020/09/Ban.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"Ban-244x300.png\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"Ban-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-26x26\";a:4:{s:4:\"file\";s:13:\"Ban-21x26.png\";s:5:\"width\";i:21;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"Ban-29x36.png\";s:5:\"width\";i:29;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:13:\"Ban-39x48.png\";s:5:\"width\";i:39;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 13, 'ban', '102'),
(343, 13, '_ban', 'field_5f7260328b37f'),
(344, 103, 'bananeidad', 'Es algo que adquieren los miembros de Banana, pero que sólo despierta fuertemente en algunos, aunque de algún modo todos lo tienen. No sé puede describir, solo sentir. Es similar a compañerismo, combinado con amistad, con ocurrencia, aleatoriedad, espontaneidad y un toquecito de vainilla.'),
(345, 103, '_bananeidad', 'field_5f6929dfda044'),
(346, 103, 'valores', 'Calidad - Eficiencia - Diseño - Aliados - Marcas - Crea - Sin mínimos - Talento - Asesoría'),
(347, 103, '_valores', 'field_5f692accda045'),
(348, 103, 'productos_servicios', 'Las tarjetas de presentación, los afiches, los volantes y los stickers son unos de los productos estrella que se ofrecen, pero mientras exista la posibilidad de crear algo a partir de una impresión, todo se puede hacer. La creatividad es ilimitada en este espacio, por lo que se le traspasa a los clientes a través de diseños hechos para la identidad de cada uno. Más allá de realizar impresiones y confeccionar diseños, en Banana se aseguran de brindar asesoría y dar recomendaciones a las necesidades de sus clientes, de modo que se ahorre tiempo y dinero en el proceso, además de fortalecer relaciones con quienes llegan a este lugar.'),
(349, 103, '_productos_servicios', 'field_5f692b56da046'),
(350, 103, 'escenario', 'Ubicados en Pérez Zeledón, pero con muchas ganas de expandir nuestro servicio en los alrededores, se dedican a la atención de personas y empresas a quienes les ayudan con la promoción de sus productos y a darles una identidad.'),
(351, 103, '_escenario', 'field_5f692bdada047'),
(352, 103, 'hobbies', 'La música, ejercicio, la comida y la comunicación, son algunos de los pasatiempos favoritos de Ban y Ana. Les gusta aprender a hacer los trabajos de forma distinta siempre, así como ayudarle a innovar a los clientes. El buen humor y el café son parte esencial de una actitud agradable para dar la mejor atención posible a los que necesitan de ellos.'),
(353, 103, '_hobbies', 'field_5f692c28da048'),
(354, 103, 'bananafesto', '<strong>1.</strong> Nacimos para cambiar el mundo.\r\n<strong>2.</strong> Vivimos adaptándonos con flexibilidad, divirtiéndonos y acostumbrándonos con los detalles.\r\n<strong>3.</strong> Creamos comunicación valiosa.\r\n<strong>4.</strong> No nos dejamos vencer por las derrotas, aprendemos de ellas.\r\n<strong>5.</strong> Compartimos lo que sabemos, pensamos y sentimos sin temores.\r\n<strong>6.</strong> Nos comunicamos siempre con la verdad.\r\n<strong>7.</strong> No ponemos límite a nuestros sueños, nuestras ideas, y conocimiento.\r\n<strong>8.</strong> Simplificamos lo complicado y lo transformamos en sencillo.\r\n<strong>9.</strong> Enfrentamos cada nuevo reto con pasión, y lo hacemos todo con el corazón.'),
(355, 103, '_bananafesto', 'field_5f6a24a053fcf'),
(356, 103, 'ana', '99'),
(357, 103, '_ana', 'field_5f725cc1edc0f'),
(358, 103, 'ban', '102'),
(359, 103, '_ban', 'field_5f7260328b37f'),
(360, 106, '_wp_attached_file', '2020/09/Ana-mob.png'),
(361, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:345;s:6:\"height\";i:350;s:4:\"file\";s:19:\"2020/09/Ana-mob.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Ana-mob-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Ana-mob-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-26x26\";a:4:{s:4:\"file\";s:17:\"Ana-mob-26x26.png\";s:5:\"width\";i:26;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:17:\"Ana-mob-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:17:\"Ana-mob-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 107, '_wp_attached_file', '2020/09/Ban-mob.png'),
(363, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:344;s:6:\"height\";i:350;s:4:\"file\";s:19:\"2020/09/Ban-mob.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Ban-mob-295x300.png\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Ban-mob-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-26x26\";a:4:{s:4:\"file\";s:17:\"Ban-mob-26x26.png\";s:5:\"width\";i:26;s:6:\"height\";i:26;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:17:\"Ban-mob-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:17:\"Ban-mob-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 13, 'ana_mob', '106'),
(365, 13, '_ana_mob', 'field_5f7262abb3aee'),
(366, 13, 'ban_mob', '107'),
(367, 13, '_ban_mob', 'field_5f726308b3aef'),
(368, 108, 'bananeidad', 'Es algo que adquieren los miembros de Banana, pero que sólo despierta fuertemente en algunos, aunque de algún modo todos lo tienen. No sé puede describir, solo sentir. Es similar a compañerismo, combinado con amistad, con ocurrencia, aleatoriedad, espontaneidad y un toquecito de vainilla.'),
(369, 108, '_bananeidad', 'field_5f6929dfda044'),
(370, 108, 'valores', 'Calidad - Eficiencia - Diseño - Aliados - Marcas - Crea - Sin mínimos - Talento - Asesoría'),
(371, 108, '_valores', 'field_5f692accda045'),
(372, 108, 'productos_servicios', 'Las tarjetas de presentación, los afiches, los volantes y los stickers son unos de los productos estrella que se ofrecen, pero mientras exista la posibilidad de crear algo a partir de una impresión, todo se puede hacer. La creatividad es ilimitada en este espacio, por lo que se le traspasa a los clientes a través de diseños hechos para la identidad de cada uno. Más allá de realizar impresiones y confeccionar diseños, en Banana se aseguran de brindar asesoría y dar recomendaciones a las necesidades de sus clientes, de modo que se ahorre tiempo y dinero en el proceso, además de fortalecer relaciones con quienes llegan a este lugar.'),
(373, 108, '_productos_servicios', 'field_5f692b56da046');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(374, 108, 'escenario', 'Ubicados en Pérez Zeledón, pero con muchas ganas de expandir nuestro servicio en los alrededores, se dedican a la atención de personas y empresas a quienes les ayudan con la promoción de sus productos y a darles una identidad.'),
(375, 108, '_escenario', 'field_5f692bdada047'),
(376, 108, 'hobbies', 'La música, ejercicio, la comida y la comunicación, son algunos de los pasatiempos favoritos de Ban y Ana. Les gusta aprender a hacer los trabajos de forma distinta siempre, así como ayudarle a innovar a los clientes. El buen humor y el café son parte esencial de una actitud agradable para dar la mejor atención posible a los que necesitan de ellos.'),
(377, 108, '_hobbies', 'field_5f692c28da048'),
(378, 108, 'bananafesto', '<strong>1.</strong> Nacimos para cambiar el mundo.\r\n<strong>2.</strong> Vivimos adaptándonos con flexibilidad, divirtiéndonos y acostumbrándonos con los detalles.\r\n<strong>3.</strong> Creamos comunicación valiosa.\r\n<strong>4.</strong> No nos dejamos vencer por las derrotas, aprendemos de ellas.\r\n<strong>5.</strong> Compartimos lo que sabemos, pensamos y sentimos sin temores.\r\n<strong>6.</strong> Nos comunicamos siempre con la verdad.\r\n<strong>7.</strong> No ponemos límite a nuestros sueños, nuestras ideas, y conocimiento.\r\n<strong>8.</strong> Simplificamos lo complicado y lo transformamos en sencillo.\r\n<strong>9.</strong> Enfrentamos cada nuevo reto con pasión, y lo hacemos todo con el corazón.'),
(379, 108, '_bananafesto', 'field_5f6a24a053fcf'),
(380, 108, 'ana', '99'),
(381, 108, '_ana', 'field_5f725cc1edc0f'),
(382, 108, 'ban', '102'),
(383, 108, '_ban', 'field_5f7260328b37f'),
(384, 108, 'ana_mob', '106'),
(385, 108, '_ana_mob', 'field_5f7262abb3aee'),
(386, 108, 'ban_mob', '107'),
(387, 108, '_ban_mob', 'field_5f726308b3aef'),
(388, 111, '_edit_last', '1'),
(389, 111, '_edit_lock', '1602818882:1'),
(390, 116, 'type', 'post_type'),
(391, 116, 'storage', 'meta'),
(392, 116, 'object', 'banana_products'),
(393, 117, 'label_singular', 'Product 2'),
(394, 117, 'public', '1'),
(395, 117, 'show_ui', '1'),
(396, 117, 'supports_title', '1'),
(397, 117, 'supports_editor', '1'),
(398, 117, 'type', 'post_type'),
(399, 117, 'storage', 'meta'),
(400, 130, '_edit_last', '1'),
(401, 130, '_edit_lock', '1602870799:1'),
(402, 130, 'imagen_de_prevista', ''),
(403, 130, '_imagen_de_prevista', 'field_5f88c43e361e1'),
(408, 130, 'anadir_material_0_cantidades', 'a:2:{i:0;s:2:\"10\";i:1;s:2:\"11\";}'),
(409, 130, '_anadir_material_0_cantidades', 'field_5f88d026f25e6'),
(410, 130, 'anadir_material_0_dimensiones', 'a:2:{i:0;s:2:\"14\";i:1;s:2:\"13\";}'),
(411, 130, '_anadir_material_0_dimensiones', 'field_5f88d32030e86'),
(416, 130, 'anadir_material_1_cantidades', 'a:3:{i:0;s:2:\"12\";i:1;s:2:\"16\";i:2;s:2:\"17\";}'),
(417, 130, '_anadir_material_1_cantidades', 'field_5f88d026f25e6'),
(418, 130, 'anadir_material_1_dimensiones', 'a:2:{i:0;s:2:\"15\";i:1;s:2:\"18\";}'),
(419, 130, '_anadir_material_1_dimensiones', 'field_5f88d32030e86'),
(420, 130, 'anadir_material', '1'),
(421, 130, '_anadir_material', 'field_5f891556cbe87'),
(426, 111, '_wp_trash_meta_status', 'publish'),
(427, 111, '_wp_trash_meta_time', '1602819052'),
(428, 111, '_wp_desired_post_slug', 'group_5f8913a20f93a'),
(429, 132, '_wp_trash_meta_status', 'publish'),
(430, 132, '_wp_trash_meta_time', '1602819053'),
(431, 132, '_wp_desired_post_slug', 'field_5f88c43e361e1'),
(432, 171, '_wp_trash_meta_status', 'publish'),
(433, 171, '_wp_trash_meta_time', '1602819054'),
(434, 171, '_wp_desired_post_slug', '171'),
(435, 172, '_wp_trash_meta_status', 'publish'),
(436, 172, '_wp_trash_meta_time', '1602819054'),
(437, 172, '_wp_desired_post_slug', 'elegir-tipo'),
(438, 174, '_wp_trash_meta_status', 'publish'),
(439, 174, '_wp_trash_meta_time', '1602819054'),
(440, 174, '_wp_desired_post_slug', '174'),
(441, 175, '_wp_trash_meta_status', 'publish'),
(442, 175, '_wp_trash_meta_time', '1602819054'),
(443, 175, '_wp_desired_post_slug', '175'),
(444, 176, '_wp_trash_meta_status', 'publish'),
(445, 176, '_wp_trash_meta_time', '1602819055'),
(446, 176, '_wp_desired_post_slug', '176'),
(447, 177, '_wp_trash_meta_status', 'publish'),
(448, 177, '_wp_trash_meta_time', '1602819055'),
(449, 177, '_wp_desired_post_slug', '177'),
(450, 178, '_wp_trash_meta_status', 'publish'),
(451, 178, '_wp_trash_meta_time', '1602819055'),
(452, 178, '_wp_desired_post_slug', '178'),
(453, 179, '_wp_trash_meta_status', 'publish'),
(454, 179, '_wp_trash_meta_time', '1602819055'),
(455, 179, '_wp_desired_post_slug', '179'),
(456, 180, '_wp_trash_meta_status', 'publish'),
(457, 180, '_wp_trash_meta_time', '1602819056'),
(458, 180, '_wp_desired_post_slug', '180'),
(459, 181, '_wp_trash_meta_status', 'publish'),
(460, 181, '_wp_trash_meta_time', '1602819056'),
(461, 181, '_wp_desired_post_slug', '181'),
(462, 182, '_wp_trash_meta_status', 'publish'),
(463, 182, '_wp_trash_meta_time', '1602819056'),
(464, 182, '_wp_desired_post_slug', '182'),
(465, 183, '_wp_trash_meta_status', 'publish'),
(466, 183, '_wp_trash_meta_time', '1602819056'),
(467, 183, '_wp_desired_post_slug', '183'),
(468, 184, '_wp_trash_meta_status', 'publish'),
(469, 184, '_wp_trash_meta_time', '1602819057'),
(470, 184, '_wp_desired_post_slug', '184'),
(471, 185, '_wp_trash_meta_status', 'publish'),
(472, 185, '_wp_trash_meta_time', '1602819057'),
(473, 185, '_wp_desired_post_slug', '185'),
(474, 186, '_wp_trash_meta_status', 'publish'),
(475, 186, '_wp_trash_meta_time', '1602819057'),
(476, 186, '_wp_desired_post_slug', '186'),
(477, 187, '_wp_trash_meta_status', 'publish'),
(478, 187, '_wp_trash_meta_time', '1602819058'),
(479, 187, '_wp_desired_post_slug', '187'),
(480, 188, '_wp_trash_meta_status', 'publish'),
(481, 188, '_wp_trash_meta_time', '1602819058'),
(482, 188, '_wp_desired_post_slug', '188'),
(483, 189, '_wp_trash_meta_status', 'publish'),
(484, 189, '_wp_trash_meta_time', '1602819058'),
(485, 189, '_wp_desired_post_slug', '189'),
(486, 190, '_wp_trash_meta_status', 'publish'),
(487, 190, '_wp_trash_meta_time', '1602819058'),
(488, 190, '_wp_desired_post_slug', '190'),
(489, 121, '_wp_trash_meta_status', 'publish'),
(490, 121, '_wp_trash_meta_time', '1602819059'),
(491, 121, '_wp_desired_post_slug', 'field_5f88b4c99cbda'),
(492, 148, '_wp_trash_meta_status', 'publish'),
(493, 148, '_wp_trash_meta_time', '1602819059'),
(494, 148, '_wp_desired_post_slug', 'elegir-tipo'),
(495, 146, '_wp_trash_meta_status', 'publish'),
(496, 146, '_wp_trash_meta_time', '1602819059'),
(497, 146, '_wp_desired_post_slug', '146'),
(498, 170, '_wp_trash_meta_status', 'publish'),
(499, 170, '_wp_trash_meta_time', '1602819059'),
(500, 170, '_wp_desired_post_slug', '170'),
(501, 198, '_edit_last', '1'),
(502, 198, '_edit_lock', '1602870630:1'),
(509, 130, 'anadir_material_0_elegir_area', 'Taller'),
(510, 130, '_anadir_material_0_elegir_area', 'field_5f891585cbe88'),
(511, 130, 'anadir_material_0_elegir_meterial_taller', 'Lona'),
(512, 130, '_anadir_material_0_elegir_meterial_taller', 'field_5f8915adcbe89'),
(513, 130, 'anadir_material_0_elegir_material_impresion', '15'),
(514, 130, '_anadir_material_0_elegir_material_impresion', 'field_5f8915e7cbe8a'),
(515, 130, '_primero', 'dos'),
(516, 130, '__primero', 'field_5f8918c41fdaf'),
(517, 130, '_dos', ''),
(518, 130, '__dos', 'field_5f8918e01fdb0'),
(519, 130, '_', 'field_5f8918a972110'),
(520, 130, 'material_0_inicio', 'Dos'),
(521, 130, '_material_0_inicio', 'field_5f89dce2e4270'),
(522, 130, 'material_0_dos', 'Este es el dos'),
(523, 130, '_material_0_dos', 'field_5f89dd27e4272'),
(524, 130, 'material', '1'),
(525, 130, '_material', 'field_5f8918a972110');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2020-08-25 10:28:41', '2020-08-25 16:28:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lobortis mollis urna, scelerisque commodo lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur quis sapien vitae orci tempus porttitor vel vitae risus. Duis in lacus imperdiet, molestie erat in, ullamcorper velit. Maecenas feugiat imperdiet risus vel venenatis. Nam in dolor non arcu viverra ultrices. Aliquam erat volutpat. Vestibulum a pretium libero. In eu libero dui. Sed non semper mi, quis eleifend magna. Aenean molestie sodales laoreet. Nunc malesuada risus nec metus sagittis, eu posuere erat placerat. Mauris feugiat, augue nec convallis congue, magna ligula mattis leo, ut mollis velit lectus ut dolor. Phasellus in venenatis nunc, a semper eros. Praesent efficitur, augue laoreet cursus fringilla, sem turpis tincidunt eros, vitae consequat nunc magna quis mauris.\r\n\r\nDuis venenatis dui quis sagittis dapibus. Ut vulputate non lectus et hendrerit. Nulla vel pulvinar sapien. Ut at nibh cursus risus auctor commodo vitae at erat. Aliquam erat volutpat. Praesent vel libero aliquet, viverra ex et, porttitor orci. Nam quam lectus, ornare vitae arcu eget, cursus cursus dolor.\r\n\r\nAenean in accumsan mi. Sed dapibus luctus lorem sit amet consequat. Mauris mollis varius magna vitae maximus. Cras lorem velit, sollicitudin sed mattis nec, condimentum vitae erat. Suspendisse potenti. Fusce cursus porta quam, eu feugiat enim feugiat sit amet. Donec non mauris nisl. Proin elementum nec tortor sed egestas. Phasellus porta dictum est non ultrices. Integer eu hendrerit purus. Nulla vitae gravida lectus.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-08-27 10:48:56', '2020-08-27 16:48:56', '', 0, 'http://localhost:8012/banana/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-08-25 10:28:41', '2020-08-25 16:28:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-08-25 10:28:41', '2020-08-25 16:28:41', '', 8, 'http://localhost:8012/banana/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-08-27 10:48:52', '2020-08-27 16:48:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lobortis mollis urna, scelerisque commodo lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur quis sapien vitae orci tempus porttitor vel vitae risus. Duis in lacus imperdiet, molestie erat in, ullamcorper velit. Maecenas feugiat imperdiet risus vel venenatis. Nam in dolor non arcu viverra ultrices. Aliquam erat volutpat. Vestibulum a pretium libero. In eu libero dui. Sed non semper mi, quis eleifend magna. Aenean molestie sodales laoreet. Nunc malesuada risus nec metus sagittis, eu posuere erat placerat. Mauris feugiat, augue nec convallis congue, magna ligula mattis leo, ut mollis velit lectus ut dolor. Phasellus in venenatis nunc, a semper eros. Praesent efficitur, augue laoreet cursus fringilla, sem turpis tincidunt eros, vitae consequat nunc magna quis mauris.\n\nDuis venenatis dui quis sagittis dapibus. Ut vulputate non lectus et hendrerit. Nulla vel pulvinar sapien. Ut at nibh cursus risus auctor commodo vitae at erat. Aliquam erat volutpat. Praesent vel libero aliquet, viverra ex et, porttitor orci. Nam quam lectus, ornare vitae arcu eget, cursus cursus dolor.\n\nAenean in accumsan mi. Sed dapibus luctus lorem sit amet consequat. Mauris mollis varius magna vitae maximus. Cras lorem velit, sollicitudin sed mattis nec, condimentum vitae erat. Suspendisse potenti. Fusce cursus porta quam, eu feugiat enim feugiat sit amet. Donec non mauris nisl. Proin elementum nec tortor sed egestas. Phasellus porta dictum est non ultrices. Integer eu hendrerit purus. Nulla vitae gravida lectus.', 'Home', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2020-08-27 10:48:52', '2020-08-27 16:48:52', '', 8, 'http://localhost:8012/banana/8-autosave-v1/', 0, 'revision', '', 0),
(11, 1, '2020-08-27 10:48:56', '2020-08-27 16:48:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lobortis mollis urna, scelerisque commodo lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur quis sapien vitae orci tempus porttitor vel vitae risus. Duis in lacus imperdiet, molestie erat in, ullamcorper velit. Maecenas feugiat imperdiet risus vel venenatis. Nam in dolor non arcu viverra ultrices. Aliquam erat volutpat. Vestibulum a pretium libero. In eu libero dui. Sed non semper mi, quis eleifend magna. Aenean molestie sodales laoreet. Nunc malesuada risus nec metus sagittis, eu posuere erat placerat. Mauris feugiat, augue nec convallis congue, magna ligula mattis leo, ut mollis velit lectus ut dolor. Phasellus in venenatis nunc, a semper eros. Praesent efficitur, augue laoreet cursus fringilla, sem turpis tincidunt eros, vitae consequat nunc magna quis mauris.\r\n\r\nDuis venenatis dui quis sagittis dapibus. Ut vulputate non lectus et hendrerit. Nulla vel pulvinar sapien. Ut at nibh cursus risus auctor commodo vitae at erat. Aliquam erat volutpat. Praesent vel libero aliquet, viverra ex et, porttitor orci. Nam quam lectus, ornare vitae arcu eget, cursus cursus dolor.\r\n\r\nAenean in accumsan mi. Sed dapibus luctus lorem sit amet consequat. Mauris mollis varius magna vitae maximus. Cras lorem velit, sollicitudin sed mattis nec, condimentum vitae erat. Suspendisse potenti. Fusce cursus porta quam, eu feugiat enim feugiat sit amet. Donec non mauris nisl. Proin elementum nec tortor sed egestas. Phasellus porta dictum est non ultrices. Integer eu hendrerit purus. Nulla vitae gravida lectus.', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-08-27 10:48:56', '2020-08-27 16:48:56', '', 8, 'http://localhost:8012/banana/8-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-09-08 09:23:03', '2020-09-08 15:23:03', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-09-28 16:28:19', '2020-09-28 22:28:19', '', 0, 'http://localhost:8012/banana/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-09-07 15:09:52', '2020-09-07 21:09:52', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-07 15:09:52', '2020-09-07 21:09:52', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-09-07 15:26:00', '2020-09-07 21:26:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lobortis mollis urna, scelerisque commodo lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur quis sapien vitae orci tempus porttitor vel vitae risus. Duis in lacus imperdiet, molestie erat in, ullamcorper velit. Maecenas feugiat imperdiet risus vel venenatis. Nam in dolor non arcu viverra ultrices. Aliquam erat volutpat. Vestibulum a pretium libero. In eu libero dui. Sed non semper mi, quis eleifend magna. Aenean molestie sodales laoreet. Nunc malesuada risus nec metus sagittis, eu posuere erat placerat. Mauris feugiat, augue nec convallis congue, magna ligula mattis leo, ut mollis velit lectus ut dolor. Phasellus in venenatis nunc, a semper eros. Praesent efficitur, augue laoreet cursus fringilla, sem turpis tincidunt eros, vitae consequat nunc magna quis mauris.\r\n\r\nDuis venenatis dui quis sagittis dapibus. Ut vulputate non lectus et hendrerit. Nulla vel pulvinar sapien. Ut at nibh cursus risus auctor commodo vitae at erat. Aliquam erat volutpat. Praesent vel libero aliquet, viverra ex et, porttitor orci. Nam quam lectus, ornare vitae arcu eget, cursus cursus dolor.\r\n\r\nAenean in accumsan mi. Sed dapibus luctus lorem sit amet consequat. Mauris mollis varius magna vitae maximus. Cras lorem velit, sollicitudin sed mattis nec, condimentum vitae erat. Suspendisse potenti. Fusce cursus porta quam, eu feugiat enim feugiat sit amet. Donec non mauris nisl. Proin elementum nec tortor sed egestas. Phasellus porta dictum est non ultrices. Integer eu hendrerit purus. Nulla vitae gravida lectus.', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-07 15:26:00', '2020-09-07 21:26:00', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-09-08 09:23:51', '2020-09-08 15:23:51', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-09-22 13:24:21', '2020-09-22 19:24:21', '', 0, 'http://localhost:8012/banana/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2020-09-08 09:23:51', '2020-09-08 15:23:51', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-09-22 13:24:22', '2020-09-22 19:24:22', '', 0, 'http://localhost:8012/banana/?p=17', 6, 'nav_menu_item', '', 0),
(18, 1, '2020-09-08 13:51:02', '2020-09-08 19:51:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec erat sem. Pellentesque vel accumsan urna. Vivamus purus mi, bibendum eu dolor hendrerit, elementum fermentum eros. Morbi venenatis tincidunt erat non pulvinar. Mauris vel erat volutpat, volutpat dolor in, cursus neque. Vestibulum viverra velit eu nisl scelerisque, venenatis scelerisque massa dignissim. Vivamus ac ornare eros. Phasellus vel mi dolor. Donec cursus risus ut urna dignissim, id mollis tortor tincidunt. Vestibulum pretium elementum porttitor.\r\n\r\nPellentesque fringilla, velit a vestibulum faucibus, augue mi tristique augue, quis ullamcorper erat tellus eu lorem. Vivamus suscipit orci varius gravida posuere. Cras non feugiat est. Phasellus in tincidunt tortor. Ut tempor leo ut sapien facilisis aliquam. Maecenas a tellus faucibus, lobortis tortor vitae, aliquet ex. Pellentesque in bibendum quam. Ut a purus id sapien facilisis sollicitudin at at lectus. Integer neque augue, bibendum at sagittis ut, aliquam eu metus. Mauris vel ante lacus. Maecenas eu velit pellentesque, consequat justo a, ultricies ante. Nulla interdum ullamcorper quam id viverra.', 'Volante', '', 'publish', 'open', 'open', '', 'volante', '', '', '2020-09-08 14:08:57', '2020-09-08 20:08:57', '', 0, 'http://localhost:8012/banana/?p=18', 0, 'post', '', 0),
(19, 1, '2020-09-08 13:51:02', '2020-09-08 19:51:02', '', 'Volante', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-09-08 13:51:02', '2020-09-08 19:51:02', '', 18, 'http://localhost:8012/banana/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-09-08 14:08:57', '2020-09-08 20:08:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec erat sem. Pellentesque vel accumsan urna. Vivamus purus mi, bibendum eu dolor hendrerit, elementum fermentum eros. Morbi venenatis tincidunt erat non pulvinar. Mauris vel erat volutpat, volutpat dolor in, cursus neque. Vestibulum viverra velit eu nisl scelerisque, venenatis scelerisque massa dignissim. Vivamus ac ornare eros. Phasellus vel mi dolor. Donec cursus risus ut urna dignissim, id mollis tortor tincidunt. Vestibulum pretium elementum porttitor.\r\n\r\nPellentesque fringilla, velit a vestibulum faucibus, augue mi tristique augue, quis ullamcorper erat tellus eu lorem. Vivamus suscipit orci varius gravida posuere. Cras non feugiat est. Phasellus in tincidunt tortor. Ut tempor leo ut sapien facilisis aliquam. Maecenas a tellus faucibus, lobortis tortor vitae, aliquet ex. Pellentesque in bibendum quam. Ut a purus id sapien facilisis sollicitudin at at lectus. Integer neque augue, bibendum at sagittis ut, aliquam eu metus. Mauris vel ante lacus. Maecenas eu velit pellentesque, consequat justo a, ultricies ante. Nulla interdum ullamcorper quam id viverra.', 'Volante', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-09-08 14:08:57', '2020-09-08 20:08:57', '', 18, 'http://localhost:8012/banana/18-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-09-08 14:50:46', '2020-09-08 20:50:46', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2020-09-08 15:23:22', '2020-09-08 21:23:22', '', 0, 'http://localhost:8012/banana/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-09-08 15:07:05', '2020-09-08 21:07:05', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2020-09-08 15:07:27', '2020-09-08 21:07:27', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/facebook.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2020-09-08 15:07:45', '2020-09-08 21:07:45', '', 'facebook hover', '', 'inherit', 'open', 'closed', '', 'facebook-hover', '', '', '2020-09-08 15:07:57', '2020-09-08 21:07:57', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/facebook-hover.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2020-09-08 15:10:37', '2020-09-08 21:10:37', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-09-08 15:23:22', '2020-09-08 21:23:22', '', 0, 'http://localhost:8012/banana/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2020-09-08 15:09:43', '2020-09-08 21:09:43', '', 'Instagram', '', 'inherit', 'open', 'closed', '', 'insta', '', '', '2020-09-08 15:09:59', '2020-09-08 21:09:59', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/insta.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2020-09-08 15:10:08', '2020-09-08 21:10:08', '', 'Instagram hover', '', 'inherit', 'open', 'closed', '', 'insta-hover', '', '', '2020-09-08 15:10:23', '2020-09-08 21:10:23', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/insta-hover.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2020-09-08 15:18:57', '2020-09-08 21:18:57', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-09-21 16:21:07', '2020-09-21 22:21:07', '', 0, 'http://localhost:8012/banana/?page_id=28', 0, 'page', '', 0),
(29, 1, '2020-09-08 15:18:57', '2020-09-08 21:18:57', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-09-08 15:18:57', '2020-09-08 21:18:57', '', 28, 'http://localhost:8012/banana/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-09-08 15:22:22', '2020-09-08 21:22:22', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-09-08 15:23:22', '2020-09-08 21:23:22', '', 0, 'http://localhost:8012/banana/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2020-09-08 15:19:22', '2020-09-08 21:19:22', '', 'Email', '', 'inherit', 'open', 'closed', '', 'email', '', '', '2020-09-08 15:19:50', '2020-09-08 21:19:50', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/email.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-09-08 15:21:39', '2020-09-08 21:21:39', '', 'Email Icon', '', 'inherit', 'open', 'closed', '', 'email-hover', '', '', '2020-09-08 15:22:12', '2020-09-08 21:22:12', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/email-hover.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2020-09-08 15:42:36', '2020-09-08 21:42:36', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-09-22 13:24:22', '2020-09-22 19:24:22', '', 0, 'http://localhost:8012/banana/?p=33', 7, 'nav_menu_item', '', 0),
(34, 1, '2020-09-08 15:43:52', '2020-09-08 21:43:52', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2020-09-21 17:04:29', '2020-09-21 23:04:29', '', 0, 'http://localhost:8012/banana/?page_id=34', 0, 'page', '', 0),
(35, 1, '2020-09-08 15:43:52', '2020-09-08 21:43:52', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-09-08 15:43:52', '2020-09-08 21:43:52', '', 34, 'http://localhost:8012/banana/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-09-08 15:44:08', '2020-09-08 21:44:08', '', 'Preguntas Frecuentes', '', 'trash', 'closed', 'closed', '', 'preguntas-frecuentes__trashed', '', '', '2020-09-22 16:21:41', '2020-09-22 22:21:41', '', 0, 'http://localhost:8012/banana/?page_id=36', 0, 'page', '', 0),
(37, 1, '2020-09-08 15:44:08', '2020-09-08 21:44:08', '', 'Preguntas Frecuentes', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-08 15:44:08', '2020-09-08 21:44:08', '', 36, 'http://localhost:8012/banana/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-09-08 15:44:44', '2020-09-08 21:44:44', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-09-22 13:24:21', '2020-09-22 19:24:21', '', 0, 'http://localhost:8012/banana/?p=39', 4, 'nav_menu_item', '', 0),
(41, 1, '2020-09-10 16:10:18', '2020-09-10 22:10:18', 'font-family: \"DCCHardware\";', 'banana', '', 'publish', 'closed', 'closed', '', 'banana', '', '', '2020-09-10 16:10:18', '2020-09-10 22:10:18', '', 0, 'http://localhost:8012/banana/banana/', 0, 'custom_css', '', 0),
(42, 1, '2020-09-10 16:10:18', '2020-09-10 22:10:18', 'font-family: \"DCCHardware\";', 'banana', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2020-09-10 16:10:18', '2020-09-10 22:10:18', '', 41, 'http://localhost:8012/banana/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-09-10 16:14:49', '2020-09-10 22:14:49', '', 'icon', '', 'inherit', 'open', 'closed', '', 'icon', '', '', '2020-09-10 16:14:49', '2020-09-10 22:14:49', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/icon.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2020-09-10 16:14:55', '2020-09-10 22:14:55', 'http://localhost:8012/banana/wp-content/uploads/2020/09/cropped-icon.png', 'cropped-icon.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon-png', '', '', '2020-09-10 16:14:55', '2020-09-10 22:14:55', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/cropped-icon.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2020-09-10 16:58:52', '2020-09-10 22:58:52', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'productos', '', '', '2020-09-10 16:58:52', '2020-09-10 22:58:52', '', 0, 'http://localhost:8012/banana/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-09-10 16:58:52', '2020-09-10 22:58:52', '', 'Productos', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-09-10 16:58:52', '2020-09-10 22:58:52', '', 46, 'http://localhost:8012/banana/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-09-10 16:59:28', '2020-09-10 22:59:28', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-09-22 13:24:21', '2020-09-22 19:24:21', '', 0, 'http://localhost:8012/banana/?p=48', 2, 'nav_menu_item', '', 0),
(49, 1, '2020-09-11 17:31:42', '2020-09-11 23:31:42', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-11 17:31:42', '2020-09-11 23:31:42', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-09-15 09:21:16', '2020-09-15 15:21:16', '', 'Single', '', 'publish', 'closed', 'closed', '', 'single', '', '', '2020-09-15 09:21:16', '2020-09-15 15:21:16', '', 0, 'http://localhost:8012/banana/?page_id=50', 0, 'page', '', 0),
(52, 1, '2020-09-15 09:21:16', '2020-09-15 15:21:16', '', 'Single', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-09-15 09:21:16', '2020-09-15 15:21:16', '', 50, 'http://localhost:8012/banana/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-09-17 09:23:57', '2020-09-17 15:23:57', '', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-09-17 09:23:57', '2020-09-17 15:23:57', '', 0, 'http://localhost:8012/banana/?page_id=53', 0, 'page', '', 0),
(54, 1, '2020-09-17 09:23:57', '2020-09-17 15:23:57', '', 'Cart', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-09-17 09:23:57', '2020-09-17 15:23:57', '', 53, 'http://localhost:8012/banana/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-09-17 14:22:32', '2020-09-17 20:22:32', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2020-09-22 13:24:21', '2020-09-22 19:24:21', '', 0, 'http://localhost:8012/banana/?p=55', 3, 'nav_menu_item', '', 0),
(57, 1, '2020-09-21 16:10:36', '2020-09-21 22:10:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Contact Us', 'contact-us', 'publish', 'closed', 'closed', '', 'group_5f6922a01a20e', '', '', '2020-09-22 16:28:57', '2020-09-22 22:28:57', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&#038;p=57', 0, 'acf-field-group', '', 0),
(58, 1, '2020-09-21 16:14:15', '2020-09-21 22:14:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Ingresar dirección exacta de Banana Print\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:9:\"direccion\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dirección', 'direccion', 'publish', 'closed', 'closed', '', 'field_5f6924edd8906', '', '', '2020-09-21 16:14:15', '2020-09-21 22:14:15', '', 57, 'http://localhost:8012/banana/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2020-09-21 16:16:42', '2020-09-21 22:16:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:3:\"tel\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Teléfono', 'telefono', 'publish', 'closed', 'closed', '', 'field_5f6926093b830', '', '', '2020-09-21 16:19:49', '2020-09-21 22:19:49', '', 57, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=59', 1, 'acf-field', '', 0),
(60, 1, '2020-09-21 16:18:46', '2020-09-21 22:18:46', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-09-21 16:18:46', '2020-09-21 22:18:46', '', 28, 'http://localhost:8012/banana/28-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-09-21 16:21:07', '2020-09-21 22:21:07', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-09-21 16:21:07', '2020-09-21 22:21:07', '', 28, 'http://localhost:8012/banana/28-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-09-21 16:31:30', '2020-09-21 22:31:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"aboutus.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:9:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:4:\"slug\";i:4;s:6:\"author\";i:5;s:14:\"featured_image\";i:6;s:10:\"categories\";i:7;s:4:\"tags\";i:8;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'About Us', 'about-us', 'publish', 'closed', 'closed', '', 'group_5f6929b516470', '', '', '2020-09-28 16:27:38', '2020-09-28 22:27:38', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&#038;p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2020-09-21 16:43:03', '2020-09-21 22:43:03', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:33:\"Introducir el texto de Bananeidad\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:6;s:9:\"new_lines\";s:0:\"\";}', 'Bananeidad', 'bananeidad', 'publish', 'closed', 'closed', '', 'field_5f6929dfda044', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=63', 4, 'acf-field', '', 0),
(64, 1, '2020-09-21 16:43:03', '2020-09-21 22:43:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:64:\"Introducir la lista de valores seguidos divididos por un guión.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Valores', 'valores', 'publish', 'closed', 'closed', '', 'field_5f692accda045', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=64', 5, 'acf-field', '', 0),
(65, 1, '2020-09-21 16:43:03', '2020-09-21 22:43:03', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:56:\"Introducir el texto de \"Nuestros productos y servicios\".\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Nuestros productos y servicios', 'productos_servicios', 'publish', 'closed', 'closed', '', 'field_5f692b56da046', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=65', 6, 'acf-field', '', 0),
(66, 1, '2020-09-21 16:43:03', '2020-09-21 22:43:03', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:34:\"Introducir el texto de \"Escenario\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:0:\"\";}', 'Escenario', 'escenario', 'publish', 'closed', 'closed', '', 'field_5f692bdada047', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=66', 7, 'acf-field', '', 0),
(67, 1, '2020-09-21 16:43:03', '2020-09-21 22:43:03', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:32:\"Introducir el texto de \"Hobbies\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Hobbies', 'hobbies', 'publish', 'closed', 'closed', '', 'field_5f692c28da048', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=67', 8, 'acf-field', '', 0),
(68, 1, '2020-09-21 16:46:59', '2020-09-21 22:46:59', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-21 16:46:59', '2020-09-21 22:46:59', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-09-21 17:02:19', '2020-09-21 23:02:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"services.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'group_5f692fd02cca8', '', '', '2020-09-22 16:30:21', '2020-09-22 22:30:21', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2020-09-21 17:02:19', '2020-09-21 23:02:19', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:54:\"Introducir texto para la descripción de \"Impresiones\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Impresiones', 'impresiones', 'publish', 'closed', 'closed', '', 'field_5f692ff6421cd', '', '', '2020-09-21 17:02:19', '2020-09-21 23:02:19', '', 70, 'http://localhost:8012/banana/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2020-09-21 17:02:19', '2020-09-21 23:02:19', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:51:\"Introducir texto para la descripción de \"Diseños\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Diseños', 'disenos', 'publish', 'closed', 'closed', '', 'field_5f693072421ce', '', '', '2020-09-21 17:02:19', '2020-09-21 23:02:19', '', 70, 'http://localhost:8012/banana/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2020-09-21 17:02:19', '2020-09-21 23:02:19', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:67:\"Introducir texto para la descripción de \"Manejo de Redes Sociales\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Manejo de Redes Sociales', 'community_manager', 'publish', 'closed', 'closed', '', 'field_5f6930af421cf', '', '', '2020-09-21 17:02:19', '2020-09-21 23:02:19', '', 70, 'http://localhost:8012/banana/?post_type=acf-field&p=73', 2, 'acf-field', '', 0),
(74, 1, '2020-09-21 17:04:29', '2020-09-21 23:04:29', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-09-21 17:04:29', '2020-09-21 23:04:29', '', 34, 'http://localhost:8012/banana/34-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-09-22 10:22:50', '2020-09-22 16:22:50', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:32:\"Introducir el texto de \"Hobbies\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Bananafesto', 'bananafesto', 'publish', 'closed', 'closed', '', 'field_5f6a24a053fcf', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=75', 9, 'acf-field', '', 0),
(76, 1, '2020-09-22 10:34:21', '2020-09-22 16:34:21', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-22 10:34:21', '2020-09-22 16:34:21', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-09-22 11:29:48', '2020-09-22 17:29:48', 'En esta página encontrará una variedad de productos que le podemos ofrecer. Sin embargo, no limite su imaginación. Si tiene algo en mente, díganos, también lo podemos hacer.', 'Las posibilidades son infinitas', '', 'publish', 'closed', 'closed', '', 'las-posibilidades-son-infinitas', '', '', '2020-09-22 11:29:48', '2020-09-22 17:29:48', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=78', 0, 'faq', '', 0),
(79, 1, '2020-09-22 11:30:42', '2020-09-22 17:30:42', 'El hecho de que una imagen sea de 2000px x 1500px no significa que su calidad visual sea óptima. Lo usualmente recomendado es que el archivo tenga una resolución de 300pp (puntos por pulgada). o en español criolla: acerque la imagen y si se ve linda se la juega.', 'El tamaño no importa; la resolución sí', '', 'publish', 'closed', 'closed', '', 'el-tamano-no-importa-la-resolucion-si', '', '', '2020-09-22 11:30:42', '2020-09-22 17:30:42', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=79', 0, 'faq', '', 0),
(80, 1, '2020-09-22 11:32:11', '2020-09-22 17:32:11', 'Cuando alguien nos informa de la medida en que necesita su impresión es muy frecuente que nos den los datos en un orden aleatorio. Lo usual es que se diga primero el ancho y luego el alto. De esta manera se puede agilizar un poco más el proceso.', '¿Qué fue primero: el ancho o el alto?', '', 'publish', 'closed', 'closed', '', 'que-fue-primero-el-ancho-o-el-alto', '', '', '2020-09-22 11:32:11', '2020-09-22 17:32:11', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=80', 0, 'faq', '', 0),
(81, 1, '2020-09-22 11:33:07', '2020-09-22 17:33:07', 'Regularmente no trabajamos con plantillas para nuestros diseños. Todo es lo más personalizado posible.', 'Hacemos el queque y rompemos el molde.', '', 'publish', 'closed', 'closed', '', 'vertical-u-horizaontal-el-mayor-secreto-del-universo-por-fin-revelado', '', '', '2020-09-22 11:34:02', '2020-09-22 17:34:02', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=81', 0, 'faq', '', 0),
(82, 1, '2020-09-22 11:35:02', '2020-09-22 17:35:02', 'Es cierto lo que dicen la leyendas acerca de que podemos cortar adhesivos (o papeles) en cualquier forma, pero no necesariamente en cualquier tamaño. Formas complejas a escalas pequeñas son trabajos que no nos gusta ofrecer, pues el acabado puede no ser el mejor y la calidad adhesiva se puede reducir', 'Los troqueles que el viento se llevó.', '', 'publish', 'closed', 'closed', '', 'los-troqueles-que-el-viento-se-llevo', '', '', '2020-09-22 11:35:02', '2020-09-22 17:35:02', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=82', 0, 'faq', '', 0),
(83, 1, '2020-09-22 11:36:05', '2020-09-22 17:36:05', 'Técnicamente, un brochure es toda aquella publicidad que se reparte de manera directa (folletos, volantes, etc.) Sin embargo, para mejor referencia, nosotros hablamos de los trípticos.', 'A qué le llamamos brochure', '', 'publish', 'closed', 'closed', '', 'a-que-le-llamamos-brochure', '', '', '2020-09-22 11:36:05', '2020-09-22 17:36:05', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=83', 0, 'faq', '', 0),
(84, 1, '2020-09-22 11:36:50', '2020-09-22 17:36:50', 'Para una imprenta tradicional, CMYK es el modo del color ideal. Pero como hacemos impresión digital, no tenemos discriminación por los perfiles de color. Sin embargo, es recomendable que nos notifique cuál es el ajuste de color que tiene su docuemnto.', 'RGB vs CMYK, la pelea del siglo', '', 'publish', 'closed', 'closed', '', 'rgb-vs-cmyk-la-pelea-del-siglo', '', '', '2020-09-22 11:36:50', '2020-09-22 17:36:50', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=84', 0, 'faq', '', 0),
(85, 1, '2020-09-22 11:37:34', '2020-09-22 17:37:34', 'Hay quienes toman en ceunta la palabra \"Banner\" como el tipo de publicidad que se exhibe para ser vista abiertamente (afiches, vallas, lonas), por lo que sería ideal que cuando pida un banner nos especifique con mayor detalle a qué se refiere.', 'A qué llamamos banner', '', 'publish', 'closed', 'closed', '', 'a-que-llamamos-banner', '', '', '2020-09-22 11:37:34', '2020-09-22 17:37:34', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=85', 0, 'faq', '', 0),
(86, 1, '2020-09-22 11:39:22', '2020-09-22 17:39:22', 'Algunos han creado teorías de que un papel vertical es un fenómeno totalmente distinto a un papel mostrado horizontal, pero estudios recientes han demostrado que al rotar 90° una hoja vertical esta se convierte en horizontal y viceversa.', 'Vertical U Horizaontal: El mayor secreto del universo por fin revelado.', '', 'publish', 'closed', 'closed', '', 'vertical-u-horizaontal-el-mayor-secreto-del-universo-por-fin-revelado-2', '', '', '2020-09-22 11:39:22', '2020-09-22 17:39:22', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=86', 0, 'faq', '', 0),
(87, 1, '2020-09-22 11:40:20', '2020-09-22 17:40:20', 'El papel normal no existe. Todos los papeles son especiales.', 'Impresión en papel normal: ¿Mito o realidad?', '', 'publish', 'closed', 'closed', '', 'impresion-en-papel-normal-mito-o-realidad', '', '', '2020-09-22 11:40:20', '2020-09-22 17:40:20', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=87', 0, 'faq', '', 0),
(88, 1, '2020-09-22 13:24:21', '2020-09-22 19:24:21', '', 'Preguntas Frecuentes', '', 'publish', 'closed', 'closed', '', 'preguntas-frecuentes', '', '', '2020-09-22 13:24:21', '2020-09-22 19:24:21', '', 0, 'http://localhost:8012/banana/?p=88', 5, 'nav_menu_item', '', 0),
(89, 1, '2020-09-22 13:26:19', '2020-09-22 19:26:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu dui elit. Cras volutpat accumsan massa, eleifend viverra libero convallis in. Curabitur vehicula tellus at ligula dictum, eget faucibus neque imperdiet. Etiam vel elit in quam placerat semper. Nunc ut vestibulum mi. Proin vel nulla metus. Aenean tristique eu nibh nec condimentum. Maecenas vitae risus eget lacus ullamcorper pulvinar. In auctor vitae ex sed iaculis. Phasellus facilisis magna nec augue mattis, at porta metus maximus.', 'Una pregunta', '', 'trash', 'closed', 'closed', '', 'una-pregunta__trashed', '', '', '2020-09-22 13:29:31', '2020-09-22 19:29:31', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=89', 0, 'faq', '', 0),
(91, 1, '2020-09-22 14:39:22', '2020-09-22 20:39:22', '<label> Nombre Completo\r\n    [text* your-name] </label>\r\n\r\n<label> Correo Electrónico\r\n    [email* your-email] </label>\r\n\r\n<label> Asunto\r\n    [text your-subject] </label>\r\n\r\n<label> Mensaje\r\n    [textarea your-message x5] </label>\r\n\r\n[submit \"Enviar\"]\n1\nBanana Print \"[your-subject]\"\nBanana Print <enoc.villa16@gmail.com>\nenoc.villa16@gmail.com\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Banana Print (http://localhost:8012/banana)\nReply-To: [your-email]\n\n\n\n\nBanana Print \"[your-subject]\"\nBanana Print <enoc.villa16@gmail.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Banana Print (http://localhost:8012/banana)\nReply-To: enoc.villa16@gmail.com\n\n\n\nGracias por su mensaje. Ha sido enviado.\nHubo un error intentando enviar su mensaje. Por favor inténtelo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revise e inténtelo de nuevo.\nHubo un error intentando enviar su mensaje. Por favor inténtelo de nuevo más tarde.\nDebe aceptar los términos y condiciones antes de enviar su mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la permitida.\nLa fecha es posterior a la permitida.\nHubo un error desconocido subiendo el archivo.\nNo tiene permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo el archivo.\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nLa dirección de correo electrónico introducida no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2020-09-22 15:52:00', '2020-09-22 21:52:00', '', 0, 'http://localhost:8012/banana/?post_type=wpcf7_contact_form&#038;p=91', 0, 'wpcf7_contact_form', '', 0),
(92, 1, '2020-09-23 09:58:57', '2020-09-23 15:58:57', '', 'mobile-logo', '', 'inherit', 'open', 'closed', '', 'mobile-logo', '', '', '2020-09-23 09:59:32', '2020-09-23 15:59:32', '', 0, 'http://localhost:8012/banana/wp-content/uploads/2020/09/mobile-logo.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2020-09-23 15:19:50', '2020-09-23 21:19:50', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-23 15:19:50', '2020-09-23 21:19:50', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2020-09-25 17:09:27', '2020-09-25 23:09:27', 'fcsagv&lt;zrhbzdtjhztjhz', 'prueba', '', 'publish', 'closed', 'closed', '', 'prueba', '', '', '2020-09-25 17:09:27', '2020-09-25 23:09:27', '', 0, 'http://localhost:8012/banana/?post_type=faq&#038;p=97', 0, 'faq', '', 0),
(98, 1, '2020-09-28 16:09:34', '2020-09-28 22:09:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:45:\"Imagen de Ana con la misión para ESCRITORIOS\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ana', 'ana', 'publish', 'closed', 'closed', '', 'field_5f725cc1edc0f', '', '', '2020-09-28 16:09:34', '2020-09-28 22:09:34', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2020-09-28 16:10:06', '2020-09-28 22:10:06', '', 'Ana', '', 'inherit', 'open', 'closed', '', 'ana', '', '', '2020-09-28 16:10:06', '2020-09-28 22:10:06', '', 13, 'http://localhost:8012/banana/wp-content/uploads/2020/09/Ana.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2020-09-28 16:10:24', '2020-09-28 22:10:24', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-28 16:10:24', '2020-09-28 22:10:24', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2020-09-28 16:15:10', '2020-09-28 22:15:10', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:45:\"Imagen de Ban con la visión para ESCRITORIOS\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ban', 'ban', 'publish', 'closed', 'closed', '', 'field_5f7260328b37f', '', '', '2020-09-28 16:15:10', '2020-09-28 22:15:10', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&p=101', 1, 'acf-field', '', 0),
(102, 1, '2020-09-28 16:15:27', '2020-09-28 22:15:27', '', 'Ban', '', 'inherit', 'open', 'closed', '', 'ban', '', '', '2020-09-28 16:15:27', '2020-09-28 22:15:27', '', 13, 'http://localhost:8012/banana/wp-content/uploads/2020/09/Ban.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2020-09-28 16:16:38', '2020-09-28 22:16:38', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-28 16:16:38', '2020-09-28 22:16:38', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-09-28 16:27:07', '2020-09-28 22:27:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ana Móvil', 'ana_mob', 'publish', 'closed', 'closed', '', 'field_5f7262abb3aee', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&p=104', 2, 'acf-field', '', 0),
(105, 1, '2020-09-28 16:27:07', '2020-09-28 22:27:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ban Móvil', 'ban_mob', 'publish', 'closed', 'closed', '', 'field_5f726308b3aef', '', '', '2020-09-28 16:27:07', '2020-09-28 22:27:07', '', 62, 'http://localhost:8012/banana/?post_type=acf-field&p=105', 3, 'acf-field', '', 0),
(106, 1, '2020-09-28 16:27:53', '2020-09-28 22:27:53', '', 'Ana-mob', '', 'inherit', 'open', 'closed', '', 'ana-mob', '', '', '2020-09-28 16:27:53', '2020-09-28 22:27:53', '', 13, 'http://localhost:8012/banana/wp-content/uploads/2020/09/Ana-mob.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2020-09-28 16:28:06', '2020-09-28 22:28:06', '', 'Ban-mob', '', 'inherit', 'open', 'closed', '', 'ban-mob', '', '', '2020-09-28 16:28:06', '2020-09-28 22:28:06', '', 13, 'http://localhost:8012/banana/wp-content/uploads/2020/09/Ban-mob.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2020-09-28 16:28:19', '2020-09-28 22:28:19', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-28 16:28:19', '2020-09-28 22:28:19', '', 13, 'http://localhost:8012/banana/13-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-10-13 17:40:57', '2020-10-13 23:40:57', 'a:6:{s:8:\"location\";a:0:{}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:0:{}}', 'Añadir Productos', 'anadir-productos', 'trash', 'closed', 'closed', '', 'group_5f8913a20f93a__trashed', '', '', '2020-10-15 21:30:52', '2020-10-16 03:30:52', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&#038;p=111', 0, 'acf-field-group', '', 0),
(113, 1, '2020-10-14 09:25:20', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-14 09:25:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=113', 0, 'banana_products', '', 0),
(114, 1, '2020-10-14 09:25:56', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-14 09:25:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=114', 0, 'banana_products', '', 0),
(115, 1, '2020-10-14 09:46:49', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-14 09:46:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=115', 0, 'banana_products', '', 0),
(116, 1, '2020-10-14 09:57:27', '2020-10-14 15:57:27', '', 'Banana Products', '', 'publish', 'closed', 'closed', '', 'banana_products', '', '', '2020-10-14 09:57:27', '2020-10-14 15:57:27', '', 0, 'http://localhost:8012/banana/?post_type=_pods_pod&p=116', 0, '_pods_pod', '', 0),
(117, 1, '2020-10-14 09:59:32', '2020-10-14 15:59:32', '', 'Products 2', '', 'publish', 'closed', 'closed', '', 'product_2', '', '', '2020-10-14 09:59:32', '2020-10-14 15:59:32', '', 0, 'http://localhost:8012/banana/?post_type=_pods_pod&p=117', 0, '_pods_pod', '', 0),
(118, 1, '2020-10-15 13:22:56', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 13:22:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=118', 0, 'banana_products', '', 0),
(119, 1, '2020-10-15 13:53:45', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 13:53:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=119', 0, 'banana_products', '', 0),
(120, 1, '2020-10-15 14:14:23', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 14:14:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=120', 0, 'banana_products', '', 0),
(121, 1, '2020-10-15 14:58:32', '2020-10-15 20:58:32', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:16:\"Añadir material\";}', 'Añadir Material', 'anadir_material', 'trash', 'closed', 'closed', '', 'field_5f88b4c99cbda__trashed', '', '', '2020-10-15 21:30:59', '2020-10-16 03:30:59', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=121', 1, 'acf-field', '', 0),
(122, 1, '2020-10-15 14:58:32', '2020-10-15 20:58:32', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"Taller\";s:6:\"Taller\";s:10:\"Impresión\";s:10:\"Impresión\";}s:13:\"default_value\";s:12:\"elegir área\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Area', 'elegir_area', 'publish', 'closed', 'closed', '', 'field_5f88b5b29cbdb', '', '', '2020-10-15 15:39:57', '2020-10-15 21:39:57', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=122', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2020-10-15 14:58:33', '2020-10-15 20:58:33', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f88b5b29cbdb\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"Taller\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:5:\"Vinil\";s:5:\"Vinil\";s:4:\"Lona\";s:4:\"Lona\";s:8:\"Poliflex\";s:8:\"Poliflex\";}s:13:\"default_value\";s:15:\"Elegir material\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Meterial', 'elegir_meterial_taller', 'publish', 'closed', 'closed', '', 'field_5f88b7989cbdc', '', '', '2020-10-15 15:39:57', '2020-10-15 21:39:57', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=123', 1, 'acf-field', '', 0),
(124, 1, '2020-10-15 14:58:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 14:58:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=124', 0, 'banana_products', '', 0),
(125, 1, '2020-10-15 14:58:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 14:58:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=125', 0, 'banana_products', '', 0),
(126, 1, '2020-10-15 15:03:26', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 15:03:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=126', 0, 'banana_products', '', 0),
(128, 1, '2020-10-15 15:33:53', '2020-10-15 21:33:53', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f88b5b29cbdb\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"Impresión\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:0:{}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Material', 'elegir_material_impresion', 'publish', 'closed', 'closed', '', 'field_5f88c037f5dd0', '', '', '2020-10-15 15:39:57', '2020-10-15 21:39:57', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=128', 2, 'acf-field', '', 0),
(129, 1, '2020-10-15 15:40:21', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 15:40:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=129', 0, 'banana_products', '', 0),
(130, 1, '2020-10-15 17:03:45', '2020-10-15 23:03:45', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2020-10-16 11:53:16', '2020-10-16 17:53:16', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&#038;p=130', 0, 'banana_products', '', 0),
(131, 1, '2020-10-15 15:43:07', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 15:43:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=131', 0, 'banana_products', '', 0),
(132, 1, '2020-10-15 15:53:57', '2020-10-15 21:53:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen de prevista', 'imagen_de_prevista', 'trash', 'closed', 'closed', '', 'field_5f88c43e361e1__trashed', '', '', '2020-10-15 21:30:53', '2020-10-16 03:30:53', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=132', 0, 'acf-field', '', 0),
(133, 1, '2020-10-15 15:54:09', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 15:54:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=133', 0, 'banana_products', '', 0),
(134, 1, '2020-10-15 15:56:55', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 15:56:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=134', 0, 'banana_products', '', 0),
(135, 1, '2020-10-15 15:59:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 15:59:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=banana_products&p=135', 0, 'banana_products', '', 0),
(136, 1, '2020-10-15 16:42:37', '2020-10-15 22:42:37', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"cantidad\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:1;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Cantidades', 'cantidades', 'publish', 'closed', 'closed', '', 'field_5f88d026f25e6', '', '', '2020-10-15 17:00:16', '2020-10-15 23:00:16', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=136', 3, 'acf-field', '', 0),
(137, 1, '2020-10-15 16:55:10', '2020-10-15 22:55:10', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:41:\"Centímetros: ancho X alto: ejemplo 25x10\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:9:\"dimension\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:1;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Dimensiones', 'dimensiones', 'publish', 'closed', 'closed', '', 'field_5f88d32030e86', '', '', '2020-10-15 17:00:16', '2020-10-15 23:00:16', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=137', 4, 'acf-field', '', 0),
(138, 1, '2020-10-15 20:38:52', '2020-10-16 02:38:52', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:0:{}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Tipo', 'elegir_tipo_taller', 'publish', 'closed', 'closed', '', 'field_5f89079aa35f3', '', '', '2020-10-15 20:38:52', '2020-10-16 02:38:52', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&p=138', 5, 'acf-field', '', 0),
(139, 1, '2020-10-15 20:42:08', '2020-10-16 02:42:08', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5f88b7989cbdc\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:0:{}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Tipo', 'elegir_tipo_taller', 'publish', 'closed', 'closed', '', 'field_5f89087330dda', '', '', '2020-10-15 20:44:53', '2020-10-16 02:44:53', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=139', 5, 'acf-field', '', 0),
(140, 1, '2020-10-15 20:45:57', '2020-10-16 02:45:57', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5f88b7989cbdc\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:0:{}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Tipo', 'elegir_tipo_taller', 'publish', 'closed', 'closed', '', 'field_5f8909393af52', '', '', '2020-10-15 20:45:57', '2020-10-16 02:45:57', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&p=140', 5, 'acf-field', '', 0),
(141, 1, '2020-10-15 20:46:43', '2020-10-16 02:46:43', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5f88c43e361e1\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:0:{}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Tipo', 'elegir_tipo_taller', 'publish', 'closed', 'closed', '', 'field_5f8909752a1c5', '', '', '2020-10-15 20:46:43', '2020-10-16 02:46:43', '', 121, 'http://localhost:8012/banana/?post_type=acf-field&p=141', 5, 'acf-field', '', 0),
(142, 1, '2020-10-15 20:48:02', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-15 20:48:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?p=142', 0, 'post', '', 0),
(146, 1, '2020-10-15 20:49:33', '2020-10-16 02:49:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '146__trashed', '', '', '2020-10-15 21:30:59', '2020-10-16 03:30:59', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=146', 5, 'acf-field', '', 0),
(148, 1, '2020-10-15 20:49:33', '2020-10-16 02:49:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Elegir Tipo', '', 'trash', 'closed', 'closed', '', 'elegir-tipo__trashed-2', '', '', '2020-10-15 21:30:59', '2020-10-16 03:30:59', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=148', 1, 'acf-field', '', 0),
(149, 1, '2020-10-15 20:49:33', '2020-10-16 02:49:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', 'elegir_tipo_taller', 'publish', 'closed', 'closed', '', '149', '', '', '2020-10-15 20:49:33', '2020-10-16 02:49:33', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&p=149', 0, 'acf-field', '', 0),
(170, 1, '2020-10-15 20:50:05', '2020-10-16 02:50:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '170__trashed', '', '', '2020-10-15 21:31:00', '2020-10-16 03:31:00', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=170', 5, 'acf-field', '', 0),
(171, 1, '2020-10-15 20:50:05', '2020-10-16 02:50:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '171__trashed', '', '', '2020-10-15 21:30:54', '2020-10-16 03:30:54', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=171', 0, 'acf-field', '', 0),
(172, 1, '2020-10-15 20:50:06', '2020-10-16 02:50:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Elegir Tipo', '', 'trash', 'closed', 'closed', '', 'elegir-tipo__trashed', '', '', '2020-10-15 21:30:54', '2020-10-16 03:30:54', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=172', 0, 'acf-field', '', 0),
(173, 1, '2020-10-15 20:50:06', '2020-10-16 02:50:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', 'elegir_tipo_taller', 'publish', 'closed', 'closed', '', '173', '', '', '2020-10-15 20:50:06', '2020-10-16 02:50:06', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&p=173', 0, 'acf-field', '', 0),
(174, 1, '2020-10-15 20:50:06', '2020-10-16 02:50:06', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:7:\"choices\";a:0:{}s:13:\"default_value\";b:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";}', '', '', 'trash', 'closed', 'closed', '', '174__trashed', '', '', '2020-10-15 21:30:54', '2020-10-16 03:30:54', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=174', 0, 'acf-field', '', 0),
(175, 1, '2020-10-15 20:50:07', '2020-10-16 02:50:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '175__trashed', '', '', '2020-10-15 21:30:54', '2020-10-16 03:30:54', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=175', 0, 'acf-field', '', 0),
(176, 1, '2020-10-15 20:50:07', '2020-10-16 02:50:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '176__trashed', '', '', '2020-10-15 21:30:55', '2020-10-16 03:30:55', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=176', 0, 'acf-field', '', 0),
(177, 1, '2020-10-15 20:50:08', '2020-10-16 02:50:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '177__trashed', '', '', '2020-10-15 21:30:55', '2020-10-16 03:30:55', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=177', 0, 'acf-field', '', 0),
(178, 1, '2020-10-15 20:50:08', '2020-10-16 02:50:08', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '178__trashed', '', '', '2020-10-15 21:30:55', '2020-10-16 03:30:55', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=178', 0, 'acf-field', '', 0),
(179, 1, '2020-10-15 20:50:08', '2020-10-16 02:50:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '179__trashed', '', '', '2020-10-15 21:30:55', '2020-10-16 03:30:55', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=179', 0, 'acf-field', '', 0),
(180, 1, '2020-10-15 20:50:09', '2020-10-16 02:50:09', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"allow_null\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '180__trashed', '', '', '2020-10-15 21:30:56', '2020-10-16 03:30:56', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=180', 0, 'acf-field', '', 0),
(181, 1, '2020-10-15 20:50:11', '2020-10-16 02:50:11', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"multiple\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '181__trashed', '', '', '2020-10-15 21:30:56', '2020-10-16 03:30:56', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=181', 0, 'acf-field', '', 0),
(182, 1, '2020-10-15 20:50:13', '2020-10-16 02:50:13', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:2:\"ui\";i:0;s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '182__trashed', '', '', '2020-10-15 21:30:56', '2020-10-16 03:30:56', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=182', 0, 'acf-field', '', 0),
(183, 1, '2020-10-15 20:50:13', '2020-10-16 02:50:13', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"value\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '183__trashed', '', '', '2020-10-15 21:30:56', '2020-10-16 03:30:56', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=183', 0, 'acf-field', '', 0),
(184, 1, '2020-10-15 20:50:14', '2020-10-16 02:50:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '184__trashed', '', '', '2020-10-15 21:30:57', '2020-10-16 03:30:57', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=184', 0, 'acf-field', '', 0),
(185, 1, '2020-10-15 20:50:15', '2020-10-16 02:50:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";N;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '185__trashed', '', '', '2020-10-15 21:30:57', '2020-10-16 03:30:57', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=185', 0, 'acf-field', '', 0),
(186, 1, '2020-10-15 20:50:15', '2020-10-16 02:50:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:1:{s:5:\"field\";s:19:\"field_5f88b7989cbdc\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '186__trashed', '', '', '2020-10-15 21:30:57', '2020-10-16 03:30:57', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=186', 0, 'acf-field', '', 0),
(187, 1, '2020-10-15 20:50:16', '2020-10-16 02:50:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:1:{s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '187__trashed', '', '', '2020-10-15 21:30:58', '2020-10-16 03:30:58', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=187', 0, 'acf-field', '', 0),
(188, 1, '2020-10-15 20:50:16', '2020-10-16 02:50:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '188__trashed', '', '', '2020-10-15 21:30:58', '2020-10-16 03:30:58', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=188', 0, 'acf-field', '', 0),
(189, 1, '2020-10-15 20:50:17', '2020-10-16 02:50:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '189__trashed', '', '', '2020-10-15 21:30:58', '2020-10-16 03:30:58', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=189', 0, 'acf-field', '', 0),
(190, 1, '2020-10-15 20:50:18', '2020-10-16 02:50:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";b:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', '190__trashed', '', '', '2020-10-15 21:30:58', '2020-10-16 03:30:58', '', 111, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=190', 0, 'acf-field', '', 0),
(191, 1, '2020-10-15 21:19:31', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 21:19:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=191', 0, 'acf-field-group', '', 0),
(192, 1, '2020-10-15 21:24:14', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 21:24:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=192', 0, 'acf-field-group', '', 0),
(193, 1, '2020-10-15 21:32:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 21:32:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=193', 0, 'acf-field-group', '', 0),
(194, 1, '2020-10-15 21:33:12', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 21:33:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=194', 0, 'acf-field-group', '', 0),
(195, 1, '2020-10-15 21:33:47', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 21:33:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=195', 0, 'acf-field-group', '', 0),
(196, 1, '2020-10-15 21:33:53', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 21:33:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=196', 0, 'acf-field-group', '', 0),
(197, 1, '2020-10-15 21:34:36', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 21:34:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=197', 0, 'acf-field-group', '', 0),
(198, 1, '2020-10-15 21:40:19', '2020-10-16 03:40:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"banana_products\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Añadir Productos', 'anadir-productos', 'publish', 'closed', 'closed', '', 'group_5f8915538b6d6', '', '', '2020-10-16 11:52:43', '2020-10-16 17:52:43', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&#038;p=198', 0, 'acf-field-group', '', 0),
(199, 1, '2020-10-15 21:40:19', '2020-10-16 03:40:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Añadir Material', 'anadir_material', 'publish', 'closed', 'closed', '', 'field_5f891556cbe87', '', '', '2020-10-15 21:41:49', '2020-10-16 03:41:49', '', 198, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=199', 0, 'acf-field', '', 0),
(200, 1, '2020-10-15 21:40:19', '2020-10-16 03:40:19', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"Taller\";s:6:\"Taller\";s:10:\"Impresión\";s:10:\"Impresión\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Area', 'elegir_area', 'publish', 'closed', 'closed', '', 'field_5f891585cbe88', '', '', '2020-10-15 21:40:19', '2020-10-16 03:40:19', '', 199, 'http://localhost:8012/banana/?post_type=acf-field&p=200', 0, 'acf-field', '', 0),
(201, 1, '2020-10-15 21:40:19', '2020-10-16 03:40:19', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f891585cbe88\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"Taller\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:5:\"Vinil\";s:5:\"Vinil\";s:4:\"Lona\";s:4:\"Lona\";s:8:\"Poliflex\";s:8:\"Poliflex\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Material Taller', 'elegir_meterial_taller', 'publish', 'closed', 'closed', '', 'field_5f8915adcbe89', '', '', '2020-10-15 21:49:08', '2020-10-16 03:49:08', '', 199, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=201', 1, 'acf-field', '', 0),
(202, 1, '2020-10-15 21:40:19', '2020-10-16 03:40:19', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f891585cbe88\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"Impresión\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:15:{i:15;s:8:\"Algodón\";i:4;s:4:\"Bond\";i:12;s:11:\"Café Claro\";i:5;s:6:\"Couche\";i:11;s:4:\"Gris\";i:14;s:9:\"Hoja Seca\";i:13;s:4:\"Lino\";i:18;s:23:\"Lámina de emplasticado\";i:16;s:6:\"Mimbre\";i:6;s:7:\"Opalina\";i:7;s:14:\"Papel adhesivo\";i:8;s:23:\"Papel pergamino perlado\";i:9;s:7:\"Perlado\";i:17;s:9:\"Reciclado\";i:10;s:5:\"Sirio\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Elegir Material Impresion', 'elegir_material_impresion', 'publish', 'closed', 'closed', '', 'field_5f8915e7cbe8a', '', '', '2020-10-15 21:49:08', '2020-10-16 03:49:08', '', 199, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=202', 2, 'acf-field', '', 0),
(203, 1, '2020-10-15 21:51:14', '2020-10-16 03:51:14', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Material', 'material', 'publish', 'closed', 'closed', '', 'field_5f8918a972110', '', '', '2020-10-16 11:52:43', '2020-10-16 17:52:43', '', 198, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=203', 1, 'acf-field', '', 0),
(207, 1, '2020-10-16 11:45:02', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-16 11:45:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:8012/banana/?post_type=acf-field-group&p=207', 0, 'acf-field-group', '', 0),
(208, 1, '2020-10-16 11:49:48', '2020-10-16 17:49:48', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"Uno\";s:3:\"Uno\";s:3:\"Dos\";s:3:\"Dos\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Inicio', 'inicio', 'publish', 'closed', 'closed', '', 'field_5f89dce2e4270', '', '', '2020-10-16 11:50:47', '2020-10-16 17:50:47', '', 203, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=208', 0, 'acf-field', '', 0),
(209, 1, '2020-10-16 11:49:48', '2020-10-16 17:49:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f89dce2e4270\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"Uno\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Uno', 'uno', 'publish', 'closed', 'closed', '', 'field_5f89dd13e4271', '', '', '2020-10-16 11:50:47', '2020-10-16 17:50:47', '', 203, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=209', 1, 'acf-field', '', 0),
(210, 1, '2020-10-16 11:49:48', '2020-10-16 17:49:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f89dce2e4270\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"Dos\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dos', 'dos', 'publish', 'closed', 'closed', '', 'field_5f89dd27e4272', '', '', '2020-10-16 11:50:47', '2020-10-16 17:50:47', '', 203, 'http://localhost:8012/banana/?post_type=acf-field&#038;p=210', 2, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Left Bar', 'left-bar', 0),
(3, 'Productos', 'producto', 0),
(4, 'Social Links', 'social-links', 0),
(5, '25', '25', 0),
(6, '50', '50', 0),
(7, '75', '75', 0),
(8, '1', '1', 0),
(9, '3', '3', 0),
(10, '1', '1', 0),
(11, '2', '2', 0),
(12, '5', '5', 0),
(13, '50x50', '50x50', 0),
(14, '25x50', '25x50', 0),
(15, '10x20', '10x20', 0),
(16, '25', '25', 0),
(17, '50', '50', 0),
(18, '7x12', '7x12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 2, 0),
(17, 2, 0),
(18, 3, 0),
(22, 4, 0),
(25, 4, 0),
(30, 4, 0),
(33, 2, 0),
(39, 2, 0),
(48, 2, 0),
(55, 2, 0),
(88, 2, 0),
(130, 10, 0),
(130, 11, 0),
(130, 12, 0),
(130, 13, 0),
(130, 14, 0),
(130, 15, 0),
(130, 16, 0),
(130, 17, 0),
(130, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'athlete', '', 0, 0),
(6, 6, 'athlete', '', 0, 0),
(7, 7, 'athlete', '', 0, 0),
(8, 8, 'athlete', '', 0, 0),
(9, 9, 'athlete', '', 0, 0),
(10, 10, 'cantidad', '', 0, 0),
(11, 11, 'cantidad', '', 0, 0),
(12, 12, 'cantidad', '', 0, 0),
(13, 13, 'dimension', '', 0, 0),
(14, 14, 'dimension', '', 0, 0),
(15, 15, 'dimension', '', 0, 0),
(16, 16, 'cantidad', '', 0, 0),
(17, 17, 'cantidad', '', 0, 0),
(18, 18, 'dimension', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"a1aee9d3fe3553acafe14a95e58e6678999b90eae0ff6285af5025cd268b4318\";a:4:{s:10:\"expiration\";i:1603143203;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601933603;}s:64:\"7e424f842613fcb77120cdb55e9a516af00e326651ec519e6f04779a5c9ef5c1\";a:4:{s:10:\"expiration\";i:1604027825;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1602818225;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '142'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_site_health\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_right_now,dashboard_activity,dashboard_site_health\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=0&mfold=o'),
(25, 1, 'wp_user-settings-time', '1601935591'),
(26, 1, 'closedpostboxes_page', 'a:2:{i:0;s:13:\"pageparentdiv\";i:1;s:27:\"wp-mobile-menu-meta-options\";}'),
(27, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(28, 1, 'show_per_page', '25'),
(29, 1, 'orderby', ''),
(30, 1, 'acf_user_settings', 'a:0:{}');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BVgBkHA5/BTfyx93zUaUNTk8rL/bDF0', 'admin', 'enoc.villa16@gmail.com', 'http://localhost:8012/banana', '2020-08-24 17:17:46', '', 0, 'admin');

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
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_podsrel`
--
ALTER TABLE `wp_podsrel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_item_idx` (`field_id`,`item_id`),
  ADD KEY `rel_field_rel_item_idx` (`related_field_id`,`related_item_id`),
  ADD KEY `field_rel_item_idx` (`field_id`,`related_item_id`),
  ADD KEY `rel_field_item_idx` (`related_field_id`,`item_id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=760;

--
-- AUTO_INCREMENT for table `wp_podsrel`
--
ALTER TABLE `wp_podsrel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
