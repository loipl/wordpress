-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2013 at 10:20 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2013-11-25 02:28:31', '2013-11-25 02:28:31', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 8, 'loipl', 'loiphamle@gmail.com', '', '127.0.0.1', '2013-12-09 07:22:03', '2013-12-09 07:22:03', 'Test comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', '', 0, 1),
(3, 8, 'loipl', 'loiphamle@gmail.com', '', '127.0.0.1', '2013-12-11 14:39:31', '2013-12-11 14:39:31', 'another comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cup_cp_profiles`
--

CREATE TABLE IF NOT EXISTS `wp_cup_cp_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_title` blob NOT NULL,
  `c_name` blob NOT NULL,
  `c_avatar` text NOT NULL,
  `c_email` varchar(250) NOT NULL,
  `c_phone` varchar(250) NOT NULL,
  `c_fax` varchar(250) NOT NULL,
  `c_mobile` varchar(250) NOT NULL,
  `c_website` text NOT NULL,
  `c_about` blob NOT NULL,
  `c_address` blob NOT NULL,
  `c_latitude` varchar(250) NOT NULL,
  `c_longitude` varchar(250) NOT NULL,
  `c_shortcode` text NOT NULL,
  `c_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_customcontactforms_fields`
--

CREATE TABLE IF NOT EXISTS `wp_customcontactforms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_slug` varchar(50) NOT NULL,
  `field_label` mediumtext NOT NULL,
  `field_type` varchar(25) NOT NULL,
  `field_value` mediumtext NOT NULL,
  `field_maxlength` int(5) NOT NULL DEFAULT '0',
  `user_field` int(1) NOT NULL DEFAULT '1',
  `field_instructions` mediumtext NOT NULL,
  `field_options` mediumtext NOT NULL,
  `field_required` int(1) NOT NULL DEFAULT '0',
  `field_class` varchar(50) NOT NULL,
  `field_error` varchar(300) NOT NULL,
  `field_max_upload_size` int(11) NOT NULL,
  `field_allowed_file_extensions` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_customcontactforms_fields`
--

INSERT INTO `wp_customcontactforms_fields` (`id`, `field_slug`, `field_label`, `field_type`, `field_value`, `field_maxlength`, `user_field`, `field_instructions`, `field_options`, `field_required`, `field_class`, `field_error`, `field_max_upload_size`, `field_allowed_file_extensions`) VALUES
(1, 'captcha', 'Type the numbers.', 'Text', '', 100, 0, 'Type the numbers displayed in the image above.', '', 0, '', '', 0, ''),
(2, 'recaptcha', '', 'Text', '', 100, 0, 'Type the numbers displayed in the image above.', '', 0, '', '', 0, ''),
(3, 'usaStates', 'Select a State', 'Dropdown', '', 0, 0, '', '', 0, '', '', 0, ''),
(4, 'allCountries', 'Select a Country', 'Dropdown', '', 0, 0, '', '', 0, '', '', 0, ''),
(5, 'ishuman', 'Check if you are human.', 'Checkbox', '1', 0, 0, 'This helps us prevent spam.', '', 0, '', '', 0, ''),
(6, 'fixedEmail', 'Your Email', 'Text', '', 100, 0, 'Please enter your email address.', '', 1, '', '', 0, ''),
(7, 'fixedWebsite', 'Your Website', 'Text', '', 200, 0, 'Please enter your website.', '', 1, '', '', 0, ''),
(8, 'emailSubject', 'Email Subject', 'Text', '', 200, 0, 'Please enter a subject for the email.', '', 1, '', '', 0, ''),
(9, 'resetButton', '', 'Reset', 'Reset Form', 0, 0, '', '', 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_customcontactforms_field_options`
--

CREATE TABLE IF NOT EXISTS `wp_customcontactforms_field_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_slug` varchar(100) NOT NULL,
  `option_label` varchar(200) NOT NULL,
  `option_value` varchar(100) NOT NULL,
  `option_dead` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_customcontactforms_forms`
--

CREATE TABLE IF NOT EXISTS `wp_customcontactforms_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_slug` varchar(100) NOT NULL,
  `form_title` varchar(200) NOT NULL,
  `form_action` mediumtext NOT NULL,
  `form_method` varchar(4) NOT NULL,
  `form_fields` mediumtext NOT NULL,
  `submit_button_text` varchar(200) NOT NULL,
  `custom_code` mediumtext NOT NULL,
  `form_style` int(10) NOT NULL DEFAULT '0',
  `form_email` mediumtext NOT NULL,
  `form_success_message` mediumtext NOT NULL,
  `form_thank_you_page` varchar(200) NOT NULL,
  `form_success_title` varchar(150) NOT NULL DEFAULT 'Form Success!',
  `form_access` mediumtext NOT NULL,
  `form_email_subject` varchar(250) NOT NULL,
  `form_email_name` varchar(100) NOT NULL,
  `form_pages` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_customcontactforms_styles`
--

CREATE TABLE IF NOT EXISTS `wp_customcontactforms_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style_slug` varchar(30) NOT NULL,
  `input_width` varchar(10) NOT NULL DEFAULT '200px',
  `textarea_width` varchar(10) NOT NULL DEFAULT '200px',
  `textarea_height` varchar(10) NOT NULL DEFAULT '100px',
  `form_borderwidth` varchar(10) NOT NULL DEFAULT '0px',
  `label_width` varchar(10) NOT NULL DEFAULT '200px',
  `form_width` varchar(10) NOT NULL DEFAULT '100%',
  `submit_width` varchar(10) NOT NULL DEFAULT 'auto',
  `submit_height` varchar(10) NOT NULL DEFAULT '40px',
  `label_fontsize` varchar(10) NOT NULL DEFAULT '1em',
  `title_fontsize` varchar(10) NOT NULL DEFAULT '1.2em',
  `field_fontsize` varchar(10) NOT NULL DEFAULT '1.3em',
  `submit_fontsize` varchar(10) NOT NULL DEFAULT '1.1em',
  `field_bordercolor` varchar(10) NOT NULL DEFAULT '999999',
  `form_borderstyle` varchar(30) NOT NULL DEFAULT 'none',
  `form_bordercolor` varchar(20) NOT NULL DEFAULT '',
  `field_fontcolor` varchar(20) NOT NULL DEFAULT '333333',
  `label_fontcolor` varchar(20) NOT NULL DEFAULT '333333',
  `title_fontcolor` varchar(20) NOT NULL DEFAULT '333333',
  `submit_fontcolor` varchar(20) NOT NULL DEFAULT '333333',
  `form_fontfamily` varchar(150) NOT NULL DEFAULT 'Tahoma, Verdana, Arial',
  `field_backgroundcolor` varchar(20) NOT NULL DEFAULT 'f5f5f5',
  `field_borderstyle` varchar(20) NOT NULL DEFAULT 'solid',
  `form_padding` varchar(20) NOT NULL DEFAULT '8px',
  `form_margin` varchar(20) NOT NULL DEFAULT '7px',
  `title_margin` varchar(20) NOT NULL DEFAULT '4px',
  `label_margin` varchar(20) NOT NULL DEFAULT '6px',
  `textarea_backgroundcolor` varchar(20) NOT NULL DEFAULT 'f5f5f5',
  `success_popover_bordercolor` varchar(20) NOT NULL DEFAULT 'efefef',
  `dropdown_width` varchar(20) NOT NULL DEFAULT 'auto',
  `success_popover_fontsize` varchar(20) NOT NULL DEFAULT '12px',
  `submit_background` varchar(200) NOT NULL,
  `submit_background_repeat` varchar(25) NOT NULL,
  `success_popover_title_fontsize` varchar(20) NOT NULL DEFAULT '1.3em',
  `success_popover_height` varchar(20) NOT NULL DEFAULT '200px',
  `success_popover_fontcolor` varchar(20) NOT NULL DEFAULT '333333',
  `success_popover_title_fontcolor` varchar(20) NOT NULL DEFAULT '333333',
  `form_backgroundcolor` varchar(20) NOT NULL DEFAULT 'ffffff',
  `field_borderround` varchar(20) NOT NULL DEFAULT '6px',
  `tooltip_backgroundcolor` varchar(20) NOT NULL DEFAULT '000000',
  `tooltip_fontsize` varchar(20) NOT NULL DEFAULT '12px',
  `tooltip_fontcolor` varchar(20) NOT NULL DEFAULT 'ffffff',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_customcontactforms_user_data`
--

CREATE TABLE IF NOT EXISTS `wp_customcontactforms_user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_time` int(11) NOT NULL DEFAULT '0',
  `data_formid` int(11) NOT NULL,
  `data_formpage` varchar(250) NOT NULL,
  `data_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1159 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpress.local', 'yes'),
(2, 'blogname', 'First wp site', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'loiphamle@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '2', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:4:{i:0;s:33:"addthis/addthis_social_widget.php";i:2;s:53:"facebook-like-box-widget/facebook-like-box-widget.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:43:"visual-form-builder/visual-form-builder.php";}', 'yes'),
(36, 'home', 'http://wordpress.local', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:4:{i:0;s:74:"C:\\wamp\\www\\wordpress/wp-content/plugins/addthis/addthis_social_widget.php";i:2;s:54:"C:\\wamp\\www\\wordpress/wp-content/themes/custom/404.php";i:3;s:56:"C:\\wamp\\www\\wordpress/wp-content/themes/custom/style.css";i:4;s:0:"";}', 'no'),
(44, 'template', 'custom', 'yes'),
(45, 'stylesheet', 'custom', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '25824', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:49:"contact-us-page-contact-people/people-contact.php";s:24:"people_contact_uninstall";}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '63', 'yes'),
(88, 'page_on_front', '102', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '25824', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:74:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"wppa_admin";b:1;s:11:"wppa_upload";b:1;s:11:"wppa_import";b:1;s:13:"wppa_moderate";b:1;s:11:"wppa_export";b:1;s:13:"wppa_settings";b:1;s:9:"wppa_potd";b:1;s:13:"wppa_comments";b:1;s:9:"wppa_help";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:13:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:12:"categories-2";i:2;s:14:"recent-posts-2";i:3;s:10:"archives-2";i:4;s:17:"facebooklikebox-3";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1386858519;a:3:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1386874800;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1386901778;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1386920127;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:41:"https://wordpress.org/wordpress-3.7.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:41:"https://wordpress.org/wordpress-3.7.1.zip";s:10:"no_content";s:52:"https://wordpress.org/wordpress-3.7.1-no-content.zip";s:11:"new_bundled";s:53:"https://wordpress.org/wordpress-3.7.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.7.1";s:7:"version";s:5:"3.7.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1386831796;s:15:"version_checked";s:5:"3.7.1";s:12:"translations";a:0:{}}', 'yes'),
(102, '_transient_random_seed', '38747e7fabbfb1b9207f4a1472238eba', 'yes'),
(103, 'auth_key', '|:}&4JnyS$vY|>^^w*(W<Ix1ZW]a-2+uU[KHvE#yNcSi$K?>o-0rZT^Ulqjt/OEb', 'yes'),
(104, 'auth_salt', '^r_FSUIC}VcvqbRu9,~F[-3n uvpV;*[$_$[o*tD_ue~I!J##R^#MV~~^6C`q*%Q', 'yes'),
(105, 'logged_in_key', 'hkP,Rlb=Ic;.Kab;+4T6jH}ckeE%n|AwE/e1Qke>uM5.g1}XqJk<|$Bj)n%f,r*Z', 'yes'),
(106, 'logged_in_salt', '`.~I<jO}*uy&sk(o;)enax:Q070Lgu7^GwjU-#B@(S|8i?H[NIG&y,O$UFq)/3oo', 'yes'),
(107, 'nonce_key', 'ywXUQ83O(&<Y<MiH f`+A1{7t!2Rg_PgnP>-b~^f8={yL(kxSt2wGJ.FBE%5K4|4', 'yes'),
(108, 'nonce_salt', 'VsXP`l5r52~A.mUgxH=qy~V>#i?gYQi/4J3DL%Sm1KCH%<7mDwB[`BD>$}?;E^[q', 'yes'),
(115, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:22:"http://wordpress.local";s:4:"link";s:98:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://wordpress.local/";s:3:"url";s:131:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://wordpress.local/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(116, 'can_compress_scripts', '1', 'yes'),
(156, 'theme_mods_twentythirteen', 'a:2:{s:16:"header_textcolor";s:6:"220e10";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1386557507;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";N;}}}', 'yes'),
(157, 'current_theme', '', 'yes'),
(158, 'theme_mods_shape', 'a:8:{i:0;b:0;s:16:"header_textcolor";s:6:"e9e0e1";s:16:"background_color";s:6:"e9e0d1";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1386557497;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}}}}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(160, 'theme_mods_twentytwelve', 'a:9:{i:0;b:0;s:16:"header_textcolor";s:6:"515151";s:16:"background_color";s:6:"e6e6e6";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1386824487;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:1:{i:0;s:17:"facebooklikebox-3";}s:9:"sidebar-1";a:4:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";N;}}}', 'yes'),
(178, '_transient_all_the_cool_cats', '1', 'yes'),
(215, 'cpotheme_settings', 'a:16:{s:16:"cpo_core_version";s:5:"1.7.0";s:16:"cpo_core_support";s:32:"http://www.cpothemes.com/support";s:18:"cpo_general_config";s:0:"";s:16:"cpo_general_logo";s:0:"";s:21:"cpo_general_texttitle";s:1:"0";s:21:"cpo_general_analytics";s:0:"";s:17:"cpo_customization";s:0:"";s:15:"cpo_general_css";s:0:"";s:14:"cpo_general_js";s:0:"";s:17:"cpo_layout_config";s:0:"";s:17:"cpo_slider_always";s:1:"0";s:18:"cpo_styling_config";s:0:"";s:16:"cpo_home_tagline";s:0:"";s:18:"cpo_home_portfolio";s:0:"";s:18:"cpo_contact_config";s:0:"";s:17:"cpo_contact_email";s:0:"";}', 'yes'),
(216, 'theme_mods_panoramica', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1385692612;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:16:"blog-widget-area";a:0:{}s:24:"first-footer-widget-area";N;s:25:"second-footer-widget-area";N;s:24:"third-footer-widget-area";N;}}}', 'yes'),
(217, 'woo_framework_version', '5.5.5', 'yes'),
(218, 'theme_mods_swatch', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1385692766;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:0:{}s:7:"primary";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:13:"homepage-left";a:0:{}s:15:"homepage-middle";N;s:14:"homepage-right";N;s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(219, 'woo_options', 'a:1:{s:0:"";N;}', 'yes'),
(220, 'woo_template', 'a:109:{i:0;a:3:{s:4:"name";s:16:"General Settings";s:4:"type";s:7:"heading";s:4:"icon";s:7:"general";}i:1;a:2:{s:4:"name";s:11:"Quick Start";s:4:"type";s:10:"subheading";}i:2;a:6:{s:4:"name";s:16:"Theme Stylesheet";s:4:"desc";s:44:"Select your themes alternative color scheme.";s:2:"id";s:18:"woo_alt_stylesheet";s:3:"std";s:11:"default.css";s:4:"type";s:6:"select";s:7:"options";a:6:{i:0;s:9:"black.css";i:1;s:8:"blue.css";i:2;s:9:"brown.css";i:3;s:11:"default.css";i:4;s:9:"green.css";i:5;s:10:"orange.css";}}i:3;a:5:{s:4:"name";s:11:"Custom Logo";s:4:"desc";s:63:"Upload a logo for your theme, or specify an image URL directly.";s:2:"id";s:8:"woo_logo";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:4;a:6:{s:4:"name";s:10:"Text Title";s:4:"desc";s:150:"Enable text-based Site Title and Tagline. Setup title & tagline in <a href="http://wordpress.local/wp-admin/options-general.php">General Settings</a>.";s:2:"id";s:13:"woo_texttitle";s:3:"std";s:5:"false";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:5;a:6:{s:4:"name";s:10:"Site Title";s:4:"desc";s:33:"Change the site title typography.";s:2:"id";s:19:"woo_font_site_title";s:3:"std";a:5:{s:4:"size";s:2:"70";s:4:"unit";s:2:"px";s:4:"face";s:12:"StMarie-Thin";s:5:"style";s:6:"normal";s:5:"color";s:7:"#3E3E3E";}s:5:"class";s:6:"hidden";s:4:"type";s:10:"typography";}i:6;a:6:{s:4:"name";s:16:"Site Description";s:4:"desc";s:53:"Enable the site description/tagline under site title.";s:2:"id";s:11:"woo_tagline";s:5:"class";s:6:"hidden";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:7;a:6:{s:4:"name";s:16:"Site Description";s:4:"desc";s:39:"Change the site description typography.";s:2:"id";s:16:"woo_font_tagline";s:3:"std";a:5:{s:4:"size";s:2:"26";s:4:"unit";s:2:"px";s:4:"face";s:17:"BergamoStd-Italic";s:5:"style";s:6:"italic";s:5:"color";s:7:"#3E3E3E";}s:5:"class";s:11:"hidden last";s:4:"type";s:10:"typography";}i:8;a:5:{s:4:"name";s:14:"Custom Favicon";s:4:"desc";s:113:"Upload a 16px x 16px <a href="http://www.faviconr.com/">ico image</a> that will represent your website''s favicon.";s:2:"id";s:18:"woo_custom_favicon";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:9;a:5:{s:4:"name";s:13:"Tracking Code";s:4:"desc";s:117:"Paste your Google Analytics (or other) tracking code here. This will be added into the footer template of your theme.";s:2:"id";s:20:"woo_google_analytics";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:10;a:2:{s:4:"name";s:21:"Subscription Settings";s:4:"type";s:10:"subheading";}i:11;a:5:{s:4:"name";s:7:"RSS URL";s:4:"desc";s:51:"Enter your preferred RSS URL. (Feedburner or other)";s:2:"id";s:12:"woo_feed_url";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:12;a:5:{s:4:"name";s:23:"E-Mail Subscription URL";s:4:"desc";s:67:"Enter your preferred E-mail subscription URL. (Feedburner or other)";s:2:"id";s:19:"woo_subscribe_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:13;a:5:{s:4:"name";s:19:"Contact Form E-Mail";s:4:"desc";s:156:"Enter your E-mail address to use on the Contact Form Page Template. Add the contact form by adding a new page and selecting "Contact Form" as page template.";s:2:"id";s:21:"woo_contactform_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:14;a:2:{s:4:"name";s:15:"Display Options";s:4:"type";s:10:"subheading";}i:15;a:5:{s:4:"name";s:10:"Custom CSS";s:4:"desc";s:62:"Quickly add some CSS to your theme by adding it to this block.";s:2:"id";s:14:"woo_custom_css";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:16;a:6:{s:4:"name";s:18:"Post/Page Comments";s:4:"desc";s:68:"Select if you want to enable/disable comments on posts and/or pages.";s:2:"id";s:12:"woo_comments";s:3:"std";s:4:"both";s:4:"type";s:7:"select2";s:7:"options";a:4:{s:4:"post";s:10:"Posts Only";s:4:"page";s:10:"Pages Only";s:4:"both";s:13:"Pages / Posts";s:4:"none";s:4:"None";}}i:17;a:5:{s:4:"name";s:12:"Post Content";s:4:"desc";s:68:"Select if you want to show the full content or the excerpt on posts.";s:2:"id";s:16:"woo_post_content";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:7:"excerpt";s:11:"The Excerpt";s:7:"content";s:12:"Full Content";}}i:18;a:5:{s:4:"name";s:15:"Post Author Box";s:4:"desc";s:149:"This will enable the post author box on the single posts page. Edit description in <a href="http://wordpress.local/wp-admin/profile.php">Profile</a>.";s:2:"id";s:15:"woo_post_author";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:19;a:5:{s:4:"name";s:19:"Display Breadcrumbs";s:4:"desc";s:57:"Display dynamic breadcrumbs on each page of your website.";s:2:"id";s:20:"woo_breadcrumbs_show";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:20;a:5:{s:4:"name";s:16:"Pagination Style";s:4:"desc";s:65:"Select the style of pagination you would like to use on the blog.";s:2:"id";s:19:"woo_pagination_type";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:15:"paginated_links";s:7:"Numbers";s:6:"simple";s:13:"Next/Previous";}}i:21;a:3:{s:4:"name";s:15:"Styling Options";s:4:"type";s:7:"heading";s:4:"icon";s:7:"styling";}i:22;a:2:{s:4:"name";s:10:"Background";s:4:"type";s:10:"subheading";}i:23;a:5:{s:4:"name";s:21:"Body Background Color";s:4:"desc";s:66:"Pick a custom color for background color of the theme e.g. #697e09";s:2:"id";s:14:"woo_body_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:24;a:5:{s:4:"name";s:21:"Body background image";s:4:"desc";s:42:"Upload an image for the theme''s background";s:2:"id";s:12:"woo_body_img";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:25;a:6:{s:4:"name";s:23:"Background image repeat";s:4:"desc";s:56:"Select how you would like to repeat the background-image";s:2:"id";s:15:"woo_body_repeat";s:3:"std";s:9:"no-repeat";s:4:"type";s:6:"select";s:7:"options";a:4:{i:0;s:9:"no-repeat";i:1;s:8:"repeat-x";i:2;s:8:"repeat-y";i:3;s:6:"repeat";}}i:26;a:6:{s:4:"name";s:25:"Background image position";s:4:"desc";s:52:"Select how you would like to position the background";s:2:"id";s:12:"woo_body_pos";s:3:"std";s:3:"top";s:4:"type";s:6:"select";s:7:"options";a:9:{i:0;s:8:"top left";i:1;s:10:"top center";i:2;s:9:"top right";i:3;s:11:"center left";i:4;s:13:"center center";i:5;s:12:"center right";i:6;s:11:"bottom left";i:7;s:13:"bottom center";i:8;s:12:"bottom right";}}i:27;a:2:{s:4:"name";s:5:"Links";s:4:"type";s:10:"subheading";}i:28;a:5:{s:4:"name";s:10:"Link Color";s:4:"desc";s:66:"Pick a custom color for links or add a hex color code e.g. #697e09";s:2:"id";s:14:"woo_link_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:29;a:5:{s:4:"name";s:16:"Link Hover Color";s:4:"desc";s:72:"Pick a custom color for links hover or add a hex color code e.g. #697e09";s:2:"id";s:20:"woo_link_hover_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:30;a:5:{s:4:"name";s:12:"Button Color";s:4:"desc";s:68:"Pick a custom color for buttons or add a hex color code e.g. #697e09";s:2:"id";s:16:"woo_button_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:31;a:3:{s:4:"name";s:10:"Typography";s:4:"type";s:7:"heading";s:4:"icon";s:10:"typography";}i:32;a:5:{s:4:"name";s:24:"Enable Custom Typography";s:4:"desc";s:100:"Enable the use of custom typography for your site. Custom styling will be output in your sites HEAD.";s:2:"id";s:14:"woo_typography";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:33;a:5:{s:4:"name";s:18:"General Typography";s:4:"desc";s:24:"Change the general font.";s:2:"id";s:13:"woo_font_body";s:3:"std";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#444444";}s:4:"type";s:10:"typography";}i:34;a:5:{s:4:"name";s:10:"Navigation";s:4:"desc";s:27:"Change the navigation font.";s:2:"id";s:12:"woo_font_nav";s:3:"std";a:5:{s:4:"size";s:2:"13";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#FFFFFF";}s:4:"type";s:10:"typography";}i:35;a:5:{s:4:"name";s:10:"Post Title";s:4:"desc";s:22:"Change the post title.";s:2:"id";s:19:"woo_font_post_title";s:3:"std";a:5:{s:4:"size";s:2:"30";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:4:"bold";s:5:"color";s:7:"#444444";}s:4:"type";s:10:"typography";}i:36;a:5:{s:4:"name";s:9:"Post Meta";s:4:"desc";s:21:"Change the post meta.";s:2:"id";s:18:"woo_font_post_meta";s:3:"std";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:13:"Lucida Grande";s:5:"style";s:0:"";s:5:"color";s:7:"#444444";}s:4:"type";s:10:"typography";}i:37;a:5:{s:4:"name";s:10:"Post Entry";s:4:"desc";s:22:"Change the post entry.";s:2:"id";s:19:"woo_font_post_entry";s:3:"std";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#444444";}s:4:"type";s:10:"typography";}i:38;a:5:{s:4:"name";s:21:"Sidebar Widget Titles";s:4:"desc";s:33:"Change the sidebar widget titles.";s:2:"id";s:22:"woo_font_widget_titles";s:3:"std";a:5:{s:4:"size";s:2:"16";s:4:"unit";s:2:"px";s:4:"face";s:7:"Georgia";s:5:"style";s:4:"bold";s:5:"color";s:7:"#444444";}s:4:"type";s:10:"typography";}i:39;a:5:{s:4:"name";s:20:"Footer Widget Titles";s:4:"desc";s:32:"Change the footer widget titles.";s:2:"id";s:29:"woo_font_footer_widget_titles";s:3:"std";a:5:{s:4:"size";s:2:"10";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:6:"normal";s:5:"color";s:7:"#AAA8A8";}s:4:"type";s:10:"typography";}i:40;a:3:{s:4:"name";s:14:"Layout Options";s:4:"type";s:7:"heading";s:4:"icon";s:6:"layout";}i:41;a:6:{s:4:"name";s:11:"Main Layout";s:4:"desc";s:43:"Select which layout you want for your site.";s:2:"id";s:15:"woo_site_layout";s:3:"std";s:19:"layout-left-content";s:4:"type";s:6:"images";s:7:"options";a:2:{s:19:"layout-left-content";s:72:"http://wordpress.local/wp-content/themes/swatch/functions/images/2cl.png";s:20:"layout-right-content";s:72:"http://wordpress.local/wp-content/themes/swatch/functions/images/2cr.png";}}i:42;a:5:{s:4:"name";s:27:"Category Exclude - Homepage";s:4:"desc";s:122:"Specify a comma seperated list of category IDs or slugs that you''d like to exclude from your homepage (eg: uncategorized).";s:2:"id";s:21:"woo_exclude_cats_home";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:43;a:5:{s:4:"name";s:37:"Category Exclude - Blog Page Template";s:4:"desc";s:134:"Specify a comma seperated list of category IDs or slugs that you''d like to exclude from your ''Blog'' page template (eg: uncategorized).";s:2:"id";s:21:"woo_exclude_cats_blog";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:44;a:3:{s:4:"name";s:15:"Homepage Slider";s:4:"icon";s:6:"slider";s:4:"type";s:7:"heading";}i:45;a:5:{s:4:"name";s:13:"Enable Slider";s:4:"desc";s:34:"Enable the slider on the homepage.";s:2:"id";s:10:"woo_slider";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:46;a:6:{s:4:"name";s:14:"Slider Entries";s:4:"desc";s:72:"Select the number of entries that should appear in the home page slider.";s:2:"id";s:18:"woo_slider_entries";s:3:"std";s:1:"3";s:4:"type";s:6:"select";s:7:"options";a:20:{i:0;s:16:"Select a number:";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";i:13;s:2:"13";i:14;s:2:"14";i:15;s:2:"15";i:16;s:2:"16";i:17;s:2:"17";i:18;s:2:"18";i:19;s:2:"19";}}i:47;a:5:{s:4:"name";s:6:"Effect";s:4:"desc";s:28:"Select the animation effect.";s:2:"id";s:17:"woo_slider_effect";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:5:"slide";s:5:"Slide";s:4:"fade";s:4:"Fade";}}i:48;a:5:{s:4:"name";s:11:"Hover Pause";s:4:"desc";s:37:"Hovering over slideshow will pause it";s:2:"id";s:16:"woo_slider_hover";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:49;a:6:{s:4:"name";s:15:"Animation Speed";s:4:"desc";s:66:"The time in <b>seconds</b> the animation between frames will take.";s:2:"id";s:16:"woo_slider_speed";s:3:"std";s:3:"0.6";s:4:"type";s:6:"select";s:7:"options";a:21:{i:0;s:3:"0.0";i:1;s:3:"0.1";i:2;s:3:"0.2";i:3;s:3:"0.3";i:4;s:3:"0.4";i:5;s:3:"0.5";i:6;s:3:"0.6";i:7;s:3:"0.7";i:8;s:3:"0.8";i:9;s:3:"0.9";i:10;s:3:"1.0";i:11;s:3:"1.1";i:12;s:3:"1.2";i:13;s:3:"1.3";i:14;s:3:"1.4";i:15;s:3:"1.5";i:16;s:3:"1.6";i:17;s:3:"1.7";i:18;s:3:"1.8";i:19;s:3:"1.9";i:20;s:3:"2.0";}}i:50;a:5:{s:4:"name";s:10:"Auto Start";s:4:"desc";s:46:"Set the slider to start sliding automatically.";s:2:"id";s:15:"woo_slider_auto";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:51;a:6:{s:4:"name";s:19:"Auto Slide Interval";s:4:"desc";s:77:"The time in <b>seconds</b> each slide pauses for, before sliding to the next.";s:2:"id";s:19:"woo_slider_interval";s:3:"std";s:1:"4";s:4:"type";s:6:"select";s:7:"options";a:10:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";i:6;s:1:"7";i:7;s:1:"8";i:8;s:1:"9";i:9;s:2:"10";}}i:52;a:5:{s:4:"name";s:11:"Auto Height";s:4:"desc";s:93:"Set the slider to adjust automatically depending on the height of the current slide contents.";s:2:"id";s:21:"woo_slider_autoheight";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:53;a:5:{s:4:"name";s:32:"Show Title with Image Background";s:4:"desc";s:61:"Show the post title when using an image as slider background.";s:2:"id";s:16:"woo_slider_title";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:54;a:5:{s:4:"name";s:34:"Show Excerpt with Image Background";s:4:"desc";s:63:"Show the post excerpt when using an image as slider background.";s:2:"id";s:18:"woo_slider_content";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:55;a:5:{s:4:"name";s:13:"Next/Previous";s:4:"desc";s:40:"Select to display next/previous buttons.";s:2:"id";s:19:"woo_slider_nextprev";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:56;a:5:{s:4:"name";s:10:"Pagination";s:4:"desc";s:29:"Select to display pagination.";s:2:"id";s:21:"woo_slider_pagination";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:57;a:3:{s:4:"name";s:8:"Homepage";s:4:"type";s:7:"heading";s:4:"icon";s:8:"homepage";}i:58;a:5:{s:4:"name";s:18:"Mini-Features Area";s:4:"desc";s:50:"Enable the front page Mini-Features features area.";s:2:"id";s:17:"woo_mini_features";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:59;a:6:{s:4:"name";s:16:"Homepage Content";s:4:"desc";s:70:"(Optional) Select a page that you''d like to display on the front page.";s:2:"id";s:13:"woo_main_page";s:3:"std";s:14:"Select a page:";s:4:"type";s:7:"select2";s:7:"options";a:3:{i:0;s:14:"Select a Page:";i:2;s:11:"Sample Page";i:4;s:26:"&nbsp;&nbsp;&nbsp;New page";}}i:60;a:3:{s:4:"name";s:18:"Portfolio Settings";s:4:"icon";s:9:"portfolio";s:4:"type";s:7:"heading";}i:61;a:5:{s:4:"name";s:31:"Enable Single Portfolio Gallery";s:4:"desc";s:63:"Enable the gallery feature in the single portfolio page layout.";s:2:"id";s:21:"woo_portfolio_gallery";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:62;a:5:{s:4:"name";s:24:"Portfolio Items URL Base";s:4:"desc";s:172:"The base of all portfolio item URLs (visit the <a href="http://wordpress.local/wp-admin/options-permalink.php">Settings- Permalinks</a> screen after changing this setting).";s:2:"id";s:26:"woo_portfolioitems_rewrite";s:3:"std";s:15:"portfolio-items";s:4:"type";s:4:"text";}i:63;a:5:{s:4:"name";s:47:"Exclude Galleries from the Portfolio Navigation";s:4:"desc";s:162:"Optionally exclude portfolio galleries from the portfolio gallery navigation switcher. Place the gallery slugs here, separated by commas <br />(eg: one,two,three)";s:2:"id";s:24:"woo_portfolio_excludenav";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:64;a:5:{s:4:"name";s:30:"Portfolio Thumbnail Dimensions";s:4:"desc";s:51:"Enter an integer value i.e. 250 for the image size.";s:2:"id";s:30:"woo_portfolio_thumb_dimensions";s:3:"std";s:0:"";s:4:"type";a:2:{i:0;a:4:{s:2:"id";s:25:"woo_portfolio_thumb_width";s:4:"type";s:4:"text";s:3:"std";i:242;s:4:"meta";s:5:"Width";}i:1;a:4:{s:2:"id";s:26:"woo_portfolio_thumb_height";s:4:"type";s:4:"text";s:3:"std";i:160;s:4:"meta";s:6:"Height";}}}i:65;a:5:{s:4:"name";s:43:"Exclude Portfolio Items from Search Results";s:4:"desc";s:65:"Exclude portfolio items from results when searching your website.";s:2:"id";s:27:"woo_portfolio_excludesearch";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:66;a:3:{s:4:"name";s:17:"Feedback Settings";s:4:"icon";s:4:"misc";s:4:"type";s:7:"heading";}i:67;a:5:{s:4:"name";s:24:"Disable Feedback Manager";s:4:"desc";s:35:"Disable the feedback functionality.";s:2:"id";s:20:"woo_feedback_disable";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:68;a:3:{s:4:"name";s:14:"Dynamic Images";s:4:"type";s:7:"heading";s:4:"icon";s:5:"image";}i:69;a:2:{s:4:"name";s:16:"Resizer Settings";s:4:"type";s:10:"subheading";}i:70;a:5:{s:4:"name";s:22:"Dynamic Image Resizing";s:4:"desc";s:0:"";s:2:"id";s:18:"woo_wpthumb_notice";s:3:"std";s:220:"There are two alternative methods of dynamically resizing the thumbnails in the theme, <strong>WP Post Thumbnail</strong> or <strong>TimThumb - Custom Settings panel</strong>. We recommend using WP Post Thumbnail option.";s:4:"type";s:4:"info";}i:71;a:6:{s:4:"name";s:17:"WP Post Thumbnail";s:4:"desc";s:170:"Use WordPress post thumbnail to assign a post thumbnail. Will enable the <strong>Featured Image panel</strong> in your post sidebar where you can assign a post thumbnail.";s:2:"id";s:22:"woo_post_image_support";s:3:"std";s:4:"true";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:72;a:6:{s:4:"name";s:42:"WP Post Thumbnail - Dynamic Image Resizing";s:4:"desc";s:113:"The post thumbnail will be dynamically resized using native WP resize functionality. <em>(Requires PHP 5.2+)</em>";s:2:"id";s:14:"woo_pis_resize";s:3:"std";s:4:"true";s:5:"class";s:6:"hidden";s:4:"type";s:8:"checkbox";}i:73;a:6:{s:4:"name";s:29:"WP Post Thumbnail - Hard Crop";s:4:"desc";s:119:"The post thumbnail will be cropped to match the target aspect ratio (only used if "Dynamic Image Resizing" is enabled).";s:2:"id";s:17:"woo_pis_hard_crop";s:3:"std";s:4:"true";s:5:"class";s:11:"hidden last";s:4:"type";s:8:"checkbox";}i:74;a:5:{s:4:"name";s:32:"TimThumb - Custom Settings Panel";s:4:"desc";s:358:"This will enable the <a href="http://code.google.com/p/timthumb/">TimThumb</a> (thumb.php) script which dynamically resizes images added through the <strong>custom settings panel below the post</strong>. Make sure your themes <em>cache</em> folder is writable. <a href="http://www.woothemes.com/2008/10/troubleshooting-image-resizer-thumbphp/">Need help?</a>";s:2:"id";s:10:"woo_resize";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:75;a:2:{s:4:"name";s:18:"Thumbnail Settings";s:4:"type";s:10:"subheading";}i:76;a:5:{s:4:"name";s:25:"Automatic Image Thumbnail";s:4:"desc";s:81:"If no thumbnail is specifified then the first uploaded image in the post is used.";s:2:"id";s:12:"woo_auto_img";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:77;a:5:{s:4:"name";s:26:"Thumbnail Image Dimensions";s:4:"desc";s:109:"Enter an integer value i.e. 250 for the desired size which will be used when dynamically creating the images.";s:2:"id";s:20:"woo_image_dimensions";s:3:"std";s:0:"";s:4:"type";a:2:{i:0;a:4:{s:2:"id";s:11:"woo_thumb_w";s:4:"type";s:4:"text";s:3:"std";i:100;s:4:"meta";s:5:"Width";}i:1;a:4:{s:2:"id";s:11:"woo_thumb_h";s:4:"type";s:4:"text";s:3:"std";i:100;s:4:"meta";s:6:"Height";}}}i:78;a:6:{s:4:"name";s:25:"Thumbnail Image alignment";s:4:"desc";s:47:"Select how to align your thumbnails with posts.";s:2:"id";s:15:"woo_thumb_align";s:3:"std";s:10:"alignright";s:4:"type";s:5:"radio";s:7:"options";a:3:{s:9:"alignleft";s:4:"Left";s:10:"alignright";s:5:"Right";s:11:"aligncenter";s:6:"Center";}}i:79;a:6:{s:4:"name";s:30:"Show thumbnail in Single Posts";s:4:"desc";s:48:"Show the attached image in the single post page.";s:2:"id";s:16:"woo_thumb_single";s:5:"class";s:9:"collapsed";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:80;a:6:{s:4:"name";s:23:"Single Image Dimensions";s:4:"desc";s:70:""Enter an integer value i.e. 250 for the image size. Max width is 576.";s:2:"id";s:20:"woo_image_dimensions";s:3:"std";s:0:"";s:5:"class";s:11:"hidden last";s:4:"type";a:2:{i:0;a:4:{s:2:"id";s:12:"woo_single_w";s:4:"type";s:4:"text";s:3:"std";i:200;s:4:"meta";s:5:"Width";}i:1;a:4:{s:2:"id";s:12:"woo_single_h";s:4:"type";s:4:"text";s:3:"std";i:200;s:4:"meta";s:6:"Height";}}}i:81;a:7:{s:4:"name";s:27:"Single Post Image alignment";s:4:"desc";s:53:"Select how to align your thumbnail with single posts.";s:2:"id";s:22:"woo_thumb_single_align";s:3:"std";s:10:"alignright";s:4:"type";s:5:"radio";s:5:"class";s:6:"hidden";s:7:"options";a:3:{s:9:"alignleft";s:4:"Left";s:10:"alignright";s:5:"Right";s:11:"aligncenter";s:6:"Center";}}i:82;a:5:{s:4:"name";s:25:"Add thumbnail to RSS feed";s:4:"desc";s:68:"Add the the image uploaded via your Custom Settings to your RSS feed";s:2:"id";s:13:"woo_rss_thumb";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:83;a:5:{s:4:"name";s:15:"Enable Lightbox";s:4:"desc";s:78:"Enable the PrettyPhoto lighbox script on images within your website''s content.";s:2:"id";s:19:"woo_enable_lightbox";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:84;a:3:{s:4:"name";s:20:"Footer Customization";s:4:"type";s:7:"heading";s:4:"icon";s:6:"footer";}i:85;a:6:{s:4:"name";s:19:"Footer Widget Areas";s:4:"desc";s:56:"Select how many footer widget areas you want to display.";s:2:"id";s:19:"woo_footer_sidebars";s:3:"std";s:1:"4";s:4:"type";s:6:"images";s:7:"options";a:5:{i:0;s:79:"http://wordpress.local/wp-content/themes/swatch/functions/images/layout-off.png";i:1;s:85:"http://wordpress.local/wp-content/themes/swatch/functions/images/footer-widgets-1.png";i:2;s:85:"http://wordpress.local/wp-content/themes/swatch/functions/images/footer-widgets-2.png";i:3;s:85:"http://wordpress.local/wp-content/themes/swatch/functions/images/footer-widgets-3.png";i:4;s:85:"http://wordpress.local/wp-content/themes/swatch/functions/images/footer-widgets-4.png";}}i:86;a:5:{s:4:"name";s:21:"Custom Affiliate Link";s:4:"desc";s:71:"Add an affiliate link to the WooThemes logo in the footer of the theme.";s:2:"id";s:19:"woo_footer_aff_link";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:87;a:5:{s:4:"name";s:27:"Enable Custom Footer (Left)";s:4:"desc";s:58:"Activate to add the custom text below to the theme footer.";s:2:"id";s:15:"woo_footer_left";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:88;a:5:{s:4:"name";s:18:"Custom Text (Left)";s:4:"desc";s:66:"Custom HTML and Text that will appear in the footer of your theme.";s:2:"id";s:20:"woo_footer_left_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:89;a:5:{s:4:"name";s:28:"Enable Custom Footer (Right)";s:4:"desc";s:58:"Activate to add the custom text below to the theme footer.";s:2:"id";s:16:"woo_footer_right";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:90;a:5:{s:4:"name";s:19:"Custom Text (Right)";s:4:"desc";s:66:"Custom HTML and Text that will appear in the footer of your theme.";s:2:"id";s:21:"woo_footer_right_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:91;a:3:{s:4:"name";s:19:"Subscribe & Connect";s:4:"type";s:7:"heading";s:4:"icon";s:7:"connect";}i:92;a:2:{s:4:"name";s:5:"Setup";s:4:"type";s:10:"subheading";}i:93;a:5:{s:4:"name";s:40:"Enable Subscribe & Connect - Single Post";s:4:"desc";s:161:"Enable the subscribe & connect area on single posts. You can also add this as a <a href="http://wordpress.local/wp-admin/widgets.php">widget</a> in your sidebar.";s:2:"id";s:11:"woo_connect";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:94;a:5:{s:4:"name";s:15:"Subscribe Title";s:4:"desc";s:57:"Enter the title to show in your subscribe & connect area.";s:2:"id";s:17:"woo_connect_title";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:95;a:5:{s:4:"name";s:4:"Text";s:4:"desc";s:37:"Change the default text in this area.";s:2:"id";s:19:"woo_connect_content";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:96;a:5:{s:4:"name";s:20:"Enable Related Posts";s:4:"desc";s:158:"Enable related posts in the subscribe area. Uses posts with the same <strong>tags</strong> to find related posts. Note: Will not show in the Subscribe widget.";s:2:"id";s:19:"woo_connect_related";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:97;a:2:{s:4:"name";s:18:"Subscribe Settings";s:4:"type";s:10:"subheading";}i:98;a:5:{s:4:"name";s:35:"Subscribe By E-mail ID (Feedburner)";s:4:"desc";s:162:"Enter your <a href="http://www.woothemes.com/tutorials/how-to-find-your-feedburner-id-for-email-subscription/">Feedburner ID</a> for the e-mail subscription form.";s:2:"id";s:25:"woo_connect_newsletter_id";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:99;a:5:{s:4:"name";s:32:"Subscribe By E-mail to MailChimp";s:4:"desc";s:189:"If you have a MailChimp account you can enter the <a href="http://woochimp.heroku.com" target="_blank">MailChimp List Subscribe URL</a> to allow your users to subscribe to a MailChimp List.";s:2:"id";s:30:"woo_connect_mailchimp_list_url";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:100;a:2:{s:4:"name";s:16:"Connect Settings";s:4:"type";s:10:"subheading";}i:101;a:5:{s:4:"name";s:10:"Enable RSS";s:4:"desc";s:34:"Enable the subscribe and RSS icon.";s:2:"id";s:15:"woo_connect_rss";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:102;a:5:{s:4:"name";s:11:"Twitter URL";s:4:"desc";s:99:"Enter your  <a href="http://www.twitter.com/">Twitter</a> URL e.g. http://www.twitter.com/woothemes";s:2:"id";s:19:"woo_connect_twitter";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:103;a:5:{s:4:"name";s:12:"Facebook URL";s:4:"desc";s:102:"Enter your  <a href="http://www.facebook.com/">Facebook</a> URL e.g. http://www.facebook.com/woothemes";s:2:"id";s:20:"woo_connect_facebook";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:104;a:5:{s:4:"name";s:11:"YouTube URL";s:4:"desc";s:99:"Enter your  <a href="http://www.youtube.com/">YouTube</a> URL e.g. http://www.youtube.com/woothemes";s:2:"id";s:19:"woo_connect_youtube";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:105;a:5:{s:4:"name";s:10:"Flickr URL";s:4:"desc";s:96:"Enter your  <a href="http://www.flickr.com/">Flickr</a> URL e.g. http://www.flickr.com/woothemes";s:2:"id";s:18:"woo_connect_flickr";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:106;a:5:{s:4:"name";s:12:"LinkedIn URL";s:4:"desc";s:113:"Enter your  <a href="http://www.www.linkedin.com.com/">LinkedIn</a> URL e.g. http://www.linkedin.com/in/woothemes";s:2:"id";s:20:"woo_connect_linkedin";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:107;a:5:{s:4:"name";s:13:"Delicious URL";s:4:"desc";s:104:"Enter your <a href="http://www.delicious.com/">Delicious</a> URL e.g. http://www.delicious.com/woothemes";s:2:"id";s:21:"woo_connect_delicious";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:108;a:5:{s:4:"name";s:11:"Google+ URL";s:4:"desc";s:112:"Enter your <a href="http://plus.google.com/">Google+</a> URL e.g. https://plus.google.com/104560124403688998123/";s:2:"id";s:22:"woo_connect_googleplus";s:3:"std";s:0:"";s:4:"type";s:4:"text";}}', 'yes'),
(221, 'woo_themename', 'Swatch', 'yes'),
(222, 'woo_shortname', 'woo', 'yes'),
(223, 'woo_manual', 'http://www.woothemes.com/support/theme-documentation/swatch/', 'yes'),
(224, 'woo_custom_template', 'a:18:{i:0;a:4:{s:4:"name";s:15:"portfolio-image";s:5:"label";s:15:"Portfolio Image";s:4:"type";s:6:"upload";s:4:"desc";s:55:"Upload an image or enter an URL to your portfolio image";}i:1;a:5:{s:4:"name";s:5:"embed";s:3:"std";s:0:"";s:5:"label";s:16:"Video Embed Code";s:4:"type";s:8:"textarea";s:4:"desc";s:103:"Enter the video embed code for your video (YouTube, Vimeo or similar). Will show instead of your image.";}s:20:"lightbox-description";a:4:{s:4:"name";s:20:"lightbox-description";s:5:"label";s:27:"Custom Lightbox Description";s:4:"type";s:8:"textarea";s:4:"desc";s:264:"Enter an optional description to show in the <a href="http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/">PrettyPhoto lightbox</a> for this portfolio item. This will be the description for all items in the gallery, if one is available.";}s:12:"lightbox-url";a:4:{s:4:"name";s:12:"lightbox-url";s:5:"label";s:12:"Lightbox URL";s:4:"type";s:4:"text";s:4:"desc";s:176:"Enter an optional URL to show in the <a href="http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/">PrettyPhoto lightbox</a> for this portfolio item.";}s:11:"testimonial";a:4:{s:4:"name";s:11:"testimonial";s:5:"label";s:11:"Testimonial";s:4:"type";s:8:"textarea";s:4:"desc";s:81:"Enter a testimonial from your client to be displayed on the single portfolio page";}s:18:"testimonial_author";a:4:{s:4:"name";s:18:"testimonial_author";s:5:"label";s:18:"Testimonial Author";s:4:"type";s:4:"text";s:4:"desc";s:63:"Enter the name of the author of the testimonial e.g. Joe Bloggs";}i:2;a:4:{s:4:"name";s:3:"url";s:5:"label";s:3:"URL";s:4:"type";s:4:"text";s:4:"desc";s:42:"Enter URL of your clients site. (optional)";}i:3;a:4:{s:4:"name";s:5:"image";s:5:"label";s:5:"Image";s:4:"type";s:6:"upload";s:4:"desc";s:32:"Upload an image or enter an URL.";}i:4;a:5:{s:4:"name";s:5:"embed";s:3:"std";s:0:"";s:5:"label";s:16:"Video Embed Code";s:4:"type";s:8:"textarea";s:4:"desc";s:69:"Enter the video embed code for your video (YouTube, Vimeo or similar)";}i:5;a:4:{s:4:"name";s:5:"image";s:5:"label";s:11:"Slide Image";s:4:"type";s:6:"upload";s:4:"desc";s:51:"Upload an image or enter an URL to your slide image";}i:6;a:5:{s:4:"name";s:5:"embed";s:3:"std";s:0:"";s:5:"label";s:16:"Video Embed Code";s:4:"type";s:8:"textarea";s:4:"desc";s:103:"Enter the video embed code for your video (YouTube, Vimeo or similar). Will show instead of your image.";}i:7;a:4:{s:4:"name";s:3:"url";s:5:"label";s:3:"URL";s:4:"type";s:4:"text";s:4:"desc";s:79:"Enter URL if you want to add a link to the uploaded image and title. (optional)";}i:8;a:4:{s:4:"name";s:4:"mini";s:5:"label";s:18:"Mini-features Icon";s:4:"type";s:6:"upload";s:4:"desc";s:92:"Upload icon for use with the Mini-Feature on the homepage (optimal size: 32x32px) (optional)";}i:9;a:4:{s:4:"name";s:12:"mini_excerpt";s:5:"label";s:21:"Mini-features Excerpt";s:4:"type";s:8:"textarea";s:4:"desc";s:44:"Enter the text to show in your Mini-Feature.";}i:10;a:5:{s:4:"name";s:13:"mini_readmore";s:3:"std";s:0:"";s:5:"label";s:17:"Mini-features URL";s:4:"type";s:4:"text";s:4:"desc";s:80:"Add an URL for your Read More button in your Mini-Feature on homepage (optional)";}s:15:"feedback_author";a:4:{s:4:"name";s:15:"feedback_author";s:5:"label";s:15:"Feedback Author";s:4:"type";s:4:"text";s:4:"desc";s:60:"Enter the name of the author of the feedback e.g. Joe Bloggs";}s:12:"feedback_url";a:4:{s:4:"name";s:12:"feedback_url";s:5:"label";s:12:"Feedback URL";s:4:"type";s:4:"text";s:4:"desc";s:77:"(optional) Enter the URL to the feedback author e.g. http://www.woothemes.com";}i:11;a:6:{s:4:"name";s:7:"_layout";s:3:"std";s:6:"normal";s:5:"label";s:6:"Layout";s:4:"type";s:6:"images";s:4:"desc";s:54:"Select the layout you want on this specific post/page.";s:7:"options";a:4:{s:14:"layout-default";s:79:"http://wordpress.local/wp-content/themes/swatch/functions/images/layout-off.png";s:11:"layout-full";s:71:"http://wordpress.local/wp-content/themes/swatch/functions/images/1c.png";s:19:"layout-left-content";s:72:"http://wordpress.local/wp-content/themes/swatch/functions/images/2cl.png";s:20:"layout-right-content";s:72:"http://wordpress.local/wp-content/themes/swatch/functions/images/2cr.png";}}}', 'yes'),
(225, '_transient_timeout_wooframework_version_data', '1385779016', 'no'),
(226, '_transient_wooframework_version_data', 'a:2:{s:7:"version";s:5:"5.5.5";s:11:"is_critical";b:0;}', 'no'),
(227, '_transient_timeout_woo_framework_critical_update', '1386902216', 'no'),
(228, '_transient_woo_framework_critical_update', '1', 'no'),
(229, '_transient_timeout_woo_framework_critical_update_data', '1386902216', 'no'),
(230, '_transient_woo_framework_critical_update_data', 'a:3:{s:9:"is_update";b:0;s:7:"version";s:5:"1.0.0";s:6:"status";s:4:"none";}', 'no'),
(318, '_transient_timeout_plugin_slugs', '1386926083', 'no'),
(320, '_transient_plugin_slugs', 'a:6:{i:0;s:33:"addthis/addthis_social_widget.php";i:1;s:19:"akismet/akismet.php";i:2;s:53:"facebook-like-box-widget/facebook-like-box-widget.php";i:3;s:9:"hello.php";i:4;s:23:"ml-slider/ml-slider.php";i:5;s:43:"visual-form-builder/visual-form-builder.php";}', 'no'),
(323, 'theme_mods_custom', 'a:7:{s:16:"header_textcolor";s:6:"515151";s:16:"background_color";s:6:"e6e6e6";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:0;}}', 'yes'),
(337, 'recently_activated', 'a:7:{s:45:"custom-contact-forms/custom-contact-forms.php";i:1386839677;s:51:"simple-social-bookmarks/simple-social-bookmarks.php";i:1386664141;s:23:"getsocial/getsocial.php";i:1386664017;s:49:"contact-us-page-contact-people/people-contact.php";i:1386658294;s:44:"slideshow-jquery-image-gallery/slideshow.php";i:1386650907;s:31:"wp-socializer/wp-socializer.php";i:1386646461;s:28:"wp-photo-album-plus/wppa.php";i:1386573832;}', 'yes'),
(338, 'wppa_revision', '5203', 'yes'),
(340, 'wppa_prevrev', '100', 'yes'),
(341, 'wppa_i_responsive', '', 'yes'),
(342, 'wppa_i_downsize', '', 'yes'),
(343, 'wppa_i_userupload', '', 'yes'),
(344, 'wppa_i_rating', '', 'yes'),
(345, 'wppa_i_comment', '', 'yes'),
(346, 'wppa_i_share', '', 'yes'),
(347, 'wppa_i_iptc', '', 'yes'),
(348, 'wppa_i_exif', '', 'yes'),
(349, 'wppa_i_done', '', 'yes'),
(350, 'wppa_colwidth', '640', 'yes'),
(351, 'wppa_resize_on_upload', 'no', 'yes'),
(352, 'wppa_resize_to', '0', 'yes'),
(353, 'wppa_min_thumbs', '1', 'yes'),
(354, 'wppa_bwidth', '1', 'yes'),
(355, 'wppa_bradius', '6', 'yes'),
(356, 'wppa_box_spacing', '8', 'yes'),
(357, 'wppa_fullsize', '640', 'yes'),
(358, 'wppa_maxheight', '480', 'yes'),
(359, 'wppa_enlarge', 'no', 'yes'),
(360, 'wppa_fullimage_border_width', '', 'yes'),
(361, 'wppa_numbar_max', '10', 'yes'),
(362, 'wppa_share_size', '32', 'yes'),
(363, 'wppa_mini_treshold', '500', 'yes'),
(364, 'wppa_slideshow_pagesize', '0', 'yes'),
(365, 'wppa_thumbsize', '100', 'yes'),
(366, 'wppa_thumbsize_alt', '130', 'yes'),
(367, 'wppa_thumb_aspect', '0:0:none', 'yes'),
(368, 'wppa_tf_width', '100', 'yes'),
(369, 'wppa_tf_width_alt', '130', 'yes'),
(370, 'wppa_tf_height', '150', 'yes'),
(371, 'wppa_tf_height_alt', '180', 'yes'),
(372, 'wppa_tn_margin', '4', 'yes'),
(373, 'wppa_thumb_auto', 'yes', 'yes'),
(374, 'wppa_thumb_page_size', '0', 'yes'),
(375, 'wppa_popupsize', '150', 'yes'),
(376, 'wppa_use_thumbs_if_fit', 'yes', 'yes'),
(377, 'wppa_max_cover_width', '1024', 'yes'),
(378, 'wppa_text_frame_height', '54', 'yes'),
(379, 'wppa_smallsize', '150', 'yes'),
(380, 'wppa_smallsize_multi', '100', 'yes'),
(381, 'wppa_coversize_is_height', 'no', 'yes'),
(382, 'wppa_album_page_size', '0', 'yes'),
(383, 'wppa_rating_max', '5', 'yes'),
(384, 'wppa_rating_prec', '2', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(385, 'wppa_gravatar_size', '40', 'yes'),
(386, 'wppa_ratspacing', '30', 'yes'),
(387, 'wppa_topten_count', '10', 'yes'),
(388, 'wppa_topten_size', '86', 'yes'),
(389, 'wppa_comten_count', '10', 'yes'),
(390, 'wppa_comten_size', '86', 'yes'),
(391, 'wppa_featen_count', '10', 'yes'),
(392, 'wppa_featen_size', '86', 'yes'),
(393, 'wppa_thumbnail_widget_count', '10', 'yes'),
(394, 'wppa_thumbnail_widget_size', '86', 'yes'),
(395, 'wppa_lasten_count', '10', 'yes'),
(396, 'wppa_lasten_size', '86', 'yes'),
(397, 'wppa_album_widget_count', '10', 'yes'),
(398, 'wppa_album_widget_size', '86', 'yes'),
(399, 'wppa_related_count', '10', 'yes'),
(400, 'wppa_ovl_txt_lines', 'auto', 'yes'),
(401, 'wppa_magnifier', 'magnifier-small.png', 'yes'),
(402, 'wppa_show_bread_posts', 'yes', 'yes'),
(403, 'wppa_show_bread_pages', 'yes', 'yes'),
(404, 'wppa_bc_on_search', 'yes', 'yes'),
(405, 'wppa_bc_on_topten', 'yes', 'yes'),
(406, 'wppa_bc_on_lasten', 'yes', 'yes'),
(407, 'wppa_bc_on_comten', 'yes', 'yes'),
(408, 'wppa_bc_on_featen', 'yes', 'yes'),
(409, 'wppa_bc_on_tag', 'yes', 'yes'),
(410, 'wppa_bc_on_related', 'yes', 'yes'),
(411, 'wppa_show_home', 'yes', 'yes'),
(412, 'wppa_show_page', 'yes', 'yes'),
(413, 'wppa_bc_separator', 'raquo', 'yes'),
(414, 'wppa_bc_txt', '&lt;span style=&quot;color:red; font_size:24px;&quot;&gt;&amp;bull;&lt;/span&gt;', 'yes'),
(415, 'wppa_bc_url', 'http://wordpress.local/wp-content/plugins/wp-photo-album-plus/images/arrow.gif', 'yes'),
(416, 'wppa_pagelink_pos', 'bottom', 'yes'),
(417, 'wppa_bc_slide_thumblink', 'no', 'yes'),
(418, 'wppa_show_startstop_navigation', 'yes', 'yes'),
(419, 'wppa_show_browse_navigation', 'yes', 'yes'),
(420, 'wppa_filmstrip', 'yes', 'yes'),
(421, 'wppa_film_show_glue', 'yes', 'yes'),
(422, 'wppa_show_full_name', 'yes', 'yes'),
(423, 'wppa_show_full_owner', 'no', 'yes'),
(424, 'wppa_show_full_desc', 'yes', 'yes'),
(425, 'wppa_hide_when_empty', 'no', 'yes'),
(426, 'wppa_rating_on', 'yes', 'yes'),
(427, 'wppa_dislike_mail_every', '5', 'yes'),
(428, 'wppa_dislike_set_pending', '0', 'yes'),
(429, 'wppa_dislike_delete', '0', 'yes'),
(430, 'wppa_dislike_show_count', 'yes', 'yes'),
(431, 'wppa_rating_display_type', 'graphic', 'yes'),
(432, 'wppa_show_avg_rating', 'yes', 'yes'),
(433, 'wppa_show_comments', 'yes', 'yes'),
(434, 'wppa_comment_gravatar', 'none', 'yes'),
(435, 'wppa_comment_gravatar_url', 'http://', 'yes'),
(436, 'wppa_show_bbb', 'no', 'yes'),
(437, 'wppa_custom_on', 'no', 'yes'),
(438, 'wppa_custom_content', '<div style="color:red; font-size:24px; font-weight:bold; text-align:center;">Hello world!</div>', 'yes'),
(439, 'wppa_show_slideshownumbar', 'no', 'yes'),
(440, 'wppa_show_iptc', 'no', 'yes'),
(441, 'wppa_show_iptc_open', 'no', 'yes'),
(442, 'wppa_show_exif', 'no', 'yes'),
(443, 'wppa_show_exif_open', 'no', 'yes'),
(444, 'wppa_copyright_on', 'yes', 'yes'),
(445, 'wppa_copyright_notice', '<span style="color:red" >Warning: Do not upload copyrighted material!</span>', 'yes'),
(446, 'wppa_share_on', 'no', 'yes'),
(447, 'wppa_share_on_widget', 'no', 'yes'),
(448, 'wppa_share_on_thumbs', 'no', 'yes'),
(449, 'wppa_share_qr', 'no', 'yes'),
(450, 'wppa_share_facebook', 'yes', 'yes'),
(451, 'wppa_share_twitter', 'yes', 'yes'),
(452, 'wppa_share_hyves', 'yes', 'yes'),
(453, 'wppa_share_google', 'yes', 'yes'),
(454, 'wppa_share_pinterest', 'yes', 'yes'),
(455, 'wppa_share_linkedin', 'yes', 'yes'),
(456, 'wppa_facebook_comments', 'yes', 'yes'),
(457, 'wppa_facebook_like', 'yes', 'yes'),
(458, 'wppa_facebook_admin_id', '', 'yes'),
(459, 'wppa_facebook_app_id', '', 'yes'),
(460, 'wppa_load_facebook_sdk', 'yes', 'yes'),
(461, 'wppa_share_single_image', 'yes', 'yes'),
(462, 'wppa_thumb_text_name', 'yes', 'yes'),
(463, 'wppa_thumb_text_owner', 'no', 'yes'),
(464, 'wppa_thumb_text_desc', 'yes', 'yes'),
(465, 'wppa_thumb_text_rating', 'yes', 'yes'),
(466, 'wppa_thumb_text_viewcount', 'no', 'yes'),
(467, 'wppa_popup_text_name', 'yes', 'yes'),
(468, 'wppa_popup_text_desc', 'yes', 'yes'),
(469, 'wppa_popup_text_desc_strip', 'no', 'yes'),
(470, 'wppa_popup_text_rating', 'yes', 'yes'),
(471, 'wppa_popup_text_ncomments', 'yes', 'yes'),
(472, 'wppa_show_rating_count', 'no', 'yes'),
(473, 'wppa_albdesc_on_thumbarea', 'none', 'yes'),
(474, 'wppa_albname_on_thumbarea', 'none', 'yes'),
(475, 'wppa_show_cover_text', 'yes', 'yes'),
(476, 'wppa_enable_slideshow', 'yes', 'yes'),
(477, 'wppa_show_slideshowbrowselink', 'yes', 'yes'),
(478, 'wppa_show_viewlink', 'yes', 'yes'),
(479, 'wppa_show_treecount', 'no', 'yes'),
(480, 'wppa_skip_empty_albums', 'yes', 'yes'),
(481, 'wppa_show_bbb_widget', 'no', 'yes'),
(482, 'wppa_show_albwidget_tooltip', 'yes', 'yes'),
(483, 'wppa_ovl_close_txt', 'CLOSE', 'yes'),
(484, 'wppa_ovl_theme', 'black', 'yes'),
(485, 'wppa_ovl_slide_name', 'no', 'yes'),
(486, 'wppa_ovl_slide_desc', 'yes', 'yes'),
(487, 'wppa_ovl_thumb_name', 'yes', 'yes'),
(488, 'wppa_ovl_thumb_desc', 'no', 'yes'),
(489, 'wppa_ovl_potd_name', 'yes', 'yes'),
(490, 'wppa_ovl_potd_desc', 'no', 'yes'),
(491, 'wppa_ovl_sphoto_name', 'yes', 'yes'),
(492, 'wppa_ovl_sphoto_desc', 'no', 'yes'),
(493, 'wppa_ovl_mphoto_name', 'yes', 'yes'),
(494, 'wppa_ovl_mphoto_desc', 'no', 'yes'),
(495, 'wppa_ovl_alw_name', 'yes', 'yes'),
(496, 'wppa_ovl_alw_desc', 'no', 'yes'),
(497, 'wppa_ovl_cover_name', 'yes', 'yes'),
(498, 'wppa_ovl_cover_desc', 'no', 'yes'),
(499, 'wppa_ovl_show_counter', 'yes', 'yes'),
(500, 'wppa_show_zoomin', 'yes', 'yes'),
(501, 'wppa_bgcolor_even', '#eeeeee', 'yes'),
(502, 'wppa_bcolor_even', '#cccccc', 'yes'),
(503, 'wppa_bgcolor_alt', '#dddddd', 'yes'),
(504, 'wppa_bcolor_alt', '#bbbbbb', 'yes'),
(505, 'wppa_bgcolor_nav', '#dddddd', 'yes'),
(506, 'wppa_bcolor_nav', '#bbbbbb', 'yes'),
(507, 'wppa_bgcolor_namedesc', '#dddddd', 'yes'),
(508, 'wppa_bcolor_namedesc', '#bbbbbb', 'yes'),
(509, 'wppa_bgcolor_com', '#dddddd', 'yes'),
(510, 'wppa_bcolor_com', '#bbbbbb', 'yes'),
(511, 'wppa_bgcolor_img', '#eeeeee', 'yes'),
(512, 'wppa_bcolor_img', '', 'yes'),
(513, 'wppa_bgcolor_fullimg', '#cccccc', 'yes'),
(514, 'wppa_bcolor_fullimg', '#777777', 'yes'),
(515, 'wppa_bgcolor_cus', '#dddddd', 'yes'),
(516, 'wppa_bcolor_cus', '#bbbbbb', 'yes'),
(517, 'wppa_bgcolor_numbar', '#cccccc', 'yes'),
(518, 'wppa_bcolor_numbar', '#cccccc', 'yes'),
(519, 'wppa_bgcolor_numbar_active', '#333333', 'yes'),
(520, 'wppa_bcolor_numbar_active', '#333333', 'yes'),
(521, 'wppa_bgcolor_iptc', '#dddddd', 'yes'),
(522, 'wppa_bcolor_iptc', '#bbbbbb', 'yes'),
(523, 'wppa_bgcolor_exif', '#dddddd', 'yes'),
(524, 'wppa_bcolor_exif', '#bbbbbb', 'yes'),
(525, 'wppa_bgcolor_share', '#dddddd', 'yes'),
(526, 'wppa_bcolor_share', '#bbbbbb', 'yes'),
(527, 'wppa_bgcolor_upload', '#dddddd', 'yes'),
(528, 'wppa_bcolor_upload', '#bbbbbb', 'yes'),
(529, 'wppa_bgcolor_multitag', '#dddddd', 'yes'),
(530, 'wppa_bcolor_multitag', '#bbbbbb', 'yes'),
(531, 'wppa_bgcolor_tagcloud', '#dddddd', 'yes'),
(532, 'wppa_bcolor_tagcloud', '#bbbbbb', 'yes'),
(533, 'wppa_allow_ajax', 'no', 'yes'),
(534, 'wppa_ajax_non_admin', 'no', 'yes'),
(535, 'wppa_use_photo_names_in_urls', 'no', 'yes'),
(536, 'wppa_use_pretty_links', 'no', 'yes'),
(537, 'wppa_update_addressline', 'yes', 'yes'),
(538, 'wppa_render_shortcode_always', 'no', 'yes'),
(539, 'wppa_track_viewcounts', 'yes', 'yes'),
(540, 'wppa_fullvalign', 'fit', 'yes'),
(541, 'wppa_fullhalign', 'center', 'yes'),
(542, 'wppa_start_slide', 'run', 'yes'),
(543, 'wppa_start_slideonly', 'yes', 'yes'),
(544, 'wppa_animation_type', 'fadeover', 'yes'),
(545, 'wppa_slideshow_timeout', '2500', 'yes'),
(546, 'wppa_animation_speed', '800', 'yes'),
(547, 'wppa_slide_pause', 'no', 'yes'),
(548, 'wppa_slide_wrap', 'yes', 'yes'),
(549, 'wppa_fulldesc_align', 'center', 'yes'),
(550, 'wppa_clean_pbr', 'yes', 'yes'),
(551, 'wppa_run_wppautop_on_desc', 'no', 'yes'),
(552, 'wppa_auto_open_comments', 'yes', 'yes'),
(553, 'wppa_film_hover_goto', 'no', 'yes'),
(554, 'wppa_slide_swipe', 'yes', 'yes'),
(555, 'wppa_list_photos_by', '0', 'yes'),
(556, 'wppa_list_photos_desc', 'no', 'yes'),
(557, 'wppa_thumbtype', 'default', 'yes'),
(558, 'wppa_thumbphoto_left', 'no', 'yes'),
(559, 'wppa_valign', 'center', 'yes'),
(560, 'wppa_use_thumb_opacity', 'yes', 'yes'),
(561, 'wppa_thumb_opacity', '85', 'yes'),
(562, 'wppa_use_thumb_popup', 'yes', 'yes'),
(563, 'wppa_list_albums_by', '0', 'yes'),
(564, 'wppa_list_albums_desc', 'no', 'yes'),
(565, 'wppa_coverphoto_pos', 'right', 'yes'),
(566, 'wppa_use_cover_opacity', 'yes', 'yes'),
(567, 'wppa_cover_opacity', '85', 'yes'),
(568, 'wppa_cover_type', 'default', 'yes'),
(569, 'wppa_imgfact_count', '10', 'yes'),
(570, 'wppa_rating_login', 'yes', 'yes'),
(571, 'wppa_rating_change', 'yes', 'yes'),
(572, 'wppa_rating_multi', 'no', 'yes'),
(573, 'wppa_dislike_value', '-5', 'yes'),
(574, 'wppa_next_on_callback', 'no', 'yes'),
(575, 'wppa_star_opacity', '20', 'yes'),
(576, 'wppa_vote_button_text', 'Vote for me!', 'yes'),
(577, 'wppa_voted_button_text', 'Voted for me', 'yes'),
(578, 'wppa_vote_thumb', 'no', 'yes'),
(579, 'wppa_comment_login', 'no', 'yes'),
(580, 'wppa_comments_desc', 'no', 'yes'),
(581, 'wppa_comment_moderation', 'logout', 'yes'),
(582, 'wppa_comment_email_required', 'yes', 'yes'),
(583, 'wppa_comment_notify', 'none', 'yes'),
(584, 'wppa_comment_notify_added', 'yes', 'yes'),
(585, 'wppa_comten_alt_display', 'no', 'yes'),
(586, 'wppa_comten_alt_thumbsize', '75', 'yes'),
(587, 'wppa_comment_smiley_picker', 'no', 'yes'),
(588, 'wppa_ovl_opacity', '80', 'yes'),
(589, 'wppa_ovl_onclick', 'none', 'yes'),
(590, 'wppa_ovl_anim', '300', 'yes'),
(591, 'wppa_ovl_chrome_at_top', 'yes', 'yes'),
(592, 'wppa_lightbox_global', 'no', 'yes'),
(593, 'wppa_fontfamily_title', '', 'yes'),
(594, 'wppa_fontsize_title', '', 'yes'),
(595, 'wppa_fontcolor_title', '', 'yes'),
(596, 'wppa_fontweight_title', 'bold', 'yes'),
(597, 'wppa_fontfamily_fulldesc', '', 'yes'),
(598, 'wppa_fontsize_fulldesc', '', 'yes'),
(599, 'wppa_fontcolor_fulldesc', '', 'yes'),
(600, 'wppa_fontweight_fulldesc', 'normal', 'yes'),
(601, 'wppa_fontfamily_fulltitle', '', 'yes'),
(602, 'wppa_fontsize_fulltitle', '', 'yes'),
(603, 'wppa_fontcolor_fulltitle', '', 'yes'),
(604, 'wppa_fontweight_fulltitle', 'normal', 'yes'),
(605, 'wppa_fontfamily_nav', '', 'yes'),
(606, 'wppa_fontsize_nav', '', 'yes'),
(607, 'wppa_fontcolor_nav', '', 'yes'),
(608, 'wppa_fontweight_nav', 'normal', 'yes'),
(609, 'wppa_fontfamily_thumb', '', 'yes'),
(610, 'wppa_fontsize_thumb', '', 'yes'),
(611, 'wppa_fontcolor_thumb', '', 'yes'),
(612, 'wppa_fontweight_thumb', 'normal', 'yes'),
(613, 'wppa_fontfamily_box', '', 'yes'),
(614, 'wppa_fontsize_box', '', 'yes'),
(615, 'wppa_fontcolor_box', '', 'yes'),
(616, 'wppa_fontweight_box', 'normal', 'yes'),
(617, 'wppa_fontfamily_numbar', '', 'yes'),
(618, 'wppa_fontsize_numbar', '', 'yes'),
(619, 'wppa_fontcolor_numbar', '#777777', 'yes'),
(620, 'wppa_fontweight_numbar', 'normal', 'yes'),
(621, 'wppa_fontfamily_numbar_active', '', 'yes'),
(622, 'wppa_fontsize_numbar_active', '', 'yes'),
(623, 'wppa_fontcolor_numbar_active', '#777777', 'yes'),
(624, 'wppa_fontweight_numbar_active', 'bold', 'yes'),
(625, 'wppa_fontfamily_lightbox', '', 'yes'),
(626, 'wppa_fontsize_lightbox', '10', 'yes'),
(627, 'wppa_fontcolor_lightbox', '', 'yes'),
(628, 'wppa_fontweight_lightbox', 'bold', 'yes'),
(629, 'wppa_fontsize_widget_thumb', '9', 'yes'),
(630, 'wppa_sphoto_linktype', 'photo', 'yes'),
(631, 'wppa_sphoto_linkpage', '0', 'yes'),
(632, 'wppa_sphoto_blank', 'no', 'yes'),
(633, 'wppa_sphoto_overrule', 'no', 'yes'),
(634, 'wppa_mphoto_linktype', 'photo', 'yes'),
(635, 'wppa_mphoto_linkpage', '0', 'yes'),
(636, 'wppa_mphoto_blank', 'no', 'yes'),
(637, 'wppa_mphoto_overrule', 'no', 'yes'),
(638, 'wppa_thumb_linktype', 'photo', 'yes'),
(639, 'wppa_thumb_linkpage', '0', 'yes'),
(640, 'wppa_thumb_blank', 'no', 'yes'),
(641, 'wppa_thumb_overrule', 'no', 'yes'),
(642, 'wppa_topten_widget_linktype', 'photo', 'yes'),
(643, 'wppa_topten_widget_linkpage', '0', 'yes'),
(644, 'wppa_topten_blank', 'no', 'yes'),
(645, 'wppa_topten_overrule', 'no', 'yes'),
(646, 'wppa_featen_widget_linktype', 'photo', 'yes'),
(647, 'wppa_featen_widget_linkpage', '0', 'yes'),
(648, 'wppa_featen_blank', 'no', 'yes'),
(649, 'wppa_featen_overrule', 'no', 'yes'),
(650, 'wppa_slideonly_widget_linktype', 'widget', 'yes'),
(651, 'wppa_slideonly_widget_linkpage', '0', 'yes'),
(652, 'wppa_sswidget_blank', 'no', 'yes'),
(653, 'wppa_sswidget_overrule', 'no', 'yes'),
(654, 'wppa_widget_linktype', 'album', 'yes'),
(655, 'wppa_widget_linkpage', '0', 'yes'),
(656, 'wppa_potd_blank', 'no', 'yes'),
(657, 'wppa_potdwidget_overrule', 'no', 'yes'),
(658, 'wppa_coverimg_linktype', 'same', 'yes'),
(659, 'wppa_coverimg_linkpage', '0', 'yes'),
(660, 'wppa_coverimg_blank', 'no', 'yes'),
(661, 'wppa_coverimg_overrule', 'no', 'yes'),
(662, 'wppa_comment_widget_linktype', 'photo', 'yes'),
(663, 'wppa_comment_widget_linkpage', '0', 'yes'),
(664, 'wppa_comment_blank', 'no', 'yes'),
(665, 'wppa_comment_overrule', 'no', 'yes'),
(666, 'wppa_slideshow_linktype', 'none', 'yes'),
(667, 'wppa_slideshow_linkpage', '0', 'yes'),
(668, 'wppa_slideshow_blank', 'no', 'yes'),
(669, 'wppa_slideshow_overrule', 'no', 'yes'),
(670, 'wppa_thumbnail_widget_linktype', 'photo', 'yes'),
(671, 'wppa_thumbnail_widget_linkpage', '0', 'yes'),
(672, 'wppa_thumbnail_widget_overrule', 'no', 'yes'),
(673, 'wppa_thumbnail_widget_blank', 'no', 'yes'),
(674, 'wppa_film_linktype', 'slideshow', 'yes'),
(675, 'wppa_lasten_widget_linktype', 'photo', 'yes'),
(676, 'wppa_lasten_widget_linkpage', '0', 'yes'),
(677, 'wppa_lasten_blank', 'no', 'yes'),
(678, 'wppa_lasten_overrule', 'no', 'yes'),
(679, 'wppa_art_monkey_link', 'none', 'yes'),
(680, 'wppa_art_monkey_popup_link', 'file', 'yes'),
(681, 'wppa_artmonkey_use_source', 'no', 'yes'),
(682, 'wppa_album_widget_linktype', 'content', 'yes'),
(683, 'wppa_album_widget_linkpage', '0', 'yes'),
(684, 'wppa_album_widget_blank', 'no', 'yes'),
(685, 'wppa_tagcloud_linktype', 'album', 'yes'),
(686, 'wppa_tagcloud_linkpage', '0', 'yes'),
(687, 'wppa_tagcloud_blank', 'no', 'yes'),
(688, 'wppa_multitag_linktype', 'album', 'yes'),
(689, 'wppa_multitag_linkpage', '0', 'yes'),
(690, 'wppa_multitag_blank', 'no', 'yes'),
(691, 'wppa_super_view_linkpage', '0', 'yes'),
(692, 'wppa_upldr_widget_linkpage', '0', 'yes'),
(693, 'wppa_user_upload_login', 'yes', 'yes'),
(694, 'wppa_owner_only', 'no', 'yes'),
(695, 'wppa_user_upload_on', 'no', 'yes'),
(696, 'wppa_upload_moderate', 'no', 'yes'),
(697, 'wppa_upload_edit', 'no', 'yes'),
(698, 'wppa_upload_notify', 'no', 'yes'),
(699, 'wppa_upload_backend_notify', 'no', 'yes'),
(700, 'wppa_upload_one_only', 'no', 'yes'),
(701, 'wppa_memcheck_frontend', 'yes', 'yes'),
(702, 'wppa_memcheck_admin', 'yes', 'yes'),
(703, 'wppa_comment_captcha', 'no', 'yes'),
(704, 'wppa_spam_maxage', 'none', 'yes'),
(705, 'wppa_editor_upload_limit_count', '0', 'yes'),
(706, 'wppa_editor_upload_limit_time', '0', 'yes'),
(707, 'wppa_author_upload_limit_count', '0', 'yes'),
(708, 'wppa_author_upload_limit_time', '0', 'yes'),
(709, 'wppa_contributor_upload_limit_count', '0', 'yes'),
(710, 'wppa_contributor_upload_limit_time', '0', 'yes'),
(711, 'wppa_subscriber_upload_limit_count', '0', 'yes'),
(712, 'wppa_subscriber_upload_limit_time', '0', 'yes'),
(713, 'wppa_loggedout_upload_limit_count', '0', 'yes'),
(714, 'wppa_loggedout_upload_limit_time', '0', 'yes'),
(715, 'wppa_setup', '', 'yes'),
(716, 'wppa_backup', '', 'yes'),
(717, 'wppa_load_skin', '', 'yes'),
(718, 'wppa_skinfile', 'default', 'yes'),
(719, 'wppa_regen', '', 'yes'),
(720, 'wppa_rerate', '', 'yes'),
(721, 'wppa_cleanup', '', 'yes'),
(722, 'wppa_recup', '', 'yes'),
(723, 'wppa_file_system', 'flat', 'yes'),
(724, 'wppa_rating_clear', 'no', 'yes'),
(725, 'wppa_iptc_clear', '', 'yes'),
(726, 'wppa_exif_clear', '', 'yes'),
(727, 'wppa_apply_new_photodesc_all', '', 'yes'),
(728, 'wppa_remake_index', '', 'yes'),
(729, 'wppa_extend_index', '', 'yes'),
(730, 'wppa_list_index', '', 'yes'),
(731, 'wppa_append_text', '', 'yes'),
(732, 'wppa_append_to_photodesc', '', 'yes'),
(733, 'wppa_remove_text', '', 'yes'),
(734, 'wppa_remove_from_photodesc', '', 'yes'),
(735, 'wppa_remove_empty_albums', '', 'yes'),
(736, 'wppa_html', 'yes', 'yes'),
(737, 'wppa_check_balance', 'no', 'yes'),
(738, 'wppa_allow_debug', 'no', 'yes'),
(739, 'wppa_filter_priority', '1001', 'yes'),
(740, 'wppa_lightbox_name', 'wppa', 'yes'),
(741, 'wppa_allow_foreign_shortcodes', 'no', 'yes'),
(742, 'wppa_allow_foreign_shortcodes_thumbs', 'no', 'yes'),
(743, 'wppa_arrow_color', 'black', 'yes'),
(744, 'wppa_meta_page', 'yes', 'yes'),
(745, 'wppa_meta_all', 'yes', 'yes'),
(746, 'wppa_use_wp_editor', 'no', 'yes'),
(747, 'wppa_hier_albsel', 'no', 'yes'),
(748, 'wppa_hier_pagesel', 'no', 'yes'),
(749, 'wppa_alt_type', 'fullname', 'yes'),
(750, 'wppa_photo_admin_pagesize', '20', 'yes'),
(751, 'wppa_comment_admin_pagesize', '10', 'yes'),
(752, 'wppa_jpeg_quality', '95', 'yes'),
(753, 'wppa_geo_edit', 'no', 'yes'),
(754, 'wppa_auto_continue', 'yes', 'yes'),
(755, 'wppa_max_execution_time', '30', 'yes'),
(756, 'wppa_adminbarmenu_admin', 'yes', 'yes'),
(757, 'wppa_adminbarmenu_frontend', 'yes', 'yes'),
(758, 'wppa_feed_use_thumb', 'no', 'yes'),
(759, 'wppa_og_tags_on', 'yes', 'yes'),
(760, 'wppa_add_shortcode_to_post', 'no', 'yes'),
(761, 'wppa_shortcode_to_add', '[wppa type="album" album="#related,desc"][/wppa]', 'yes'),
(762, 'wppa_max_album_newtime', '0', 'yes'),
(763, 'wppa_max_photo_newtime', '0', 'yes'),
(764, 'wppa_apply_newphoto_desc', 'no', 'yes'),
(765, 'wppa_apply_newphoto_desc_user', 'no', 'yes'),
(766, 'wppa_newphoto_description', '\r\n<a onClick="jQuery(''.wppa-dtl'').css(''display'', ''block''); jQuery(''.wppa-more'').css(''display'', ''none''); wppaOvlResize();">\r\n<div class="wppa-more">\r\nCamera info\r\n</div>\r\n</a>\r\n<a onClick="jQuery(''.wppa-dtl'').css(''display'', ''none''); jQuery(''.wppa-more'').css(''display'', ''block''); wppaOvlResize();">\r\n<div class="wppa-dtl" style="display:none;" >\r\nHide Camera info\r\n</div>\r\n</a>\r\n<div class="wppa-dtl" style="display:none;">\r\n<br />\r\n<style>\r\n.wppa-label { padding: 0 3px !important; border: none !important; }\r\n.wppa-value { padding: 0 3px 0 12px !important; border:none !important; }\r\n</style>\r\n<table style="margin:0; border:none;" >\r\n<tr><td class="wppa-label" >Date Time</td><td class="wppa-value" >E#0132</td></tr>\r\n<tr><td class="wppa-label" >Camera</td><td class="wppa-value" >E#0110</td></tr>\r\n<tr><td class="wppa-label" >Focal length</td><td class="wppa-value" >E#920A</td></tr>\r\n<tr><td class="wppa-label" >F-Stop</td><td class="wppa-value" >E#829D</td></tr>\r\n<tr><td class="wppa-label" >ISO Speed Rating</td><td class="wppa-value" >E#8827</td></tr>\r\n<tr><td class="wppa-label" >Exposure program</td><td class="wppa-value" >E#8822</td></tr>\r\n<tr><td class="wppa-label" >Metering mode</td><td class="wppa-value" >E#9207</td></tr>\r\n<tr><td class="wppa-label" >Flash</td><td class="wppa-value" >E#9209</td></tr>\r\n</table>\r\n</div>', 'yes'),
(767, 'wppa_upload_limit_count', '0', 'yes'),
(768, 'wppa_upload_limit_time', '0', 'yes'),
(769, 'wppa_show_album_full', 'yes', 'yes'),
(770, 'wppa_grant_an_album', 'no', 'yes'),
(771, 'wppa_grant_name', 'display', 'yes'),
(772, 'wppa_grant_parent', '0', 'yes'),
(773, 'wppa_max_albums', '0', 'yes'),
(774, 'wppa_alt_is_restricted', 'no', 'yes'),
(775, 'wppa_link_is_restricted', 'no', 'yes'),
(776, 'wppa_covertype_is_restricted', 'no', 'yes'),
(777, 'wppa_porder_restricted', 'no', 'yes'),
(778, 'wppa_strip_file_ext', 'no', 'yes'),
(779, 'wppa_copy_timestamp', 'no', 'yes'),
(780, 'wppa_search_linkpage', '0', 'yes'),
(781, 'wppa_excl_sep', 'no', 'yes'),
(782, 'wppa_search_tags', 'no', 'yes'),
(783, 'wppa_photos_only', 'no', 'yes'),
(784, 'wppa_indexed_search', 'no', 'yes'),
(785, 'wppa_max_search_photos', '250', 'yes'),
(786, 'wppa_max_search_albums', '25', 'yes'),
(787, 'wppa_tags_or_only', 'no', 'yes'),
(788, 'wppa_wild_front', 'no', 'yes'),
(789, 'wppa_watermark_on', 'no', 'yes'),
(790, 'wppa_watermark_user', 'no', 'yes'),
(791, 'wppa_watermark_file', 'specimen.png', 'yes'),
(792, 'wppa_watermark_pos', 'cencen', 'yes'),
(793, 'wppa_watermark_upload', '', 'yes'),
(794, 'wppa_watermark_opacity', '20', 'yes'),
(795, 'wppa_slide_order', '0,1,2,3,4,5,6,7,8,9,10', 'yes'),
(796, 'wppa_slide_order_split', '0,1,2,3,4,5,6,7,8,9,10,11', 'yes'),
(797, 'wppa_swap_namedesc', 'no', 'yes'),
(798, 'wppa_split_namedesc', 'no', 'yes'),
(799, 'wppa_cp_points_comment', '0', 'yes'),
(800, 'wppa_cp_points_rating', '0', 'yes'),
(801, 'wppa_cp_points_upload', '0', 'yes'),
(802, 'wppa_use_scabn', 'no', 'yes'),
(803, 'wppa_gpx_shortcode', '[map style="width: auto; height:300px; margin:0; " marker="yes" lat="w#lat" lon="w#lon"]', 'yes'),
(804, 'wppa_widgettitle', 'Photo of the day', 'yes'),
(805, 'wppa_widget_linkurl', 'Type your custom url here', 'yes'),
(806, 'wppa_widget_linktitle', 'Type the title here', 'yes'),
(807, 'wppa_widget_subtitle', 'none', 'yes'),
(808, 'wppa_widget_album', '0', 'yes'),
(809, 'wppa_widget_photo', '', 'yes'),
(810, 'wppa_potd_align', 'center', 'yes'),
(811, 'wppa_widget_method', '1', 'yes'),
(812, 'wppa_widget_period', '168', 'yes'),
(813, 'wppa_widget_width', '200', 'yes'),
(814, 'wppa_toptenwidgettitle', 'Top Ten Photos', 'yes'),
(815, 'wppa_thumbnailwidgettitle', 'Thumbnail Photos', 'yes'),
(816, 'wppa_searchwidgettitle', 'Search photos', 'yes'),
(817, 'wppa_comadmin_show', 'all', 'yes'),
(818, 'wppa_comadmin_order', 'timestamp', 'yes'),
(819, 'wppa_qr_size', '200', 'yes'),
(820, 'wppa_qr_color', '#000000', 'yes'),
(821, 'wppa_qr_bgcolor', '#FFFFFF', 'yes'),
(822, 'wppa_keep_source_admin', 'no', 'yes'),
(823, 'wppa_keep_source_frontend', 'no', 'yes'),
(824, 'wppa_source_dir', 'C:\\wamp\\www\\wordpress/wp-content/uploads/wppa-source', 'yes'),
(825, 'wppa_keep_sync', 'yes', 'yes'),
(826, 'wppa_remake_add', 'yes', 'yes'),
(827, 'wppa_save_iptc', 'yes', 'yes'),
(828, 'wppa_save_exif', 'yes', 'yes'),
(829, 'wppa_exif_max_array_size', '10', 'yes'),
(830, 'wppa_chgsrc_is_restricted', 'no', 'yes'),
(831, 'wppa_newpag_create', 'no', 'yes'),
(832, 'wppa_newpag_content', '[wppa type="cover" album="w#album" align="center"][/wppa]', 'yes'),
(833, 'wppa_newpag_type', 'page', 'yes'),
(834, 'wppa_newpag_status', 'publish', 'yes'),
(835, 'wppa_cdn_service', '', 'yes'),
(836, 'wppa_cdn_cloud_name', '', 'yes'),
(837, 'wppa_cdn_api_key', '', 'yes'),
(838, 'wppa_cdn_api_secret', '', 'yes'),
(839, 'wppa_cdn_service_update', 'no', 'yes'),
(840, 'wppa_delete_all_from_cloudinary', '', 'yes'),
(841, 'wppa_cached_options', 'a:502:{s:13:"wppa_revision";s:4:"5203";s:12:"wppa_prevrev";s:3:"100";s:17:"wppa_i_responsive";s:0:"";s:15:"wppa_i_downsize";s:0:"";s:17:"wppa_i_userupload";s:0:"";s:13:"wppa_i_rating";s:0:"";s:14:"wppa_i_comment";s:0:"";s:12:"wppa_i_share";s:0:"";s:11:"wppa_i_iptc";s:0:"";s:11:"wppa_i_exif";s:0:"";s:11:"wppa_i_done";s:0:"";s:13:"wppa_colwidth";s:3:"640";s:21:"wppa_resize_on_upload";b:0;s:14:"wppa_resize_to";s:1:"0";s:15:"wppa_min_thumbs";s:1:"1";s:11:"wppa_bwidth";s:1:"1";s:12:"wppa_bradius";s:1:"6";s:16:"wppa_box_spacing";s:1:"8";s:13:"wppa_fullsize";s:3:"640";s:14:"wppa_maxheight";s:3:"480";s:12:"wppa_enlarge";b:0;s:27:"wppa_fullimage_border_width";s:0:"";s:15:"wppa_numbar_max";s:2:"10";s:15:"wppa_share_size";s:2:"32";s:18:"wppa_mini_treshold";s:3:"500";s:23:"wppa_slideshow_pagesize";s:1:"0";s:14:"wppa_thumbsize";s:3:"100";s:18:"wppa_thumbsize_alt";s:3:"130";s:17:"wppa_thumb_aspect";s:8:"0:0:none";s:13:"wppa_tf_width";s:3:"100";s:17:"wppa_tf_width_alt";s:3:"130";s:14:"wppa_tf_height";s:3:"150";s:18:"wppa_tf_height_alt";s:3:"180";s:14:"wppa_tn_margin";s:1:"4";s:15:"wppa_thumb_auto";b:1;s:20:"wppa_thumb_page_size";s:1:"0";s:14:"wppa_popupsize";s:3:"150";s:22:"wppa_use_thumbs_if_fit";b:1;s:20:"wppa_max_cover_width";s:4:"1024";s:22:"wppa_text_frame_height";s:2:"54";s:14:"wppa_smallsize";s:3:"150";s:20:"wppa_smallsize_multi";s:3:"100";s:24:"wppa_coversize_is_height";b:0;s:20:"wppa_album_page_size";s:1:"0";s:15:"wppa_rating_max";s:1:"5";s:16:"wppa_rating_prec";s:1:"2";s:18:"wppa_gravatar_size";s:2:"40";s:15:"wppa_ratspacing";s:2:"30";s:17:"wppa_topten_count";s:2:"10";s:16:"wppa_topten_size";s:2:"86";s:17:"wppa_comten_count";s:2:"10";s:16:"wppa_comten_size";s:2:"86";s:17:"wppa_featen_count";s:2:"10";s:16:"wppa_featen_size";s:2:"86";s:27:"wppa_thumbnail_widget_count";s:2:"10";s:26:"wppa_thumbnail_widget_size";s:2:"86";s:17:"wppa_lasten_count";s:2:"10";s:16:"wppa_lasten_size";s:2:"86";s:23:"wppa_album_widget_count";s:2:"10";s:22:"wppa_album_widget_size";s:2:"86";s:18:"wppa_related_count";s:2:"10";s:18:"wppa_ovl_txt_lines";s:4:"auto";s:14:"wppa_magnifier";s:19:"magnifier-small.png";s:21:"wppa_show_bread_posts";b:1;s:21:"wppa_show_bread_pages";b:1;s:17:"wppa_bc_on_search";b:1;s:17:"wppa_bc_on_topten";b:1;s:17:"wppa_bc_on_lasten";b:1;s:17:"wppa_bc_on_comten";b:1;s:17:"wppa_bc_on_featen";b:1;s:14:"wppa_bc_on_tag";b:1;s:18:"wppa_bc_on_related";b:1;s:14:"wppa_show_home";b:1;s:14:"wppa_show_page";b:1;s:17:"wppa_bc_separator";s:5:"raquo";s:11:"wppa_bc_txt";s:80:"&lt;span style=&quot;color:red; font_size:24px;&quot;&gt;&amp;bull;&lt;/span&gt;";s:11:"wppa_bc_url";s:78:"http://wordpress.local/wp-content/plugins/wp-photo-album-plus/images/arrow.gif";s:17:"wppa_pagelink_pos";s:6:"bottom";s:23:"wppa_bc_slide_thumblink";b:0;s:30:"wppa_show_startstop_navigation";b:1;s:27:"wppa_show_browse_navigation";b:1;s:14:"wppa_filmstrip";b:1;s:19:"wppa_film_show_glue";b:1;s:19:"wppa_show_full_name";b:1;s:20:"wppa_show_full_owner";b:0;s:19:"wppa_show_full_desc";b:1;s:20:"wppa_hide_when_empty";b:0;s:14:"wppa_rating_on";b:1;s:23:"wppa_dislike_mail_every";s:1:"5";s:24:"wppa_dislike_set_pending";s:1:"0";s:19:"wppa_dislike_delete";s:1:"0";s:23:"wppa_dislike_show_count";b:1;s:24:"wppa_rating_display_type";s:7:"graphic";s:20:"wppa_show_avg_rating";b:1;s:18:"wppa_show_comments";b:1;s:21:"wppa_comment_gravatar";s:4:"none";s:25:"wppa_comment_gravatar_url";s:7:"http://";s:13:"wppa_show_bbb";b:0;s:14:"wppa_custom_on";b:0;s:19:"wppa_custom_content";s:95:"<div style="color:red; font-size:24px; font-weight:bold; text-align:center;">Hello world!</div>";s:25:"wppa_show_slideshownumbar";b:0;s:14:"wppa_show_iptc";b:0;s:19:"wppa_show_iptc_open";b:0;s:14:"wppa_show_exif";b:0;s:19:"wppa_show_exif_open";b:0;s:17:"wppa_copyright_on";b:1;s:21:"wppa_copyright_notice";s:76:"<span style="color:red" >Warning: Do not upload copyrighted material!</span>";s:13:"wppa_share_on";b:0;s:20:"wppa_share_on_widget";b:0;s:20:"wppa_share_on_thumbs";b:0;s:13:"wppa_share_qr";b:0;s:19:"wppa_share_facebook";b:1;s:18:"wppa_share_twitter";b:1;s:16:"wppa_share_hyves";b:1;s:17:"wppa_share_google";b:1;s:20:"wppa_share_pinterest";b:1;s:19:"wppa_share_linkedin";b:1;s:22:"wppa_facebook_comments";b:1;s:18:"wppa_facebook_like";b:1;s:22:"wppa_facebook_admin_id";s:0:"";s:20:"wppa_facebook_app_id";s:0:"";s:22:"wppa_load_facebook_sdk";b:1;s:23:"wppa_share_single_image";b:1;s:20:"wppa_thumb_text_name";b:1;s:21:"wppa_thumb_text_owner";b:0;s:20:"wppa_thumb_text_desc";b:1;s:22:"wppa_thumb_text_rating";b:1;s:20:"wppa_popup_text_name";b:1;s:20:"wppa_popup_text_desc";b:1;s:26:"wppa_popup_text_desc_strip";b:0;s:22:"wppa_popup_text_rating";b:1;s:25:"wppa_popup_text_ncomments";b:1;s:22:"wppa_show_rating_count";b:0;s:25:"wppa_thumb_text_viewcount";b:0;s:25:"wppa_albdesc_on_thumbarea";s:4:"none";s:25:"wppa_albname_on_thumbarea";s:4:"none";s:20:"wppa_show_cover_text";b:1;s:21:"wppa_enable_slideshow";b:1;s:29:"wppa_show_slideshowbrowselink";b:1;s:18:"wppa_show_viewlink";b:1;s:19:"wppa_show_treecount";b:0;s:22:"wppa_skip_empty_albums";b:1;s:20:"wppa_show_bbb_widget";b:0;s:27:"wppa_show_albwidget_tooltip";b:1;s:18:"wppa_ovl_close_txt";s:5:"CLOSE";s:14:"wppa_ovl_theme";s:5:"black";s:19:"wppa_ovl_slide_name";b:0;s:19:"wppa_ovl_slide_desc";b:1;s:19:"wppa_ovl_thumb_name";b:1;s:19:"wppa_ovl_thumb_desc";b:0;s:18:"wppa_ovl_potd_name";b:1;s:18:"wppa_ovl_potd_desc";b:0;s:20:"wppa_ovl_sphoto_name";b:1;s:20:"wppa_ovl_sphoto_desc";b:0;s:20:"wppa_ovl_mphoto_name";b:1;s:20:"wppa_ovl_mphoto_desc";b:0;s:17:"wppa_ovl_alw_name";b:1;s:17:"wppa_ovl_alw_desc";b:0;s:19:"wppa_ovl_cover_name";b:1;s:19:"wppa_ovl_cover_desc";b:0;s:16:"wppa_show_zoomin";b:1;s:21:"wppa_ovl_show_counter";b:1;s:17:"wppa_bgcolor_even";s:7:"#eeeeee";s:16:"wppa_bcolor_even";s:7:"#cccccc";s:16:"wppa_bgcolor_alt";s:7:"#dddddd";s:15:"wppa_bcolor_alt";s:7:"#bbbbbb";s:16:"wppa_bgcolor_nav";s:7:"#dddddd";s:15:"wppa_bcolor_nav";s:7:"#bbbbbb";s:21:"wppa_bgcolor_namedesc";s:7:"#dddddd";s:20:"wppa_bcolor_namedesc";s:7:"#bbbbbb";s:16:"wppa_bgcolor_com";s:7:"#dddddd";s:15:"wppa_bcolor_com";s:7:"#bbbbbb";s:16:"wppa_bgcolor_img";s:7:"#eeeeee";s:15:"wppa_bcolor_img";s:0:"";s:20:"wppa_bgcolor_fullimg";s:7:"#cccccc";s:19:"wppa_bcolor_fullimg";s:7:"#777777";s:16:"wppa_bgcolor_cus";s:7:"#dddddd";s:15:"wppa_bcolor_cus";s:7:"#bbbbbb";s:19:"wppa_bgcolor_numbar";s:7:"#cccccc";s:18:"wppa_bcolor_numbar";s:7:"#cccccc";s:26:"wppa_bgcolor_numbar_active";s:7:"#333333";s:25:"wppa_bcolor_numbar_active";s:7:"#333333";s:17:"wppa_bgcolor_iptc";s:7:"#dddddd";s:16:"wppa_bcolor_iptc";s:7:"#bbbbbb";s:17:"wppa_bgcolor_exif";s:7:"#dddddd";s:16:"wppa_bcolor_exif";s:7:"#bbbbbb";s:18:"wppa_bgcolor_share";s:7:"#dddddd";s:17:"wppa_bcolor_share";s:7:"#bbbbbb";s:19:"wppa_bgcolor_upload";s:7:"#dddddd";s:18:"wppa_bcolor_upload";s:7:"#bbbbbb";s:21:"wppa_bgcolor_multitag";s:7:"#dddddd";s:20:"wppa_bcolor_multitag";s:7:"#bbbbbb";s:21:"wppa_bgcolor_tagcloud";s:7:"#dddddd";s:20:"wppa_bcolor_tagcloud";s:7:"#bbbbbb";s:15:"wppa_allow_ajax";b:0;s:19:"wppa_ajax_non_admin";b:0;s:28:"wppa_use_photo_names_in_urls";b:0;s:21:"wppa_use_pretty_links";b:0;s:23:"wppa_update_addressline";b:1;s:28:"wppa_render_shortcode_always";b:0;s:21:"wppa_track_viewcounts";b:1;s:15:"wppa_fullvalign";s:3:"fit";s:15:"wppa_fullhalign";s:6:"center";s:16:"wppa_start_slide";s:3:"run";s:20:"wppa_start_slideonly";b:1;s:19:"wppa_animation_type";s:8:"fadeover";s:22:"wppa_slideshow_timeout";s:4:"2500";s:20:"wppa_animation_speed";s:3:"800";s:16:"wppa_slide_pause";b:0;s:15:"wppa_slide_wrap";b:1;s:19:"wppa_fulldesc_align";s:6:"center";s:14:"wppa_clean_pbr";b:1;s:25:"wppa_run_wppautop_on_desc";b:0;s:23:"wppa_auto_open_comments";b:1;s:20:"wppa_film_hover_goto";b:0;s:16:"wppa_slide_swipe";b:1;s:19:"wppa_list_photos_by";s:1:"0";s:21:"wppa_list_photos_desc";b:0;s:14:"wppa_thumbtype";s:7:"default";s:20:"wppa_thumbphoto_left";b:0;s:11:"wppa_valign";s:6:"center";s:22:"wppa_use_thumb_opacity";b:1;s:18:"wppa_thumb_opacity";s:2:"85";s:20:"wppa_use_thumb_popup";b:1;s:19:"wppa_list_albums_by";s:1:"0";s:21:"wppa_list_albums_desc";b:0;s:19:"wppa_coverphoto_pos";s:5:"right";s:22:"wppa_use_cover_opacity";b:1;s:18:"wppa_cover_opacity";s:2:"85";s:15:"wppa_cover_type";s:7:"default";s:18:"wppa_imgfact_count";s:2:"10";s:17:"wppa_rating_login";b:1;s:18:"wppa_rating_change";b:1;s:17:"wppa_rating_multi";b:0;s:18:"wppa_dislike_value";s:2:"-5";s:21:"wppa_next_on_callback";b:0;s:17:"wppa_star_opacity";s:2:"20";s:21:"wppa_vote_button_text";s:12:"Vote for me!";s:22:"wppa_voted_button_text";s:12:"Voted for me";s:15:"wppa_vote_thumb";b:0;s:18:"wppa_comment_login";b:0;s:18:"wppa_comments_desc";b:0;s:23:"wppa_comment_moderation";s:6:"logout";s:27:"wppa_comment_email_required";b:1;s:19:"wppa_comment_notify";s:4:"none";s:25:"wppa_comment_notify_added";b:1;s:23:"wppa_comten_alt_display";b:0;s:25:"wppa_comten_alt_thumbsize";s:2:"75";s:26:"wppa_comment_smiley_picker";b:0;s:16:"wppa_ovl_opacity";s:2:"80";s:16:"wppa_ovl_onclick";s:4:"none";s:13:"wppa_ovl_anim";s:3:"300";s:22:"wppa_ovl_chrome_at_top";b:1;s:20:"wppa_lightbox_global";b:0;s:21:"wppa_fontfamily_title";s:0:"";s:19:"wppa_fontsize_title";s:0:"";s:20:"wppa_fontcolor_title";s:0:"";s:21:"wppa_fontweight_title";s:4:"bold";s:24:"wppa_fontfamily_fulldesc";s:0:"";s:22:"wppa_fontsize_fulldesc";s:0:"";s:23:"wppa_fontcolor_fulldesc";s:0:"";s:24:"wppa_fontweight_fulldesc";s:6:"normal";s:25:"wppa_fontfamily_fulltitle";s:0:"";s:23:"wppa_fontsize_fulltitle";s:0:"";s:24:"wppa_fontcolor_fulltitle";s:0:"";s:25:"wppa_fontweight_fulltitle";s:6:"normal";s:19:"wppa_fontfamily_nav";s:0:"";s:17:"wppa_fontsize_nav";s:0:"";s:18:"wppa_fontcolor_nav";s:0:"";s:19:"wppa_fontweight_nav";s:6:"normal";s:21:"wppa_fontfamily_thumb";s:0:"";s:19:"wppa_fontsize_thumb";s:0:"";s:20:"wppa_fontcolor_thumb";s:0:"";s:21:"wppa_fontweight_thumb";s:6:"normal";s:19:"wppa_fontfamily_box";s:0:"";s:17:"wppa_fontsize_box";s:0:"";s:18:"wppa_fontcolor_box";s:0:"";s:19:"wppa_fontweight_box";s:6:"normal";s:22:"wppa_fontfamily_numbar";s:0:"";s:20:"wppa_fontsize_numbar";s:0:"";s:21:"wppa_fontcolor_numbar";s:7:"#777777";s:22:"wppa_fontweight_numbar";s:6:"normal";s:29:"wppa_fontfamily_numbar_active";s:0:"";s:27:"wppa_fontsize_numbar_active";s:0:"";s:28:"wppa_fontcolor_numbar_active";s:7:"#777777";s:29:"wppa_fontweight_numbar_active";s:4:"bold";s:24:"wppa_fontfamily_lightbox";s:0:"";s:22:"wppa_fontsize_lightbox";s:2:"10";s:23:"wppa_fontcolor_lightbox";s:0:"";s:24:"wppa_fontweight_lightbox";s:4:"bold";s:26:"wppa_fontsize_widget_thumb";s:1:"9";s:20:"wppa_sphoto_linktype";s:5:"photo";s:20:"wppa_sphoto_linkpage";s:1:"0";s:17:"wppa_sphoto_blank";b:0;s:20:"wppa_sphoto_overrule";b:0;s:20:"wppa_mphoto_linktype";s:5:"photo";s:20:"wppa_mphoto_linkpage";s:1:"0";s:17:"wppa_mphoto_blank";b:0;s:20:"wppa_mphoto_overrule";b:0;s:19:"wppa_thumb_linktype";s:5:"photo";s:19:"wppa_thumb_linkpage";s:1:"0";s:16:"wppa_thumb_blank";b:0;s:19:"wppa_thumb_overrule";b:0;s:27:"wppa_topten_widget_linktype";s:5:"photo";s:27:"wppa_topten_widget_linkpage";s:1:"0";s:17:"wppa_topten_blank";b:0;s:20:"wppa_topten_overrule";b:0;s:27:"wppa_featen_widget_linktype";s:5:"photo";s:27:"wppa_featen_widget_linkpage";s:1:"0";s:17:"wppa_featen_blank";b:0;s:20:"wppa_featen_overrule";b:0;s:30:"wppa_slideonly_widget_linktype";s:6:"widget";s:30:"wppa_slideonly_widget_linkpage";s:1:"0";s:19:"wppa_sswidget_blank";b:0;s:22:"wppa_sswidget_overrule";b:0;s:20:"wppa_widget_linktype";s:5:"album";s:20:"wppa_widget_linkpage";s:1:"0";s:15:"wppa_potd_blank";b:0;s:24:"wppa_potdwidget_overrule";b:0;s:22:"wppa_coverimg_linktype";s:4:"same";s:22:"wppa_coverimg_linkpage";s:1:"0";s:19:"wppa_coverimg_blank";b:0;s:22:"wppa_coverimg_overrule";b:0;s:28:"wppa_comment_widget_linktype";s:5:"photo";s:28:"wppa_comment_widget_linkpage";s:1:"0";s:18:"wppa_comment_blank";b:0;s:21:"wppa_comment_overrule";b:0;s:23:"wppa_slideshow_linktype";s:4:"none";s:23:"wppa_slideshow_linkpage";s:1:"0";s:20:"wppa_slideshow_blank";b:0;s:23:"wppa_slideshow_overrule";b:0;s:30:"wppa_thumbnail_widget_linktype";s:5:"photo";s:30:"wppa_thumbnail_widget_linkpage";s:1:"0";s:30:"wppa_thumbnail_widget_overrule";b:0;s:27:"wppa_thumbnail_widget_blank";b:0;s:18:"wppa_film_linktype";s:9:"slideshow";s:27:"wppa_lasten_widget_linktype";s:5:"photo";s:27:"wppa_lasten_widget_linkpage";s:1:"0";s:17:"wppa_lasten_blank";b:0;s:20:"wppa_lasten_overrule";b:0;s:20:"wppa_art_monkey_link";s:4:"none";s:26:"wppa_art_monkey_popup_link";s:4:"file";s:25:"wppa_artmonkey_use_source";b:0;s:26:"wppa_album_widget_linktype";s:7:"content";s:26:"wppa_album_widget_linkpage";s:1:"0";s:23:"wppa_album_widget_blank";b:0;s:22:"wppa_tagcloud_linktype";s:5:"album";s:22:"wppa_tagcloud_linkpage";s:1:"0";s:19:"wppa_tagcloud_blank";b:0;s:22:"wppa_multitag_linktype";s:5:"album";s:22:"wppa_multitag_linkpage";s:1:"0";s:19:"wppa_multitag_blank";b:0;s:24:"wppa_super_view_linkpage";s:1:"0";s:26:"wppa_upldr_widget_linkpage";s:1:"0";s:22:"wppa_user_upload_login";b:1;s:15:"wppa_owner_only";b:0;s:19:"wppa_user_upload_on";b:0;s:20:"wppa_upload_moderate";b:0;s:16:"wppa_upload_edit";b:0;s:18:"wppa_upload_notify";b:0;s:26:"wppa_upload_backend_notify";b:0;s:20:"wppa_upload_one_only";b:0;s:22:"wppa_memcheck_frontend";b:1;s:19:"wppa_memcheck_admin";b:1;s:20:"wppa_comment_captcha";b:0;s:16:"wppa_spam_maxage";s:4:"none";s:30:"wppa_editor_upload_limit_count";s:1:"0";s:29:"wppa_editor_upload_limit_time";s:1:"0";s:30:"wppa_author_upload_limit_count";s:1:"0";s:29:"wppa_author_upload_limit_time";s:1:"0";s:35:"wppa_contributor_upload_limit_count";s:1:"0";s:34:"wppa_contributor_upload_limit_time";s:1:"0";s:34:"wppa_subscriber_upload_limit_count";s:1:"0";s:33:"wppa_subscriber_upload_limit_time";s:1:"0";s:33:"wppa_loggedout_upload_limit_count";s:1:"0";s:32:"wppa_loggedout_upload_limit_time";s:1:"0";s:10:"wppa_setup";s:0:"";s:11:"wppa_backup";s:0:"";s:14:"wppa_load_skin";s:0:"";s:13:"wppa_skinfile";s:7:"default";s:10:"wppa_regen";s:0:"";s:11:"wppa_rerate";s:0:"";s:12:"wppa_cleanup";s:0:"";s:10:"wppa_recup";s:0:"";s:16:"wppa_file_system";s:4:"flat";s:17:"wppa_rating_clear";b:0;s:15:"wppa_iptc_clear";s:0:"";s:15:"wppa_exif_clear";s:0:"";s:28:"wppa_apply_new_photodesc_all";s:0:"";s:17:"wppa_remake_index";s:0:"";s:17:"wppa_extend_index";s:0:"";s:15:"wppa_list_index";s:0:"";s:16:"wppa_append_text";s:0:"";s:24:"wppa_append_to_photodesc";s:0:"";s:16:"wppa_remove_text";s:0:"";s:26:"wppa_remove_from_photodesc";s:0:"";s:24:"wppa_remove_empty_albums";s:0:"";s:18:"wppa_check_balance";b:0;s:16:"wppa_arrow_color";s:5:"black";s:20:"wppa_search_linkpage";s:1:"0";s:13:"wppa_excl_sep";b:0;s:16:"wppa_search_tags";b:0;s:16:"wppa_photos_only";b:0;s:19:"wppa_indexed_search";b:0;s:22:"wppa_max_search_photos";s:3:"250";s:22:"wppa_max_search_albums";s:2:"25";s:17:"wppa_tags_or_only";b:0;s:15:"wppa_wild_front";b:0;s:26:"wppa_add_shortcode_to_post";b:0;s:21:"wppa_shortcode_to_add";s:48:"[wppa type="album" album="#related,desc"][/wppa]";s:14:"wppa_meta_page";b:1;s:13:"wppa_meta_all";b:1;s:22:"wppa_cp_points_comment";s:1:"0";s:21:"wppa_cp_points_rating";s:1:"0";s:21:"wppa_cp_points_upload";s:1:"0";s:14:"wppa_use_scabn";b:0;s:18:"wppa_gpx_shortcode";s:88:"[map style="width: auto; height:300px; margin:0; " marker="yes" lat="w#lat" lon="w#lon"]";s:18:"wppa_use_wp_editor";b:0;s:16:"wppa_hier_albsel";b:0;s:17:"wppa_hier_pagesel";b:0;s:13:"wppa_alt_type";s:8:"fullname";s:25:"wppa_photo_admin_pagesize";s:2:"20";s:27:"wppa_comment_admin_pagesize";s:2:"10";s:17:"wppa_jpeg_quality";s:2:"95";s:13:"wppa_geo_edit";b:0;s:18:"wppa_auto_continue";b:1;s:23:"wppa_max_execution_time";s:2:"30";s:23:"wppa_adminbarmenu_admin";b:1;s:26:"wppa_adminbarmenu_frontend";b:1;s:19:"wppa_feed_use_thumb";b:0;s:15:"wppa_og_tags_on";b:1;s:9:"wppa_html";b:1;s:16:"wppa_allow_debug";b:0;s:16:"wppa_slide_order";s:22:"0,1,2,3,4,5,6,7,8,9,10";s:22:"wppa_slide_order_split";s:25:"0,1,2,3,4,5,6,7,8,9,10,11";s:18:"wppa_swap_namedesc";b:0;s:19:"wppa_split_namedesc";b:0;s:22:"wppa_max_album_newtime";s:1:"0";s:22:"wppa_max_photo_newtime";s:1:"0";s:18:"wppa_lightbox_name";s:4:"wppa";s:20:"wppa_filter_priority";s:4:"1001";s:24:"wppa_apply_newphoto_desc";b:0;s:29:"wppa_apply_newphoto_desc_user";b:0;s:25:"wppa_newphoto_description";s:1334:"\r\n<a onClick="jQuery(''.wppa-dtl'').css(''display'', ''block''); jQuery(''.wppa-more'').css(''display'', ''none''); wppaOvlResize();">\r\n<div class="wppa-more">\r\nCamera info\r\n</div>\r\n</a>\r\n<a onClick="jQuery(''.wppa-dtl'').css(''display'', ''none''); jQuery(''.wppa-more'').css(''display'', ''block''); wppaOvlResize();">\r\n<div class="wppa-dtl" style="display:none;" >\r\nHide Camera info\r\n</div>\r\n</a>\r\n<div class="wppa-dtl" style="display:none;">\r\n<br />\r\n<style>\r\n.wppa-label { padding: 0 3px !important; border: none !important; }\r\n.wppa-value { padding: 0 3px 0 12px !important; border:none !important; }\r\n</style>\r\n<table style="margin:0; border:none;" >\r\n<tr><td class="wppa-label" >Date Time</td><td class="wppa-value" >E#0132</td></tr>\r\n<tr><td class="wppa-label" >Camera</td><td class="wppa-value" >E#0110</td></tr>\r\n<tr><td class="wppa-label" >Focal length</td><td class="wppa-value" >E#920A</td></tr>\r\n<tr><td class="wppa-label" >F-Stop</td><td class="wppa-value" >E#829D</td></tr>\r\n<tr><td class="wppa-label" >ISO Speed Rating</td><td class="wppa-value" >E#8827</td></tr>\r\n<tr><td class="wppa-label" >Exposure program</td><td class="wppa-value" >E#8822</td></tr>\r\n<tr><td class="wppa-label" >Metering mode</td><td class="wppa-value" >E#9207</td></tr>\r\n<tr><td class="wppa-label" >Flash</td><td class="wppa-value" >E#9209</td></tr>\r\n</table>\r\n</div>";s:23:"wppa_upload_limit_count";s:1:"0";s:22:"wppa_upload_limit_time";s:1:"0";s:20:"wppa_show_album_full";b:1;s:19:"wppa_grant_an_album";b:0;s:15:"wppa_grant_name";s:7:"display";s:17:"wppa_grant_parent";s:1:"0";s:15:"wppa_max_albums";s:1:"0";s:22:"wppa_alt_is_restricted";b:0;s:23:"wppa_link_is_restricted";b:0;s:28:"wppa_covertype_is_restricted";b:0;s:22:"wppa_porder_restricted";b:0;s:19:"wppa_strip_file_ext";b:0;s:19:"wppa_copy_timestamp";b:0;s:17:"wppa_watermark_on";b:0;s:19:"wppa_watermark_user";b:0;s:19:"wppa_watermark_file";s:12:"specimen.png";s:18:"wppa_watermark_pos";s:6:"cencen";s:21:"wppa_watermark_upload";s:0:"";s:22:"wppa_watermark_opacity";s:2:"20";s:29:"wppa_allow_foreign_shortcodes";b:0;s:36:"wppa_allow_foreign_shortcodes_thumbs";b:0;s:16:"wppa_widgettitle";s:16:"Photo of the day";s:19:"wppa_widget_linkurl";s:25:"Type your custom url here";s:21:"wppa_widget_linktitle";s:19:"Type the title here";s:20:"wppa_widget_subtitle";s:4:"none";s:17:"wppa_widget_album";s:1:"0";s:17:"wppa_widget_photo";s:0:"";s:15:"wppa_potd_align";s:6:"center";s:18:"wppa_widget_method";s:1:"1";s:18:"wppa_widget_period";s:3:"168";s:17:"wppa_widget_width";s:3:"200";s:22:"wppa_toptenwidgettitle";s:14:"Top Ten Photos";s:25:"wppa_thumbnailwidgettitle";s:16:"Thumbnail Photos";s:22:"wppa_searchwidgettitle";s:13:"Search photos";s:18:"wppa_comadmin_show";s:3:"all";s:19:"wppa_comadmin_order";s:9:"timestamp";s:12:"wppa_qr_size";s:3:"200";s:13:"wppa_qr_color";s:7:"#000000";s:15:"wppa_qr_bgcolor";s:7:"#FFFFFF";s:22:"wppa_keep_source_admin";b:0;s:25:"wppa_keep_source_frontend";b:0;s:15:"wppa_source_dir";s:52:"C:\\wamp\\www\\wordpress/wp-content/uploads/wppa-source";s:14:"wppa_keep_sync";b:1;s:15:"wppa_remake_add";b:1;s:14:"wppa_save_iptc";b:1;s:14:"wppa_save_exif";b:1;s:24:"wppa_exif_max_array_size";s:2:"10";s:25:"wppa_chgsrc_is_restricted";b:0;s:18:"wppa_newpag_create";b:0;s:19:"wppa_newpag_content";s:57:"[wppa type="cover" album="w#album" align="center"][/wppa]";s:16:"wppa_newpag_type";s:4:"page";s:18:"wppa_newpag_status";s:7:"publish";s:16:"wppa_cdn_service";s:0:"";s:19:"wppa_cdn_cloud_name";s:0:"";s:16:"wppa_cdn_api_key";s:0:"";s:19:"wppa_cdn_api_secret";s:0:"";s:23:"wppa_cdn_service_update";b:0;s:31:"wppa_delete_all_from_cloudinary";s:0:"";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(842, 'wppa_cached_options_admin', 'a:502:{s:13:"wppa_revision";s:4:"5203";s:12:"wppa_prevrev";s:3:"100";s:17:"wppa_i_responsive";s:0:"";s:15:"wppa_i_downsize";s:0:"";s:17:"wppa_i_userupload";s:0:"";s:13:"wppa_i_rating";s:0:"";s:14:"wppa_i_comment";s:0:"";s:12:"wppa_i_share";s:0:"";s:11:"wppa_i_iptc";s:0:"";s:11:"wppa_i_exif";s:0:"";s:11:"wppa_i_done";s:0:"";s:13:"wppa_colwidth";s:3:"640";s:21:"wppa_resize_on_upload";s:2:"no";s:14:"wppa_resize_to";s:1:"0";s:15:"wppa_min_thumbs";s:1:"1";s:11:"wppa_bwidth";s:1:"1";s:12:"wppa_bradius";s:1:"6";s:16:"wppa_box_spacing";s:1:"8";s:13:"wppa_fullsize";s:3:"640";s:14:"wppa_maxheight";s:3:"480";s:12:"wppa_enlarge";s:2:"no";s:27:"wppa_fullimage_border_width";s:0:"";s:15:"wppa_numbar_max";s:2:"10";s:15:"wppa_share_size";s:2:"32";s:18:"wppa_mini_treshold";s:3:"500";s:23:"wppa_slideshow_pagesize";s:1:"0";s:14:"wppa_thumbsize";s:3:"100";s:18:"wppa_thumbsize_alt";s:3:"130";s:17:"wppa_thumb_aspect";s:8:"0:0:none";s:13:"wppa_tf_width";s:3:"100";s:17:"wppa_tf_width_alt";s:3:"130";s:14:"wppa_tf_height";s:3:"150";s:18:"wppa_tf_height_alt";s:3:"180";s:14:"wppa_tn_margin";s:1:"4";s:15:"wppa_thumb_auto";s:3:"yes";s:20:"wppa_thumb_page_size";s:1:"0";s:14:"wppa_popupsize";s:3:"150";s:22:"wppa_use_thumbs_if_fit";s:3:"yes";s:20:"wppa_max_cover_width";s:4:"1024";s:22:"wppa_text_frame_height";s:2:"54";s:14:"wppa_smallsize";s:3:"150";s:20:"wppa_smallsize_multi";s:3:"100";s:24:"wppa_coversize_is_height";s:2:"no";s:20:"wppa_album_page_size";s:1:"0";s:15:"wppa_rating_max";s:1:"5";s:16:"wppa_rating_prec";s:1:"2";s:18:"wppa_gravatar_size";s:2:"40";s:15:"wppa_ratspacing";s:2:"30";s:17:"wppa_topten_count";s:2:"10";s:16:"wppa_topten_size";s:2:"86";s:17:"wppa_comten_count";s:2:"10";s:16:"wppa_comten_size";s:2:"86";s:17:"wppa_featen_count";s:2:"10";s:16:"wppa_featen_size";s:2:"86";s:27:"wppa_thumbnail_widget_count";s:2:"10";s:26:"wppa_thumbnail_widget_size";s:2:"86";s:17:"wppa_lasten_count";s:2:"10";s:16:"wppa_lasten_size";s:2:"86";s:23:"wppa_album_widget_count";s:2:"10";s:22:"wppa_album_widget_size";s:2:"86";s:18:"wppa_related_count";s:2:"10";s:18:"wppa_ovl_txt_lines";s:4:"auto";s:14:"wppa_magnifier";s:19:"magnifier-small.png";s:21:"wppa_show_bread_posts";s:3:"yes";s:21:"wppa_show_bread_pages";s:3:"yes";s:17:"wppa_bc_on_search";s:3:"yes";s:17:"wppa_bc_on_topten";s:3:"yes";s:17:"wppa_bc_on_lasten";s:3:"yes";s:17:"wppa_bc_on_comten";s:3:"yes";s:17:"wppa_bc_on_featen";s:3:"yes";s:14:"wppa_bc_on_tag";s:3:"yes";s:18:"wppa_bc_on_related";s:3:"yes";s:14:"wppa_show_home";s:3:"yes";s:14:"wppa_show_page";s:3:"yes";s:17:"wppa_bc_separator";s:5:"raquo";s:11:"wppa_bc_txt";s:80:"&lt;span style=&quot;color:red; font_size:24px;&quot;&gt;&amp;bull;&lt;/span&gt;";s:11:"wppa_bc_url";s:78:"http://wordpress.local/wp-content/plugins/wp-photo-album-plus/images/arrow.gif";s:17:"wppa_pagelink_pos";s:6:"bottom";s:23:"wppa_bc_slide_thumblink";s:2:"no";s:30:"wppa_show_startstop_navigation";s:3:"yes";s:27:"wppa_show_browse_navigation";s:3:"yes";s:14:"wppa_filmstrip";s:3:"yes";s:19:"wppa_film_show_glue";s:3:"yes";s:19:"wppa_show_full_name";s:3:"yes";s:20:"wppa_show_full_owner";s:2:"no";s:19:"wppa_show_full_desc";s:3:"yes";s:20:"wppa_hide_when_empty";s:2:"no";s:14:"wppa_rating_on";s:3:"yes";s:23:"wppa_dislike_mail_every";s:1:"5";s:24:"wppa_dislike_set_pending";s:1:"0";s:19:"wppa_dislike_delete";s:1:"0";s:23:"wppa_dislike_show_count";s:3:"yes";s:24:"wppa_rating_display_type";s:7:"graphic";s:20:"wppa_show_avg_rating";s:3:"yes";s:18:"wppa_show_comments";s:3:"yes";s:21:"wppa_comment_gravatar";s:4:"none";s:25:"wppa_comment_gravatar_url";s:7:"http://";s:13:"wppa_show_bbb";s:2:"no";s:14:"wppa_custom_on";s:2:"no";s:19:"wppa_custom_content";s:95:"<div style="color:red; font-size:24px; font-weight:bold; text-align:center;">Hello world!</div>";s:25:"wppa_show_slideshownumbar";s:2:"no";s:14:"wppa_show_iptc";s:2:"no";s:19:"wppa_show_iptc_open";s:2:"no";s:14:"wppa_show_exif";s:2:"no";s:19:"wppa_show_exif_open";s:2:"no";s:17:"wppa_copyright_on";s:3:"yes";s:21:"wppa_copyright_notice";s:76:"<span style="color:red" >Warning: Do not upload copyrighted material!</span>";s:13:"wppa_share_on";s:2:"no";s:20:"wppa_share_on_widget";s:2:"no";s:20:"wppa_share_on_thumbs";s:2:"no";s:13:"wppa_share_qr";s:2:"no";s:19:"wppa_share_facebook";s:3:"yes";s:18:"wppa_share_twitter";s:3:"yes";s:16:"wppa_share_hyves";s:3:"yes";s:17:"wppa_share_google";s:3:"yes";s:20:"wppa_share_pinterest";s:3:"yes";s:19:"wppa_share_linkedin";s:3:"yes";s:22:"wppa_facebook_comments";s:3:"yes";s:18:"wppa_facebook_like";s:3:"yes";s:22:"wppa_facebook_admin_id";s:0:"";s:20:"wppa_facebook_app_id";s:0:"";s:22:"wppa_load_facebook_sdk";s:3:"yes";s:23:"wppa_share_single_image";s:3:"yes";s:20:"wppa_thumb_text_name";s:3:"yes";s:21:"wppa_thumb_text_owner";s:2:"no";s:20:"wppa_thumb_text_desc";s:3:"yes";s:22:"wppa_thumb_text_rating";s:3:"yes";s:20:"wppa_popup_text_name";s:3:"yes";s:20:"wppa_popup_text_desc";s:3:"yes";s:26:"wppa_popup_text_desc_strip";s:2:"no";s:22:"wppa_popup_text_rating";s:3:"yes";s:25:"wppa_popup_text_ncomments";s:3:"yes";s:22:"wppa_show_rating_count";s:2:"no";s:25:"wppa_thumb_text_viewcount";s:2:"no";s:25:"wppa_albdesc_on_thumbarea";s:4:"none";s:25:"wppa_albname_on_thumbarea";s:4:"none";s:20:"wppa_show_cover_text";s:3:"yes";s:21:"wppa_enable_slideshow";s:3:"yes";s:29:"wppa_show_slideshowbrowselink";s:3:"yes";s:18:"wppa_show_viewlink";s:3:"yes";s:19:"wppa_show_treecount";s:2:"no";s:22:"wppa_skip_empty_albums";s:3:"yes";s:20:"wppa_show_bbb_widget";s:2:"no";s:27:"wppa_show_albwidget_tooltip";s:3:"yes";s:18:"wppa_ovl_close_txt";s:5:"CLOSE";s:14:"wppa_ovl_theme";s:5:"black";s:19:"wppa_ovl_slide_name";s:2:"no";s:19:"wppa_ovl_slide_desc";s:3:"yes";s:19:"wppa_ovl_thumb_name";s:3:"yes";s:19:"wppa_ovl_thumb_desc";s:2:"no";s:18:"wppa_ovl_potd_name";s:3:"yes";s:18:"wppa_ovl_potd_desc";s:2:"no";s:20:"wppa_ovl_sphoto_name";s:3:"yes";s:20:"wppa_ovl_sphoto_desc";s:2:"no";s:20:"wppa_ovl_mphoto_name";s:3:"yes";s:20:"wppa_ovl_mphoto_desc";s:2:"no";s:17:"wppa_ovl_alw_name";s:3:"yes";s:17:"wppa_ovl_alw_desc";s:2:"no";s:19:"wppa_ovl_cover_name";s:3:"yes";s:19:"wppa_ovl_cover_desc";s:2:"no";s:16:"wppa_show_zoomin";s:3:"yes";s:21:"wppa_ovl_show_counter";s:3:"yes";s:17:"wppa_bgcolor_even";s:7:"#eeeeee";s:16:"wppa_bcolor_even";s:7:"#cccccc";s:16:"wppa_bgcolor_alt";s:7:"#dddddd";s:15:"wppa_bcolor_alt";s:7:"#bbbbbb";s:16:"wppa_bgcolor_nav";s:7:"#dddddd";s:15:"wppa_bcolor_nav";s:7:"#bbbbbb";s:21:"wppa_bgcolor_namedesc";s:7:"#dddddd";s:20:"wppa_bcolor_namedesc";s:7:"#bbbbbb";s:16:"wppa_bgcolor_com";s:7:"#dddddd";s:15:"wppa_bcolor_com";s:7:"#bbbbbb";s:16:"wppa_bgcolor_img";s:7:"#eeeeee";s:15:"wppa_bcolor_img";s:0:"";s:20:"wppa_bgcolor_fullimg";s:7:"#cccccc";s:19:"wppa_bcolor_fullimg";s:7:"#777777";s:16:"wppa_bgcolor_cus";s:7:"#dddddd";s:15:"wppa_bcolor_cus";s:7:"#bbbbbb";s:19:"wppa_bgcolor_numbar";s:7:"#cccccc";s:18:"wppa_bcolor_numbar";s:7:"#cccccc";s:26:"wppa_bgcolor_numbar_active";s:7:"#333333";s:25:"wppa_bcolor_numbar_active";s:7:"#333333";s:17:"wppa_bgcolor_iptc";s:7:"#dddddd";s:16:"wppa_bcolor_iptc";s:7:"#bbbbbb";s:17:"wppa_bgcolor_exif";s:7:"#dddddd";s:16:"wppa_bcolor_exif";s:7:"#bbbbbb";s:18:"wppa_bgcolor_share";s:7:"#dddddd";s:17:"wppa_bcolor_share";s:7:"#bbbbbb";s:19:"wppa_bgcolor_upload";s:7:"#dddddd";s:18:"wppa_bcolor_upload";s:7:"#bbbbbb";s:21:"wppa_bgcolor_multitag";s:7:"#dddddd";s:20:"wppa_bcolor_multitag";s:7:"#bbbbbb";s:21:"wppa_bgcolor_tagcloud";s:7:"#dddddd";s:20:"wppa_bcolor_tagcloud";s:7:"#bbbbbb";s:15:"wppa_allow_ajax";s:2:"no";s:19:"wppa_ajax_non_admin";s:2:"no";s:28:"wppa_use_photo_names_in_urls";s:2:"no";s:21:"wppa_use_pretty_links";s:2:"no";s:23:"wppa_update_addressline";s:3:"yes";s:28:"wppa_render_shortcode_always";s:2:"no";s:21:"wppa_track_viewcounts";s:3:"yes";s:15:"wppa_fullvalign";s:3:"fit";s:15:"wppa_fullhalign";s:6:"center";s:16:"wppa_start_slide";s:3:"run";s:20:"wppa_start_slideonly";s:3:"yes";s:19:"wppa_animation_type";s:8:"fadeover";s:22:"wppa_slideshow_timeout";s:4:"2500";s:20:"wppa_animation_speed";s:3:"800";s:16:"wppa_slide_pause";s:2:"no";s:15:"wppa_slide_wrap";s:3:"yes";s:19:"wppa_fulldesc_align";s:6:"center";s:14:"wppa_clean_pbr";s:3:"yes";s:25:"wppa_run_wppautop_on_desc";s:2:"no";s:23:"wppa_auto_open_comments";s:3:"yes";s:20:"wppa_film_hover_goto";s:2:"no";s:16:"wppa_slide_swipe";s:3:"yes";s:19:"wppa_list_photos_by";s:1:"0";s:21:"wppa_list_photos_desc";s:2:"no";s:14:"wppa_thumbtype";s:7:"default";s:20:"wppa_thumbphoto_left";s:2:"no";s:11:"wppa_valign";s:6:"center";s:22:"wppa_use_thumb_opacity";s:3:"yes";s:18:"wppa_thumb_opacity";s:2:"85";s:20:"wppa_use_thumb_popup";s:3:"yes";s:19:"wppa_list_albums_by";s:1:"0";s:21:"wppa_list_albums_desc";s:2:"no";s:19:"wppa_coverphoto_pos";s:5:"right";s:22:"wppa_use_cover_opacity";s:3:"yes";s:18:"wppa_cover_opacity";s:2:"85";s:15:"wppa_cover_type";s:7:"default";s:18:"wppa_imgfact_count";s:2:"10";s:17:"wppa_rating_login";s:3:"yes";s:18:"wppa_rating_change";s:3:"yes";s:17:"wppa_rating_multi";s:2:"no";s:18:"wppa_dislike_value";s:2:"-5";s:21:"wppa_next_on_callback";s:2:"no";s:17:"wppa_star_opacity";s:2:"20";s:21:"wppa_vote_button_text";s:12:"Vote for me!";s:22:"wppa_voted_button_text";s:12:"Voted for me";s:15:"wppa_vote_thumb";s:2:"no";s:18:"wppa_comment_login";s:2:"no";s:18:"wppa_comments_desc";s:2:"no";s:23:"wppa_comment_moderation";s:6:"logout";s:27:"wppa_comment_email_required";s:3:"yes";s:19:"wppa_comment_notify";s:4:"none";s:25:"wppa_comment_notify_added";s:3:"yes";s:23:"wppa_comten_alt_display";s:2:"no";s:25:"wppa_comten_alt_thumbsize";s:2:"75";s:26:"wppa_comment_smiley_picker";s:2:"no";s:16:"wppa_ovl_opacity";s:2:"80";s:16:"wppa_ovl_onclick";s:4:"none";s:13:"wppa_ovl_anim";s:3:"300";s:22:"wppa_ovl_chrome_at_top";s:3:"yes";s:20:"wppa_lightbox_global";s:2:"no";s:21:"wppa_fontfamily_title";s:0:"";s:19:"wppa_fontsize_title";s:0:"";s:20:"wppa_fontcolor_title";s:0:"";s:21:"wppa_fontweight_title";s:4:"bold";s:24:"wppa_fontfamily_fulldesc";s:0:"";s:22:"wppa_fontsize_fulldesc";s:0:"";s:23:"wppa_fontcolor_fulldesc";s:0:"";s:24:"wppa_fontweight_fulldesc";s:6:"normal";s:25:"wppa_fontfamily_fulltitle";s:0:"";s:23:"wppa_fontsize_fulltitle";s:0:"";s:24:"wppa_fontcolor_fulltitle";s:0:"";s:25:"wppa_fontweight_fulltitle";s:6:"normal";s:19:"wppa_fontfamily_nav";s:0:"";s:17:"wppa_fontsize_nav";s:0:"";s:18:"wppa_fontcolor_nav";s:0:"";s:19:"wppa_fontweight_nav";s:6:"normal";s:21:"wppa_fontfamily_thumb";s:0:"";s:19:"wppa_fontsize_thumb";s:0:"";s:20:"wppa_fontcolor_thumb";s:0:"";s:21:"wppa_fontweight_thumb";s:6:"normal";s:19:"wppa_fontfamily_box";s:0:"";s:17:"wppa_fontsize_box";s:0:"";s:18:"wppa_fontcolor_box";s:0:"";s:19:"wppa_fontweight_box";s:6:"normal";s:22:"wppa_fontfamily_numbar";s:0:"";s:20:"wppa_fontsize_numbar";s:0:"";s:21:"wppa_fontcolor_numbar";s:7:"#777777";s:22:"wppa_fontweight_numbar";s:6:"normal";s:29:"wppa_fontfamily_numbar_active";s:0:"";s:27:"wppa_fontsize_numbar_active";s:0:"";s:28:"wppa_fontcolor_numbar_active";s:7:"#777777";s:29:"wppa_fontweight_numbar_active";s:4:"bold";s:24:"wppa_fontfamily_lightbox";s:0:"";s:22:"wppa_fontsize_lightbox";s:2:"10";s:23:"wppa_fontcolor_lightbox";s:0:"";s:24:"wppa_fontweight_lightbox";s:4:"bold";s:26:"wppa_fontsize_widget_thumb";s:1:"9";s:20:"wppa_sphoto_linktype";s:5:"photo";s:20:"wppa_sphoto_linkpage";s:1:"0";s:17:"wppa_sphoto_blank";s:2:"no";s:20:"wppa_sphoto_overrule";s:2:"no";s:20:"wppa_mphoto_linktype";s:5:"photo";s:20:"wppa_mphoto_linkpage";s:1:"0";s:17:"wppa_mphoto_blank";s:2:"no";s:20:"wppa_mphoto_overrule";s:2:"no";s:19:"wppa_thumb_linktype";s:5:"photo";s:19:"wppa_thumb_linkpage";s:1:"0";s:16:"wppa_thumb_blank";s:2:"no";s:19:"wppa_thumb_overrule";s:2:"no";s:27:"wppa_topten_widget_linktype";s:5:"photo";s:27:"wppa_topten_widget_linkpage";s:1:"0";s:17:"wppa_topten_blank";s:2:"no";s:20:"wppa_topten_overrule";s:2:"no";s:27:"wppa_featen_widget_linktype";s:5:"photo";s:27:"wppa_featen_widget_linkpage";s:1:"0";s:17:"wppa_featen_blank";s:2:"no";s:20:"wppa_featen_overrule";s:2:"no";s:30:"wppa_slideonly_widget_linktype";s:6:"widget";s:30:"wppa_slideonly_widget_linkpage";s:1:"0";s:19:"wppa_sswidget_blank";s:2:"no";s:22:"wppa_sswidget_overrule";s:2:"no";s:20:"wppa_widget_linktype";s:5:"album";s:20:"wppa_widget_linkpage";s:1:"0";s:15:"wppa_potd_blank";s:2:"no";s:24:"wppa_potdwidget_overrule";s:2:"no";s:22:"wppa_coverimg_linktype";s:4:"same";s:22:"wppa_coverimg_linkpage";s:1:"0";s:19:"wppa_coverimg_blank";s:2:"no";s:22:"wppa_coverimg_overrule";s:2:"no";s:28:"wppa_comment_widget_linktype";s:5:"photo";s:28:"wppa_comment_widget_linkpage";s:1:"0";s:18:"wppa_comment_blank";s:2:"no";s:21:"wppa_comment_overrule";s:2:"no";s:23:"wppa_slideshow_linktype";s:4:"none";s:23:"wppa_slideshow_linkpage";s:1:"0";s:20:"wppa_slideshow_blank";s:2:"no";s:23:"wppa_slideshow_overrule";s:2:"no";s:30:"wppa_thumbnail_widget_linktype";s:5:"photo";s:30:"wppa_thumbnail_widget_linkpage";s:1:"0";s:30:"wppa_thumbnail_widget_overrule";s:2:"no";s:27:"wppa_thumbnail_widget_blank";s:2:"no";s:18:"wppa_film_linktype";s:9:"slideshow";s:27:"wppa_lasten_widget_linktype";s:5:"photo";s:27:"wppa_lasten_widget_linkpage";s:1:"0";s:17:"wppa_lasten_blank";s:2:"no";s:20:"wppa_lasten_overrule";s:2:"no";s:20:"wppa_art_monkey_link";s:4:"none";s:26:"wppa_art_monkey_popup_link";s:4:"file";s:25:"wppa_artmonkey_use_source";s:2:"no";s:26:"wppa_album_widget_linktype";s:7:"content";s:26:"wppa_album_widget_linkpage";s:1:"0";s:23:"wppa_album_widget_blank";s:2:"no";s:22:"wppa_tagcloud_linktype";s:5:"album";s:22:"wppa_tagcloud_linkpage";s:1:"0";s:19:"wppa_tagcloud_blank";s:2:"no";s:22:"wppa_multitag_linktype";s:5:"album";s:22:"wppa_multitag_linkpage";s:1:"0";s:19:"wppa_multitag_blank";s:2:"no";s:24:"wppa_super_view_linkpage";s:1:"0";s:26:"wppa_upldr_widget_linkpage";s:1:"0";s:22:"wppa_user_upload_login";s:3:"yes";s:15:"wppa_owner_only";s:2:"no";s:19:"wppa_user_upload_on";s:2:"no";s:20:"wppa_upload_moderate";s:2:"no";s:16:"wppa_upload_edit";s:2:"no";s:18:"wppa_upload_notify";s:2:"no";s:26:"wppa_upload_backend_notify";s:2:"no";s:20:"wppa_upload_one_only";s:2:"no";s:22:"wppa_memcheck_frontend";s:3:"yes";s:19:"wppa_memcheck_admin";s:3:"yes";s:20:"wppa_comment_captcha";s:2:"no";s:16:"wppa_spam_maxage";s:4:"none";s:30:"wppa_editor_upload_limit_count";s:1:"0";s:29:"wppa_editor_upload_limit_time";s:1:"0";s:30:"wppa_author_upload_limit_count";s:1:"0";s:29:"wppa_author_upload_limit_time";s:1:"0";s:35:"wppa_contributor_upload_limit_count";s:1:"0";s:34:"wppa_contributor_upload_limit_time";s:1:"0";s:34:"wppa_subscriber_upload_limit_count";s:1:"0";s:33:"wppa_subscriber_upload_limit_time";s:1:"0";s:33:"wppa_loggedout_upload_limit_count";s:1:"0";s:32:"wppa_loggedout_upload_limit_time";s:1:"0";s:10:"wppa_setup";s:0:"";s:11:"wppa_backup";s:0:"";s:14:"wppa_load_skin";s:0:"";s:13:"wppa_skinfile";s:7:"default";s:10:"wppa_regen";s:0:"";s:11:"wppa_rerate";s:0:"";s:12:"wppa_cleanup";s:0:"";s:10:"wppa_recup";s:0:"";s:16:"wppa_file_system";s:4:"flat";s:17:"wppa_rating_clear";s:2:"no";s:15:"wppa_iptc_clear";s:0:"";s:15:"wppa_exif_clear";s:0:"";s:28:"wppa_apply_new_photodesc_all";s:0:"";s:17:"wppa_remake_index";s:0:"";s:17:"wppa_extend_index";s:0:"";s:15:"wppa_list_index";s:0:"";s:16:"wppa_append_text";s:0:"";s:24:"wppa_append_to_photodesc";s:0:"";s:16:"wppa_remove_text";s:0:"";s:26:"wppa_remove_from_photodesc";s:0:"";s:24:"wppa_remove_empty_albums";s:0:"";s:18:"wppa_check_balance";s:2:"no";s:16:"wppa_arrow_color";s:5:"black";s:20:"wppa_search_linkpage";s:1:"0";s:13:"wppa_excl_sep";s:2:"no";s:16:"wppa_search_tags";s:2:"no";s:16:"wppa_photos_only";s:2:"no";s:19:"wppa_indexed_search";s:2:"no";s:22:"wppa_max_search_photos";s:3:"250";s:22:"wppa_max_search_albums";s:2:"25";s:17:"wppa_tags_or_only";s:2:"no";s:15:"wppa_wild_front";s:2:"no";s:26:"wppa_add_shortcode_to_post";s:2:"no";s:21:"wppa_shortcode_to_add";s:48:"[wppa type="album" album="#related,desc"][/wppa]";s:14:"wppa_meta_page";s:3:"yes";s:13:"wppa_meta_all";s:3:"yes";s:22:"wppa_cp_points_comment";s:1:"0";s:21:"wppa_cp_points_rating";s:1:"0";s:21:"wppa_cp_points_upload";s:1:"0";s:14:"wppa_use_scabn";s:2:"no";s:18:"wppa_gpx_shortcode";s:88:"[map style="width: auto; height:300px; margin:0; " marker="yes" lat="w#lat" lon="w#lon"]";s:18:"wppa_use_wp_editor";s:2:"no";s:16:"wppa_hier_albsel";s:2:"no";s:17:"wppa_hier_pagesel";s:2:"no";s:13:"wppa_alt_type";s:8:"fullname";s:25:"wppa_photo_admin_pagesize";s:2:"20";s:27:"wppa_comment_admin_pagesize";s:2:"10";s:17:"wppa_jpeg_quality";s:2:"95";s:13:"wppa_geo_edit";s:2:"no";s:18:"wppa_auto_continue";s:3:"yes";s:23:"wppa_max_execution_time";s:2:"30";s:23:"wppa_adminbarmenu_admin";s:3:"yes";s:26:"wppa_adminbarmenu_frontend";s:3:"yes";s:19:"wppa_feed_use_thumb";s:2:"no";s:15:"wppa_og_tags_on";s:3:"yes";s:9:"wppa_html";s:3:"yes";s:16:"wppa_allow_debug";s:2:"no";s:16:"wppa_slide_order";s:22:"0,1,2,3,4,5,6,7,8,9,10";s:22:"wppa_slide_order_split";s:25:"0,1,2,3,4,5,6,7,8,9,10,11";s:18:"wppa_swap_namedesc";s:2:"no";s:19:"wppa_split_namedesc";s:2:"no";s:22:"wppa_max_album_newtime";s:1:"0";s:22:"wppa_max_photo_newtime";s:1:"0";s:18:"wppa_lightbox_name";s:4:"wppa";s:20:"wppa_filter_priority";s:4:"1001";s:24:"wppa_apply_newphoto_desc";s:2:"no";s:29:"wppa_apply_newphoto_desc_user";s:2:"no";s:25:"wppa_newphoto_description";s:1334:"\r\n<a onClick="jQuery(''.wppa-dtl'').css(''display'', ''block''); jQuery(''.wppa-more'').css(''display'', ''none''); wppaOvlResize();">\r\n<div class="wppa-more">\r\nCamera info\r\n</div>\r\n</a>\r\n<a onClick="jQuery(''.wppa-dtl'').css(''display'', ''none''); jQuery(''.wppa-more'').css(''display'', ''block''); wppaOvlResize();">\r\n<div class="wppa-dtl" style="display:none;" >\r\nHide Camera info\r\n</div>\r\n</a>\r\n<div class="wppa-dtl" style="display:none;">\r\n<br />\r\n<style>\r\n.wppa-label { padding: 0 3px !important; border: none !important; }\r\n.wppa-value { padding: 0 3px 0 12px !important; border:none !important; }\r\n</style>\r\n<table style="margin:0; border:none;" >\r\n<tr><td class="wppa-label" >Date Time</td><td class="wppa-value" >E#0132</td></tr>\r\n<tr><td class="wppa-label" >Camera</td><td class="wppa-value" >E#0110</td></tr>\r\n<tr><td class="wppa-label" >Focal length</td><td class="wppa-value" >E#920A</td></tr>\r\n<tr><td class="wppa-label" >F-Stop</td><td class="wppa-value" >E#829D</td></tr>\r\n<tr><td class="wppa-label" >ISO Speed Rating</td><td class="wppa-value" >E#8827</td></tr>\r\n<tr><td class="wppa-label" >Exposure program</td><td class="wppa-value" >E#8822</td></tr>\r\n<tr><td class="wppa-label" >Metering mode</td><td class="wppa-value" >E#9207</td></tr>\r\n<tr><td class="wppa-label" >Flash</td><td class="wppa-value" >E#9209</td></tr>\r\n</table>\r\n</div>";s:23:"wppa_upload_limit_count";s:1:"0";s:22:"wppa_upload_limit_time";s:1:"0";s:20:"wppa_show_album_full";s:3:"yes";s:19:"wppa_grant_an_album";s:2:"no";s:15:"wppa_grant_name";s:7:"display";s:17:"wppa_grant_parent";s:1:"0";s:15:"wppa_max_albums";s:1:"0";s:22:"wppa_alt_is_restricted";s:2:"no";s:23:"wppa_link_is_restricted";s:2:"no";s:28:"wppa_covertype_is_restricted";s:2:"no";s:22:"wppa_porder_restricted";s:2:"no";s:19:"wppa_strip_file_ext";s:2:"no";s:19:"wppa_copy_timestamp";s:2:"no";s:17:"wppa_watermark_on";s:2:"no";s:19:"wppa_watermark_user";s:2:"no";s:19:"wppa_watermark_file";s:12:"specimen.png";s:18:"wppa_watermark_pos";s:6:"cencen";s:21:"wppa_watermark_upload";s:0:"";s:22:"wppa_watermark_opacity";s:2:"20";s:29:"wppa_allow_foreign_shortcodes";s:2:"no";s:36:"wppa_allow_foreign_shortcodes_thumbs";s:2:"no";s:16:"wppa_widgettitle";s:16:"Photo of the day";s:19:"wppa_widget_linkurl";s:25:"Type your custom url here";s:21:"wppa_widget_linktitle";s:19:"Type the title here";s:20:"wppa_widget_subtitle";s:4:"none";s:17:"wppa_widget_album";s:1:"0";s:17:"wppa_widget_photo";s:0:"";s:15:"wppa_potd_align";s:6:"center";s:18:"wppa_widget_method";s:1:"1";s:18:"wppa_widget_period";s:3:"168";s:17:"wppa_widget_width";s:3:"200";s:22:"wppa_toptenwidgettitle";s:14:"Top Ten Photos";s:25:"wppa_thumbnailwidgettitle";s:16:"Thumbnail Photos";s:22:"wppa_searchwidgettitle";s:13:"Search photos";s:18:"wppa_comadmin_show";s:3:"all";s:19:"wppa_comadmin_order";s:9:"timestamp";s:12:"wppa_qr_size";s:3:"200";s:13:"wppa_qr_color";s:7:"#000000";s:15:"wppa_qr_bgcolor";s:7:"#FFFFFF";s:22:"wppa_keep_source_admin";s:2:"no";s:25:"wppa_keep_source_frontend";s:2:"no";s:15:"wppa_source_dir";s:52:"C:\\wamp\\www\\wordpress/wp-content/uploads/wppa-source";s:14:"wppa_keep_sync";s:3:"yes";s:15:"wppa_remake_add";s:3:"yes";s:14:"wppa_save_iptc";s:3:"yes";s:14:"wppa_save_exif";s:3:"yes";s:24:"wppa_exif_max_array_size";s:2:"10";s:25:"wppa_chgsrc_is_restricted";s:2:"no";s:18:"wppa_newpag_create";s:2:"no";s:19:"wppa_newpag_content";s:57:"[wppa type="cover" album="w#album" align="center"][/wppa]";s:16:"wppa_newpag_type";s:4:"page";s:18:"wppa_newpag_status";s:7:"publish";s:16:"wppa_cdn_service";s:0:"";s:19:"wppa_cdn_cloud_name";s:0:"";s:16:"wppa_cdn_api_key";s:0:"";s:19:"wppa_cdn_api_secret";s:0:"";s:23:"wppa_cdn_service_update";s:2:"no";s:31:"wppa_delete_all_from_cloudinary";s:0:"";}', 'yes'),
(853, 'wpsr_addthis_data', 'a:8:{s:8:"username";s:0:"";s:8:"language";s:2:"en";s:6:"button";s:9:"lg-share-";s:15:"tb_32pxservices";s:45:"facebook,twitter,digg,delicious,email,compact";s:15:"tb_16pxservices";s:45:"facebook,twitter,digg,delicious,email,compact";s:10:"sharecount";s:6:"normal";s:7:"btbrand";s:0:"";s:9:"clickback";i:1;}', 'yes'),
(854, 'wpsr_sharethis_data', 'a:9:{s:12:"vcount_order";s:32:"facebook,twitter,email,sharethis";s:12:"hcount_order";s:32:"facebook,twitter,email,sharethis";s:13:"buttons_order";s:32:"facebook,twitter,email,sharethis";s:11:"large_order";s:32:"facebook,twitter,email,sharethis";s:13:"regular_order";s:32:"facebook,twitter,email,sharethis";s:14:"regular2_order";s:32:"facebook,twitter,email,sharethis";s:6:"pubkey";s:0:"";s:10:"copynshare";i:0;s:4:"addp";i:1;}', 'yes'),
(855, 'wpsr_retweet_data', 'a:6:{s:8:"username";s:0:"";s:4:"type";s:7:"compact";s:7:"service";s:7:"twitter";s:10:"topsytheme";s:4:"blue";s:14:"twitter_recacc";s:0:"";s:12:"twitter_lang";s:2:"en";}', 'yes'),
(856, 'wpsr_digg_data', 'a:1:{s:4:"type";s:11:"DiggCompact";}', 'yes'),
(857, 'wpsr_facebook_data', 'a:7:{s:7:"btstyle";s:12:"button_count";s:9:"showfaces";i:0;s:5:"width";i:80;s:4:"verb";s:4:"like";s:4:"font";s:5:"arial";s:5:"color";s:5:"light";s:5:"appid";s:0:"";}', 'yes'),
(858, 'wpsr_socialbt_data', 'a:10:{s:12:"selected16px";s:72:"facebook,twitter,delicious,linkedin,stumbleupon,addtofavorites,email,rss";s:12:"selected32px";s:72:"facebook,twitter,delicious,linkedin,stumbleupon,addtofavorites,email,rss";s:6:"target";i:1;s:7:"loadcss";i:1;s:6:"effect";s:7:"opacity";s:5:"label";i:0;s:7:"columns";s:2:"no";s:11:"imgpath16px";s:79:"http://wordpress.local/wp-content/plugins/wp-socializer/public/social-icons/16/";s:11:"imgpath32px";s:79:"http://wordpress.local/wp-content/plugins/wp-socializer/public/social-icons/32/";s:10:"usesprites";i:1;}', 'yes'),
(859, 'wpsr_custom_data', 'a:2:{s:7:"custom1";s:0:"";s:7:"custom2";s:0:"";}', 'yes'),
(860, 'wpsr_template1_data', 'a:13:{s:7:"content";s:291:"<div class="wp-socializer-buttons clearfix">\r\n	<span class="wpsr-btn">{facebook-like}</span>\r\n	<span class="wpsr-btn">{retweet-bt}</span>\r\n	<span class="wpsr-btn">{plusone-medium}</span>\r\n	<span class="wpsr-btn">{linkedin-right}</span>\r\n	<span class="wpsr-btn">{stumbleupon-1}</span>\r\n</div>";s:6:"inhome";i:0;s:8:"insingle";i:1;s:6:"inpage";i:1;s:10:"incategory";i:0;s:5:"intag";i:0;s:6:"indate";i:0;s:8:"inauthor";i:0;s:8:"insearch";i:0;s:9:"inexcerpt";i:0;s:6:"infeed";i:0;s:10:"abvcontent";i:1;s:10:"blwcontent";i:0;}', 'yes'),
(861, 'wpsr_template2_data', 'a:14:{s:7:"content";s:43:"<h3>Share and Enjoy</h3>\r\n{social-bts-32px}";s:6:"inhome";i:1;s:8:"insingle";i:1;s:6:"inpage";i:1;s:10:"incategory";i:1;s:5:"intag";i:1;s:6:"indate";i:1;s:8:"inauthor";i:1;s:8:"insearch";i:1;s:9:"inexcerpt";i:1;s:6:"infeed";i:1;s:10:"abvcontent";i:0;s:10:"blwcontent";i:1;s:4:"addp";i:0;}', 'yes'),
(862, 'wpsr_settings_data', 'a:7:{s:9:"smartload";s:6:"normal";s:17:"smartload_timeout";s:1:"1";s:9:"rssoutput";s:0:"";s:13:"bitlyusername";s:0:"";s:8:"bitlyapi";s:0:"";s:11:"disablewpsr";i:0;s:12:"scriptsplace";s:6:"header";}', 'yes'),
(863, 'wpsr_template_floating_bar_data', 'a:10:{s:11:"selectedbts";s:38:"Facebook,Retweet,Google +1,Email,Print";s:8:"position";s:10:"float_left";s:5:"theme";s:5:"white";s:8:"insingle";i:1;s:6:"inpage";i:1;s:8:"disabled";i:0;s:7:"mobmode";i:0;s:17:"floatleft_movable";i:1;s:16:"floatleft_offset";i:25;s:17:"bottomfixed_width";i:900;}', 'yes'),
(864, 'wpsr_templates', 'a:2:{i:1;a:1:{s:4:"name";s:10:"Template 1";}i:2;a:1:{s:4:"name";s:10:"Template 2";}}', 'yes'),
(865, 'wpsr_version', '2.4.9.7', 'yes'),
(877, 'widget_facebooklikebox', 'a:2:{i:3;a:26:{s:5:"title";s:19:"Find us on Facebook";s:6:"pageID";s:0:"";s:10:"connection";s:2:"10";s:5:"width";s:3:"260";s:6:"height";s:3:"255";s:8:"creditOn";s:0:"";s:6:"header";s:3:"yes";s:7:"streams";s:3:"yes";s:11:"colorScheme";s:5:"light";s:11:"borderColor";s:6:"AAAAAA";s:24:"enableOtherSocialButtons";s:2:"no";s:20:"addThisVerticalStyle";s:1:"1";s:20:"enableTwitterButtons";s:2:"no";s:18:"twitterButtonStyle";s:3:"127";s:12:"addThisPubId";s:0:"";s:15:"twitterUsername";s:0:"";s:9:"showFaces";s:3:"yes";s:17:"pluginDisplayType";s:8:"like_box";s:10:"layoutMode";s:5:"xfbml";s:7:"pageURL";s:56:"https://www.facebook.com/pages/Lulu-Popo/319106294895230";s:19:"fblike_button_style";s:8:"standard";s:23:"fblike_button_showFaces";s:3:"yes";s:29:"fblike_button_verb_to_display";s:9:"recommend";s:18:"fblike_button_font";s:5:"arial";s:19:"fblike_button_width";s:3:"292";s:25:"fblike_button_colorScheme";s:5:"light";}s:12:"_multiwidget";i:1;}', 'yes'),
(881, 'widget_wp_socializer', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(884, '_transient_plugins_delete_result_1', '1', 'yes'),
(886, 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1', 'updated', 'yes'),
(887, 'slideshow-plugin-updated-from-v2-to-v2-1-20', 'updated', 'yes'),
(888, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22', 'updated', 'yes'),
(889, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23', 'updated', 'yes'),
(890, 'slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0', 'updated', 'yes'),
(891, 'slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8', 'updated', 'yes'),
(892, 'slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12', 'updated', 'yes'),
(893, 'slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16', 'updated', 'yes'),
(894, 'slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17', 'updated', 'yes'),
(895, 'slideshow-jquery-image-gallery-plugin-version', '2.2.19', 'yes'),
(900, 'widget_slideshowwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(907, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(908, 'ml-slider_children', 'a:0:{}', 'yes'),
(920, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1386838215;s:7:"checked";a:7:{s:33:"addthis/addthis_social_widget.php";s:5:"3.5.6";s:19:"akismet/akismet.php";s:5:"2.5.9";s:45:"custom-contact-forms/custom-contact-forms.php";s:7:"5.1.0.3";s:53:"facebook-like-box-widget/facebook-like-box-widget.php";s:3:"2.7";s:9:"hello.php";s:3:"1.6";s:23:"ml-slider/ml-slider.php";s:5:"2.5.1";s:43:"visual-form-builder/visual-form-builder.php";s:3:"2.8";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(951, 'a3rev_wp_people_contact_plugin', 'contact_us_page_contact_people', 'yes'),
(952, 'a3rev_wp_people_contact_version', '1.1.3', 'yes'),
(953, 'people_contact_global_settings', 'a:2:{s:20:"grid_view_team_title";N;s:13:"grid_view_col";N;}', 'yes'),
(954, 'people_contact_location_map_settings', 'a:8:{s:18:"hide_maps_frontend";i:0;s:10:"zoom_level";i:4;s:8:"map_type";s:7:"ROADMAP";s:14:"map_width_type";s:7:"percent";s:20:"map_width_responsive";N;s:15:"map_width_fixed";N;s:10:"map_height";i:400;s:14:"center_address";s:9:"Australia";}', 'yes'),
(959, 'contact_us_page_id', '53', 'yes'),
(961, 'people_email_inquiry_global_settings', 'a:2:{s:23:"contact_form_type_other";i:0;s:18:"inquiry_popup_type";s:2:"fb";}', 'yes'),
(963, 'people_email_inquiry_contact_form_settings', 'a:3:{s:15:"email_from_name";s:13:"First wp site";s:18:"email_from_address";s:19:"loiphamle@gmail.com";s:9:"send_copy";s:3:"yes";}', 'yes'),
(965, 'people_email_inquiry_popup_form_style', 'a:19:{s:22:"inquiry_form_bg_colour";s:7:"#FFFFFF";s:23:"inquiry_contact_heading";s:32:"This email will be delivered to:";s:28:"inquiry_contact_heading_font";a:4:{s:4:"size";s:4:"14px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}s:22:"inquiry_form_site_name";s:13:"First wp site";s:27:"inquiry_form_site_name_font";a:4:{s:4:"size";s:4:"28px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}s:34:"inquiry_form_profile_position_font";a:4:{s:4:"size";s:4:"14px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#000000";}s:30:"inquiry_form_profile_name_font";a:4:{s:4:"size";s:4:"14px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#000000";}s:26:"inquiry_contact_popup_text";a:4:{s:4:"size";s:4:"12px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}s:23:"inquiry_input_bg_colour";s:7:"#FAFAFA";s:25:"inquiry_input_font_colour";s:7:"#000000";s:20:"inquiry_input_border";a:5:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#CCCCCC";s:6:"corner";s:6:"square";s:13:"rounded_value";i:0;}s:27:"inquiry_contact_text_button";s:4:"SEND";s:32:"inquiry_contact_button_bg_colour";s:7:"#EE2B2B";s:37:"inquiry_contact_button_bg_colour_from";s:7:"#FBCACA";s:35:"inquiry_contact_button_bg_colour_to";s:7:"#EE2B2B";s:29:"inquiry_contact_button_border";a:5:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#EE2B2B";s:6:"corner";s:7:"rounded";s:13:"rounded_value";i:3;}s:27:"inquiry_contact_button_font";a:4:{s:4:"size";s:4:"12px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#FFFFFF";}s:26:"inquiry_contact_form_class";s:0:"";s:28:"inquiry_contact_button_class";s:0:"";}', 'yes'),
(967, 'people_email_inquiry_contact_success', 'Thanks for your inquiry - we''ll be in touch with you as soon as possible!', 'yes'),
(968, 'people_email_inquiry_3rd_contact_form_settings', 'a:2:{s:27:"contact_form_type_shortcode";s:0:"";s:26:"contact_form_3rd_open_type";s:8:"new_page";}', 'yes'),
(969, 'profile_email_page_id', '', 'yes'),
(970, 'contact_page_global_reset_profile', 'no', 'yes'),
(971, 'people_email_inquiry_fancybox_popup_settings', 'a:6:{s:25:"fancybox_center_on_scroll";s:4:"true";s:22:"fancybox_transition_in";s:4:"none";s:23:"fancybox_transition_out";s:4:"none";s:17:"fancybox_speed_in";s:3:"300";s:18:"fancybox_speed_out";s:1:"0";s:22:"fancybox_overlay_color";s:7:"#666666";}', 'yes'),
(972, 'people_email_inquiry_colorbox_popup_settings', 'a:4:{s:25:"colorbox_center_on_scroll";s:4:"true";s:19:"colorbox_transition";s:4:"none";s:14:"colorbox_speed";s:3:"300";s:22:"colorbox_overlay_color";s:7:"#666666";}', 'yes'),
(973, 'a3_people_contact_clean_on_deletion', '1', 'yes'),
(974, 'people_contact_grid_view_layout', 'a:5:{s:20:"thumb_image_position";s:4:"left";s:16:"thumb_image_wide";i:25;s:22:"fix_thumb_image_height";s:1:"1";s:18:"thumb_image_height";i:150;s:19:"item_title_position";s:5:"above";}', 'yes'),
(976, 'people_contact_grid_view_style', 'a:7:{s:26:"grid_view_item_padding_top";i:10;s:29:"grid_view_item_padding_bottom";i:10;s:27:"grid_view_item_padding_left";i:10;s:28:"grid_view_item_padding_right";i:10;s:25:"grid_view_item_background";s:7:"#FFFFFF";s:21:"grid_view_item_border";a:5:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#DBDBDB";s:6:"corner";s:6:"square";s:13:"rounded_value";i:0;}s:21:"grid_view_item_shadow";a:7:{s:6:"enable";i:1;s:8:"h_shadow";s:3:"5px";s:8:"v_shadow";s:3:"5px";s:4:"blur";s:3:"2px";s:6:"spread";s:3:"2px";s:5:"color";s:7:"#DBDBDB";s:5:"inset";s:0:"";}}', 'yes'),
(977, 'people_contact_grid_view_image_style', 'a:5:{s:22:"item_image_border_type";s:7:"rounder";s:21:"item_image_background";s:7:"#FFFFFF";s:18:"item_image_padding";i:2;s:17:"item_image_border";a:3:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#DBDBDB";}s:17:"item_image_shadow";a:7:{s:6:"enable";i:1;s:8:"h_shadow";s:3:"5px";s:8:"v_shadow";s:3:"5px";s:4:"blur";s:3:"2px";s:6:"spread";s:3:"2px";s:5:"color";s:7:"#DBDBDB";s:5:"inset";s:0:"";}}', 'yes'),
(979, 'people_contact_grid_view_icon', 'a:8:{s:21:"default_profile_image";s:100:"http://wordpress.local/wp-content/plugins/contact-us-page-contact-people/assets/images/no-avatar.png";s:20:"grid_view_icon_phone";s:103:"http://wordpress.local/wp-content/plugins/contact-us-page-contact-people/assets/images/p_icon_phone.png";s:18:"grid_view_icon_fax";s:101:"http://wordpress.local/wp-content/plugins/contact-us-page-contact-people/assets/images/p_icon_fax.png";s:21:"grid_view_icon_mobile";s:104:"http://wordpress.local/wp-content/plugins/contact-us-page-contact-people/assets/images/p_icon_mobile.png";s:20:"grid_view_icon_email";s:103:"http://wordpress.local/wp-content/plugins/contact-us-page-contact-people/assets/images/p_icon_email.png";s:20:"grid_view_email_text";s:10:"Click Here";s:22:"grid_view_icon_website";s:105:"http://wordpress.local/wp-content/plugins/contact-us-page-contact-people/assets/images/p_icon_website.png";s:22:"grid_view_website_text";s:13:"Visit Website";}', 'yes'),
(980, 'people_contact_widget_information', 'a:7:{s:19:"widget_info_address";s:0:"";s:17:"widget_info_phone";s:0:"";s:15:"widget_info_fax";s:0:"";s:18:"widget_info_mobile";s:0:"";s:17:"widget_info_email";s:0:"";s:26:"widget_content_before_maps";s:0:"";s:25:"widget_content_after_maps";s:0:"";}', 'yes'),
(982, 'people_contact_widget_email_contact_form', 'a:7:{s:24:"widget_show_contact_form";i:0;s:22:"widget_input_shortcode";s:0:"";s:22:"widget_email_from_name";s:13:"First wp site";s:25:"widget_email_from_address";s:19:"loiphamle@gmail.com";s:16:"widget_send_copy";s:2:"no";s:15:"widget_email_to";s:19:"loiphamle@gmail.com";s:15:"widget_email_cc";s:0:"";}', 'yes'),
(984, 'people_contact_widget_maps', 'a:6:{s:25:"widget_hide_maps_frontend";i:0;s:15:"widget_location";s:9:"Australia";s:17:"widget_zoom_level";i:6;s:15:"widget_map_type";s:7:"ROADMAP";s:17:"widget_map_height";i:150;s:24:"widget_maps_callout_text";s:0:"";}', 'yes'),
(999, 'socialize_settings10', 'a:62:{s:19:"socialize_installed";s:2:"on";s:17:"socialize_version";s:2:"27";s:18:"socialize_alert_bg";s:7:"#FFEAA8";s:27:"socialize_alert_border_size";s:3:"2px";s:28:"socialize_alert_border_style";s:5:"solid";s:28:"socialize_alert_border_color";s:4:"#ddd";s:14:"socialize_text";s:302:"If you enjoyed this post, please consider <a href="#comments">leaving a comment</a> or <a href="http://wordpress.local/?feed=rss2" title="Syndicate this site using RSS">subscribing to the <abbr title="Really Simple Syndication">RSS</abbr> feed</a> to have future articles delivered to your feed reader.";s:23:"socialize_display_front";s:2:"on";s:26:"socialize_display_archives";s:2:"on";s:24:"socialize_display_search";s:0:"";s:23:"socialize_display_posts";s:2:"on";s:23:"socialize_display_pages";s:2:"on";s:22:"socialize_display_feed";s:0:"";s:19:"socialize_alert_box";s:2:"on";s:25:"socialize_alert_box_pages";s:2:"on";s:23:"socialize_twitterWidget";s:8:"official";s:18:"socialize_fbWidget";s:13:"official-like";s:15:"socialize_float";s:4:"left";s:24:"socialize_twitter_source";s:11:"socializeWP";s:9:"sharemeta";s:9:"1,2,17,18";s:20:"socialize_bitly_name";s:0:"";s:19:"socialize_bitly_key";s:0:"";s:21:"socialize_topsy_theme";s:10:"light-blue";s:20:"socialize_topsy_size";s:3:"big";s:23:"socialize_twitter_count";s:8:"vertical";s:25:"socialize_twitter_related";s:0:"";s:25:"socialize_tweetmeme_style";s:6:"normal";s:24:"socialize_tweetcount_via";s:5:"false";s:26:"socialize_tweetcount_links";s:4:"true";s:25:"socialize_tweetcount_size";s:5:"large";s:31:"socialize_tweetcount_background";s:6:"80b62a";s:27:"socialize_tweetcount_border";s:6:"CCCCCC";s:9:"fb_layout";s:9:"box_count";s:12:"fb_showfaces";s:5:"false";s:7:"fb_verb";s:4:"like";s:7:"fb_font";s:5:"arial";s:8:"fb_color";s:5:"light";s:8:"fb_width";s:2:"45";s:11:"reddit_type";s:1:"2";s:14:"reddit_bgcolor";s:0:"";s:18:"reddit_bordercolor";s:0:"";s:7:"su_type";s:1:"5";s:10:"buzz_style";s:12:"normal-count";s:18:"plusone_annotation";s:0:"";s:13:"plusone_style";s:4:"tall";s:9:"digg_size";s:10:"DiggMedium";s:15:"yahoo_badgetype";s:6:"square";s:16:"linkedin_counter";s:3:"top";s:18:"socialize_position";s:8:"vertical";s:13:"socialize_css";s:0:"";s:25:"socialize_action_template";s:93:"<div class="socialize-buttons">%%buttons%%</div><div class="socialize-text">%%content%%</div>";s:18:"socialize_fb_appid";s:0:"";s:20:"socialize_fb_adminid";s:0:"";s:24:"socialize_display_custom";a:0:{}s:12:"socialize_og";s:2:"on";s:19:"socialize_fb_pageid";s:2:"on";s:17:"pinterest_counter";s:5:"above";s:14:"buffer_counter";s:8:"vertical";s:13:"fb_sendbutton";s:5:"false";s:24:"socialize_button_display";s:2:"in";s:20:"socialize_out_margin";s:4:"-105";s:14:"pocket_counter";s:8:"vertical";}', 'yes'),
(1000, 'addthis_settings', 'a:24:{s:8:"username";s:0:"";s:7:"profile";s:0:"";s:8:"password";s:0:"";s:5:"above";s:11:"fb_tw_p1_sc";s:5:"below";s:11:"fb_tw_p1_sc";s:18:"addthis_show_stats";b:0;s:19:"addthis_append_data";b:0;s:18:"addthis_showonhome";b:1;s:19:"addthis_showonpages";b:0;s:22:"addthis_showonarchives";b:1;s:18:"addthis_showoncats";b:1;s:22:"addthis_showonexcerpts";b:1;s:18:"addthis_aftertitle";b:0;s:22:"addthis_beforecomments";b:0;s:18:"addthis_addressbar";b:0;s:11:"addthis_508";b:0;s:21:"addthis_copytracking2";b:0;s:16:"addthis_language";s:0:"";s:9:"atversion";s:3:"300";s:23:"atversion_update_status";s:1:"0";s:28:"credential_validation_status";s:1:"0";s:17:"above_chosen_list";s:0:"";s:17:"below_chosen_list";s:0:"";s:8:"wpfooter";b:1;}', 'yes'),
(1001, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1386675285', 'yes'),
(1002, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3898";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2456";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2344";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1930";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1856";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1583";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1329";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1325";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1310";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1260";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1225";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1121";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1000";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"982";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"974";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"950";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"844";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"821";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"780";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"722";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"686";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"681";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"678";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"623";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"615";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"595";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"572";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"570";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"541";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"539";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"530";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"522";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"506";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"505";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"471";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"458";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"453";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"452";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"436";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"432";}}', 'yes'),
(1009, '_site_transient_timeout_browser_78419f71278ed7bb0426e3cc1d56a935', '1387270712', 'yes'),
(1010, '_site_transient_browser_78419f71278ed7bb0426e3cc1d56a935', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"25.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1016, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(1031, '_site_transient_timeout_browser_6f7c62fdea85348b09138021703fd1a5', '1387339120', 'yes'),
(1032, '_site_transient_browser_6f7c62fdea85348b09138021703fd1a5', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"31.0.1650.63";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1089, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1386862698', 'no'),
(1090, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: blogsearch.google.com; Host not found</p>', 'no'),
(1091, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1386862699', 'no'),
(1092, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org; Host not found</p></div>', 'no'),
(1093, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1386862703', 'no'),
(1094, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org; Host not found</p></div>', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1096, 'rewrite_rules', 'a:69:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=102&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(1097, '_site_transient_timeout_wporg_theme_feature_list', '1386846080', 'yes'),
(1098, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}}', 'yes'),
(1099, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1386835280;s:7:"checked";a:2:{s:6:"custom";s:0:"";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(1113, '_site_transient_timeout_theme_roots', '1386837078', 'yes'),
(1114, '_site_transient_theme_roots', 'a:2:{s:6:"custom";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(1130, 'category_children', 'a:0:{}', 'yes'),
(1150, 'customContactFormsAdminOptions', 'a:34:{s:16:"show_widget_home";i:1;s:17:"show_widget_pages";i:1;s:19:"show_widget_singles";i:1;s:22:"show_widget_categories";i:1;s:20:"show_widget_archives";i:1;s:16:"default_to_email";s:19:"loiphamle@gmail.com";s:18:"default_from_email";s:19:"loiphamle@gmail.com";s:17:"default_from_name";s:20:"Custom Contact Forms";s:20:"default_form_subject";s:37:"Someone Filled Out Your Contact Form!";s:21:"remember_field_values";i:0;s:22:"enable_widget_tooltips";i:1;s:13:"mail_function";s:7:"default";s:26:"form_success_message_title";s:26:"Successful Form Submission";s:20:"form_success_message";s:69:"Thank you for filling out our web form. We will get back to you ASAP.";s:13:"enable_jquery";i:1;s:9:"code_type";s:5:"XHTML";s:20:"show_install_popover";i:0;s:22:"email_form_submissions";i:1;s:23:"enable_dashboard_widget";i:1;s:10:"admin_ajax";i:1;s:9:"smtp_host";s:0:"";s:15:"smtp_encryption";s:4:"none";s:19:"smtp_authentication";i:0;s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:25:"default_form_error_header";s:36:"You filled out the form incorrectly.";s:28:"default_form_bad_permissions";s:56:"You don''t have the proper permissions to view this form.";s:26:"enable_form_access_manager";i:0;s:16:"dashboard_access";i:2;s:24:"form_page_inclusion_only";i:0;s:20:"max_file_upload_size";i:10;s:20:"recaptcha_public_key";s:0:"";s:21:"recaptcha_private_key";s:0:"";}', 'yes'),
(1151, '_transient_timeout_feed_d92d5700315fd164345ad01a4c9e72fc', '1386881426', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1152, '_transient_feed_d92d5700315fd164345ad01a4c9e72fc', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:62:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"Taylor Lovett - WordPress, Guitar, Life » Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:27:"http://www.taylorlovett.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Aug 2013 21:50:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:29:"http://wordpress.org/?v=3.5.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:14:{i:0;a:6:{s:4:"data";s:51:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Custom Contact Forms 5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.taylorlovett.com/custom-contact-forms/custom-contact-forms-5-released/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:90:"http://www.taylorlovett.com/custom-contact-forms/custom-contact-forms-5-released/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Mar 2012 15:46:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:6:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Bethesda Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:26:"Content Management Systems";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:3:"PHP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:23:"PHP WordPress Functions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:27:"Washington DC Web Developer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.taylorlovett.com/?p=1036";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:363:"Big news for Custom Contact Forms! After months of developing, we just released version 5. CCF version 5 is going to change the ways you build your forms dramatically. The theme for this new version is improved admin user interface. New Features: Rearrange attached fields with drag-and-drop Rearrange attached field options with drag-and-drop Restyled form [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:86:"http://www.taylorlovett.com/custom-contact-forms/custom-contact-forms-5-released/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Custom Contact Forms Development Resumes Again";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-4705/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:96:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-4705/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Dec 2011 15:13:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"PHP Programming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.taylorlovett.com/?p=1010";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:194:"Hey guys, after another four month hiatus Custom Contact Form development is resuming. Version 4.7.0.5 will be released in the next couple days which will fix some E_NOTICE PHP bugs. Stay tuned!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:92:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-4705/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:57:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"Custom Contact Forms 4.6.0.1 Fixes Major IE Bug";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"http://www.taylorlovett.com/wordpress-plugins/custom-contact-forms-4-6-0-1-fixes-major-ie-bug/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:103:"http://www.taylorlovett.com/wordpress-plugins/custom-contact-forms-4-6-0-1-fixes-major-ie-bug/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Jun 2011 15:54:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:8:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:10:"Javascript";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:6:"JQuery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:24:"Bethesda Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:18:"Maryland WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Rockville Web Developer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=969";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:300:"After discovering a bug in the admin panel some months ago, where when using the form, style, or field manager, the browser goes to a page showing a -1, we have finally fixed this bug. It turns out WordPress was loading an old version of the JQuery Forms plugin, the newest version had this bug [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:99:"http://www.taylorlovett.com/wordpress-plugins/custom-contact-forms-4-6-0-1-fixes-major-ie-bug/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Custom Contact Forms Development Is Underway";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-development-is-underway/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:115:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-development-is-underway/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 May 2011 14:56:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"PHP Programming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:25:"Rockville Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=967";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:298:"Hey guys, just wanted to let you know that the development on Custom Contact Forms has started up again after a 4-5 month break. CCF has now been downloaded over 100,000 times and is still growing. Expect to see a new fixed field for dates (that uses datePicker jQuery) as well as a few other [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:111:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-development-is-underway/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:60:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"50,000 Downloads for Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"http://www.taylorlovett.com/maryland-wordpress-customization/50000-downloads-custom-contact-forms/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:107:"http://www.taylorlovett.com/maryland-wordpress-customization/50000-downloads-custom-contact-forms/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 31 Jan 2011 16:19:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:9:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:25:"Rockville Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:13:"Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:24:"Secure Fast Contact Form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:9:"Web Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:10:"WP Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=956";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:330:"In under 8 months, Custom Contact Forms has been downloaded 50,000 times! Can you believe it? Before creating CCF, we tried to use Contact Form 7 and Secure Fast Contact Form on our websites but there just wasn&#8217;t enough customization. We need our form submissions saved in the database and a style manager to customize [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:103:"http://www.taylorlovett.com/maryland-wordpress-customization/50000-downloads-custom-contact-forms/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:60:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Fields Disappearing Bug Fixed in Custom Contact Forms 4.0.9.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:100:"http://www.taylorlovett.com/custom-contact-forms/fields-disappearing-bug-fixed-custom-contact-forms/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:109:"http://www.taylorlovett.com/custom-contact-forms/fields-disappearing-bug-fixed-custom-contact-forms/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Jan 2011 16:34:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:9:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:19:"Maryland Web Design";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:22:"Maryland Web Developer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:23:"PHP WordPress Functions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:27:"Washington DC Web Developer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:22:"XHTML WordPress Themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=929";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:312:"Since the inception of Custom Contact Forms there has been a very strange bug that has bunch of people. After detaching fields in a certain order, fields would start to randomly disappear and blank spaces would pop up in the attachment dropdown. This was an error in logic. If two fields were attached to a [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:105:"http://www.taylorlovett.com/custom-contact-forms/fields-disappearing-bug-fixed-custom-contact-forms/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:63:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"10,000 Downloads!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"http://www.taylorlovett.com/maryland-wordpress-customization/10000-downloads-wordpress-plugin/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:103:"http://www.taylorlovett.com/maryland-wordpress-customization/10000-downloads-wordpress-plugin/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 14 Nov 2010 18:14:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:10:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:25:"Rockville Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:10:"Javascript";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:23:"Javascript in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:6:"JQuery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:5:"MySQL";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:3:"PHP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:23:"PHP WordPress Functions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=854";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:328:"Custom Contact Forms has been download over 10,000 times in it&#8217;s first 5 months. Thanks to everyone who has provided feedback and bug reports. 4.1.0 is in the works and hopefully will make Custom Contact Forms available to more types of server configurations. CCF has grown in to quite the plugin and is only gaining [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:99:"http://www.taylorlovett.com/maryland-wordpress-customization/10000-downloads-wordpress-plugin/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:60:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Custom Contact Forms 4.0.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-4-0-0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-4-0-0/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 26 Oct 2010 16:02:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:9:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"PHP Programming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:19:"Website Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:26:"Content Management Systems";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:3:"PHP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:23:"PHP WordPress Functions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=840";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:323:"Custom Contact Forms 4.0.0, the most intuitive and customizable contact form plugin for WordPress, is about to be released. Here is a short list of some of the new features being added: Import/Export/Create Backups at the click of a button New style options for your forms Ability to add a different CSS class to each [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:93:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-4-0-0/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:57:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Custom Contact Forms 3.0.0 and 3.1.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-3-0-0-and-3-1-0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:107:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-3-0-0-and-3-1-0/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 31 Aug 2010 17:11:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:8:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"PHP Programming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:19:"Website Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:30:"Contact Form WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:5:"MySQL";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:3:"PHP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:98:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-3-0-0-and-3-1-0/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:313:"Custom Contact Forms 3.0.0 was released and shortly after so was 3.1.0. CCF has grown to be quite the plugin, packed with awesome features, many of which you will not find in any contact form plugin. An interesting new feature is Custom Html Forms. This feature allows people who are skill with Html and Css [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:103:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-3-0-0-and-3-1-0/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Custom Contact Forms 2.2.4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-2-2-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-2-2-4/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 18 Aug 2010 21:54:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=811";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"Custom Contact Forms 2.2.4 has been released. This stable version features field instructions. Now you can add instructions to each of your fields so when someone highlights certain field a stylish JQuery popover is displayed showing the instruction. This will be the first of many fancy JQuery features to be added in the near future. [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:93:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-2-2-4/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:57:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Custom Contact Forms 2.2.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"http://www.taylorlovett.com/custom-contact-forms/custom-contact-forms-220/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:83:"http://www.taylorlovett.com/custom-contact-forms/custom-contact-forms-220/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Aug 2010 14:59:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:8:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Bethesda Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Custom WordPress Themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:18:"Maryland WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:23:"PHP WordPress Functions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:5:"XHTML";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=806";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:316:"Custom Contact Forms 2.2.0 has been released and sports a number of new useful features. A plugin news feed has been added to the administratin panel displaying the latest news, tips, and tricks concerning Custom Contact Forms. A form has been added to the admin page allowing anyone to report a bug as well as [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:79:"http://www.taylorlovett.com/custom-contact-forms/custom-contact-forms-220/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Custom Contact Forms 2.1.0 Released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"http://www.taylorlovett.com/wordpress-plugins/custom-contact-forms-2-1-0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:82:"http://www.taylorlovett.com/wordpress-plugins/custom-contact-forms-2-1-0/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 07 Aug 2010 03:31:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"PHP Programming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:25:"Rockville Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=801";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:357:"Custom Contact Forms 2.1.0 brings a bunch of new, great features to WordPress blog owners. Create, edit, and delete form styles; customize every aspect of your contact forms. Create multiple styles and attach different styles to different forms &#8220;Are You Human?&#8221;, new fixed field added Custom Contact Forms news feed added to admin page The [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:78:"http://www.taylorlovett.com/wordpress-plugins/custom-contact-forms-2-1-0/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:66:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Raving Reviews for Custom Contact Forms 1.1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"http://www.taylorlovett.com/wordpress-plugins/raving-reviews-for-custom-contact-forms/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:95:"http://www.taylorlovett.com/wordpress-plugins/raving-reviews-for-custom-contact-forms/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 Jul 2010 20:34:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:11:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"PHP Programming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:25:"Rockville Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:24:"Bethesda Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:7:"Captcha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:26:"Content Management Systems";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:23:"Custom WordPress Themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:15:"Mozilla Firefox";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:17:"PHP Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:23:"PHP WordPress Functions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=737";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:336:"The first stable version of my WordPress Plugin, Custom Contact Forms has been released in version 1.1.1. Version 1.1.1 includes fixed fields that are included automatically and not listed with user fields. The first fixed field added to Custom Contact Forms is a secure captcha. As well as fixed fields, plugin users can now make [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:91:"http://www.taylorlovett.com/wordpress-plugins/raving-reviews-for-custom-contact-forms/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:66:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Custom Contact Forms 1.0 Released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-1-0-released/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:104:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-1-0-released/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 18 Jul 2010 23:02:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:11:{i:0;a:5:{s:4:"data";s:20:"Custom Contact Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"PHP Programming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:25:"Rockville Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:26:"Search Engine Optimization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:23:"WordPress Customization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:24:"Bethesda Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Custom WordPress Themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:3:"PHP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:23:"PHP WordPress Functions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:18:"WordPress Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.taylorlovett.com/?p=734";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:320:"My new WordPress plugin, Custom Contact Forms 1.0, has finally be released. Custom Contact Forms is a WordPress plugin for handling and displaying custom web forms; insert the provided code in any page, post, category, or archive in which you want a web form to show. This plugin allows you to create fields with a [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Taylor Lovett";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:100:"http://www.taylorlovett.com/maryland-wordpress-customization/custom-contact-forms-1-0-released/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:63:"http://www.taylorlovett.com/category/custom-contact-forms/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:7:{s:4:"date";s:29:"Thu, 12 Dec 2013 08:50:24 GMT";s:6:"server";s:6:"Apache";s:10:"x-pingback";s:38:"http://www.taylorlovett.com/xmlrpc.php";s:4:"etag";s:34:""6d01bee23ac95704378969b95066bc5a"";s:13:"last-modified";s:29:"Fri, 16 Aug 2013 21:50:59 GMT";s:10:"connection";s:5:"close";s:12:"content-type";s:23:"text/xml; charset=UTF-8";}s:5:"build";s:14:"20131209020640";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1153, '_transient_timeout_feed_mod_d92d5700315fd164345ad01a4c9e72fc', '1386881426', 'no'),
(1154, '_transient_feed_mod_d92d5700315fd164345ad01a4c9e72fc', '1386838226', 'no'),
(1155, 'vfb_db_version', '2.7', 'yes'),
(1156, 'vfb_dashboard_widget_options', 'a:1:{s:28:"vfb_dashboard_recent_entries";a:1:{s:5:"items";i:5;}}', 'yes'),
(1158, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=296 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1385692941:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 1, '_edit_lock', '1386836051:1'),
(6, 1, '_edit_last', '1'),
(11, 8, '_edit_last', '1'),
(12, 8, '_edit_lock', '1386836045:1'),
(13, 2, '_edit_lock', '1385701135:1'),
(14, 10, '_wp_attached_file', '2013/11/1460210_668376769860451_1018478047_n.jpg'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:370;s:6:"height";i:409;s:4:"file";s:48:"2013/11/1460210_668376769860451_1018478047_n.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"1460210_668376769860451_1018478047_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"1460210_668376769860451_1018478047_n-271x300.jpg";s:5:"width";i:271;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:48:"1460210_668376769860451_1018478047_n-370x270.jpg";s:5:"width";i:370;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(16, 10, '_wp_attachment_image_alt', 'test'),
(17, 2, '_edit_last', '1'),
(18, 13, '_wp_attached_file', '2013/11/747666_477793378947369_60924_n.mp4'),
(19, 13, '_wp_attachment_metadata', 'a:9:{s:8:"filesize";i:186362323;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:1065;s:16:"length_formatted";s:5:"17:45";s:5:"width";i:1280;s:6:"height";i:720;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}}'),
(20, 17, '_wp_attached_file', '2013/11/l.php_.jpg'),
(21, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:387;s:4:"file";s:18:"2013/11/l.php_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"l.php_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"l.php_-300x288.jpg";s:5:"width";i:300;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(24, 19, '_wp_attached_file', '2013/11/1474468_687556261275835_805152489_n.jpg'),
(25, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:499;s:6:"height";i:258;s:4:"file";s:47:"2013/11/1474468_687556261275835_805152489_n.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"1474468_687556261275835_805152489_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"1474468_687556261275835_805152489_n-300x155.jpg";s:5:"width";i:300;s:6:"height";i:155;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(31, 22, '_wp_attached_file', '2013/11/sec1.mp4'),
(32, 22, '_wp_attachment_metadata', 'a:9:{s:7:"bitrate";i:2870;s:8:"filesize";i:42536602;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:685;s:16:"length_formatted";s:5:"11:24";s:5:"width";i:640;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";}'),
(33, 24, '_wp_attached_file', '2013/11/sec11.mp4'),
(34, 24, '_wp_attachment_metadata', 'a:9:{s:7:"bitrate";i:2870;s:8:"filesize";i:42536602;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:685;s:16:"length_formatted";s:5:"11:24";s:5:"width";i:640;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";}'),
(37, 1, 'enclosure', 'http://wordpress.local/wp-content/uploads/2013/11/sec11.mp4\n42536602\nvideo/mp4\n'),
(38, 26, '_menu_item_type', 'custom'),
(39, 26, '_menu_item_menu_item_parent', '0'),
(40, 26, '_menu_item_object_id', '26'),
(41, 26, '_menu_item_object', 'custom'),
(42, 26, '_menu_item_target', ''),
(43, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 26, '_menu_item_xfn', ''),
(45, 26, '_menu_item_url', 'http://wordpress.local/'),
(46, 26, '_menu_item_orphaned', '1386584133'),
(47, 27, '_menu_item_type', 'post_type'),
(48, 27, '_menu_item_menu_item_parent', '0'),
(49, 27, '_menu_item_object_id', '2'),
(50, 27, '_menu_item_object', 'page'),
(51, 27, '_menu_item_target', ''),
(52, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 27, '_menu_item_xfn', ''),
(54, 27, '_menu_item_url', ''),
(55, 27, '_menu_item_orphaned', '1386584133'),
(56, 28, '_menu_item_type', 'post_type'),
(57, 28, '_menu_item_menu_item_parent', '0'),
(58, 28, '_menu_item_object_id', '4'),
(59, 28, '_menu_item_object', 'page'),
(60, 28, '_menu_item_target', ''),
(61, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 28, '_menu_item_xfn', ''),
(63, 28, '_menu_item_url', ''),
(64, 28, '_menu_item_orphaned', '1386584133'),
(65, 30, '_edit_last', '1'),
(66, 30, '_edit_lock', '1386836256:1'),
(67, 30, '_wp_page_template', 'default'),
(68, 34, '_edit_last', '1'),
(69, 34, '_edit_lock', '1386649081:1'),
(70, 35, '_wp_attached_file', '2013/12/992508_153013594904062_873206231_n.jpg'),
(71, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:640;s:4:"file";s:46:"2013/12/992508_153013594904062_873206231_n.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"992508_153013594904062_873206231_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"992508_153013594904062_873206231_n-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(72, 36, '_wp_attached_file', '2013/12/1002517_151816875023734_2064255183_n.jpg'),
(73, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:479;s:6:"height";i:308;s:4:"file";s:48:"2013/12/1002517_151816875023734_2064255183_n.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"1002517_151816875023734_2064255183_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"1002517_151816875023734_2064255183_n-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(74, 37, '_wp_attached_file', '2013/12/1388026_167878593417562_1941689492_n.jpg'),
(75, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:647;s:6:"height";i:845;s:4:"file";s:48:"2013/12/1388026_167878593417562_1941689492_n.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"1388026_167878593417562_1941689492_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"1388026_167878593417562_1941689492_n-229x300.jpg";s:5:"width";i:229;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:48:"1388026_167878593417562_1941689492_n-624x814.jpg";s:5:"width";i:624;s:6:"height";i:814;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(76, 34, 'settings', 'a:26:{s:9:"animation";s:5:"slide";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:13:"slidesPerView";s:1:"1";s:8:"maxWidth";s:1:"0";s:11:"aspectRatio";s:3:"3:1";s:6:"height";s:3:"200";s:14:"imageBehaviour";s:7:"natural";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:27:"preserveSlideshowDimensions";s:5:"false";s:20:"enableResponsiveness";s:4:"true";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:12:"pauseOnHover";s:4:"true";s:12:"controllable";s:4:"true";s:21:"hideNavigationButtons";s:5:"false";s:14:"showPagination";s:4:"true";s:14:"hidePagination";s:4:"true";s:12:"controlPanel";s:5:"false";s:16:"hideControlPanel";s:4:"true";s:15:"waitUntilLoaded";s:4:"true";s:15:"showLoadingIcon";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(77, 34, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(78, 34, 'slides', 'a:3:{i:1;a:7:{s:5:"title";s:36:"1388026_167878593417562_1941689492_n";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"37";}i:2;a:7:{s:5:"title";s:36:"1002517_151816875023734_2064255183_n";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"36";}i:3;a:7:{s:5:"title";s:34:"992508_153013594904062_873206231_n";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"35";}}'),
(79, 47, 'ml-slider_settings', 'a:32:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:4:"1000";s:6:"height";s:3:"600";s:3:"spw";s:1:"7";s:3:"sph";s:1:"5";s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";s:2:"15";s:6:"center";s:4:"true";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:12:"smoothHeight";s:5:"false";}'),
(80, 35, 'ml-slider_type', 'image'),
(81, 37, 'ml-slider_type', 'image'),
(82, 36, 'ml-slider_type', 'image'),
(83, 35, '_wp_attachment_backup_sizes', 'a:4:{s:15:"resized-480x246";a:5:{s:4:"path";s:92:"C:wampwwwwordpress/wp-content/uploads/2013/12/992508_153013594904062_873206231_n-480x246.jpg";s:4:"file";s:46:"992508_153013594904062_873206231_n-480x246.jpg";s:5:"width";i:480;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-480x240";a:5:{s:4:"path";s:92:"C:wampwwwwordpress/wp-content/uploads/2013/12/992508_153013594904062_873206231_n-480x240.jpg";s:4:"file";s:46:"992508_153013594904062_873206231_n-480x240.jpg";s:5:"width";i:480;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-480x192";a:5:{s:4:"path";s:92:"C:wampwwwwordpress/wp-content/uploads/2013/12/992508_153013594904062_873206231_n-480x192.jpg";s:4:"file";s:46:"992508_153013594904062_873206231_n-480x192.jpg";s:5:"width";i:480;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-480x288";a:5:{s:4:"path";s:92:"C:wampwwwwordpress/wp-content/uploads/2013/12/992508_153013594904062_873206231_n-480x288.jpg";s:4:"file";s:46:"992508_153013594904062_873206231_n-480x288.jpg";s:5:"width";i:480;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}}'),
(84, 37, '_wp_attachment_backup_sizes', 'a:4:{s:15:"resized-565x290";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1388026_167878593417562_1941689492_n-565x290.jpg";s:4:"file";s:48:"1388026_167878593417562_1941689492_n-565x290.jpg";s:5:"width";i:565;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-647x323";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1388026_167878593417562_1941689492_n-647x323.jpg";s:4:"file";s:48:"1388026_167878593417562_1941689492_n-647x323.jpg";s:5:"width";i:647;s:6:"height";i:323;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-647x258";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1388026_167878593417562_1941689492_n-647x258.jpg";s:4:"file";s:48:"1388026_167878593417562_1941689492_n-647x258.jpg";s:5:"width";i:647;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-647x388";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1388026_167878593417562_1941689492_n-647x388.jpg";s:4:"file";s:48:"1388026_167878593417562_1941689492_n-647x388.jpg";s:5:"width";i:647;s:6:"height";i:388;s:9:"mime-type";s:10:"image/jpeg";}}'),
(85, 36, '_wp_attachment_backup_sizes', 'a:4:{s:15:"resized-479x245";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1002517_151816875023734_2064255183_n-479x245.jpg";s:4:"file";s:48:"1002517_151816875023734_2064255183_n-479x245.jpg";s:5:"width";i:479;s:6:"height";i:245;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-479x239";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1002517_151816875023734_2064255183_n-479x239.jpg";s:4:"file";s:48:"1002517_151816875023734_2064255183_n-479x239.jpg";s:5:"width";i:479;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-479x191";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1002517_151816875023734_2064255183_n-479x191.jpg";s:4:"file";s:48:"1002517_151816875023734_2064255183_n-479x191.jpg";s:5:"width";i:479;s:6:"height";i:191;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-479x287";a:5:{s:4:"path";s:94:"C:wampwwwwordpress/wp-content/uploads/2013/12/1002517_151816875023734_2064255183_n-479x287.jpg";s:4:"file";s:48:"1002517_151816875023734_2064255183_n-479x287.jpg";s:5:"width";i:479;s:6:"height";i:287;s:9:"mime-type";s:10:"image/jpeg";}}'),
(86, 54, '_wp_trash_meta_status', 'publish'),
(87, 54, '_wp_trash_meta_status', 'publish'),
(88, 54, '_wp_trash_meta_time', '1386657506'),
(89, 54, '_wp_trash_meta_time', '1386657506'),
(90, 53, '_edit_lock', '1386657418:1'),
(91, 53, '_edit_last', '1'),
(92, 53, '_wp_page_template', 'default'),
(93, 53, '_wp_trash_meta_status', 'publish'),
(94, 53, '_wp_trash_meta_time', '1386658477'),
(95, 61, '_edit_last', '1'),
(96, 61, '_edit_lock', '1386836036:1'),
(99, 63, '_edit_last', '1'),
(100, 63, '_edit_lock', '1386835903:1'),
(101, 63, '_wp_page_template', 'default'),
(111, 66, '_menu_item_type', 'post_type'),
(112, 66, '_menu_item_menu_item_parent', '0'),
(113, 66, '_menu_item_object_id', '30'),
(114, 66, '_menu_item_object', 'page'),
(115, 66, '_menu_item_target', ''),
(116, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 66, '_menu_item_xfn', ''),
(118, 66, '_menu_item_url', ''),
(120, 67, '_menu_item_type', 'post_type'),
(121, 67, '_menu_item_menu_item_parent', '0'),
(122, 67, '_menu_item_object_id', '63'),
(123, 67, '_menu_item_object', 'page'),
(124, 67, '_menu_item_target', ''),
(125, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 67, '_menu_item_xfn', ''),
(127, 67, '_menu_item_url', ''),
(146, 71, '_edit_last', '1'),
(147, 71, '_edit_lock', '1386774555:1'),
(148, 71, '_wp_page_template', 'default'),
(149, 74, '_menu_item_type', 'post_type'),
(150, 74, '_menu_item_menu_item_parent', '66'),
(151, 74, '_menu_item_object_id', '71'),
(152, 74, '_menu_item_object', 'page'),
(153, 74, '_menu_item_target', ''),
(154, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 74, '_menu_item_xfn', ''),
(156, 74, '_menu_item_url', ''),
(158, 75, '_edit_last', '1'),
(159, 75, '_edit_lock', '1386774661:1'),
(160, 75, '_wp_page_template', 'default'),
(161, 77, '_edit_last', '1'),
(162, 77, '_edit_lock', '1386774682:1'),
(163, 77, '_wp_page_template', 'default'),
(164, 79, '_edit_last', '1'),
(165, 79, '_edit_lock', '1386774722:1'),
(166, 79, '_wp_page_template', 'default'),
(167, 81, '_edit_last', '1'),
(168, 81, '_edit_lock', '1386774745:1'),
(169, 81, '_wp_page_template', 'default'),
(170, 83, '_edit_last', '1'),
(171, 83, '_edit_lock', '1386774776:1'),
(172, 83, '_wp_page_template', 'default'),
(173, 85, '_edit_last', '1'),
(174, 85, '_edit_lock', '1386774933:1'),
(175, 85, '_wp_page_template', 'default'),
(176, 87, '_edit_last', '1'),
(177, 87, '_edit_lock', '1386774989:1'),
(178, 87, '_wp_page_template', 'default'),
(179, 89, '_edit_last', '1'),
(180, 89, '_edit_lock', '1386775011:1'),
(181, 89, '_wp_page_template', 'default'),
(182, 91, '_edit_last', '1'),
(183, 91, '_edit_lock', '1386775035:1'),
(184, 91, '_wp_page_template', 'default'),
(185, 93, '_menu_item_type', 'post_type'),
(186, 93, '_menu_item_menu_item_parent', '66'),
(187, 93, '_menu_item_object_id', '75'),
(188, 93, '_menu_item_object', 'page'),
(189, 93, '_menu_item_target', ''),
(190, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(191, 93, '_menu_item_xfn', ''),
(192, 93, '_menu_item_url', ''),
(194, 94, '_menu_item_type', 'post_type'),
(195, 94, '_menu_item_menu_item_parent', '0'),
(196, 94, '_menu_item_object_id', '79'),
(197, 94, '_menu_item_object', 'page'),
(198, 94, '_menu_item_target', ''),
(199, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(200, 94, '_menu_item_xfn', ''),
(201, 94, '_menu_item_url', ''),
(203, 95, '_menu_item_type', 'post_type'),
(204, 95, '_menu_item_menu_item_parent', '94'),
(205, 95, '_menu_item_object_id', '85'),
(206, 95, '_menu_item_object', 'page'),
(207, 95, '_menu_item_target', ''),
(208, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 95, '_menu_item_xfn', ''),
(210, 95, '_menu_item_url', ''),
(212, 96, '_menu_item_type', 'post_type'),
(213, 96, '_menu_item_menu_item_parent', '94'),
(214, 96, '_menu_item_object_id', '83'),
(215, 96, '_menu_item_object', 'page'),
(216, 96, '_menu_item_target', ''),
(217, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 96, '_menu_item_xfn', ''),
(219, 96, '_menu_item_url', ''),
(221, 97, '_menu_item_type', 'post_type'),
(222, 97, '_menu_item_menu_item_parent', '94'),
(223, 97, '_menu_item_object_id', '81'),
(224, 97, '_menu_item_object', 'page'),
(225, 97, '_menu_item_target', ''),
(226, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(227, 97, '_menu_item_xfn', ''),
(228, 97, '_menu_item_url', ''),
(230, 98, '_menu_item_type', 'post_type'),
(231, 98, '_menu_item_menu_item_parent', '0'),
(232, 98, '_menu_item_object_id', '77'),
(233, 98, '_menu_item_object', 'page'),
(234, 98, '_menu_item_target', ''),
(235, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(236, 98, '_menu_item_xfn', ''),
(237, 98, '_menu_item_url', ''),
(239, 99, '_menu_item_type', 'post_type'),
(240, 99, '_menu_item_menu_item_parent', '0'),
(241, 99, '_menu_item_object_id', '87'),
(242, 99, '_menu_item_object', 'page'),
(243, 99, '_menu_item_target', ''),
(244, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 99, '_menu_item_xfn', ''),
(246, 99, '_menu_item_url', ''),
(248, 100, '_menu_item_type', 'post_type'),
(249, 100, '_menu_item_menu_item_parent', '99'),
(250, 100, '_menu_item_object_id', '91'),
(251, 100, '_menu_item_object', 'page'),
(252, 100, '_menu_item_target', ''),
(253, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 100, '_menu_item_xfn', ''),
(255, 100, '_menu_item_url', ''),
(257, 101, '_menu_item_type', 'post_type'),
(258, 101, '_menu_item_menu_item_parent', '99'),
(259, 101, '_menu_item_object_id', '89'),
(260, 101, '_menu_item_object', 'page'),
(261, 101, '_menu_item_target', ''),
(262, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(263, 101, '_menu_item_xfn', ''),
(264, 101, '_menu_item_url', ''),
(266, 2, '_wp_trash_meta_status', 'publish'),
(267, 2, '_wp_trash_meta_time', '1386776136'),
(268, 4, '_wp_trash_meta_status', 'publish'),
(269, 4, '_wp_trash_meta_time', '1386776136'),
(270, 102, '_edit_last', '1'),
(271, 102, '_edit_lock', '1386837050:1'),
(272, 102, '_wp_page_template', 'default'),
(273, 104, '_edit_last', '1'),
(274, 104, '_edit_lock', '1386839911:1'),
(275, 104, '_wp_page_template', 'default'),
(276, 106, '_edit_last', '1'),
(277, 106, '_edit_lock', '1386821106:1'),
(278, 106, '_wp_page_template', 'default'),
(291, 102, 'addthis_exclude', 'true'),
(292, 109, '_wp_attached_file', '2013/12/bnr_01.jpg'),
(293, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:950;s:6:"height";i:600;s:4:"file";s:18:"2013/12/bnr_01.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"bnr_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"bnr_01-300x189.jpg";s:5:"width";i:300;s:6:"height";i:189;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"bnr_01-624x394.jpg";s:5:"width";i:624;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(294, 109, 'ml-slider_type', 'image'),
(295, 109, '_wp_attachment_backup_sizes', 'a:4:{s:15:"resized-565x290";a:5:{s:4:"path";s:64:"C:wampwwwwordpress/wp-content/uploads/2013/12/bnr_01-565x290.jpg";s:4:"file";s:18:"bnr_01-565x290.jpg";s:5:"width";i:565;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-800x400";a:5:{s:4:"path";s:64:"C:wampwwwwordpress/wp-content/uploads/2013/12/bnr_01-800x400.jpg";s:4:"file";s:18:"bnr_01-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-950x380";a:5:{s:4:"path";s:64:"C:wampwwwwordpress/wp-content/uploads/2013/12/bnr_01-950x380.jpg";s:4:"file";s:18:"bnr_01-950x380.jpg";s:5:"width";i:950;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-950x570";a:5:{s:4:"path";s:64:"C:wampwwwwordpress/wp-content/uploads/2013/12/bnr_01-950x570.jpg";s:4:"file";s:18:"bnr_01-950x570.jpg";s:5:"width";i:950;s:6:"height";i:570;s:9:"mime-type";s:10:"image/jpeg";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-11-25 02:28:31', '2013-11-25 02:28:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_19" align="alignnone" width="300"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n.jpg"><img class="size-medium wp-image-19" alt="Don''t stop now, you''re almost there" src="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n-300x155.jpg" width="300" height="155" /></a> Don''t stop now, you''re almost there[/caption]\r\n\r\n<a href="http://wordpress.local/wp-content/uploads/2013/11/sec11.mp4">sec1</a>\r\n\r\n&nbsp;', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2013-12-12 08:14:11', '2013-12-12 08:14:11', '', 0, 'http://wordpress.local/?p=1', 0, 'post', '', 1),
(2, 1, '2013-11-25 02:28:31', '2013-11-25 02:28:31', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n[video width="1280" height="1280" mp4="http://wordpress.local/wp-content/uploads/2013/11/747666_477793378947369_60924_n.mp4"][/video]\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\n\r\n[caption id="attachment_10" align="alignnone" width="271"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n.jpg"><img class="size-medium wp-image-10" alt="test" src="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n-271x300.jpg" width="271" height="300" /></a> sieu nhan xip sam[/caption]</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://wordpress.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2013-12-11 15:35:36', '2013-12-11 15:35:36', '', 0, 'http://wordpress.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2013-11-25 07:36:15', '2013-11-25 07:36:15', 'This is the new page for test chidlen pages', 'New page', '', 'trash', 'open', 'open', '', 'new-page', '', '', '2013-12-11 15:35:36', '2013-12-11 15:35:36', '', 2, 'http://wordpress.local/?page_id=4', 0, 'page', '', 0),
(5, 1, '2013-11-25 07:36:15', '2013-11-25 07:36:15', 'This is the new page for test chidlen pages', 'New page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2013-11-25 07:36:15', '2013-11-25 07:36:15', '', 4, 'http://wordpress.local/?p=5', 0, 'revision', '', 0),
(6, 1, '2013-11-25 08:22:16', '2013-11-25 08:22:16', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nxx\r\n\r\nx\r\n\r\nx\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\n&nbsp;\r\n\r\nx\r\n\r\n&nbsp;\r\n\r\nxx\r\n\r\n&nbsp;\r\n\r\nx\r\n\r\nx\r\n\r\nx\r\n\r\nx', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2013-11-25 08:22:16', '2013-11-25 08:22:16', '', 1, 'http://wordpress.local/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-11-25 08:23:32', '2013-11-25 08:23:32', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2013-11-25 08:23:32', '2013-11-25 08:23:32', '', 1, 'http://wordpress.local/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-11-25 08:24:24', '2013-11-25 08:24:24', 'New post for test...\r\n\r\n[caption id="attachment_17" align="alignnone" width="300"]<a href="http://wordpress.local/wp-content/uploads/2013/11/l.php_.jpg"><img class="size-medium wp-image-17" alt="Gian thi gian, thuong thi thuong" src="http://wordpress.local/wp-content/uploads/2013/11/l.php_-300x288.jpg" width="300" height="288" /></a> Gian thi gian, thuong thi thuong[/caption]', 'this is a new post', '', 'publish', 'open', 'open', '', 'this-is-a-new-post', '', '', '2013-12-12 08:14:05', '2013-12-12 08:14:05', '', 0, 'http://wordpress.local/?p=8', 0, 'post', '', 2),
(9, 1, '2013-11-25 08:24:24', '2013-11-25 08:24:24', 'test posts', 'this is a new post', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2013-11-25 08:24:24', '2013-11-25 08:24:24', '', 8, 'http://wordpress.local/?p=9', 0, 'revision', '', 0),
(10, 1, '2013-11-29 02:43:18', '2013-11-29 02:43:18', 'test', '1460210_668376769860451_1018478047_n', 'sieu nhan xip sam', 'inherit', 'open', 'open', '', '1460210_668376769860451_1018478047_n', '', '', '2013-11-29 02:43:18', '2013-11-29 02:43:18', '', 2, 'http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2013-11-29 04:05:42', '2013-11-29 04:05:42', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\n\n[caption id="attachment_10" align="alignnone" width="271"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n.jpg"><img class="size-medium wp-image-10" alt="test" src="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n-271x300.jpg" width="271" height="300" /></a> sieu nhan xip sam[/caption]</blockquote>\nAs a new WordPress user, you should go to <a href="http://wordpress.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!\n\n&nbsp;', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2013-11-29 04:05:42', '2013-11-29 04:05:42', '', 2, 'http://wordpress.local/2-autosave-v1/', 0, 'revision', '', 0),
(12, 1, '2013-11-29 02:44:25', '2013-11-29 02:44:25', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\n\r\n[caption id="attachment_10" align="alignnone" width="271"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n.jpg"><img class="size-medium wp-image-10" alt="test" src="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n-271x300.jpg" width="271" height="300" /></a> sieu nhan xip sam[/caption]</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://wordpress.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2013-11-29 02:44:25', '2013-11-29 02:44:25', '', 2, 'http://wordpress.local/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2013-11-29 04:29:01', '2013-11-29 04:29:01', '', 'test video', '', 'inherit', 'open', 'open', '', '747666_477793378947369_60924_n', '', '', '2013-11-29 04:29:01', '2013-11-29 04:29:01', '', 2, 'http://wordpress.local/wp-content/uploads/2013/11/747666_477793378947369_60924_n.mp4', 0, 'attachment', 'video/mp4', 0),
(14, 1, '2013-11-29 04:29:20', '2013-11-29 04:29:20', '[video width="1280" height="720" mp4="http://wordpress.local/wp-content/uploads/2013/11/747666_477793378947369_60924_n.mp4"][/video]\r\n\r\nThis is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\n\r\n[caption id="attachment_10" align="alignnone" width="271"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n.jpg"><img class="size-medium wp-image-10" alt="test" src="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n-271x300.jpg" width="271" height="300" /></a> sieu nhan xip sam[/caption]</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://wordpress.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2013-11-29 04:29:20', '2013-11-29 04:29:20', '', 2, 'http://wordpress.local/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2013-11-29 04:34:50', '2013-11-29 04:34:50', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n[video width="1280" height="1280" mp4="http://wordpress.local/wp-content/uploads/2013/11/747666_477793378947369_60924_n.mp4"][/video]\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\n\r\n[caption id="attachment_10" align="alignnone" width="271"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n.jpg"><img class="size-medium wp-image-10" alt="test" src="http://wordpress.local/wp-content/uploads/2013/11/1460210_668376769860451_1018478047_n-271x300.jpg" width="271" height="300" /></a> sieu nhan xip sam[/caption]</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://wordpress.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2013-11-29 04:34:50', '2013-11-29 04:34:50', '', 2, 'http://wordpress.local/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2013-12-09 03:42:41', '2013-12-09 03:42:41', '', 'l.php', 'Gian thi gian, thuong thi thuong', 'inherit', 'open', 'open', '', 'l-php', '', '', '2013-12-09 03:42:41', '2013-12-09 03:42:41', '', 8, 'http://wordpress.local/wp-content/uploads/2013/11/l.php_.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2013-12-09 03:43:03', '2013-12-09 03:43:03', 'New post for test...\r\n\r\n[caption id="attachment_17" align="alignnone" width="300"]<a href="http://wordpress.local/wp-content/uploads/2013/11/l.php_.jpg"><img class="size-medium wp-image-17" alt="Gian thi gian, thuong thi thuong" src="http://wordpress.local/wp-content/uploads/2013/11/l.php_-300x288.jpg" width="300" height="288" /></a> Gian thi gian, thuong thi thuong[/caption]', 'this is a new post', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2013-12-09 03:43:03', '2013-12-09 03:43:03', '', 8, 'http://wordpress.local/8-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2013-12-09 03:43:25', '2013-12-09 03:43:25', '', '1474468_687556261275835_805152489_n', 'Don''t stop now, you''re almost there', 'inherit', 'open', 'open', '', '1474468_687556261275835_805152489_n', '', '', '2013-12-09 03:43:25', '2013-12-09 03:43:25', '', 1, 'http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2013-12-09 03:43:38', '2013-12-09 03:43:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_19" align="alignnone" width="300"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n.jpg"><img class="size-medium wp-image-19" alt="Don''t stop now, you''re almost there" src="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n-300x155.jpg" width="300" height="155" /></a> Don''t stop now, you''re almost there[/caption]', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2013-12-09 03:43:38', '2013-12-09 03:43:38', '', 1, 'http://wordpress.local/1-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2013-12-09 03:48:15', '2013-12-09 03:48:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_19" align="alignnone" width="300"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n.jpg"><img class="size-medium wp-image-19" alt="Don''t stop now, you''re almost there" src="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n-300x155.jpg" width="300" height="155" /></a> Don''t stop now, you''re almost there[/caption]\r\n\r\n[video width="1280" height="720" mp4="http://wordpress.local/wp-content/uploads/2013/11/747666_477793378947369_60924_n.mp4"][/video]', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2013-12-09 03:48:15', '2013-12-09 03:48:15', '', 1, 'http://wordpress.local/1-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2013-12-09 03:48:58', '2013-12-09 03:48:58', '', 'sec1', '', 'inherit', 'open', 'open', '', 'sec1', '', '', '2013-12-09 03:48:58', '2013-12-09 03:48:58', '', 1, 'http://wordpress.local/wp-content/uploads/2013/11/sec1.mp4', 0, 'attachment', 'video/mp4', 0),
(23, 1, '2013-12-09 03:49:17', '2013-12-09 03:49:17', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\n\n&nbsp;\n\n[caption id="attachment_19" align="alignnone" width="300"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n.jpg"><img class="size-medium wp-image-19" alt="Don''t stop now, you''re almost there" src="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n-300x155.jpg" width="300" height="155" /></a> Don''t stop now, you''re almost there[/caption]\n\n&nbsp;', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2013-12-09 03:49:17', '2013-12-09 03:49:17', '', 1, 'http://wordpress.local/1-autosave-v1/', 0, 'revision', '', 0),
(24, 1, '2013-12-09 03:49:28', '2013-12-09 03:49:28', '', 'sec1', '', 'inherit', 'open', 'open', '', 'sec1-2', '', '', '2013-12-09 03:49:28', '2013-12-09 03:49:28', '', 1, 'http://wordpress.local/wp-content/uploads/2013/11/sec11.mp4', 0, 'attachment', 'video/mp4', 0),
(25, 1, '2013-12-09 03:49:41', '2013-12-09 03:49:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_19" align="alignnone" width="300"]<a href="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n.jpg"><img class="size-medium wp-image-19" alt="Don''t stop now, you''re almost there" src="http://wordpress.local/wp-content/uploads/2013/11/1474468_687556261275835_805152489_n-300x155.jpg" width="300" height="155" /></a> Don''t stop now, you''re almost there[/caption]\r\n\r\n<a href="http://wordpress.local/wp-content/uploads/2013/11/sec11.mp4">sec1</a>\r\n\r\n&nbsp;', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2013-12-09 03:49:41', '2013-12-09 03:49:41', '', 1, 'http://wordpress.local/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2013-12-09 10:15:32', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2013-12-09 10:15:32', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2013-12-09 10:15:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2013-12-09 10:15:33', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2013-12-09 10:15:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2013-12-09 10:15:33', '0000-00-00 00:00:00', '', 2, 'http://wordpress.local/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2013-12-10 03:42:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-10 03:42:45', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?page_id=29', 0, 'page', '', 0),
(30, 1, '2013-12-10 03:47:20', '2013-12-10 03:47:20', 'About us page', 'About us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2013-12-12 08:19:06', '2013-12-12 08:19:06', '', 0, 'http://wordpress.local/?page_id=30', 0, 'page', '', 0),
(31, 1, '2013-12-10 03:47:20', '2013-12-10 03:47:20', 'About us page, just for test slidershow', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 03:47:20', '2013-12-10 03:47:20', '', 30, 'http://wordpress.local/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-12-10 03:54:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-10 03:54:31', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?post_type=slideshow&p=32', 0, 'slideshow', '', 0),
(33, 1, '2013-12-10 03:54:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-10 03:54:50', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?post_type=slideshow&p=33', 0, 'slideshow', '', 0),
(34, 1, '2013-12-10 03:59:35', '2013-12-10 03:59:35', '', 'My SlideShow', '', 'publish', 'closed', 'closed', '', 'my-slideshow', '', '', '2013-12-10 03:59:35', '2013-12-10 03:59:35', '', 0, 'http://wordpress.local/?post_type=slideshow&#038;p=34', 0, 'slideshow', '', 0),
(35, 1, '2013-12-10 03:59:19', '2013-12-10 03:59:19', '', '992508_153013594904062_873206231_n', '1', 'inherit', 'open', 'open', '', '992508_153013594904062_873206231_n', '', '', '2013-12-10 03:59:19', '2013-12-10 03:59:19', '', 0, 'http://wordpress.local/wp-content/uploads/2013/12/992508_153013594904062_873206231_n.jpg', 1, 'attachment', 'image/jpeg', 0),
(36, 1, '2013-12-10 03:59:19', '2013-12-10 03:59:19', '', '1002517_151816875023734_2064255183_n', '3', 'inherit', 'open', 'open', '', '1002517_151816875023734_2064255183_n', '', '', '2013-12-10 03:59:19', '2013-12-10 03:59:19', '', 0, 'http://wordpress.local/wp-content/uploads/2013/12/1002517_151816875023734_2064255183_n.jpg', 3, 'attachment', 'image/jpeg', 0),
(37, 1, '2013-12-10 03:59:20', '2013-12-10 03:59:20', '', '1388026_167878593417562_1941689492_n', '2', 'inherit', 'open', 'open', '', '1388026_167878593417562_1941689492_n', '', '', '2013-12-10 03:59:20', '2013-12-10 03:59:20', '', 0, 'http://wordpress.local/wp-content/uploads/2013/12/1388026_167878593417562_1941689492_n.jpg', 2, 'attachment', 'image/jpeg', 0),
(38, 1, '2013-12-10 04:00:18', '2013-12-10 04:00:18', 'About us page, just for test slidershow\r\n<i>&lt;?php do_action(''slideshow_deploy'', ''34''); ?&gt;</i>', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:00:18', '2013-12-10 04:00:18', '', 30, 'http://wordpress.local/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-12-10 04:00:31', '2013-12-10 04:00:31', 'About us page, just for test slidershow\r\n<?php do_action(''slideshow_deploy'', ''34''); ?>', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:00:31', '2013-12-10 04:00:31', '', 30, 'http://wordpress.local/?p=39', 0, 'revision', '', 0),
(40, 1, '2013-12-10 04:00:52', '2013-12-10 04:00:52', 'About us page, just for test slidershow\r\n<?php do_action(''slideshow_deploy'', ''34'');>', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:00:52', '2013-12-10 04:00:52', '', 30, 'http://wordpress.local/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-12-10 04:01:13', '2013-12-10 04:01:13', 'About us page, just for test slidershow\r\n[slideshow_deploy id=''34'']', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:01:13', '2013-12-10 04:01:13', '', 30, 'http://wordpress.local/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-12-10 04:10:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-10 04:10:02', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?post_type=slideshow&p=42', 0, 'slideshow', '', 0),
(43, 1, '2013-12-10 04:10:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-10 04:10:02', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?post_type=slideshow&p=43', 0, 'slideshow', '', 0),
(44, 1, '2013-12-10 04:12:41', '2013-12-10 04:12:41', 'About us page, just for test slideshow\r\n[slideshow_deploy id=''34'']', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:12:41', '2013-12-10 04:12:41', '', 30, 'http://wordpress.local/?p=44', 0, 'revision', '', 0),
(45, 1, '2013-12-10 04:14:46', '2013-12-10 04:14:46', 'About us page, just for test slideshow\r\n', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:14:46', '2013-12-10 04:14:46', '', 30, 'http://wordpress.local/?p=45', 0, 'revision', '', 0),
(46, 1, '2013-12-10 04:16:32', '2013-12-10 04:16:32', 'About us page, just for test slideshow\r\n[slideshow_deploy id=''34'']', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:16:32', '2013-12-10 04:16:32', '', 30, 'http://wordpress.local/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-12-10 04:20:16', '2013-12-10 04:20:16', '', 'My Slider', '', 'publish', 'open', 'open', '', 'new-slider', '', '', '2013-12-12 08:37:05', '2013-12-12 08:37:05', '', 0, 'http://wordpress.local/?post_type=ml-slider&#038;p=47', 0, 'ml-slider', '', 0),
(48, 1, '2013-12-10 04:21:29', '2013-12-10 04:21:29', 'About us page, just for test slideshow\r\n[metaslider id=47]', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:21:29', '2013-12-10 04:21:29', '', 30, 'http://wordpress.local/?p=48', 0, 'revision', '', 0),
(49, 1, '2013-12-10 04:42:32', '2013-12-10 04:42:32', 'About us page, just for test slideshow\n[metaslider id=47[slideshow_deploy id=''34''][slideshow_deploy id=''34'']', 'About us', '', 'inherit', 'open', 'open', '', '30-autosave-v1', '', '', '2013-12-10 04:42:32', '2013-12-10 04:42:32', '', 30, 'http://wordpress.local/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-12-10 04:42:37', '2013-12-10 04:42:37', 'About us page, just for test slideshow\r\n[metaslider id=47\r\n[slideshow_deploy id=''34'']', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:42:37', '2013-12-10 04:42:37', '', 30, 'http://wordpress.local/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-12-10 04:43:12', '2013-12-10 04:43:12', 'About us page, just for test slideshow\r\n[metaslider id=47]\r\n[slideshow_deploy id=''34'']', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:43:12', '2013-12-10 04:43:12', '', 30, 'http://wordpress.local/?p=51', 0, 'revision', '', 0),
(52, 1, '2013-12-10 04:47:56', '2013-12-10 04:47:56', 'About us page, just for test slideshow\r\n[metaslider id=47]', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-10 04:47:56', '2013-12-10 04:47:56', '', 30, 'http://wordpress.local/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-12-10 06:36:53', '2013-12-10 06:36:53', '[people_contacts]', 'Contact', '', 'trash', 'closed', 'open', '', 'contact-us-page', '', '', '2013-12-10 06:54:37', '2013-12-10 06:54:37', '', 0, 'http://wordpress.local/?page_id=53', 0, 'page', '', 0),
(54, 1, '2013-12-10 06:36:53', '2013-12-10 06:36:53', '[people_contacts]', 'Contact Us Page', '', 'trash', 'closed', 'open', '', 'contact-us-page-2', '', '', '2013-12-10 06:38:26', '2013-12-10 06:38:26', '', 0, 'http://wordpress.local/?page_id=54', 0, 'page', '', 0),
(55, 1, '2013-12-10 06:37:10', '0000-00-00 00:00:00', '', 'c avatar', '', 'draft', 'closed', 'closed', '', 'c_avatar', '', '', '2013-12-10 06:37:10', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?post_type=wp_email_images&p=55', 0, 'wp_email_images', '', 0),
(56, 1, '2013-12-10 06:38:26', '2013-12-10 06:38:26', '[people_contacts]', 'Contact Us Page', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2013-12-10 06:38:26', '2013-12-10 06:38:26', '', 54, 'http://wordpress.local/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-12-10 06:38:26', '2013-12-10 06:38:26', '[people_contacts]', 'Contact Us Page', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2013-12-10 06:38:26', '2013-12-10 06:38:26', '', 54, 'http://wordpress.local/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-12-10 06:38:48', '2013-12-10 06:38:48', '[people_contacts]', 'Contact', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2013-12-10 06:38:48', '2013-12-10 06:38:48', '', 53, 'http://wordpress.local/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-12-10 08:58:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-10 08:58:32', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?p=59', 0, 'post', '', 0),
(60, 1, '2013-12-10 08:59:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-12-10 08:59:00', '0000-00-00 00:00:00', '', 0, 'http://wordpress.local/?page_id=60', 0, 'page', '', 0),
(61, 1, '2013-12-10 08:59:26', '2013-12-10 08:59:26', 'Service pages', 'Service', '', 'publish', 'open', 'open', '', 'service', '', '', '2013-12-12 08:13:56', '2013-12-12 08:13:56', '', 0, 'http://wordpress.local/?p=61', 0, 'post', '', 0),
(62, 1, '2013-12-10 08:59:26', '2013-12-10 08:59:26', 'Service pages', 'Service', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2013-12-10 08:59:26', '2013-12-10 08:59:26', '', 61, 'http://wordpress.local/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-12-10 09:01:10', '2013-12-10 09:01:10', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2013-12-10 09:01:10', '2013-12-10 09:01:10', '', 0, 'http://wordpress.local/?page_id=63', 0, 'page', '', 0),
(64, 1, '2013-12-10 09:01:10', '2013-12-10 09:01:10', '', 'Blog', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2013-12-10 09:01:10', '2013-12-10 09:01:10', '', 63, 'http://wordpress.local/?p=64', 0, 'revision', '', 0),
(66, 1, '2013-12-10 09:03:00', '2013-12-10 09:03:00', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 0, 'http://wordpress.local/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2013-12-10 09:03:00', '2013-12-10 09:03:00', ' ', '', '', 'publish', 'open', 'open', '', '67', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 0, 'http://wordpress.local/?p=67', 12, 'nav_menu_item', '', 0),
(70, 1, '2013-12-11 14:12:12', '2013-12-11 14:12:12', '[metaslider id=47]', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-11 14:12:12', '2013-12-11 14:12:12', '', 30, 'http://wordpress.local/30-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2013-12-11 15:08:57', '2013-12-11 15:08:57', '1.2.	Testimonials', 'Testimonials', '', 'publish', 'open', 'open', '', 'beautiful-you-mh', '', '', '2013-12-11 15:09:13', '2013-12-11 15:09:13', '', 30, 'http://wordpress.local/?page_id=71', 0, 'page', '', 0),
(72, 1, '2013-12-11 15:08:57', '2013-12-11 15:08:57', '1.1.	Beautiful You M&H', 'Beautiful You M&H', '', 'inherit', 'open', 'open', '', '71-revision-v1', '', '', '2013-12-11 15:08:57', '2013-12-11 15:08:57', '', 71, 'http://wordpress.local/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2013-12-11 15:09:13', '2013-12-11 15:09:13', '1.2.	Testimonials', 'Testimonials', '', 'inherit', 'open', 'open', '', '71-revision-v1', '', '', '2013-12-11 15:09:13', '2013-12-11 15:09:13', '', 71, 'http://wordpress.local/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2013-12-11 15:10:32', '2013-12-11 15:10:32', ' ', '', '', 'publish', 'open', 'open', '', '74', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 30, 'http://wordpress.local/?p=74', 3, 'nav_menu_item', '', 0),
(75, 1, '2013-12-11 15:10:59', '2013-12-11 15:10:59', '1.1.	Beautiful You M&H', 'Beautiful You M&H', '', 'publish', 'open', 'open', '', 'beautiful-you-mh-2', '', '', '2013-12-11 15:10:59', '2013-12-11 15:10:59', '', 30, 'http://wordpress.local/?page_id=75', 0, 'page', '', 0),
(76, 1, '2013-12-11 15:10:59', '2013-12-11 15:10:59', '1.1.	Beautiful You M&H', 'Beautiful You M&H', '', 'inherit', 'open', 'open', '', '75-revision-v1', '', '', '2013-12-11 15:10:59', '2013-12-11 15:10:59', '', 75, 'http://wordpress.local/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2013-12-11 15:11:20', '2013-12-11 15:11:20', '2.	The Experts', 'The Experts', '', 'publish', 'open', 'open', '', 'the-experts', '', '', '2013-12-11 15:11:20', '2013-12-11 15:11:20', '', 0, 'http://wordpress.local/?page_id=77', 0, 'page', '', 0),
(78, 1, '2013-12-11 15:11:20', '2013-12-11 15:11:20', '2.	The Experts', 'The Experts', '', 'inherit', 'open', 'open', '', '77-revision-v1', '', '', '2013-12-11 15:11:20', '2013-12-11 15:11:20', '', 77, 'http://wordpress.local/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2013-12-11 15:12:00', '2013-12-11 15:12:00', '3.	Porfolio', 'Porfolio', '', 'publish', 'open', 'open', '', 'porfolio', '', '', '2013-12-11 15:12:00', '2013-12-11 15:12:00', '', 0, 'http://wordpress.local/?page_id=79', 0, 'page', '', 0),
(80, 1, '2013-12-11 15:12:00', '2013-12-11 15:12:00', '3.	Porfolio', 'Porfolio', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2013-12-11 15:12:00', '2013-12-11 15:12:00', '', 79, 'http://wordpress.local/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2013-12-11 15:12:23', '2013-12-11 15:12:23', '3.1.	Wedding', 'Wedding', '', 'publish', 'open', 'open', '', 'wedding', '', '', '2013-12-11 15:12:23', '2013-12-11 15:12:23', '', 79, 'http://wordpress.local/?page_id=81', 0, 'page', '', 0),
(82, 1, '2013-12-11 15:12:23', '2013-12-11 15:12:23', '3.1.	Wedding', 'Wedding', '', 'inherit', 'open', 'open', '', '81-revision-v1', '', '', '2013-12-11 15:12:23', '2013-12-11 15:12:23', '', 81, 'http://wordpress.local/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2013-12-11 15:12:54', '2013-12-11 15:12:54', '3.2.	Fashion', 'Fashion', '', 'publish', 'open', 'open', '', 'fashion', '', '', '2013-12-11 15:12:54', '2013-12-11 15:12:54', '', 79, 'http://wordpress.local/?page_id=83', 0, 'page', '', 0),
(84, 1, '2013-12-11 15:12:54', '2013-12-11 15:12:54', '3.2.	Fashion', 'Fashion', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2013-12-11 15:12:54', '2013-12-11 15:12:54', '', 83, 'http://wordpress.local/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2013-12-11 15:15:31', '2013-12-11 15:15:31', '3.3.	Before and After', 'Before and After', '', 'publish', 'open', 'open', '', 'before-and-after', '', '', '2013-12-11 15:15:31', '2013-12-11 15:15:31', '', 79, 'http://wordpress.local/?page_id=85', 0, 'page', '', 0),
(86, 1, '2013-12-11 15:15:31', '2013-12-11 15:15:31', '3.3.	Before and After', 'Before and After', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2013-12-11 15:15:31', '2013-12-11 15:15:31', '', 85, 'http://wordpress.local/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2013-12-11 15:16:27', '2013-12-11 15:16:27', 'Services', 'Services', '', 'publish', 'open', 'open', '', 'services', '', '', '2013-12-11 15:16:27', '2013-12-11 15:16:27', '', 0, 'http://wordpress.local/?page_id=87', 0, 'page', '', 0),
(88, 1, '2013-12-11 15:16:27', '2013-12-11 15:16:27', 'Services', 'Services', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2013-12-11 15:16:27', '2013-12-11 15:16:27', '', 87, 'http://wordpress.local/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2013-12-11 15:16:49', '2013-12-11 15:16:49', '4.1.	Price List', 'Price List', '', 'publish', 'open', 'open', '', 'price-list', '', '', '2013-12-11 15:16:49', '2013-12-11 15:16:49', '', 87, 'http://wordpress.local/?page_id=89', 0, 'page', '', 0),
(90, 1, '2013-12-11 15:16:49', '2013-12-11 15:16:49', '4.1.	Price List', 'Price List', '', 'inherit', 'open', 'open', '', '89-revision-v1', '', '', '2013-12-11 15:16:49', '2013-12-11 15:16:49', '', 89, 'http://wordpress.local/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2013-12-11 15:17:13', '2013-12-11 15:17:13', '4.2.	Gift Voucher', 'Gift Voucher', '', 'publish', 'open', 'open', '', 'gift-voucher', '', '', '2013-12-11 15:17:13', '2013-12-11 15:17:13', '', 87, 'http://wordpress.local/?page_id=91', 0, 'page', '', 0),
(92, 1, '2013-12-11 15:17:13', '2013-12-11 15:17:13', '4.2.	Gift Voucher', 'Gift Voucher', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2013-12-11 15:17:13', '2013-12-11 15:17:13', '', 91, 'http://wordpress.local/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2013-12-11 15:20:39', '2013-12-11 15:20:39', ' ', '', '', 'publish', 'open', 'open', '', '93', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 30, 'http://wordpress.local/?p=93', 2, 'nav_menu_item', '', 0),
(94, 1, '2013-12-11 15:20:39', '2013-12-11 15:20:39', ' ', '', '', 'publish', 'open', 'open', '', '94', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 0, 'http://wordpress.local/?p=94', 5, 'nav_menu_item', '', 0),
(95, 1, '2013-12-11 15:20:40', '2013-12-11 15:20:40', ' ', '', '', 'publish', 'open', 'open', '', '95', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 79, 'http://wordpress.local/?p=95', 8, 'nav_menu_item', '', 0),
(96, 1, '2013-12-11 15:20:40', '2013-12-11 15:20:40', ' ', '', '', 'publish', 'open', 'open', '', '96', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 79, 'http://wordpress.local/?p=96', 7, 'nav_menu_item', '', 0),
(97, 1, '2013-12-11 15:20:39', '2013-12-11 15:20:39', ' ', '', '', 'publish', 'open', 'open', '', '97', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 79, 'http://wordpress.local/?p=97', 6, 'nav_menu_item', '', 0),
(98, 1, '2013-12-11 15:20:39', '2013-12-11 15:20:39', ' ', '', '', 'publish', 'open', 'open', '', '98', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 0, 'http://wordpress.local/?p=98', 4, 'nav_menu_item', '', 0),
(99, 1, '2013-12-11 15:20:40', '2013-12-11 15:20:40', ' ', '', '', 'publish', 'open', 'open', '', '99', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 0, 'http://wordpress.local/?p=99', 9, 'nav_menu_item', '', 0),
(100, 1, '2013-12-11 15:20:41', '2013-12-11 15:20:41', ' ', '', '', 'publish', 'open', 'open', '', '100', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 87, 'http://wordpress.local/?p=100', 11, 'nav_menu_item', '', 0),
(101, 1, '2013-12-11 15:20:40', '2013-12-11 15:20:40', ' ', '', '', 'publish', 'open', 'open', '', '101', '', '', '2013-12-12 04:15:21', '2013-12-12 04:15:21', '', 87, 'http://wordpress.local/?p=101', 10, 'nav_menu_item', '', 0),
(102, 1, '2013-12-12 03:38:15', '2013-12-12 03:38:15', '[metaslider id=47]', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2013-12-12 08:21:21', '2013-12-12 08:21:21', '', 0, 'http://wordpress.local/?page_id=102', 0, 'page', '', 0),
(103, 1, '2013-12-12 03:38:15', '2013-12-12 03:38:15', '[metaslider id=47]', 'Home', '', 'inherit', 'open', 'open', '', '102-revision-v1', '', '', '2013-12-12 03:38:15', '2013-12-12 03:38:15', '', 102, 'http://wordpress.local/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2013-12-12 03:38:43', '2013-12-12 03:38:43', '[vfb id=1]', 'Contact Us', '', 'publish', 'open', 'open', '', 'contact', '', '', '2013-12-12 09:14:01', '2013-12-12 09:14:01', '', 0, 'http://wordpress.local/?page_id=104', 0, 'page', '', 0),
(105, 1, '2013-12-12 03:38:43', '2013-12-12 03:38:43', 'Contact pages', 'Contact', '', 'inherit', 'open', 'open', '', '104-revision-v1', '', '', '2013-12-12 03:38:43', '2013-12-12 03:38:43', '', 104, 'http://wordpress.local/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2013-12-12 03:51:51', '2013-12-12 03:51:51', 'fag pages', 'FAQ', '', 'publish', 'open', 'open', '', 'faq', '', '', '2013-12-12 03:51:51', '2013-12-12 03:51:51', '', 0, 'http://wordpress.local/?page_id=106', 0, 'page', '', 0),
(107, 1, '2013-12-12 03:51:51', '2013-12-12 03:51:51', 'fag pages', 'FAQ', '', 'inherit', 'open', 'open', '', '106-revision-v1', '', '', '2013-12-12 03:51:51', '2013-12-12 03:51:51', '', 106, 'http://wordpress.local/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2013-12-12 08:19:06', '2013-12-12 08:19:06', 'About us page', 'About us', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2013-12-12 08:19:06', '2013-12-12 08:19:06', '', 30, 'http://wordpress.local/30-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2013-12-12 08:33:32', '2013-12-12 08:33:32', '', '0', '0', 'inherit', 'open', 'open', '', 'bnr_01', '', '', '2013-12-12 08:33:32', '2013-12-12 08:33:32', '', 0, 'http://wordpress.local/wp-content/uploads/2013/12/bnr_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2013-12-12 09:11:40', '2013-12-12 09:11:40', '[vfb id=1]', 'Contact', '', 'inherit', 'open', 'open', '', '104-revision-v1', '', '', '2013-12-12 09:11:40', '2013-12-12 09:11:40', '', 104, 'http://wordpress.local/104-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2013-12-12 09:14:01', '2013-12-12 09:14:01', '[vfb id=1]', 'Contact Us', '', 'inherit', 'open', 'open', '', '104-revision-v1', '', '', '2013-12-12 09:14:01', '2013-12-12 09:14:01', '', 104, 'http://wordpress.local/104-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'First category', 'first-category', 0),
(3, 'Second category', 'second-category', 0),
(4, '47', '47', 0),
(5, 'main_menu', 'main_menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(8, 2, 0),
(35, 4, 0),
(36, 4, 0),
(37, 4, 0),
(61, 2, 0),
(66, 5, 0),
(67, 5, 0),
(74, 5, 0),
(93, 5, 0),
(94, 5, 0),
(95, 5, 0),
(96, 5, 0),
(97, 5, 0),
(98, 5, 0),
(99, 5, 0),
(100, 5, 0),
(101, 5, 0),
(109, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 1),
(4, 4, 'ml-slider', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'loipl'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '59'),
(15, 1, 'wp_user-settings', 'mfold=o&wooframeworkhidebannerwoodojo=1&wooframeworkhidebannerwooseosbmremoved=1&libraryContent=browse&editor=tinymce&wplink=1'),
(16, 1, 'wp_user-settings-time', '1386840033'),
(17, 1, 'manageedit-postcolumnshidden', 'a:2:{i:0;s:8:"comments";i:1;s:0:"";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(20, 1, 'addthis_nag_username_ignore', 'true'),
(21, 1, 'nav_menu_recently_edited', '5'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'loipl', '$P$BOMBLakujLP0vbVruAg1emY92h/LKK.', 'loipl', 'loiphamle@gmail.com', '', '2013-11-25 02:28:31', '', 0, 'loipl');

-- --------------------------------------------------------

--
-- Table structure for table `wp_visual_form_builder_entries`
--

CREATE TABLE IF NOT EXISTS `wp_visual_form_builder_entries` (
  `entries_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `data` longtext NOT NULL,
  `subject` text,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `emails_to` text,
  `date_submitted` datetime DEFAULT NULL,
  `ip_address` varchar(25) DEFAULT NULL,
  `entry_approved` varchar(20) DEFAULT '1',
  PRIMARY KEY (`entries_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_visual_form_builder_entries`
--

INSERT INTO `wp_visual_form_builder_entries` (`entries_id`, `form_id`, `data`, `subject`, `sender_name`, `sender_email`, `emails_to`, `date_submitted`, `ip_address`, `entry_approved`) VALUES
(1, 1, 'a:7:{i:0;a:7:{s:2:"id";s:1:"1";s:4:"slug";s:8:"fieldset";s:4:"name";s:8:"Fieldset";s:4:"type";s:8:"fieldset";s:7:"options";s:0:"";s:9:"parent_id";s:1:"0";s:5:"value";s:0:"";}i:1;a:7:{s:2:"id";s:1:"6";s:4:"slug";s:4:"text";s:4:"name";s:4:"Text";s:4:"type";s:4:"text";s:7:"options";s:0:"";s:9:"parent_id";s:1:"0";s:5:"value";s:3:"abc";}i:2;a:7:{s:2:"id";s:1:"7";s:4:"slug";s:8:"textarea";s:4:"name";s:8:"Textarea";s:4:"type";s:8:"textarea";s:7:"options";s:0:"";s:9:"parent_id";s:1:"0";s:5:"value";s:4:"Test";}i:3;a:7:{s:2:"id";s:1:"8";s:4:"slug";s:17:"select-a-category";s:4:"name";s:17:"Select a category";s:4:"type";s:6:"select";s:7:"options";s:82:"a:4:{i:0;s:8:"Option 1";i:1;s:8:"Option 2";i:2;s:8:"Option 3";i:3;s:8:"Option 4";}";s:9:"parent_id";s:1:"0";s:5:"value";s:8:"Option 1";}i:4;a:7:{s:2:"id";s:1:"2";s:4:"slug";s:12:"verification";s:4:"name";s:12:"Verification";s:4:"type";s:12:"verification";s:7:"options";s:0:"";s:9:"parent_id";s:1:"0";s:5:"value";s:0:"";}i:5;a:7:{s:2:"id";s:1:"3";s:4:"slug";s:27:"please-enter-any-two-digits";s:4:"name";s:27:"Please enter any two digits";s:4:"type";s:6:"secret";s:7:"options";s:0:"";s:9:"parent_id";s:1:"2";s:5:"value";s:2:"14";}i:6;a:7:{s:2:"id";s:1:"4";s:4:"slug";s:6:"submit";s:4:"name";s:6:"Submit";s:4:"type";s:6:"submit";s:7:"options";s:0:"";s:9:"parent_id";s:1:"2";s:5:"value";s:0:"";}}', 'Test from wordpress contact', 'Septeni', 'loiphamle@gmail.com', 'a:1:{i:0;s:19:"loiphamle@gmail.com";}', '2013-12-12 09:12:19', '127.0.0.1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_visual_form_builder_fields`
--

CREATE TABLE IF NOT EXISTS `wp_visual_form_builder_fields` (
  `field_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `field_key` varchar(255) NOT NULL,
  `field_type` varchar(25) NOT NULL,
  `field_options` text,
  `field_description` text,
  `field_name` text NOT NULL,
  `field_sequence` bigint(20) DEFAULT '0',
  `field_parent` bigint(20) DEFAULT '0',
  `field_validation` varchar(25) DEFAULT NULL,
  `field_required` varchar(25) DEFAULT NULL,
  `field_size` varchar(25) DEFAULT 'medium',
  `field_css` varchar(255) DEFAULT NULL,
  `field_layout` varchar(255) DEFAULT NULL,
  `field_default` text,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_visual_form_builder_fields`
--

INSERT INTO `wp_visual_form_builder_fields` (`field_id`, `form_id`, `field_key`, `field_type`, `field_options`, `field_description`, `field_name`, `field_sequence`, `field_parent`, `field_validation`, `field_required`, `field_size`, `field_css`, `field_layout`, `field_default`) VALUES
(1, 1, 'fieldset', 'fieldset', '', '', 'Fieldset', 0, 0, '', '', '', '', '', ''),
(2, 1, 'verification', 'verification', '', '', 'Verification', 4, 0, '', '', '', '', '', ''),
(3, 1, 'please-enter-any-two-digits', 'secret', '', 'Example: 12', 'Please enter any two digits', 5, 2, '', 'yes', 'medium', '', '', ''),
(4, 1, 'submit', 'submit', '', '', 'Submit', 6, 2, '', '', '', '', '', ''),
(6, 1, 'text', 'text', '', '', 'Text', 1, 0, '', 'no', 'medium', '', '', ''),
(7, 1, 'textarea', 'textarea', '', '', 'Textarea', 2, 0, '', 'no', 'medium', '', '', ''),
(8, 1, 'select-a-category', 'select', 'a:4:{i:0;s:8:"Option 1";i:1;s:8:"Option 2";i:2;s:8:"Option 3";i:3;s:8:"Option 4";}', '', 'Select a category', 3, 0, '', 'no', 'medium', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_visual_form_builder_forms`
--

CREATE TABLE IF NOT EXISTS `wp_visual_form_builder_forms` (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_key` tinytext NOT NULL,
  `form_title` text NOT NULL,
  `form_email_subject` text,
  `form_email_to` text,
  `form_email_from` varchar(255) DEFAULT NULL,
  `form_email_from_name` varchar(255) DEFAULT NULL,
  `form_email_from_override` varchar(255) DEFAULT NULL,
  `form_email_from_name_override` varchar(255) DEFAULT NULL,
  `form_success_type` varchar(25) DEFAULT 'text',
  `form_success_message` text,
  `form_notification_setting` varchar(25) DEFAULT NULL,
  `form_notification_email_name` varchar(255) DEFAULT NULL,
  `form_notification_email_from` varchar(255) DEFAULT NULL,
  `form_notification_email` varchar(25) DEFAULT NULL,
  `form_notification_subject` varchar(255) DEFAULT NULL,
  `form_notification_message` text,
  `form_notification_entry` varchar(25) DEFAULT NULL,
  `form_label_alignment` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_visual_form_builder_forms`
--

INSERT INTO `wp_visual_form_builder_forms` (`form_id`, `form_key`, `form_title`, `form_email_subject`, `form_email_to`, `form_email_from`, `form_email_from_name`, `form_email_from_override`, `form_email_from_name_override`, `form_success_type`, `form_success_message`, `form_notification_setting`, `form_notification_email_name`, `form_notification_email_from`, `form_notification_email`, `form_notification_subject`, `form_notification_message`, `form_notification_entry`, `form_label_alignment`) VALUES
(1, 'test-form', 'Test form', 'Test from wordpress contact', 'a:1:{i:0;s:19:"loiphamle@gmail.com";}', 'loiphamle@gmail.com', 'Septeni', '', '', 'text', '&lt;p id=\\"form_success\\"&gt;Your form was successfully submitted. Thank you for contacting us.&lt;/p&gt;\n', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppa_albums`
--

CREATE TABLE IF NOT EXISTS `wp_wppa_albums` (
  `id` bigint(20) NOT NULL,
  `name` text,
  `description` text,
  `a_order` smallint(5) unsigned NOT NULL,
  `main_photo` bigint(20) NOT NULL,
  `a_parent` bigint(20) NOT NULL,
  `p_order_by` int(10) unsigned NOT NULL,
  `cover_linktype` tinytext NOT NULL,
  `cover_linkpage` bigint(20) NOT NULL,
  `owner` text NOT NULL,
  `timestamp` tinytext NOT NULL,
  `upload_limit` tinytext NOT NULL,
  `alt_thumbsize` tinytext NOT NULL,
  `default_tags` tinytext NOT NULL,
  `cover_type` tinytext NOT NULL,
  `suba_order_by` tinytext NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppa_comments`
--

CREATE TABLE IF NOT EXISTS `wp_wppa_comments` (
  `id` bigint(20) NOT NULL,
  `timestamp` tinytext NOT NULL,
  `photo` bigint(20) NOT NULL,
  `user` text NOT NULL,
  `ip` tinytext NOT NULL,
  `email` text NOT NULL,
  `comment` text,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppa_exif`
--

CREATE TABLE IF NOT EXISTS `wp_wppa_exif` (
  `id` bigint(20) NOT NULL,
  `photo` bigint(20) NOT NULL,
  `tag` tinytext NOT NULL,
  `description` text,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppa_index`
--

CREATE TABLE IF NOT EXISTS `wp_wppa_index` (
  `id` bigint(20) NOT NULL,
  `slug` tinytext NOT NULL,
  `albums` text NOT NULL,
  `photos` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppa_iptc`
--

CREATE TABLE IF NOT EXISTS `wp_wppa_iptc` (
  `id` bigint(20) NOT NULL,
  `photo` bigint(20) NOT NULL,
  `tag` tinytext NOT NULL,
  `description` text,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppa_photos`
--

CREATE TABLE IF NOT EXISTS `wp_wppa_photos` (
  `id` bigint(20) NOT NULL,
  `album` bigint(20) NOT NULL,
  `ext` tinytext NOT NULL,
  `name` text,
  `description` longtext,
  `p_order` smallint(5) unsigned NOT NULL,
  `mean_rating` tinytext NOT NULL,
  `linkurl` text NOT NULL,
  `linktitle` text,
  `linktarget` tinytext NOT NULL,
  `owner` text NOT NULL,
  `timestamp` tinytext NOT NULL,
  `status` tinytext NOT NULL,
  `rating_count` bigint(20) NOT NULL DEFAULT '0',
  `tags` tinytext NOT NULL,
  `alt` tinytext NOT NULL,
  `filename` tinytext NOT NULL,
  `modified` tinytext NOT NULL,
  `location` tinytext NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppa_rating`
--

CREATE TABLE IF NOT EXISTS `wp_wppa_rating` (
  `id` bigint(20) NOT NULL,
  `photo` bigint(20) NOT NULL,
  `value` smallint(5) NOT NULL,
  `user` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
