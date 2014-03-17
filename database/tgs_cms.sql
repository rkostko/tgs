-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2014 at 10:07 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tgs_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl_classes`
--

CREATE TABLE IF NOT EXISTS `acl_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_entries`
--

CREATE TABLE IF NOT EXISTS `acl_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) unsigned NOT NULL,
  `object_identity_id` int(10) unsigned DEFAULT NULL,
  `security_identity_id` int(10) unsigned NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) unsigned NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  KEY `IDX_46C8B806EA000B10` (`class_id`),
  KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  KEY `IDX_46C8B806DF9183C9` (`security_identity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_object_identities`
--

CREATE TABLE IF NOT EXISTS `acl_object_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_object_identity_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_object_identity_ancestors`
--

CREATE TABLE IF NOT EXISTS `acl_object_identity_ancestors` (
  `object_identity_id` int(10) unsigned NOT NULL,
  `ancestor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  KEY `IDX_825DE299C671CEA1` (`ancestor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_security_identities`
--

CREATE TABLE IF NOT EXISTS `acl_security_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bannercontent_blocks`
--

CREATE TABLE IF NOT EXISTS `bannercontent_blocks` (
  `page_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`contentblock_id`),
  KEY `IDX_F4D586C4663E4` (`page_id`),
  KEY `IDX_F4D58642ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bannercontent_blocks`
--

INSERT INTO `bannercontent_blocks` (`page_id`, `contentblock_id`) VALUES
(91, 76),
(91, 77);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(11) DEFAULT NULL,
  `introimage` int(11) DEFAULT NULL,
  `bgimage` int(11) DEFAULT NULL,
  `introvideo` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageOrder` int(11) NOT NULL,
  `showPageTitle` int(11) NOT NULL,
  `publishState` int(11) NOT NULL,
  `pageclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introtext` longtext COLLATE utf8_unicode_ci,
  `intromediasize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagetype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F41BCA70E16C6B94` (`alias`),
  UNIQUE KEY `UNIQ_F41BCA70F3890D5F` (`introimage`),
  UNIQUE KEY `UNIQ_F41BCA7097AB4E12` (`bgimage`),
  UNIQUE KEY `UNIQ_F41BCA704A73D32C` (`introvideo`),
  KEY `IDX_F41BCA70BDAFD8C8` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=89 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `author`, `introimage`, `bgimage`, `introvideo`, `date`, `title`, `alias`, `pageOrder`, `showPageTitle`, `publishState`, `pageclass`, `description`, `keywords`, `introtext`, `intromediasize`, `introclass`, `pagetype`) VALUES
(81, 13, NULL, NULL, NULL, '2014-02-04', 'Blog Home', 'articles', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_home'),
(82, 13, NULL, NULL, NULL, '2014-02-04', 'News', 'news', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_cat_page'),
(83, 13, NULL, NULL, NULL, '2014-02-04', 'Events', 'events', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_cat_page'),
(84, 13, NULL, NULL, NULL, '2014-02-04', 'Blog Filtered Listing', 'tagged', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_filtered_list'),
(85, 13, 142, NULL, NULL, '2014-02-04', 'Test Blog Post 1', 'test-blog-post-1', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_article'),
(86, 13, 143, NULL, NULL, '2014-02-04', 'Test Blog Post 2', 'test-blog-post-2', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_article'),
(87, 13, 144, NULL, NULL, '2014-02-04', 'Test Blog Post 3', 'test-blog-post-3', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_article'),
(88, 13, 145, NULL, NULL, '2014-02-04', 'Test Blog Post 4', 'test-blog-post-4', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'blog_article');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

CREATE TABLE IF NOT EXISTS `blogs_categories` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`category_id`),
  KEY `IDX_9DB3BC97DAE07E97` (`blog_id`),
  KEY `IDX_9DB3BC9712469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs_categories`
--

INSERT INTO `blogs_categories` (`blog_id`, `category_id`) VALUES
(85, 50),
(86, 51),
(87, 50),
(88, 51);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_tags`
--

CREATE TABLE IF NOT EXISTS `blogs_tags` (
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`tag_id`),
  KEY `IDX_B21862B8DAE07E97` (`blog_id`),
  KEY `IDX_B21862B8BAD26311` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs_tags`
--

INSERT INTO `blogs_tags` (`blog_id`, `tag_id`) VALUES
(85, 25),
(86, 26),
(87, 26),
(88, 25);

-- --------------------------------------------------------

--
-- Table structure for table `blog_bannercontent_blocks`
--

CREATE TABLE IF NOT EXISTS `blog_bannercontent_blocks` (
  `blog_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`contentblock_id`),
  KEY `IDX_BBBD8485DAE07E97` (`blog_id`),
  KEY `IDX_BBBD848542ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_extracontent_blocks`
--

CREATE TABLE IF NOT EXISTS `blog_extracontent_blocks` (
  `blog_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`contentblock_id`),
  KEY `IDX_D0FE99C6DAE07E97` (`blog_id`),
  KEY `IDX_D0FE99C642ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_maincontent_blocks`
--

CREATE TABLE IF NOT EXISTS `blog_maincontent_blocks` (
  `blog_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`contentblock_id`),
  KEY `IDX_1FB7CF4EDAE07E97` (`blog_id`),
  KEY `IDX_1FB7CF4E42ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_maincontent_blocks`
--

INSERT INTO `blog_maincontent_blocks` (`blog_id`, `contentblock_id`) VALUES
(85, 63);

-- --------------------------------------------------------

--
-- Table structure for table `blog_modalcontent_blocks`
--

CREATE TABLE IF NOT EXISTS `blog_modalcontent_blocks` (
  `blog_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`contentblock_id`),
  KEY `IDX_3262B322DAE07E97` (`blog_id`),
  KEY `IDX_3262B32242ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryIcon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3AF34668AD0F3245` (`categoryIcon`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `categoryClass`, `categoryIcon`) VALUES
(49, 'Homepage', NULL, NULL),
(50, 'News', 'news', NULL),
(51, 'Events', 'events', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `commentType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bottrap` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F9E962ADAE07E97` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `title`, `username`, `comment`, `approved`, `created`, `commentType`, `bottrap`) VALUES
(31, 85, 'Sample Comment 1', 'blogger1', 'To make a long story short. You can''t go wrong by choosing Symfony! And no one has ever been fired for using Symfony.', 1, '2014-02-04 23:43:20', 'Blog', NULL),
(32, 85, 'Sample Comment 2', 'blogger2', 'To make a long story short. You can''t go wrong by choosing Symfony! And no one has ever been fired for using Symfony 2.', 1, '2014-02-04 23:43:20', 'Blog', NULL),
(33, 85, 'Sample Comment 3', 'blogger3', 'To make a long story short. You can''t go wrong by choosing Symfony! And no one has ever been fired for using Symfony 3.', 1, '2014-02-04 23:43:20', 'Blog', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_blocks`
--

CREATE TABLE IF NOT EXISTS `content_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide` int(11) DEFAULT NULL,
  `vimeo` int(11) DEFAULT NULL,
  `youtube` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishedState` int(11) NOT NULL,
  `availability` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `showTitle` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `className` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizeClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mediaSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contentType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `htmlText` longtext COLLATE utf8_unicode_ci,
  `fileFile` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A6DBE5D472EFEE62` (`slide`),
  UNIQUE KEY `UNIQ_A6DBE5D44E850E4D` (`fileFile`),
  UNIQUE KEY `UNIQ_A6DBE5D47316E1A3` (`vimeo`),
  UNIQUE KEY `UNIQ_A6DBE5D4F0789934` (`youtube`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=78 ;

--
-- Dumping data for table `content_blocks`
--

INSERT INTO `content_blocks` (`id`, `slide`, `vimeo`, `youtube`, `title`, `publishedState`, `availability`, `showTitle`, `ordering`, `className`, `sizeClass`, `mediaSize`, `idName`, `contentType`, `htmlText`, `fileFile`) VALUES
(59, NULL, NULL, NULL, 'Sample Content Home', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'html', '<p>Quisque non arcu id ipsum imperdiet ultricies pharetra eu nibh. Etiam eros lectus, ullamcorper et congue in, lobortis sit amet lectus. In fermentum quam in arcu sodales, id varius est placerat. Fusce a dictum mi. Aliquam accumsan diam eget rutrum tincidunt. Nullam massa metus, placerat quis mattis nec</p>', NULL),
(60, NULL, NULL, NULL, 'Sample Content 1', 1, 'page', 1, 1, 'sampleClassname', 'large-12', NULL, 'sampleId', 'html', '<p>Quisque non arcu id ipsum imperdiet ultricies pharetra eu nibh. Etiam eros lectus, ullamcorper et congue in, lobortis sit amet lectus. In fermentum quam in arcu sodales, id varius est placerat. Fusce a dictum mi. Aliquam accumsan diam eget rutrum tincidunt. Nullam massa metus, placerat quis mattis nec</p>', NULL),
(61, NULL, NULL, NULL, 'Sample Content 2', 1, 'page', 1, 2, NULL, 'large-12', NULL, NULL, 'html', '<p>Quisque non arcu id ipsum imperdiet ultricies pharetra eu nibh. Etiam eros lectus, ullamcorper et congue in, lobortis sit amet lectus. In fermentum quam in arcu sodales, id varius est placerat. Fusce a dictum mi. Aliquam accumsan diam eget rutrum tincidunt. Nullam massa metus, placerat quis mattis nec</p>', NULL),
(62, NULL, NULL, NULL, 'Sample Contact Form', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'contact', NULL, NULL),
(63, NULL, NULL, NULL, 'Sample Blog Content 1', 1, 'page', 1, 1, 'sampleClassname', 'large-12', NULL, 'sampleId', 'html', '<p>Quisque non arcu id ipsum imperdiet ultricies pharetra eu nibh. Etiam eros lectus, ullamcorper et congue in, lobortis sit amet lectus. In fermentum quam in arcu sodales, id varius est placerat. Fusce a dictum mi. Aliquam accumsan diam eget rutrum tincidunt. Nullam massa metus, placerat quis mattis nec</p>', NULL),
(66, NULL, NULL, NULL, 'Sample Content Destinations', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'html', '<p>Quisque non arcu id ipsum imperdiet ultricies pharetra eu nibh. Etiam eros lectus, ullamcorper et congue in, lobortis sit amet lectus. In fermentum quam in arcu sodales, id varius est placerat. Fusce a dictum mi. Aliquam accumsan diam eget rutrum tincidunt. Nullam massa metus, placerat quis mattis nec</p>', NULL),
(67, NULL, NULL, NULL, 'Sample Content North Greece', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'html', '<p>Quisque non arcu id ipsum imperdiet ultricies pharetra eu nibh. Etiam eros lectus, ullamcorper et congue in, lobortis sit amet lectus. In fermentum quam in arcu sodales, id varius est placerat. Fusce a dictum mi. Aliquam accumsan diam eget rutrum tincidunt. Nullam massa metus, placerat quis mattis nec</p>', NULL),
(68, NULL, NULL, NULL, 'Sample Content North Greece', 1, 'page', 1, 2, NULL, 'large-12', NULL, NULL, 'html', '<p>Quisque non arcu id ipsum imperdiet ultricies pharetra eu nibh. Etiam eros lectus, ullamcorper et congue in, lobortis sit amet lectus. In fermentum quam in arcu sodales, id varius est placerat. Fusce a dictum mi. Aliquam accumsan diam eget rutrum tincidunt. Nullam massa metus, placerat quis mattis nec</p>', NULL),
(69, NULL, NULL, NULL, 'HOW TO GET THERE', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'html', '<p>The term "surfing" refers to the act of riding a wave, regardless of whether the wave is ridden with a board or without a board, and regardless of the stance used. For instance, the native peoples of the Pacific surfed waves on alaia, paipo, and other such crafts, and did so on their bellies, knees, and However, the modern day definition of surfing most often refers to a surfer riding a wave standing up on a surfboard, and this is also referred to as stand-up surfing.</p>', NULL),
(70, NULL, NULL, NULL, 'gdfgdfg', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'html', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.</p>', NULL),
(71, NULL, NULL, NULL, 'thdhd', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'html', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.</p>', NULL),
(72, NULL, NULL, NULL, 'sssss s sss', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'html', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.</p>', NULL),
(73, NULL, NULL, NULL, 'gdfgdfdg fgg sfgs s', 1, 'page', 1, 2, NULL, 'large-12', NULL, NULL, 'html', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.</p>', NULL),
(74, 11, NULL, NULL, 'f  xfgvsx', 1, 'page', 0, 1, NULL, 'large-12', 'original', NULL, 'slide', NULL, NULL),
(75, 12, NULL, NULL, 'gg sgsg sgs', 1, 'page', 0, 2, NULL, 'large-12', NULL, NULL, 'slide', NULL, NULL),
(76, 13, NULL, NULL, 'banner 1', 1, 'page', 1, 1, NULL, 'large-12', NULL, NULL, 'slide', NULL, NULL),
(77, 14, NULL, NULL, 'banner 2', 1, 'page', 1, 2, NULL, 'large-12', NULL, NULL, 'slide', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_blocks_images`
--

CREATE TABLE IF NOT EXISTS `content_blocks_images` (
  `contentblock_id` int(11) NOT NULL,
  `contentimage_id` int(11) NOT NULL,
  PRIMARY KEY (`contentblock_id`,`contentimage_id`),
  KEY `IDX_960CFC1F42ADBAC2` (`contentblock_id`),
  KEY `IDX_960CFC1F96E51DA3` (`contentimage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_images`
--

CREATE TABLE IF NOT EXISTS `content_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagefile` int(11) DEFAULT NULL,
  `imageOrder` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8829CEC6991EFFB9` (`imagefile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_slides`
--

CREATE TABLE IF NOT EXISTS `content_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagefile` int(11) DEFAULT NULL,
  `imageLinkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageLinkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D0F6503D991EFFB9` (`imagefile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `content_slides`
--

INSERT INTO `content_slides` (`id`, `imagefile`, `imageLinkTitle`, `imageLinkURL`) VALUES
(11, 155, NULL, NULL),
(12, 156, NULL, NULL),
(13, 192, NULL, NULL),
(14, 193, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE IF NOT EXISTS `destinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(11) DEFAULT NULL,
  `introimage` int(11) DEFAULT NULL,
  `destinationicon` int(11) DEFAULT NULL,
  `bgimage` int(11) DEFAULT NULL,
  `spots` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageOrder` int(11) NOT NULL,
  `showPageTitle` int(11) DEFAULT NULL,
  `publishState` int(11) NOT NULL,
  `pageClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introText` longtext COLLATE utf8_unicode_ci,
  `summary` longtext COLLATE utf8_unicode_ci,
  `directions` longtext COLLATE utf8_unicode_ci,
  `mapLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mapLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `styleColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2D3343C3E16C6B94` (`alias`),
  UNIQUE KEY `UNIQ_2D3343C3F3890D5F` (`introimage`),
  UNIQUE KEY `UNIQ_2D3343C335767543` (`destinationicon`),
  UNIQUE KEY `UNIQ_2D3343C397AB4E12` (`bgimage`),
  KEY `IDX_2D3343C3BDAFD8C8` (`author`),
  KEY `IDX_2D3343C3D2BBDDF7` (`spots`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `author`, `introimage`, `destinationicon`, `bgimage`, `spots`, `date`, `title`, `alias`, `pageOrder`, `showPageTitle`, `publishState`, `pageClass`, `description`, `keywords`, `introText`, `summary`, `directions`, `mapLatitude`, `mapLongitude`, `introClass`, `pageType`, `styleColor`) VALUES
(31, 13, 185, NULL, NULL, NULL, '2014-02-04', 'Destinations', 'list', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_home', 'default'),
(48, 13, 176, NULL, NULL, NULL, '2014-03-16', 'North Greece', 'north-greece', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_cat_page', 'default'),
(49, 13, 183, 184, NULL, NULL, '2014-03-16', 'Attica', 'attica', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', 'default'),
(50, 13, 177, NULL, NULL, NULL, '2014-03-16', 'Central Greece', 'central-greece', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_cat_page', 'default'),
(51, 13, NULL, NULL, NULL, NULL, '2014-03-16', 'Evoia', 'evoia', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', 'default'),
(52, 13, NULL, 182, NULL, NULL, '2014-03-16', 'Paros', 'paros', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', 'default'),
(53, 13, NULL, NULL, NULL, NULL, '2014-03-16', 'Naxos', 'naxos', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', 'default'),
(54, 13, 178, NULL, NULL, NULL, '2014-03-16', 'Ionian Sea', 'Ionian-sea', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_cat_page', 'default'),
(55, 13, NULL, NULL, NULL, NULL, '2014-03-16', 'Myconos', 'myconos', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', 'default'),
(56, 13, 179, NULL, NULL, NULL, '2014-03-16', 'Aegean Sea', 'aegean-sea', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_cat_page', 'default'),
(58, 13, NULL, NULL, NULL, NULL, '2014-03-16', 'Tinos', 'tinos', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', 'default'),
(59, 13, NULL, NULL, NULL, NULL, '2014-03-16', 'Antiparos', 'antiparos', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', 'default'),
(60, 13, 180, NULL, NULL, NULL, '2014-03-16', 'Peloponnese', 'peloponnese', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_cat_page', 'default'),
(61, 13, 181, NULL, NULL, NULL, '2014-03-16', 'Crete', 'crete', 99, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_cat_page', 'default'),
(62, 13, NULL, NULL, NULL, NULL, '2014-03-16', 'Leukada', 'leukada', 99, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', NULL),
(63, 13, NULL, NULL, NULL, NULL, '2014-03-16', 'Parga', 'parga', 99, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'destination_article', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations_categories`
--

CREATE TABLE IF NOT EXISTS `destinations_categories` (
  `destination_id` int(11) NOT NULL,
  `destinationcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`destination_id`,`destinationcategory_id`),
  KEY `IDX_61B1CB52816C6140` (`destination_id`),
  KEY `IDX_61B1CB522C34F628` (`destinationcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `destinations_categories`
--

INSERT INTO `destinations_categories` (`destination_id`, `destinationcategory_id`) VALUES
(48, 31),
(49, 28),
(50, 28),
(51, 28),
(51, 33),
(52, 34),
(52, 35),
(53, 34),
(53, 37),
(54, 40),
(55, 34),
(55, 36),
(56, 34),
(58, 34),
(58, 38),
(59, 34),
(59, 39),
(60, 41),
(61, 42),
(62, 40),
(63, 40);

-- --------------------------------------------------------

--
-- Table structure for table `destinations_tags`
--

CREATE TABLE IF NOT EXISTS `destinations_tags` (
  `destination_id` int(11) NOT NULL,
  `destinationtag_id` int(11) NOT NULL,
  PRIMARY KEY (`destination_id`,`destinationtag_id`),
  KEY `IDX_138A80C3816C6140` (`destination_id`),
  KEY `IDX_138A80C361972E3E` (`destinationtag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `destinations_tags`
--

INSERT INTO `destinations_tags` (`destination_id`, `destinationtag_id`) VALUES
(48, 11),
(48, 12),
(48, 13),
(48, 15),
(48, 16),
(49, 11),
(49, 12),
(49, 13),
(49, 15),
(49, 16),
(50, 11),
(50, 12),
(50, 13),
(50, 15),
(50, 16),
(51, 11),
(51, 12),
(51, 13),
(51, 15),
(51, 16),
(52, 11),
(52, 12),
(52, 13),
(52, 15),
(52, 16),
(54, 11),
(54, 12),
(54, 13),
(54, 15),
(54, 16),
(55, 11),
(55, 12),
(55, 13),
(55, 15),
(55, 16);

-- --------------------------------------------------------

--
-- Table structure for table `destination_bannercontent_blocks`
--

CREATE TABLE IF NOT EXISTS `destination_bannercontent_blocks` (
  `destination_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`destination_id`,`contentblock_id`),
  KEY `IDX_1AB79240816C6140` (`destination_id`),
  KEY `IDX_1AB7924042ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destination_categories`
--

CREATE TABLE IF NOT EXISTS `destination_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destinationListPage` int(11) DEFAULT NULL,
  `destinationCategoryIcon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_67CADDDACEB1B078` (`destinationCategoryIcon`),
  KEY `IDX_67CADDDABD7209A` (`destinationListPage`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `destination_categories`
--

INSERT INTO `destination_categories` (`id`, `title`, `class`, `destinationListPage`, `destinationCategoryIcon`) VALUES
(21, 'Destination Home', NULL, NULL, NULL),
(28, 'Central Greece', NULL, 50, NULL),
(31, 'North Greece', NULL, 48, NULL),
(32, 'Attica', NULL, 49, 170),
(33, 'Evoia', NULL, 51, 173),
(34, 'Aegean Sea', NULL, 56, NULL),
(35, 'Paros', NULL, 52, NULL),
(36, 'Myconos', NULL, 55, NULL),
(37, 'Naxos', NULL, 53, NULL),
(38, 'Tinos', NULL, 58, NULL),
(39, 'Antiparos', NULL, 59, NULL),
(40, 'Ionian Sea', NULL, 54, NULL),
(41, 'Peloponnese', NULL, 60, NULL),
(42, 'Crete', NULL, 61, NULL),
(43, 'Parga', NULL, 63, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destination_maincontent_blocks`
--

CREATE TABLE IF NOT EXISTS `destination_maincontent_blocks` (
  `destination_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`destination_id`,`contentblock_id`),
  KEY `IDX_21C5B864816C6140` (`destination_id`),
  KEY `IDX_21C5B86442ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destination_modalcontent_blocks`
--

CREATE TABLE IF NOT EXISTS `destination_modalcontent_blocks` (
  `destination_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`destination_id`,`contentblock_id`),
  KEY `IDX_E9E70883816C6140` (`destination_id`),
  KEY `IDX_E9E7088342ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destination_secondarycontent_blocks`
--

CREATE TABLE IF NOT EXISTS `destination_secondarycontent_blocks` (
  `destination_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`destination_id`,`contentblock_id`),
  KEY `IDX_3D7A49B4816C6140` (`destination_id`),
  KEY `IDX_3D7A49B442ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `destination_secondarycontent_blocks`
--

INSERT INTO `destination_secondarycontent_blocks` (`destination_id`, `contentblock_id`) VALUES
(31, 66);

-- --------------------------------------------------------

--
-- Table structure for table `destination_tags`
--

CREATE TABLE IF NOT EXISTS `destination_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tagCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `styleColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagIcon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CC1D1D178913051D` (`tagIcon`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `destination_tags`
--

INSERT INTO `destination_tags` (`id`, `title`, `tagCategory`, `styleColor`, `tagIcon`) VALUES
(11, 'Surf', 'sports', 'green', 151),
(12, 'Kitesurf', 'sports', 'purple', 157),
(13, 'Wakeboard', 'sports', 'orange', 158),
(15, 'Waterski', 'sports', 'pink', 159),
(16, 'Windsurf', 'sports', 'red', 160);

-- --------------------------------------------------------

--
-- Table structure for table `extracontent_blocks`
--

CREATE TABLE IF NOT EXISTS `extracontent_blocks` (
  `page_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`contentblock_id`),
  KEY `IDX_92E89973C4663E4` (`page_id`),
  KEY `IDX_92E8997342ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user`
--

CREATE TABLE IF NOT EXISTS `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bakeFrequency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bakeChoises` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `children` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`, `bakeFrequency`, `sex`, `bakeChoises`, `age`, `children`, `campaign`) VALUES
(13, 'administrator', 'administrator', 'george@bardis.info', 'george@bardis.info', 1, 'brys9cc04t4cs0gk40k4cgsggkskcws', '0ANGjUZ51MFVKewONAjFbQhoaQ5HHypCO7Urck2l5MMduKJASx0/mkCf/5cVm/9RoiH7JzQ2BLumtd382CPJAg==', '2014-03-17 20:28:17', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2014-02-04 23:43:19', '2014-03-17 20:28:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, NULL, 'N;', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maincontent_blocks`
--

CREATE TABLE IF NOT EXISTS `maincontent_blocks` (
  `page_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`contentblock_id`),
  KEY `IDX_BB2F1667C4663E4` (`page_id`),
  KEY `IDX_BB2F166742ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `maincontent_blocks`
--

INSERT INTO `maincontent_blocks` (`page_id`, `contentblock_id`) VALUES
(91, 59),
(95, 62),
(96, 60),
(96, 61);

-- --------------------------------------------------------

--
-- Table structure for table `media__gallery`
--

CREATE TABLE IF NOT EXISTS `media__gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `default_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media__gallery_media`
--

CREATE TABLE IF NOT EXISTS `media__gallery_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_80D4C5414E7AF8F` (`gallery_id`),
  KEY `IDX_80D4C541EA9FDD75` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media__media`
--

CREATE TABLE IF NOT EXISTS `media__media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_status` int(11) NOT NULL,
  `provider_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_metadata` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `content_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_size` int(11) DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdn_is_flushable` tinyint(1) DEFAULT NULL,
  `cdn_flush_at` datetime DEFAULT NULL,
  `cdn_status` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=195 ;

--
-- Dumping data for table `media__media`
--

INSERT INTO `media__media` (`id`, `name`, `description`, `enabled`, `provider_name`, `provider_status`, `provider_reference`, `provider_metadata`, `width`, `height`, `length`, `content_type`, `content_size`, `copyright`, `author_name`, `context`, `cdn_is_flushable`, `cdn_flush_at`, `cdn_status`, `updated_at`, `created_at`) VALUES
(138, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(139, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(140, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(141, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(142, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(143, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(144, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(145, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'sample_thumb.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-04 23:43:20', '2014-02-04 23:43:20'),
(146, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, '7a733a058ec4211efec3fef02c0f5ec7fccbb2c4.png', '{"filename":"Untitled-17.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'spotlist', NULL, NULL, NULL, '2014-03-16 18:11:45', '2014-02-04 23:43:20'),
(149, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, '43413f4e9533109b5637c9d279a58af4a7791f6c.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-02-05 19:49:52', '2014-02-05 19:49:52'),
(150, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'a8905877d9a4c41ac236dfb3d96a6103c3b5b8ee.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-02-05 19:50:56', '2014-02-05 19:50:56'),
(151, 'surfIcon.png', NULL, 0, 'sonata.media.provider.image', 1, '0d2db9e5a6147c9522b73e6631b33c618e8eb1c4.png', '{"filename":"surfIcon.png"}', 85, 85, NULL, 'image/png', 724, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-02-10 23:20:19', '2014-02-10 23:20:19'),
(152, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, '71c245a82b7c5b357fb91f9f729375f07e8a1383.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'spotlist', NULL, NULL, NULL, '2014-02-15 22:12:11', '2014-02-15 22:12:11'),
(155, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, 'd9e9a243de3798d68fb983f27432d9a7356e408c.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'bgimage', NULL, NULL, NULL, '2014-02-16 01:32:34', '2014-02-16 01:32:34'),
(156, 'sample_thumb.jpeg', NULL, 0, 'sonata.media.provider.image', 1, '8f2ba80970d13f4b81818ac15d08b3e15abf646a.jpeg', '{"filename":"sample_thumb.jpeg"}', 622, 415, NULL, 'image/jpeg', 8043, NULL, NULL, 'bgimage', NULL, NULL, NULL, '2014-02-16 01:33:26', '2014-02-16 01:33:26'),
(157, 'Kitesurf.png', NULL, 0, 'sonata.media.provider.image', 1, 'feaa83f9827c4684c82cea714c1e87870f8a6c22.png', '{"filename":"Kitesurf.png"}', 89, 89, NULL, 'image/png', 2099, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 14:32:20', '2014-03-16 14:32:20'),
(158, 'Wakeboard.png', NULL, 0, 'sonata.media.provider.image', 1, 'fb83f285c71e70eda422c5ac66eb5a868503dd5a.png', '{"filename":"Wakeboard.png"}', 89, 89, NULL, 'image/png', 1237, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 14:32:34', '2014-03-16 14:32:34'),
(159, 'Waterski.png', NULL, 0, 'sonata.media.provider.image', 1, '248031a6110fa87f22228a3f130f939509698d3b.png', '{"filename":"Waterski.png"}', 89, 89, NULL, 'image/png', 804, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 14:32:47', '2014-03-16 14:32:47'),
(160, 'Windsurf.png', NULL, 0, 'sonata.media.provider.image', 1, '278db4067521625c422f74bd2057de9bb18abb1d.png', '{"filename":"Windsurf.png"}', 89, 89, NULL, 'image/png', 1045, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 14:33:01', '2014-03-16 14:33:01'),
(161, 'Untitled-11.png', NULL, 0, 'sonata.media.provider.image', 1, 'e1056c26c42c89933678a00c2c6db74581b5d3a6.png', '{"filename":"Untitled-12.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 17:34:30', '2014-03-16 14:40:18'),
(162, 'Untitled-11.png', NULL, 0, 'sonata.media.provider.image', 1, 'c38467653f4ebda856a8f352e54accfef7687659.png', '{"filename":"Untitled-12.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:35:03', '2014-03-16 14:40:57'),
(163, 'Untitled-12.png', NULL, 0, 'sonata.media.provider.image', 1, '4ddc59a468cc40a34624f2fefd49b70550435473.png', '{"filename":"Untitled-11.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:35:33', '2014-03-16 14:44:35'),
(164, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, 'ae9e5327fd92572dbe2e7460426e849e88e075f4.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 14:48:01', '2014-03-16 14:46:40'),
(165, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, '3194a55d7372adc5595f10fe6b5cccaafb41d3b3.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 17:55:43', '2014-03-16 14:47:33'),
(166, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, '84ce48a26a8f63c39b85cf7581f1b62d2eea4475.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 14:48:18', '2014-03-16 14:48:01'),
(167, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, '84ed9c6d65b879b9be0884ee593ae5810fa4204e.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 14:49:09', '2014-03-16 14:48:17'),
(168, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, 'b5aa9c432b6ba629f4c8cabad71898f3b39f4653.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:55:13', '2014-03-16 14:49:09'),
(169, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, '6eb7f7a98a793845c2a72370515065a05e7a6f95.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 14:50:39', '2014-03-16 14:50:30'),
(170, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, '2353a3b61431e9234c6b2f46df9bb52a0c3c6383.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 14:50:39', '2014-03-16 14:50:39'),
(171, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, 'f61579afac7492a316ff2f3036fc385fb8c4d650.jpeg', '{"filename":"705244_565276390156205_855670664_o.jpg"}', 2048, 1536, NULL, 'image/jpeg', 417567, NULL, NULL, 'spotlist', NULL, NULL, NULL, '2014-03-16 15:04:42', '2014-03-16 14:55:42'),
(172, '705244_565276390156205_855670664_o.jpg', NULL, 0, 'sonata.media.provider.image', 1, 'd9bb3dd660447e5241f9636677f5a7d52dab3eae.jpeg', '{"filename":"705244_565276390156205_855670664_o.jpg"}', 2048, 1536, NULL, 'image/jpeg', 417567, NULL, NULL, 'spotlist', NULL, NULL, NULL, '2014-03-16 15:04:41', '2014-03-16 15:04:41'),
(173, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, 'c79d09074219eae7bed17d74569dc6acd5bc4275.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 15:06:01', '2014-03-16 15:06:01'),
(174, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, 'f3be5eec043594941e5d3556389b673667472c38.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 15:11:30', '2014-03-16 15:11:30'),
(175, 'Untitled-12.png', NULL, 0, 'sonata.media.provider.image', 1, '5ac4e615933e7cdb04d10e1e7d7a355c51de529d.png', '{"filename":"Untitled-12.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 17:34:30', '2014-03-16 17:34:30'),
(176, 'Untitled-12.png', NULL, 0, 'sonata.media.provider.image', 1, '0c0657d27a1888e5234cb622a8969919b4efa229.png', '{"filename":"Untitled-12.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:35:02', '2014-03-16 17:35:02'),
(177, 'Untitled-11.png', NULL, 0, 'sonata.media.provider.image', 1, 'cb6ae4e91d807de0888f170d12ff93d5eecd4789.png', '{"filename":"Untitled-11.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:35:33', '2014-03-16 17:35:33'),
(178, 'Untitled-13.png', NULL, 0, 'sonata.media.provider.image', 1, 'e7a9cd97307993fb66eccd625aa6d5db40d7d273.png', '{"filename":"Untitled-13.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:45:53', '2014-03-16 17:45:53'),
(179, 'Untitled-14.png', NULL, 0, 'sonata.media.provider.image', 1, 'aa564a446d4d870ce6163e9c30b986fdef712900.png', '{"filename":"Untitled-14.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:47:24', '2014-03-16 17:47:24'),
(180, 'Untitled-15.png', NULL, 0, 'sonata.media.provider.image', 1, '444b8faecef0458352c5c53623ddf8087ffc44a5.png', '{"filename":"Untitled-15.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:48:50', '2014-03-16 17:48:50'),
(181, 'Untitled-16.png', NULL, 0, 'sonata.media.provider.image', 1, '65008a885f437c5791132f9f8ec47ed2118d2025.png', '{"filename":"Untitled-16.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:50:38', '2014-03-16 17:50:38'),
(182, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, 'd3e48795d777a36cb134004330711c98c3408937.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 17:51:17', '2014-03-16 17:51:17'),
(183, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, '0f334b909f03af6e92d227834aa3718405916314.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 17:55:13', '2014-03-16 17:55:13'),
(184, 'Waves02.png', NULL, 0, 'sonata.media.provider.image', 1, '81cc8e4b1629f18394ffc1dbfe4cb8de74c5e4fd.png', '{"filename":"Waves02.png"}', 95, 95, NULL, 'image/png', 895, NULL, NULL, 'icons', NULL, NULL, NULL, '2014-03-16 17:55:43', '2014-03-16 17:55:43'),
(185, 'Untitled-17.png', NULL, 0, 'sonata.media.provider.image', 1, '1feec7c105742266274f4cfcb6e9901cbc7cd5d8.png', '{"filename":"Untitled-17.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'intro', NULL, NULL, NULL, '2014-03-16 18:07:31', '2014-03-16 18:07:31'),
(186, 'Untitled-17.png', NULL, 0, 'sonata.media.provider.image', 1, '0d8b78d6a1f49087ba8e386ecc484296acef5b55.png', '{"filename":"Untitled-17.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'spotlist', NULL, NULL, NULL, '2014-03-16 18:13:42', '2014-03-16 18:11:44'),
(187, 'Untitled-17.png', NULL, 0, 'sonata.media.provider.image', 1, '37f34551c376ca9c4db9e7276bf7e6a2e2016722.png', '{"filename":"Untitled-17.png"}', 455, 258, NULL, 'image/png', 476241, NULL, NULL, 'spotlist', NULL, NULL, NULL, '2014-03-16 18:13:42', '2014-03-16 18:13:42'),
(192, '11180413653_164e4618ff_k.jpg', NULL, 0, 'sonata.media.provider.image', 1, '0cafac52c105fe41d2d0b9c0e93029926531e3af.jpeg', '{"filename":"11180413653_164e4618ff_k.jpg"}', 2048, 1365, NULL, 'image/jpeg', 733796, NULL, NULL, 'bgimage', NULL, NULL, NULL, '2014-03-16 18:19:05', '2014-03-16 18:19:05'),
(193, '11180316725_7cd26f02d7_k.jpg', NULL, 0, 'sonata.media.provider.image', 1, 'fb50dcc90c865705d56e7ae053373605347906a1.jpeg', '{"filename":"11180316725_7cd26f02d7_k.jpg"}', 2048, 1365, NULL, 'image/jpeg', 932769, NULL, NULL, 'bgimage', NULL, NULL, NULL, '2014-03-16 18:20:04', '2014-03-16 18:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` int(11) DEFAULT NULL,
  `blog` int(11) DEFAULT NULL,
  `destination` int(11) DEFAULT NULL,
  `spot` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menuType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `externalUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accessLevel` int(11) NOT NULL,
  `parent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishState` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `menuUrlExtras` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuImage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_70B2CA2A9196AB0E` (`menuImage`),
  KEY `IDX_70B2CA2A140AB620` (`page`),
  KEY `IDX_70B2CA2AC0155143` (`blog`),
  KEY `IDX_70B2CA2A3EC63EAA` (`destination`),
  KEY `IDX_70B2CA2AB9327A73` (`spot`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=90 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `page`, `blog`, `destination`, `spot`, `title`, `menuType`, `route`, `externalUrl`, `accessLevel`, `parent`, `menuGroup`, `publishState`, `ordering`, `menuUrlExtras`, `menuImage`) VALUES
(81, 91, NULL, NULL, NULL, 'Homepage', 'Page', 'showPage', NULL, 0, '0', 'Main Menu', 1, 0, NULL, NULL),
(82, NULL, NULL, 31, NULL, 'Destinations', 'Destination', 'showPage', NULL, 0, '0', 'Main Menu', 1, 1, NULL, NULL),
(83, NULL, NULL, NULL, 31, 'Spots', 'Spot', 'showPage', NULL, 0, '0', 'Main Menu', 1, 2, NULL, NULL),
(84, NULL, 83, NULL, NULL, 'Events', 'Blog', 'showPage', NULL, 0, '0', 'Main Menu', 1, 3, NULL, NULL),
(85, NULL, 82, NULL, NULL, 'News', 'Blog', 'showPage', NULL, 0, '0', 'Main Menu', 1, 4, NULL, NULL),
(86, 97, NULL, NULL, NULL, 'Sports', 'Page', 'showPage', NULL, 0, '0', 'Main Menu', 1, 5, NULL, NULL),
(87, 96, NULL, NULL, NULL, 'E-Magazine', 'Page', 'showPage', NULL, 0, '0', 'Main Menu', 1, 6, NULL, NULL),
(88, 95, NULL, NULL, NULL, 'Contact Us', 'Page', 'showPage', NULL, 0, '0', 'Main Menu', 1, 7, NULL, NULL),
(89, 93, NULL, NULL, NULL, 'Sitemap', 'Page', 'showPage', NULL, 0, '0', 'Footer Menu', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modalcontent_blocks`
--

CREATE TABLE IF NOT EXISTS `modalcontent_blocks` (
  `page_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`contentblock_id`),
  KEY `IDX_7074B397C4663E4` (`page_id`),
  KEY `IDX_7074B39742ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(11) DEFAULT NULL,
  `introimage` int(11) DEFAULT NULL,
  `bgimage` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageOrder` int(11) NOT NULL,
  `showPageTitle` int(11) NOT NULL,
  `publishState` int(11) NOT NULL,
  `pageclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introtext` longtext COLLATE utf8_unicode_ci,
  `intromediasize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagetype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2074E575E16C6B94` (`alias`),
  UNIQUE KEY `UNIQ_2074E575F3890D5F` (`introimage`),
  UNIQUE KEY `UNIQ_2074E57597AB4E12` (`bgimage`),
  KEY `IDX_2074E575BDAFD8C8` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=100 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author`, `introimage`, `bgimage`, `date`, `title`, `alias`, `pageOrder`, `showPageTitle`, `publishState`, `pageclass`, `description`, `keywords`, `introtext`, `intromediasize`, `introclass`, `pagetype`) VALUES
(91, 13, NULL, NULL, '2014-02-04', 'The Greek Spots', 'index', 99, 1, 1, NULL, NULL, NULL, NULL, 'original', NULL, 'homepage'),
(92, 13, NULL, NULL, '2014-02-04', '404 Error Page', '404', 99, 1, 1, NULL, NULL, NULL, '', NULL, NULL, '404'),
(93, 13, NULL, NULL, '2014-02-04', 'Sitemap', 'site-map', 99, 1, 1, NULL, NULL, NULL, '', NULL, NULL, 'sitemap'),
(94, 13, NULL, NULL, '2014-02-04', 'Page Filtered Listing', 'tagged', 99, 1, 1, NULL, NULL, NULL, NULL, 'original', NULL, 'page_tag_list'),
(95, 13, NULL, NULL, '2014-02-04', 'Contact', 'contact', 99, 1, 1, NULL, NULL, NULL, '', NULL, NULL, 'contact'),
(96, 13, 138, NULL, '2014-02-04', 'E-Magazine', 'e-magazine', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'one_columned'),
(97, 13, 139, NULL, '2014-02-04', 'Sports', 'sports', 99, 1, 1, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.', NULL, NULL, 'two_columned'),
(98, 13, 140, NULL, '2014-02-04', 'Test Page 3', 'test-page-3', 99, 1, 1, NULL, NULL, NULL, NULL, 'original', NULL, 'three_columned'),
(99, 13, 141, NULL, '2014-02-04', 'Test Page 4', 'test-page-4', 99, 1, 1, NULL, NULL, NULL, NULL, 'original', NULL, 'one_columned');

-- --------------------------------------------------------

--
-- Table structure for table `pages_categories`
--

CREATE TABLE IF NOT EXISTS `pages_categories` (
  `page_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`category_id`),
  KEY `IDX_533F7E1BC4663E4` (`page_id`),
  KEY `IDX_533F7E1B12469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_categories`
--

INSERT INTO `pages_categories` (`page_id`, `category_id`) VALUES
(91, 49);

-- --------------------------------------------------------

--
-- Table structure for table `pages_tags`
--

CREATE TABLE IF NOT EXISTS `pages_tags` (
  `page_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`tag_id`),
  KEY `IDX_2476DEA6C4663E4` (`page_id`),
  KEY `IDX_2476DEA6BAD26311` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_tags`
--

INSERT INTO `pages_tags` (`page_id`, `tag_id`) VALUES
(94, 25),
(98, 25),
(99, 25);

-- --------------------------------------------------------

--
-- Table structure for table `secondarycontent_blocks`
--

CREATE TABLE IF NOT EXISTS `secondarycontent_blocks` (
  `page_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`contentblock_id`),
  KEY `IDX_F8B56AB4C4663E4` (`page_id`),
  KEY `IDX_F8B56AB442ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metaDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metaKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `websiteTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `websiteAuthor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useWebsiteAuthor` tinyint(1) NOT NULL,
  `enableGoogleAnalytics` tinyint(1) NOT NULL,
  `googleAnalyticsId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailSender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailRecepient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsPerPage` int(11) NOT NULL,
  `blogItemsPerPage` int(11) NOT NULL,
  `activateSettings` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `metaDescription`, `metaKeywords`, `fromTitle`, `websiteTitle`, `websiteAuthor`, `useWebsiteAuthor`, `enableGoogleAnalytics`, `googleAnalyticsId`, `emailSender`, `emailRecepient`, `itemsPerPage`, `blogItemsPerPage`, `activateSettings`) VALUES
(13, 'Default Meta Description', 'Default Meta Keywords', 'Owner', 'Website Title', 'Author', 1, 0, 'UA-XXX-XXXXX', 'george@bardis.info', 'george@bardis.info', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE IF NOT EXISTS `spots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(11) DEFAULT NULL,
  `introimage` int(11) DEFAULT NULL,
  `spotattributes` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageOrder` int(11) NOT NULL,
  `spotOrder` int(11) NOT NULL,
  `showPageTitle` int(11) DEFAULT NULL,
  `publishState` int(11) NOT NULL,
  `featuredSpot` int(11) NOT NULL,
  `pageclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mapLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mapLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introtext` longtext COLLATE utf8_unicode_ci,
  `introclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagetype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `related_destination` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D2BBDDF7E16C6B94` (`alias`),
  UNIQUE KEY `UNIQ_D2BBDDF7F3890D5F` (`introimage`),
  UNIQUE KEY `UNIQ_D2BBDDF73B6DB7D3` (`spotattributes`),
  KEY `IDX_D2BBDDF7BDAFD8C8` (`author`),
  KEY `IDX_D2BBDDF7F52D402E` (`related_destination`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`id`, `author`, `introimage`, `spotattributes`, `date`, `title`, `alias`, `pageOrder`, `spotOrder`, `showPageTitle`, `publishState`, `featuredSpot`, `pageclass`, `mapLatitude`, `mapLongitude`, `description`, `keywords`, `introtext`, `introclass`, `pagetype`, `summary`, `related_destination`) VALUES
(31, 13, 187, NULL, '2014-02-04', 'Spots', 'list', 99, 99, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spot_home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.</p>', NULL),
(37, 13, 172, 6, '2014-03-16', 'Loutsa', 'loutsa', 99, 99, 1, 1, 1, NULL, '37.989576', '24.031692', NULL, NULL, NULL, NULL, 'spot_article', NULL, 49),
(43, 13, NULL, 13, '2014-03-16', 'Pounta', 'pounta', 99, 99, 1, 1, 1, NULL, '37.035520', '25.099490', NULL, NULL, '<p>dfabahrahthrhrea</p>', NULL, 'spot_article', '<p>ararha</p>', NULL),
(44, 13, NULL, 12, '2014-03-16', 'Laguna', 'laguna', 99, 99, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spot_article', NULL, NULL),
(45, 13, NULL, 14, '2014-03-16', 'Agios Georgios', 'agios-georgios', 99, 99, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spot_article', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spots_bannercontent_blocks`
--

CREATE TABLE IF NOT EXISTS `spots_bannercontent_blocks` (
  `spot_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_id`,`contentblock_id`),
  KEY `IDX_FC83D8272DF1D37C` (`spot_id`),
  KEY `IDX_FC83D82742ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spots_destinationfilters`
--

CREATE TABLE IF NOT EXISTS `spots_destinationfilters` (
  `spot_id` int(11) NOT NULL,
  `spotdestinationfilter_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_id`,`spotdestinationfilter_id`),
  KEY `IDX_3744DBEE2DF1D37C` (`spot_id`),
  KEY `IDX_3744DBEE52ACF0A6` (`spotdestinationfilter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spots_destinationfilters`
--

INSERT INTO `spots_destinationfilters` (`spot_id`, `spotdestinationfilter_id`) VALUES
(37, 14),
(43, 14),
(44, 24),
(45, 24);

-- --------------------------------------------------------

--
-- Table structure for table `spots_maincontent_blocks`
--

CREATE TABLE IF NOT EXISTS `spots_maincontent_blocks` (
  `spot_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_id`,`contentblock_id`),
  KEY `IDX_5F16D2102DF1D37C` (`spot_id`),
  KEY `IDX_5F16D21042ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spots_maincontent_blocks`
--

INSERT INTO `spots_maincontent_blocks` (`spot_id`, `contentblock_id`) VALUES
(31, 71);

-- --------------------------------------------------------

--
-- Table structure for table `spots_modalcontent_blocks`
--

CREATE TABLE IF NOT EXISTS `spots_modalcontent_blocks` (
  `spot_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_id`,`contentblock_id`),
  KEY `IDX_BEF16ECC2DF1D37C` (`spot_id`),
  KEY `IDX_BEF16ECC42ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spots_secondarycontent_blocks`
--

CREATE TABLE IF NOT EXISTS `spots_secondarycontent_blocks` (
  `spot_id` int(11) NOT NULL,
  `contentblock_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_id`,`contentblock_id`),
  KEY `IDX_5BC0C7CD2DF1D37C` (`spot_id`),
  KEY `IDX_5BC0C7CD42ADBAC2` (`contentblock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spots_secondarycontent_blocks`
--

INSERT INTO `spots_secondarycontent_blocks` (`spot_id`, `contentblock_id`) VALUES
(31, 70);

-- --------------------------------------------------------

--
-- Table structure for table `spots_spotfilters`
--

CREATE TABLE IF NOT EXISTS `spots_spotfilters` (
  `spot_id` int(11) NOT NULL,
  `spotfilter_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_id`,`spotfilter_id`),
  KEY `IDX_525160C22DF1D37C` (`spot_id`),
  KEY `IDX_525160C2251236D0` (`spotfilter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spots_spotfilters`
--

INSERT INTO `spots_spotfilters` (`spot_id`, `spotfilter_id`) VALUES
(37, 14),
(43, 13),
(43, 16),
(43, 18),
(43, 20),
(43, 21),
(43, 22),
(43, 23),
(43, 24),
(43, 25),
(43, 26),
(43, 27),
(43, 28),
(43, 29),
(43, 31),
(43, 32),
(43, 33),
(43, 34),
(43, 35),
(43, 39),
(43, 40),
(43, 42),
(43, 43),
(43, 44),
(43, 45),
(43, 46),
(43, 47),
(43, 48),
(43, 49),
(43, 50),
(43, 51),
(43, 52),
(44, 13),
(44, 16),
(44, 20),
(44, 21),
(44, 22),
(44, 23),
(44, 24),
(44, 25),
(44, 27),
(44, 28),
(44, 29),
(44, 32),
(44, 33),
(44, 34),
(44, 35),
(44, 39),
(44, 40),
(44, 42),
(44, 43),
(44, 44),
(44, 45),
(44, 46),
(44, 47),
(44, 48),
(44, 50),
(44, 51),
(44, 52),
(44, 53),
(45, 13),
(45, 14),
(45, 16),
(45, 17),
(45, 19),
(45, 20),
(45, 21),
(45, 22),
(45, 24),
(45, 25),
(45, 26),
(45, 28),
(45, 30),
(45, 31),
(45, 32),
(45, 33),
(45, 34),
(45, 35),
(45, 37),
(45, 38),
(45, 39),
(45, 40),
(45, 42),
(45, 43),
(45, 45),
(45, 46),
(45, 47),
(45, 48),
(45, 49),
(45, 50),
(45, 51),
(45, 52),
(45, 53);

-- --------------------------------------------------------

--
-- Table structure for table `spot_attributes`
--

CREATE TABLE IF NOT EXISTS `spot_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nearestAirport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearestTown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publicTransportation` tinyint(1) NOT NULL,
  `accessProblem` tinyint(1) NOT NULL,
  `surfClub` tinyint(1) NOT NULL,
  `lessons` tinyint(1) NOT NULL,
  `rental` tinyint(1) NOT NULL,
  `storage` tinyint(1) NOT NULL,
  `repair` tinyint(1) NOT NULL,
  `gearshop` tinyint(1) NOT NULL,
  `rescue` tinyint(1) NOT NULL,
  `snacksAndDrinks` tinyint(1) NOT NULL,
  `parking` tinyint(1) NOT NULL,
  `toilets` tinyint(1) NOT NULL,
  `showers` tinyint(1) NOT NULL,
  `accommodation` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `budget` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `spotType` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `shoreType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sports` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `experience` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `style` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `crowded` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `dangers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `windDirection` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `bestWindDirection` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `windForce` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `relative` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `blowingTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seaState` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `swellType` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `swellDirection` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `swellLength` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `pointBreak` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `tide` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `waterQuality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `season` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `seaTemperature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nightlife` tinyint(1) NOT NULL,
  `family` tinyint(1) NOT NULL,
  `restaurants` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `spot_attributes`
--

INSERT INTO `spot_attributes` (`id`, `nearestAirport`, `nearestTown`, `publicTransportation`, `accessProblem`, `surfClub`, `lessons`, `rental`, `storage`, `repair`, `gearshop`, `rescue`, `snacksAndDrinks`, `parking`, `toilets`, `showers`, `accommodation`, `budget`, `spotType`, `shoreType`, `bottom`, `sports`, `experience`, `style`, `crowded`, `dangers`, `windDirection`, `bestWindDirection`, `windForce`, `relative`, `blowingTime`, `seaState`, `swellType`, `swellDirection`, `swellLength`, `pointBreak`, `tide`, `waterQuality`, `season`, `seaTemperature`, `nightlife`, `family`, `restaurants`) VALUES
(1, NULL, NULL, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 'a:1:{i:0;s:5:"Hotel";}', 'a:2:{i:0;s:6:"Medium";i:1;s:4:"High";}', 'a:1:{i:0;s:5:"Beach";}', NULL, NULL, 'a:3:{i:0;s:8:"Windsurf";i:1;s:8:"Kitesurf";i:2;s:9:"Wakeboard";}', 'a:1:{i:0;s:9:"Advanced ";}', 'a:3:{i:0;s:9:"Freestyle";i:1;s:9:"Big Jumps";i:2;s:7:"Formula";}', 'a:3:{i:0;s:17:"Sometimes crowded";i:1;s:7:"Crowded";i:2;s:11:"Too crowded";}', 'None', 'a:4:{i:0;s:1:"S";i:1;s:3:"SSW";i:2;s:1:"W";i:3;s:2:"NW";}', 'a:4:{i:0;s:2:"SE";i:1;s:3:"SSW";i:2;s:3:"WNW";i:3;s:2:"NW";}', 'a:0:{}', 'a:0:{}', 'All day', 'a:2:{i:0;s:6:"Choppy";i:1;s:4:"Flat";}', 'a:2:{i:0;s:5:"Mixed";i:1;s:11:"Wind swells";}', 'a:5:{i:0;s:2:"NE";i:1;s:2:"SW";i:2;s:3:"WSW";i:3;s:3:"WNW";i:4;s:2:"NW";}', 'a:2:{i:0;s:5:"Short";i:1;s:6:"Medium";}', 'a:1:{i:0;s:4:"Left";}', 'a:2:{i:0;s:4:"High";i:1;s:3:"Low";}', 'Salty', 'a:3:{i:0;s:6:"Automn";i:1;s:6:"Spring";i:2;s:3:"All";}', '20', 1, 0, 1),
(2, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:1:{i:0;s:2:"NE";}', 'a:1:{i:0;s:1:"S";}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:1:{i:0;s:3:"SSE";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:1:{i:0;s:6:"Winter";}', NULL, 0, 0, 0),
(3, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(4, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:1:{i:0;s:3:"WSW";}', 'a:1:{i:0;s:1:"S";}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:1:{i:0;s:3:"ESE";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 1, 1, 1),
(5, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(6, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(7, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(8, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(9, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(10, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(11, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(12, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:1:{i:0;s:2:"NE";}', 'a:1:{i:0;s:1:"W";}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:1:{i:0;s:11:"Wind swells";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:1:{i:0;s:6:"Automn";}', NULL, 0, 0, 0),
(13, NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'a:1:{i:0;s:5:"Hotel";}', 'a:2:{i:0;s:6:"Medium";i:1;s:4:"High";}', 'a:1:{i:0;s:5:"Beach";}', NULL, NULL, 'a:2:{i:0;s:8:"Windsurf";i:1;s:8:"Kitesurf";}', 'a:1:{i:0;s:3:"All";}', 'a:3:{i:0;s:8:"Freeride";i:1;s:9:"Freestyle";i:2;s:7:"Formula";}', 'a:2:{i:0;s:7:"Crowded";i:1;s:11:"Too crowded";}', NULL, 'a:1:{i:0;s:3:"NNE";}', 'a:1:{i:0;s:1:"E";}', 'a:3:{i:0;s:5:"Light";i:1;s:6:"Medium";i:2;s:7:"Strong ";}', 'a:1:{i:0;s:11:"Side shore ";}', NULL, 'a:2:{i:0;s:6:"Choppy";i:1;s:4:"Flat";}', 'a:1:{i:0;s:11:"Wind swells";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:1:{i:0;s:10:"All stages";}', NULL, 'a:0:{}', NULL, 1, 1, 1),
(14, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0),
(15, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, 'a:0:{}', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spot_destinations`
--

CREATE TABLE IF NOT EXISTS `spot_destinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spotDestinationFilterIcon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BCCE0A9B46B7BA9` (`spotDestinationFilterIcon`),
  KEY `IDX_BCCE0A9B3EC63EAA` (`destination`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `spot_destinations`
--

INSERT INTO `spot_destinations` (`id`, `destination`, `title`, `class`, `spotDestinationFilterIcon`) VALUES
(14, 50, 'Central Greece', NULL, NULL),
(17, 48, 'North Greece', NULL, NULL),
(21, 54, 'Ionian Sea', NULL, NULL),
(22, 56, 'Aegean Sea', NULL, NULL),
(23, 60, 'Peloponnese', NULL, NULL),
(24, 61, 'Crete', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_filters`
--

CREATE TABLE IF NOT EXISTS `spot_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filterCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filterIcon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_329D53256F191ECD` (`filterIcon`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `spot_filters`
--

INSERT INTO `spot_filters` (`id`, `title`, `filterCategory`, `filterIcon`) VALUES
(11, 'Low', 'budget', NULL),
(13, 'Winter', 'season', NULL),
(14, 'Surf', 'sport', NULL),
(15, 'Medium', 'budget', NULL),
(16, 'Windsurf', 'sport', NULL),
(17, 'Wakeboard', 'sport', NULL),
(18, 'Kitesurf', 'sport', NULL),
(19, 'Waterski', 'sport', NULL),
(20, 'Spring', 'season', NULL),
(21, 'Summer', 'season', NULL),
(22, 'Autumn', 'season', NULL),
(23, 'Beginner', 'experience', NULL),
(24, 'Intermediate', 'experience', NULL),
(25, 'Advance', 'experience', NULL),
(26, 'Wave', 'style', NULL),
(27, 'Freestyle', 'style', NULL),
(28, 'Freeride', 'style', NULL),
(29, 'Formula', 'style', NULL),
(30, 'Wave', 'sea_state', NULL),
(31, 'Choppy', 'sea_state', NULL),
(32, 'Flat', 'sea_state', NULL),
(33, 'Light', 'wind_force', NULL),
(34, 'Medium', 'wind_force', NULL),
(35, 'Strong', 'wind_force', NULL),
(36, 'Short', 'swell_length', NULL),
(37, 'Medium', 'swell_length', NULL),
(38, 'High', 'swell_length', NULL),
(39, 'Surfclub', 'amenities', NULL),
(40, 'Lessons', 'amenities', NULL),
(41, 'High', 'budget', NULL),
(42, 'Rental', 'amenities', NULL),
(43, 'Storage', 'amenities', NULL),
(44, 'Repair', 'amenities', NULL),
(45, 'Gearshop', 'amenities', NULL),
(46, 'Rescue', 'amenities', NULL),
(47, 'Snkacks/drinks', 'amenities', NULL),
(48, 'Parking', 'amenities', NULL),
(49, 'Toilets', 'amenities', NULL),
(50, 'Showers', 'amenities', NULL),
(51, 'Accomodation', 'amenities', NULL),
(52, 'Family', 'lifestyle', NULL),
(53, 'NIghtlife', 'lifestyle', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tagCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagIcon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6FBC94268913051D` (`tagIcon`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `tagCategory`, `tagIcon`) VALUES
(25, 'sample tag 1', 'special', NULL),
(26, 'Sample Tag 2', 'blog', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timeline__action`
--

CREATE TABLE IF NOT EXISTS `timeline__action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `verb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_current` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_wanted` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duplicate_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duplicate_priority` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=589 ;

--
-- Dumping data for table `timeline__action`
--

INSERT INTO `timeline__action` (`id`, `verb`, `status_current`, `status_wanted`, `duplicate_key`, `duplicate_priority`, `created_at`) VALUES
(4, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 19:49:53'),
(5, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 19:50:34'),
(6, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 19:50:56'),
(7, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-05 20:03:04'),
(8, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-05 20:03:57'),
(9, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-05 20:11:23'),
(10, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-05 20:11:42'),
(11, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 20:11:52'),
(12, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 20:28:45'),
(13, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 20:28:56'),
(14, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 20:30:09'),
(15, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-05 20:32:15'),
(16, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 20:39:14'),
(17, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 20:39:35'),
(18, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:47:12'),
(19, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:47:39'),
(20, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:48:19'),
(21, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:48:36'),
(22, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:48:59'),
(23, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:49:28'),
(24, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:53:56'),
(25, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-10 21:57:06'),
(26, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-10 21:57:28'),
(27, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-10 21:57:47'),
(28, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-10 21:58:07'),
(29, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:59:42'),
(30, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 21:59:55'),
(31, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 22:43:03'),
(32, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 22:48:03'),
(33, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 22:48:14'),
(34, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 22:48:55'),
(35, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 22:49:05'),
(36, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-10 23:20:20'),
(37, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 00:23:02'),
(38, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 00:37:29'),
(39, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 00:37:39'),
(40, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 00:37:51'),
(41, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 00:38:02'),
(42, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-15 00:50:38'),
(43, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-15 00:52:02'),
(44, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-15 01:15:29'),
(45, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-15 03:13:49'),
(46, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-02-15 03:53:44'),
(47, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 22:12:11'),
(48, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 22:12:35'),
(49, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-15 22:13:44'),
(50, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:22:49'),
(51, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:23:06'),
(52, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:23:22'),
(53, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:23:35'),
(54, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:26:19'),
(55, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:27:35'),
(56, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:27:58'),
(57, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:28:48'),
(58, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:31:55'),
(59, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:32:12'),
(60, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:32:35'),
(61, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:33:07'),
(62, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-02-16 01:33:27'),
(63, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-14 22:48:45'),
(64, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:41:11'),
(65, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:41:19'),
(66, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:41:54'),
(67, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:42:10'),
(68, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:42:42'),
(69, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 21:43:22'),
(70, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:43:42'),
(71, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:43:59'),
(72, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:44:03'),
(73, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:44:52'),
(74, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:46:08'),
(75, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:46:39'),
(76, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:46:48'),
(77, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:47:16'),
(78, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:47:37'),
(79, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:48:13'),
(80, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:48:38'),
(81, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 21:49:28'),
(82, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:49:45'),
(83, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:49:53'),
(84, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 21:50:19'),
(85, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:51:36'),
(86, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:52:38'),
(87, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:53:29'),
(88, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 21:54:01'),
(89, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 21:54:51'),
(90, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:55:25'),
(91, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:56:01'),
(92, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:56:43'),
(93, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:57:31'),
(94, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:58:03'),
(95, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:58:45'),
(96, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:59:01'),
(97, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 21:59:11'),
(98, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:59:30'),
(99, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 21:59:41'),
(100, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 21:59:54'),
(101, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:00:10'),
(102, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 22:00:26'),
(103, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 22:00:51'),
(104, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:01:04'),
(105, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:01:17'),
(106, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:03:25'),
(107, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:03:34'),
(108, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:04:05'),
(109, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:04:19'),
(110, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:05:10'),
(111, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:06:04'),
(112, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:10:27'),
(113, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:12:38'),
(114, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:13:21'),
(115, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:14:39'),
(116, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:15:49'),
(117, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:16:38'),
(118, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 22:18:02'),
(119, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:18:14'),
(120, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:19:04'),
(121, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:19:17'),
(122, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-15 22:20:20'),
(123, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-15 22:20:30'),
(124, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-15 22:20:48'),
(125, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:21:35'),
(126, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:21:43'),
(127, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:22:01'),
(128, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 22:22:46'),
(129, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:23:49'),
(130, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:24:29'),
(131, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:24:46'),
(132, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:25:21'),
(133, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:25:41'),
(134, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:26:02'),
(135, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:26:15'),
(136, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:27:30'),
(137, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:28:48'),
(138, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:29:12'),
(139, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:29:43'),
(140, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:30:57'),
(141, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:38:24'),
(142, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:40:50'),
(143, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:41:21'),
(144, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:41:44'),
(145, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:42:11'),
(146, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:42:31'),
(147, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:42:40'),
(148, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:43:54'),
(149, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:45:06'),
(150, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:46:42'),
(151, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:51:15'),
(152, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:51:33'),
(153, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:52:48'),
(154, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:53:18'),
(155, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 22:54:25'),
(156, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 22:56:20'),
(157, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-15 22:56:55'),
(158, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:00:24'),
(159, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:04:15'),
(160, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:04:31'),
(161, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:06:25'),
(162, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:07:25'),
(163, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:07:45'),
(164, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:08:42'),
(165, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:11:24'),
(166, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:12:27'),
(167, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:13:24'),
(168, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:14:15'),
(169, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:14:41'),
(170, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:16:13'),
(171, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:16:20'),
(172, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:16:31'),
(173, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 23:17:29'),
(174, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:17:33'),
(175, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:18:54'),
(176, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:19:53'),
(177, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 23:20:11'),
(178, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:20:33'),
(179, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:20:51'),
(180, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:21:09'),
(181, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:22:17'),
(182, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 23:24:30'),
(183, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:26:13'),
(184, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:28:39'),
(185, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:29:42'),
(186, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:31:42'),
(187, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:31:57'),
(188, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:32:02'),
(189, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:32:35'),
(190, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:34:17'),
(191, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:35:03'),
(192, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:36:09'),
(193, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:36:35'),
(194, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:38:38'),
(195, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:39:49'),
(196, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:40:17'),
(197, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:41:19'),
(198, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:42:50'),
(199, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:43:15'),
(200, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:45:31'),
(201, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:47:12'),
(202, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:48:22'),
(203, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 23:49:11'),
(204, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-15 23:49:50'),
(205, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:50:16'),
(206, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:50:47'),
(207, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:50:58'),
(208, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:52:39'),
(209, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:53:54'),
(210, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:55:25'),
(211, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-15 23:58:26'),
(212, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:00:06'),
(213, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:00:57'),
(214, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:03:13'),
(215, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:21:44'),
(216, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:22:18'),
(217, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:22:32'),
(218, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:22:42'),
(219, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:22:53'),
(220, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:23:16'),
(221, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:23:59'),
(222, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:24:38'),
(223, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:25:20'),
(224, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:27:37'),
(225, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:27:43'),
(226, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:27:57'),
(227, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:29:47'),
(228, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 00:31:41'),
(229, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:32:22'),
(230, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:32:48'),
(231, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:34:03'),
(232, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:34:32'),
(233, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 00:35:19'),
(234, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:36:24'),
(235, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:36:37'),
(236, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 00:37:10'),
(237, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:37:30'),
(238, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:38:15'),
(239, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:38:53'),
(240, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:39:50'),
(241, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:40:23'),
(242, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:40:52'),
(243, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:41:52'),
(244, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:43:16'),
(245, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:44:00'),
(246, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:44:37'),
(247, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:44:54'),
(248, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:45:38'),
(249, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:46:17'),
(250, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:46:59'),
(251, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:47:36'),
(252, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:48:41'),
(253, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:49:01'),
(254, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:49:46'),
(255, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:50:43'),
(256, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:53:14'),
(257, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:53:43'),
(258, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:54:06'),
(259, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:54:17'),
(260, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:54:51'),
(261, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:55:02'),
(262, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:55:35'),
(263, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 00:57:12'),
(264, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 00:57:26'),
(265, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 00:57:58'),
(266, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:03:17'),
(267, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:04:20'),
(268, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:04:58'),
(269, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:06:18'),
(270, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 01:06:35'),
(271, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:07:27'),
(272, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:08:59'),
(273, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:11:46'),
(274, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:11:59'),
(275, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:13:38'),
(276, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:13:51'),
(277, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:16:00'),
(278, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 01:16:28'),
(279, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 01:16:46'),
(280, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 01:16:52'),
(281, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 01:16:58'),
(282, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 01:17:03'),
(283, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 01:17:07'),
(284, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:18:18'),
(285, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:18:46'),
(286, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 01:19:18'),
(287, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 01:20:08'),
(288, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 01:20:34'),
(289, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:21:31'),
(290, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:21:50'),
(291, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:22:01'),
(292, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:22:14'),
(293, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:22:32'),
(294, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:23:03'),
(295, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:23:37'),
(296, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:23:58'),
(297, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:24:18'),
(298, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:24:23'),
(299, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:25:24'),
(300, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:27:24'),
(301, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:27:46'),
(302, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:28:07'),
(303, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:28:48'),
(304, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:29:03'),
(305, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:30:38'),
(306, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:31:07'),
(307, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:31:29'),
(308, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:31:35'),
(309, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:34:44'),
(310, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:35:25'),
(311, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:36:00'),
(312, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:37:57'),
(313, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 01:38:14'),
(314, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:32:20'),
(315, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:32:35'),
(316, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:32:47'),
(317, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:32:54'),
(318, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:33:01'),
(319, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:34:33'),
(320, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:35:10'),
(321, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:40:18'),
(322, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:40:58'),
(323, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 14:44:35'),
(324, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 14:45:25'),
(325, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:45:41'),
(326, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:45:58'),
(327, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:46:40'),
(328, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:47:33'),
(329, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:48:01'),
(330, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:48:18'),
(331, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:49:09'),
(332, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 14:50:30'),
(333, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:50:39'),
(334, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:51:07'),
(335, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:51:43'),
(336, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:52:02'),
(337, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:53:37'),
(338, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:53:52'),
(339, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:54:52'),
(340, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:55:42'),
(341, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:56:39'),
(342, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:57:07'),
(343, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 14:58:07'),
(344, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 14:58:57'),
(345, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 14:59:26'),
(346, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:01:42'),
(347, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:02:19'),
(348, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:02:43'),
(349, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:02:56'),
(350, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:03:07'),
(351, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:04:44'),
(352, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:05:41'),
(353, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:06:01'),
(354, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:07:35'),
(355, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:07:52'),
(356, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:08:35'),
(357, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:08:44'),
(358, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:08:53'),
(359, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:09:54'),
(360, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 15:10:06'),
(361, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:10:19'),
(362, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:10:40'),
(363, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:10:51'),
(364, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:11:30'),
(365, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:11:44'),
(366, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:13:56'),
(367, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:14:09'),
(368, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:14:37'),
(369, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:15:00'),
(370, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:15:25'),
(371, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:15:40'),
(372, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:16:03'),
(373, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:16:17'),
(374, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:16:29'),
(375, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:16:46'),
(376, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:17:04'),
(377, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:17:15'),
(378, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:17:26'),
(379, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:17:40'),
(380, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:17:54'),
(381, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:18:04'),
(382, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:18:26'),
(383, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:18:37'),
(384, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:18:47'),
(385, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:19:55'),
(386, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:20:11'),
(387, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:20:34'),
(388, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:21:11'),
(389, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:21:27'),
(390, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:21:57'),
(391, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 15:22:18'),
(392, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:22:30'),
(393, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:22:40'),
(394, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:22:51'),
(395, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:23:09'),
(396, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:23:29'),
(397, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 15:23:39'),
(398, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:29:28'),
(399, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:29:39'),
(400, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:29:50'),
(401, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:30:06'),
(402, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:30:19'),
(403, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:31:53'),
(404, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:32:25'),
(405, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:33:00'),
(406, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:33:16'),
(407, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:33:56'),
(408, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:34:25'),
(409, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:34:56'),
(410, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:36:01'),
(411, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:36:22'),
(412, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:36:28'),
(413, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:36:42'),
(414, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:36:56'),
(415, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:37:09'),
(416, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:37:43'),
(417, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:37:59'),
(418, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:38:46'),
(419, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:39:06'),
(420, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:39:31'),
(421, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:39:53'),
(422, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:40:15'),
(423, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:40:28'),
(424, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:42:12'),
(425, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:43:10'),
(426, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:43:20'),
(427, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:43:41'),
(428, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:43:59'),
(429, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:44:12'),
(430, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:44:25'),
(431, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:44:43'),
(432, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:45:10'),
(433, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:45:43'),
(434, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:45:59'),
(435, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:46:14'),
(436, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:47:00'),
(437, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:47:11'),
(438, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:48:31'),
(439, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:49:11'),
(440, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:49:37'),
(441, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:50:02'),
(442, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:50:23'),
(443, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:50:50'),
(444, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:52:39'),
(445, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:53:56'),
(446, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 16:54:25'),
(447, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:56:14'),
(448, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:56:44'),
(449, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:57:09'),
(450, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 16:58:32'),
(451, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:58:47'),
(452, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 16:59:36'),
(453, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:00:24'),
(454, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:00:40'),
(455, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 17:01:18'),
(456, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:02:09'),
(457, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:02:24'),
(458, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:03:26'),
(459, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:03:42'),
(460, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:04:27'),
(461, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:05:11'),
(462, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:06:18'),
(463, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:08:10'),
(464, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:09:45'),
(465, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:11:27'),
(466, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:12:17'),
(467, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:14:23'),
(468, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:16:04'),
(469, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:18:01'),
(470, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:18:26'),
(471, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:18:50'),
(472, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:19:45'),
(473, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:20:08'),
(474, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:20:13'),
(475, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:21:11'),
(476, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:22:12'),
(477, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:22:24'),
(478, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:22:34'),
(479, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:23:23'),
(480, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:23:35'),
(481, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:25:15'),
(482, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:25:31'),
(483, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:26:52'),
(484, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:27:47'),
(485, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:27:59'),
(486, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:29:05'),
(487, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:30:26'),
(488, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:30:54'),
(489, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:32:23'),
(490, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:32:39'),
(491, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:33:00'),
(492, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:33:14'),
(493, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:33:37'),
(494, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:33:43'),
(495, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:33:53'),
(496, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:34:30'),
(497, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:35:03'),
(498, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:35:33'),
(499, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:36:35'),
(500, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:37:05'),
(501, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:38:01'),
(502, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:38:39'),
(503, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:39:06'),
(504, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:39:22'),
(505, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:39:34'),
(506, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:40:18'),
(507, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:40:29'),
(508, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:41:51'),
(509, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:42:13'),
(510, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 17:42:34'),
(511, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:42:55'),
(512, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:43:11'),
(513, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:45:53'),
(514, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:47:24'),
(515, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:48:51'),
(516, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:50:38'),
(517, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:51:17'),
(518, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:52:49'),
(519, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:53:13'),
(520, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:53:26'),
(521, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:54:06'),
(522, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:55:14'),
(523, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:55:43'),
(524, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 17:57:41'),
(525, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:00:40'),
(526, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:03:54'),
(527, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:07:32'),
(528, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:07:51'),
(529, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:08:53'),
(530, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:09:49'),
(531, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:10:22'),
(532, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:10:51'),
(533, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:11:45'),
(534, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:11:53'),
(535, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:13:42'),
(536, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:18:21'),
(537, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:18:41'),
(538, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:19:06'),
(539, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:19:40'),
(540, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:20:05'),
(541, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:22:33'),
(542, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:23:37'),
(543, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:27:37'),
(544, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:27:57'),
(545, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:30:52'),
(546, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 18:34:00'),
(547, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 18:34:31'),
(548, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 18:34:58'),
(549, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 18:35:22'),
(550, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 18:35:42'),
(551, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 18:36:24'),
(552, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 18:38:27'),
(553, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 18:38:50'),
(554, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:40:00'),
(555, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:40:46'),
(556, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 18:41:03'),
(557, 'sonata.admin.create', 'published', 'frozen', NULL, NULL, '2014-03-16 18:47:06'),
(558, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-16 18:47:23'),
(559, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 21:14:01'),
(560, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 21:14:36'),
(561, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 21:15:11'),
(562, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 21:30:23'),
(563, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-16 21:36:08'),
(564, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:29:04'),
(565, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:29:25'),
(566, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:29:48'),
(567, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:30:10'),
(568, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:30:29'),
(569, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:31:23'),
(570, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:31:54'),
(571, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:32:29'),
(572, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:32:52'),
(573, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:33:10'),
(574, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:33:41'),
(575, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:33:44'),
(576, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:33:47'),
(577, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:33:52'),
(578, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:33:56'),
(579, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:34:00'),
(580, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:34:04'),
(581, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:34:05'),
(582, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:34:09'),
(583, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:34:15');
INSERT INTO `timeline__action` (`id`, `verb`, `status_current`, `status_wanted`, `duplicate_key`, `duplicate_priority`, `created_at`) VALUES
(584, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:36:09'),
(585, 'sonata.admin.delete', 'published', 'frozen', NULL, NULL, '2014-03-17 20:37:21'),
(586, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:42:06'),
(587, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:44:03'),
(588, 'sonata.admin.update', 'published', 'frozen', NULL, NULL, '2014-03-17 20:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `timeline__action_component`
--

CREATE TABLE IF NOT EXISTS `timeline__action_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6ACD1B169D32F035` (`action_id`),
  KEY `IDX_6ACD1B16E2ABAFFF` (`component_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1743 ;

--
-- Dumping data for table `timeline__action_component`
--

INSERT INTO `timeline__action_component` (`id`, `action_id`, `component_id`, `type`, `text`) VALUES
(10, 4, 9, 'target', NULL),
(11, 4, NULL, 'target_text', 'North Greece'),
(12, 4, 8, 'subject', NULL),
(13, 5, 9, 'target', NULL),
(14, 5, NULL, 'target_text', 'North Greece'),
(15, 5, 8, 'subject', NULL),
(16, 6, 9, 'target', NULL),
(17, 6, NULL, 'target_text', 'North Greece'),
(18, 6, 8, 'subject', NULL),
(19, 7, 10, 'target', NULL),
(20, 7, NULL, 'target_text', 'South Greece'),
(21, 7, 8, 'subject', NULL),
(22, 8, 11, 'target', NULL),
(23, 8, NULL, 'target_text', 'South Greece'),
(24, 8, 8, 'subject', NULL),
(25, 9, 12, 'target', NULL),
(26, 9, NULL, 'target_text', 'Halkidiki Clone'),
(27, 9, 8, 'subject', NULL),
(28, 10, 13, 'target', NULL),
(29, 10, NULL, 'target_text', 'South Greece Clone'),
(30, 10, 8, 'subject', NULL),
(31, 11, 13, 'target', NULL),
(32, 11, NULL, 'target_text', 'South Greece Clone'),
(33, 11, 8, 'subject', NULL),
(34, 12, 14, 'target', NULL),
(35, 12, NULL, 'target_text', 'Events'),
(36, 12, 8, 'subject', NULL),
(37, 13, 14, 'target', NULL),
(38, 13, NULL, 'target_text', 'Events'),
(39, 13, 8, 'subject', NULL),
(40, 14, 15, 'target', NULL),
(41, 14, NULL, 'target_text', 'North Greece'),
(42, 14, 8, 'subject', NULL),
(43, 15, 15, 'target', NULL),
(44, 15, NULL, 'target_text', 'North Greece'),
(45, 15, 8, 'subject', NULL),
(46, 16, 16, 'target', NULL),
(47, 16, NULL, 'target_text', 'Destinations'),
(48, 16, 8, 'subject', NULL),
(49, 17, 16, 'target', NULL),
(50, 17, NULL, 'target_text', 'Destinations'),
(51, 17, 8, 'subject', NULL),
(52, 18, 9, 'target', NULL),
(53, 18, NULL, 'target_text', 'North Greece'),
(54, 18, 8, 'subject', NULL),
(55, 19, 9, 'target', NULL),
(56, 19, NULL, 'target_text', 'North Greece'),
(57, 19, 8, 'subject', NULL),
(58, 20, 9, 'target', NULL),
(59, 20, NULL, 'target_text', 'North Greece'),
(60, 20, 8, 'subject', NULL),
(61, 21, 9, 'target', NULL),
(62, 21, NULL, 'target_text', 'North Greece'),
(63, 21, 8, 'subject', NULL),
(64, 22, 9, 'target', NULL),
(65, 22, NULL, 'target_text', 'North Greece'),
(66, 22, 8, 'subject', NULL),
(67, 23, 9, 'target', NULL),
(68, 23, NULL, 'target_text', 'North Greece'),
(69, 23, 8, 'subject', NULL),
(70, 24, 16, 'target', NULL),
(71, 24, NULL, 'target_text', 'Destinations'),
(72, 24, 8, 'subject', NULL),
(73, 25, 17, 'target', NULL),
(74, 25, NULL, 'target_text', 'Kite Surf'),
(75, 25, 8, 'subject', NULL),
(76, 26, 18, 'target', NULL),
(77, 26, NULL, 'target_text', 'Wake Board'),
(78, 26, 8, 'subject', NULL),
(79, 27, 19, 'target', NULL),
(80, 27, NULL, 'target_text', 'Surf'),
(81, 27, 8, 'subject', NULL),
(82, 28, 20, 'target', NULL),
(83, 28, NULL, 'target_text', 'Water Ski'),
(84, 28, 8, 'subject', NULL),
(85, 29, 18, 'target', NULL),
(86, 29, NULL, 'target_text', 'Wake Board'),
(87, 29, 8, 'subject', NULL),
(88, 30, 21, 'target', NULL),
(89, 30, NULL, 'target_text', 'Halkidiki'),
(90, 30, 8, 'subject', NULL),
(91, 31, 21, 'target', NULL),
(92, 31, NULL, 'target_text', 'Halkidiki'),
(93, 31, 8, 'subject', NULL),
(94, 32, 21, 'target', NULL),
(95, 32, NULL, 'target_text', 'Halkidiki'),
(96, 32, 8, 'subject', NULL),
(97, 33, 21, 'target', NULL),
(98, 33, NULL, 'target_text', 'Halkidiki'),
(99, 33, 8, 'subject', NULL),
(100, 34, 21, 'target', NULL),
(101, 34, NULL, 'target_text', 'Halkidiki'),
(102, 34, 8, 'subject', NULL),
(103, 35, 21, 'target', NULL),
(104, 35, NULL, 'target_text', 'Halkidiki'),
(105, 35, 8, 'subject', NULL),
(106, 36, 22, 'target', NULL),
(107, 36, NULL, 'target_text', 'Surf'),
(108, 36, 8, 'subject', NULL),
(109, 37, 23, 'target', NULL),
(110, 37, NULL, 'target_text', 'Spots'),
(111, 37, 8, 'subject', NULL),
(112, 38, 23, 'target', NULL),
(113, 38, NULL, 'target_text', 'Spots'),
(114, 38, 8, 'subject', NULL),
(115, 39, 23, 'target', NULL),
(116, 39, NULL, 'target_text', 'Spots'),
(117, 39, 8, 'subject', NULL),
(118, 40, 23, 'target', NULL),
(119, 40, NULL, 'target_text', 'Spots'),
(120, 40, 8, 'subject', NULL),
(121, 41, 23, 'target', NULL),
(122, 41, NULL, 'target_text', 'Spots'),
(123, 41, 8, 'subject', NULL),
(124, 42, 24, 'target', NULL),
(125, 42, NULL, 'target_text', 'Wind Surf'),
(126, 42, 8, 'subject', NULL),
(127, 43, 25, 'target', NULL),
(128, 43, NULL, 'target_text', 'Winter'),
(129, 43, 8, 'subject', NULL),
(130, 44, 26, 'target', NULL),
(131, 44, NULL, 'target_text', 'Surd'),
(132, 44, 8, 'subject', NULL),
(133, 45, 27, 'target', NULL),
(134, 45, NULL, 'target_text', 'Test spot page 2 Clone'),
(135, 45, 8, 'subject', NULL),
(136, 46, 28, 'target', NULL),
(137, 46, NULL, 'target_text', 'destin'),
(138, 46, 8, 'subject', NULL),
(139, 47, 29, 'target', NULL),
(140, 47, NULL, 'target_text', 'Test spot page 1'),
(141, 47, 8, 'subject', NULL),
(142, 48, 29, 'target', NULL),
(143, 48, NULL, 'target_text', 'Test spot page 1'),
(144, 48, 8, 'subject', NULL),
(145, 49, 29, 'target', NULL),
(146, 49, NULL, 'target_text', 'Test spot page 1'),
(147, 49, 8, 'subject', NULL),
(148, 50, 29, 'target', NULL),
(149, 50, NULL, 'target_text', 'Test spot page 1'),
(150, 50, 8, 'subject', NULL),
(151, 51, 29, 'target', NULL),
(152, 51, NULL, 'target_text', 'Test spot page 1'),
(153, 51, 8, 'subject', NULL),
(154, 52, 29, 'target', NULL),
(155, 52, NULL, 'target_text', 'Test spot page 1'),
(156, 52, 8, 'subject', NULL),
(157, 53, 29, 'target', NULL),
(158, 53, NULL, 'target_text', 'Test spot page 1'),
(159, 53, 8, 'subject', NULL),
(160, 54, 29, 'target', NULL),
(161, 54, NULL, 'target_text', 'Test spot page 1'),
(162, 54, 8, 'subject', NULL),
(163, 55, 29, 'target', NULL),
(164, 55, NULL, 'target_text', 'Test spot page 1'),
(165, 55, 8, 'subject', NULL),
(166, 56, 29, 'target', NULL),
(167, 56, NULL, 'target_text', 'Test spot page 1'),
(168, 56, 8, 'subject', NULL),
(169, 57, 29, 'target', NULL),
(170, 57, NULL, 'target_text', 'Test spot page 1'),
(171, 57, 8, 'subject', NULL),
(172, 58, 29, 'target', NULL),
(173, 58, NULL, 'target_text', 'Test spot page 1'),
(174, 58, 8, 'subject', NULL),
(175, 59, 29, 'target', NULL),
(176, 59, NULL, 'target_text', 'Test spot page 1'),
(177, 59, 8, 'subject', NULL),
(178, 60, 29, 'target', NULL),
(179, 60, NULL, 'target_text', 'Test spot page 1'),
(180, 60, 8, 'subject', NULL),
(181, 61, 29, 'target', NULL),
(182, 61, NULL, 'target_text', 'Test spot page 1'),
(183, 61, 8, 'subject', NULL),
(184, 62, 29, 'target', NULL),
(185, 62, NULL, 'target_text', 'Test spot page 1'),
(186, 62, 8, 'subject', NULL),
(187, 63, 29, 'target', NULL),
(188, 63, NULL, 'target_text', 'Test spot page 1'),
(189, 63, 8, 'subject', NULL),
(190, 64, 13, 'target', NULL),
(191, 64, NULL, 'target_text', 'Cyclades'),
(192, 64, 8, 'subject', NULL),
(193, 65, 13, 'target', NULL),
(194, 65, NULL, 'target_text', 'Cyclades'),
(195, 65, 8, 'subject', NULL),
(196, 66, 11, 'target', NULL),
(197, 66, NULL, 'target_text', 'north greece'),
(198, 66, 8, 'subject', NULL),
(199, 67, 11, 'target', NULL),
(200, 67, NULL, 'target_text', 'north greece'),
(201, 67, 8, 'subject', NULL),
(202, 68, 9, 'target', NULL),
(203, 68, NULL, 'target_text', 'South Greece'),
(204, 68, 8, 'subject', NULL),
(205, 69, 30, 'target', NULL),
(206, 69, NULL, 'target_text', 'Central Greece'),
(207, 69, 8, 'subject', NULL),
(208, 70, 30, 'target', NULL),
(209, 70, NULL, 'target_text', 'Central Greece'),
(210, 70, 8, 'subject', NULL),
(211, 71, 30, 'target', NULL),
(212, 71, NULL, 'target_text', 'Central Greece'),
(213, 71, 8, 'subject', NULL),
(214, 72, 30, 'target', NULL),
(215, 72, NULL, 'target_text', 'Central Greece'),
(216, 72, 8, 'subject', NULL),
(217, 73, 30, 'target', NULL),
(218, 73, NULL, 'target_text', 'Central Greece'),
(219, 73, 8, 'subject', NULL),
(220, 74, 30, 'target', NULL),
(221, 74, NULL, 'target_text', 'North Greece'),
(222, 74, 8, 'subject', NULL),
(223, 75, 30, 'target', NULL),
(224, 75, NULL, 'target_text', 'Central Greece'),
(225, 75, 8, 'subject', NULL),
(226, 76, 30, 'target', NULL),
(227, 76, NULL, 'target_text', 'Central Greece'),
(228, 76, 8, 'subject', NULL),
(229, 77, 30, 'target', NULL),
(230, 77, NULL, 'target_text', 'North Greece'),
(231, 77, 8, 'subject', NULL),
(232, 78, 11, 'target', NULL),
(233, 78, NULL, 'target_text', 'Central Greece'),
(234, 78, 8, 'subject', NULL),
(235, 79, 13, 'target', NULL),
(236, 79, NULL, 'target_text', 'Ionian Sea'),
(237, 79, 8, 'subject', NULL),
(238, 80, 9, 'target', NULL),
(239, 80, NULL, 'target_text', 'Aegean Sea'),
(240, 80, 8, 'subject', NULL),
(241, 81, 31, 'target', NULL),
(242, 81, NULL, 'target_text', 'Peloponnese'),
(243, 81, 8, 'subject', NULL),
(244, 82, 9, 'target', NULL),
(245, 82, NULL, 'target_text', 'Aegean Sea'),
(246, 82, 8, 'subject', NULL),
(247, 83, 9, 'target', NULL),
(248, 83, NULL, 'target_text', 'Aegean Sea'),
(249, 83, 8, 'subject', NULL),
(250, 84, 32, 'target', NULL),
(251, 84, NULL, 'target_text', 'Crete'),
(252, 84, 8, 'subject', NULL),
(253, 85, 16, 'target', NULL),
(254, 85, NULL, 'target_text', 'Destinations'),
(255, 85, 8, 'subject', NULL),
(256, 86, 29, 'target', NULL),
(257, 86, NULL, 'target_text', 'Loutsa'),
(258, 86, 8, 'subject', NULL),
(259, 87, 21, 'target', NULL),
(260, 87, NULL, 'target_text', 'Loutsa'),
(261, 87, 8, 'subject', NULL),
(262, 88, 33, 'target', NULL),
(263, 88, NULL, 'target_text', 'Schinias'),
(264, 88, 8, 'subject', NULL),
(265, 89, 34, 'target', NULL),
(266, 89, NULL, 'target_text', 'Naxos'),
(267, 89, 8, 'subject', NULL),
(268, 90, 34, 'target', NULL),
(269, 90, NULL, 'target_text', 'Naxos'),
(270, 90, 8, 'subject', NULL),
(271, 91, 9, 'target', NULL),
(272, 91, NULL, 'target_text', 'Aegean Sea'),
(273, 91, 8, 'subject', NULL),
(274, 92, 34, 'target', NULL),
(275, 92, NULL, 'target_text', 'Naxos'),
(276, 92, 8, 'subject', NULL),
(277, 93, 9, 'target', NULL),
(278, 93, NULL, 'target_text', 'Aegean Sea'),
(279, 93, 8, 'subject', NULL),
(280, 94, 9, 'target', NULL),
(281, 94, NULL, 'target_text', 'Aegean Sea'),
(282, 94, 8, 'subject', NULL),
(283, 95, 10, 'target', NULL),
(284, 95, NULL, 'target_text', 'Central Greece'),
(285, 95, 8, 'subject', NULL),
(286, 96, 15, 'target', NULL),
(287, 96, NULL, 'target_text', 'North Greece'),
(288, 96, 8, 'subject', NULL),
(289, 97, 35, 'target', NULL),
(290, 97, NULL, 'target_text', 'Crete'),
(291, 97, 8, 'subject', NULL),
(292, 98, 35, 'target', NULL),
(293, 98, NULL, 'target_text', 'Crete'),
(294, 98, 8, 'subject', NULL),
(295, 99, 10, 'target', NULL),
(296, 99, NULL, 'target_text', 'Central Greece'),
(297, 99, 8, 'subject', NULL),
(298, 100, 36, 'target', NULL),
(299, 100, NULL, 'target_text', 'aegean sea'),
(300, 100, 8, 'subject', NULL),
(301, 101, 36, 'target', NULL),
(302, 101, NULL, 'target_text', 'Aegean Sea'),
(303, 101, 8, 'subject', NULL),
(304, 102, 37, 'target', NULL),
(305, 102, NULL, 'target_text', 'Ionian Sea'),
(306, 102, 8, 'subject', NULL),
(307, 103, 38, 'target', NULL),
(308, 103, NULL, 'target_text', 'Peloponnese'),
(309, 103, 8, 'subject', NULL),
(310, 104, 34, 'target', NULL),
(311, 104, NULL, 'target_text', 'Naxos'),
(312, 104, 8, 'subject', NULL),
(313, 105, 34, 'target', NULL),
(314, 105, NULL, 'target_text', 'Naxos'),
(315, 105, 8, 'subject', NULL),
(316, 106, 39, 'target', NULL),
(317, 106, NULL, 'target_text', 'Laguna'),
(318, 106, 8, 'subject', NULL),
(319, 107, 39, 'target', NULL),
(320, 107, NULL, 'target_text', 'Laguna'),
(321, 107, 8, 'subject', NULL),
(322, 108, 34, 'target', NULL),
(323, 108, NULL, 'target_text', 'Naxos'),
(324, 108, 8, 'subject', NULL),
(325, 109, 34, 'target', NULL),
(326, 109, NULL, 'target_text', 'Naxos'),
(327, 109, 8, 'subject', NULL),
(328, 110, 21, 'target', NULL),
(329, 110, NULL, 'target_text', 'Attica'),
(330, 110, 8, 'subject', NULL),
(331, 111, 21, 'target', NULL),
(332, 111, NULL, 'target_text', 'Loutsa'),
(333, 111, 8, 'subject', NULL),
(334, 112, 21, 'target', NULL),
(335, 112, NULL, 'target_text', 'Loutsa'),
(336, 112, 8, 'subject', NULL),
(337, 113, 21, 'target', NULL),
(338, 113, NULL, 'target_text', 'Loutsa'),
(339, 113, 8, 'subject', NULL),
(340, 114, 39, 'target', NULL),
(341, 114, NULL, 'target_text', 'Laguna'),
(342, 114, 8, 'subject', NULL),
(343, 115, 40, 'target', NULL),
(344, 115, NULL, 'target_text', 'Loutsa'),
(345, 115, 8, 'subject', NULL),
(346, 116, 40, 'target', NULL),
(347, 116, NULL, 'target_text', 'central greece'),
(348, 116, 8, 'subject', NULL),
(349, 117, 29, 'target', NULL),
(350, 117, NULL, 'target_text', 'Loutsa'),
(351, 117, 8, 'subject', NULL),
(352, 118, 41, 'target', NULL),
(353, 118, NULL, 'target_text', 'Aegean Sea'),
(354, 118, 8, 'subject', NULL),
(355, 119, 39, 'target', NULL),
(356, 119, NULL, 'target_text', 'Laguna'),
(357, 119, 8, 'subject', NULL),
(358, 120, 39, 'target', NULL),
(359, 120, NULL, 'target_text', 'Laguna'),
(360, 120, 8, 'subject', NULL),
(361, 121, 39, 'target', NULL),
(362, 121, NULL, 'target_text', 'Laguna'),
(363, 121, 8, 'subject', NULL),
(364, 122, NULL, 'target_text', 'Loutsa'),
(365, 122, 8, 'subject', NULL),
(366, 123, NULL, 'target_text', 'Naxos'),
(367, 123, 8, 'subject', NULL),
(368, 124, NULL, 'target_text', 'Schinias'),
(369, 124, 8, 'subject', NULL),
(370, 125, 29, 'target', NULL),
(371, 125, NULL, 'target_text', 'Loutsa'),
(372, 125, 8, 'subject', NULL),
(373, 126, 29, 'target', NULL),
(374, 126, NULL, 'target_text', 'Loutsa'),
(375, 126, 8, 'subject', NULL),
(376, 127, 29, 'target', NULL),
(377, 127, NULL, 'target_text', 'Loutsa'),
(378, 127, 8, 'subject', NULL),
(379, 128, 42, 'target', NULL),
(380, 128, NULL, 'target_text', 'Loutsa'),
(381, 128, 8, 'subject', NULL),
(382, 129, 13, 'target', NULL),
(383, 129, NULL, 'target_text', 'Ionian Sea'),
(384, 129, 8, 'subject', NULL),
(385, 130, 11, 'target', NULL),
(386, 130, NULL, 'target_text', 'Central Greece'),
(387, 130, 8, 'subject', NULL),
(388, 131, 11, 'target', NULL),
(389, 131, NULL, 'target_text', 'Central Greece'),
(390, 131, 8, 'subject', NULL),
(391, 132, 30, 'target', NULL),
(392, 132, NULL, 'target_text', 'North Greece'),
(393, 132, 8, 'subject', NULL),
(394, 133, 42, 'target', NULL),
(395, 133, NULL, 'target_text', 'Loutsa'),
(396, 133, 8, 'subject', NULL),
(397, 134, 42, 'target', NULL),
(398, 134, NULL, 'target_text', 'Loutsa'),
(399, 134, 8, 'subject', NULL),
(400, 135, 42, 'target', NULL),
(401, 135, NULL, 'target_text', 'Loutsa'),
(402, 135, 8, 'subject', NULL),
(403, 136, 42, 'target', NULL),
(404, 136, NULL, 'target_text', 'Loutsa'),
(405, 136, 8, 'subject', NULL),
(406, 137, 29, 'target', NULL),
(407, 137, NULL, 'target_text', 'Loutsa'),
(408, 137, 8, 'subject', NULL),
(409, 138, 29, 'target', NULL),
(410, 138, NULL, 'target_text', 'Loutsa'),
(411, 138, 8, 'subject', NULL),
(412, 139, 29, 'target', NULL),
(413, 139, NULL, 'target_text', 'Loutsa'),
(414, 139, 8, 'subject', NULL),
(415, 140, 40, 'target', NULL),
(416, 140, NULL, 'target_text', 'central greece'),
(417, 140, 8, 'subject', NULL),
(418, 141, 42, 'target', NULL),
(419, 141, NULL, 'target_text', 'Atiica'),
(420, 141, 8, 'subject', NULL),
(421, 142, 29, 'target', NULL),
(422, 142, NULL, 'target_text', 'Loutsa'),
(423, 142, 8, 'subject', NULL),
(424, 143, 28, 'target', NULL),
(425, 143, NULL, 'target_text', 'attica'),
(426, 143, 8, 'subject', NULL),
(427, 144, 42, 'target', NULL),
(428, 144, NULL, 'target_text', 'Attica'),
(429, 144, 8, 'subject', NULL),
(430, 145, 42, 'target', NULL),
(431, 145, NULL, 'target_text', 'Attica'),
(432, 145, 8, 'subject', NULL),
(433, 146, 42, 'target', NULL),
(434, 146, NULL, 'target_text', 'Attica'),
(435, 146, 8, 'subject', NULL),
(436, 147, 42, 'target', NULL),
(437, 147, NULL, 'target_text', 'Attica'),
(438, 147, 8, 'subject', NULL),
(439, 148, 42, 'target', NULL),
(440, 148, NULL, 'target_text', 'Attica'),
(441, 148, 8, 'subject', NULL),
(442, 149, 29, 'target', NULL),
(443, 149, NULL, 'target_text', 'Loutsa'),
(444, 149, 8, 'subject', NULL),
(445, 150, 27, 'target', NULL),
(446, 150, NULL, 'target_text', 'Test spot page 2 Clone'),
(447, 150, 8, 'subject', NULL),
(448, 151, 26, 'target', NULL),
(449, 151, NULL, 'target_text', 'Surf'),
(450, 151, 8, 'subject', NULL),
(451, 152, 19, 'target', NULL),
(452, 152, NULL, 'target_text', 'Surf'),
(453, 152, 8, 'subject', NULL),
(454, 153, 29, 'target', NULL),
(455, 153, NULL, 'target_text', 'Loutsa'),
(456, 153, 8, 'subject', NULL),
(457, 154, 29, 'target', NULL),
(458, 154, NULL, 'target_text', 'Loutsa'),
(459, 154, 8, 'subject', NULL),
(460, 155, 29, 'target', NULL),
(461, 155, NULL, 'target_text', 'Loutsa'),
(462, 155, 8, 'subject', NULL),
(463, 156, 43, 'target', NULL),
(464, 156, NULL, 'target_text', 'Evoia'),
(465, 156, 8, 'subject', NULL),
(466, 157, NULL, 'target_text', 'Surf'),
(467, 157, 8, 'subject', NULL),
(468, 158, 27, 'target', NULL),
(469, 158, NULL, 'target_text', 'Test spot page 2 Clone'),
(470, 158, 8, 'subject', NULL),
(471, 159, 12, 'target', NULL),
(472, 159, NULL, 'target_text', 'Halkidiki'),
(473, 159, 8, 'subject', NULL),
(474, 160, 12, 'target', NULL),
(475, 160, NULL, 'target_text', 'Halkidiki'),
(476, 160, 8, 'subject', NULL),
(477, 161, 28, 'target', NULL),
(478, 161, NULL, 'target_text', 'halkidiki'),
(479, 161, 8, 'subject', NULL),
(480, 162, 23, 'target', NULL),
(481, 162, NULL, 'target_text', 'Spots'),
(482, 162, 8, 'subject', NULL),
(483, 163, 23, 'target', NULL),
(484, 163, NULL, 'target_text', 'Spots'),
(485, 163, 8, 'subject', NULL),
(486, 164, 23, 'target', NULL),
(487, 164, NULL, 'target_text', 'Spots'),
(488, 164, 8, 'subject', NULL),
(489, 165, 23, 'target', NULL),
(490, 165, NULL, 'target_text', 'Spots'),
(491, 165, 8, 'subject', NULL),
(492, 166, 27, 'target', NULL),
(493, 166, NULL, 'target_text', 'Test spot page 2 Clone'),
(494, 166, 8, 'subject', NULL),
(495, 167, 11, 'target', NULL),
(496, 167, NULL, 'target_text', 'Central Greece'),
(497, 167, 8, 'subject', NULL),
(498, 168, 29, 'target', NULL),
(499, 168, NULL, 'target_text', 'Loutsa'),
(500, 168, 8, 'subject', NULL),
(501, 169, 28, 'target', NULL),
(502, 169, NULL, 'target_text', 'halkidiki'),
(503, 169, 8, 'subject', NULL),
(504, 170, 12, 'target', NULL),
(505, 170, NULL, 'target_text', 'Attica'),
(506, 170, 8, 'subject', NULL),
(507, 171, 12, 'target', NULL),
(508, 171, NULL, 'target_text', 'Attica'),
(509, 171, 8, 'subject', NULL),
(510, 172, 28, 'target', NULL),
(511, 172, NULL, 'target_text', 'Attica'),
(512, 172, 8, 'subject', NULL),
(513, 173, 44, 'target', NULL),
(514, 173, NULL, 'target_text', 'Evoia'),
(515, 173, 8, 'subject', NULL),
(516, 174, 44, 'target', NULL),
(517, 174, NULL, 'target_text', 'Evoia'),
(518, 174, 8, 'subject', NULL),
(519, 175, 27, 'target', NULL),
(520, 175, NULL, 'target_text', 'Marmari'),
(521, 175, 8, 'subject', NULL),
(522, 176, 27, 'target', NULL),
(523, 176, NULL, 'target_text', 'Marmari'),
(524, 176, 8, 'subject', NULL),
(525, 177, 45, 'target', NULL),
(526, 177, NULL, 'target_text', 'Marmari'),
(527, 177, 8, 'subject', NULL),
(528, 178, 45, 'target', NULL),
(529, 178, NULL, 'target_text', 'Marmari'),
(530, 178, 8, 'subject', NULL),
(531, 179, 45, 'target', NULL),
(532, 179, NULL, 'target_text', 'Marmari'),
(533, 179, 8, 'subject', NULL),
(534, 180, 45, 'target', NULL),
(535, 180, NULL, 'target_text', 'Evoia'),
(536, 180, 8, 'subject', NULL),
(537, 181, 27, 'target', NULL),
(538, 181, NULL, 'target_text', 'Marmari'),
(539, 181, 8, 'subject', NULL),
(540, 182, 46, 'target', NULL),
(541, 182, NULL, 'target_text', 'Vouliagmeni'),
(542, 182, 8, 'subject', NULL),
(543, 183, 46, 'target', NULL),
(544, 183, NULL, 'target_text', 'Vouliagmeni'),
(545, 183, 8, 'subject', NULL),
(546, 184, 46, 'target', NULL),
(547, 184, NULL, 'target_text', 'Vouliagmeni'),
(548, 184, 8, 'subject', NULL),
(549, 185, 46, 'target', NULL),
(550, 185, NULL, 'target_text', 'Vouliagmeni'),
(551, 185, 8, 'subject', NULL),
(552, 186, 27, 'target', NULL),
(553, 186, NULL, 'target_text', 'Marmari'),
(554, 186, 8, 'subject', NULL),
(555, 187, 27, 'target', NULL),
(556, 187, NULL, 'target_text', 'Marmari'),
(557, 187, 8, 'subject', NULL),
(558, 188, 27, 'target', NULL),
(559, 188, NULL, 'target_text', 'Marmari'),
(560, 188, 8, 'subject', NULL),
(561, 189, 27, 'target', NULL),
(562, 189, NULL, 'target_text', 'Marmari'),
(563, 189, 8, 'subject', NULL),
(564, 190, 46, 'target', NULL),
(565, 190, NULL, 'target_text', 'Vouliagmeni'),
(566, 190, 8, 'subject', NULL),
(567, 191, 46, 'target', NULL),
(568, 191, NULL, 'target_text', 'Vouliagmeni'),
(569, 191, 8, 'subject', NULL),
(570, 192, 46, 'target', NULL),
(571, 192, NULL, 'target_text', 'Vouliagmeni'),
(572, 192, 8, 'subject', NULL),
(573, 193, 46, 'target', NULL),
(574, 193, NULL, 'target_text', 'Vouliagmeni'),
(575, 193, 8, 'subject', NULL),
(576, 194, 46, 'target', NULL),
(577, 194, NULL, 'target_text', 'Vouliagmeni'),
(578, 194, 8, 'subject', NULL),
(579, 195, 29, 'target', NULL),
(580, 195, NULL, 'target_text', 'Loutsa'),
(581, 195, 8, 'subject', NULL),
(582, 196, 29, 'target', NULL),
(583, 196, NULL, 'target_text', 'Loutsa'),
(584, 196, 8, 'subject', NULL),
(585, 197, 29, 'target', NULL),
(586, 197, NULL, 'target_text', 'Loutsa'),
(587, 197, 8, 'subject', NULL),
(588, 198, 29, 'target', NULL),
(589, 198, NULL, 'target_text', 'Loutsa'),
(590, 198, 8, 'subject', NULL),
(591, 199, 29, 'target', NULL),
(592, 199, NULL, 'target_text', 'Loutsa'),
(593, 199, 8, 'subject', NULL),
(594, 200, 46, 'target', NULL),
(595, 200, NULL, 'target_text', 'Vouliagmeni'),
(596, 200, 8, 'subject', NULL),
(597, 201, 29, 'target', NULL),
(598, 201, NULL, 'target_text', 'Loutsa'),
(599, 201, 8, 'subject', NULL),
(600, 202, 13, 'target', NULL),
(601, 202, NULL, 'target_text', 'Aegean Sea'),
(602, 202, 8, 'subject', NULL),
(603, 203, 47, 'target', NULL),
(604, 203, NULL, 'target_text', 'Naxos'),
(605, 203, 8, 'subject', NULL),
(606, 204, 48, 'target', NULL),
(607, 204, NULL, 'target_text', 'Naxos'),
(608, 204, 8, 'subject', NULL),
(609, 205, 39, 'target', NULL),
(610, 205, NULL, 'target_text', 'Laguna'),
(611, 205, 8, 'subject', NULL),
(612, 206, 47, 'target', NULL),
(613, 206, NULL, 'target_text', 'Naxos'),
(614, 206, 8, 'subject', NULL),
(615, 207, 44, 'target', NULL),
(616, 207, NULL, 'target_text', 'Evoia'),
(617, 207, 8, 'subject', NULL),
(618, 208, 13, 'target', NULL),
(619, 208, NULL, 'target_text', 'Aegean Sea'),
(620, 208, 8, 'subject', NULL),
(621, 209, 47, 'target', NULL),
(622, 209, NULL, 'target_text', 'Naxos'),
(623, 209, 8, 'subject', NULL),
(624, 210, 47, 'target', NULL),
(625, 210, NULL, 'target_text', 'Naxos'),
(626, 210, 8, 'subject', NULL),
(627, 211, 47, 'target', NULL),
(628, 211, NULL, 'target_text', 'Naxos'),
(629, 211, 8, 'subject', NULL),
(630, 212, 47, 'target', NULL),
(631, 212, NULL, 'target_text', 'Naxos'),
(632, 212, 8, 'subject', NULL),
(633, 213, 47, 'target', NULL),
(634, 213, NULL, 'target_text', 'Naxos'),
(635, 213, 8, 'subject', NULL),
(636, 214, 27, 'target', NULL),
(637, 214, NULL, 'target_text', 'Marmari'),
(638, 214, 8, 'subject', NULL),
(639, 215, 49, 'target', NULL),
(640, 215, NULL, 'target_text', 'Antiparos'),
(641, 215, 8, 'subject', NULL),
(642, 216, 50, 'target', NULL),
(643, 216, NULL, 'target_text', 'Windsurf'),
(644, 216, 8, 'subject', NULL),
(645, 217, 17, 'target', NULL),
(646, 217, NULL, 'target_text', 'Kitesurf'),
(647, 217, 8, 'subject', NULL),
(648, 218, 18, 'target', NULL),
(649, 218, NULL, 'target_text', 'Wakeboard'),
(650, 218, 8, 'subject', NULL),
(651, 219, 20, 'target', NULL),
(652, 219, NULL, 'target_text', 'Waterski'),
(653, 219, 8, 'subject', NULL),
(654, 220, 49, 'target', NULL),
(655, 220, NULL, 'target_text', 'Antiparos'),
(656, 220, 8, 'subject', NULL),
(657, 221, 51, 'target', NULL),
(658, 221, NULL, 'target_text', 'Antiparos'),
(659, 221, 8, 'subject', NULL),
(660, 222, 41, 'target', NULL),
(661, 222, NULL, 'target_text', 'Aegean Sea'),
(662, 222, 8, 'subject', NULL),
(663, 223, 52, 'target', NULL),
(664, 223, NULL, 'target_text', 'Glyfa'),
(665, 223, 8, 'subject', NULL),
(666, 224, 52, 'target', NULL),
(667, 224, NULL, 'target_text', 'Glyfa'),
(668, 224, 8, 'subject', NULL),
(669, 225, 52, 'target', NULL),
(670, 225, NULL, 'target_text', 'Glyfa'),
(671, 225, 8, 'subject', NULL),
(672, 226, 49, 'target', NULL),
(673, 226, NULL, 'target_text', 'Antiparos'),
(674, 226, 8, 'subject', NULL),
(675, 227, 29, 'target', NULL),
(676, 227, NULL, 'target_text', 'Loutsa'),
(677, 227, 8, 'subject', NULL),
(678, 228, NULL, 'target_text', 'Antiparos'),
(679, 228, 8, 'subject', NULL),
(680, 229, 45, 'target', NULL),
(681, 229, NULL, 'target_text', 'Evoia'),
(682, 229, 8, 'subject', NULL),
(683, 230, 45, 'target', NULL),
(684, 230, NULL, 'target_text', 'Evoia'),
(685, 230, 8, 'subject', NULL),
(686, 231, 53, 'target', NULL),
(687, 231, NULL, 'target_text', 'Low Budjet'),
(688, 231, 8, 'subject', NULL),
(689, 232, 54, 'target', NULL),
(690, 232, NULL, 'target_text', 'medium budget'),
(691, 232, 8, 'subject', NULL),
(692, 233, NULL, 'target_text', 'Attica'),
(693, 233, 8, 'subject', NULL),
(694, 234, 45, 'target', NULL),
(695, 234, NULL, 'target_text', 'Aegean Sea'),
(696, 234, 8, 'subject', NULL),
(697, 235, 45, 'target', NULL),
(698, 235, NULL, 'target_text', 'Central Greece'),
(699, 235, 8, 'subject', NULL),
(700, 236, NULL, 'target_text', 'central greece'),
(701, 236, 8, 'subject', NULL),
(702, 237, 55, 'target', NULL),
(703, 237, NULL, 'target_text', 'Central Greece'),
(704, 237, 8, 'subject', NULL),
(705, 238, 45, 'target', NULL),
(706, 238, NULL, 'target_text', 'Central Greece'),
(707, 238, 8, 'subject', NULL),
(708, 239, 48, 'target', NULL),
(709, 239, NULL, 'target_text', 'Aegean'),
(710, 239, 8, 'subject', NULL),
(711, 240, 56, 'target', NULL),
(712, 240, NULL, 'target_text', 'Loutsa'),
(713, 240, 8, 'subject', NULL),
(714, 241, 12, 'target', NULL),
(715, 241, NULL, 'target_text', 'Attica'),
(716, 241, 8, 'subject', NULL),
(717, 242, 56, 'target', NULL),
(718, 242, NULL, 'target_text', 'Loutsa'),
(719, 242, 8, 'subject', NULL),
(720, 243, 56, 'target', NULL),
(721, 243, NULL, 'target_text', 'Loutsa'),
(722, 243, 8, 'subject', NULL),
(723, 244, 57, 'target', NULL),
(724, 244, NULL, 'target_text', 'Mukonos'),
(725, 244, 8, 'subject', NULL),
(726, 245, 58, 'target', NULL),
(727, 245, NULL, 'target_text', 'mukonos'),
(728, 245, 8, 'subject', NULL),
(729, 246, 58, 'target', NULL),
(730, 246, NULL, 'target_text', 'Ftelia'),
(731, 246, 8, 'subject', NULL),
(732, 247, 58, 'target', NULL),
(733, 247, NULL, 'target_text', 'mukonos'),
(734, 247, 8, 'subject', NULL),
(735, 248, 59, 'target', NULL),
(736, 248, NULL, 'target_text', 'Ftelia'),
(737, 248, 8, 'subject', NULL),
(738, 249, 58, 'target', NULL),
(739, 249, NULL, 'target_text', 'mukonos'),
(740, 249, 8, 'subject', NULL),
(741, 250, 57, 'target', NULL),
(742, 250, NULL, 'target_text', 'Mukonos'),
(743, 250, 8, 'subject', NULL),
(744, 251, 57, 'target', NULL),
(745, 251, NULL, 'target_text', 'Mukonos'),
(746, 251, 8, 'subject', NULL),
(747, 252, 57, 'target', NULL),
(748, 252, NULL, 'target_text', 'Mukonos'),
(749, 252, 8, 'subject', NULL),
(750, 253, 59, 'target', NULL),
(751, 253, NULL, 'target_text', 'Ftelia'),
(752, 253, 8, 'subject', NULL),
(753, 254, 59, 'target', NULL),
(754, 254, NULL, 'target_text', 'Ftelia'),
(755, 254, 8, 'subject', NULL),
(756, 255, 57, 'target', NULL),
(757, 255, NULL, 'target_text', 'Mukonos'),
(758, 255, 8, 'subject', NULL),
(759, 256, 48, 'target', NULL),
(760, 256, NULL, 'target_text', 'Aegean'),
(761, 256, 8, 'subject', NULL),
(762, 257, 48, 'target', NULL),
(763, 257, NULL, 'target_text', 'Aegean'),
(764, 257, 8, 'subject', NULL),
(765, 258, 48, 'target', NULL),
(766, 258, NULL, 'target_text', 'Aegean'),
(767, 258, 8, 'subject', NULL),
(768, 259, 45, 'target', NULL),
(769, 259, NULL, 'target_text', 'Central Greece'),
(770, 259, 8, 'subject', NULL),
(771, 260, 45, 'target', NULL),
(772, 260, NULL, 'target_text', 'Central Greece'),
(773, 260, 8, 'subject', NULL),
(774, 261, 48, 'target', NULL),
(775, 261, NULL, 'target_text', 'Aegean'),
(776, 261, 8, 'subject', NULL),
(777, 262, 58, 'target', NULL),
(778, 262, NULL, 'target_text', 'mukonos'),
(779, 262, 8, 'subject', NULL),
(780, 263, 60, 'target', NULL),
(781, 263, NULL, 'target_text', 'lagkouvardo'),
(782, 263, 8, 'subject', NULL),
(783, 264, NULL, 'target_text', 'lagkouvardo'),
(784, 264, 8, 'subject', NULL),
(785, 265, 61, 'target', NULL),
(786, 265, NULL, 'target_text', 'Mykonos'),
(787, 265, 8, 'subject', NULL),
(788, 266, 38, 'target', NULL),
(789, 266, NULL, 'target_text', 'Naxos'),
(790, 266, 8, 'subject', NULL),
(791, 267, 13, 'target', NULL),
(792, 267, NULL, 'target_text', 'Aegean Sea'),
(793, 267, 8, 'subject', NULL),
(794, 268, 13, 'target', NULL),
(795, 268, NULL, 'target_text', 'Aegean Sea'),
(796, 268, 8, 'subject', NULL),
(797, 269, 48, 'target', NULL),
(798, 269, NULL, 'target_text', 'naxos'),
(799, 269, 8, 'subject', NULL),
(800, 270, NULL, 'target_text', 'naxos'),
(801, 270, 8, 'subject', NULL),
(802, 271, 56, 'target', NULL),
(803, 271, NULL, 'target_text', 'Loutsa'),
(804, 271, 8, 'subject', NULL),
(805, 272, 12, 'target', NULL),
(806, 272, NULL, 'target_text', 'Attica'),
(807, 272, 8, 'subject', NULL),
(808, 273, 55, 'target', NULL),
(809, 273, NULL, 'target_text', 'e'),
(810, 273, 8, 'subject', NULL),
(811, 274, 55, 'target', NULL),
(812, 274, NULL, 'target_text', 'Central Greece'),
(813, 274, 8, 'subject', NULL),
(814, 275, 44, 'target', NULL),
(815, 275, NULL, 'target_text', 'Evoia'),
(816, 275, 8, 'subject', NULL),
(817, 276, 44, 'target', NULL),
(818, 276, NULL, 'target_text', 'Evoia'),
(819, 276, 8, 'subject', NULL),
(820, 277, 61, 'target', NULL),
(821, 277, NULL, 'target_text', 'Mykonos'),
(822, 277, 8, 'subject', NULL),
(823, 278, 62, 'target', NULL),
(824, 278, NULL, 'target_text', 'attica'),
(825, 278, 8, 'subject', NULL),
(826, 279, NULL, 'target_text', 'North Greece'),
(827, 279, 8, 'subject', NULL),
(828, 280, NULL, 'target_text', 'Crete'),
(829, 280, 8, 'subject', NULL),
(830, 281, NULL, 'target_text', 'Ionian Sea'),
(831, 281, 8, 'subject', NULL),
(832, 282, NULL, 'target_text', 'Central Greece'),
(833, 282, 8, 'subject', NULL),
(834, 283, NULL, 'target_text', 'Aegean Sea'),
(835, 283, 8, 'subject', NULL),
(836, 284, 58, 'target', NULL),
(837, 284, NULL, 'target_text', 'mukonos'),
(838, 284, 8, 'subject', NULL),
(839, 285, 58, 'target', NULL),
(840, 285, NULL, 'target_text', 'mukonos'),
(841, 285, 8, 'subject', NULL),
(842, 286, 63, 'target', NULL),
(843, 286, NULL, 'target_text', 'Loutsa'),
(844, 286, 8, 'subject', NULL),
(845, 287, 64, 'target', NULL),
(846, 287, NULL, 'target_text', 'central greece'),
(847, 287, 8, 'subject', NULL),
(848, 288, 65, 'target', NULL),
(849, 288, NULL, 'target_text', 'loutsa'),
(850, 288, 8, 'subject', NULL),
(851, 289, 58, 'target', NULL),
(852, 289, NULL, 'target_text', 'central greece'),
(853, 289, 8, 'subject', NULL),
(854, 290, 65, 'target', NULL),
(855, 290, NULL, 'target_text', 'loutsa'),
(856, 290, 8, 'subject', NULL),
(857, 291, 65, 'target', NULL),
(858, 291, NULL, 'target_text', 'loutsa'),
(859, 291, 8, 'subject', NULL),
(860, 292, 65, 'target', NULL),
(861, 292, NULL, 'target_text', 'loutsa'),
(862, 292, 8, 'subject', NULL),
(863, 293, 65, 'target', NULL),
(864, 293, NULL, 'target_text', 'loutsa'),
(865, 293, 8, 'subject', NULL),
(866, 294, 64, 'target', NULL),
(867, 294, NULL, 'target_text', 'central greece'),
(868, 294, 8, 'subject', NULL),
(869, 295, 65, 'target', NULL),
(870, 295, NULL, 'target_text', 'attica'),
(871, 295, 8, 'subject', NULL),
(872, 296, 58, 'target', NULL),
(873, 296, NULL, 'target_text', 'central greece'),
(874, 296, 8, 'subject', NULL),
(875, 297, 56, 'target', NULL),
(876, 297, NULL, 'target_text', 'Loutsa'),
(877, 297, 8, 'subject', NULL),
(878, 298, 56, 'target', NULL),
(879, 298, NULL, 'target_text', 'Loutsa'),
(880, 298, 8, 'subject', NULL),
(881, 299, 65, 'target', NULL),
(882, 299, NULL, 'target_text', 'attica'),
(883, 299, 8, 'subject', NULL),
(884, 300, 58, 'target', NULL),
(885, 300, NULL, 'target_text', 'central greece'),
(886, 300, 8, 'subject', NULL),
(887, 301, 64, 'target', NULL),
(888, 301, NULL, 'target_text', 'central greece'),
(889, 301, 8, 'subject', NULL),
(890, 302, 64, 'target', NULL),
(891, 302, NULL, 'target_text', 'central greece'),
(892, 302, 8, 'subject', NULL),
(893, 303, 56, 'target', NULL),
(894, 303, NULL, 'target_text', 'Loutsa'),
(895, 303, 8, 'subject', NULL),
(896, 304, 56, 'target', NULL),
(897, 304, NULL, 'target_text', 'Loutsa'),
(898, 304, 8, 'subject', NULL),
(899, 305, 56, 'target', NULL),
(900, 305, NULL, 'target_text', 'Loutsa'),
(901, 305, 8, 'subject', NULL),
(902, 306, 56, 'target', NULL),
(903, 306, NULL, 'target_text', 'Loutsa'),
(904, 306, 8, 'subject', NULL),
(905, 307, 56, 'target', NULL),
(906, 307, NULL, 'target_text', 'Loutsa'),
(907, 307, 8, 'subject', NULL),
(908, 308, 56, 'target', NULL),
(909, 308, NULL, 'target_text', 'Loutsa'),
(910, 308, 8, 'subject', NULL),
(911, 309, 63, 'target', NULL),
(912, 309, NULL, 'target_text', 'Loutsa'),
(913, 309, 8, 'subject', NULL),
(914, 310, 63, 'target', NULL),
(915, 310, NULL, 'target_text', 'Loutsa'),
(916, 310, 8, 'subject', NULL),
(917, 311, 56, 'target', NULL),
(918, 311, NULL, 'target_text', 'Loutsa'),
(919, 311, 8, 'subject', NULL),
(920, 312, 64, 'target', NULL),
(921, 312, NULL, 'target_text', 'central greece'),
(922, 312, 8, 'subject', NULL),
(923, 313, 64, 'target', NULL),
(924, 313, NULL, 'target_text', 'central greece'),
(925, 313, 8, 'subject', NULL),
(926, 314, 17, 'target', NULL),
(927, 314, NULL, 'target_text', 'Kitesurf'),
(928, 314, 8, 'subject', NULL),
(929, 315, 18, 'target', NULL),
(930, 315, NULL, 'target_text', 'Wakeboard'),
(931, 315, 8, 'subject', NULL),
(932, 316, 20, 'target', NULL),
(933, 316, NULL, 'target_text', 'Waterski'),
(934, 316, 8, 'subject', NULL),
(935, 317, 50, 'target', NULL),
(936, 317, NULL, 'target_text', 'Windsurf'),
(937, 317, 8, 'subject', NULL),
(938, 318, 50, 'target', NULL),
(939, 318, NULL, 'target_text', 'Windsurf'),
(940, 318, 8, 'subject', NULL),
(941, 319, 64, 'target', NULL),
(942, 319, NULL, 'target_text', 'central greece'),
(943, 319, 8, 'subject', NULL),
(944, 320, 65, 'target', NULL),
(945, 320, NULL, 'target_text', 'attica'),
(946, 320, 8, 'subject', NULL),
(947, 321, 64, 'target', NULL),
(948, 321, NULL, 'target_text', 'central greece'),
(949, 321, 8, 'subject', NULL),
(950, 322, 64, 'target', NULL),
(951, 322, NULL, 'target_text', 'central greece'),
(952, 322, 8, 'subject', NULL),
(953, 323, 66, 'target', NULL),
(954, 323, NULL, 'target_text', 'North Greece'),
(955, 323, 8, 'subject', NULL),
(956, 324, 67, 'target', NULL),
(957, 324, NULL, 'target_text', 'North Greece'),
(958, 324, 8, 'subject', NULL),
(959, 325, 66, 'target', NULL),
(960, 325, NULL, 'target_text', 'North Greece'),
(961, 325, 8, 'subject', NULL),
(962, 326, 66, 'target', NULL),
(963, 326, NULL, 'target_text', 'North Greece'),
(964, 326, 8, 'subject', NULL),
(965, 327, 65, 'target', NULL),
(966, 327, NULL, 'target_text', 'attica'),
(967, 327, 8, 'subject', NULL),
(968, 328, 65, 'target', NULL),
(969, 328, NULL, 'target_text', 'attica'),
(970, 328, 8, 'subject', NULL),
(971, 329, 65, 'target', NULL),
(972, 329, NULL, 'target_text', 'attica'),
(973, 329, 8, 'subject', NULL),
(974, 330, 65, 'target', NULL),
(975, 330, NULL, 'target_text', 'attica'),
(976, 330, 8, 'subject', NULL),
(977, 331, 65, 'target', NULL),
(978, 331, NULL, 'target_text', 'attica'),
(979, 331, 8, 'subject', NULL),
(980, 332, 68, 'target', NULL),
(981, 332, NULL, 'target_text', 'Attica'),
(982, 332, 8, 'subject', NULL),
(983, 333, 68, 'target', NULL),
(984, 333, NULL, 'target_text', 'Attica'),
(985, 333, 8, 'subject', NULL),
(986, 334, 56, 'target', NULL),
(987, 334, NULL, 'target_text', 'Loutsa'),
(988, 334, 8, 'subject', NULL),
(989, 335, 55, 'target', NULL),
(990, 335, NULL, 'target_text', 'North Greece'),
(991, 335, 8, 'subject', NULL),
(992, 336, 45, 'target', NULL),
(993, 336, NULL, 'target_text', 'Central Greece'),
(994, 336, 8, 'subject', NULL),
(995, 337, 68, 'target', NULL),
(996, 337, NULL, 'target_text', 'Attica'),
(997, 337, 8, 'subject', NULL),
(998, 338, 56, 'target', NULL),
(999, 338, NULL, 'target_text', 'Loutsa'),
(1000, 338, 8, 'subject', NULL),
(1001, 339, 65, 'target', NULL),
(1002, 339, NULL, 'target_text', 'attica'),
(1003, 339, 8, 'subject', NULL),
(1004, 340, 56, 'target', NULL),
(1005, 340, NULL, 'target_text', 'Loutsa'),
(1006, 340, 8, 'subject', NULL),
(1007, 341, 68, 'target', NULL),
(1008, 341, NULL, 'target_text', 'Attica'),
(1009, 341, 8, 'subject', NULL),
(1010, 342, 45, 'target', NULL),
(1011, 342, NULL, 'target_text', 'Central Greece'),
(1012, 342, 8, 'subject', NULL),
(1013, 343, 69, 'target', NULL),
(1014, 343, NULL, 'target_text', 'Central Greece'),
(1015, 343, 8, 'subject', NULL),
(1016, 344, 45, 'target', NULL),
(1017, 344, NULL, 'target_text', 'Central Greece'),
(1018, 344, 8, 'subject', NULL),
(1019, 345, NULL, 'target_text', 'Central Greece'),
(1020, 345, 8, 'subject', NULL),
(1021, 346, 70, 'target', NULL),
(1022, 346, NULL, 'target_text', 'Evoia'),
(1023, 346, 8, 'subject', NULL),
(1024, 347, 71, 'target', NULL),
(1025, 347, NULL, 'target_text', 'Evoia'),
(1026, 347, 8, 'subject', NULL),
(1027, 348, 68, 'target', NULL),
(1028, 348, NULL, 'target_text', 'Attica'),
(1029, 348, 8, 'subject', NULL),
(1030, 349, 71, 'target', NULL),
(1031, 349, NULL, 'target_text', 'Evoia'),
(1032, 349, 8, 'subject', NULL),
(1033, 350, 68, 'target', NULL),
(1034, 350, NULL, 'target_text', 'Attica'),
(1035, 350, 8, 'subject', NULL),
(1036, 351, 56, 'target', NULL),
(1037, 351, NULL, 'target_text', 'Loutsa'),
(1038, 351, 8, 'subject', NULL),
(1039, 352, 68, 'target', NULL),
(1040, 352, NULL, 'target_text', 'Attica'),
(1041, 352, 8, 'subject', NULL),
(1042, 353, 71, 'target', NULL),
(1043, 353, NULL, 'target_text', 'Evoia'),
(1044, 353, 8, 'subject', NULL),
(1045, 354, 45, 'target', NULL),
(1046, 354, NULL, 'target_text', 'Central Greece'),
(1047, 354, 8, 'subject', NULL),
(1048, 355, 45, 'target', NULL),
(1049, 355, NULL, 'target_text', 'Central Greece'),
(1050, 355, 8, 'subject', NULL),
(1051, 356, 72, 'target', NULL),
(1052, 356, NULL, 'target_text', 'Ionian Sea'),
(1053, 356, 8, 'subject', NULL),
(1054, 357, 73, 'target', NULL),
(1055, 357, NULL, 'target_text', 'Crete'),
(1056, 357, 8, 'subject', NULL),
(1057, 358, 74, 'target', NULL),
(1058, 358, NULL, 'target_text', 'Peloponnese'),
(1059, 358, 8, 'subject', NULL),
(1060, 359, 75, 'target', NULL),
(1061, 359, NULL, 'target_text', 'windsurf'),
(1062, 359, 8, 'subject', NULL),
(1063, 360, NULL, 'target_text', 'Wind Surf'),
(1064, 360, 8, 'subject', NULL),
(1065, 361, 76, 'target', NULL),
(1066, 361, NULL, 'target_text', 'Wakeboard'),
(1067, 361, 8, 'subject', NULL),
(1068, 362, 77, 'target', NULL),
(1069, 362, NULL, 'target_text', 'Kitesurf'),
(1070, 362, 8, 'subject', NULL),
(1071, 363, 78, 'target', NULL),
(1072, 363, NULL, 'target_text', 'Waterski'),
(1073, 363, 8, 'subject', NULL),
(1074, 364, 78, 'target', NULL),
(1075, 364, NULL, 'target_text', 'Waterski'),
(1076, 364, 8, 'subject', NULL),
(1077, 365, 78, 'target', NULL),
(1078, 365, NULL, 'target_text', 'Waterski'),
(1079, 365, 8, 'subject', NULL),
(1080, 366, 79, 'target', NULL),
(1081, 366, NULL, 'target_text', 'Spring'),
(1082, 366, 8, 'subject', NULL),
(1083, 367, 80, 'target', NULL),
(1084, 367, NULL, 'target_text', 'Summer'),
(1085, 367, 8, 'subject', NULL),
(1086, 368, 81, 'target', NULL),
(1087, 368, NULL, 'target_text', 'Autumn'),
(1088, 368, 8, 'subject', NULL),
(1089, 369, 82, 'target', NULL),
(1090, 369, NULL, 'target_text', 'Beginner'),
(1091, 369, 8, 'subject', NULL),
(1092, 370, 83, 'target', NULL),
(1093, 370, NULL, 'target_text', 'Intermediate'),
(1094, 370, 8, 'subject', NULL),
(1095, 371, 84, 'target', NULL),
(1096, 371, NULL, 'target_text', 'Advance'),
(1097, 371, 8, 'subject', NULL),
(1098, 372, 85, 'target', NULL),
(1099, 372, NULL, 'target_text', 'Wave'),
(1100, 372, 8, 'subject', NULL),
(1101, 373, 86, 'target', NULL),
(1102, 373, NULL, 'target_text', 'Freestyle'),
(1103, 373, 8, 'subject', NULL),
(1104, 374, 87, 'target', NULL),
(1105, 374, NULL, 'target_text', 'Freeride'),
(1106, 374, 8, 'subject', NULL),
(1107, 375, 88, 'target', NULL),
(1108, 375, NULL, 'target_text', 'Formula'),
(1109, 375, 8, 'subject', NULL),
(1110, 376, 89, 'target', NULL),
(1111, 376, NULL, 'target_text', 'Wave'),
(1112, 376, 8, 'subject', NULL),
(1113, 377, 90, 'target', NULL),
(1114, 377, NULL, 'target_text', 'Choppy'),
(1115, 377, 8, 'subject', NULL),
(1116, 378, 91, 'target', NULL),
(1117, 378, NULL, 'target_text', 'Flat'),
(1118, 378, 8, 'subject', NULL),
(1119, 379, 92, 'target', NULL),
(1120, 379, NULL, 'target_text', 'Light'),
(1121, 379, 8, 'subject', NULL),
(1122, 380, 93, 'target', NULL),
(1123, 380, NULL, 'target_text', 'Medium'),
(1124, 380, 8, 'subject', NULL),
(1125, 381, 94, 'target', NULL),
(1126, 381, NULL, 'target_text', 'Strong'),
(1127, 381, 8, 'subject', NULL),
(1128, 382, 95, 'target', NULL),
(1129, 382, NULL, 'target_text', 'Short'),
(1130, 382, 8, 'subject', NULL),
(1131, 383, 96, 'target', NULL),
(1132, 383, NULL, 'target_text', 'Medium'),
(1133, 383, 8, 'subject', NULL),
(1134, 384, 97, 'target', NULL),
(1135, 384, NULL, 'target_text', 'High'),
(1136, 384, 8, 'subject', NULL),
(1137, 385, 98, 'target', NULL),
(1138, 385, NULL, 'target_text', 'Surfclub'),
(1139, 385, 8, 'subject', NULL),
(1140, 386, 99, 'target', NULL),
(1141, 386, NULL, 'target_text', 'Lessons'),
(1142, 386, 8, 'subject', NULL),
(1143, 387, 100, 'target', NULL),
(1144, 387, NULL, 'target_text', 'High'),
(1145, 387, 8, 'subject', NULL),
(1146, 388, 53, 'target', NULL),
(1147, 388, NULL, 'target_text', 'Low'),
(1148, 388, 8, 'subject', NULL),
(1149, 389, 54, 'target', NULL),
(1150, 389, NULL, 'target_text', 'Medium'),
(1151, 389, 8, 'subject', NULL),
(1152, 390, 101, 'target', NULL),
(1153, 390, NULL, 'target_text', 'Rentla'),
(1154, 390, 8, 'subject', NULL),
(1155, 391, 101, 'target', NULL),
(1156, 391, NULL, 'target_text', 'Rental'),
(1157, 391, 8, 'subject', NULL),
(1158, 392, 102, 'target', NULL),
(1159, 392, NULL, 'target_text', 'Storage'),
(1160, 392, 8, 'subject', NULL),
(1161, 393, 103, 'target', NULL),
(1162, 393, NULL, 'target_text', 'Repair'),
(1163, 393, 8, 'subject', NULL),
(1164, 394, 104, 'target', NULL),
(1165, 394, NULL, 'target_text', 'Gearshop'),
(1166, 394, 8, 'subject', NULL),
(1167, 395, 105, 'target', NULL),
(1168, 395, NULL, 'target_text', 'Rescue'),
(1169, 395, 8, 'subject', NULL),
(1170, 396, 106, 'target', NULL),
(1171, 396, NULL, 'target_text', 'Snkacks/drinks'),
(1172, 396, 8, 'subject', NULL),
(1173, 397, 107, 'target', NULL),
(1174, 397, NULL, 'target_text', 'Parking'),
(1175, 397, 8, 'subject', NULL),
(1176, 398, 108, 'target', NULL),
(1177, 398, NULL, 'target_text', 'Toilets'),
(1178, 398, 8, 'subject', NULL),
(1179, 399, 109, 'target', NULL),
(1180, 399, NULL, 'target_text', 'Showers'),
(1181, 399, 8, 'subject', NULL),
(1182, 400, 110, 'target', NULL),
(1183, 400, NULL, 'target_text', 'Accomodation'),
(1184, 400, 8, 'subject', NULL),
(1185, 401, 111, 'target', NULL),
(1186, 401, NULL, 'target_text', 'Family'),
(1187, 401, 8, 'subject', NULL),
(1188, 402, 112, 'target', NULL),
(1189, 402, NULL, 'target_text', 'NIghtlife'),
(1190, 402, 8, 'subject', NULL),
(1191, 403, 45, 'target', NULL),
(1192, 403, NULL, 'target_text', 'Evoia'),
(1193, 403, 8, 'subject', NULL),
(1194, 404, 55, 'target', NULL),
(1195, 404, NULL, 'target_text', 'Attica'),
(1196, 404, 8, 'subject', NULL),
(1197, 405, 113, 'target', NULL),
(1198, 405, NULL, 'target_text', 'Paros'),
(1199, 405, 8, 'subject', NULL),
(1200, 406, 114, 'target', NULL),
(1201, 406, NULL, 'target_text', 'Paros'),
(1202, 406, 8, 'subject', NULL),
(1203, 407, 115, 'target', NULL),
(1204, 407, NULL, 'target_text', 'Naxos'),
(1205, 407, 8, 'subject', NULL),
(1206, 408, 116, 'target', NULL),
(1207, 408, NULL, 'target_text', 'Aegean Sea'),
(1208, 408, 8, 'subject', NULL),
(1209, 409, 41, 'target', NULL),
(1210, 409, NULL, 'target_text', 'Aegean Sea'),
(1211, 409, 8, 'subject', NULL),
(1212, 410, 117, 'target', NULL),
(1213, 410, NULL, 'target_text', 'Aegean Sea'),
(1214, 410, 8, 'subject', NULL),
(1215, 411, 117, 'target', NULL),
(1216, 411, NULL, 'target_text', 'Aegean Sea'),
(1217, 411, 8, 'subject', NULL),
(1218, 412, 117, 'target', NULL),
(1219, 412, NULL, 'target_text', 'Aegean Sea'),
(1220, 412, 8, 'subject', NULL),
(1221, 413, 67, 'target', NULL),
(1222, 413, NULL, 'target_text', 'North Greece'),
(1223, 413, 8, 'subject', NULL),
(1224, 414, 113, 'target', NULL),
(1225, 414, NULL, 'target_text', 'Paros'),
(1226, 414, 8, 'subject', NULL),
(1227, 415, 115, 'target', NULL),
(1228, 415, NULL, 'target_text', 'Naxos'),
(1229, 415, 8, 'subject', NULL),
(1230, 416, 113, 'target', NULL),
(1231, 416, NULL, 'target_text', 'Paros'),
(1232, 416, 8, 'subject', NULL),
(1233, 417, 113, 'target', NULL),
(1234, 417, NULL, 'target_text', 'Paros'),
(1235, 417, 8, 'subject', NULL),
(1236, 418, 113, 'target', NULL),
(1237, 418, NULL, 'target_text', 'Paros'),
(1238, 418, 8, 'subject', NULL),
(1239, 419, 65, 'target', NULL),
(1240, 419, NULL, 'target_text', 'attica'),
(1241, 419, 8, 'subject', NULL),
(1242, 420, 65, 'target', NULL),
(1243, 420, NULL, 'target_text', 'attica'),
(1244, 420, 8, 'subject', NULL),
(1245, 421, 113, 'target', NULL),
(1246, 421, NULL, 'target_text', 'Paros'),
(1247, 421, 8, 'subject', NULL),
(1248, 422, 118, 'target', NULL),
(1249, 422, NULL, 'target_text', 'Paros'),
(1250, 422, 8, 'subject', NULL),
(1251, 423, 113, 'target', NULL),
(1252, 423, NULL, 'target_text', 'Paros'),
(1253, 423, 8, 'subject', NULL),
(1254, 424, 116, 'target', NULL),
(1255, 424, NULL, 'target_text', 'Aegean Sea'),
(1256, 424, 8, 'subject', NULL),
(1257, 425, 119, 'target', NULL),
(1258, 425, NULL, 'target_text', 'Myconos'),
(1259, 425, 8, 'subject', NULL),
(1260, 426, 119, 'target', NULL),
(1261, 426, NULL, 'target_text', 'Myconos'),
(1262, 426, 8, 'subject', NULL),
(1263, 427, 120, 'target', NULL),
(1264, 427, NULL, 'target_text', 'Myconos'),
(1265, 427, 8, 'subject', NULL),
(1266, 428, 114, 'target', NULL),
(1267, 428, NULL, 'target_text', 'Paros'),
(1268, 428, 8, 'subject', NULL),
(1269, 429, 55, 'target', NULL),
(1270, 429, NULL, 'target_text', 'Attica'),
(1271, 429, 8, 'subject', NULL),
(1272, 430, 45, 'target', NULL),
(1273, 430, NULL, 'target_text', 'Evoia'),
(1274, 430, 8, 'subject', NULL),
(1275, 431, 73, 'target', NULL),
(1276, 431, NULL, 'target_text', 'Crete'),
(1277, 431, 8, 'subject', NULL),
(1278, 432, 121, 'target', NULL),
(1279, 432, NULL, 'target_text', 'Naxos'),
(1280, 432, 8, 'subject', NULL),
(1281, 433, 122, 'target', NULL),
(1282, 433, NULL, 'target_text', 'Naxos'),
(1283, 433, 8, 'subject', NULL),
(1284, 434, 115, 'target', NULL),
(1285, 434, NULL, 'target_text', 'Naxos'),
(1286, 434, 8, 'subject', NULL),
(1287, 435, 70, 'target', NULL),
(1288, 435, NULL, 'target_text', 'Evoia'),
(1289, 435, 8, 'subject', NULL),
(1290, 436, 119, 'target', NULL),
(1291, 436, NULL, 'target_text', 'Myconos'),
(1292, 436, 8, 'subject', NULL),
(1293, 437, 119, 'target', NULL),
(1294, 437, NULL, 'target_text', 'Myconos'),
(1295, 437, 8, 'subject', NULL),
(1296, 438, 123, 'target', NULL),
(1297, 438, NULL, 'target_text', 'Ftelia'),
(1298, 438, 8, 'subject', NULL),
(1299, 439, 120, 'target', NULL),
(1300, 439, NULL, 'target_text', 'Myconos'),
(1301, 439, 8, 'subject', NULL),
(1302, 440, 124, 'target', NULL),
(1303, 440, NULL, 'target_text', 'myconos'),
(1304, 440, 8, 'subject', NULL),
(1305, 441, 123, 'target', NULL),
(1306, 441, NULL, 'target_text', 'Ftelia'),
(1307, 441, 8, 'subject', NULL),
(1308, 442, 125, 'target', NULL),
(1309, 442, NULL, 'target_text', 'Laguna'),
(1310, 442, 8, 'subject', NULL),
(1311, 443, 125, 'target', NULL),
(1312, 443, NULL, 'target_text', 'Laguna'),
(1313, 443, 8, 'subject', NULL),
(1314, 444, 126, 'target', NULL),
(1315, 444, NULL, 'target_text', 'Peloponnese'),
(1316, 444, 8, 'subject', NULL),
(1317, 445, 127, 'target', NULL),
(1318, 445, NULL, 'target_text', 'North Greece'),
(1319, 445, 8, 'subject', NULL),
(1320, 446, NULL, 'target_text', 'North Greece'),
(1321, 446, 8, 'subject', NULL),
(1322, 447, 128, 'target', NULL),
(1323, 447, NULL, 'target_text', 'Tinos'),
(1324, 447, 8, 'subject', NULL),
(1325, 448, 129, 'target', NULL),
(1326, 448, NULL, 'target_text', 'Tinos'),
(1327, 448, 8, 'subject', NULL),
(1328, 449, 128, 'target', NULL),
(1329, 449, NULL, 'target_text', 'Tinos'),
(1330, 449, 8, 'subject', NULL),
(1331, 450, 130, 'target', NULL),
(1332, 450, NULL, 'target_text', 'Kolimpithres'),
(1333, 450, 8, 'subject', NULL),
(1334, 451, 128, 'target', NULL),
(1335, 451, NULL, 'target_text', 'Tinos'),
(1336, 451, 8, 'subject', NULL),
(1337, 452, 129, 'target', NULL),
(1338, 452, NULL, 'target_text', 'Tinos'),
(1339, 452, 8, 'subject', NULL),
(1340, 453, 131, 'target', NULL),
(1341, 453, NULL, 'target_text', 'Tinos'),
(1342, 453, 8, 'subject', NULL),
(1343, 454, 130, 'target', NULL),
(1344, 454, NULL, 'target_text', 'Kolimpithres'),
(1345, 454, 8, 'subject', NULL),
(1346, 455, NULL, 'target_text', 'Aegean Sea'),
(1347, 455, 8, 'subject', NULL),
(1348, 456, 129, 'target', NULL),
(1349, 456, NULL, 'target_text', 'Tinos'),
(1350, 456, 8, 'subject', NULL),
(1351, 457, 129, 'target', NULL),
(1352, 457, NULL, 'target_text', 'Tinos'),
(1353, 457, 8, 'subject', NULL),
(1354, 458, 119, 'target', NULL),
(1355, 458, NULL, 'target_text', 'Myconos'),
(1356, 458, 8, 'subject', NULL),
(1357, 459, 129, 'target', NULL),
(1358, 459, NULL, 'target_text', 'Tinos'),
(1359, 459, 8, 'subject', NULL),
(1360, 460, 132, 'target', NULL),
(1361, 460, NULL, 'target_text', 'Kolimpithres'),
(1362, 460, 8, 'subject', NULL),
(1363, 461, 132, 'target', NULL),
(1364, 461, NULL, 'target_text', 'Kolimpithres'),
(1365, 461, 8, 'subject', NULL),
(1366, 462, 56, 'target', NULL),
(1367, 462, NULL, 'target_text', 'Loutsa'),
(1368, 462, 8, 'subject', NULL),
(1369, 463, 133, 'target', NULL),
(1370, 463, NULL, 'target_text', 'Pounta'),
(1371, 463, 8, 'subject', NULL),
(1372, 464, 134, 'target', NULL),
(1373, 464, NULL, 'target_text', 'Laguna'),
(1374, 464, 8, 'subject', NULL),
(1375, 465, 135, 'target', NULL),
(1376, 465, NULL, 'target_text', 'Agios Georgios'),
(1377, 465, 8, 'subject', NULL),
(1378, 466, 134, 'target', NULL),
(1379, 466, NULL, 'target_text', 'Laguna'),
(1380, 466, 8, 'subject', NULL),
(1381, 467, 133, 'target', NULL),
(1382, 467, NULL, 'target_text', 'Pounta'),
(1383, 467, 8, 'subject', NULL),
(1384, 468, 133, 'target', NULL),
(1385, 468, NULL, 'target_text', 'Pounta'),
(1386, 468, 8, 'subject', NULL),
(1387, 469, 136, 'target', NULL),
(1388, 469, NULL, 'target_text', 'Antiparos'),
(1389, 469, 8, 'subject', NULL),
(1390, 470, 137, 'target', NULL),
(1391, 470, NULL, 'target_text', 'Antiparos'),
(1392, 470, 8, 'subject', NULL),
(1393, 471, 138, 'target', NULL),
(1394, 471, NULL, 'target_text', 'Antiparos'),
(1395, 471, 8, 'subject', NULL),
(1396, 472, 136, 'target', NULL),
(1397, 472, NULL, 'target_text', 'Antiparos'),
(1398, 472, 8, 'subject', NULL),
(1399, 473, 139, 'target', NULL),
(1400, 473, NULL, 'target_text', 'Aegean Sea'),
(1401, 473, 8, 'subject', NULL),
(1402, 474, 139, 'target', NULL),
(1403, 474, NULL, 'target_text', 'Aegean Sea'),
(1404, 474, 8, 'subject', NULL),
(1405, 475, 128, 'target', NULL),
(1406, 475, NULL, 'target_text', 'Tinos'),
(1407, 475, 8, 'subject', NULL),
(1408, 476, 138, 'target', NULL),
(1409, 476, NULL, 'target_text', 'Antiparos'),
(1410, 476, 8, 'subject', NULL),
(1411, 477, 114, 'target', NULL),
(1412, 477, NULL, 'target_text', 'Paros'),
(1413, 477, 8, 'subject', NULL),
(1414, 478, 121, 'target', NULL),
(1415, 478, NULL, 'target_text', 'Naxos'),
(1416, 478, 8, 'subject', NULL),
(1417, 479, 133, 'target', NULL),
(1418, 479, NULL, 'target_text', 'Pounta'),
(1419, 479, 8, 'subject', NULL),
(1420, 480, 134, 'target', NULL),
(1421, 480, NULL, 'target_text', 'Laguna'),
(1422, 480, 8, 'subject', NULL),
(1423, 481, 116, 'target', NULL),
(1424, 481, NULL, 'target_text', 'Aegean Sea'),
(1425, 481, 8, 'subject', NULL),
(1426, 482, 116, 'target', NULL),
(1427, 482, NULL, 'target_text', 'Aegean Sea'),
(1428, 482, 8, 'subject', NULL),
(1429, 483, 114, 'target', NULL),
(1430, 483, NULL, 'target_text', 'Paros'),
(1431, 483, 8, 'subject', NULL),
(1432, 484, 116, 'target', NULL),
(1433, 484, NULL, 'target_text', 'Aegean Sea'),
(1434, 484, 8, 'subject', NULL),
(1435, 485, 116, 'target', NULL),
(1436, 485, NULL, 'target_text', 'Aegean Sea'),
(1437, 485, 8, 'subject', NULL),
(1438, 486, 135, 'target', NULL),
(1439, 486, NULL, 'target_text', 'Agios Georgios'),
(1440, 486, 8, 'subject', NULL),
(1441, 487, 140, 'target', NULL),
(1442, 487, NULL, 'target_text', 'Glyfa'),
(1443, 487, 8, 'subject', NULL),
(1444, 488, 138, 'target', NULL),
(1445, 488, NULL, 'target_text', 'Antiparos'),
(1446, 488, 8, 'subject', NULL),
(1447, 489, 66, 'target', NULL),
(1448, 489, NULL, 'target_text', 'ewew'),
(1449, 489, 8, 'subject', NULL),
(1450, 490, 64, 'target', NULL),
(1451, 490, NULL, 'target_text', 'North Greece');
INSERT INTO `timeline__action_component` (`id`, `action_id`, `component_id`, `type`, `text`) VALUES
(1452, 490, 8, 'subject', NULL),
(1453, 491, 66, 'target', NULL),
(1454, 491, NULL, 'target_text', 'ewew'),
(1455, 491, 8, 'subject', NULL),
(1456, 492, 64, 'target', NULL),
(1457, 492, NULL, 'target_text', 'North Greece'),
(1458, 492, 8, 'subject', NULL),
(1459, 493, 66, 'target', NULL),
(1460, 493, NULL, 'target_text', 'central greece'),
(1461, 493, 8, 'subject', NULL),
(1462, 494, 66, 'target', NULL),
(1463, 494, NULL, 'target_text', 'central greece'),
(1464, 494, 8, 'subject', NULL),
(1465, 495, 64, 'target', NULL),
(1466, 495, NULL, 'target_text', 'North Greece'),
(1467, 495, 8, 'subject', NULL),
(1468, 496, 64, 'target', NULL),
(1469, 496, NULL, 'target_text', 'North Greece'),
(1470, 496, 8, 'subject', NULL),
(1471, 497, 64, 'target', NULL),
(1472, 497, NULL, 'target_text', 'North Greece'),
(1473, 497, 8, 'subject', NULL),
(1474, 498, 66, 'target', NULL),
(1475, 498, NULL, 'target_text', 'central greece'),
(1476, 498, 8, 'subject', NULL),
(1477, 499, 116, 'target', NULL),
(1478, 499, NULL, 'target_text', 'Ionian Sea'),
(1479, 499, 8, 'subject', NULL),
(1480, 500, 141, 'target', NULL),
(1481, 500, NULL, 'target_text', 'Ionian Sea'),
(1482, 500, 8, 'subject', NULL),
(1483, 501, 142, 'target', NULL),
(1484, 501, NULL, 'target_text', 'Peloponnese'),
(1485, 501, 8, 'subject', NULL),
(1486, 502, 126, 'target', NULL),
(1487, 502, NULL, 'target_text', 'Aegean Sea'),
(1488, 502, 8, 'subject', NULL),
(1489, 503, 143, 'target', NULL),
(1490, 503, NULL, 'target_text', 'Peloponnese'),
(1491, 503, 8, 'subject', NULL),
(1492, 504, 142, 'target', NULL),
(1493, 504, NULL, 'target_text', 'Peloponnese'),
(1494, 504, 8, 'subject', NULL),
(1495, 505, 117, 'target', NULL),
(1496, 505, NULL, 'target_text', 'Aegean Sea'),
(1497, 505, 8, 'subject', NULL),
(1498, 506, 116, 'target', NULL),
(1499, 506, NULL, 'target_text', 'Ionian Sea'),
(1500, 506, 8, 'subject', NULL),
(1501, 507, 116, 'target', NULL),
(1502, 507, NULL, 'target_text', 'Ionian Sea'),
(1503, 507, 8, 'subject', NULL),
(1504, 508, 143, 'target', NULL),
(1505, 508, NULL, 'target_text', 'Peloponnese'),
(1506, 508, 8, 'subject', NULL),
(1507, 509, 144, 'target', NULL),
(1508, 509, NULL, 'target_text', 'Crete'),
(1509, 509, 8, 'subject', NULL),
(1510, 510, 145, 'target', NULL),
(1511, 510, NULL, 'target_text', 'Crete'),
(1512, 510, 8, 'subject', NULL),
(1513, 511, 144, 'target', NULL),
(1514, 511, NULL, 'target_text', 'Crete'),
(1515, 511, 8, 'subject', NULL),
(1516, 512, 144, 'target', NULL),
(1517, 512, NULL, 'target_text', 'Crete'),
(1518, 512, 8, 'subject', NULL),
(1519, 513, 116, 'target', NULL),
(1520, 513, NULL, 'target_text', 'Ionian Sea'),
(1521, 513, 8, 'subject', NULL),
(1522, 514, 126, 'target', NULL),
(1523, 514, NULL, 'target_text', 'Aegean Sea'),
(1524, 514, 8, 'subject', NULL),
(1525, 515, 143, 'target', NULL),
(1526, 515, NULL, 'target_text', 'Peloponnese'),
(1527, 515, 8, 'subject', NULL),
(1528, 516, 144, 'target', NULL),
(1529, 516, NULL, 'target_text', 'Crete'),
(1530, 516, 8, 'subject', NULL),
(1531, 517, 113, 'target', NULL),
(1532, 517, NULL, 'target_text', 'Paros'),
(1533, 517, 8, 'subject', NULL),
(1534, 518, 133, 'target', NULL),
(1535, 518, NULL, 'target_text', 'Pounta'),
(1536, 518, 8, 'subject', NULL),
(1537, 519, 134, 'target', NULL),
(1538, 519, NULL, 'target_text', 'Laguna'),
(1539, 519, 8, 'subject', NULL),
(1540, 520, 135, 'target', NULL),
(1541, 520, NULL, 'target_text', 'Agios Georgios'),
(1542, 520, 8, 'subject', NULL),
(1543, 521, 140, 'target', NULL),
(1544, 521, NULL, 'target_text', 'Glyfa'),
(1545, 521, 8, 'subject', NULL),
(1546, 522, 65, 'target', NULL),
(1547, 522, NULL, 'target_text', 'attica'),
(1548, 522, 8, 'subject', NULL),
(1549, 523, 65, 'target', NULL),
(1550, 523, NULL, 'target_text', 'attica'),
(1551, 523, 8, 'subject', NULL),
(1552, 524, 56, 'target', NULL),
(1553, 524, NULL, 'target_text', 'Loutsa'),
(1554, 524, 8, 'subject', NULL),
(1555, 525, 140, 'target', NULL),
(1556, 525, NULL, 'target_text', 'Glyfa'),
(1557, 525, 8, 'subject', NULL),
(1558, 526, 61, 'target', NULL),
(1559, 526, NULL, 'target_text', 'sample tag 1'),
(1560, 526, 8, 'subject', NULL),
(1561, 527, 16, 'target', NULL),
(1562, 527, NULL, 'target_text', 'Destinations'),
(1563, 527, 8, 'subject', NULL),
(1564, 528, 16, 'target', NULL),
(1565, 528, NULL, 'target_text', 'Destinations'),
(1566, 528, 8, 'subject', NULL),
(1567, 529, 146, 'target', NULL),
(1568, 529, NULL, 'target_text', 'The Greek Spots'),
(1569, 529, 8, 'subject', NULL),
(1570, 530, 147, 'target', NULL),
(1571, 530, NULL, 'target_text', 'Page Filtered Listing'),
(1572, 530, 8, 'subject', NULL),
(1573, 531, 148, 'target', NULL),
(1574, 531, NULL, 'target_text', 'Test Page 3'),
(1575, 531, 8, 'subject', NULL),
(1576, 532, 149, 'target', NULL),
(1577, 532, NULL, 'target_text', 'Test Page 4'),
(1578, 532, 8, 'subject', NULL),
(1579, 533, 23, 'target', NULL),
(1580, 533, NULL, 'target_text', 'Spots'),
(1581, 533, 8, 'subject', NULL),
(1582, 534, 23, 'target', NULL),
(1583, 534, NULL, 'target_text', 'Spots'),
(1584, 534, 8, 'subject', NULL),
(1585, 535, 23, 'target', NULL),
(1586, 535, NULL, 'target_text', 'Spots'),
(1587, 535, 8, 'subject', NULL),
(1588, 536, 146, 'target', NULL),
(1589, 536, NULL, 'target_text', 'The Greek Spots'),
(1590, 536, 8, 'subject', NULL),
(1591, 537, 146, 'target', NULL),
(1592, 537, NULL, 'target_text', 'The Greek Spots'),
(1593, 537, 8, 'subject', NULL),
(1594, 538, 146, 'target', NULL),
(1595, 538, NULL, 'target_text', 'The Greek Spots'),
(1596, 538, 8, 'subject', NULL),
(1597, 539, 146, 'target', NULL),
(1598, 539, NULL, 'target_text', 'The Greek Spots'),
(1599, 539, 8, 'subject', NULL),
(1600, 540, 146, 'target', NULL),
(1601, 540, NULL, 'target_text', 'The Greek Spots'),
(1602, 540, 8, 'subject', NULL),
(1603, 541, 56, 'target', NULL),
(1604, 541, NULL, 'target_text', 'Loutsa'),
(1605, 541, 8, 'subject', NULL),
(1606, 542, 56, 'target', NULL),
(1607, 542, NULL, 'target_text', 'Loutsa'),
(1608, 542, 8, 'subject', NULL),
(1609, 543, 132, 'target', NULL),
(1610, 543, NULL, 'target_text', 'Kolimpithres'),
(1611, 543, 8, 'subject', NULL),
(1612, 544, 134, 'target', NULL),
(1613, 544, NULL, 'target_text', 'Laguna'),
(1614, 544, 8, 'subject', NULL),
(1615, 545, 150, 'target', NULL),
(1616, 545, NULL, 'target_text', 'Sample Category'),
(1617, 545, 8, 'subject', NULL),
(1618, 546, 151, 'target', NULL),
(1619, 546, NULL, 'target_text', 'Leukada'),
(1620, 546, 8, 'subject', NULL),
(1621, 547, 152, 'target', NULL),
(1622, 547, NULL, 'target_text', 'Leukada'),
(1623, 547, 8, 'subject', NULL),
(1624, 548, 153, 'target', NULL),
(1625, 548, NULL, 'target_text', 'Parga'),
(1626, 548, 8, 'subject', NULL),
(1627, 549, 154, 'target', NULL),
(1628, 549, NULL, 'target_text', 'Parga'),
(1629, 549, 8, 'subject', NULL),
(1630, 550, 155, 'target', NULL),
(1631, 550, NULL, 'target_text', 'Parga'),
(1632, 550, 8, 'subject', NULL),
(1633, 551, 156, 'target', NULL),
(1634, 551, NULL, 'target_text', 'Vassiliki'),
(1635, 551, 8, 'subject', NULL),
(1636, 552, NULL, 'target_text', 'Ionian Sea'),
(1637, 552, 8, 'subject', NULL),
(1638, 553, NULL, 'target_text', 'Aegean Sea'),
(1639, 553, 8, 'subject', NULL),
(1640, 554, 134, 'target', NULL),
(1641, 554, NULL, 'target_text', 'Laguna'),
(1642, 554, 8, 'subject', NULL),
(1643, 555, 122, 'target', NULL),
(1644, 555, NULL, 'target_text', 'Naxos'),
(1645, 555, 8, 'subject', NULL),
(1646, 556, 121, 'target', NULL),
(1647, 556, NULL, 'target_text', 'Naxos'),
(1648, 556, 8, 'subject', NULL),
(1649, 557, 157, 'target', NULL),
(1650, 557, NULL, 'target_text', 'evoia'),
(1651, 557, 8, 'subject', NULL),
(1652, 558, NULL, 'target_text', 'evoia'),
(1653, 558, 8, 'subject', NULL),
(1654, 559, 56, 'target', NULL),
(1655, 559, NULL, 'target_text', 'Loutsa'),
(1656, 559, 8, 'subject', NULL),
(1657, 560, 45, 'target', NULL),
(1658, 560, NULL, 'target_text', 'Central Greece'),
(1659, 560, 8, 'subject', NULL),
(1660, 561, 56, 'target', NULL),
(1661, 561, NULL, 'target_text', 'Loutsa'),
(1662, 561, 8, 'subject', NULL),
(1663, 562, 132, 'target', NULL),
(1664, 562, NULL, 'target_text', 'Kolimpithres'),
(1665, 562, 8, 'subject', NULL),
(1666, 563, 133, 'target', NULL),
(1667, 563, NULL, 'target_text', 'Pounta'),
(1668, 563, 8, 'subject', NULL),
(1669, 564, 55, 'target', NULL),
(1670, 564, NULL, 'target_text', 'North Greece'),
(1671, 564, 8, 'subject', NULL),
(1672, 565, 73, 'target', NULL),
(1673, 565, NULL, 'target_text', 'Ionian Sea'),
(1674, 565, 8, 'subject', NULL),
(1675, 566, 74, 'target', NULL),
(1676, 566, NULL, 'target_text', 'Aegean Sea'),
(1677, 566, 8, 'subject', NULL),
(1678, 567, 114, 'target', NULL),
(1679, 567, NULL, 'target_text', 'Peloponnese'),
(1680, 567, 8, 'subject', NULL),
(1681, 568, 121, 'target', NULL),
(1682, 568, NULL, 'target_text', 'Crete'),
(1683, 568, 8, 'subject', NULL),
(1684, 569, 66, 'target', NULL),
(1685, 569, NULL, 'target_text', 'Central Greece'),
(1686, 569, 8, 'subject', NULL),
(1687, 570, 65, 'target', NULL),
(1688, 570, NULL, 'target_text', 'Attica'),
(1689, 570, 8, 'subject', NULL),
(1690, 571, 58, 'target', NULL),
(1691, 571, NULL, 'target_text', 'Central Greece'),
(1692, 571, 8, 'subject', NULL),
(1693, 572, 67, 'target', NULL),
(1694, 572, NULL, 'target_text', 'North Greece'),
(1695, 572, 8, 'subject', NULL),
(1696, 573, 68, 'target', NULL),
(1697, 573, NULL, 'target_text', 'Attica'),
(1698, 573, 8, 'subject', NULL),
(1699, 574, 71, 'target', NULL),
(1700, 574, NULL, 'target_text', 'Evoia'),
(1701, 574, 8, 'subject', NULL),
(1702, 575, 117, 'target', NULL),
(1703, 575, NULL, 'target_text', 'Aegean Sea'),
(1704, 575, 8, 'subject', NULL),
(1705, 576, 118, 'target', NULL),
(1706, 576, NULL, 'target_text', 'Paros'),
(1707, 576, 8, 'subject', NULL),
(1708, 577, 120, 'target', NULL),
(1709, 577, NULL, 'target_text', 'Myconos'),
(1710, 577, 8, 'subject', NULL),
(1711, 578, 122, 'target', NULL),
(1712, 578, NULL, 'target_text', 'Naxos'),
(1713, 578, 8, 'subject', NULL),
(1714, 579, 128, 'target', NULL),
(1715, 579, NULL, 'target_text', 'Tinos'),
(1716, 579, 8, 'subject', NULL),
(1717, 580, 137, 'target', NULL),
(1718, 580, NULL, 'target_text', 'Antiparos'),
(1719, 580, 8, 'subject', NULL),
(1720, 581, 141, 'target', NULL),
(1721, 581, NULL, 'target_text', 'Ionian Sea'),
(1722, 581, 8, 'subject', NULL),
(1723, 582, 142, 'target', NULL),
(1724, 582, NULL, 'target_text', 'Peloponnese'),
(1725, 582, 8, 'subject', NULL),
(1726, 583, 145, 'target', NULL),
(1727, 583, NULL, 'target_text', 'Crete'),
(1728, 583, 8, 'subject', NULL),
(1729, 584, 128, 'target', NULL),
(1730, 584, NULL, 'target_text', 'Tinos'),
(1731, 584, 8, 'subject', NULL),
(1732, 585, NULL, 'target_text', 'Sample Category'),
(1733, 585, 8, 'subject', NULL),
(1734, 586, 75, 'target', NULL),
(1735, 586, NULL, 'target_text', 'Windsurf'),
(1736, 586, 8, 'subject', NULL),
(1737, 587, 135, 'target', NULL),
(1738, 587, NULL, 'target_text', 'Agios Georgios'),
(1739, 587, 8, 'subject', NULL),
(1740, 588, 133, 'target', NULL),
(1741, 588, NULL, 'target_text', 'Pounta'),
(1742, 588, 8, 'subject', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timeline__component`
--

CREATE TABLE IF NOT EXISTS `timeline__component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1B2F01CDD1B862B8` (`hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=158 ;

--
-- Dumping data for table `timeline__component`
--

INSERT INTO `timeline__component` (`id`, `model`, `identifier`, `hash`) VALUES
(8, 'Application\\Sonata\\UserBundle\\Entity\\User', 's:2:"13";', 'Application\\Sonata\\UserBundle\\Entity\\User#s:2:"13";'),
(9, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"32";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"32";'),
(10, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"23";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"23";'),
(11, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"34";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"34";'),
(12, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"35";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"35";'),
(13, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"36";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"36";'),
(14, 'BardisCMS\\MenuBundle\\Entity\\Menu', 's:2:"84";', 'BardisCMS\\MenuBundle\\Entity\\Menu#s:2:"84";'),
(15, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"22";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"22";'),
(16, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"31";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"31";'),
(17, 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag', 's:2:"12";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag#s:2:"12";'),
(18, 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag', 's:2:"13";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag#s:2:"13";'),
(19, 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag', 's:2:"14";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag#s:2:"14";'),
(20, 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag', 's:2:"15";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag#s:2:"15";'),
(21, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"33";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"33";'),
(22, 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag', 's:2:"11";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag#s:2:"11";'),
(23, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"31";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"31";'),
(24, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"12";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"12";'),
(25, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"13";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"13";'),
(26, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"14";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"14";'),
(27, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"34";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"34";'),
(28, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"12";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"12";'),
(29, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"32";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"32";'),
(30, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"37";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"37";'),
(31, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"38";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"38";'),
(32, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"39";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"39";'),
(33, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"40";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"40";'),
(34, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"41";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"41";'),
(35, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"24";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"24";'),
(36, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"25";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"25";'),
(37, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"26";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"26";'),
(38, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"27";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"27";'),
(39, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"33";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"33";'),
(40, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"11";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"11";'),
(41, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"13";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"13";'),
(42, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"42";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"42";'),
(43, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"43";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"43";'),
(44, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"44";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"44";'),
(45, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"14";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"14";'),
(46, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"35";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"35";'),
(47, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"45";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"45";'),
(48, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"15";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"15";'),
(49, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"46";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"46";'),
(50, 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag', 's:2:"16";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationTag#s:2:"16";'),
(51, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"16";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"16";'),
(52, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"36";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"36";'),
(53, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"11";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"11";'),
(54, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"15";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"15";'),
(55, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"17";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"17";'),
(56, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"37";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"37";'),
(57, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"47";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"47";'),
(58, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"28";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"28";'),
(59, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"38";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"38";'),
(60, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"18";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"18";'),
(61, 'BardisCMS\\TagBundle\\Entity\\Tag', 's:2:"25";', 'BardisCMS\\TagBundle\\Entity\\Tag#s:2:"25";'),
(62, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"29";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"29";'),
(63, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"30";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"30";'),
(64, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"48";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"48";'),
(65, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"49";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"49";'),
(66, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"50";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"50";'),
(67, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"31";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"31";'),
(68, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"32";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"32";'),
(69, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"19";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"19";'),
(70, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"51";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"51";'),
(71, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"33";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"33";'),
(72, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"20";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"20";'),
(73, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"21";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"21";'),
(74, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"22";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"22";'),
(75, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"16";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"16";'),
(76, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"17";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"17";'),
(77, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"18";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"18";'),
(78, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"19";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"19";'),
(79, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"20";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"20";'),
(80, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"21";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"21";'),
(81, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"22";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"22";'),
(82, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"23";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"23";'),
(83, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"24";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"24";'),
(84, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"25";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"25";'),
(85, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"26";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"26";'),
(86, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"27";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"27";'),
(87, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"28";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"28";'),
(88, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"29";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"29";'),
(89, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"30";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"30";'),
(90, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"31";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"31";'),
(91, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"32";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"32";'),
(92, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"33";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"33";'),
(93, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"34";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"34";'),
(94, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"35";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"35";'),
(95, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"36";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"36";'),
(96, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"37";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"37";'),
(97, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"38";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"38";'),
(98, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"39";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"39";'),
(99, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"40";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"40";'),
(100, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"41";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"41";'),
(101, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"42";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"42";'),
(102, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"43";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"43";'),
(103, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"44";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"44";'),
(104, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"45";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"45";'),
(105, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"46";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"46";'),
(106, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"47";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"47";'),
(107, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"48";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"48";'),
(108, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"49";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"49";'),
(109, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"50";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"50";'),
(110, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"51";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"51";'),
(111, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"52";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"52";'),
(112, 'BardisCMS\\SpotBundle\\Entity\\SpotFilter', 's:2:"53";', 'BardisCMS\\SpotBundle\\Entity\\SpotFilter#s:2:"53";'),
(113, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"52";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"52";'),
(114, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"23";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"23";'),
(115, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"53";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"53";'),
(116, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"54";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"54";'),
(117, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"34";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"34";'),
(118, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"35";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"35";'),
(119, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"55";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"55";'),
(120, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"36";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"36";'),
(121, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"24";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"24";'),
(122, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"37";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"37";'),
(123, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"39";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"39";'),
(124, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"25";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"25";'),
(125, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"40";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"40";'),
(126, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"56";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"56";'),
(127, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"57";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"57";'),
(128, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"38";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"38";'),
(129, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"58";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"58";'),
(130, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"41";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"41";'),
(131, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"26";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"26";'),
(132, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"42";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"42";'),
(133, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"43";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"43";'),
(134, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"44";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"44";'),
(135, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"45";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"45";'),
(136, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"59";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"59";'),
(137, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"39";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"39";'),
(138, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"27";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"27";'),
(139, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"28";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"28";'),
(140, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"46";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"46";'),
(141, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"40";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"40";'),
(142, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"41";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"41";'),
(143, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"60";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"60";'),
(144, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"61";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"61";'),
(145, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"42";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"42";'),
(146, 'BardisCMS\\PageBundle\\Entity\\Page', 's:2:"91";', 'BardisCMS\\PageBundle\\Entity\\Page#s:2:"91";'),
(147, 'BardisCMS\\PageBundle\\Entity\\Page', 's:2:"94";', 'BardisCMS\\PageBundle\\Entity\\Page#s:2:"94";'),
(148, 'BardisCMS\\PageBundle\\Entity\\Page', 's:2:"98";', 'BardisCMS\\PageBundle\\Entity\\Page#s:2:"98";'),
(149, 'BardisCMS\\PageBundle\\Entity\\Page', 's:2:"99";', 'BardisCMS\\PageBundle\\Entity\\Page#s:2:"99";'),
(150, 'BardisCMS\\CategoryBundle\\Entity\\Category', 's:2:"52";', 'BardisCMS\\CategoryBundle\\Entity\\Category#s:2:"52";'),
(151, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"62";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"62";'),
(152, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"29";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"29";'),
(153, 'BardisCMS\\DestinationBundle\\Entity\\Destination', 's:2:"63";', 'BardisCMS\\DestinationBundle\\Entity\\Destination#s:2:"63";'),
(154, 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory', 's:2:"43";', 'BardisCMS\\DestinationBundle\\Entity\\DestinationCategory#s:2:"43";'),
(155, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"30";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"30";'),
(156, 'BardisCMS\\SpotBundle\\Entity\\Spot', 's:2:"47";', 'BardisCMS\\SpotBundle\\Entity\\Spot#s:2:"47";'),
(157, 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter', 's:2:"31";', 'BardisCMS\\SpotBundle\\Entity\\SpotDestinationFilter#s:2:"31";');

-- --------------------------------------------------------

--
-- Table structure for table `timeline__timeline`
--

CREATE TABLE IF NOT EXISTS `timeline__timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FFBC6AD59D32F035` (`action_id`),
  KEY `IDX_FFBC6AD523EDC87` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1177 ;

--
-- Dumping data for table `timeline__timeline`
--

INSERT INTO `timeline__timeline` (`id`, `action_id`, `subject_id`, `context`, `type`, `created_at`) VALUES
(7, 4, 8, 'GLOBAL', 'timeline', '2014-02-05 19:49:53'),
(8, 4, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 19:49:53'),
(9, 5, 8, 'GLOBAL', 'timeline', '2014-02-05 19:50:34'),
(10, 5, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 19:50:34'),
(11, 6, 8, 'GLOBAL', 'timeline', '2014-02-05 19:50:56'),
(12, 6, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 19:50:56'),
(13, 7, 8, 'GLOBAL', 'timeline', '2014-02-05 20:03:04'),
(14, 7, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:03:04'),
(15, 8, 8, 'GLOBAL', 'timeline', '2014-02-05 20:03:57'),
(16, 8, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:03:57'),
(17, 9, 8, 'GLOBAL', 'timeline', '2014-02-05 20:11:23'),
(18, 9, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:11:23'),
(19, 10, 8, 'GLOBAL', 'timeline', '2014-02-05 20:11:42'),
(20, 10, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:11:42'),
(21, 11, 8, 'GLOBAL', 'timeline', '2014-02-05 20:11:52'),
(22, 11, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:11:52'),
(23, 12, 8, 'GLOBAL', 'timeline', '2014-02-05 20:28:45'),
(24, 12, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:28:45'),
(25, 13, 8, 'GLOBAL', 'timeline', '2014-02-05 20:28:56'),
(26, 13, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:28:56'),
(27, 14, 8, 'GLOBAL', 'timeline', '2014-02-05 20:30:10'),
(28, 14, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:30:10'),
(29, 15, 8, 'GLOBAL', 'timeline', '2014-02-05 20:32:15'),
(30, 15, 8, 'SONATA_ADMIN', 'timeline', '2014-02-05 20:32:15'),
(31, 16, 8, 'GLOBAL', 'timeline', '2014-02-10 20:39:14'),
(32, 16, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 20:39:14'),
(33, 17, 8, 'GLOBAL', 'timeline', '2014-02-10 20:39:35'),
(34, 17, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 20:39:35'),
(35, 18, 8, 'GLOBAL', 'timeline', '2014-02-10 21:47:12'),
(36, 18, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:47:12'),
(37, 19, 8, 'GLOBAL', 'timeline', '2014-02-10 21:47:39'),
(38, 19, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:47:39'),
(39, 20, 8, 'GLOBAL', 'timeline', '2014-02-10 21:48:19'),
(40, 20, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:48:19'),
(41, 21, 8, 'GLOBAL', 'timeline', '2014-02-10 21:48:36'),
(42, 21, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:48:36'),
(43, 22, 8, 'GLOBAL', 'timeline', '2014-02-10 21:48:59'),
(44, 22, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:48:59'),
(45, 23, 8, 'GLOBAL', 'timeline', '2014-02-10 21:49:28'),
(46, 23, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:49:28'),
(47, 24, 8, 'GLOBAL', 'timeline', '2014-02-10 21:53:56'),
(48, 24, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:53:56'),
(49, 25, 8, 'GLOBAL', 'timeline', '2014-02-10 21:57:06'),
(50, 25, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:57:06'),
(51, 26, 8, 'GLOBAL', 'timeline', '2014-02-10 21:57:28'),
(52, 26, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:57:28'),
(53, 27, 8, 'GLOBAL', 'timeline', '2014-02-10 21:57:47'),
(54, 27, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:57:47'),
(55, 28, 8, 'GLOBAL', 'timeline', '2014-02-10 21:58:07'),
(56, 28, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:58:07'),
(57, 29, 8, 'GLOBAL', 'timeline', '2014-02-10 21:59:42'),
(58, 29, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:59:42'),
(59, 30, 8, 'GLOBAL', 'timeline', '2014-02-10 21:59:55'),
(60, 30, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 21:59:55'),
(61, 31, 8, 'GLOBAL', 'timeline', '2014-02-10 22:43:03'),
(62, 31, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 22:43:03'),
(63, 32, 8, 'GLOBAL', 'timeline', '2014-02-10 22:48:03'),
(64, 32, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 22:48:03'),
(65, 33, 8, 'GLOBAL', 'timeline', '2014-02-10 22:48:14'),
(66, 33, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 22:48:14'),
(67, 34, 8, 'GLOBAL', 'timeline', '2014-02-10 22:48:55'),
(68, 34, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 22:48:55'),
(69, 35, 8, 'GLOBAL', 'timeline', '2014-02-10 22:49:05'),
(70, 35, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 22:49:06'),
(71, 36, 8, 'GLOBAL', 'timeline', '2014-02-10 23:20:20'),
(72, 36, 8, 'SONATA_ADMIN', 'timeline', '2014-02-10 23:20:20'),
(73, 37, 8, 'GLOBAL', 'timeline', '2014-02-15 00:23:02'),
(74, 37, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 00:23:02'),
(75, 38, 8, 'GLOBAL', 'timeline', '2014-02-15 00:37:29'),
(76, 38, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 00:37:29'),
(77, 39, 8, 'GLOBAL', 'timeline', '2014-02-15 00:37:39'),
(78, 39, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 00:37:39'),
(79, 40, 8, 'GLOBAL', 'timeline', '2014-02-15 00:37:51'),
(80, 40, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 00:37:51'),
(81, 41, 8, 'GLOBAL', 'timeline', '2014-02-15 00:38:02'),
(82, 41, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 00:38:02'),
(83, 42, 8, 'GLOBAL', 'timeline', '2014-02-15 00:50:38'),
(84, 42, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 00:50:38'),
(85, 43, 8, 'GLOBAL', 'timeline', '2014-02-15 00:52:02'),
(86, 43, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 00:52:02'),
(87, 44, 8, 'GLOBAL', 'timeline', '2014-02-15 01:15:29'),
(88, 44, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 01:15:29'),
(89, 45, 8, 'GLOBAL', 'timeline', '2014-02-15 03:13:49'),
(90, 45, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 03:13:49'),
(91, 46, 8, 'GLOBAL', 'timeline', '2014-02-15 03:53:44'),
(92, 46, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 03:53:44'),
(93, 47, 8, 'GLOBAL', 'timeline', '2014-02-15 22:12:11'),
(94, 47, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 22:12:11'),
(95, 48, 8, 'GLOBAL', 'timeline', '2014-02-15 22:12:35'),
(96, 48, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 22:12:35'),
(97, 49, 8, 'GLOBAL', 'timeline', '2014-02-15 22:13:44'),
(98, 49, 8, 'SONATA_ADMIN', 'timeline', '2014-02-15 22:13:44'),
(99, 50, 8, 'GLOBAL', 'timeline', '2014-02-16 01:22:49'),
(100, 50, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:22:49'),
(101, 51, 8, 'GLOBAL', 'timeline', '2014-02-16 01:23:06'),
(102, 51, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:23:06'),
(103, 52, 8, 'GLOBAL', 'timeline', '2014-02-16 01:23:22'),
(104, 52, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:23:22'),
(105, 53, 8, 'GLOBAL', 'timeline', '2014-02-16 01:23:35'),
(106, 53, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:23:35'),
(107, 54, 8, 'GLOBAL', 'timeline', '2014-02-16 01:26:19'),
(108, 54, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:26:19'),
(109, 55, 8, 'GLOBAL', 'timeline', '2014-02-16 01:27:35'),
(110, 55, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:27:35'),
(111, 56, 8, 'GLOBAL', 'timeline', '2014-02-16 01:27:58'),
(112, 56, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:27:58'),
(113, 57, 8, 'GLOBAL', 'timeline', '2014-02-16 01:28:48'),
(114, 57, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:28:48'),
(115, 58, 8, 'GLOBAL', 'timeline', '2014-02-16 01:31:56'),
(116, 58, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:31:56'),
(117, 59, 8, 'GLOBAL', 'timeline', '2014-02-16 01:32:12'),
(118, 59, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:32:12'),
(119, 60, 8, 'GLOBAL', 'timeline', '2014-02-16 01:32:35'),
(120, 60, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:32:35'),
(121, 61, 8, 'GLOBAL', 'timeline', '2014-02-16 01:33:07'),
(122, 61, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:33:07'),
(123, 62, 8, 'GLOBAL', 'timeline', '2014-02-16 01:33:27'),
(124, 62, 8, 'SONATA_ADMIN', 'timeline', '2014-02-16 01:33:27'),
(125, 63, 8, 'GLOBAL', 'timeline', '2014-03-14 22:48:46'),
(126, 63, 8, 'SONATA_ADMIN', 'timeline', '2014-03-14 22:48:46'),
(127, 64, 8, 'GLOBAL', 'timeline', '2014-03-15 21:41:11'),
(128, 64, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:41:11'),
(129, 65, 8, 'GLOBAL', 'timeline', '2014-03-15 21:41:20'),
(130, 65, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:41:20'),
(131, 66, 8, 'GLOBAL', 'timeline', '2014-03-15 21:41:54'),
(132, 66, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:41:54'),
(133, 67, 8, 'GLOBAL', 'timeline', '2014-03-15 21:42:10'),
(134, 67, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:42:10'),
(135, 68, 8, 'GLOBAL', 'timeline', '2014-03-15 21:42:42'),
(136, 68, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:42:42'),
(137, 69, 8, 'GLOBAL', 'timeline', '2014-03-15 21:43:22'),
(138, 69, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:43:22'),
(139, 70, 8, 'GLOBAL', 'timeline', '2014-03-15 21:43:42'),
(140, 70, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:43:42'),
(141, 71, 8, 'GLOBAL', 'timeline', '2014-03-15 21:43:59'),
(142, 71, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:43:59'),
(143, 72, 8, 'GLOBAL', 'timeline', '2014-03-15 21:44:03'),
(144, 72, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:44:03'),
(145, 73, 8, 'GLOBAL', 'timeline', '2014-03-15 21:44:52'),
(146, 73, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:44:52'),
(147, 74, 8, 'GLOBAL', 'timeline', '2014-03-15 21:46:08'),
(148, 74, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:46:08'),
(149, 75, 8, 'GLOBAL', 'timeline', '2014-03-15 21:46:39'),
(150, 75, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:46:39'),
(151, 76, 8, 'GLOBAL', 'timeline', '2014-03-15 21:46:48'),
(152, 76, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:46:48'),
(153, 77, 8, 'GLOBAL', 'timeline', '2014-03-15 21:47:16'),
(154, 77, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:47:16'),
(155, 78, 8, 'GLOBAL', 'timeline', '2014-03-15 21:47:37'),
(156, 78, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:47:37'),
(157, 79, 8, 'GLOBAL', 'timeline', '2014-03-15 21:48:13'),
(158, 79, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:48:13'),
(159, 80, 8, 'GLOBAL', 'timeline', '2014-03-15 21:48:38'),
(160, 80, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:48:38'),
(161, 81, 8, 'GLOBAL', 'timeline', '2014-03-15 21:49:28'),
(162, 81, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:49:28'),
(163, 82, 8, 'GLOBAL', 'timeline', '2014-03-15 21:49:45'),
(164, 82, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:49:45'),
(165, 83, 8, 'GLOBAL', 'timeline', '2014-03-15 21:49:53'),
(166, 83, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:49:53'),
(167, 84, 8, 'GLOBAL', 'timeline', '2014-03-15 21:50:19'),
(168, 84, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:50:19'),
(169, 85, 8, 'GLOBAL', 'timeline', '2014-03-15 21:51:36'),
(170, 85, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:51:36'),
(171, 86, 8, 'GLOBAL', 'timeline', '2014-03-15 21:52:38'),
(172, 86, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:52:38'),
(173, 87, 8, 'GLOBAL', 'timeline', '2014-03-15 21:53:29'),
(174, 87, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:53:29'),
(175, 88, 8, 'GLOBAL', 'timeline', '2014-03-15 21:54:01'),
(176, 88, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:54:01'),
(177, 89, 8, 'GLOBAL', 'timeline', '2014-03-15 21:54:51'),
(178, 89, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:54:51'),
(179, 90, 8, 'GLOBAL', 'timeline', '2014-03-15 21:55:25'),
(180, 90, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:55:25'),
(181, 91, 8, 'GLOBAL', 'timeline', '2014-03-15 21:56:01'),
(182, 91, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:56:01'),
(183, 92, 8, 'GLOBAL', 'timeline', '2014-03-15 21:56:43'),
(184, 92, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:56:43'),
(185, 93, 8, 'GLOBAL', 'timeline', '2014-03-15 21:57:31'),
(186, 93, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:57:31'),
(187, 94, 8, 'GLOBAL', 'timeline', '2014-03-15 21:58:03'),
(188, 94, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:58:03'),
(189, 95, 8, 'GLOBAL', 'timeline', '2014-03-15 21:58:45'),
(190, 95, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:58:45'),
(191, 96, 8, 'GLOBAL', 'timeline', '2014-03-15 21:59:01'),
(192, 96, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:59:01'),
(193, 97, 8, 'GLOBAL', 'timeline', '2014-03-15 21:59:12'),
(194, 97, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:59:12'),
(195, 98, 8, 'GLOBAL', 'timeline', '2014-03-15 21:59:30'),
(196, 98, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:59:30'),
(197, 99, 8, 'GLOBAL', 'timeline', '2014-03-15 21:59:41'),
(198, 99, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:59:41'),
(199, 100, 8, 'GLOBAL', 'timeline', '2014-03-15 21:59:54'),
(200, 100, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 21:59:54'),
(201, 101, 8, 'GLOBAL', 'timeline', '2014-03-15 22:00:10'),
(202, 101, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:00:10'),
(203, 102, 8, 'GLOBAL', 'timeline', '2014-03-15 22:00:27'),
(204, 102, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:00:27'),
(205, 103, 8, 'GLOBAL', 'timeline', '2014-03-15 22:00:51'),
(206, 103, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:00:51'),
(207, 104, 8, 'GLOBAL', 'timeline', '2014-03-15 22:01:04'),
(208, 104, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:01:04'),
(209, 105, 8, 'GLOBAL', 'timeline', '2014-03-15 22:01:17'),
(210, 105, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:01:17'),
(211, 106, 8, 'GLOBAL', 'timeline', '2014-03-15 22:03:25'),
(212, 106, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:03:25'),
(213, 107, 8, 'GLOBAL', 'timeline', '2014-03-15 22:03:34'),
(214, 107, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:03:34'),
(215, 108, 8, 'GLOBAL', 'timeline', '2014-03-15 22:04:05'),
(216, 108, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:04:05'),
(217, 109, 8, 'GLOBAL', 'timeline', '2014-03-15 22:04:19'),
(218, 109, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:04:19'),
(219, 110, 8, 'GLOBAL', 'timeline', '2014-03-15 22:05:10'),
(220, 110, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:05:10'),
(221, 111, 8, 'GLOBAL', 'timeline', '2014-03-15 22:06:05'),
(222, 111, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:06:05'),
(223, 112, 8, 'GLOBAL', 'timeline', '2014-03-15 22:10:27'),
(224, 112, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:10:27'),
(225, 113, 8, 'GLOBAL', 'timeline', '2014-03-15 22:12:38'),
(226, 113, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:12:38'),
(227, 114, 8, 'GLOBAL', 'timeline', '2014-03-15 22:13:21'),
(228, 114, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:13:21'),
(229, 115, 8, 'GLOBAL', 'timeline', '2014-03-15 22:14:39'),
(230, 115, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:14:39'),
(231, 116, 8, 'GLOBAL', 'timeline', '2014-03-15 22:15:49'),
(232, 116, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:15:49'),
(233, 117, 8, 'GLOBAL', 'timeline', '2014-03-15 22:16:38'),
(234, 117, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:16:38'),
(235, 118, 8, 'GLOBAL', 'timeline', '2014-03-15 22:18:02'),
(236, 118, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:18:02'),
(237, 119, 8, 'GLOBAL', 'timeline', '2014-03-15 22:18:15'),
(238, 119, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:18:15'),
(239, 120, 8, 'GLOBAL', 'timeline', '2014-03-15 22:19:04'),
(240, 120, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:19:04'),
(241, 121, 8, 'GLOBAL', 'timeline', '2014-03-15 22:19:17'),
(242, 121, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:19:17'),
(243, 122, 8, 'GLOBAL', 'timeline', '2014-03-15 22:20:20'),
(244, 122, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:20:20'),
(245, 123, 8, 'GLOBAL', 'timeline', '2014-03-15 22:20:30'),
(246, 123, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:20:30'),
(247, 124, 8, 'GLOBAL', 'timeline', '2014-03-15 22:20:49'),
(248, 124, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:20:49'),
(249, 125, 8, 'GLOBAL', 'timeline', '2014-03-15 22:21:35'),
(250, 125, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:21:35'),
(251, 126, 8, 'GLOBAL', 'timeline', '2014-03-15 22:21:43'),
(252, 126, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:21:43'),
(253, 127, 8, 'GLOBAL', 'timeline', '2014-03-15 22:22:01'),
(254, 127, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:22:01'),
(255, 128, 8, 'GLOBAL', 'timeline', '2014-03-15 22:22:46'),
(256, 128, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:22:46'),
(257, 129, 8, 'GLOBAL', 'timeline', '2014-03-15 22:23:50'),
(258, 129, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:23:50'),
(259, 130, 8, 'GLOBAL', 'timeline', '2014-03-15 22:24:29'),
(260, 130, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:24:29'),
(261, 131, 8, 'GLOBAL', 'timeline', '2014-03-15 22:24:46'),
(262, 131, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:24:46'),
(263, 132, 8, 'GLOBAL', 'timeline', '2014-03-15 22:25:21'),
(264, 132, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:25:21'),
(265, 133, 8, 'GLOBAL', 'timeline', '2014-03-15 22:25:41'),
(266, 133, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:25:41'),
(267, 134, 8, 'GLOBAL', 'timeline', '2014-03-15 22:26:02'),
(268, 134, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:26:02'),
(269, 135, 8, 'GLOBAL', 'timeline', '2014-03-15 22:26:15'),
(270, 135, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:26:15'),
(271, 136, 8, 'GLOBAL', 'timeline', '2014-03-15 22:27:30'),
(272, 136, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:27:30'),
(273, 137, 8, 'GLOBAL', 'timeline', '2014-03-15 22:28:48'),
(274, 137, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:28:48'),
(275, 138, 8, 'GLOBAL', 'timeline', '2014-03-15 22:29:12'),
(276, 138, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:29:12'),
(277, 139, 8, 'GLOBAL', 'timeline', '2014-03-15 22:29:43'),
(278, 139, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:29:43'),
(279, 140, 8, 'GLOBAL', 'timeline', '2014-03-15 22:30:57'),
(280, 140, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:30:57'),
(281, 141, 8, 'GLOBAL', 'timeline', '2014-03-15 22:38:24'),
(282, 141, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:38:24'),
(283, 142, 8, 'GLOBAL', 'timeline', '2014-03-15 22:40:50'),
(284, 142, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:40:50'),
(285, 143, 8, 'GLOBAL', 'timeline', '2014-03-15 22:41:21'),
(286, 143, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:41:21'),
(287, 144, 8, 'GLOBAL', 'timeline', '2014-03-15 22:41:44'),
(288, 144, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:41:44'),
(289, 145, 8, 'GLOBAL', 'timeline', '2014-03-15 22:42:11'),
(290, 145, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:42:11'),
(291, 146, 8, 'GLOBAL', 'timeline', '2014-03-15 22:42:31'),
(292, 146, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:42:31'),
(293, 147, 8, 'GLOBAL', 'timeline', '2014-03-15 22:42:40'),
(294, 147, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:42:40'),
(295, 148, 8, 'GLOBAL', 'timeline', '2014-03-15 22:43:55'),
(296, 148, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:43:55'),
(297, 149, 8, 'GLOBAL', 'timeline', '2014-03-15 22:45:06'),
(298, 149, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:45:06'),
(299, 150, 8, 'GLOBAL', 'timeline', '2014-03-15 22:46:42'),
(300, 150, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:46:42'),
(301, 151, 8, 'GLOBAL', 'timeline', '2014-03-15 22:51:15'),
(302, 151, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:51:15'),
(303, 152, 8, 'GLOBAL', 'timeline', '2014-03-15 22:51:33'),
(304, 152, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:51:33'),
(305, 153, 8, 'GLOBAL', 'timeline', '2014-03-15 22:52:48'),
(306, 153, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:52:48'),
(307, 154, 8, 'GLOBAL', 'timeline', '2014-03-15 22:53:18'),
(308, 154, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:53:18'),
(309, 155, 8, 'GLOBAL', 'timeline', '2014-03-15 22:54:25'),
(310, 155, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:54:25'),
(311, 156, 8, 'GLOBAL', 'timeline', '2014-03-15 22:56:20'),
(312, 156, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:56:20'),
(313, 157, 8, 'GLOBAL', 'timeline', '2014-03-15 22:56:55'),
(314, 157, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 22:56:55'),
(315, 158, 8, 'GLOBAL', 'timeline', '2014-03-15 23:00:24'),
(316, 158, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:00:24'),
(317, 159, 8, 'GLOBAL', 'timeline', '2014-03-15 23:04:15'),
(318, 159, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:04:15'),
(319, 160, 8, 'GLOBAL', 'timeline', '2014-03-15 23:04:31'),
(320, 160, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:04:31'),
(321, 161, 8, 'GLOBAL', 'timeline', '2014-03-15 23:06:25'),
(322, 161, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:06:25'),
(323, 162, 8, 'GLOBAL', 'timeline', '2014-03-15 23:07:26'),
(324, 162, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:07:26'),
(325, 163, 8, 'GLOBAL', 'timeline', '2014-03-15 23:07:45'),
(326, 163, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:07:45'),
(327, 164, 8, 'GLOBAL', 'timeline', '2014-03-15 23:08:42'),
(328, 164, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:08:42'),
(329, 165, 8, 'GLOBAL', 'timeline', '2014-03-15 23:11:24'),
(330, 165, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:11:24'),
(331, 166, 8, 'GLOBAL', 'timeline', '2014-03-15 23:12:27'),
(332, 166, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:12:27'),
(333, 167, 8, 'GLOBAL', 'timeline', '2014-03-15 23:13:24'),
(334, 167, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:13:24'),
(335, 168, 8, 'GLOBAL', 'timeline', '2014-03-15 23:14:15'),
(336, 168, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:14:15'),
(337, 169, 8, 'GLOBAL', 'timeline', '2014-03-15 23:14:41'),
(338, 169, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:14:41'),
(339, 170, 8, 'GLOBAL', 'timeline', '2014-03-15 23:16:13'),
(340, 170, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:16:13'),
(341, 171, 8, 'GLOBAL', 'timeline', '2014-03-15 23:16:20'),
(342, 171, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:16:20'),
(343, 172, 8, 'GLOBAL', 'timeline', '2014-03-15 23:16:31'),
(344, 172, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:16:31'),
(345, 173, 8, 'GLOBAL', 'timeline', '2014-03-15 23:17:29'),
(346, 173, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:17:29'),
(347, 174, 8, 'GLOBAL', 'timeline', '2014-03-15 23:17:33'),
(348, 174, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:17:33'),
(349, 175, 8, 'GLOBAL', 'timeline', '2014-03-15 23:18:55'),
(350, 175, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:18:55'),
(351, 176, 8, 'GLOBAL', 'timeline', '2014-03-15 23:19:53'),
(352, 176, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:19:53'),
(353, 177, 8, 'GLOBAL', 'timeline', '2014-03-15 23:20:11'),
(354, 177, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:20:11'),
(355, 178, 8, 'GLOBAL', 'timeline', '2014-03-15 23:20:33'),
(356, 178, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:20:33'),
(357, 179, 8, 'GLOBAL', 'timeline', '2014-03-15 23:20:51'),
(358, 179, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:20:51'),
(359, 180, 8, 'GLOBAL', 'timeline', '2014-03-15 23:21:09'),
(360, 180, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:21:09'),
(361, 181, 8, 'GLOBAL', 'timeline', '2014-03-15 23:22:17'),
(362, 181, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:22:17'),
(363, 182, 8, 'GLOBAL', 'timeline', '2014-03-15 23:24:30'),
(364, 182, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:24:30'),
(365, 183, 8, 'GLOBAL', 'timeline', '2014-03-15 23:26:13'),
(366, 183, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:26:13'),
(367, 184, 8, 'GLOBAL', 'timeline', '2014-03-15 23:28:39'),
(368, 184, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:28:39'),
(369, 185, 8, 'GLOBAL', 'timeline', '2014-03-15 23:29:42'),
(370, 185, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:29:42'),
(371, 186, 8, 'GLOBAL', 'timeline', '2014-03-15 23:31:42'),
(372, 186, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:31:42'),
(373, 187, 8, 'GLOBAL', 'timeline', '2014-03-15 23:31:57'),
(374, 187, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:31:57'),
(375, 188, 8, 'GLOBAL', 'timeline', '2014-03-15 23:32:02'),
(376, 188, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:32:02'),
(377, 189, 8, 'GLOBAL', 'timeline', '2014-03-15 23:32:35'),
(378, 189, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:32:35'),
(379, 190, 8, 'GLOBAL', 'timeline', '2014-03-15 23:34:17'),
(380, 190, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:34:17'),
(381, 191, 8, 'GLOBAL', 'timeline', '2014-03-15 23:35:04'),
(382, 191, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:35:04'),
(383, 192, 8, 'GLOBAL', 'timeline', '2014-03-15 23:36:09'),
(384, 192, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:36:09'),
(385, 193, 8, 'GLOBAL', 'timeline', '2014-03-15 23:36:35'),
(386, 193, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:36:35'),
(387, 194, 8, 'GLOBAL', 'timeline', '2014-03-15 23:38:38'),
(388, 194, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:38:38'),
(389, 195, 8, 'GLOBAL', 'timeline', '2014-03-15 23:39:49'),
(390, 195, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:39:49'),
(391, 196, 8, 'GLOBAL', 'timeline', '2014-03-15 23:40:17'),
(392, 196, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:40:17'),
(393, 197, 8, 'GLOBAL', 'timeline', '2014-03-15 23:41:19'),
(394, 197, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:41:19'),
(395, 198, 8, 'GLOBAL', 'timeline', '2014-03-15 23:42:50'),
(396, 198, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:42:50'),
(397, 199, 8, 'GLOBAL', 'timeline', '2014-03-15 23:43:15'),
(398, 199, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:43:15'),
(399, 200, 8, 'GLOBAL', 'timeline', '2014-03-15 23:45:31'),
(400, 200, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:45:31'),
(401, 201, 8, 'GLOBAL', 'timeline', '2014-03-15 23:47:12'),
(402, 201, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:47:12'),
(403, 202, 8, 'GLOBAL', 'timeline', '2014-03-15 23:48:22'),
(404, 202, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:48:22'),
(405, 203, 8, 'GLOBAL', 'timeline', '2014-03-15 23:49:11'),
(406, 203, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:49:11'),
(407, 204, 8, 'GLOBAL', 'timeline', '2014-03-15 23:49:50'),
(408, 204, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:49:50'),
(409, 205, 8, 'GLOBAL', 'timeline', '2014-03-15 23:50:17'),
(410, 205, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:50:17'),
(411, 206, 8, 'GLOBAL', 'timeline', '2014-03-15 23:50:47'),
(412, 206, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:50:47'),
(413, 207, 8, 'GLOBAL', 'timeline', '2014-03-15 23:50:58'),
(414, 207, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:50:58'),
(415, 208, 8, 'GLOBAL', 'timeline', '2014-03-15 23:52:39'),
(416, 208, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:52:39'),
(417, 209, 8, 'GLOBAL', 'timeline', '2014-03-15 23:53:54'),
(418, 209, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:53:54'),
(419, 210, 8, 'GLOBAL', 'timeline', '2014-03-15 23:55:25'),
(420, 210, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:55:25'),
(421, 211, 8, 'GLOBAL', 'timeline', '2014-03-15 23:58:26'),
(422, 211, 8, 'SONATA_ADMIN', 'timeline', '2014-03-15 23:58:26'),
(423, 212, 8, 'GLOBAL', 'timeline', '2014-03-16 00:00:06'),
(424, 212, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:00:06'),
(425, 213, 8, 'GLOBAL', 'timeline', '2014-03-16 00:00:57'),
(426, 213, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:00:57'),
(427, 214, 8, 'GLOBAL', 'timeline', '2014-03-16 00:03:13'),
(428, 214, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:03:13'),
(429, 215, 8, 'GLOBAL', 'timeline', '2014-03-16 00:21:44'),
(430, 215, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:21:44'),
(431, 216, 8, 'GLOBAL', 'timeline', '2014-03-16 00:22:18'),
(432, 216, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:22:18'),
(433, 217, 8, 'GLOBAL', 'timeline', '2014-03-16 00:22:32'),
(434, 217, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:22:32'),
(435, 218, 8, 'GLOBAL', 'timeline', '2014-03-16 00:22:42'),
(436, 218, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:22:42'),
(437, 219, 8, 'GLOBAL', 'timeline', '2014-03-16 00:22:53'),
(438, 219, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:22:53'),
(439, 220, 8, 'GLOBAL', 'timeline', '2014-03-16 00:23:16'),
(440, 220, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:23:16'),
(441, 221, 8, 'GLOBAL', 'timeline', '2014-03-16 00:23:59'),
(442, 221, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:23:59'),
(443, 222, 8, 'GLOBAL', 'timeline', '2014-03-16 00:24:38'),
(444, 222, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:24:38'),
(445, 223, 8, 'GLOBAL', 'timeline', '2014-03-16 00:25:20'),
(446, 223, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:25:20'),
(447, 224, 8, 'GLOBAL', 'timeline', '2014-03-16 00:27:37'),
(448, 224, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:27:37'),
(449, 225, 8, 'GLOBAL', 'timeline', '2014-03-16 00:27:43'),
(450, 225, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:27:43'),
(451, 226, 8, 'GLOBAL', 'timeline', '2014-03-16 00:27:57'),
(452, 226, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:27:57'),
(453, 227, 8, 'GLOBAL', 'timeline', '2014-03-16 00:29:47'),
(454, 227, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:29:47'),
(455, 228, 8, 'GLOBAL', 'timeline', '2014-03-16 00:31:41'),
(456, 228, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:31:41'),
(457, 229, 8, 'GLOBAL', 'timeline', '2014-03-16 00:32:22'),
(458, 229, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:32:22'),
(459, 230, 8, 'GLOBAL', 'timeline', '2014-03-16 00:32:48'),
(460, 230, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:32:48'),
(461, 231, 8, 'GLOBAL', 'timeline', '2014-03-16 00:34:03'),
(462, 231, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:34:03'),
(463, 232, 8, 'GLOBAL', 'timeline', '2014-03-16 00:34:33'),
(464, 232, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:34:33'),
(465, 233, 8, 'GLOBAL', 'timeline', '2014-03-16 00:35:19'),
(466, 233, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:35:19'),
(467, 234, 8, 'GLOBAL', 'timeline', '2014-03-16 00:36:24'),
(468, 234, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:36:24'),
(469, 235, 8, 'GLOBAL', 'timeline', '2014-03-16 00:36:38'),
(470, 235, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:36:38'),
(471, 236, 8, 'GLOBAL', 'timeline', '2014-03-16 00:37:10'),
(472, 236, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:37:10'),
(473, 237, 8, 'GLOBAL', 'timeline', '2014-03-16 00:37:31'),
(474, 237, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:37:31'),
(475, 238, 8, 'GLOBAL', 'timeline', '2014-03-16 00:38:15'),
(476, 238, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:38:15'),
(477, 239, 8, 'GLOBAL', 'timeline', '2014-03-16 00:38:53'),
(478, 239, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:38:53'),
(479, 240, 8, 'GLOBAL', 'timeline', '2014-03-16 00:39:50'),
(480, 240, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:39:50'),
(481, 241, 8, 'GLOBAL', 'timeline', '2014-03-16 00:40:23'),
(482, 241, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:40:23'),
(483, 242, 8, 'GLOBAL', 'timeline', '2014-03-16 00:40:52'),
(484, 242, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:40:52'),
(485, 243, 8, 'GLOBAL', 'timeline', '2014-03-16 00:41:52'),
(486, 243, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:41:52'),
(487, 244, 8, 'GLOBAL', 'timeline', '2014-03-16 00:43:16'),
(488, 244, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:43:16'),
(489, 245, 8, 'GLOBAL', 'timeline', '2014-03-16 00:44:00'),
(490, 245, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:44:00'),
(491, 246, 8, 'GLOBAL', 'timeline', '2014-03-16 00:44:37'),
(492, 246, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:44:37'),
(493, 247, 8, 'GLOBAL', 'timeline', '2014-03-16 00:44:54'),
(494, 247, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:44:54'),
(495, 248, 8, 'GLOBAL', 'timeline', '2014-03-16 00:45:38'),
(496, 248, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:45:38'),
(497, 249, 8, 'GLOBAL', 'timeline', '2014-03-16 00:46:17'),
(498, 249, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:46:17'),
(499, 250, 8, 'GLOBAL', 'timeline', '2014-03-16 00:46:59'),
(500, 250, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:46:59'),
(501, 251, 8, 'GLOBAL', 'timeline', '2014-03-16 00:47:36'),
(502, 251, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:47:36'),
(503, 252, 8, 'GLOBAL', 'timeline', '2014-03-16 00:48:41'),
(504, 252, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:48:41'),
(505, 253, 8, 'GLOBAL', 'timeline', '2014-03-16 00:49:01'),
(506, 253, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:49:01'),
(507, 254, 8, 'GLOBAL', 'timeline', '2014-03-16 00:49:46'),
(508, 254, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:49:46'),
(509, 255, 8, 'GLOBAL', 'timeline', '2014-03-16 00:50:43'),
(510, 255, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:50:43'),
(511, 256, 8, 'GLOBAL', 'timeline', '2014-03-16 00:53:14'),
(512, 256, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:53:14'),
(513, 257, 8, 'GLOBAL', 'timeline', '2014-03-16 00:53:43'),
(514, 257, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:53:43'),
(515, 258, 8, 'GLOBAL', 'timeline', '2014-03-16 00:54:06'),
(516, 258, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:54:06'),
(517, 259, 8, 'GLOBAL', 'timeline', '2014-03-16 00:54:17'),
(518, 259, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:54:17'),
(519, 260, 8, 'GLOBAL', 'timeline', '2014-03-16 00:54:51'),
(520, 260, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:54:51'),
(521, 261, 8, 'GLOBAL', 'timeline', '2014-03-16 00:55:02'),
(522, 261, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:55:02'),
(523, 262, 8, 'GLOBAL', 'timeline', '2014-03-16 00:55:35'),
(524, 262, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:55:35'),
(525, 263, 8, 'GLOBAL', 'timeline', '2014-03-16 00:57:12'),
(526, 263, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:57:12'),
(527, 264, 8, 'GLOBAL', 'timeline', '2014-03-16 00:57:26'),
(528, 264, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:57:26'),
(529, 265, 8, 'GLOBAL', 'timeline', '2014-03-16 00:57:59'),
(530, 265, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 00:57:59'),
(531, 266, 8, 'GLOBAL', 'timeline', '2014-03-16 01:03:17'),
(532, 266, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:03:17'),
(533, 267, 8, 'GLOBAL', 'timeline', '2014-03-16 01:04:20'),
(534, 267, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:04:20'),
(535, 268, 8, 'GLOBAL', 'timeline', '2014-03-16 01:04:58'),
(536, 268, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:04:58'),
(537, 269, 8, 'GLOBAL', 'timeline', '2014-03-16 01:06:18'),
(538, 269, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:06:18'),
(539, 270, 8, 'GLOBAL', 'timeline', '2014-03-16 01:06:35'),
(540, 270, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:06:35'),
(541, 271, 8, 'GLOBAL', 'timeline', '2014-03-16 01:07:27'),
(542, 271, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:07:27'),
(543, 272, 8, 'GLOBAL', 'timeline', '2014-03-16 01:08:59'),
(544, 272, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:08:59'),
(545, 273, 8, 'GLOBAL', 'timeline', '2014-03-16 01:11:46'),
(546, 273, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:11:46'),
(547, 274, 8, 'GLOBAL', 'timeline', '2014-03-16 01:11:59'),
(548, 274, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:11:59'),
(549, 275, 8, 'GLOBAL', 'timeline', '2014-03-16 01:13:38'),
(550, 275, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:13:38'),
(551, 276, 8, 'GLOBAL', 'timeline', '2014-03-16 01:13:51'),
(552, 276, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:13:51'),
(553, 277, 8, 'GLOBAL', 'timeline', '2014-03-16 01:16:00'),
(554, 277, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:16:00'),
(555, 278, 8, 'GLOBAL', 'timeline', '2014-03-16 01:16:28'),
(556, 278, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:16:28'),
(557, 279, 8, 'GLOBAL', 'timeline', '2014-03-16 01:16:46'),
(558, 279, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:16:46'),
(559, 280, 8, 'GLOBAL', 'timeline', '2014-03-16 01:16:52'),
(560, 280, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:16:52'),
(561, 281, 8, 'GLOBAL', 'timeline', '2014-03-16 01:16:58'),
(562, 281, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:16:58'),
(563, 282, 8, 'GLOBAL', 'timeline', '2014-03-16 01:17:03'),
(564, 282, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:17:03'),
(565, 283, 8, 'GLOBAL', 'timeline', '2014-03-16 01:17:07'),
(566, 283, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:17:07'),
(567, 284, 8, 'GLOBAL', 'timeline', '2014-03-16 01:18:18'),
(568, 284, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:18:18'),
(569, 285, 8, 'GLOBAL', 'timeline', '2014-03-16 01:18:46'),
(570, 285, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:18:46'),
(571, 286, 8, 'GLOBAL', 'timeline', '2014-03-16 01:19:18'),
(572, 286, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:19:18'),
(573, 287, 8, 'GLOBAL', 'timeline', '2014-03-16 01:20:08'),
(574, 287, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:20:08'),
(575, 288, 8, 'GLOBAL', 'timeline', '2014-03-16 01:20:34'),
(576, 288, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:20:34'),
(577, 289, 8, 'GLOBAL', 'timeline', '2014-03-16 01:21:31'),
(578, 289, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:21:31'),
(579, 290, 8, 'GLOBAL', 'timeline', '2014-03-16 01:21:50'),
(580, 290, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:21:50'),
(581, 291, 8, 'GLOBAL', 'timeline', '2014-03-16 01:22:01'),
(582, 291, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:22:01'),
(583, 292, 8, 'GLOBAL', 'timeline', '2014-03-16 01:22:14'),
(584, 292, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:22:14'),
(585, 293, 8, 'GLOBAL', 'timeline', '2014-03-16 01:22:32'),
(586, 293, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:22:32'),
(587, 294, 8, 'GLOBAL', 'timeline', '2014-03-16 01:23:03'),
(588, 294, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:23:03'),
(589, 295, 8, 'GLOBAL', 'timeline', '2014-03-16 01:23:37'),
(590, 295, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:23:37'),
(591, 296, 8, 'GLOBAL', 'timeline', '2014-03-16 01:23:58'),
(592, 296, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:23:58'),
(593, 297, 8, 'GLOBAL', 'timeline', '2014-03-16 01:24:18'),
(594, 297, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:24:18'),
(595, 298, 8, 'GLOBAL', 'timeline', '2014-03-16 01:24:23'),
(596, 298, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:24:23'),
(597, 299, 8, 'GLOBAL', 'timeline', '2014-03-16 01:25:24'),
(598, 299, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:25:24'),
(599, 300, 8, 'GLOBAL', 'timeline', '2014-03-16 01:27:24'),
(600, 300, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:27:24'),
(601, 301, 8, 'GLOBAL', 'timeline', '2014-03-16 01:27:46'),
(602, 301, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:27:46'),
(603, 302, 8, 'GLOBAL', 'timeline', '2014-03-16 01:28:07'),
(604, 302, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:28:07'),
(605, 303, 8, 'GLOBAL', 'timeline', '2014-03-16 01:28:48'),
(606, 303, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:28:48'),
(607, 304, 8, 'GLOBAL', 'timeline', '2014-03-16 01:29:03'),
(608, 304, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:29:03'),
(609, 305, 8, 'GLOBAL', 'timeline', '2014-03-16 01:30:38'),
(610, 305, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:30:38'),
(611, 306, 8, 'GLOBAL', 'timeline', '2014-03-16 01:31:07'),
(612, 306, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:31:07'),
(613, 307, 8, 'GLOBAL', 'timeline', '2014-03-16 01:31:30'),
(614, 307, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:31:30'),
(615, 308, 8, 'GLOBAL', 'timeline', '2014-03-16 01:31:35'),
(616, 308, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:31:35'),
(617, 309, 8, 'GLOBAL', 'timeline', '2014-03-16 01:34:44'),
(618, 309, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:34:44'),
(619, 310, 8, 'GLOBAL', 'timeline', '2014-03-16 01:35:26'),
(620, 310, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:35:26'),
(621, 311, 8, 'GLOBAL', 'timeline', '2014-03-16 01:36:00'),
(622, 311, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:36:00'),
(623, 312, 8, 'GLOBAL', 'timeline', '2014-03-16 01:37:57'),
(624, 312, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:37:57'),
(625, 313, 8, 'GLOBAL', 'timeline', '2014-03-16 01:38:14'),
(626, 313, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 01:38:14'),
(627, 314, 8, 'GLOBAL', 'timeline', '2014-03-16 14:32:20'),
(628, 314, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:32:20'),
(629, 315, 8, 'GLOBAL', 'timeline', '2014-03-16 14:32:35'),
(630, 315, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:32:35'),
(631, 316, 8, 'GLOBAL', 'timeline', '2014-03-16 14:32:47'),
(632, 316, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:32:47'),
(633, 317, 8, 'GLOBAL', 'timeline', '2014-03-16 14:32:54'),
(634, 317, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:32:54'),
(635, 318, 8, 'GLOBAL', 'timeline', '2014-03-16 14:33:01'),
(636, 318, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:33:01'),
(637, 319, 8, 'GLOBAL', 'timeline', '2014-03-16 14:34:33'),
(638, 319, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:34:33'),
(639, 320, 8, 'GLOBAL', 'timeline', '2014-03-16 14:35:10'),
(640, 320, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:35:10'),
(641, 321, 8, 'GLOBAL', 'timeline', '2014-03-16 14:40:18'),
(642, 321, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:40:18'),
(643, 322, 8, 'GLOBAL', 'timeline', '2014-03-16 14:40:58'),
(644, 322, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:40:58'),
(645, 323, 8, 'GLOBAL', 'timeline', '2014-03-16 14:44:35'),
(646, 323, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:44:35'),
(647, 324, 8, 'GLOBAL', 'timeline', '2014-03-16 14:45:25'),
(648, 324, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:45:25'),
(649, 325, 8, 'GLOBAL', 'timeline', '2014-03-16 14:45:41'),
(650, 325, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:45:41'),
(651, 326, 8, 'GLOBAL', 'timeline', '2014-03-16 14:45:58'),
(652, 326, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:45:58'),
(653, 327, 8, 'GLOBAL', 'timeline', '2014-03-16 14:46:40'),
(654, 327, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:46:40'),
(655, 328, 8, 'GLOBAL', 'timeline', '2014-03-16 14:47:33'),
(656, 328, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:47:33'),
(657, 329, 8, 'GLOBAL', 'timeline', '2014-03-16 14:48:01'),
(658, 329, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:48:01'),
(659, 330, 8, 'GLOBAL', 'timeline', '2014-03-16 14:48:18'),
(660, 330, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:48:18'),
(661, 331, 8, 'GLOBAL', 'timeline', '2014-03-16 14:49:09'),
(662, 331, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:49:09'),
(663, 332, 8, 'GLOBAL', 'timeline', '2014-03-16 14:50:30'),
(664, 332, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:50:30'),
(665, 333, 8, 'GLOBAL', 'timeline', '2014-03-16 14:50:39'),
(666, 333, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:50:39'),
(667, 334, 8, 'GLOBAL', 'timeline', '2014-03-16 14:51:07'),
(668, 334, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:51:07'),
(669, 335, 8, 'GLOBAL', 'timeline', '2014-03-16 14:51:43'),
(670, 335, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:51:43'),
(671, 336, 8, 'GLOBAL', 'timeline', '2014-03-16 14:52:02'),
(672, 336, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:52:02'),
(673, 337, 8, 'GLOBAL', 'timeline', '2014-03-16 14:53:37'),
(674, 337, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:53:37'),
(675, 338, 8, 'GLOBAL', 'timeline', '2014-03-16 14:53:52'),
(676, 338, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:53:52'),
(677, 339, 8, 'GLOBAL', 'timeline', '2014-03-16 14:54:52'),
(678, 339, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:54:52'),
(679, 340, 8, 'GLOBAL', 'timeline', '2014-03-16 14:55:42'),
(680, 340, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:55:42'),
(681, 341, 8, 'GLOBAL', 'timeline', '2014-03-16 14:56:39'),
(682, 341, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:56:39'),
(683, 342, 8, 'GLOBAL', 'timeline', '2014-03-16 14:57:07'),
(684, 342, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:57:07'),
(685, 343, 8, 'GLOBAL', 'timeline', '2014-03-16 14:58:08'),
(686, 343, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:58:08'),
(687, 344, 8, 'GLOBAL', 'timeline', '2014-03-16 14:58:57'),
(688, 344, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:58:57'),
(689, 345, 8, 'GLOBAL', 'timeline', '2014-03-16 14:59:26'),
(690, 345, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 14:59:26'),
(691, 346, 8, 'GLOBAL', 'timeline', '2014-03-16 15:01:42'),
(692, 346, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:01:42'),
(693, 347, 8, 'GLOBAL', 'timeline', '2014-03-16 15:02:20'),
(694, 347, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:02:20'),
(695, 348, 8, 'GLOBAL', 'timeline', '2014-03-16 15:02:43'),
(696, 348, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:02:43'),
(697, 349, 8, 'GLOBAL', 'timeline', '2014-03-16 15:02:56'),
(698, 349, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:02:56'),
(699, 350, 8, 'GLOBAL', 'timeline', '2014-03-16 15:03:07'),
(700, 350, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:03:07'),
(701, 351, 8, 'GLOBAL', 'timeline', '2014-03-16 15:04:44'),
(702, 351, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:04:44'),
(703, 352, 8, 'GLOBAL', 'timeline', '2014-03-16 15:05:41'),
(704, 352, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:05:41'),
(705, 353, 8, 'GLOBAL', 'timeline', '2014-03-16 15:06:01'),
(706, 353, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:06:01'),
(707, 354, 8, 'GLOBAL', 'timeline', '2014-03-16 15:07:35'),
(708, 354, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:07:35'),
(709, 355, 8, 'GLOBAL', 'timeline', '2014-03-16 15:07:52'),
(710, 355, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:07:52'),
(711, 356, 8, 'GLOBAL', 'timeline', '2014-03-16 15:08:35'),
(712, 356, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:08:35'),
(713, 357, 8, 'GLOBAL', 'timeline', '2014-03-16 15:08:44'),
(714, 357, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:08:44'),
(715, 358, 8, 'GLOBAL', 'timeline', '2014-03-16 15:08:53'),
(716, 358, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:08:53'),
(717, 359, 8, 'GLOBAL', 'timeline', '2014-03-16 15:09:55'),
(718, 359, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:09:55'),
(719, 360, 8, 'GLOBAL', 'timeline', '2014-03-16 15:10:06'),
(720, 360, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:10:06'),
(721, 361, 8, 'GLOBAL', 'timeline', '2014-03-16 15:10:19'),
(722, 361, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:10:19'),
(723, 362, 8, 'GLOBAL', 'timeline', '2014-03-16 15:10:40'),
(724, 362, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:10:40'),
(725, 363, 8, 'GLOBAL', 'timeline', '2014-03-16 15:10:51'),
(726, 363, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:10:51'),
(727, 364, 8, 'GLOBAL', 'timeline', '2014-03-16 15:11:30'),
(728, 364, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:11:30'),
(729, 365, 8, 'GLOBAL', 'timeline', '2014-03-16 15:11:44'),
(730, 365, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:11:44'),
(731, 366, 8, 'GLOBAL', 'timeline', '2014-03-16 15:13:56'),
(732, 366, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:13:56'),
(733, 367, 8, 'GLOBAL', 'timeline', '2014-03-16 15:14:09'),
(734, 367, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:14:09'),
(735, 368, 8, 'GLOBAL', 'timeline', '2014-03-16 15:14:37'),
(736, 368, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:14:37'),
(737, 369, 8, 'GLOBAL', 'timeline', '2014-03-16 15:15:00'),
(738, 369, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:15:00'),
(739, 370, 8, 'GLOBAL', 'timeline', '2014-03-16 15:15:25'),
(740, 370, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:15:25'),
(741, 371, 8, 'GLOBAL', 'timeline', '2014-03-16 15:15:40'),
(742, 371, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:15:40'),
(743, 372, 8, 'GLOBAL', 'timeline', '2014-03-16 15:16:03'),
(744, 372, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:16:03'),
(745, 373, 8, 'GLOBAL', 'timeline', '2014-03-16 15:16:17'),
(746, 373, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:16:17'),
(747, 374, 8, 'GLOBAL', 'timeline', '2014-03-16 15:16:29'),
(748, 374, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:16:29'),
(749, 375, 8, 'GLOBAL', 'timeline', '2014-03-16 15:16:46'),
(750, 375, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:16:46'),
(751, 376, 8, 'GLOBAL', 'timeline', '2014-03-16 15:17:04'),
(752, 376, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:17:04'),
(753, 377, 8, 'GLOBAL', 'timeline', '2014-03-16 15:17:15'),
(754, 377, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:17:15'),
(755, 378, 8, 'GLOBAL', 'timeline', '2014-03-16 15:17:27'),
(756, 378, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:17:27'),
(757, 379, 8, 'GLOBAL', 'timeline', '2014-03-16 15:17:40'),
(758, 379, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:17:40'),
(759, 380, 8, 'GLOBAL', 'timeline', '2014-03-16 15:17:54'),
(760, 380, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:17:54'),
(761, 381, 8, 'GLOBAL', 'timeline', '2014-03-16 15:18:04'),
(762, 381, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:18:04'),
(763, 382, 8, 'GLOBAL', 'timeline', '2014-03-16 15:18:26'),
(764, 382, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:18:26'),
(765, 383, 8, 'GLOBAL', 'timeline', '2014-03-16 15:18:37'),
(766, 383, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:18:37'),
(767, 384, 8, 'GLOBAL', 'timeline', '2014-03-16 15:18:47'),
(768, 384, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:18:47'),
(769, 385, 8, 'GLOBAL', 'timeline', '2014-03-16 15:19:55'),
(770, 385, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:19:55'),
(771, 386, 8, 'GLOBAL', 'timeline', '2014-03-16 15:20:11'),
(772, 386, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:20:11'),
(773, 387, 8, 'GLOBAL', 'timeline', '2014-03-16 15:20:35'),
(774, 387, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:20:35'),
(775, 388, 8, 'GLOBAL', 'timeline', '2014-03-16 15:21:11'),
(776, 388, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:21:11'),
(777, 389, 8, 'GLOBAL', 'timeline', '2014-03-16 15:21:27'),
(778, 389, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:21:27'),
(779, 390, 8, 'GLOBAL', 'timeline', '2014-03-16 15:21:57'),
(780, 390, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:21:57'),
(781, 391, 8, 'GLOBAL', 'timeline', '2014-03-16 15:22:19'),
(782, 391, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:22:19'),
(783, 392, 8, 'GLOBAL', 'timeline', '2014-03-16 15:22:30'),
(784, 392, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:22:30'),
(785, 393, 8, 'GLOBAL', 'timeline', '2014-03-16 15:22:40'),
(786, 393, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:22:40'),
(787, 394, 8, 'GLOBAL', 'timeline', '2014-03-16 15:22:51'),
(788, 394, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:22:51'),
(789, 395, 8, 'GLOBAL', 'timeline', '2014-03-16 15:23:09'),
(790, 395, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:23:09'),
(791, 396, 8, 'GLOBAL', 'timeline', '2014-03-16 15:23:29'),
(792, 396, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:23:29'),
(793, 397, 8, 'GLOBAL', 'timeline', '2014-03-16 15:23:39'),
(794, 397, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 15:23:39'),
(795, 398, 8, 'GLOBAL', 'timeline', '2014-03-16 16:29:28'),
(796, 398, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:29:28'),
(797, 399, 8, 'GLOBAL', 'timeline', '2014-03-16 16:29:39'),
(798, 399, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:29:39'),
(799, 400, 8, 'GLOBAL', 'timeline', '2014-03-16 16:29:50'),
(800, 400, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:29:50'),
(801, 401, 8, 'GLOBAL', 'timeline', '2014-03-16 16:30:06'),
(802, 401, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:30:06'),
(803, 402, 8, 'GLOBAL', 'timeline', '2014-03-16 16:30:19'),
(804, 402, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:30:19'),
(805, 403, 8, 'GLOBAL', 'timeline', '2014-03-16 16:31:53'),
(806, 403, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:31:53'),
(807, 404, 8, 'GLOBAL', 'timeline', '2014-03-16 16:32:25'),
(808, 404, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:32:25'),
(809, 405, 8, 'GLOBAL', 'timeline', '2014-03-16 16:33:00'),
(810, 405, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:33:00'),
(811, 406, 8, 'GLOBAL', 'timeline', '2014-03-16 16:33:16'),
(812, 406, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:33:16'),
(813, 407, 8, 'GLOBAL', 'timeline', '2014-03-16 16:33:56'),
(814, 407, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:33:56'),
(815, 408, 8, 'GLOBAL', 'timeline', '2014-03-16 16:34:25'),
(816, 408, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:34:25'),
(817, 409, 8, 'GLOBAL', 'timeline', '2014-03-16 16:34:56'),
(818, 409, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:34:56'),
(819, 410, 8, 'GLOBAL', 'timeline', '2014-03-16 16:36:01'),
(820, 410, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:36:01'),
(821, 411, 8, 'GLOBAL', 'timeline', '2014-03-16 16:36:22'),
(822, 411, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:36:22'),
(823, 412, 8, 'GLOBAL', 'timeline', '2014-03-16 16:36:28'),
(824, 412, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:36:28'),
(825, 413, 8, 'GLOBAL', 'timeline', '2014-03-16 16:36:42'),
(826, 413, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:36:42'),
(827, 414, 8, 'GLOBAL', 'timeline', '2014-03-16 16:36:56'),
(828, 414, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:36:56');
INSERT INTO `timeline__timeline` (`id`, `action_id`, `subject_id`, `context`, `type`, `created_at`) VALUES
(829, 415, 8, 'GLOBAL', 'timeline', '2014-03-16 16:37:10'),
(830, 415, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:37:10'),
(831, 416, 8, 'GLOBAL', 'timeline', '2014-03-16 16:37:43'),
(832, 416, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:37:43'),
(833, 417, 8, 'GLOBAL', 'timeline', '2014-03-16 16:37:59'),
(834, 417, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:37:59'),
(835, 418, 8, 'GLOBAL', 'timeline', '2014-03-16 16:38:46'),
(836, 418, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:38:46'),
(837, 419, 8, 'GLOBAL', 'timeline', '2014-03-16 16:39:06'),
(838, 419, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:39:06'),
(839, 420, 8, 'GLOBAL', 'timeline', '2014-03-16 16:39:31'),
(840, 420, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:39:31'),
(841, 421, 8, 'GLOBAL', 'timeline', '2014-03-16 16:39:53'),
(842, 421, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:39:53'),
(843, 422, 8, 'GLOBAL', 'timeline', '2014-03-16 16:40:15'),
(844, 422, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:40:15'),
(845, 423, 8, 'GLOBAL', 'timeline', '2014-03-16 16:40:28'),
(846, 423, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:40:28'),
(847, 424, 8, 'GLOBAL', 'timeline', '2014-03-16 16:42:12'),
(848, 424, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:42:12'),
(849, 425, 8, 'GLOBAL', 'timeline', '2014-03-16 16:43:10'),
(850, 425, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:43:10'),
(851, 426, 8, 'GLOBAL', 'timeline', '2014-03-16 16:43:20'),
(852, 426, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:43:20'),
(853, 427, 8, 'GLOBAL', 'timeline', '2014-03-16 16:43:41'),
(854, 427, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:43:41'),
(855, 428, 8, 'GLOBAL', 'timeline', '2014-03-16 16:43:59'),
(856, 428, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:43:59'),
(857, 429, 8, 'GLOBAL', 'timeline', '2014-03-16 16:44:12'),
(858, 429, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:44:12'),
(859, 430, 8, 'GLOBAL', 'timeline', '2014-03-16 16:44:25'),
(860, 430, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:44:25'),
(861, 431, 8, 'GLOBAL', 'timeline', '2014-03-16 16:44:43'),
(862, 431, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:44:43'),
(863, 432, 8, 'GLOBAL', 'timeline', '2014-03-16 16:45:10'),
(864, 432, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:45:10'),
(865, 433, 8, 'GLOBAL', 'timeline', '2014-03-16 16:45:43'),
(866, 433, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:45:43'),
(867, 434, 8, 'GLOBAL', 'timeline', '2014-03-16 16:45:59'),
(868, 434, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:45:59'),
(869, 435, 8, 'GLOBAL', 'timeline', '2014-03-16 16:46:14'),
(870, 435, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:46:14'),
(871, 436, 8, 'GLOBAL', 'timeline', '2014-03-16 16:47:00'),
(872, 436, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:47:00'),
(873, 437, 8, 'GLOBAL', 'timeline', '2014-03-16 16:47:11'),
(874, 437, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:47:11'),
(875, 438, 8, 'GLOBAL', 'timeline', '2014-03-16 16:48:31'),
(876, 438, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:48:31'),
(877, 439, 8, 'GLOBAL', 'timeline', '2014-03-16 16:49:11'),
(878, 439, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:49:11'),
(879, 440, 8, 'GLOBAL', 'timeline', '2014-03-16 16:49:37'),
(880, 440, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:49:37'),
(881, 441, 8, 'GLOBAL', 'timeline', '2014-03-16 16:50:02'),
(882, 441, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:50:02'),
(883, 442, 8, 'GLOBAL', 'timeline', '2014-03-16 16:50:23'),
(884, 442, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:50:23'),
(885, 443, 8, 'GLOBAL', 'timeline', '2014-03-16 16:50:50'),
(886, 443, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:50:50'),
(887, 444, 8, 'GLOBAL', 'timeline', '2014-03-16 16:52:39'),
(888, 444, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:52:39'),
(889, 445, 8, 'GLOBAL', 'timeline', '2014-03-16 16:53:57'),
(890, 445, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:53:57'),
(891, 446, 8, 'GLOBAL', 'timeline', '2014-03-16 16:54:25'),
(892, 446, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:54:25'),
(893, 447, 8, 'GLOBAL', 'timeline', '2014-03-16 16:56:14'),
(894, 447, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:56:14'),
(895, 448, 8, 'GLOBAL', 'timeline', '2014-03-16 16:56:44'),
(896, 448, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:56:44'),
(897, 449, 8, 'GLOBAL', 'timeline', '2014-03-16 16:57:09'),
(898, 449, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:57:09'),
(899, 450, 8, 'GLOBAL', 'timeline', '2014-03-16 16:58:32'),
(900, 450, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:58:32'),
(901, 451, 8, 'GLOBAL', 'timeline', '2014-03-16 16:58:47'),
(902, 451, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:58:47'),
(903, 452, 8, 'GLOBAL', 'timeline', '2014-03-16 16:59:36'),
(904, 452, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 16:59:36'),
(905, 453, 8, 'GLOBAL', 'timeline', '2014-03-16 17:00:24'),
(906, 453, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:00:24'),
(907, 454, 8, 'GLOBAL', 'timeline', '2014-03-16 17:00:40'),
(908, 454, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:00:40'),
(909, 455, 8, 'GLOBAL', 'timeline', '2014-03-16 17:01:18'),
(910, 455, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:01:18'),
(911, 456, 8, 'GLOBAL', 'timeline', '2014-03-16 17:02:09'),
(912, 456, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:02:09'),
(913, 457, 8, 'GLOBAL', 'timeline', '2014-03-16 17:02:24'),
(914, 457, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:02:24'),
(915, 458, 8, 'GLOBAL', 'timeline', '2014-03-16 17:03:26'),
(916, 458, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:03:26'),
(917, 459, 8, 'GLOBAL', 'timeline', '2014-03-16 17:03:42'),
(918, 459, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:03:42'),
(919, 460, 8, 'GLOBAL', 'timeline', '2014-03-16 17:04:27'),
(920, 460, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:04:27'),
(921, 461, 8, 'GLOBAL', 'timeline', '2014-03-16 17:05:12'),
(922, 461, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:05:12'),
(923, 462, 8, 'GLOBAL', 'timeline', '2014-03-16 17:06:18'),
(924, 462, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:06:18'),
(925, 463, 8, 'GLOBAL', 'timeline', '2014-03-16 17:08:10'),
(926, 463, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:08:10'),
(927, 464, 8, 'GLOBAL', 'timeline', '2014-03-16 17:09:45'),
(928, 464, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:09:45'),
(929, 465, 8, 'GLOBAL', 'timeline', '2014-03-16 17:11:27'),
(930, 465, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:11:27'),
(931, 466, 8, 'GLOBAL', 'timeline', '2014-03-16 17:12:17'),
(932, 466, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:12:17'),
(933, 467, 8, 'GLOBAL', 'timeline', '2014-03-16 17:14:23'),
(934, 467, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:14:23'),
(935, 468, 8, 'GLOBAL', 'timeline', '2014-03-16 17:16:04'),
(936, 468, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:16:04'),
(937, 469, 8, 'GLOBAL', 'timeline', '2014-03-16 17:18:01'),
(938, 469, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:18:01'),
(939, 470, 8, 'GLOBAL', 'timeline', '2014-03-16 17:18:26'),
(940, 470, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:18:26'),
(941, 471, 8, 'GLOBAL', 'timeline', '2014-03-16 17:18:50'),
(942, 471, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:18:50'),
(943, 472, 8, 'GLOBAL', 'timeline', '2014-03-16 17:19:45'),
(944, 472, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:19:45'),
(945, 473, 8, 'GLOBAL', 'timeline', '2014-03-16 17:20:08'),
(946, 473, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:20:08'),
(947, 474, 8, 'GLOBAL', 'timeline', '2014-03-16 17:20:13'),
(948, 474, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:20:13'),
(949, 475, 8, 'GLOBAL', 'timeline', '2014-03-16 17:21:11'),
(950, 475, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:21:11'),
(951, 476, 8, 'GLOBAL', 'timeline', '2014-03-16 17:22:12'),
(952, 476, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:22:12'),
(953, 477, 8, 'GLOBAL', 'timeline', '2014-03-16 17:22:24'),
(954, 477, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:22:24'),
(955, 478, 8, 'GLOBAL', 'timeline', '2014-03-16 17:22:35'),
(956, 478, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:22:35'),
(957, 479, 8, 'GLOBAL', 'timeline', '2014-03-16 17:23:23'),
(958, 479, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:23:23'),
(959, 480, 8, 'GLOBAL', 'timeline', '2014-03-16 17:23:35'),
(960, 480, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:23:35'),
(961, 481, 8, 'GLOBAL', 'timeline', '2014-03-16 17:25:15'),
(962, 481, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:25:15'),
(963, 482, 8, 'GLOBAL', 'timeline', '2014-03-16 17:25:31'),
(964, 482, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:25:31'),
(965, 483, 8, 'GLOBAL', 'timeline', '2014-03-16 17:26:52'),
(966, 483, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:26:52'),
(967, 484, 8, 'GLOBAL', 'timeline', '2014-03-16 17:27:47'),
(968, 484, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:27:47'),
(969, 485, 8, 'GLOBAL', 'timeline', '2014-03-16 17:28:00'),
(970, 485, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:28:00'),
(971, 486, 8, 'GLOBAL', 'timeline', '2014-03-16 17:29:05'),
(972, 486, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:29:05'),
(973, 487, 8, 'GLOBAL', 'timeline', '2014-03-16 17:30:26'),
(974, 487, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:30:26'),
(975, 488, 8, 'GLOBAL', 'timeline', '2014-03-16 17:30:54'),
(976, 488, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:30:54'),
(977, 489, 8, 'GLOBAL', 'timeline', '2014-03-16 17:32:23'),
(978, 489, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:32:23'),
(979, 490, 8, 'GLOBAL', 'timeline', '2014-03-16 17:32:39'),
(980, 490, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:32:39'),
(981, 491, 8, 'GLOBAL', 'timeline', '2014-03-16 17:33:00'),
(982, 491, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:33:00'),
(983, 492, 8, 'GLOBAL', 'timeline', '2014-03-16 17:33:14'),
(984, 492, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:33:14'),
(985, 493, 8, 'GLOBAL', 'timeline', '2014-03-16 17:33:37'),
(986, 493, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:33:37'),
(987, 494, 8, 'GLOBAL', 'timeline', '2014-03-16 17:33:43'),
(988, 494, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:33:43'),
(989, 495, 8, 'GLOBAL', 'timeline', '2014-03-16 17:33:53'),
(990, 495, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:33:53'),
(991, 496, 8, 'GLOBAL', 'timeline', '2014-03-16 17:34:30'),
(992, 496, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:34:30'),
(993, 497, 8, 'GLOBAL', 'timeline', '2014-03-16 17:35:03'),
(994, 497, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:35:03'),
(995, 498, 8, 'GLOBAL', 'timeline', '2014-03-16 17:35:33'),
(996, 498, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:35:33'),
(997, 499, 8, 'GLOBAL', 'timeline', '2014-03-16 17:36:35'),
(998, 499, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:36:35'),
(999, 500, 8, 'GLOBAL', 'timeline', '2014-03-16 17:37:05'),
(1000, 500, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:37:05'),
(1001, 501, 8, 'GLOBAL', 'timeline', '2014-03-16 17:38:01'),
(1002, 501, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:38:01'),
(1003, 502, 8, 'GLOBAL', 'timeline', '2014-03-16 17:38:39'),
(1004, 502, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:38:39'),
(1005, 503, 8, 'GLOBAL', 'timeline', '2014-03-16 17:39:06'),
(1006, 503, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:39:06'),
(1007, 504, 8, 'GLOBAL', 'timeline', '2014-03-16 17:39:22'),
(1008, 504, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:39:22'),
(1009, 505, 8, 'GLOBAL', 'timeline', '2014-03-16 17:39:34'),
(1010, 505, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:39:34'),
(1011, 506, 8, 'GLOBAL', 'timeline', '2014-03-16 17:40:18'),
(1012, 506, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:40:18'),
(1013, 507, 8, 'GLOBAL', 'timeline', '2014-03-16 17:40:30'),
(1014, 507, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:40:30'),
(1015, 508, 8, 'GLOBAL', 'timeline', '2014-03-16 17:41:52'),
(1016, 508, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:41:52'),
(1017, 509, 8, 'GLOBAL', 'timeline', '2014-03-16 17:42:13'),
(1018, 509, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:42:13'),
(1019, 510, 8, 'GLOBAL', 'timeline', '2014-03-16 17:42:34'),
(1020, 510, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:42:34'),
(1021, 511, 8, 'GLOBAL', 'timeline', '2014-03-16 17:42:55'),
(1022, 511, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:42:55'),
(1023, 512, 8, 'GLOBAL', 'timeline', '2014-03-16 17:43:11'),
(1024, 512, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:43:11'),
(1025, 513, 8, 'GLOBAL', 'timeline', '2014-03-16 17:45:53'),
(1026, 513, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:45:53'),
(1027, 514, 8, 'GLOBAL', 'timeline', '2014-03-16 17:47:24'),
(1028, 514, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:47:24'),
(1029, 515, 8, 'GLOBAL', 'timeline', '2014-03-16 17:48:51'),
(1030, 515, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:48:51'),
(1031, 516, 8, 'GLOBAL', 'timeline', '2014-03-16 17:50:38'),
(1032, 516, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:50:38'),
(1033, 517, 8, 'GLOBAL', 'timeline', '2014-03-16 17:51:17'),
(1034, 517, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:51:17'),
(1035, 518, 8, 'GLOBAL', 'timeline', '2014-03-16 17:52:49'),
(1036, 518, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:52:49'),
(1037, 519, 8, 'GLOBAL', 'timeline', '2014-03-16 17:53:13'),
(1038, 519, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:53:13'),
(1039, 520, 8, 'GLOBAL', 'timeline', '2014-03-16 17:53:26'),
(1040, 520, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:53:26'),
(1041, 521, 8, 'GLOBAL', 'timeline', '2014-03-16 17:54:06'),
(1042, 521, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:54:06'),
(1043, 522, 8, 'GLOBAL', 'timeline', '2014-03-16 17:55:14'),
(1044, 522, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:55:14'),
(1045, 523, 8, 'GLOBAL', 'timeline', '2014-03-16 17:55:43'),
(1046, 523, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:55:43'),
(1047, 524, 8, 'GLOBAL', 'timeline', '2014-03-16 17:57:41'),
(1048, 524, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 17:57:41'),
(1049, 525, 8, 'GLOBAL', 'timeline', '2014-03-16 18:00:40'),
(1050, 525, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:00:40'),
(1051, 526, 8, 'GLOBAL', 'timeline', '2014-03-16 18:03:54'),
(1052, 526, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:03:54'),
(1053, 527, 8, 'GLOBAL', 'timeline', '2014-03-16 18:07:32'),
(1054, 527, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:07:32'),
(1055, 528, 8, 'GLOBAL', 'timeline', '2014-03-16 18:07:51'),
(1056, 528, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:07:51'),
(1057, 529, 8, 'GLOBAL', 'timeline', '2014-03-16 18:08:53'),
(1058, 529, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:08:53'),
(1059, 530, 8, 'GLOBAL', 'timeline', '2014-03-16 18:09:49'),
(1060, 530, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:09:49'),
(1061, 531, 8, 'GLOBAL', 'timeline', '2014-03-16 18:10:22'),
(1062, 531, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:10:22'),
(1063, 532, 8, 'GLOBAL', 'timeline', '2014-03-16 18:10:51'),
(1064, 532, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:10:51'),
(1065, 533, 8, 'GLOBAL', 'timeline', '2014-03-16 18:11:45'),
(1066, 533, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:11:45'),
(1067, 534, 8, 'GLOBAL', 'timeline', '2014-03-16 18:11:53'),
(1068, 534, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:11:53'),
(1069, 535, 8, 'GLOBAL', 'timeline', '2014-03-16 18:13:43'),
(1070, 535, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:13:43'),
(1071, 536, 8, 'GLOBAL', 'timeline', '2014-03-16 18:18:21'),
(1072, 536, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:18:21'),
(1073, 537, 8, 'GLOBAL', 'timeline', '2014-03-16 18:18:41'),
(1074, 537, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:18:41'),
(1075, 538, 8, 'GLOBAL', 'timeline', '2014-03-16 18:19:06'),
(1076, 538, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:19:06'),
(1077, 539, 8, 'GLOBAL', 'timeline', '2014-03-16 18:19:40'),
(1078, 539, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:19:40'),
(1079, 540, 8, 'GLOBAL', 'timeline', '2014-03-16 18:20:05'),
(1080, 540, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:20:05'),
(1081, 541, 8, 'GLOBAL', 'timeline', '2014-03-16 18:22:33'),
(1082, 541, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:22:33'),
(1083, 542, 8, 'GLOBAL', 'timeline', '2014-03-16 18:23:37'),
(1084, 542, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:23:37'),
(1085, 543, 8, 'GLOBAL', 'timeline', '2014-03-16 18:27:38'),
(1086, 543, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:27:38'),
(1087, 544, 8, 'GLOBAL', 'timeline', '2014-03-16 18:27:57'),
(1088, 544, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:27:57'),
(1089, 545, 8, 'GLOBAL', 'timeline', '2014-03-16 18:30:52'),
(1090, 545, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:30:52'),
(1091, 546, 8, 'GLOBAL', 'timeline', '2014-03-16 18:34:00'),
(1092, 546, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:34:00'),
(1093, 547, 8, 'GLOBAL', 'timeline', '2014-03-16 18:34:31'),
(1094, 547, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:34:31'),
(1095, 548, 8, 'GLOBAL', 'timeline', '2014-03-16 18:34:58'),
(1096, 548, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:34:58'),
(1097, 549, 8, 'GLOBAL', 'timeline', '2014-03-16 18:35:22'),
(1098, 549, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:35:22'),
(1099, 550, 8, 'GLOBAL', 'timeline', '2014-03-16 18:35:42'),
(1100, 550, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:35:42'),
(1101, 551, 8, 'GLOBAL', 'timeline', '2014-03-16 18:36:24'),
(1102, 551, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:36:24'),
(1103, 552, 8, 'GLOBAL', 'timeline', '2014-03-16 18:38:28'),
(1104, 552, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:38:28'),
(1105, 553, 8, 'GLOBAL', 'timeline', '2014-03-16 18:38:50'),
(1106, 553, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:38:50'),
(1107, 554, 8, 'GLOBAL', 'timeline', '2014-03-16 18:40:00'),
(1108, 554, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:40:00'),
(1109, 555, 8, 'GLOBAL', 'timeline', '2014-03-16 18:40:46'),
(1110, 555, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:40:46'),
(1111, 556, 8, 'GLOBAL', 'timeline', '2014-03-16 18:41:03'),
(1112, 556, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:41:03'),
(1113, 557, 8, 'GLOBAL', 'timeline', '2014-03-16 18:47:06'),
(1114, 557, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:47:06'),
(1115, 558, 8, 'GLOBAL', 'timeline', '2014-03-16 18:47:23'),
(1116, 558, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 18:47:23'),
(1117, 559, 8, 'GLOBAL', 'timeline', '2014-03-16 21:14:02'),
(1118, 559, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 21:14:02'),
(1119, 560, 8, 'GLOBAL', 'timeline', '2014-03-16 21:14:36'),
(1120, 560, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 21:14:36'),
(1121, 561, 8, 'GLOBAL', 'timeline', '2014-03-16 21:15:11'),
(1122, 561, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 21:15:11'),
(1123, 562, 8, 'GLOBAL', 'timeline', '2014-03-16 21:30:23'),
(1124, 562, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 21:30:23'),
(1125, 563, 8, 'GLOBAL', 'timeline', '2014-03-16 21:36:08'),
(1126, 563, 8, 'SONATA_ADMIN', 'timeline', '2014-03-16 21:36:08'),
(1127, 564, 8, 'GLOBAL', 'timeline', '2014-03-17 20:29:04'),
(1128, 564, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:29:04'),
(1129, 565, 8, 'GLOBAL', 'timeline', '2014-03-17 20:29:26'),
(1130, 565, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:29:26'),
(1131, 566, 8, 'GLOBAL', 'timeline', '2014-03-17 20:29:48'),
(1132, 566, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:29:48'),
(1133, 567, 8, 'GLOBAL', 'timeline', '2014-03-17 20:30:10'),
(1134, 567, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:30:10'),
(1135, 568, 8, 'GLOBAL', 'timeline', '2014-03-17 20:30:29'),
(1136, 568, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:30:29'),
(1137, 569, 8, 'GLOBAL', 'timeline', '2014-03-17 20:31:23'),
(1138, 569, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:31:23'),
(1139, 570, 8, 'GLOBAL', 'timeline', '2014-03-17 20:31:54'),
(1140, 570, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:31:54'),
(1141, 571, 8, 'GLOBAL', 'timeline', '2014-03-17 20:32:29'),
(1142, 571, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:32:29'),
(1143, 572, 8, 'GLOBAL', 'timeline', '2014-03-17 20:32:52'),
(1144, 572, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:32:52'),
(1145, 573, 8, 'GLOBAL', 'timeline', '2014-03-17 20:33:10'),
(1146, 573, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:33:10'),
(1147, 574, 8, 'GLOBAL', 'timeline', '2014-03-17 20:33:41'),
(1148, 574, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:33:41'),
(1149, 575, 8, 'GLOBAL', 'timeline', '2014-03-17 20:33:45'),
(1150, 575, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:33:45'),
(1151, 576, 8, 'GLOBAL', 'timeline', '2014-03-17 20:33:47'),
(1152, 576, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:33:47'),
(1153, 577, 8, 'GLOBAL', 'timeline', '2014-03-17 20:33:52'),
(1154, 577, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:33:52'),
(1155, 578, 8, 'GLOBAL', 'timeline', '2014-03-17 20:33:56'),
(1156, 578, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:33:56'),
(1157, 579, 8, 'GLOBAL', 'timeline', '2014-03-17 20:34:00'),
(1158, 579, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:34:00'),
(1159, 580, 8, 'GLOBAL', 'timeline', '2014-03-17 20:34:04'),
(1160, 580, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:34:04'),
(1161, 581, 8, 'GLOBAL', 'timeline', '2014-03-17 20:34:06'),
(1162, 581, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:34:06'),
(1163, 582, 8, 'GLOBAL', 'timeline', '2014-03-17 20:34:09'),
(1164, 582, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:34:09'),
(1165, 583, 8, 'GLOBAL', 'timeline', '2014-03-17 20:34:15'),
(1166, 583, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:34:15'),
(1167, 584, 8, 'GLOBAL', 'timeline', '2014-03-17 20:36:09'),
(1168, 584, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:36:09'),
(1169, 585, 8, 'GLOBAL', 'timeline', '2014-03-17 20:37:21'),
(1170, 585, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:37:21'),
(1171, 586, 8, 'GLOBAL', 'timeline', '2014-03-17 20:42:06'),
(1172, 586, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:42:06'),
(1173, 587, 8, 'GLOBAL', 'timeline', '2014-03-17 20:44:03'),
(1174, 587, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:44:03'),
(1175, 588, 8, 'GLOBAL', 'timeline', '2014-03-17 20:44:26'),
(1176, 588, 8, 'SONATA_ADMIN', 'timeline', '2014-03-17 20:44:26');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`);

--
-- Constraints for table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bannercontent_blocks`
--
ALTER TABLE `bannercontent_blocks`
  ADD CONSTRAINT `FK_F4D58642ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F4D586C4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `FK_F41BCA704A73D32C` FOREIGN KEY (`introvideo`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F41BCA7097AB4E12` FOREIGN KEY (`bgimage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F41BCA70BDAFD8C8` FOREIGN KEY (`author`) REFERENCES `fos_user_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F41BCA70F3890D5F` FOREIGN KEY (`introimage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD CONSTRAINT `FK_9DB3BC9712469DE2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9DB3BC97DAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs_tags`
--
ALTER TABLE `blogs_tags`
  ADD CONSTRAINT `FK_B21862B8BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B21862B8DAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_bannercontent_blocks`
--
ALTER TABLE `blog_bannercontent_blocks`
  ADD CONSTRAINT `FK_BBBD848542ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BBBD8485DAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_extracontent_blocks`
--
ALTER TABLE `blog_extracontent_blocks`
  ADD CONSTRAINT `FK_D0FE99C642ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D0FE99C6DAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_maincontent_blocks`
--
ALTER TABLE `blog_maincontent_blocks`
  ADD CONSTRAINT `FK_1FB7CF4E42ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1FB7CF4EDAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_modalcontent_blocks`
--
ALTER TABLE `blog_modalcontent_blocks`
  ADD CONSTRAINT `FK_3262B32242ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3262B322DAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668AD0F3245` FOREIGN KEY (`categoryIcon`) REFERENCES `media__media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_5F9E962ADAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

--
-- Constraints for table `content_blocks`
--
ALTER TABLE `content_blocks`
  ADD CONSTRAINT `FK_A6DBE5D44E850E4D` FOREIGN KEY (`fileFile`) REFERENCES `media__media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6DBE5D472EFEE62` FOREIGN KEY (`slide`) REFERENCES `content_slides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6DBE5D47316E1A3` FOREIGN KEY (`vimeo`) REFERENCES `media__media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6DBE5D4F0789934` FOREIGN KEY (`youtube`) REFERENCES `media__media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_blocks_images`
--
ALTER TABLE `content_blocks_images`
  ADD CONSTRAINT `FK_960CFC1F42ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_960CFC1F96E51DA3` FOREIGN KEY (`contentimage_id`) REFERENCES `content_images` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_images`
--
ALTER TABLE `content_images`
  ADD CONSTRAINT `FK_8829CEC6991EFFB9` FOREIGN KEY (`imagefile`) REFERENCES `media__media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_slides`
--
ALTER TABLE `content_slides`
  ADD CONSTRAINT `FK_D0F6503D991EFFB9` FOREIGN KEY (`imagefile`) REFERENCES `media__media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `FK_2D3343C335767543` FOREIGN KEY (`destinationicon`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2D3343C397AB4E12` FOREIGN KEY (`bgimage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2D3343C3BDAFD8C8` FOREIGN KEY (`author`) REFERENCES `fos_user_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2D3343C3D2BBDDF7` FOREIGN KEY (`spots`) REFERENCES `spots` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2D3343C3F3890D5F` FOREIGN KEY (`introimage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `destinations_categories`
--
ALTER TABLE `destinations_categories`
  ADD CONSTRAINT `FK_61B1CB522C34F628` FOREIGN KEY (`destinationcategory_id`) REFERENCES `destination_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_61B1CB52816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destinations_tags`
--
ALTER TABLE `destinations_tags`
  ADD CONSTRAINT `FK_138A80C361972E3E` FOREIGN KEY (`destinationtag_id`) REFERENCES `destination_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_138A80C3816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_bannercontent_blocks`
--
ALTER TABLE `destination_bannercontent_blocks`
  ADD CONSTRAINT `FK_1AB7924042ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1AB79240816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_categories`
--
ALTER TABLE `destination_categories`
  ADD CONSTRAINT `FK_67CADDDABD7209A` FOREIGN KEY (`destinationListPage`) REFERENCES `destinations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_67CADDDACEB1B078` FOREIGN KEY (`destinationCategoryIcon`) REFERENCES `media__media` (`id`);

--
-- Constraints for table `destination_maincontent_blocks`
--
ALTER TABLE `destination_maincontent_blocks`
  ADD CONSTRAINT `FK_21C5B86442ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_21C5B864816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_modalcontent_blocks`
--
ALTER TABLE `destination_modalcontent_blocks`
  ADD CONSTRAINT `FK_E9E7088342ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E9E70883816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_secondarycontent_blocks`
--
ALTER TABLE `destination_secondarycontent_blocks`
  ADD CONSTRAINT `FK_3D7A49B442ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3D7A49B4816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_tags`
--
ALTER TABLE `destination_tags`
  ADD CONSTRAINT `FK_CC1D1D178913051D` FOREIGN KEY (`tagIcon`) REFERENCES `media__media` (`id`);

--
-- Constraints for table `extracontent_blocks`
--
ALTER TABLE `extracontent_blocks`
  ADD CONSTRAINT `FK_92E8997342ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_92E89973C4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `maincontent_blocks`
--
ALTER TABLE `maincontent_blocks`
  ADD CONSTRAINT `FK_BB2F166742ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB2F1667C4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media__gallery_media`
--
ALTER TABLE `media__gallery_media`
  ADD CONSTRAINT `FK_80D4C5414E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `media__gallery` (`id`),
  ADD CONSTRAINT `FK_80D4C541EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`);

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `FK_70B2CA2A140AB620` FOREIGN KEY (`page`) REFERENCES `pages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_70B2CA2A3EC63EAA` FOREIGN KEY (`destination`) REFERENCES `destinations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_70B2CA2A9196AB0E` FOREIGN KEY (`menuImage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_70B2CA2AB9327A73` FOREIGN KEY (`spot`) REFERENCES `spots` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_70B2CA2AC0155143` FOREIGN KEY (`blog`) REFERENCES `blogs` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `modalcontent_blocks`
--
ALTER TABLE `modalcontent_blocks`
  ADD CONSTRAINT `FK_7074B39742ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7074B397C4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `FK_2074E57597AB4E12` FOREIGN KEY (`bgimage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2074E575BDAFD8C8` FOREIGN KEY (`author`) REFERENCES `fos_user_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2074E575F3890D5F` FOREIGN KEY (`introimage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages_categories`
--
ALTER TABLE `pages_categories`
  ADD CONSTRAINT `FK_533F7E1B12469DE2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_533F7E1BC4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages_tags`
--
ALTER TABLE `pages_tags`
  ADD CONSTRAINT `FK_2476DEA6BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2476DEA6C4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `secondarycontent_blocks`
--
ALTER TABLE `secondarycontent_blocks`
  ADD CONSTRAINT `FK_F8B56AB442ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F8B56AB4C4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spots`
--
ALTER TABLE `spots`
  ADD CONSTRAINT `FK_D2BBDDF73B6DB7D3` FOREIGN KEY (`spotattributes`) REFERENCES `spot_attributes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_D2BBDDF7BDAFD8C8` FOREIGN KEY (`author`) REFERENCES `fos_user_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_D2BBDDF7F3890D5F` FOREIGN KEY (`introimage`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_D2BBDDF7F52D402E` FOREIGN KEY (`related_destination`) REFERENCES `destinations` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `spots_bannercontent_blocks`
--
ALTER TABLE `spots_bannercontent_blocks`
  ADD CONSTRAINT `FK_FC83D8272DF1D37C` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FC83D82742ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spots_destinationfilters`
--
ALTER TABLE `spots_destinationfilters`
  ADD CONSTRAINT `FK_3744DBEE2DF1D37C` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3744DBEE52ACF0A6` FOREIGN KEY (`spotdestinationfilter_id`) REFERENCES `spot_destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spots_maincontent_blocks`
--
ALTER TABLE `spots_maincontent_blocks`
  ADD CONSTRAINT `FK_5F16D2102DF1D37C` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F16D21042ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spots_modalcontent_blocks`
--
ALTER TABLE `spots_modalcontent_blocks`
  ADD CONSTRAINT `FK_BEF16ECC2DF1D37C` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BEF16ECC42ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spots_secondarycontent_blocks`
--
ALTER TABLE `spots_secondarycontent_blocks`
  ADD CONSTRAINT `FK_5BC0C7CD2DF1D37C` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5BC0C7CD42ADBAC2` FOREIGN KEY (`contentblock_id`) REFERENCES `content_blocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spots_spotfilters`
--
ALTER TABLE `spots_spotfilters`
  ADD CONSTRAINT `FK_525160C2251236D0` FOREIGN KEY (`spotfilter_id`) REFERENCES `spot_filters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_525160C22DF1D37C` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spot_destinations`
--
ALTER TABLE `spot_destinations`
  ADD CONSTRAINT `FK_BCCE0A9B3EC63EAA` FOREIGN KEY (`destination`) REFERENCES `destinations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BCCE0A9B46B7BA9` FOREIGN KEY (`spotDestinationFilterIcon`) REFERENCES `media__media` (`id`);

--
-- Constraints for table `spot_filters`
--
ALTER TABLE `spot_filters`
  ADD CONSTRAINT `FK_329D53256F191ECD` FOREIGN KEY (`filterIcon`) REFERENCES `media__media` (`id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `FK_6FBC94268913051D` FOREIGN KEY (`tagIcon`) REFERENCES `media__media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `timeline__action_component`
--
ALTER TABLE `timeline__action_component`
  ADD CONSTRAINT `FK_6ACD1B169D32F035` FOREIGN KEY (`action_id`) REFERENCES `timeline__action` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6ACD1B16E2ABAFFF` FOREIGN KEY (`component_id`) REFERENCES `timeline__component` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timeline__timeline`
--
ALTER TABLE `timeline__timeline`
  ADD CONSTRAINT `FK_FFBC6AD523EDC87` FOREIGN KEY (`subject_id`) REFERENCES `timeline__component` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FFBC6AD59D32F035` FOREIGN KEY (`action_id`) REFERENCES `timeline__action` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
