-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 10, 2019 at 07:36 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aup_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `102_activity_history`
--

CREATE TABLE `102_activity_history` (
  `id` int(11) NOT NULL,
  `user_id` int(200) DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `done_by` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `activity` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `notification_status` tinyint(1) NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_activity_history`
--

INSERT INTO `102_activity_history` (`id`, `user_id`, `ip`, `done_by`, `date`, `activity`, `notification_status`, `data`) VALUES
(1, 1850, '127.0.0.1', 1850, '2019-10-10 17:19:05', 'send_sms', 0, 'a:9:{s:4:\"type\";s:3:\"all\";s:6:\"class1\";s:1:\"0\";s:9:\"division1\";s:1:\"0\";s:6:\"mobile\";s:0:\"\";s:5:\"class\";s:2:\"10\";s:8:\"division\";s:3:\"all\";s:3:\"bus\";s:3:\"all\";s:7:\"message\";s:9:\"test test\";s:6:\"submit\";s:4:\"send\";}'),
(2, 1850, '127.0.0.1', 1850, '2019-10-10 17:23:10', 'send_sms', 0, 'a:9:{s:4:\"type\";s:3:\"all\";s:6:\"class1\";s:1:\"0\";s:9:\"division1\";s:1:\"0\";s:6:\"mobile\";s:0:\"\";s:5:\"class\";s:2:\"10\";s:8:\"division\";s:3:\"all\";s:3:\"bus\";s:3:\"all\";s:7:\"message\";s:9:\"test test\";s:6:\"submit\";s:4:\"send\";}'),
(3, 1850, '127.0.0.1', 1850, '2019-10-10 17:39:12', 'login', 0, ''),
(4, 1850, '127.0.0.1', 1850, '2019-10-10 17:44:17', 'send_sms', 0, 'a:9:{s:4:\"type\";s:6:\"single\";s:6:\"class1\";s:1:\"0\";s:9:\"division1\";s:1:\"0\";s:6:\"mobile\";s:0:\"\";s:5:\"class\";s:3:\"all\";s:8:\"division\";s:3:\"all\";s:3:\"bus\";s:3:\"all\";s:7:\"message\";s:3:\"gfh\";s:6:\"submit\";s:4:\"send\";}'),
(5, 1850, '127.0.0.1', 1850, '2019-10-10 17:44:53', 'send_sms', 0, 'a:9:{s:4:\"type\";s:6:\"single\";s:6:\"class1\";s:1:\"0\";s:9:\"division1\";s:1:\"0\";s:6:\"mobile\";s:0:\"\";s:5:\"class\";s:3:\"all\";s:8:\"division\";s:3:\"all\";s:3:\"bus\";s:3:\"all\";s:7:\"message\";s:5:\"dsv f\";s:6:\"submit\";s:4:\"send\";}'),
(6, 1850, '127.0.0.1', 1850, '2019-10-10 17:47:12', 'login', 0, ''),
(7, 1850, '127.0.0.1', 1850, '2019-10-10 19:23:02', 'send_sms', 0, 'a:11:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:17:\"student_id_single\";s:1:\"2\";s:14:\"message_single\";s:12:\"Test Testonm\";s:6:\"submit\";s:10:\"single_tab\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(8, 1850, '127.0.0.1', 1850, '2019-10-10 19:23:26', 'send_sms', 0, 'a:11:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:17:\"student_id_single\";s:1:\"3\";s:14:\"message_single\";s:15:\"fdsa fdvcasfdsa\";s:6:\"submit\";s:10:\"single_tab\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(9, 1850, '127.0.0.1', 1850, '2019-10-10 19:23:51', 'send_sms', 0, 'a:11:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:17:\"student_id_single\";s:1:\"3\";s:14:\"message_single\";s:14:\"vsafdsafdsafds\";s:6:\"submit\";s:10:\"single_tab\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(10, 1850, '127.0.0.1', 1850, '2019-10-10 19:24:01', 'send_sms', 0, 'a:11:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:17:\"student_id_single\";s:1:\"3\";s:14:\"message_single\";s:14:\"vsafdsafdsafds\";s:6:\"submit\";s:10:\"single_tab\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(11, 1850, '127.0.0.1', 1850, '2019-10-10 19:24:04', 'send_sms', 0, 'a:11:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:17:\"student_id_single\";s:1:\"3\";s:14:\"message_single\";s:14:\"vsafdsafdsafds\";s:6:\"submit\";s:10:\"single_tab\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(12, 1850, '127.0.0.1', 1850, '2019-10-10 19:24:47', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:14:\"vsafdsafdsafds\";s:11:\"class_group\";s:1:\"7\";s:14:\"division_group\";s:1:\"1\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:25:\"fsdafdsafdsafdsa vdasfdsa\";s:6:\"submit\";s:9:\"group_tab\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(13, 1850, '127.0.0.1', 1850, '2019-10-10 19:25:36', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:14:\"vsafdsafdsafds\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:25:\"fsdafdsafdsafdsa vdasfdsa\";s:6:\"submit\";s:9:\"group_tab\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(14, 1850, '127.0.0.1', 1850, '2019-10-10 19:25:46', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:0:\"\";s:11:\"class_group\";s:1:\"7\";s:14:\"division_group\";s:1:\"1\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:17:\"vgfsafds fdsaf ds\";s:6:\"submit\";s:9:\"group_tab\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(15, 1850, '127.0.0.1', 1850, '2019-10-10 19:27:06', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:0:\"\";s:11:\"class_group\";s:1:\"7\";s:14:\"division_group\";s:1:\"1\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:17:\"vgfsafds fdsaf ds\";s:6:\"submit\";s:9:\"group_tab\";s:6:\"mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(16, 1850, '127.0.0.1', 1850, '2019-10-10 19:27:58', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:0:\"\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:13:\"mobile_mobile\";s:10:\"1231232131\";s:14:\"message_mobile\";s:8:\"123213 c\";s:6:\"submit\";s:10:\"mobile_tab\";}'),
(17, 1850, '127.0.0.1', 1850, '2019-10-10 19:28:26', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:0:\"\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:13:\"mobile_mobile\";s:10:\"1231234563\";s:14:\"message_mobile\";s:8:\"fdsafdsa\";s:6:\"submit\";s:10:\"mobile_tab\";}'),
(18, 1850, '127.0.0.1', 1850, '2019-10-10 19:30:16', 'send_sms', 0, 'a:11:{s:12:\"class_single\";s:1:\"7\";s:15:\"division_single\";s:1:\"1\";s:17:\"student_id_single\";s:1:\"5\";s:14:\"message_single\";s:11:\"fdsafdsfdsa\";s:6:\"submit\";s:10:\"single_tab\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:13:\"mobile_mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(19, 1850, '127.0.0.1', 1850, '2019-10-10 19:30:57', 'send_sms', 0, 'a:11:{s:12:\"class_single\";s:1:\"7\";s:15:\"division_single\";s:1:\"1\";s:17:\"student_id_single\";s:1:\"5\";s:14:\"message_single\";s:9:\"Test cdsa\";s:6:\"submit\";s:10:\"single_tab\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:13:\"mobile_mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(20, 1850, '127.0.0.1', 1850, '2019-10-10 19:31:54', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:0:\"\";s:11:\"class_group\";s:1:\"7\";s:14:\"division_group\";s:1:\"1\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:8:\"Test AuP\";s:6:\"submit\";s:9:\"group_tab\";s:13:\"mobile_mobile\";s:0:\"\";s:14:\"message_mobile\";s:0:\"\";}'),
(21, 1850, '127.0.0.1', 1850, '2019-10-10 19:32:06', 'send_sms', 0, 'a:10:{s:12:\"class_single\";s:1:\"0\";s:15:\"division_single\";s:1:\"0\";s:14:\"message_single\";s:0:\"\";s:11:\"class_group\";s:3:\"all\";s:14:\"division_group\";s:3:\"all\";s:9:\"bus_group\";s:3:\"all\";s:13:\"message_group\";s:0:\"\";s:13:\"mobile_mobile\";s:10:\"9809229743\";s:14:\"message_mobile\";s:8:\"test asd\";s:6:\"submit\";s:10:\"mobile_tab\";}');

-- --------------------------------------------------------

--
-- Table structure for table `102_add_student`
--

CREATE TABLE `102_add_student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `parent_name` varchar(40) NOT NULL,
  `mobile` text NOT NULL,
  `class` varchar(40) NOT NULL,
  `division` varchar(20) NOT NULL,
  `bus` varchar(20) NOT NULL,
  `place` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_bus`
--

CREATE TABLE `102_bus` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_bus`
--

INSERT INTO `102_bus` (`id`, `name`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7');

-- --------------------------------------------------------

--
-- Table structure for table `102_candidates`
--

CREATE TABLE `102_candidates` (
  `id` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `entrance_no` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `place` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `added_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'yes',
  `admission_no` int(11) NOT NULL DEFAULT '0',
  `profile_pic` varchar(5000) CHARACTER SET utf8 NOT NULL DEFAULT 'nophoto.png',
  `class_id` int(11) NOT NULL DEFAULT '1',
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `adhar_no` varchar(12) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `thaluk` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `whatsapp` varchar(10) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `occupation` varchar(150) NOT NULL,
  `guardian_phone` varchar(10) NOT NULL,
  `relation` varchar(50) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `education_islam` varchar(150) NOT NULL,
  `education_school` varchar(150) NOT NULL,
  `other_qualifications` varchar(250) NOT NULL,
  `language` varchar(100) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `membership` varchar(50) NOT NULL,
  `route_to_home` varchar(500) NOT NULL,
  `year_of_studied` int(11) NOT NULL,
  `last_usthad_name` varchar(100) NOT NULL,
  `last_usthad_phone` varchar(10) NOT NULL,
  `previous_institutes` varchar(500) NOT NULL,
  `previous_teacher` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_classes`
--

CREATE TABLE `102_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_classes`
--

INSERT INTO `102_classes` (`id`, `name`, `status`) VALUES
(1, 'LKG', 'yes'),
(2, 'UKG', 'yes'),
(3, '1', 'yes'),
(4, '2', 'yes'),
(5, '3', 'yes'),
(6, '4', 'yes'),
(7, '5', 'yes'),
(8, '6', 'yes'),
(9, '7', 'yes'),
(10, '8', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `102_company_information`
--

CREATE TABLE `102_company_information` (
  `id` int(11) NOT NULL,
  `company_name` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `email` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `phone` varchar(25) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `logo` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `favicon` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `icon` varchar(99) NOT NULL DEFAULT 'icon.png',
  `company_address` longtext CHARACTER SET utf8,
  `default_lang` int(11) NOT NULL DEFAULT '1',
  `login_lang` int(11) NOT NULL,
  `admin_theme_folder` varchar(30) CHARACTER SET utf8 DEFAULT 'NA',
  `user_theme_folder` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `facebook` varchar(100) NOT NULL DEFAULT 'https://facebook.com/',
  `gplus` varchar(99) NOT NULL DEFAULT 'https://plus.google.com/',
  `linkedin` varchar(99) NOT NULL DEFAULT 'https://www.linkedin.com/',
  `country_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `maintenance_mode` int(11) NOT NULL DEFAULT '0',
  `maintenance_mode_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_company_information`
--

INSERT INTO `102_company_information` (`id`, `company_name`, `email`, `phone`, `logo`, `favicon`, `icon`, `company_address`, `default_lang`, `login_lang`, `admin_theme_folder`, `user_theme_folder`, `facebook`, `gplus`, `linkedin`, `country_id`, `currency_id`, `maintenance_mode`, `maintenance_mode_text`) VALUES
(1, 'AUP School Muthuthala', 'ibrahimsignature@gmail.com', '9446858871', 'logo.png', 'favicon.png', 'favicon .png', 'AUP School Muthuthala', 1, 1, 'default', 'default', 'https://facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 0, 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `102_complaint_box`
--

CREATE TABLE `102_complaint_box` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `feedback` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `added_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_complaint_box`
--

INSERT INTO `102_complaint_box` (`id`, `student_id`, `feedback`, `date`, `added_date`, `status`) VALUES
(1, 442, 'JAM - ക്ലാസിൽ മൊബൈൽ ഫോൺ ഉപയോഗിച്ചു .\r\n26/06/2019', '2019-06-26', '2019-07-06 14:13:06', 'yes'),
(2, 339, 'JAM -ക്ലാസിൽ മൊബൈൽ ഫോൺ ഉപയോഗിച്ചു \r\n\r\nസാക്ഷികൾ :\r\n1. AD.NO: 1278:    SAKARIYYA  \r\n2. AD NO: 1355     SHAKIR', '2019-06-26', '2019-07-06 14:25:42', 'yes'),
(3, 352, 'NOT ATTENDED \'JAMUL JAWAMI\' CLASS ON 07/07/2019 FOR NO REASON', '2019-07-07', '2019-07-07 15:20:26', 'yes'),
(4, 455, 'NOT ATTENDED \'JAMUL JAWAMI\' CLASS ON 07/07/2019 FOR NO REASON', '2019-07-07', '2019-07-07 15:20:42', 'yes'),
(5, 351, 'NOT ATTENDED \'JAMUL JAWAMI\' CLASS ON 07/07/2019 FOR NO REASON', '2019-07-07', '2019-07-07 15:20:55', 'yes'),
(6, 483, 'NOT ATTENDED \'JAMUL JAWAMI\' CLASS ON 07/07/2019 BECAUSE OF FEVER', '2019-07-07', '2019-07-07 17:21:27', 'yes'),
(7, 483, 'NOT ATTENDED \'SHARAHUL AQAID \' CLASS ON 07/07/2019 BECAUSE OF FEVER', '2019-07-07', '2019-07-07 17:22:03', 'yes'),
(8, 479, 'NOT ATTENDED \'SHARAHUL AQAID \' CLASS ON 07/07/2019 FOR NO REASON', '2019-07-07', '2019-07-07 17:23:03', 'yes'),
(9, 405, 'NOT ATTENDED SHARAHUL AQAID\' CLASS ON 07/07/2019 FOR NO REASON', '2019-07-07', '2019-07-07 17:24:11', 'yes'),
(10, 328, 'NOT ATTENDED JAMUL JAWAMIA- CLASS', '2019-07-08', '2019-07-08 15:47:16', 'yes'),
(11, 357, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:48:57', 'yes'),
(12, 482, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:50:11', 'yes'),
(13, 326, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:50:40', 'yes'),
(14, 351, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:51:03', 'yes'),
(15, 488, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:51:18', 'yes'),
(16, 323, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:51:32', 'yes'),
(17, 308, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:51:49', 'yes'),
(18, 424, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR\r\nBECAUSE OF LATE FROM TIRUR', '2019-07-08', '2019-07-08 15:53:21', 'yes'),
(19, 439, 'NOT ATTENDED JAMUL JAWAMIA CLASS 8/7/2019 FOR NO REASON', '2019-07-08', '2019-07-08 15:54:00', 'yes'),
(20, 479, '08/07/2109- നു 01.05.PM -  മുതൽ 01.45.PM വരെ ജമ്മു സബ്കിൽ കയറാതെ \r\nബാത് റൂമിൽ പോയി  ഫോൺ ഉപയോഗിക്കുകയും, തെളിവ് സഹിതം പിടിക്കപ്പെടുകയും ചെയ്തിരിക്കുന്നു.\r\nസാക്ഷികൾ \r\nAD,NO - 1365: ജാഫർ \r\nAD,NO - 1284: ദിൽഷാദ്', '2019-07-08', '2019-07-08 16:01:17', 'yes'),
(21, 479, 'NOT ATTENDED IN ZUHAR JAMATH', '2019-07-14', '2019-07-14 13:08:26', 'yes'),
(22, 365, '14/07/2109- നു 04.45.PM - മുതൽ 05.25.PM വരെ SHARAHUL AQAIDH  സബ്കിൽ കയറാതെ ബാത് റൂമിൽ പോയി ഫോൺ ഉപയോഗിക്കുകയും, തെളിവ് സഹിതം പിടിക്കപ്പെടുകയും ചെയ്തിരിക്കുന്നു.\r\n\r\nPRO\r\nDRV', '2019-07-14', '2019-07-14 17:56:45', 'yes'),
(23, 476, 'NOT ATTENDED IN SHARAHUL AQAID SABK 14/7/2019  FOR NO REASON', '2019-07-14', '2019-07-14 19:44:10', 'yes'),
(24, 488, 'അനുവാദം ഇല്ലാതെ വീട്ടിൽ പൊകുകയും 16/7/2019 കാലത്തെ ബുഖാരി ക്ലാസ്സ് നശ്ട്ടപ്പെടുത്തുകയും  ചെയ്തിരിക്കുന്നു', '2019-07-14', '2019-07-15 07:14:25', 'yes'),
(25, 328, 'NOT ATTENDED ALL  CLASSES  FOR NO REASON', '2019-07-14', '2019-07-15 07:16:59', 'yes'),
(26, 328, 'NOT ATTENDED ALL CLASS FOR NO REASON', '2019-07-15', '2019-07-15 07:17:42', 'yes'),
(27, 469, 'NOT ATTENDED SHARAHUL AQAID  CLASS FOR NO REASON', '2019-07-14', '2019-07-15 07:18:34', 'yes'),
(28, 332, 'NOT ATTENDED SHARAHUL AQAID  CLASS FOR NO REASON', '2019-07-15', '2019-07-15 07:18:48', 'yes'),
(29, 288, 'NOT ATTENDED SHARAHUL AQAID  CLASS FOR NO REASON', '2019-07-15', '2019-07-15 07:19:05', 'yes'),
(30, 288, 'NOT ATTENDED ALL   CLASSES FOR NO REASON', '2019-07-15', '2019-07-15 07:19:34', 'yes'),
(31, 288, 'NOT ATTENDED SHARAHUL AQAID  CLASS FOR NO REASON', '2019-07-14', '2019-07-15 07:21:18', 'yes'),
(32, 328, 'ബുഖാരി / ശറഹുത്തഹ്ദീബ് തുടങ്ങിയ ക്ലാസുകളില്‍ ഇരിക്കാതെ മുകളില്‍ കിടന്നുറങ്ങി \r\nഅനുവാദം കൂടാതെ നാട്ടില്‍ പോയി \r\nമിക്ക ക്ലാസുകളിലും പങ്കെടുക്കാറില്ല \r\nനിസ്കാരം കളാ ആക്കുന്ന സാഹചര്യം ശ്രദ്ദയില്‍ പെടാറുണ്ട്', '2019-07-18', '2019-07-18 09:58:18', 'yes'),
(33, 380, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:05:47', 'yes'),
(34, 430, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:06:26', 'yes'),
(35, 429, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:06:39', 'yes'),
(36, 385, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:06:54', 'yes'),
(37, 399, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:07:09', 'yes'),
(38, 400, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:07:23', 'yes'),
(39, 324, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:07:52', 'yes'),
(40, 303, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:08:06', 'yes'),
(41, 311, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:08:22', 'yes'),
(42, 339, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:09:44', 'yes'),
(43, 348, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:09:59', 'yes'),
(44, 468, 'അസുഖം കാരണത്താൽ രാവിലെ നടന്ന ക്ലാസുകളിൽ പങ്കെടുത്തില്ല', '2019-07-21', '2019-07-21 08:10:15', 'yes'),
(45, 453, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:45:36', 'yes'),
(46, 454, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:45:58', 'yes'),
(47, 474, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:46:12', 'yes'),
(48, 474, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:49:19', 'yes'),
(49, 482, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR  REASON', '2019-07-21', '2019-07-21 08:49:47', 'yes'),
(50, 489, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:50:03', 'yes'),
(51, 491, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:50:15', 'yes'),
(52, 498, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:53:54', 'yes'),
(53, 354, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:54:14', 'yes'),
(54, 355, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:54:42', 'yes'),
(55, 436, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:54:58', 'yes'),
(56, 437, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:55:20', 'yes'),
(57, 440, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:55:38', 'yes'),
(58, 447, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR  REASON', '2019-07-21', '2019-07-21 08:56:04', 'yes'),
(59, 448, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:56:21', 'yes'),
(60, 451, 'NOT ATTENDED MULLAHASSAN\' CLASS 21-07-2019 FOR NO REASON', '2019-07-21', '2019-07-21 08:56:40', 'yes'),
(61, 427, '13.30 സമയത്ത് അനുമതി ഇല്ലാതെ പുറത്ത് പോകുകയും SHARAHUL AQAID\' ക്ലാസ്സ് നശ്ട്ടപ്പെടുത്തുകയും ചെയ്തിരിക്കുന്നു.', '2019-07-21', '2019-07-22 13:24:16', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `102_contact_comments`
--

CREATE TABLE `102_contact_comments` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `added_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_countries`
--

CREATE TABLE `102_countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(128) NOT NULL DEFAULT 'NA',
  `country_code` varchar(2) NOT NULL DEFAULT 'NA',
  `phone_code` varchar(10) NOT NULL DEFAULT '0',
  `iso_code_3` varchar(3) NOT NULL DEFAULT 'NA',
  `lang_ref_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `102_countries`
--

INSERT INTO `102_countries` (`country_id`, `country_name`, `country_code`, `phone_code`, `iso_code_3`, `lang_ref_id`) VALUES
(1, 'Afghanistan', 'AF', '+93', 'AFG', 1),
(2, 'Albania', 'AL', '+355', 'ALB', 1),
(3, 'Algeria', 'DZ', '+213', 'DZA', 1),
(4, 'American Samoa', 'AS', '+1', 'ASM', 1),
(5, 'Andorra', 'AD', '+376', 'AND', 1),
(6, 'Angola', 'AO', '+244', 'AGO', 1),
(7, 'Anguilla', 'AI', '+1', 'AIA', 1),
(8, 'Antarctica', 'AQ', '+672', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', '+1', 'ATG', 1),
(10, 'Argentina', 'AR', '+54', 'ARG', 1),
(11, 'Armenia', 'AM', '+374', 'ARM', 1),
(12, 'Aruba', 'AW', '+297', 'ABW', 1),
(13, 'Australia', 'AU', '+61', 'AUS', 1),
(14, 'Austria', 'AT', '+43', 'AUT', 1),
(15, 'Azerbaijan', 'AZ', '+994', 'AZE', 1),
(16, 'Bahamas', 'BS', '+1', 'BHS', 1),
(17, 'Bahrain', 'BH', '+973', 'BHR', 1),
(18, 'Bangladesh', 'BD', '+880', 'BGD', 1),
(19, 'Barbados', 'BB', '+1', 'BRB', 1),
(20, 'Belarus', 'BY', '+375', 'BLR', 1),
(21, 'Belgium', 'BE', '+32', 'BEL', 1),
(22, 'Belize', 'BZ', '+501', 'BLZ', 1),
(23, 'Benin', 'BJ', '+229', 'BEN', 1),
(24, 'Bermuda', 'BM', '+1', 'BMU', 1),
(25, 'Bhutan', 'BT', '+975', 'BTN', 1),
(26, 'Bolivia', 'BO', '+591', 'BOL', 1),
(27, 'Bosnia and Herzegovina', 'BA', '+387', 'BIH', 1),
(28, 'Botswana', 'BW', '+267', 'BWA', 1),
(29, 'Bouvet Island', 'BV', '+20', 'BVT', 1),
(30, 'Brazil', 'BR', '+55', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', '+20', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', '+673', 'BRN', 1),
(33, 'Bulgaria', 'BG', '+359', 'BGR', 1),
(34, 'Burkina Faso', 'BF', '+226', 'BFA', 1),
(35, 'Burundi', 'BI', '+257', 'BDI', 1),
(36, 'Cambodia', 'KH', '+855', 'KHM', 1),
(37, 'Cameroon', 'CM', '+237', 'CMR', 1),
(38, 'Canada', 'CA', '+1', 'CAN', 1),
(39, 'Cape Verde', 'CV', '+238', 'CPV', 1),
(40, 'Cayman Islands', 'KY', '+1', 'CYM', 1),
(41, 'Central African Republic', 'CF', '+236', 'CAF', 1),
(42, 'Chad', 'TD', '+235', 'TCD', 1),
(43, 'Chile', 'CL', '+56', 'CHL', 1),
(44, 'China', 'CN', '+86', 'CHN', 1),
(45, 'Christmas Island', 'CX', '+61', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', '+61', 'CCK', 1),
(47, 'Colombia', 'CO', '+57', 'COL', 1),
(48, 'Comoros', 'KM', '+269', 'COM', 1),
(49, 'Congo', 'CG', '+242', 'COG', 1),
(50, 'Cook Islands', 'CK', '+682', 'COK', 1),
(51, 'Costa Rica', 'CR', '+506', 'CRI', 1),
(52, 'Cote D\'Ivoire', 'CI', '+225', 'CIV', 1),
(53, 'Croatia', 'HR', '+385', 'HRV', 1),
(54, 'Cuba', 'CU', '+53', 'CUB', 1),
(55, 'Cyprus', 'CY', '+357', 'CYP', 1),
(56, 'Czech Republic', 'CZ', '+420', 'CZE', 1),
(57, 'Denmark', 'DK', '+45', 'DNK', 1),
(58, 'Djibouti', 'DJ', '+253', 'DJI', 1),
(59, 'Dominica', 'DM', '+1', 'DMA', 1),
(60, 'Dominican Republic', 'DO', '+1', 'DOM', 1),
(61, 'East Timor', 'TL', '+670', 'TLS', 1),
(62, 'Ecuador', 'EC', '+593', 'ECU', 1),
(63, 'Egypt', 'EG', '+20', 'EGY', 1),
(64, 'El Salvador', 'SV', '+503', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', '+240', 'GNQ', 1),
(66, 'Eritrea', 'ER', '+291', 'ERI', 1),
(67, 'Estonia', 'EE', '+372', 'EST', 1),
(68, 'Ethiopia', 'ET', '+251', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', '+500', 'FLK', 1),
(70, 'Faroe Islands', 'FO', '+298', 'FRO', 1),
(71, 'Fiji', 'FJ', '+679', 'FJI', 1),
(72, 'Finland', 'FI', '+358', 'FIN', 1),
(74, 'France, Metropolitan', 'FR', '+0', 'FRA', 1),
(75, 'French Guiana', 'GF', '+224', 'GUF', 1),
(76, 'French Polynesia', 'PF', '+689', 'PYF', 1),
(77, 'French Southern Territories', 'TF', '+262', 'ATF', 1),
(78, 'Gabon', 'GA', '+241', 'GAB', 1),
(79, 'Gambia', 'GM', '+220', 'GMB', 1),
(80, 'Georgia', 'GE', '+995', 'GEO', 1),
(81, 'Germany', 'DE', '+49', 'DEU', 1),
(82, 'Ghana', 'GH', '+233', 'GHA', 1),
(83, 'Gibraltar', 'GI', '+350', 'GIB', 1),
(84, 'Greece', 'GR', '+30', 'GRC', 1),
(85, 'Greenland', 'GL', '+299', 'GRL', 1),
(86, 'Grenada', 'GD', '+1', 'GRD', 1),
(87, 'Guadeloupe', 'GP', '+20', 'GLP', 1),
(88, 'Guam', 'GU', '+1', 'GUM', 1),
(89, 'Guatemala', 'GT', '+502', 'GTM', 1),
(90, 'Guinea', 'GN', '+224', 'GIN', 1),
(91, 'Guinea-Bissau', 'GW', '+245', 'GNB', 1),
(92, 'Guyana', 'GY', '+592', 'GUY', 1),
(93, 'Haiti', 'HT', '+509', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', '+0', 'HMD', 1),
(95, 'Honduras', 'HN', '+504', 'HND', 1),
(96, 'Hong Kong', 'HK', '+852', 'HKG', 1),
(97, 'Hungary', 'HU', '+36', 'HUN', 1),
(98, 'Iceland', 'IS', '+354', 'ISL', 1),
(99, 'India', 'IN', '+91', 'IND', 1),
(100, 'Indonesia', 'ID', '+62', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', '+98', 'IRN', 1),
(102, 'Iraq', 'IQ', '+964', 'IRQ', 1),
(103, 'Ireland', 'IE', '+353', 'IRL', 1),
(104, 'Israel', 'IL', '+972', 'ISR', 1),
(105, 'Italy', 'IT', '+39', 'ITA', 1),
(106, 'Jamaica', 'JM', '+1', 'JAM', 1),
(107, 'Japan', 'JP', '+81', 'JPN', 1),
(108, 'Jordan', 'JO', '+962', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', '+7', 'KAZ', 1),
(110, 'Kenya', 'KE', '+254', 'KEN', 1),
(111, 'Kiribati', 'KI', '+686', 'KIR', 1),
(112, 'North Korea', 'KP', '+850', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', '+82', 'KOR', 1),
(114, 'Kuwait', 'KW', '+965', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', '+996', 'KGZ', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', '+856', 'LAO', 1),
(117, 'Latvia', 'LV', '+371', 'LVA', 1),
(118, 'Lebanon', 'LB', '+961', 'LBN', 1),
(119, 'Lesotho', 'LS', '+266', 'LSO', 1),
(120, 'Liberia', 'LR', '+231', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', '+218', 'LBY', 1),
(122, 'Liechtenstein', 'LI', '+423', 'LIE', 1),
(123, 'Lithuania', 'LT', '+370', 'LTU', 1),
(124, 'Luxembourg', 'LU', '+352', 'LUX', 1),
(125, 'Macau', 'MO', '+853', 'MAC', 1),
(126, 'FYROM', 'MK', '+389', 'MKD', 1),
(127, 'Madagascar', 'MG', '+261', 'MDG', 1),
(128, 'Malawi', 'MW', '+265', 'MWI', 1),
(129, 'Malaysia', 'MY', '+60', 'MYS', 1),
(130, 'Maldives', 'MV', '+960', 'MDV', 1),
(131, 'Mali', 'ML', '+223', 'MLI', 1),
(132, 'Malta', 'MT', '+356', 'MLT', 1),
(133, 'Marshall Islands', 'MH', '+692', 'MHL', 1),
(134, 'Martinique', 'MQ', '+222', 'MTQ', 1),
(135, 'Mauritania', 'MR', '+222', 'MRT', 1),
(136, 'Mauritius', 'MU', '+230', 'MUS', 1),
(137, 'Mayotte', 'YT', '+262', 'MYT', 1),
(138, 'Mexico', 'MX', '+52', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', '+691', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', '+373', 'MDA', 1),
(141, 'Monaco', 'MC', '+377', 'MCO', 1),
(142, 'Mongolia', 'MN', '+976', 'MNG', 1),
(143, 'Montserrat', 'MS', '+1', 'MSR', 1),
(144, 'Morocco', 'MA', '+212', 'MAR', 1),
(145, 'Mozambique', 'MZ', '+258', 'MOZ', 1),
(146, 'Myanmar', 'MM', '+95', 'MMR', 1),
(147, 'Namibia', 'NA', '+264', 'NAM', 1),
(148, 'Nauru', 'NR', '+674', 'NRU', 1),
(149, 'Nepal', 'NP', '+977', 'NPL', 1),
(150, 'Netherlands', 'NL', '+31', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', '+599', 'ANT', 1),
(152, 'New Caledonia', 'NC', '+687', 'NCL', 1),
(153, 'New Zealand', 'NZ', '+64', 'NZL', 1),
(154, 'Nicaragua', 'NI', '+505', 'NIC', 1),
(155, 'Niger', 'NE', '+227', 'NER', 1),
(156, 'Nigeria', 'NG', '+234', 'NGA', 1),
(157, 'Niue', 'NU', '+683', 'NIU', 1),
(158, 'Norfolk Island', 'NF', '+672', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', '+1', 'MNP', 1),
(160, 'Norway', 'NO', '+47', 'NOR', 1),
(161, 'Oman', 'OM', '+968', 'OMN', 1),
(162, 'Pakistan', 'PK', '+92', 'PAK', 1),
(163, 'Palau', 'PW', '+680', 'PLW', 1),
(164, 'Panama', 'PA', '+507', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', '+675', 'PNG', 1),
(166, 'Paraguay', 'PY', '+595', 'PRY', 1),
(167, 'Peru', 'PE', '+51', 'PER', 1),
(168, 'Philippines', 'PH', '+63', 'PHL', 1),
(169, 'Pitcairn', 'PN', '+870', 'PCN', 1),
(170, 'Poland', 'PL', '+48', 'POL', 1),
(171, 'Portugal', 'PT', '+351', 'PRT', 1),
(172, 'Puerto Rico', 'PR', '+1', 'PRI', 1),
(173, 'Qatar', 'QA', '+974', 'QAT', 1),
(174, 'Reunion', 'RE', '+20', 'REU', 1),
(175, 'Romania', 'RO', '+40', 'ROM', 1),
(176, 'Russian Federation', 'RU', '+7', 'RUS', 1),
(177, 'Rwanda', 'RW', '+250', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', '+1', 'KNA', 1),
(179, 'Saint Lucia', 'LC', '+1', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', '+1', 'VCT', 1),
(181, 'Samoa', 'WS', '+685', 'WSM', 1),
(182, 'San Marino', 'SM', '+378', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', '+239', 'STP', 1),
(184, 'Saudi Arabia', 'SA', '+966', 'SAU', 1),
(185, 'Senegal', 'SN', '+221', 'SEN', 1),
(186, 'Seychelles', 'SC', '+248', 'SYC', 1),
(187, 'Sierra Leone', 'SL', '+232', 'SLE', 1),
(188, 'Singapore', 'SG', '+65', 'SGP', 1),
(189, 'Slovak Republic', 'SK', '+421', 'SVK', 1),
(190, 'Slovenia', 'SI', '+386', 'SVN', 1),
(191, 'Solomon Islands', 'SB', '+677', 'SLB', 1),
(192, 'Somalia', 'SO', '+252', 'SOM', 1),
(193, 'South Africa', 'ZA', '+27', 'ZAF', 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', '+500', 'SGS', 1),
(195, 'Spain', 'ES', '+34', 'ESP', 1),
(196, 'Sri Lanka', 'LK', '+94', 'LKA', 1),
(197, 'St. Helena', 'SH', '+290', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', '+508', 'SPM', 1),
(199, 'Sudan', 'SD', '+249', 'SDN', 1),
(200, 'Suriname', 'SR', '+597', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', '+47', 'SJM', 1),
(202, 'Swaziland', 'SZ', '+268', 'SWZ', 1),
(203, 'Sweden', 'SE', '+46', 'SWE', 1),
(204, 'Switzerland', 'CH', '+41', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', '+963', 'SYR', 1),
(206, 'Taiwan', 'TW', '+886', 'TWN', 1),
(207, 'Tajikistan', 'TJ', '+992', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', '+255', 'TZA', 1),
(209, 'Thailand', 'TH', '+66', 'THA', 1),
(210, 'Togo', 'TG', '+228', 'TGO', 1),
(211, 'Tokelau', 'TK', '+690', 'TKL', 1),
(212, 'Tonga', 'TO', '+676', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', '+1', 'TTO', 1),
(214, 'Tunisia', 'TN', '+216', 'TUN', 1),
(215, 'Turkey', 'TR', '+90', 'TUR', 1),
(216, 'Turkmenistan', 'TM', '+993', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', '+1', 'TCA', 1),
(218, 'Tuvalu', 'TV', '+688', 'TUV', 1),
(219, 'Uganda', 'UG', '+256', 'UGA', 1),
(220, 'Ukraine', 'UA', '+380', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', '+971', 'ARE', 1),
(222, 'United Kingdom', 'GB', '+44', 'GBR', 1),
(223, 'United States', 'US', '+1', 'USA', 1),
(224, 'United States Minor Outlying Islands', 'UM', '+0', 'UMI', 1),
(225, 'Uruguay', 'UY', '+598', 'URY', 1),
(226, 'Uzbekistan', 'UZ', '+998', 'UZB', 1),
(227, 'Vanuatu', 'VU', '+678', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', '+379', 'VAT', 1),
(229, 'Venezuela', 'VE', '+58', 'VEN', 1),
(230, 'Viet Nam', 'VN', '+84', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', '+1284', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', '+1340', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', '+681', 'WLF', 1),
(234, 'Western Sahara', 'EH', '+20', 'ESH', 1),
(235, 'Yemen', 'YE', '+967', 'YEM', 1),
(237, 'Democratic Republic of Congo', 'CD', '+243', 'COD', 1),
(238, 'Zambia', 'ZM', '+260', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', '+263', 'ZWE', 1),
(240, 'Jersey', 'JE', '+20', 'JEY', 1),
(241, 'Guernsey', 'GG', '+20', 'GGY', 1),
(242, 'Montenegro', 'ME', '+382', 'MNE', 1),
(243, 'Serbia', 'RS', '+381', 'SRB', 1),
(244, 'Aaland Islands', 'AX', '+0', 'ALA', 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', '+599', 'BES', 1),
(246, 'Curacao', 'CW', '+599', 'CUW', 1),
(247, 'Palestinian Territory, Occupied', 'PS', '+970', 'PSE', 1),
(248, 'South Sudan', 'SS', '+211', 'SSD', 1),
(249, 'St. Barthelemy', 'BL', '+590', 'BLM', 1),
(250, 'St. Martin (French part)', 'MF', '+590', 'MAF', 1),
(251, 'Canary Islands', 'IC', '+34', 'ICA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `102_currency`
--

CREATE TABLE `102_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `102_currency`
--

INSERT INTO `102_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-09-22 10:30:53'),
(4, 'Arab Emirates Dirham', 'AED', 'AED.', '', '2', 0.05660000, 1, '2017-09-22 10:30:53'),
(5, 'Rupees', 'INR', 'Rs', '', '', 1.00000000, 1, '2017-09-22 12:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `102_division`
--

CREATE TABLE `102_division` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_division`
--

INSERT INTO `102_division` (`id`, `name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H');

-- --------------------------------------------------------

--
-- Table structure for table `102_documents`
--

CREATE TABLE `102_documents` (
  `id` int(25) NOT NULL,
  `file_title` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `doc_file_name` text CHARACTER SET utf8,
  `doc_description` text CHARACTER SET utf8,
  `uploaded_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `sort_order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_documents`
--

INSERT INTO `102_documents` (`id`, `file_title`, `doc_file_name`, `doc_description`, `uploaded_date`, `sort_order`) VALUES
(2, 'നോട്ടീസ്', 'നമ്പർ_CMD.docx', 'ALL HAFIZ STUDENTS&NBSP;', '2019-03-16 18:50:55', 1),
(4, 'SAY EXAM  2019 - 20', 'SAY_EXAM_2019_2.pdf', 'SUBMIT BEFORE&NBSP; 30/05/2019', '2019-05-23 13:32:46', 1),
(6, 'SYLLABUS 2019-20', 'img20190607_15434924_(2).jpg', 'SYLLABUS 2019-20', '2019-06-07 16:21:20', 3);

-- --------------------------------------------------------

--
-- Table structure for table `102_events`
--

CREATE TABLE `102_events` (
  `id` int(11) NOT NULL,
  `heading` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `status` varchar(6) NOT NULL DEFAULT 'yes',
  `start_date` date NOT NULL DEFAULT '2017-10-10',
  `end_date` date NOT NULL DEFAULT '2017-10-10',
  `add_date` datetime NOT NULL DEFAULT '2017-10-10 00:00:00',
  `updated_date` datetime NOT NULL DEFAULT '2017-10-10 00:00:00',
  `venue` varchar(500) CHARACTER SET utf8 NOT NULL,
  `program_image` text NOT NULL,
  `program_brochure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_falily_list`
--

CREATE TABLE `102_falily_list` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `year` varchar(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `place` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_gallery`
--

CREATE TABLE `102_gallery` (
  `id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'yes',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_gallery`
--

INSERT INTO `102_gallery` (`id`, `heading`, `image`, `status`, `date`) VALUES
(1, 'CM Markaz Thennala', 'editedfile.png', 'yes', '2019-02-24 17:11:24'),
(2, 'CM Markaz Thennala', 'IMG-1271.jpg', 'yes', '2019-02-24 17:11:25'),
(3, 'CM Markaz Thennala', 'IMG-0961.jpg', 'yes', '2019-02-24 17:11:25'),
(4, 'CM Markaz Thennala', 'IMG-1308.jpg', 'yes', '2019-02-24 17:11:25'),
(5, 'CM Markaz Thennala', 'IMG-0155.jpg', 'yes', '2019-02-24 17:11:25'),
(6, 'CM Markaz Thennala', 'IMG-1491.jpg', 'yes', '2019-02-24 17:12:21'),
(7, 'CM Markaz Thennala', 'IMG-1823.jpg', 'yes', '2019-02-24 17:12:21'),
(8, 'CM Markaz Thennala', 'IMG-3157.jpg', 'yes', '2019-02-24 17:12:21'),
(9, 'CM Markaz Thennala', 'IMG-3158.jpg', 'yes', '2019-02-24 17:12:22'),
(10, 'CM Markaz Thennala', 'IMG-3160.jpg', 'yes', '2019-02-24 17:12:22'),
(11, 'CM Markaz Thennala', 'IMG-3163.jpg', 'yes', '2019-02-24 17:12:22'),
(12, 'CM Markaz Thennala', 'IMG-3165.jpg', 'yes', '2019-02-24 17:13:25'),
(13, 'CM Markaz Thennala', 'IMG-3166.jpg', 'yes', '2019-02-24 17:13:25'),
(14, 'CM Markaz Thennala', 'IMG-3169.jpg', 'yes', '2019-02-24 17:13:25'),
(15, 'CM Markaz Thennala', 'IMG-3172.jpg', 'yes', '2019-02-24 17:13:25'),
(16, 'CM Markaz Thennala', 'IMG-3173.jpg', 'yes', '2019-02-24 17:13:25'),
(17, 'Notifications', 'rules-1.jpg', 'deleted', '2019-05-20 17:02:49'),
(18, 'Notifications', 'notification.jpg', 'yes', '2019-05-20 16:58:04'),
(19, 'Notifications', 'rules-with-fine.jpg', 'yes', '2019-05-20 17:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `102_language`
--

CREATE TABLE `102_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `site_perm` int(11) NOT NULL,
  `login_perm` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `102_language`
--

INSERT INTO `102_language` (`language_id`, `name`, `code`, `image`, `directory`, `site_perm`, `login_perm`, `sort_order`) VALUES
(1, 'English', 'en', 'en.png', 'english', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `102_leave_days`
--

CREATE TABLE `102_leave_days` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes',
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_leave_days`
--

INSERT INTO `102_leave_days` (`id`, `date`, `purpose`, `status`, `added_date`) VALUES
(1, '2019-03-01', 'March 1', 'no', '2019-02-23 18:01:53'),
(2, '2019-04-14', 'Vishu', 'yes', '2019-03-07 15:08:29'),
(3, '2019-04-17', 'DARS /2018-19 BACH CLOSSING DAY', 'yes', '2019-04-18 14:25:28'),
(4, '2019-06-15', 'DARS OPEN DAY', 'yes', '2019-06-08 19:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `102_login_info`
--

CREATE TABLE `102_login_info` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(20) NOT NULL DEFAULT '0',
  `user_type` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'user',
  `user_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT 'yes',
  `date_of_joining` datetime DEFAULT NULL,
  `default_lang` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_login_info`
--

INSERT INTO `102_login_info` (`user_id`, `order_id`, `user_type`, `user_name`, `password`, `status`, `date_of_joining`, `default_lang`) VALUES
(1850, 1, 'admin', 'ADMIN', '0192023a7bbd73250516f069df18b500', 'yes', '2018-07-02 14:25:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `102_medical_fund`
--

CREATE TABLE `102_medical_fund` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `reason` text CHARACTER SET utf8 NOT NULL,
  `receipt` varchar(11) NOT NULL,
  `doctor_fees` double NOT NULL,
  `medicine` double NOT NULL,
  `ta` double NOT NULL,
  `other_expences` double NOT NULL,
  `approved_amount` double NOT NULL,
  `total_amount` double NOT NULL,
  `date` date NOT NULL,
  `added_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_medical_fund`
--

INSERT INTO `102_medical_fund` (`id`, `student_id`, `reason`, `receipt`, `doctor_fees`, `medicine`, `ta`, `other_expences`, `approved_amount`, `total_amount`, `date`, `added_date`, `status`) VALUES
(2, 483, 'PAID RECEIPT', '0001/2019', 0, 210, 100, 0, 300, 310, '2019-07-08', '2019-07-14 16:16:04', 'yes'),
(3, 363, 'PAID CASH AND  RECEIPT', '0002/2019', 0, 123, 0, 0, 123, 123, '2019-07-08', '2019-07-14 16:19:51', 'yes'),
(4, 357, 'PAID CASH AND  RECEIPT', '0003/2019', 100, 250, 0, 0, 300, 350, '2019-07-08', '2019-07-14 16:21:22', 'yes'),
(5, 363, 'PAID CASH AND  RECEIPT', '0004/2019', 100, 294, 80, 0, 387, 474, '2019-07-02', '2019-07-14 16:45:18', 'yes'),
(6, 358, 'AUTO CHARGE FROM THENNAL TO PARAPPANAGADI', '000', 0, 0, 240, 0, 240, 240, '2019-07-19', '2019-07-19 14:37:32', 'yes'),
(7, 442, 'HOSPITAL', '0005', 0, 50, 100, 0, 150, 150, '2019-07-17', '2019-07-21 10:46:12', 'yes'),
(8, 444, 'HOSPITAL', '0006', 0, 50, 100, 0, 150, 150, '2019-07-17', '2019-07-21 10:48:18', 'yes'),
(9, 457, 'HOSPITAL', '0007', 80, 122, 0, 0, 200, 202, '2019-07-17', '2019-07-21 10:52:44', 'yes'),
(10, 410, 'HOSPITAL', '0008', 0, 140, 50, 0, 190, 190, '2019-07-17', '2019-07-21 10:54:17', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `102_menu`
--

CREATE TABLE `102_menu` (
  `id` int(11) NOT NULL,
  `link_ref_id` varchar(200) CHARACTER SET utf8 NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `icon` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT 'clip-home-2',
  `status` varchar(200) CHARACTER SET utf8 NOT NULL,
  `perm_admin` int(12) NOT NULL DEFAULT '0',
  `perm_host` int(11) NOT NULL,
  `perm_user` int(12) DEFAULT '0',
  `order_id` int(12) NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL DEFAULT 'site',
  `en_lang` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_menu`
--

INSERT INTO `102_menu` (`id`, `link_ref_id`, `menu_link`, `icon`, `status`, `perm_admin`, `perm_host`, `perm_user`, `order_id`, `type`, `en_lang`) VALUES
(1, '#', 'dashboard/index', 'fa-dashboard', 'yes', 1, 0, 0, 1, 'site', 'Dashboard'),
(2, '#', '../login/logout', 'fa fa-unlock', 'yes', 1, 0, 0, 10, 'site', 'Logout'),
(6, '#', 'profile/change-password', 'fa-lock', 'yes', 1, 0, 0, 7, 'site', 'Password'),
(14, '#', 'details/add-student', 'fa-user', 'yes', 1, 0, 0, 4, 'site', 'Add Student'),
(15, '#', 'details/view-student', 'fa-user', 'yes', 1, 0, 0, 5, 'site', 'View Student'),
(16, '#', 'settings/send_sms', 'fa-plus-square', 'yes', 1, 0, 0, 6, 'site', 'Send sms');

-- --------------------------------------------------------

--
-- Table structure for table `102_news`
--

CREATE TABLE `102_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `news_desc` longtext CHARACTER SET utf8,
  `sort_order` int(11) NOT NULL,
  `news_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_news`
--

INSERT INTO `102_news` (`news_id`, `news_title`, `news_desc`, `sort_order`, `news_date`) VALUES
(12, 'ADMISSION 2019-20', 'CLOSED', 1, '2019-06-03 23:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `102_send_sms_history`
--

CREATE TABLE `102_send_sms_history` (
  `id` int(11) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `response` varchar(50) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_send_sms_history`
--

INSERT INTO `102_send_sms_history` (`id`, `mobile`, `message`, `response`, `ip`, `date`) VALUES
(1, '8113003969', 'testing all', 'SMS config is OFF', '127.0.0.1', '2019-10-10 16:47:25'),
(2, '9633524999', 'testing all', 'SMS config is OFF', '127.0.0.1', '2019-10-10 16:47:25'),
(3, '989563214', 'testing all', 'SMS config is OFF', '127.0.0.1', '2019-10-10 16:47:25'),
(4, '98959693', 'testing all', 'SMS config is OFF', '127.0.0.1', '2019-10-10 16:47:25'),
(5, '8113003969', 'test 1', 'SMS config is OFF', '127.0.0.1', '2019-10-10 16:48:51'),
(6, '989563214', 'test 1', 'SMS config is OFF', '127.0.0.1', '2019-10-10 16:48:51'),
(7, '8113003969', 'james2', 'SMS config is OFF', '127.0.0.1', '2019-10-10 16:49:18'),
(8, '9809229743', 'Testing Aup shool', '6345923', '127.0.0.1', '2019-10-10 17:04:01'),
(9, '9809229743', 'testingg', 'SMS Content Template MisMatch.', '127.0.0.1', '2019-10-10 17:06:40'),
(10, '9809229743', 'test smms', '6360961', '127.0.0.1', '2019-10-10 17:13:40'),
(11, '9400550510', 'test test', '6370813', '127.0.0.1', '2019-10-10 17:16:13'),
(12, '9809229743', 'test test', '6370817', '127.0.0.1', '2019-10-10 17:16:13'),
(13, '9809229743', 'test test', '6376432', '127.0.0.1', '2019-10-10 17:19:04'),
(14, '9947295288', 'test test', '6376436', '127.0.0.1', '2019-10-10 17:19:05'),
(15, '9809229743', 'test test', '6380334', '127.0.0.1', '2019-10-10 17:23:10'),
(16, '9947295288', 'test test', '6380336', '127.0.0.1', '2019-10-10 17:23:10'),
(17, '8113003969', 'gfh', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:17'),
(18, '8113003969', 'gfh', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:17'),
(19, '98959693', 'gfh', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:17'),
(20, '9809229743', 'gfh', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:17'),
(21, '9809229743', 'gfh', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:17'),
(22, '9947295288', 'gfh', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:17'),
(23, '8113003969', 'dsv f', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:53'),
(24, '8113003969', 'dsv f', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:53'),
(25, '98959693', 'dsv f', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:53'),
(26, '9809229743', 'dsv f', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:53'),
(27, '9809229743', 'dsv f', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:53'),
(28, '9947295288', 'dsv f', 'SMS config is OFF', '127.0.0.1', '2019-10-10 17:44:53'),
(29, '9809229743', 'Test Testonm', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:23:02'),
(30, '9809229743', 'fdsa fdvcasfdsa', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:23:26'),
(31, '9809229743', 'vsafdsafdsafds', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:23:51'),
(32, '9809229743', 'vsafdsafdsafds', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:24:01'),
(33, '9809229743', 'vsafdsafdsafds', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:24:04'),
(34, '9809229743', 'fsdafdsafdsafdsa vdasfdsa', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:24:47'),
(35, '9809229743', 'fsdafdsafdsafdsa vdasfdsa', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:25:36'),
(36, '9809229743', 'vgfsafds fdsaf ds', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:25:46'),
(37, '9809229743', 'vgfsafds fdsaf ds', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:27:06'),
(38, '1231232131', '123213 c', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:27:58'),
(39, '1231234563', 'fdsafdsa', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:28:26'),
(40, '9809229743', 'fdsafdsfdsa', 'SMS config is OFF', '127.0.0.1', '2019-10-10 19:30:16'),
(41, '9809229743', 'Test cdsa', '6444807', '127.0.0.1', '2019-10-10 19:30:57'),
(42, '9809229743', 'Test AuP', '6445798', '127.0.0.1', '2019-10-10 19:31:54'),
(43, '9809229743', 'test asd', '6445908', '127.0.0.1', '2019-10-10 19:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `102_settings`
--

CREATE TABLE `102_settings` (
  `setting_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `102_settings`
--

INSERT INTO `102_settings` (`setting_id`, `code`, `key`, `value`, `data`) VALUES
(7, 'config', 'lang_id', '1', ''),
(8, 'config', 'lang_name', 'english', ''),
(19, 'config', 'help_status', 'yes', ''),
(20, 'config', 'admin_theme_folder', 'default', ''),
(21, 'config', 'user_theme_folder', 'default', ''),
(24, 'config', 'user_name_config', '0', ''),
(25, 'config', 'user_name_length', '3', ''),
(26, 'config', 'password_length', '6', ''),
(32, 'module', 'social_login', '0', ''),
(33, 'social_login', 'google_login', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `102_staff_accounts_transactions`
--

CREATE TABLE `102_staff_accounts_transactions` (
  `id` int(11) NOT NULL,
  `account_number` int(100) NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` double NOT NULL,
  `remarks` text NOT NULL,
  `date` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_staff_details`
--

CREATE TABLE `102_staff_details` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `place` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `added_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes',
  `profile_pic` text NOT NULL,
  `staff_post` varchar(50) NOT NULL,
  `last_updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_studentold`
--

CREATE TABLE `102_studentold` (
  `id` int(11) NOT NULL,
  `place` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `adm_class` varchar(255) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `admission_no` int(11) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `doa` datetime NOT NULL,
  `dob` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `house_name` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `initial` varchar(255) NOT NULL,
  `last_teacher` varchar(255) DEFAULT NULL,
  `last_teacher_mobile` varchar(255) DEFAULT NULL,
  `local_body` varchar(255) NOT NULL,
  `membership_no` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `pin` int(11) DEFAULT NULL,
  `previous_institutes` varchar(255) DEFAULT NULL,
  `previous_teachers` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `roll_no` int(11) NOT NULL,
  `route_home` varchar(255) DEFAULT NULL,
  `taluk` varchar(255) DEFAULT NULL,
  `year_studied` varchar(255) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `isdeleted` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_studentold`
--

INSERT INTO `102_studentold` (`id`, `place`, `address`, `adm_class`, `year`, `admission_no`, `district`, `doa`, `dob`, `email`, `enabled`, `guardian_name`, `house_name`, `image_url`, `initial`, `last_teacher`, `last_teacher_mobile`, `local_body`, `membership_no`, `mobile`, `name`, `pin`, `previous_institutes`, `previous_teachers`, `relationship`, `remarks`, `roll_no`, `route_home`, `taluk`, `year_studied`, `state`, `isdeleted`) VALUES
(3, 'PERIYATTHIL', 'PK HOUSE \nPO. PR NAGAR\nVIA ,MATOOL', '1', 1, 901, 'Kannur', '2017-07-03 05:30:00', '1990-03-16 05:30:00', '', b'1', 'ABDUL HAMEED MUSLIYAR', 'PK.HOUSE', NULL, 'P.K', 'THWAYYIB THANGAL', '9946095998', 'IRITTI', 'NIL ', '9656075813 -9947579953', 'SHIHABUDEEN ', 670702, 'AL MUJAMMAUL ISLAMI \nTHRIKKARIPUR', 'THWYYIB THANGAL \nABDULLA MUSLIYAR OMACHAPUZHA\n', 'FATHER', 'PLZ NOTE SEAL OF SYS OR SSF \n', 1, 'THALASERY - MATTANOOR - PERIYATHIL ', 'THALASERY', '11', NULL, b'0'),
(4, 'TRIKARIPUR        AYITTY', 'VPM HOUSE  AYITTI\nTRIKKARIPUR .PO. ', '1', 1, 902, 'Kasaragod', '2017-07-03 05:30:00', '1992-02-18 05:30:00', NULL, b'1', 'ALI FAIZY ', 'VPM HOUSE', NULL, 'VPM', 'THWAYYIB THANGAL', '00000', 'TRIKARIPUR', 'NIL', '000', 'MUHAMMAD MUSTHAFA ', 671310, 'AL MUJAMMAUL ISLAMI ', 'THWAYYIB THANGAL \nABDULLA MUSLIYAR OMACHAPUZHA', 'FATHER', 'PLZ NT SEAL SSF SYS ', 2, 'PAYYANUR -TRIKARIPUR', 'HOUSDHURG', '07', NULL, b'0'),
(5, 'NALVATHOKLU', 'DUDDIYANDA MANZIL\nVIRAJ PETA  KODAGU \nKARNATAKA\n', '1', 1, 903, 'Kasaragod', '2017-07-03 05:30:00', '1993-10-30 05:30:00', NULL, b'1', 'MAHIN HAJI', 'DUDDIYANDA MANZIL', NULL, 'CM', 'THWAYYIB THANGAL', '9946095998', 'VIRAJ PETA', 'KAKDG0014964', '08893612024', 'NISARUDDHIN ', 571218, 'AL MUJAMMAUL ISLAMI', 'THWYYIB THANGAL', 'FATHER', 'PLZ NOT SEAL OF SSF OR SYS \n', 3, 'KOADAGU VIRAJ PETA', 'VIRAJ PETA', '7', NULL, b'0'),
(6, 'MULLIKKAD ', 'MUHAMMAD SHEREEF \nMAULAKIRIYATH      PERUMBATTA', '1', 1, 904, 'Kasaragod', '2017-07-03 05:30:00', '1992-04-13 05:30:00', NULL, b'1', 'ABDUL RAHMAN  MTP', 'MAULAKIRIYATH', NULL, 'MC', 'THWAYYIB THANGAL', '9946095998', 'BEEMANADY VILLAGE', 'NIL ', '9526602418', 'MUHAMMAD SHEREEF ', 671313, 'AL MUJAMMAUL ISLAMI', 'THWAYYIB THANGAL', 'FATHER', 'FORM MISSING \nDATA NOT RECVD ', 4, 'PAYYANUR -PERUMBATTA- MULLIKKAD', 'HOSDURG', '07', NULL, b'0'),
(7, 'KANNANTHALI', 'KUVVAPPARAMBIL HOUSE\nPANANGATTOR(PO)\nTHANOR,KANNANTHALLY\n676302', '1', 1, 905, 'Malappuram', '2017-07-03 05:30:00', '1991-09-23 05:30:00', '', b'1', 'SAITHALAVIKUTTY', 'KUVVA PARAMBIL', NULL, 'KP', 'ABDUSSAMAD AHSANI', '000', 'THANOOR', 'NIL', '9895535704', 'NIZAR ', 976302, 'BILAL MASJID ELANKOOR', 'SAYYID ABDULKADAR HYDROOS MUTHUKKUYA THANGAL ,USMAN AHSANI, ABDUSSAMAD AHSANI', 'FATHER', NULL, 5, 'THENNALA-THEYYALA-KANNANDALLY', 'THIROOR', '9', NULL, b'0'),
(8, 'ELAMBRA', 'PILAKKADAN HOUSE\nPAYYANAD .P.O\nELAMBRA ,MANJERI ', '1', 1, 906, 'Malappuram', '2017-07-03 05:30:00', '1994-12-28 05:30:00', NULL, b'1', 'HAMZA.P', 'PILAKKADAN HOUSE', NULL, 'P', 'ALAVI SAQAFI ', '9846415142', 'ELAMBRA', '00', '9656482686, 9744917766', 'JAMSHEER ALI ', 676122, 'KAPPMUGAM JUMA MAZJID ', 'ALAVI SAQAFI ELAMBRA ', 'FATHER', 'FORM NOT CLEAR', 6, 'MALAPURAM ,MANJERI ,CHOLA,ELAMBRA', 'ERANAD ', '09', NULL, b'0'),
(9, 'ELAMBRA', 'THENATH HOUSE\nPAYYANAD\nMANJERI   ELAMBRA  MALAPPURAM', '1', 1, 907, 'Malappuram', '2017-07-03 05:30:00', '1993-01-02 05:30:00', NULL, b'1', 'HAMZA', 'THENATTH HOUSE', NULL, 'T', 'ALAVI SAQAFI    ELAMBRA', '9846415142', 'ELAMBRA', '160407110029', '6933447410   . 9747123769', 'ABDULLA ', 676122, 'KAPP MUGAM  JUMA MASJID', 'ALAVI SAQAFI ELAMBRA', 'FATHER', 'FORM REJECTED', 7, 'MANJERI , PANDIKKAD , KUTTIPARA , ELAMBRA', 'ERANAD', '09', NULL, b'0'),
(10, 'VAVOOR', 'POTHU VETTICHALIL  HOUSE\nVAVOOR ,CHEEKODE.P.O. \nCHERUVAYOOR VIA\n', '1', 1, 908, 'Malappuram', '2017-07-03 05:30:00', '1993-08-30 05:30:00', NULL, b'1', 'ASHRAF', 'POTHU VETTICHALIL', NULL, 'A.P', 'K.P. SULAIMAN MUSLIYAR   VAVOOR ', '00', 'CHEEKODE', '00', '9745147833', 'ASHKAR ALI', 673645, '1. AREEKODE THAZHATHANGADI JUMA MASJID\n2. DARUL MUSTHAFA   ,EDAKKANAD ', '1. K.P. SULAIMAN MUSLIYAR VAVOOR\n2. ABDURASAQ BAQAVI  .THACHANA\n3. ABDU RASHEED MISBAHI \n', 'FATHER.', NULL, 8, 'KONDOTTY, EDAVANNA PARA , VAVOOR', 'KONDOTTY', '8', NULL, b'0'),
(11, 'MUKKOOD', 'IBRAHIM KHALEEL  \nMUKKOOD HOUSE .P.O RAVANESHWER\nKASARGODE', '1', 1, 909, 'Kasaragod', '2017-07-03 05:30:00', '1992-12-29 05:30:00', NULL, b'1', 'ABDUL HAMEED', 'MUKKOOD HOUSE', NULL, 'M', 'THWAYYIB THANGAL', '9946095998', 'AJANUR', '00', '07293532681', 'IBRAHIM KHALEEL', 671316, 'AL MUJAMMAUL ISLAMI ', 'THWAYYIB THANGAL THRIKARIPUR\nBASHEER MISBAHI. OMACHAPUZHA\n', 'FATHER', 'FORM REJECTED', 9, 'KANHANGAD ', 'HOSDURG', '7', NULL, b'0'),
(12, 'MAYILANJI VALAVU ', 'MUHAMMAD JUNAID CHANTHRAMTHODI\nPARAMMAL HOUSE\nKOLAKKATTU CHALI .P.O. CHELAMBRA VIA', '1', 1, 910, 'Malappuram', '2017-07-03 05:30:00', '1994-03-02 05:30:00', NULL, b'1', 'KUNJI MOIDEEN ANVARI', 'PARAMMAL HOUSE', NULL, 'C', 'KP SULAIMAN MUSLIYAR VAVOOR', '00', 'CHELAMBRA', '00', '8089560899', 'MUHAMMAD JUNAID ', 673634, 'DARUL MUSTHAFA ,EDAKKANAD', 'KP. SULAIMAN MUSLIYAR ,VAVOOR', 'FATHER', NULL, 10, 'UNIVERSITY -KOTTAKKADAVU ROAD -MAYILANJI VALAVU', 'THIROORANGADI', '8', NULL, b'0'),
(13, 'PARAKKAVU', 'VAL PARAMBIL HOUSE\nMOONIYOOR SOUTH\nPARAKKAV,   CHEMMAD ', '1', 1, 911, 'Malappuram', '2017-07-03 05:30:00', '1994-05-30 05:30:00', '', b'1', 'ABDUL MAJEED ', 'VAL PARAMBIL HOUSE', '150134979648637.jpg', 'V.P.', 'ABDUL AZEES SAQAFI', '9846439150', 'MOONIYOOR ', '90501020029', '9745925905  { 9946158030}  ', 'MUH AD ', 676311, 'CHAPPANANGADI JUMA MAZJID', 'ABDUL AZEES SAQAFI', 'FATHER', 'CLR ', 11, 'CHEMMAD - ALIN CHUVAD -PARAKKADAVU', 'VALLIKUNNU N', '9', NULL, b'0'),
(14, 'VALAMANGALAM', 'MUHAMMED SUHAIL .PC\nPARAKKAL HOUSE , VALAMANGALAM \nPULPATTA .P.O  MANJERI -VIA', '1', 1, 912, 'Malappuram', '2017-07-03 05:30:00', '1994-03-25 05:30:00', NULL, b'1', 'PC .ABDUL AZEEZ MUSLIYAR', 'PARAKKAL HOUSE', '150138549299830.jpg', 'PC', 'ABDUL GAFOOR AHSANI -VALAMANGALAM', '9495468128', 'PULPATTA', 'KRLA JM ULAMA 19740', '9745114208', 'MOHAMMED SUHAIL ', 676123, '1.DARU RAHMA DA\'WA COLLEGE \n2.CM DA\'WA CENTER POOKOTOOR\n3. MAZJIDUL BADRIYYA -VALAMANGALAM', 'NAJMUDEEN SAQAFI-POKOTOOR\nABDUL GAFOOR AHSANI -VALAMANGALAM', 'FATHER', 'REJECTED ', 12, 'MALAPPURAM -MONGAM-VALAMANGALAM', 'ERANAD', '8', 'KERALA', b'0'),
(15, 'PALLIPPATTUMURI', 'AYAMPARAMBIL HOUSE\nPALLIPPATTUMURI       THRIKKUNNAPPUZHA\nALAPPUZHA', '1', 1, 913, 'Alappuzha', '2017-07-03 05:30:00', '1994-12-18 05:30:00', NULL, b'1', 'ALI KUNJU', 'AYAMPARAMBIL', '150138586379542.jpg', 'A', 'ABDU SAMAD MADHANI ,KAVANOOR ', '00', 'THRIKKUNNAPPUZHA', '000', '9746072324', 'HASSAN', 690515, 'THEKKE PUNNAYOOR DARS \n.....................................\n.................................', 'ABDU SAMAD MADHANI ,KAVANOOR\n...............................\n...................... ', 'FATHER', 'FORM REJECTED ', 13, 'ALAPPUZHA -THOTTAPPALLI- PALLIPPATTUMURI', 'KARTHIKAPPALLI', '8', NULL, b'0'),
(16, 'CHEGANOOR', 'PUTHAN PEEDIKAYIL HOUSE\nPO. MUDUR      VIA   VATTAMKULAM \nCHEGANOOR', '1', 1, 914, 'Malappuram', '2017-07-03 05:30:00', '1993-10-31 05:30:00', NULL, b'1', 'ABDUL KADAR BAQAVI', 'PUTHAN PEEDIKAYIL HOUSE', NULL, 'PP', 'SALEEM SAQAFI  CHEMBRA', '00', 'VATTAMKULAM', 'SSF 288168', '9846980491', 'MUHAMMED ABDUL LATHEEF ', 679578, 'MANOOR JUMA MAZJID\nTHAZHETHARA JUMA MAZJID\nNIRAMARUDHOR JUMA MAZJIOD ', 'SALEEM SAQAFI  CHEMBRA\n', 'FATHER', 'REJECTED', 14, 'KUTTIPURAM -EDAPPAL ROOT -MANOOR ', 'PONNANI', '8', NULL, b'0'),
(17, 'AVIYIL BEECH', 'AYYAPPERI HOUSE\nPARAPPANANGADI  NEDUVA .P.O\nMALAPPURAM', '1', 1, 915, 'Malappuram', '2017-07-03 05:30:00', '1992-05-05 05:30:00', NULL, b'1', 'HAMZA KOYA ', 'AYYAPPERI HOUSE', NULL, 'AP', '00', '00', 'PARAPPANAGADI', '00', '9744978746', 'ASHIK RAHMAN ', 676303, 'MARKAZUL MASALIH \nCHENGANI DARS', 'SAYYID SWALAHUDEEN BUKHARI\nSHIHABUDEEN LATHEEFI\nM.K.MUHAMMAD DHARIMI', 'FATHER', 'REJECTED ', 15, 'PARAPPANAGADI - AVIL BEECH', 'THIROORANGADI', '9', NULL, b'0'),
(18, 'KOLAPPURAM', 'pootham kurinhi house\nkolappuram north\nar vnagar po', '1', 1, 916, 'Malappuram', '2017-07-03 05:30:00', '1995-01-01 05:30:00', '', b'1', 'MUHAMMED', 'POOTHAM KURINHI', NULL, 'PK', 'SULAIMAN MUSLIYAR VAVOOR', '9847649886', 'VENGARA', '90301080016', '9961805899', 'JABIR ISMAEEL', 367305, 'DARUL MUSTHAFA EDAKKANAD', 'SULAIMAN MUSLIYAR VAVOOR', 'FATHER', 'OK', 16, 'KAKKAD-KOLAPPURAM', 'THIROORANGADI', '8', NULL, b'0'),
(19, 'PARAPPANANGADI', 'MELEVEETIL BUSHRA MANZIL \nMAPPOOTIL ROAD \nPARAPPANANGADI', '1', 1, 917, 'Malappuram', '2017-07-03 05:30:00', '1994-01-26 05:30:00', '', b'1', 'UMMER MV', 'MELEVEETIL', NULL, ' MV', 'UK SHAREEF FALILI', '00000', 'PARAPPANANGADI', 'SSF 90304010003', '9895342613', 'MUHAMMED JUNAID', 676303, 'KARINGAPPARA  MAHALLU JUMA MASJID\nKLARI MAHALLU JUMA MASJID\nARAYAN KADAPPURAM MAHALLU JUMA  MASJID', 'MUSTHAFA SAQUAFI  MANNARKKADU,\nNAJMUDHEEN MISBAHI  PATHAPIRIYAM,\nUK SHAREEF FALILI YARATHUMPADI,', 'FATHER', 'FORM MISSING', 17, 'PARAPPANANGADI', 'TANUR', '9', NULL, b'0'),
(20, 'THACHANGAD,MARAYAMANGALAM', 'MOOTHIRAPEEDIKA HOUSE\nMARAYAMANGALAM(PO)\nPALAKKAD', '1', 1, 918, 'Palakkad', '2017-07-03 05:30:00', '1993-02-28 05:30:00', NULL, b'1', 'ABDULRAHMAN FAIZI', 'MOOTHIRAPEEDIKA', NULL, 'MP', 'SAIDHALAVI BAQUAVI', '000000', 'NELLAYA', '0000000', '04662382812', 'ABDUL RAHOOF', 679385, 'JAMIA HASANIYYA PALAKKAD\nPADINJARANGADI TOWN JUMAMASJID', 'K ABOOBAKKER FAIZI THAZEKKOD\nSHAFI FAIZI,KIDANGAZI\nMMK FAIZI\nKHALID FAIZI\nSAIDHALAVI BAQUAVI', 'FATHER', NULL, 18, 'KOTTAKKAL-PERINTHALMANNA-MUTHUKURUSSI- THACHANGAD-MARAYAMANGALAM', 'OTTAPPALAM', '8', NULL, b'0'),
(21, 'THIRUVATHRA', 'KARUPPANVEETIL HOUSE\nTHIRUVATHRA(PO)\nCHAVAKKAD', '1', 1, 919, 'Thrissur', '2017-07-03 05:30:00', '1996-01-03 05:30:00', NULL, b'1', 'ABDULSALEEM HAJI', 'KARUPPANVEETIL HOUSE', NULL, 'KK', 'THAJUDHEEN AHSANI PULLOOR', '9747364917', 'CHAVAKKAD', '475000134', '9061606564', 'ABUTHWAHIR BADUSHA', 680516, 'PANOORDARS \nAL-MAQUARU SUNNIYYA MAYYIL', 'THAJUDHEEN AHSANI PULLOOR', 'FATHER', 'REGECTED', 19, 'TIRUR-THIRUVATHRA', 'CHAVAKKAD', '8', NULL, b'0'),
(22, 'CHETUVA ETHAYI', 'AANAAMKADAVIL HOUSE\nENGANDIYOOR (PO)\nCHETUVA', '1', 1, 920, 'Thrissur', '2017-07-03 05:30:00', '1996-05-18 05:30:00', NULL, b'1', 'SHAMSUDHEEN MUSLIYAR', 'AANAAMKADAVIL HOUSE', NULL, 'AK', 'THAJUDHEEN AHSANI', '9747364917', 'ENGANDIYOOR', '00000', '9656475770', 'MUHAMMED FAIZAL', 680615, 'PANOOR PALLIDARS \nAL-MAQUAR SUNNIYYA MAYYIL', 'THAJUDHEEN AHSANI', 'FATHER', 'REGECTED', 20, 'CHAVAKKAD-CHETUVA-ETHAYI', 'CHAVAKKAD', '8', NULL, b'0'),
(23, 'NJANGATTIRI', 'PARAKKATIL HOUSE\nNJANGATIRI (PO)', '1', 1, 921, 'Palakkad', '2017-07-03 05:30:00', '1996-08-14 05:30:00', NULL, b'1', 'SAKEER', 'PARAKKATIL', NULL, 'P', 'THAJUDHEEN AHSANI', '9747364917', 'THRITHALA', '11060206600007', '9656904656', 'SHAHULHAMEED', 679303, 'PANOOR PALLIDARS\nAL-MAQUAR SUNNIYYA', 'THAJUDHEEN AHSANI', 'FATHER', 'REGECTED', 21, 'PATTAMBI -NJANGATTIRI', 'PATTAMBI', '8', NULL, b'0'),
(24, 'MALIYEKKAL', 'PARAMMAL HOUSE\nMALIYEKKAL\nKOORAD (PO)', '1', 1, 922, 'Malappuram', '2017-07-03 05:30:00', '1994-08-13 05:30:00', NULL, b'1', 'ABDULLA', 'PARAMMAL', NULL, 'P', 'ELANKOOR THANGAL', '9895341265', 'KOORAD', '000000', '7356025767', 'MUHAMMED SHAFI', 676304, 'BILALMASJID ELANKOOR', 'ABDUL SAMAD AHSANI\nUSMAN AHSANI\nSAYYID ABDUL KHADAR HAIDROOS\nMUTHUKOYA THANGAL ELANKOOR', 'FATHER', 'FORM REGECTED', 22, 'KOTTAKKAL-MANJERI-KALIKAVU-MALIYEKKAL', 'NILAMBUR', '9', NULL, b'0'),
(26, 'KUNNATH PARAMB', 'MADATHODY HOUSE\nMOONIYUR .P.O , KUNNATH PARAMB.\n\n', '1', 1, 923, 'Malappuram', '2017-07-03 05:30:00', '1996-07-24 05:30:00', '', b'1', 'MUHAMMED BASHEER ', 'MADATHODY', NULL, 'MT', 'AP,HAMZA SAQAFI MELMURY', '9447750373', 'MOONIYUR', '352261 KRLA MUSLM JMATH', '8943285536', 'MUHAMMED SHAMIR', 676311, 'MUTHANOOR JUMA MAZJID DARS', 'AP,HAMZA SAQAFI MELMURY\n', 'FATHER', 'FORM MISSING ', 23, 'CHEMMAD -KOZHIKODE ROAD -MOONIYUR -KUNNATH PARAMB', 'VALLIKKUNN', '10', NULL, b'0'),
(27, 'AAAA', 'AAAAAAA', '1', 1, 924, 'Malappuram', '2017-07-03 05:30:00', '1990-01-01 05:30:00', NULL, b'1', 'F', 'A', NULL, 'A', 'AA', '99', 'AAAA', '000', '99', 'MUHAMMED SHIBILI ', 666666, 'AA', 'AA', 'FATHER', 'FORM MISSIN I\nDATA should not be empty', 24, 'AA', 'AAAA', '7', NULL, b'0'),
(28, 'KAYALAM', 'EDAPPOTHIL HOUSE\nKAYALAM P.O.   MAVOOR VIA \nKOZHIKODE ', '1', 1, 925, 'Kozhikkode', '2017-07-03 05:30:00', '1993-08-19 05:30:00', NULL, b'1', 'HASSAN KOYA', 'EDAPPOTHIL HOUSE', NULL, 'E', 'PM HANEEFA MUSLIYAR  PUTHANATHANI', '9605124000', 'PERUVAYAL', '000', '9633544825', 'MUHAMMED ANAS', 673661, 'THAVANOOR JUMA MAZJID ', 'PM HANEEFA MUSLIYAR \nPUTHANATHANI', 'FATHER', 'FORM MISSING', 25, 'KOZHIKODE- EDAVANNAPRA - AMBALAMUKK', 'KOZHIKKODE', '7', NULL, b'0'),
(29, 'PARAKKANDAM', 'PEEDIKA THODIYIL HOUSE\nPERUMANNA PO\nKOZHIKKODE\nPANTHEERANKAVU', '1', 1, 926, 'Kozhikkode', '2017-07-03 05:30:00', '1995-02-02 05:30:00', NULL, b'1', 'ABDUL RAHIMAN', 'PEEDIKA THODIYIL', NULL, 'KE', 'HANEEFA MUSLIYAAR PUTHANATHANI', '9605124000', 'PERUMANNA', '80104020003', '9846033506', 'MUHAMMAD ASLAM ', 673019, 'THAVANOOR JUMA MASJID\nOLAMATHIL JUMA MASJID\nPOOKKAATTIRI JUMA MASJID', 'EM HANEEFA MUSLIYAAR PUTHANATHANI', 'FATHER', 'OK', 26, 'RAMANATTUKARA-PANTEERANKAVU-PERUMANNA', 'KOZHIKKODE', '7', NULL, b'0'),
(30, 'KUTTIKKATTOOR', 'VADAKKE MANNUNGAL HOUSE\nPRYA \nKUTTIKKATTOOR\nVELLIPARAMBA -PO', '1', 1, 927, 'Kozhikkode', '2017-07-03 05:30:00', '1995-02-15 05:30:00', NULL, b'1', 'BASHEER E', 'VADAKKEMANNUNGAL HOUSE', NULL, 'E', 'HANEEFA MUSLIYAAR PUTHANATHANI', '9605124000', 'KUTTIOKKATOOR', '00', '9048502025', 'SHAJAHAN', 673008, 'THAVANOOR SUNNI JUMA MASJID', 'HANEEFA MUSLIYAR PUTHANATHANI', 'FATHER', 'OK', 27, 'POOKKIPARAMBA-RAMANATTUKARA-KUTTIKKATTOOR-PERIYA', 'KOZHIKKODE', '7', NULL, b'0'),
(31, 'KUTTIKKATTOOR', 'MANNUNGAL  HOUSE\nKUTTIKKATTOOR   PERYA \nVELLIPARAMBU  P.O', '1', 1, 928, 'KOZHIKKODE', '2017-07-03 05:30:00', '1994-03-18 05:30:00', '', b'1', 'MUHAMMED', 'PUTHAN PURAYIL ', NULL, 'PP', 'HANEEFA MUSLIYAR PUTHANATHANI', '9605124000', 'PERUVAYAL', '000', '9526148922', 'MURSHID ', 673008, 'ILLATHUM PADI JUMA MASJID \nTHAVANOOR', 'HANEEFA MUSLIYAR PUTHANATHANI', 'FATHER', 'FORM  REJECTED ', 28, 'RAMANATTUKARA- KUTTIKKATOOR \nPERIY ', 'KOZHIKKODE', '6', 'KERL', b'0'),
(32, 'VALLIKKAD ', 'THOTTEKKATT HOUSE \nVALLIKKAD \nVAZHIKADAVU PO\nNILAMBUR\nMALAPPURAM', '1', 1, 929, 'Malappuram', '1994-03-07 05:30:00', '1994-03-07 05:30:00', NULL, b'1', 'MOIDEEN HAJI', 'THOTTEKKATT HOUSE', NULL, 'TK', 'FAZLUR RAHMAN SAQUAFI', '9747665911', 'VAZHIKADAVU', '00', '9747186786', 'SWALAHUDHEEN', 679333, 'PUTHARIKKAL SUNNI MASJID\nMADEENA MAKHDOOM AKCODE\n', 'MOOSA SAQUAFI KUTTIKKADAVU\nZUBAIR SAQUAFI VAZHIKADAVU\nFAZLUR RAHMAN SAQUAFI EDAKKARA', 'FATHER', 'OK', 29, 'MANJERI-NILAMBUR-VAZHIKADAVU-VALLIKKAD', 'NILAMBUR', '8', NULL, b'0'),
(33, 'EDAYOOR', 'VEETTIKKA THODI HOUSE\nVALANJERI\nEDAYOOR\nEDAYOOR NORTH -PO\nMALAPPURAM', '1', 1, 930, 'Malappuram', '2017-07-03 05:30:00', '1995-03-05 05:30:00', NULL, b'1', 'ABOOBACKER MOULAVI', 'VEETTIKKA THODI HOUSE', NULL, 'VT', 'MUHAMMED SHAREEF BAQAVI', '9846925681', 'EDAYOOR', '00', '9846378772', 'MUHAMMED ASLAM', 676552, 'MARAYAM KUNNU JUMA MASJID\nKOZHIKKARA JUMA MASJID', 'SAKKER HUSAIN SAQUAFI MANNARKKAD\nMUHAMMED SHAREEF BAQAVI KOZHIKKARA', 'FATHER', 'OK', 30, 'VALANJERI-EDAYOOR', 'THIRUR', '9', NULL, b'0'),
(34, 'PALLIKKUNN', 'MUTTIKKAL HOUSE\nKUMARAMM PUTHOOR  P.O.\nP[ALLIKKUNN    MANNARKKAD', '1', 1, 931, 'Palakkad', '2017-07-03 05:30:00', '1997-04-01 05:30:00', NULL, b'1', 'MUHAMMED', 'MUTTIKKAL', NULL, 'M', 'MUHAMMAD SHEREEF BAQAVI MARAYAM KUNN ', '00', 'KUMARAM PUTHOOR', '00', '9946605763', 'MUHAMMED SHARAFUDHEEN', 678583, '1. MARAYAM KUNN JUMA MAZJID ', 'SHAKEER HUSAIN SAQAFI MANNARKKAD \nMUHAMMAD SHEREEF BAQAVI MARAYAM KUNN ', 'FATHER', 'PLZ NOTE  Contact No(Last Usthad).', 31, 'PERINTHAL MANNA - MANNARKKAD', 'OTTAPPALAM', '8', NULL, b'0'),
(35, 'AVIKKARA', 'SUFYAN MANZIL\nAVIKKARA\nKASARKOD', '1', 1, 932, 'Kasaragod', '2017-07-03 05:30:00', '1990-01-01 05:30:00', NULL, b'1', 'SAIDALI', 'SUFYAN MANZIL', NULL, 'T', 'THWAYYIB THANGAL', '00000', 'KANJANGAD', '00', '9526144001', 'MUHAMMAD SHANIF ', 671315, 'AL MUJAMMAUL ISLAMI', 'THWAYYIB THANAGAL', 'FATHER', 'REMOVED FROM THE REGISTER DUE TO THE SHORTAGE OF ATTENDANCE ', 32, 'KANJANGAD   AVIKKARA', 'KANJANGAD', '7', NULL, b'0'),
(36, 'NAKRAJE', 'DARUL MUQTHAR HOUSE\nNEKRAJ .PO.   KASARKODE  671544', '1', 1, 933, 'Kasaragod', '2017-07-03 05:30:00', '1996-07-25 05:30:00', NULL, b'1', 'ABDURAHMAN ', 'DARUL MUQTHAR HOUSE', NULL, 'N.A.', 'ALI MADANI', '9895428607', 'CHENGALA', '50301050049', '07994924194', 'MUHAMMAED NASIRUDEEN ', 671544, 'KAVVAY JUMA MAZJID', 'ALI MADANI', 'FATHER', 'SSF LETTER ATTACHED WITH FORM  933/33 ', 33, 'KASARKODE  - BADIYANGARA -NEKRAJE', 'KASARGODE', '9', NULL, b'0'),
(37, 'UDYAWAR', 'BAITHUL FALAH     UDYAWAR\nMANJESHWARAM\nKASARKODE KERALA', '1', 1, 934, 'Kasaragod', '2017-07-03 05:30:00', '1993-03-01 05:30:00', NULL, b'1', 'BASHEER ', 'BAITHUL FALAH ', NULL, 'UB', 'ABDUL KADAR MADHANI', '00000', 'MANJESHWAR', '00', '9497739692', 'TOWFEEN ', 671323, '`ISHA -ATHUL ULOOM DARS ', 'ABDUL KADAR MADHANI', 'FATHER', 'FORM REJECTED ', 34, 'MANJESHWAR -MADA- UDYAWAR', 'KASARKOD', '07', NULL, b'0'),
(38, 'VEEMBOOR  MUTTIPADI ', 'CHOLAKKAL HOUSE   P.O. MARIYADU\nVEEMBOOR     MANJERI ', '1', 1, 935, 'Malappuram', '2017-07-03 05:30:00', '1991-07-15 05:30:00', NULL, b'1', 'MOOSA HAJI A ', 'CHOLAKKAL HOUSE', NULL, 'A', 'M.K.MUHAMMED DARIMI ', '9447382342', 'MANJERI', '304808', '      9747386257       9745291145', 'FAHAD ', 676122, 'KANGAPUZHA  JUMA MASJID \nKUTTIPPURAM\nKARATTALUNGAL JUMA MASJID  CHENGANI ', 'HAIDER KAMIL SAQAFI\nM.K. MUHAMMED DARIMI', 'FATHER', 'OK', 35, 'MANJERI - KOZHIKKOD ROAD - VEEMBOOR ', 'ERANAD', '8', NULL, b'0'),
(39, 'CHERUSHOLA', 'KILIYAM PARAMBIL HOUSE     \nRANDATHANI  P.O.   CHERUSHOLA', '1', 1, 936, 'Malappuram', '2017-07-03 05:30:00', '1994-04-01 05:30:00', NULL, b'1', 'SAIDALAVI', 'KILIYAM PARAMBIL  HOUSE', NULL, 'K.P.', 'MUHAMMADALI MUSLIYAR  ', '09846537372', 'C', '319241', '9567722740', 'MUHAMMAED ASLAM ', 656510, 'PERUMBILAV DARS', 'MUHAMMADALI MUSLIYAR        ', 'FATHER', 'FORM REJECTED     PLZ NOTE FORM   ', 36, 'RANDATHANI  - CHERUSHOLA', 'THIRUR', '09', NULL, b'0'),
(40, 'NALISSERY', 'KALAYHIL PARAMBIL HOUSE\nNALISSERY    THRIPRANGODE   P.O.', '1', 1, 937, 'Malappuram', '2017-07-03 05:30:00', '1997-02-10 05:30:00', NULL, b'1', 'MUHAMMED ZAKEER K.P.', 'KALATHIL PARAMBIL HOUSE', NULL, 'K.P', 'SAYYID SHIHABUDHEEN AL BUKHARI', '00000', 'THRIPRANGODE ', '316464', '8891273317', 'SHAKIR ALI IRFAN ', 676108, 'BADHARU DHUJA ISLAMIC CENTRE\nVENGARA', 'SAYYID SHIHABUDHEEN AL BUKHARI\nABDUL HAKEEM SA ADI\nANAS AZHARI\nASHIQ AHSANI', 'FATHER', 'PLZ NOTE Contact No(Last Usthad).\nFORM REJICTED', 37, 'THIRUR -AMBALAPPADI', 'THIRUR', '7', NULL, b'0'),
(41, 'KOTTUPALAKKAD ', 'KODINJI PALLIKKAL HOUSE \nPANTHARANGADI,P.O. ', '1', 1, 938, 'Malappuram', '2017-07-03 05:30:00', '1996-06-15 05:30:00', NULL, b'1', 'SAIDALAVI KOYA THANGAL .KP.', 'KODINJI PALLIKKAL', NULL, 'K.P.', 'AYYID UMAR ATTA KOYA THANGAL', '9746060133', 'THIRURANGADI', '23090 KRLA JAM ULMA ', '07994523168', 'SAYYID IBRAHIM BADHUSHA ', 676306, 'KAKKAD    DARS \nMDS  VENNAKODE\nALUNGAL BEACH  DARS', 'U  ALI MUSLIYAR  \nBASHEER FAIZY   VENNAKKODE \nSAYYID UMAR ATTA KOYA THANGAL ', 'FATHER', 'HE WAS REJECTED\ncircular No 5/17/18\ndated 16/8/17', 38, 'THIRURANGADI  KARIPARAMB', 'THIRURANGADI', '10', 'kerala', b'0'),
(42, 'MOONIYUR     ALINCHUVAD', 'PALAKKATHODI  HOUSE  \nMOONIYUR      ALINCHUVAD', '1', 1, 939, 'Malappuram', '2017-07-03 05:30:00', '1992-05-25 05:30:00', NULL, b'1', 'ATTAKOYA THANGAL', 'PALAKKATHODI  HOUSE', NULL, 'V.P', 'SAYYID MUHAMMED ISHAQ BUKHARI ', '9946429453', 'MOONIYUR', '90501080005', '8593909206', 'SAYYID HASSAN HASHIM ', 676311, 'SIRAJU DHWALIBEEN DARS MOONIYUR ', 'SAYYID MUHAMMED ISHAQ BUKHARI \nASHARAF AHSANI AL KAMILI ', 'FATHER', 'NO SEAL OF SSF OR SYS ', 39, 'CHEMMAD -ALINCHUVD  -POOVATHINGAL ROAD', 'THIRURANGADI', '8', NULL, b'0'),
(43, 'THEKKEPOTTA', 'PALLIKKAL HOUSE\nTHEKKEPPOTTA -PO\nPUTHUKKODE\nPALAKKAD', '1', 1, 940, 'Palakkad', '2017-07-03 05:30:00', '1995-05-16 05:30:00', NULL, b'1', 'IMBICHI KOYA THANGAL', 'PALIIKAL HOUSE', NULL, 'PT', 'HAIDER ALI AHSANI ', '9846566328', 'PUTHUKKOD', '00', '9656606160', 'SAYYID HASHIM KLOYA THANGAL', 678687, 'DESHAMANGALAM JUMA MASJID\nPARAPPOR JUMA MASJID \n AKKARAPPURAM JUMA MASJID \nKUNNUMMAL JUMA MASJID\nKOORYAD MASJID KUTTOOR\nNETTOR SHADULIYYA DERS NNERIPARAMB SNEHAPURAM', 'HAIDER ALI AHSANI KARUVAMBALAM', 'FATHER', 'REMOVED FROM  THE REGISTER ', 40, 'KOTTAKKAL - VALANJERI - PATTAMBI - OTTAPPALAM - THACHANADI- THEKKEPOTTA', 'AALATHUR', '10', NULL, b'0'),
(44, 'MALAR', 'INOLI KALAGINAKARE\nPAVOOR\nDAKSHINA KANNADA\nKARNATAKA', '1', 1, 941, '10', '2017-07-03 05:30:00', '1997-07-18 05:30:00', NULL, b'1', 'SAYYID HAMEED THNGAL ', 'BADARIYA NAGARA HOUSE', NULL, 'B18-', 'IM UMAR AHSANI', '00', 'PAVOOR', '00', '9164469279', 'SAYYID MUHAMMED HAIDER ALI ', 574199, 'SOORINJE DARS\nKODIMMA\nKASARGOD DARS\nKC ROAD DARS\nVALIYA PARABA THRIKKARIPPOOR DARS', 'IM UMAR AHSANI', 'FATHER', 'NOT Name of Last Usthad.', 41, 'MANGLORE THOKKOTKONAJE INOLY', 'MANGLORE', '8', NULL, b'0'),
(45, 'VELIMUKK', 'CHENAATT HOUS\nVELIMUKK SOUTH PO\nMALPPURAM ', '1', 1, 942, 'Malappuram', '2017-07-03 05:30:00', '1994-10-14 05:30:00', '', b'1', 'KUNHIKKOYA THANGAL', 'CHENAATT HOUSE', NULL, 'KP', 'MUHAMMED AHSANI KODOOR', '9847311961', 'MOONNIYOOR', '90503050001', '04942479918\\9605521886', 'SAYYID MUHAMMED FAYIZ THANGAL', 676317, 'IMAM SHAFI COLLEGE\nMULHIRUSSUNNAH DARS OMACHAPPUZHA\n', 'UNUS AHSANI\nNOUFAL SAQUAFI AL AZHARI\nMUHAMMED AHSANI KODOOR\n', 'FATHER', 'OK', 42, 'VELIMUKK - ', 'THIROORANGADI', '9', NULL, b'0'),
(46, 'KODUMUNDA', 'PUTHAN VEETTIL\nKODUMUNDA\nPATTAMBI\nPALAKKAD', '1', 1, 943, 'Palakkad', '2017-07-03 05:30:00', '1995-05-31 05:30:00', NULL, b'1', 'MUSTHAFA THANGAL', 'PUTHAN VEETTIL', NULL, 'PV', 'IBRAHEEM BAQAVI MELMURI', '9947399360', 'MUTHU THALA', '00', '9633530609', 'SAYYID MUHAMMED MUSAMMIL', 679303, 'MA\'DIN COLLEGE OF ISLAMIC DA\'WA\n', 'SAYYID IBRAHEEM KHALEEL AL BUKHARI\nIBRAHEEM BAQAVI MELMURI\nHARIS SAQUAFI\nGAFOOR SAQUAFI \nKHALID SQAUAFI', '`FATHER', 'FORM REJECTED ', 43, 'PATTAMBI -KODUMUNDA', 'PATTAMBI', '7', NULL, b'0'),
(47, 'ANDROTH   LAKSHA DWEEB', 'CHEMMAYATH IDAYAKKAL \nU.T.OF LAKSHADWEEP \nANDROTH  ISLAND\n\n', '1', 1, 944, 'ANDROTH   LAKSHA DWEEB', '2017-07-03 05:30:00', '1989-10-01 05:30:00', NULL, b'1', 'ABDURAHMAN CHERIYA KOYA THANGAL ', 'CHEMMAYATH IDAYAKKAL ', NULL, 'C.E.', 'ABDURAHMAN AHSANI   KIZHSERI', '9847282862', 'ANDROTH', '0000', '9447909582', 'SAYYID MOHAMMED UVAISE', 682551, 'NIBRASS CHEMMAD   ALINCHUVAD ', 'HAMZA MUSLIYAR   MANJAPATTA\nABDURAHMAN AHSANI   KIZHSERI', 'FATHER', 'OK', 44, 'ANDROTH   LAKSHA DWEEB', 'ANDROTH ', '08', 'KAVARATHI', b'0'),
(48, 'RANGATOOR', 'VALIYAKKATHODUVIL (H)\nNADUVATTAM (PO)\nTIRUR-MALAPPURAM(DT) KERALA', '1', 1, 945, 'Malappuram', '2017-07-03 05:30:00', '1995-03-20 05:30:00', NULL, b'1', 'SAIDALAVIKOYA THANGAL', 'VALIYAKKATHODUVIL', NULL, 'VT', 'KODUR MUHAMMED AHSANI', '984731967', 'KUTTIPPURAM', '321056', '9846760644,9846156775', 'SAYYID FASAL BUKHARI', 679592, 'OMACHAPPUZHA', 'KODUR MUHAMMED AHSANI', 'FATHER', 'OK', 45, 'TIRUR-KUTTIPPURAM-RANGATOOR', 'TIRUR', '8', NULL, b'0'),
(49, '12 ADIVARAM', 'THATTAMMAPOYIL(H)\nADIVARAM(PO)\nKOZHIKODE(DT)', '1', 1, 946, 'Wayanad', '2017-07-03 05:30:00', '1991-05-03 05:30:00', NULL, b'1', 'HUSAIN', 'THATHAMMAPOZHIL', NULL, 'TP', 'BASHEER SAHADI WAYANAD', '0000', 'PUTHUPPADI', '000000', '00000', 'HAFIZ YASEEN IRSHAD', 673586, 'MA\'DIN HIFIZ DAHWA', 'SULAIMAN FAIZY KIZHISSERY\nBASHEER SAHADI WAYANAD', 'FATHER', 'REMOVE FROM THE REGISTER', 46, 'KOZHIKKODE-WAYANAD-ADIVARAM', 'MEPPADI', '7', NULL, b'0'),
(50, 'PATHAYAKALL', 'MELEDHIL HOUSE\nPATHAYAKALL .P.O', '1', 1, 947, 'Malappuram', '2017-07-03 05:30:00', '1994-10-24 05:30:00', NULL, b'1', 'MUHAMMED   M', 'MELEDHIL  HOUSE', NULL, 'M', 'SULAIMAN   AHSANI', '8547749837', 'KOTTAKKAL', '0000', '7012434139', 'HAFIL RASHEEQUDEEN ', 676553, 'MA -ADHIN   HIFL  \nDA\'AWA', 'SULAIMAN   AHSANI\nKAREEM  SAQAFI \nZUBAIR AZHARI \n', 'FATHER', 'OK', 47, 'KOTTAKKAL- KOTOOR -KADAMPUZHA  PATHAYAKALL', 'THIRUR', '7', NULL, b'0'),
(51, 'PERUMANNA', 'MELE PULPARAMBIL  HOUSE\nP.O. PERUMANNA \nKOZHIKKODE ', '1', 1, 948, 'Kozhikkode', '2017-07-03 05:30:00', '1994-08-10 05:30:00', NULL, b'1', 'AHMAAD KUTTY SAQAFI', 'MELEPULPARAMBIL   HOUSE', NULL, 'M', 'MUHAMMAD AHSANI  KODOOR ', '9847311967', 'PERUMANNA', '0000', '9656112095 HOUSE', ' MUHAMMED ABOOBAKER ', 673019, 'MULHIRUSUNNA DARS   OMACHAPUZHA ', 'MUHAMMAD AHSANI  KODOOR ', 'FATHER', NULL, 48, 'RAMANATTUKARA   - PANTHEERANGAV  - PERUMANNA', 'KOZHIKKODE', '10', NULL, b'0'),
(52, 'KOTTATHARA', 'VAISHWAV   HOUSE\nPO.KOTTATHARA\nKALPATTA   VIA ', '1', 1, 949, 'Wayanad', '2017-07-03 05:30:00', '1991-04-20 05:30:00', NULL, b'1', 'MOOSA  V', 'VAISHWAN ', NULL, 'V', 'ABDURAHMAN SAQAFI PEROD', '000000', 'KOTTATHARA', '0000', '860609310 ,9947432033', 'HAFIL SAHAD ', 673121, 'SIRAJUL HUDHA   KUTTIYADI', 'ABDURAHMAN SAQAFI PEROD\nMUTHALIB SAQAFI', 'FATHER', 'FORM REJECTED', 49, 'KOZHIKODE -MANANTHAVADI  BUS KAMBALAKKAD ', 'VAITHIRI', '6', NULL, b'0'),
(53, 'CHERUKODE', 'PALAPPUZHA HOUSE\nCHERUKODE\nVALLAPPUZHA', '1', 1, 950, 'Palakkad', '2017-07-03 05:30:00', '1993-08-18 05:30:00', NULL, b'1', 'HUSSAIN P', 'PALAPPUZHA HOUSE ', NULL, 'P', 'HASAN BAQAVI PALLAR', '00', 'VALLAPPUZHA', '00', '9539111549', 'MUHAMMAD SHEMEER ', 679336, 'MUHIYUSSUNNA NELLISSERY\nJAMIA HIKAMIYYA MANJERI\n', 'PONMALA ABDUL KADIR MUSLIYAR\nHASAN BAQAVI PALLAR\nALAVI SAQUAFI KOLATHOOR\nMUHAMMED SAQUAFI ILLI PPILAKKAL', 'FATHER', ' NOT NUMBER OF LAST USTHAD', 50, 'VALLLAPUZHA-MULAYAN KAVU- CHERUKODE', 'PATTAM,BI ', '8', NULL, b'0'),
(54, 'OMANOOR', 'PANANGOTTUMMAL HOUSE\nOMANUR PO\nCHERUVAZHOOR\nMALAPPURAM', '1', 1, 951, 'Malappuram', '2017-07-03 05:30:00', '1999-01-23 05:30:00', NULL, b'1', 'UMMER', 'PANANGOTTUMMAL', NULL, 'AT', 'K NAJMUDHEEN SAQUQFI MOOTHEDAM', '9947604050', 'CHEEKKODE', '00', '9995579839,9846696008', 'MUHAMMED MUHSIN', 673645, 'CM DA\'WA CETRE POOKKOOTOOR\n', 'NAJMUDHEEN SAQUAFI POOKKOOTTOOR\nALAVIKKUTTI SAQUAFI MOOTHEDAM\n', 'FATHER', 'OK', 51, 'KONDOTTY-EDAVANNAPPARA -OMANUR', 'KONDOTTY', '8', NULL, b'0'),
(55, 'AATTEERI', 'NADUTHODI HOUSE \nAATEERI\nKOTTAKKAL PO\n', '1', 1, 952, 'Malappuram', '2017-07-03 05:30:00', '1994-04-05 05:30:00', NULL, b'1', 'MOOSA', 'NADUTHODI HOUSE', NULL, 'N', 'KODOOR MUHAMMED AHSANI', '9847311967', 'OTHUKKUNGAL', '00', '8129851375\'9847899086', 'MUHAMMED SHAFEEQU', 676528, 'OMACHAPPUZHA MULHIRUSUUNNA DAERS\n', 'KODOOR MUHAMMED AHSANI', 'FATHER', 'OK', 52, 'KOTTAKKAL-AATTEERI', 'THIRURANGADI Y', '9', NULL, b'0'),
(56, 'KURUKKOL KUNNU', 'KAREECHALIL HOUSE\nCHERIYAMUNDAM PO MALAPPURAM', '1', 1, 953, 'Malappuram', '2017-07-03 05:30:00', '1995-08-24 05:30:00', NULL, b'1', 'ABDUL AZEEZ MUSLIYAAR', 'KAREECHALIL HOUSE', NULL, 'K', 'K.RASHEED BAQAVI KUTTIPPURAM', '9656344577', 'CHERIYAMUNDAM', '00', '9846333600\'9605291024', 'MUHAMMED YASIR', 676106, 'THENNALA WEST BAZAR PALLI DARS', 'K.RASHEED BAQAVI KUTTIPPURAM', 'FATHER', 'OK', 53, 'VAILATHOOR -KURUKKOL KUNNU', 'THIRUR', '8', NULL, b'0'),
(57, 'BADAKKABAIL', 'KUTTIKALA HOUSE \nKARIYANKALA VILLEGE\nPOLALI PO', '1', 1, 954, '10', '2017-07-03 05:30:00', '1992-10-10 05:30:00', NULL, b'1', 'ISMAEEL', 'KUTTIKKALA HOUSE', NULL, 'B', 'HASAN BAQAVI', '9846827009', 'KARIYANKALA', '55195', '08748021197', 'MUHAMMED  IRFAN ', 574243, 'JAMI\'A HIKAMIYYA MANJERI', 'PONMALA ABDUL KHADIR MUSLIYAR\nHASAN BAQAVI PALLAR\nALAVI SAQUAFI KOLATHOOR', 'FATHER', 'OK', 54, 'MANGLORE-BADAKKABAIL-KUTTIKKALA', 'BANTWAL', '8', NULL, b'0'),
(58, 'PARAPPURAM', 'PUZHAKKAL HOUSE\nATTOR PO \nPARAPPURAM', '1', 1, 955, 'Thrissur', '2017-07-03 05:30:00', '1990-02-04 05:30:00', NULL, b'1', ' UMMER', 'PUZHAKKAL', NULL, 'PU', 'PV MOIDEEN MSLIYAR THAZHAPRA', '9526741032', 'PANGAL', '285392', '9048786543', 'MUHAMMED SHAMEER', 680583, 'DARUL IRSHADUL ISLAMIYYA KILLIMANGALAM', 'MT MANU MUSLIYAAR MOONOOR\nPV MOIDEEN MSLIYAR THAZHAPRA\n', 'FATHER', 'OK', 55, 'SHORNUR-ATTUR GATE ROAD-PARAPPURAM', 'THALAPPILLI', '8', NULL, b'0'),
(59, 'AAKKAPARAMB', 'AAKKA PARAMB HOUSE\nCHENGATOOR  P.O.    AKKAPARAMB ', '1', 1, 956, 'Malappuram', '2017-07-03 05:30:00', '1995-05-23 05:30:00', NULL, b'1', 'YAHU ', 'KANATH ', NULL, 'K.A.', 'MUHIYADHEEN BAQAVI  PONMALA ', '9446766414', 'PONMALA', '160301080010', '974570011 .9562390112', 'MUHAMMED SHAHID ', 676503, 'AJMEER  GATE CAMPUS KARAD  ', 'MUHIYADHEEN BAQAVI  PONMALA \n...\n...\n...', 'FATHER', 'OK', 56, 'KOTTAKKAL - AAKKAPARAMB', 'THIRUR', '9', NULL, b'0'),
(60, 'THAZHAL MOUVVAL', 'THAZHAL MOUVVAL  HOUSE \nMOUVVAL   P.O.     BEAKKAL FORTT  VIA', '1', 1, 957, 'Kasaragod', '2017-07-03 05:30:00', '1995-06-28 05:30:00', NULL, b'1', 'NASEER   THEKKEKKARA', 'THAZHAL MOUVVAL   HOUSE', NULL, 'K', 'MUHAMMED  BAQAVI   IRUMBUZHI', '9446730954', 'PALLIKKARA', '50501060004', '9446514214', 'MUHAMMED ALTHAF ', 671316, 'IHYAUL ULOOM DARS  POOZHIKUTTH', 'MUHAMMED  BAQAVI   IRUMBUZHI\nOP  ABDULLA   BAQAVI\nSHAMSUDHEEN  AHSANI ', 'ANGEL ', 'OK', 57, 'KANJANGAD-  PALLIKKARA', 'HOSDURG', '9', NULL, b'0'),
(61, 'PRABHA PURAM', 'VALITHODI HOUSE\nPRABHA PURAM\nMANNENGODE P[O\n', '1', 1, 958, 'Palakkad', '2017-07-03 05:30:00', '1992-06-16 05:30:00', NULL, b'1', 'MUHAMMRDALI', 'VALIYATHODI', NULL, 'VT', 'PV MOIDEEN KUTTY MSLIYYAR', '9526741032', 'KOPPAM', '00', '9946003328', 'MUHAMMED SHAFEEQU ', 679307, 'DARUL IRSHADIL ISLAMMIYYA KILLIMANGALAM', 'MT MANU MUSLIYAR MOLUR\nPV MOIDEEN KUTTY MUSLIYAAR THAZHAPRA\nABDULLA ANVARI ATHIKKAPPARAMBU', 'FATHER', NULL, 58, 'KOPPAM - NATYAMANGALAM ROAD -PRABHAPURAM', 'OTTAPPALAM', '8', NULL, b'0'),
(62, 'CHEMRASSERY', 'POOVATHI HOUSE\nCHEMBRASSERY EAST PO\n', '1', 1, 959, 'Malappuram', '2017-07-03 05:30:00', '1994-01-21 05:30:00', NULL, b'1', 'ISMAEEL MUSLIYAAR', 'POOVATHI HOUSE', NULL, 'P', 'SIBHATHULLAH SAQUAFI', '00', 'PANDIKKAD', '360226', '9048026928', 'MUHAMMED NAVAS SHREEF ', 679327, 'AL IHSAN VENGARA\n', 'SIBHATHULLAH SAQUAFI\nASHRAF SAQUAFI\nABDUL RAHEEM AHSANI', 'FATHER', 'NOT GIVEN Contact No(Last Usthad). AND SYS SEAL\n', 59, 'MANJERY-PANDIKKAD-CHEMBRASSERY EAST', 'ERANAD', '7', NULL, b'0'),
(63, 'CHERUKODE', 'KALLIYIL HOUSE\nCHERUKODE PO\nVALLAPUZHA', '1', 1, 960, 'Palakkad', '2017-07-03 05:30:00', '1994-01-17 05:30:00', NULL, b'1', 'abdul kadir', 'KALLIYIL', NULL, 'K', 'HASAN BAQAVI PALLAR', '9846827009', 'VALLAPPUZHA', '00', '9048179928', 'HAFIZ MUHAMMED RIYAS ', 679336, 'MUHIYISSUNNSH DARS NELLISSERY\nJAMI\'A HIKAMIYYA MANJERI', 'PONMALA ABDUL QADIR MUSLIYAR\nHASAN BAQAVI PALLAR\nALAVI SAQUAFI KOLATHOOR', 'FATHER', '', 60, 'VALLAPUZHA -MULANKAVU-CHERUKODE STOP', 'PATTAMBI', '8', NULL, b'0'),
(64, 'MANAKKAL PEEDIKA', 'KOTTE PARAMBIL HOUSE\nNEDUNGOTTUR PO', '1', 1, 961, 'Palakkad', '2017-07-03 05:30:00', '1995-02-22 05:30:00', NULL, b'1', 'SAITHALAVI', 'KOTTE PARAMBIL ', NULL, 'KP', 'ABDU RAZAQ MISBAHI', '9846417445', ' THIRU VEGAPPURA', '110806010003', '9846558180', 'MUHAMMED RAFEEQ', 679308, 'MAMBAUL HUDHA KECHERI\nPADANTHARA MARKAZ\nMAMBAUL ULAMA DARS\n', 'DEVARSSOLA ABDUL SALAAM MUSLIYAAR\nHAMEED SA\'DI MANNARKKAD\nABDU RAZAQU MISBAHI PONMUNDAM', 'FATHER', 'ok', 61, 'KOTTAKKAL-VALANJERY-NEDUNGOTTUR', 'PATTAMBI', '9', NULL, b'0'),
(65, 'IRINGALLUR ', 'POTHANJERI HOUSE\nIRINGALLUR PO', '1', 1, 962, 'Malappuram', '2017-07-03 05:30:00', '1994-02-10 05:30:00', NULL, b'1', 'ABDURAHMAN MUSLIYAR', 'POTHANJERI HOUSE', NULL, 'P', 'SIBHATHULLAH SAQUAFI', '9744999313', 'PARAPPUR', '00', '9544886730', 'MUHAMMED ALI ', 676304, 'AL IHSAN VENGARA', 'SIBHATHULLAH SAQUAFI\nASHRAF SAQUAFI\nABDUL RAHEEM AHSANI', 'FATHER', 'OK', 62, 'KOTTAKKAL -IRINGALLOOR -PALANI', 'THIRURANGADI', '7', NULL, b'0'),
(66, 'PERUMANNA', 'KATTIL HOUSE\nPERUMANNA \nKLARI PO', '1', 1, 963, 'Malappuram', '2017-07-03 05:30:00', '1992-08-27 05:30:00', NULL, b'1', 'KUNHI MUHAMMED MUSLIYAR', 'KATTIL', NULL, 'K', 'HASSAN BAQAVI PALLAR', '9846827009', 'KLARI', '00', '7560949411', 'MUHAMMED SWADIQ', 676501, 'JAMI\'A HIKAMIYYA MANJERI', 'PONMALA ABDUL QADIR MUSLIYAAR\nHASSAN BAQAVI PALLAR\nALAVI SAQUAFI KOLATHUR\n', 'FATHER', 'OK', 63, 'KARINGAPPARA -CHETTIYAN KINAR', 'THIRUR', '8', NULL, b'0'),
(67, 'CHILAVOOR KONAM', '\nCHARUVILA THEKKATHIL\nCHILAVOOR KONAM\nNEDUMBANA PO', '1', 1, 964, 'Kollam', '2017-07-03 05:30:00', '1993-06-14 05:30:00', NULL, b'1', 'BADARUDHEEN', 'CHARUVILA THEKKATHIL', NULL, 'B', 'CHAPPANANGADI ISMEEL MUSLIYAR', '9447628414', 'NEDUMBANA', '00', '9947515048', 'MUHAMMED SHAMEER', 691576, 'AAAAAA', 'ALI HASHIM AHSANI\nCHAPPANAGADI ISMAEEL MUSLIYAR\n', 'FATHER', ' NOT SEAL\n', 64, 'KOLLAM -NEDUMBANA KULAPPADAM', 'KOLLAM', '8', NULL, b'0'),
(68, 'THENNALA WEST BAZAR', 'THONDAALI HOUSE\nTHENNALA WEST BAZAR\nTHENNALA PO', '1', 1, 965, 'Malappuram', '2017-07-03 05:30:00', '1992-12-16 05:30:00', NULL, b'1', 'ABU HAJI', 'THONDAALI HOUSE', NULL, 'T', 'MUHAMMED KUTTY BAQAVI', '9847648643', 'THENNALA', '301564', '9048370726', 'MUHAMMED THAHA', 676508, 'DTG KUNDOOR\nMDS VENNAKKODE\nNADUVILE PALLI TIRURANGADI', 'BASHEER FDAIZI VENNAKKODE\nUSMAN SAQUAFI WAYANAD\nMUHAMMED KUTTY BAQAVI', 'FATHER', 'OK', 65, 'WEST BAZAR', 'TIRURANGADI', '10', NULL, b'0'),
(69, 'VELICHIKKALA', 'ARSHAD MANZIL\nVELICHIKKALA(PO)\nKOLLAM', '1', 1, 966, 'Kollam', '2017-07-03 05:30:00', '1993-08-31 05:30:00', NULL, b'1', 'MUHAMMED RAFEEQUE', 'ARSHAD MANZIL', NULL, 'A', 'ABDULRAHEEM NIZAMI AL FALILY', '9645216785', 'NEDUMBANA', '158000038', '9947935171', 'MUHAQMMED RIYAS', 691576, 'KARUNAGAPPALLI\nKOTTKAAD DARS', 'ABDULRAHEEM NIZAMI AL FALILY', 'FATHER', 'FORM REGECTED', 66, 'KOLLAM-KANNANALLOR-VELICHIKKALA', 'KOLLAM', '6', NULL, b'0'),
(70, 'MAMBURAM', 'CHEMMANGAD    HOUSE\nMAMBURAM   P.O.\nTHIROORANGADI', '1', 1, 967, 'Malappuram', '2017-07-03 05:30:00', '1993-02-08 05:30:00', NULL, b'1', 'USMAN  SAQAFI ', 'PARIPARAMBAN', NULL, 'P.V.', 'ABDUL MAJEED  AHSANI', '8589921313', 'A-R NAGAR', 'SYS   364620', '9974156666', 'MUHAMMED SWABEEH ', 676306, 'ZAINIYYA    DARS      KALIYATTU MUKK', 'SAYYID SHIHABUDEEN HAIDROSI  AHSANI\nHAFIL ABDUL MAJEED  AHSANI\nABDUSAMAD AHSANI   OTHUKKUNGAL', 'FATHER', 'OK ', 67, 'KOLAPPURAM  -VK-PADI   -MAMBURAM', 'THIROORANGADI', '08', NULL, b'0'),
(71, 'NOONJERI', 'DAR  AL  NOOR \nPO.CHELERI\nVIA -  KANNADI PARAMB', '1', 1, 968, 'Kannur', '2017-07-03 05:30:00', '1994-03-10 05:30:00', NULL, b'1', 'YOOSUF .K.', 'DAR  AL  NOOR', NULL, 'C.M.K.', 'BASHEER FAIZI  VENNAKKODE ', '000000', 'KOLACHERI', 'SSF  41001040006', '0460-2241725', 'MUHAMMED THAYYIB', 670604, 'MDS    VENNAKODE', 'BASHEER FAIZI  VENNAKKODE \nJAMALUDHEEN  AHSANI\nMU EENUDEEN  AHSANI', 'FATHER', 'PLZ  ENTER MOBIL NUMBER ', 68, 'KANUR  - THALIPARAMB  -CHELERI MUKK', 'THALIPARAMB', '7', NULL, b'0'),
(72, 'ERENJIKKODE  ', 'PANDARATHUM  KUNDIL\n  PULPATTA  P.O.\n', '1', 1, 969, 'Malappuram', '2017-07-03 05:30:00', '1997-05-30 05:30:00', NULL, b'1', 'IBRAHIM', 'PANDARATHUM  KUNDIL ', NULL, 'P.C.', 'NAJMUDEEN SAQAFI   POKKOTOOR', '9947604050', 'PULPATTA', '160408040038', '9895482623', 'MUHAMMED IRSHAD  ', 676123, 'CM DA\'WA CENTER ', 'NAJMUDEEN SAQAFI   POKKOTOOR\nALAVI KUTTY  SAQAFI  EDAKKARA \n', 'FATHER', 'REMOVED FROM THE REGISTER ', 69, 'MANJERI   KIZHSERI      THOTTAKKAD', 'ERENAD', '08', NULL, b'0'),
(73, 'KUTTICHIRA', 'VILAYIL   VEED    \nKALLUTHAZHAM   .P.O\nKILIKOLLOR', '1', 1, 970, 'Kollam', '2017-07-03 05:30:00', '1995-10-09 05:30:00', NULL, b'1', 'ASHARAF', 'VILAYIL  VEED', NULL, 'A', 'MUHAMMED SHAFEEQ SAQAFI', '9605329060', 'KOLLAM', '000000', '7025136145', 'MUHAMMAD ANSHAD ', 691004, 'KADARIYYA  MAJLIS\nRIFAE JUMA   MSJID ', 'SUBAIR   AZHARI \nMUHAMMED SHAFEEQ SAQAFI', 'FATHER', '', 70, 'KOLLAM   -KARIKKODE  - KUTTICHIRA', 'KOLLAM', '7', NULL, b'0'),
(74, 'KALPENI ', 'POOKILAKAM  HOUSE\nKALPENI , U.T.OF LAKSHADWEEP \n682557  ', '1', 1, 971, 'KALPENI ', '2017-07-03 05:30:00', '1996-02-04 05:30:00', NULL, b'1', 'KOYA', 'POOKILAKAM  HOUSE ', NULL, 'P', 'MUSTHAFA  SAQAFI  CHALIYAM', '8606727903', 'KALPENI ', '0000', '9496810420', 'MUHAMMED KASIM ', 682557, 'PERINGADI MAMMI MUKK JUMA MSJID\nMOONIYOOR  DARS', 'ABDU RAHMAN BAQAVI  VANDOOR \nABDU RAHMAN BAQAVI  C.T. AKODE \nMUSTHAFA   SAQAFI   CHALIYAM', 'FATHER', NULL, 71, 'KALPENI  DWEEP', 'KALPENI ', '08', 'KAVARATHI', b'0'),
(75, 'MEPPADI', 'PARAMBATH  HOUSE\nKOTTANAD PO    MEPPADI  \nWAYANAD ', '1', 1, 972, 'Wayanad', '2017-07-03 05:30:00', '1993-11-27 05:30:00', NULL, b'1', 'MUHAMMED  P', 'PARAMBATH ', NULL, 'P', 'C.T. ABDU RAHMAN SAQAFI ', '9745586960', 'MEPPADI', '`150401010012', '0000', 'MUHAMMED FAHIS ', 673577, 'DARUL FALAH ISLAMIYYA \nUP USD MEMMORIYL DARS   VENGARA ', 'M,ABDU RAHMAN MUSLIYAR   VENNIYODE \nUMAR  SAQAFI  CHETHALAYAM\nC.T. ABDU RAHMAN SAQAFI ', 'FATHER', 'REMOVED FROM THE REGISTER DUE TO THE SHORTAGE OF ATTANDANCE ', 72, 'KALPATTA-CHOONDA-MEPPADI  BUS KOTTANAD ', 'VAITHIRI', '08', NULL, b'0'),
(76, 'EKKAPARAMB', 'KAZHUNGUM CHOLA   HOUSE\nKUZHIMANNA .PO\nKUNDOTTY    MALAPPURAM DT\n.', '1', 1, 973, 'Malappuram', '2017-07-03 05:30:00', '1993-10-19 05:30:00', NULL, b'1', 'HAIDER MUSLIYAR ', 'POONTHALA', NULL, 'P', 'ABDUL RAOOF AL FAZILY ', '9946010271', 'KUZHIMANNA', '160203060019', '9895941385 , 9747299107', 'MUHAMMED ALI ', 673641, 'CM MARKAZ THENNALA\nNANNAMBRA  DARS', 'ABDUL RAOOF AL FAZILY ', 'FATHER', 'OK', 73, 'KUNDOTTY -KIZHISERI  BUS -EKKA PARAMB', 'ERANAD', '8', NULL, b'0'),
(77, 'THARUVANA', 'KANIYAN KANDI HOUSE\nTHARUVANA PO\nVAYANAD', '1', 1, 974, 'Wayanad', '2017-07-03 05:30:00', '1994-05-20 05:30:00', NULL, b'1', 'IBRAHIM MUSLIYAR', 'KANIYAN KANDI HOUSE', NULL, 'KK', 'CT ABOOBACKER MUSLIYAR', '9447321294', 'VELLAMUNDA', '00', '9947123951', 'MUHAMMED BASHEER', 670645, 'PERINGADI JUMA MASJID\n', 'CT ABOOBACKER MUSLIYAR', 'FATHER', 'SYS SEAL IS NOT FOUND', 74, 'THARUVANA', 'MANANTHAVADY', '8', NULL, b'0'),
(78, 'CHETTIPPADI', 'KARACHINTE PURAKKAL HOUSE\nBEACH ROAD \nCHETTIPPADI PO\nPARAPPANANGADI', '1', 1, 975, 'Malappuram', '2017-07-03 05:30:00', '1994-06-24 05:30:00', NULL, b'1', 'HUSAIN KP', 'KARACHINTE PURAKKAL', NULL, 'KP', 'NOUSHAD SAQAFI', '9846022359', 'PARAPPANANGADI', '365000015', '9946584862', 'MUHAMMED FAIROOZ ', 676319, 'MUHYUSSUNNA KLARY MOOCHIKKAL\nMUHYUSSUNNA KLARI PUTHUR', 'NOORUDHEEN MISBAHI\nNOUSHAD SAQAFI', 'FATHER', 'OK', 75, 'PARAPPANANGADI-CHETTIPPADY', 'TIRURANGADI', '8', NULL, b'0'),
(79, 'KUMMINIPPARAMB', 'KOORKKAM PARAMB HOUSE \nKUMMINIPPARAMB PO\nKONDOTTY', '1', 1, 976, 'Malappuram', '2017-07-03 05:30:00', '1992-12-08 05:30:00', NULL, b'1', 'MOOSA MUSLIYAR', 'KOORKKAM PARAMB', NULL, 'K', 'SYD ABDULLA HABEEBURAHMAN AL BUKHARI', '9961188313', 'PALLIKKAL', '160201090005', '8714399669', 'MUHAMMED HASSAN', 673638, 'SINCRERE DA WA COLLEGE\n', 'SYD ABDULLA HABEEBURAHMAN AL BUKHARI,ABDUL SALAM SAQAFI,ASHRAF AL AHSANI\n', 'FATHER', 'OK', 76, 'KAKKAD-KONDOTTY-KUMMINIPPARAMB', 'KONDOTTY', '8', NULL, b'0'),
(80, 'PALANI IRINGALLUR', 'AMBALAVAN OTHUKKUNGAL HOUSE\nIRINGALLUR PO\nVENGARA', '1', 1, 977, 'Malappuram', '2017-07-03 05:30:00', '1994-12-14 05:30:00', NULL, b'1', 'IBRAHIM', 'AMBALAVAN OTHUKKUNGAL', NULL, 'AO', 'SIBGATRHULLAH SAQAFI', '9744999313', 'PARAPPUR', '9080020016', '0494 2452135', 'MUHAMMED RASHID', 676304, 'AL IHSAN VENGARA', 'SIBGATHULLA SAQAFI MANNARKKAD\nASHRAF SAQAFI PALLIPPURAM', 'FATHER', 'OK', 77, 'KOTTAKKAL-VENGARA-PALANI', 'TIRURANGADI', '7', NULL, b'0'),
(81, 'KAREKKAD', 'TATTARU PARAMBIL HOUSE\nVALANJERI \nVADAKKUMPURAM PO\nKAREKKAD', '1', 1, 978, 'Malappuram', '2017-07-03 05:30:00', '1993-05-13 05:30:00', NULL, b'1', 'IBRAHEEM', 'TATTARU PARAMBIL', NULL, 'TK', 'ZUBAIR SA ADI AL ARSHADI', '9946363585', 'EDAYOOR', '281959', '9562533585,7559908313', 'MUHAMMED RIYAS', 676553, 'JALALIYA DARS VADAKKEKKAD\nNAMANAKKAD', 'ZUBAIR SA ADI AL ARSHADI', 'FATHER', 'OK\n', 78, 'VALANCHERY-KAREKKAD', 'TIRUR', '10', NULL, b'0'),
(82, 'KUNDIKKARA', 'MANDENDA KULIKKARA HOUSE\nPO BOTTOLY\nVIRAJPET', '1', 1, 979, '10', '2017-07-03 05:30:00', '1996-09-23 05:30:00', NULL, b'1', 'ABDULLAH AL QASIMI MA', 'MANDENDA KULIKKARA', NULL, 'MA', 'KUNJAMMAD AHSANI', 'NIL', 'BOTTOLY', 'KAKG0026963', '9633625971', 'MUHAMMED JAMALULLAH', 82720, 'POROPPAD DARS', 'KINJAMMAD AHSANI PUNJAVI\nABDUL QADIR MADANI KADANGOD', 'FATHER', 'NO SYS SEAL\nLAST TEACHER\'S CONTACT NO IS NOT GIVEN', 79, 'VIRAJPET-RAMANAGAR', 'VIRAJPET', '9', NULL, b'0'),
(83, 'EAST PANG AYYATH PARAMB', 'PARENGAL HOUSE\nPANG PO\nAYYATH PARAMB\nKOLATHUR', '1', 1, 980, 'Malappuram', '2017-07-03 05:30:00', '1996-08-28 05:30:00', NULL, b'1', 'ABOOBACKER MUSLIYAR', 'PARENGAL', NULL, 'P', 'KUNJI MUHAMMED AHSANI', '9447444238', 'KURUVA', '160307020012', '9745301241', 'MUHAMMED SHAKIR', 679338, 'MARKAZ MASALIH CHAPPANANGADI\n', 'SAYYID SALAHUDHEEN KOORIYAD\nKUNJI MUHAMMED AHSANI \nHASSAN AHSANI TIRURANGADI', 'FATHER', 'OK', 80, 'KOLATHUR-EAST PANG-AYYATH PARAMB', 'PERINTHALMANNA', '8', NULL, b'0'),
(84, 'PALLATHUR', 'DARUL IZZA PALLATHUR\nPO KARNOOR\n', '1', 1, 981, '10', '2017-07-03 05:30:00', '1995-03-22 05:30:00', NULL, b'1', 'ABDUL RAHMAN ', 'DARUL IZZA', NULL, 'CH', 'ABDULLAH AHSANI MANNARKAD', '8281013304', 'NETTANIGE MUDNOOR', '111263', '9946916123,8281018806', 'MUHAMMED ZUBAIR', 574313, 'MUHIMMATH DA WA COLLEGE\nOK USTHAD MEMORIAL DARS', 'IBRAHIM AHSANI\nABDULLAH AHSANI MANNARKAD', 'FATHER', 'OK', 81, 'KASRAGOD-KUTTIYADI-PALLATHUR', 'PUTHUR', '9', NULL, b'0'),
(85, 'AMMEMAR', 'AMMEMAR HOUSE \nPUDU VILLAGE\nBANTWALA', '1', 1, 982, '10', '2017-07-03 05:30:00', '1997-10-02 05:30:00', NULL, b'1', 'SHEKABBA', 'AMMEMAR HOUSE', NULL, 'NIL', 'TM UMAR AHSANI', 'NIL', 'PUDU', 'KADK09338', '9611808788', 'MUHAMMED ASHRAF', 574143, 'SOORINJE DARS KODIYAMMA\nKC ROAD DARS', 'TM UMAR AHSANI', 'FATHER', 'CONTACT NO OF LAST TEACHER IS NOT GIVEN', 82, 'MANGLORE-FARANGIPETE', 'BANTWALA', '8', NULL, b'0'),
(86, 'THANAKKOTTUR', 'KUNIYIL HOUSE\nTHANAKKOTTUR PO\nPARAKKADAV\nNADAPURAM', '1', 1, 983, 'Kozhikkode', '2017-07-03 05:30:00', '1993-03-05 05:30:00', NULL, b'1', 'AHMAD', 'KUNIYIL', NULL, 'K', 'NIL', 'NIL', 'CHEKKIYAD', 'NIL', '9745530513,9846873505', 'ABDULLAH', 673509, 'SIRAJUL HUDA KUTTYADI', 'PEROD ABDUL RAHMAN SAQAFI\nRASHID BUKHARI\nUMAR SAQAFI\n', 'FATHER', 'SSF SECTOR LETTER IS ATTATCHED\nLAST TEACHER AND HIS NO IS NOT GIVEN\nMEMBERSHIP NO IS NOT GIVEN', 83, 'NADAPURAM-PARAKKADAV-THANAKKOTTUR', 'VADAKARA', '7', NULL, b'0'),
(87, 'PONNANI', 'KOMBAN THARAYIL HOUSE PONNANI\nPONNANI PO', '1', 1, 984, 'Malappuram', '2017-07-03 05:30:00', '1995-02-11 05:30:00', NULL, b'1', 'AYYOOB', 'KOMBAN THARAYIL', NULL, 'KT', 'SAIDALAVI NIZAMI', '9745660638', 'PONNANI', 'NIL', '9745567351', 'ALI.K.T.', 679586, 'HIKAMIYYA', 'PONMALA USTHAD\nSAIDALAVI NIZAMI\nRAFI FAZILI', 'FATHER', 'MEMBERSHIP AND SYS SEAL IS NOT GIVEN', 84, 'PONNANI-KHILAR PALLI', 'PONNANI', '8', 'KERALA', b'0'),
(88, 'KAKKUR', 'KULIYERIKKAL MEETHAL\nKAKKUR PO\nNANMANDA', '1', 1, 985, 'Kozhikkode', '2017-07-03 05:30:00', '1994-05-21 05:30:00', NULL, b'1', 'RASIYA K', 'KULIYERIKKAL MEETHAL', NULL, 'KM', 'SAYYID MUHAMMED SALIM KAMIL SAQAFI BUKHARI', '9745650061', 'KAKKUR', 'NIL', '9605974020', 'ANSIR', 673613, 'ERUMAD DARS', 'SAYYID MUHAMMED SALIM KAMIL SAQAFI BUKJHARI', 'MOTHER', 'MEMBERSHIP NO', 85, 'KOZHIKKODE-KAKKUR', 'NIL', '8', NULL, b'0'),
(89, 'PANOOR', 'PUDUVANA LAKSHAM VEEDU \nPANOOR\nPALLAN PO', '1', 1, 986, 'Alappuzha', '2017-07-03 05:30:00', '1992-04-20 05:30:00', NULL, b'1', 'ASHRAF', 'PUTHUVANA LAHSAM VEEDU', NULL, 'A', 'SHAMEER AHSANI AL KAMILI', '9961994313-8075005013', 'THRIKKUNNAPPUZHA', 'NIL', '9633531453', 'ANSARI', 690515, 'PENGATSHERY JUAMA MASJID\nVENDAD JUMA MASJID\nPULLELANGADI JUMA MASJID', 'ABDUL RAHEEM NIZAMI\nABDUL RAHMAN AL QASIMI\nSHAMEER AHSANI AL KAMILI', 'FATHER', 'CANCELLED FORM', 86, 'HARIPAD I-THOTTAPPALI-PANOOR PUTHAN PURAKKAL JN', 'KARTHIKAPPALLI', '10', NULL, b'0'),
(90, 'PAKKADA PURAYA', 'CHENAKKAL HOUSE KUTTUR\nMADAM CHINA\nKOORIYAD PO', '1', 1, 987, 'Malappuram', '2017-07-03 05:30:00', '1993-10-14 05:30:00', NULL, b'1', 'ABDUL MAJEED C', 'CHENAKKAL', NULL, 'C', 'IBRAHIM BAQAVI MELMURI', '9947399360', 'VENGARA', '90803080006', '9633617139', 'AMEER', 676306, 'MA DIN COLLEGE OF ISLAMIC DA WA', 'SAYYID IBRAHEEMUL KHALEEL BUKHARI\nIBRAHIM BAQAVI MELMURI\nHARIS SAQAFI MUKKAM', 'FATHER', 'SYS SEAL IS NOT REPRESENTED', 87, 'VENGARA-MADAMCHINA', 'TIRURANGADI', '7', NULL, b'0'),
(91, 'PALLIKKUNNU,KOMBAN CHOLA', 'ANAKKACHERI HOUSE\nPEROOR PO\nVANIYAMBALAM PALLIKKUNNU', '1', 1, 988, 'Malappuram', '2017-07-03 05:30:00', '1994-08-02 05:30:00', NULL, b'1', 'ALAVI', 'ANAKKACHERI', NULL, 'AK', 'MUHAMMED SHAHID AHSANI', '9747382458', 'CHEROOR', '1607051120003', '9747090751', 'AL AMEEN', 679339, 'MULHIRUSSUNNA PERINTHALMANNA\nMULHIRUSSUNNA VALIYA PARAMB', 'LUQMAN HAKEEM SAQAFI\nUMAR AHSANI\nSHAMHEED AHSANI', 'FATHER', 'OK', 88, 'MANJERI-VANDOOR-VANIYAMBALAM-PALLIKKUNNNU-KOMBAN CHOLA', 'NILAMBUR', '10', NULL, b'0'),
(92, 'VALAKKULAM AARUMADA', 'NARIMADAKKAL HOUSE\nVALAKKULAM PO\nVENNIYUR', '1', 1, 989, 'Malappuram', '2017-07-03 05:30:00', '1993-06-23 05:30:00', NULL, b'1', 'MUHAMMED BAVA MUSLIYAR', 'NARIMADAKKAL', NULL, 'N', 'PALLAR HASSAN BAQAVI', '984682009', 'THENNALA', '90306020006', '9605645038', 'AHAMAD SUFIYAN', 676508, 'JAMIA  HIKAMIYYA MANJERI', 'PONMALA ABDUL KHADIR MUSLIYAR\nHASSAN BAHKAVI PALLAR\nALAVI SAQFI KOLATHUR', 'FATHER', 'OK', 89, 'VENNIYUR AARUMADA', 'TIRURANGADI', '8', NULL, b'0'),
(93, 'EAST PALLOOR', 'CHUNDATHARANMAL HOUSE\nEAST PALLOOR\nPO CHOKLI', '1', 1, 990, 'Kannur', '2017-07-03 05:30:00', '1993-02-04 05:30:00', NULL, b'1', 'VP USMAN', 'CHUNDATHARANMAL HOUSE', NULL, 'C.T.', 'PALLAR HASAN BAQAVI', '9846827009', 'CHOKLI', '40901010007', '9746511032', 'AHAMMAD SWADIQ ', 670672, 'JAMIA HIKAMIYYA MANJERI\nMDS DERS \n', 'PONMALA ABDUL QADIR MUSLIYA\nHASAN BAQAVI PALLAR\nISMAEEL MISBAHI CHERUMOTH', 'FATHER', NULL, 90, 'MAHI -CHOKLI - EAST PALLOR', 'MAHI', '8', NULL, b'0'),
(94, 'AYYANKERI', 'BADRIYA HOUSE\nAYYANKERI PO\nBAGA MANDALAM', '1', 1, 991, '10', '2017-07-03 05:30:00', '1993-08-07 05:30:00', NULL, b'1', 'ABDUL SATHAR', 'BADRIYA HOUSE', NULL, 'MS', 'MUHAMMED SAQAFI', '9947307641', 'AYYANKERI', '06010', '8281754925', 'AHMAD KABEER ', 571247, 'JAMIA HIKAMIYYA', 'PONMALA ABDUL KHADIR MUSLIYAR\nHASSAN SAQAFI PALLAR\nALAVI SAQAFI KOLATHUR', 'FATHER', 'SSF LETTER IS ATTATCHED ', 91, 'MADIKKERI-NAPOK-AYYANKERI', 'MADIKKERI', '7', NULL, b'0'),
(95, 'AYYAYA', 'PATTATHARA HOUSE\nAYYAYA PO\nCHURANGARA', '1', 1, 992, 'Malappuram', '2017-07-03 05:30:00', '1993-04-09 05:30:00', NULL, b'1', 'SAIDALAVI MUSLIYAR', 'PATTATHAR', NULL, 'PT', 'MA RAOOF FAZILI', '9946010271', 'OZHOOR', 'NIL', '8590011103', 'ABOOBACKER SINAN ', 676307, 'NANNAMBRA OLD JUMA MASJID DARS', 'MA RAOOF FAZILI', 'FATHER', 'ok', 92, 'THEYYALA-CHURANGARA', 'TIRUR', '7', NULL, b'0'),
(96, 'PAITHINIPPARAMBA', 'MANNEKKODAN HOUSE\nPAITHINIPPARAMBA\nMELMURI PO', '1', 1, 993, 'Malappuram', '2017-07-03 05:30:00', '1993-09-21 05:30:00', NULL, b'1', 'KUNJI MUHAMMED', 'MANNEKKODAN HOUSE', NULL, 'MK', 'IBRAHIM BAQAVI MELMURI', '9947399360', 'MALAPPURAM', '90803080024', '8593903985', 'ABDUL GAFFAR ', 676517, 'MA DIN COLLEGE OF ISLAMIC DA WA', 'SAYYID IBRAHEEMUL KHALEEL BUKHARI\nIBRAHIM BAQAVI MELMURI\n', 'FATHER', 'NO SYS SEAL', 93, 'MALAPPURAM-PAITHINIPPARAMBA', 'ERANAD', '7', NULL, b'0'),
(97, 'VENNIYUR APLA', 'AZHUVATH HOUSE\nAPLA THENNALA PO\nVALAKKULAM', '1', 1, 994, 'Malappuram', '2017-07-03 05:30:00', '1992-07-16 05:30:00', NULL, b'1', 'HAMZA', 'AZHUVATH', NULL, 'AV', 'SAYYID JAFFER THURAB BAQAVI PANAKKAD', '9447947104', 'THENNALA', '90108010016', '9539603367', 'ABDUL RAZZAQ', 676511, 'MOULANA ABDUL BARI ISLAMIC ACADEMY PUDUPPARAMB', 'SAYYID JAFFER THURAB BAQAVI PANAKKAD\nHUSAIN AHSANI CHAPPANANGADI', 'FATHER', 'OK', 94, 'VENNIYUR-MILLUM PADI-APLA', 'TIRURANGADI', '8', NULL, b'0'),
(98, 'THAZHAVA VATTAPPARAMB', 'PANAKKAL VEEDU HOUSE\nSRPM PO\nTHAZHAVA', '1', 1, 995, 'Kollam', '2017-07-03 05:30:00', '1993-05-28 05:30:00', NULL, b'1', 'HASSAN KUNJI', 'PANAKKAL VEEDU', NULL, 'H', 'ABDU RAHEEM NIZAMI AL FAZILI', '9645216785', 'THAZHAVA', '6016040014 SSF', '9895779655', 'ABDUL KHADAR', 690539, 'HIDAYATH VADUTHALA\nKALLARAKKAL JUMA MASJID PANOOR', 'ABDU RAHEEM FAZILI AL NIZAMIZUBAIR SAQAFI \nABDUL MAJEED AHSANI', 'FATHER', 'OK', 95, 'KARUNAGAPPALLI-VATTAPPARAMB', 'KARUNAGAPPALI', '7', NULL, b'0'),
(99, 'ERINNJICODE', 'ALUMKUNNUMMAL HOUSE\nERINJIKKODE\nPULPPATTA PO', '1', 1, 996, 'Malappuram', '2017-07-03 05:30:00', '1997-04-02 05:30:00', NULL, b'1', 'SULAIMAN MUSLIYAR', 'ALUM KUNNUMMAL', NULL, 'PC', '312652656', '6+6595', 'PULPPATTA', 'A', '9744378080', 'ABDUL MAJID ', 676123, 'A', 'A', 'FATHER', 'REMOVED FROM REGISTER', 96, 'A', 'ERNAD', '2', NULL, b'0'),
(100, 'VENNIYUR PARAPPURAM', 'VENNIYUR PARAPPURAM\nVALAKKUALAM PO\nMALAPPURAM', '1', 1, 997, 'Malappuram', '2017-07-03 05:30:00', '1992-07-27 05:30:00', NULL, b'1', 'MOIDEEN', 'KOZHIKKAL', NULL, 'K', 'SAYYID JAFFER THURAB BAQAVI', '9447947104', 'THENNALA', '301133', '9605181514', 'ABDUL LATHEEF ', 676508, 'MOIULANA ABDUL BARI ISLAMIC ACADEMY PUDUPPARAMB', 'SAYYID JAFFER THURAB BAQAVI\nHUSAIN AHSANI\nABDUL SALAM AHSANI', 'FATHER', 'OK', 97, 'VENNIYUR-MILLUM PADI', 'TIRURANGADI', '9', NULL, b'0'),
(101, 'RANDATHANI KULAMB', 'PALAKATH ATTUPURAM\nRANDATHANI PO\nMARAKKARA', '1', 1, 998, 'Malappuram', '2017-07-03 05:30:00', '1992-09-18 05:30:00', NULL, b'1', 'ABDUL MALIK HAJI', 'PALAKATH', NULL, 'PO', 'MANSOOR ALI AHSANI', 'NIL', 'MARAKKARA', 'SSF 90602060021', '9605781256', 'ABDUL KAYYOOM', 676510, 'MUHYUSSUNNA DARS NANNAMBRA\nTHA DEEBUL BAYAN APPIYATH', 'ABDU RAOOF FAZILI\nMANSOOR AHSANI', 'FATHER', 'CONTACT NO OF LAST TEACHER IS NOT GIVEN', 98, 'RANDATHANI-KOTTAKAL-MARAKKARA', 'TIRURANGADI', '7', NULL, b'0');
INSERT INTO `102_studentold` (`id`, `place`, `address`, `adm_class`, `year`, `admission_no`, `district`, `doa`, `dob`, `email`, `enabled`, `guardian_name`, `house_name`, `image_url`, `initial`, `last_teacher`, `last_teacher_mobile`, `local_body`, `membership_no`, `mobile`, `name`, `pin`, `previous_institutes`, `previous_teachers`, `relationship`, `remarks`, `roll_no`, `route_home`, `taluk`, `year_studied`, `state`, `isdeleted`) VALUES
(102, 'AGATHI', 'PUTHUKKOTTAYIL HOUSE\nAGATHI ISLAND\nU.T OF LAKSHA DWEEP', '1', 1, 999, '10', '2017-07-03 05:30:00', '1990-08-28 05:30:00', NULL, b'1', 'MUHAMMED', 'PUTHUKKOTTAYIL', NULL, 'P', 'ABDUL MAJEED BAQAVI THALI', '9037247612', 'VILLAGE DWEEP PANCHAYATH', '10107', '07994151808,04894 242149', 'ABDUL NASEER', 682553, 'ZAINUSSUUNNA DARS THRISSUR\nTHAZKIYA DARS OTHALUR', 'ZUBAIR SA ADI VALANCHERI\nABDUL MAJEED BAQAVI THALI', 'FATHER', 'SSF LETTER ATTATCHED WITH FORM', 99, 'TO AGATHI DWEEP', 'LAKSHADWEEP', '10', 'KAVARATHI', b'0'),
(103, 'IDUMBA', 'BADRIYA MANZIL IDUMBA\nCHITTARIPPARAMB PO\n', '1', 1, 1000, 'Kannur', '2017-07-03 05:30:00', '1993-05-15 05:30:00', NULL, b'1', 'MUHAMMED', 'BADRIYA  MANZIL', NULL, 'M', 'UMAR ABDUL GAFOOR SAQAFI ', '9847801766', 'CHITTARIPPARAMB', '40302040003', '9744984957', 'ABDUL RAHEEM', 670650, 'DARS', 'ABDUL SALAM MADANI PARAMMAL\nUMAR ABDUL GAFOOR SAQAFI VALAKKULAM\n', 'FATHER', 'NO SEAL\nSIGN AN NUMBER IS REPRESENTED', 100, 'THALASHERY-KOOTHUPARAMBA-IDUMBA', 'THALASHERI', '9', NULL, b'0'),
(104, 'PAYANGADI', 'PAYANGADI\nSREEKADA PURAM   P.O.\n', '1', 1, 1001, 'Kannur', '2017-07-03 05:30:00', '1993-03-05 05:30:00', NULL, b'1', 'KHALID.M', 'KADAVA THUPURA', NULL, 'KP', '000000', '0000000', 'SREEKANDAPURAM', '0000', '9495797313', 'FAIZ', 670631, 'NEER VELI  JUMA MASJID', 'ABDU SAMAD BAQAVI   PESHALA', 'FATHER', 'FORM REGECTED  00125478325CMTK', 101, 'A', 'TALIPARAMBA', '08', NULL, b'0'),
(105, 'EDAMUKK   KODUNGALUR', 'CHENDA MANGALATH  HOUSE\nP.O.KANDAMANGALAM    METHALA\nKODUNGALLUR', '1', 1, 1002, 'Thrissur', '2017-07-03 05:30:00', '1993-12-17 05:30:00', NULL, b'1', 'HARIS   C.A', 'CHENDA MANGALATH', NULL, 'C.H', 'SHAHID MUHIYUDEEN AHSANI', '9847302733', 'METHALA', 'ICF 76311,  RSC 465092', '9745032523   ,9072948817', 'FASAL', 680669, 'JAMIA  AZEEZIYYA   THOTTAKKATTUKARA\nMARKAZUL ULOOM JUMA MASJID  KOOTAYI', '1ISHAQ SA\'DI       2MUHAMMED ALI SAQAFI\n3ABDURAHMAN SAQFI PUGAYOOR', 'FATHER', 'OK', 102, 'KODUNGALLUR TO PADANNA {BUS} EDAMUKK', 'KODUNGALLUR', '08', NULL, b'0'),
(106, 'ANDATHODE', 'MOIDEENTAKATH   HOUSE\nPO. ANDATHODE\nCHAVAKKAD', '1', 1, 1003, 'Thrissur', '2017-07-03 05:30:00', '1994-03-01 05:30:00', NULL, b'1', 'MUHAMMED ALI', 'MOIDEENTAKATH', NULL, 'M', 'MUHYIDEEN NIZAMI', '9895158383', 'ANDATHODE', '140805110011', '9037015251', 'HAFIZ FAHAD ALI', 679564, 'KLARI  MOOCHIKKAL  DARS ', 'MUHYUDEEN  NISAMI', 'FATHER', 'sign of grd', 103, 'PONNANI   CHAVAKKAD  BUS ANDATHODE ', 'CHAVAKKAD', '08', NULL, b'0'),
(107, 'PALLIKKAL BASAR', 'KARADAN  HOUSE \nPALLIKKAL  PO\n.PALLIKKAL BASAR', '1', 1, 1004, 'Malappuram', '2017-07-03 05:30:00', '1993-03-13 05:30:00', NULL, b'1', 'ABOOBACKER SIDEEK  K', 'KARADAN   HOUSE', NULL, 'K', 'M ISMAIL MUSLIYAR   CHAPPANANGADI ', '9747628414', 'PALLIKKAL ', 'SYS 334384', '9746205003', 'JAFER SADIQ', 673634, 'HIDHAYA   PALAZHI', 'NTK   BAQAVI      AVILORA.\nM ISMAIL MUSLIYAR   CHAPPANANGADI ', 'FATHER', 'OK  SYS LETTER ATTCHED WITH FORM', 104, 'KAKKANJERI  - PALLIKKAL BASAR', 'KONDOTTY', '08', 'KERALA', b'0'),
(108, 'BAIRAN KUPPA', 'IDAKKADAN  HOUSE\nBAIRAN KUPPA PO\nHD KOTTA  MYSOOR      571114', '1', 1, 1005, 'Malappuram', '2017-07-03 05:30:00', '1993-05-21 05:30:00', NULL, b'1', 'ABDULLA', 'IDAKKADAN   HOUSE', NULL, 'EA', 'PK MUHAMMED BAQAVI  ', '9446730954', 'BAIRAN KUPPA', 'NIL', '08086870071', 'JUBAIR  ', 571114, 'IHYAUL ULOOM DARS   POOZHIKUTH\nPARAMMALANGADI\n', 'P.K. MUHAMMED BAQAVI  IRUMBUZHA\nSHAMSUDEEN AHSANI  KODAKKAL', 'FATHER', 'SSF LETTER ATTACHED WITH FORM ', 105, 'BAIRAN KUPPA', 'H.D KUPPA', '09', NULL, b'0'),
(109, 'KOTTANTHALA', 'CHAPPANGAN  HOUSE \nPALATHINGAL   KOTTANTHALA\nULLANAM ', '1', 1, 1006, 'Malappuram', '2017-07-03 05:30:00', '1993-11-11 05:30:00', NULL, b'1', 'ABDUL MAJEED ', 'CHAPPANGAN', NULL, 'C', 'SIBGATHULLA SAQAFI MANNARKKAD ', '9744999313', 'PARAPPANANGADI', 'SSF 900000310060002', '04942411967    - 9747376268', 'JUNAID', 676303, 'AL IHSAN  VENGARA', 'ABDU RAHEEM AHSANI\nASHRAF SAQAFI  PALLIPPURAM\nSIBGATHULLA SAQAFI  MANNARKKAD ', 'FATHER', 'OK\n\n', 106, 'PALATHINGAL    KOTTANTHALA', 'THRURANGADI', '07', NULL, b'0'),
(110, 'ALATHIYOOR     - BEERANCHIRA', 'CHEMMAL HOUSE\nCHERIYA PARAPPUR \nP.O. VIPIPURAM', '1', 1, 1007, 'Malappuram', '2017-07-03 05:30:00', '1993-11-19 05:30:00', NULL, b'1', 'UBAIDULLA AHSANI ', 'CHEMMALA   HOUSE', NULL, 'C', 'MUSTHAFA AHSANI  KOLATHOOR ', '9747363870', 'THRIPPANGODE', 'SSF 904001020003', '9544244082', 'HAMID JUNAID ', 676102, 'MARKAZUTHAZKIYATHIL IRSHADHIYYA\nKOLATHOOR', 'ALAVI SAQAFI  KOLATHOOR \nMIDHLAJ FAZILY  KODAMPUZHA', 'FATHER', 'OK', 107, 'THIRUR - KUTTIPPURAM  BUS -BEERAN CHIRA', 'THIRUR', '08', NULL, b'0'),
(111, 'KATTILE PALLI', 'VADI KADAVATH  HOUSE\nKOOTTAYI   KATTILE PALLI\nPADINJARAKKARA ', '1', 1, 1008, 'Malappuram', '2017-07-03 05:30:00', '1992-05-10 05:30:00', NULL, b'1', 'MUHAMMED KUTTY', 'VADI KADVATH  HOUSE', NULL, 'VK', 'SAYYID ABDULLA KOYA ASSAQAF', '8943586130', 'PURATHOOR ', '0000', '8086210665   - 9745870386', 'HARIS ', 676562, 'CM  MARKAZ     OMASHERI \nAPPIYATH   THIROORANGADI', 'SAYYID ABDULLA  KOYA \nMUHIYUDEEN SA\'ADI\nSAYYID SWALIH KOYA THNGAL', 'FATHER', NULL, 108, 'THIRUR - AZHIMUGAM  -KATTILE PALLI', 'THIRUR', '7', NULL, b'0'),
(112, 'KUPPADITHARA KUNNALAM CHALIL', 'SHEKH HOUSE\nKUPPADITHARA\nAMBATTAKKUNNU PO', '1', 1, 1009, 'Malappuram', '2017-07-03 05:30:00', '1993-05-01 05:30:00', NULL, b'1', 'IBRAHIM', 'SHEKH', NULL, 'C', 'ABDUL MAJEED AMANI', '9447549134', 'PADINJARATHARA', '150505050021', '8891577768', 'HASHIM', 673575, 'RAHMANIYYA MASJID PANOOR\nIZZATHUL ISLAM JUMA MASJID THRISSUR', 'ABDUL MAJEED AMANI\nABDUL GAFOOR\n NOUSHAD BAQAVISAQAFI', 'FATHER', 'OK', 109, 'KALPPATTA-PADINJARATHARA-KUPPADITHARA', 'VAITHIRI', '12', NULL, b'0'),
(113, 'KARIPPAMANNA', 'PARAMBIL PEEDIKA HOUSE\nATTASHERY PO\nKARIPPAMANNA', '1', 1, 1010, 'Palakkad', '2017-07-03 05:30:00', '1994-05-25 05:30:00', NULL, b'1', 'MOIDEEN PP', 'PARAMBIL PEEDIKA', NULL, 'PP', 'MUEENUDHEEN MUSLIYAR', 'NOT GIVEN', 'KARIMBUZHA', '424000023', '9744015571,9946031749', 'HAIDER ALI', 679513, 'MA DIN MASWALIHUSSUNNA MOLOOR', 'HAMZA KOYA BAQAVI KADALUNDI\nABID SA ADI MUKKAM\nMUEENUDHEEN MUSLIYAR', 'FATHER', 'CONTACT NO OF LAST TEACHER NOT FOUND', 110, 'KARIPPAMANNA', 'OTTAPPALAM', '7', NULL, b'0'),
(114, 'KURUVAMBALAM', 'MELE PEEDIYEKKAL HOUSE\nKURUVAMBALAM PO', '1', 1, 1011, 'Malappuram', '2017-07-03 05:30:00', '1993-09-30 05:30:00', NULL, b'1', 'MOIDEEN', 'MELE PEEDIYEKKAL', NULL, 'MP', 'V HAMZA BAQAVI', '9847371870', 'PULAMANTHOL', '160605060010', '8129691078', 'IRSHAD', 679338, 'PARAPPOR MASJID\nAKKAREPPURAM MASJID\nKOORYAD PALLI\nMOOLAPPARAMB PALLI', 'HAIDARALI AHSANI\nHAMZA BAQAVI', 'FATHER', 'SYS LETTER IS ATTATCHED\n', 111, 'KURUVAMBALAM - KOLATHUR', 'PERINTHALMANNA', '11', NULL, b'0'),
(115, 'AYYANKERI', 'MOOLA HOUSE \nPAZHAYA PALLI QUARTERS\nAYYANKERI\nSANNAPULIKKOT PO', '1', 1, 1012, '10', '2017-07-03 05:30:00', '1996-02-19 05:30:00', NULL, b'1', 'SHADULI MUSLIYAR', 'MOOLA HOUSE', NULL, 'MS', 'HASAN SAQAFI THUVVUR', '9744167201', 'AYYANKERI', 'NIL', '8606192053,9481456065', 'ISMAEEL', 571247, 'HASANUL BASWARI INSTITUTION MUTTAM\nPANNYAMKANDI PALLI DARS\nMUHYUSSUNNA DARS', 'ABDUL SALAM SAQAFI PALLIPPARAMB\nSAEED SA ADI ANJARAKKANDI\nHASAN SAQAFI THUVVUR', 'FATHER', 'SSF LETTER IS ATTATCHED\nSIGNED INSTITUTION RULE LIST IS NOT FOUND', 112, 'AYYANKERI-OLD MASJID ROUTE', 'MADIKKERI', '8', NULL, b'0'),
(116, 'PUNJAVI', 'RUKSANA MANZIL\nNJANIKKADAVU\nOZHINJA VALAPPU PO', '1', 1, 1013, 'Kasaragod', '2017-07-03 05:30:00', '1993-09-26 05:30:00', NULL, b'1', 'ASIYA', 'RUKSANA MANZIL', NULL, 'A', 'SAIDALAVI SAQAFI VELLILA', '9846859096', 'KANJANGAD', '109000095', '9562344320', 'MARSHAD', 671314, 'SIRAJUL ULOOM DARS', 'SAIDALAVI KAMIL SAQAFI VELLILA', 'MOTHER', 'OK', 113, 'KANJANGAD - KALLOORAVI - NJANIKKADAVU', 'HOSDURG', '8', NULL, b'0'),
(117, 'CHAZHOOR', 'NEDUM PURAKKAL HOUSE\nCHAZHOOR PO', '1', 1, 1014, 'Thrissur', '2017-07-03 05:30:00', '1993-05-11 05:30:00', NULL, b'1', 'BASHEER NV', 'NEDUM PURAKKAL', NULL, 'NV', 'MUSTHAFA KAMIL SAQAFI  CHERUTHURUTHI', '9495321251', 'CHAZHOOR', '140602060005', '9048374459,9656987845', 'MANSOOR', 680571, 'MUHYUSSUNNA DARS PANDARAKKAD\nMADARU DA WATHIL ISLAMIYYA VADANAPPALLI', 'MUSTHAFA KAMIL SAQAFI \nCHERUTHURUTHI', 'FATHER', 'OK', 114, 'THRISSUR- CHAZHOOR', 'CHAZHOOR', '8', NULL, b'0'),
(118, 'ATHALOOR', 'THEKKE PURAKKAL HOUSE \nPO ATHALOOR\nTHAVANOOR', '1', 1, 1015, 'Malappuram', '2017-07-03 05:30:00', '1996-04-10 05:30:00', NULL, b'1', 'MOIDEN SHAH', 'THEKKE PURAKKAL', NULL, 'TP', 'A', 'A', 'THAVANOOR', 'A', '9400786916', 'MISHKATH SHAH', 0, 'A', 'A', 'FATHER', 'REMOVED FROM REGISTER', 115, 'KOTTAKKAL -KUTTIPPURAM-ATHALOOR', 'THAVANOOR', '1', NULL, b'0'),
(119, 'IDUMBA', 'ARIFA MANZIL\nIDUMBA\nCHITTARIPPARAMB PO', '1', 1, 1016, 'Kannur', '2017-07-03 05:30:00', '1994-08-09 05:30:00', NULL, b'1', 'YUSUF M', 'ARIFA MANZIL', NULL, 'VK', 'IBRAHIM BAQAVI MELMURI', '9947399360', 'CHITTARIPPARAMB', '40302040012', '8129910327', 'MIDLAJ', 670650, 'MA DIN COLLEGE OF ISLAMIC DA WA', 'SAYYID IBRAHEEMUL KHALEEL BUKHARI\nIBRAHIM BAQAVI MELMURI\nKHALID SAQAFI SWALATH NAGAR', 'FATHER', 'NO SYS SEAL', 116, 'THALASHEY - IDUMBA', 'THALASERY', '7', NULL, b'0'),
(120, 'IDUMBA ', 'ARIFA MANZIL\nIDUMBA\nCHITTARIPPARAMB PO', '1', 1, 1017, 'Wayanad', '2017-07-03 05:30:00', '1994-08-09 05:30:00', NULL, b'1', 'YUSUF M', 'ARIFA MANZIL', NULL, 'VK', 'IBRAHIM BAQAVI', '947399360', 'CHITTARIPPARAMB', '67000113', '9746551701', 'MIKHDADH', 670650, 'MA DIN COLLEGE OF ISLAMIC DA WA', 'SAYYID IBRAHEEMUL KHALEEL BUKHARI \nIBRAHIM BAQAVI MELMURI', 'FATHER', 'NO SYS SEAL', 117, 'THALASSERY - -IDUMBA', 'THALASSERY', '7', NULL, b'0'),
(121, 'KLARI SOUTH', 'PILATHOTTATHI HOUSE\nEDARICODE PO\nKLARI SOUTH', '1', 1, 1018, 'Malappuram', '2017-07-03 05:30:00', '1995-02-19 05:30:00', NULL, b'1', 'MUHAMMED KUTTI', 'PILATHOTTATHIL', NULL, 'VT', 'A', '9', 'EDARIKODE', '7', '8714166424', 'MUNAVVIR FAYIZ', 676501, 'A', 'A', 'FATHER', 'REMOVED FROM REGISTER', 118, 'EDARICODE-KLARI SOUTH', 'TIRURANGADI', '1', NULL, b'0'),
(122, 'KUNIYA', 'DARUSSWALAH \nKUNIYA\nPERIYA PO\nPALLIKKARA', '1', 1, 1019, 'Kasaragod', '2017-07-03 05:30:00', '1995-04-23 05:30:00', NULL, b'1', 'BK', 'DARUSSWALAH', NULL, 'M', 'NAJMUDHEEN MISBAHI', '9447860058', 'PULLUR PERIYA', '50507030018', '0467 2234655', 'MUBASHIR AHMAD', 671316, 'JAMIA SA ADIYYA KASARGOD', 'SAYYID ISMAEEL HADI PANOOR\nABDUL LATHEEF SA ADI KOTTILA\nNAJMUDHEEN MISBAHI', 'AHMAD MUSLIYAR', 'NO SYS SEAL', 119, 'KANJANGAD-PERIYA-KUNIYA', 'HOSDURG', '7', NULL, b'0'),
(123, 'KALPENI', 'MONTHAMBALLI\nKALPENI PO\nU.T. OF LAKSHADWEEP', '1', 1, 1020, 'KALPENI-LAKSHADWEP', '2017-07-03 05:30:00', '1990-07-28 05:30:00', NULL, b'1', 'ABDUL NASAR', 'MONTHAMPALLI', NULL, 'MP', 'CT ABOOBACKER USTHAD', '9447321294', 'KALPENI', 'NIL', '9447990872,8281372091', 'HAFIZ NADIR RUKNUDHEEN ', 682557, 'PRINGADI JUMA MASJID\n\n', 'CT ABOOBACKER USTHAD', 'FATHER', 'SSF LETTER IS ATTATCHED WITH FORM\nNO MEMBERSHIP NO', 120, 'KALPENI-LAKSHADWEP', 'KALPENI', '8', 'KAVARATHI ', b'0'),
(124, 'PONMALA PALLIPPADI', 'ILAYEDATH HOUSE\nPONMALA PO\nPALLIPPADI', '1', 1, 1021, 'Malappuram', '2017-07-03 05:30:00', '1993-04-22 05:30:00', NULL, b'1', 'KUNJALI HAJI', 'ILAYEDATH', NULL, 'E', 'PALLAR HASSAN BAQAVI', '9846827009', 'PONMALA', '901090006', '8137030066', 'NIZAMUDHEEN', 676528, 'JAMIA HIKAMIYYA ', 'PONMALA ABDUL KHADIR MUSLIYAR\nHASSAN BAQAVI PALLAR\nKOLATHUR ALAVI SAQAFI\n', 'FATHER', 'SIGNED INSTITUTION RULE LIST IS NOT FOUND', 121, 'OTHUKKUNGAL-PONMALA-PALLIPADI', 'THIRUR', '8', NULL, b'0'),
(125, 'PURATHUR', 'KALATHIPPARAMBIL HOUSE\nPUDUPPALLI PO\nBP ANGADI', '1', 1, 1022, 'Malappuram', '2017-07-03 05:30:00', '1991-03-04 05:30:00', NULL, b'1', 'SHARAFUDHEEN', 'KALATHI PARAMBIL', NULL, 'KP', 'PALLAR HASAN BAQAVI', '9846827009', 'PURATHUR', 'SSF 90409020017', '9895624017,9847695754', 'NIUZAR', 676102, 'JAMIA ASH ARIYYA ERNAKULAM,\nEKKAZHIYOOR JUMA MASJID', 'PONMALA ABDUL KHADIR MUSLIYAR\nMUHAMMED BASHEER MADANI\nHASAN BAQAVI PALLAR', 'FATHER', 'OK', 122, 'TIRUR-PURATHUR', 'THIRUR', '8', NULL, b'0'),
(126, 'KARUNAGAPALLI', 'CHEERALATH  VADAKKATHIL \nPAMBANA.PO.\nCHAVARA\n', '1', 1, 1023, 'Kollam', '2017-07-03 05:30:00', '1995-04-23 05:30:00', NULL, b'1', 'SHAHIDHA', 'CHEERALATH VADAKKATHIL', NULL, 'N', 'YOONUS DARIMI', '9947640816', 'PAMBANA', '60103070024', '9946430531', 'NISSAM ', 691000, 'KARUVATTA   JUMA MAZJID', 'ABDUL HAKEEM  BAQAVI\nISMAIL MUSLIYAR  CHAPPANANGADI', 'MOTHER', 'OK', 123, 'KOLLAM -  KARUNAGAPALLI', 'KARUNAGAPALLI', '10', NULL, b'0'),
(128, 'PARIYAPPURAM', 'PTTETH HPUSE \nTHPPTHA\nPO', '1', 1, 1024, 'Malappuram', '2017-07-03 05:30:00', '1993-01-09 05:30:00', NULL, b'1', 'ALI', 'OTTETH', NULL, 'O', 'PALLAR HASAN BAQAVI', '9846827009', 'ALIPPARAMB', '160601020009', '9605551208,9605740606', 'NASEEF ALI', 679357, 'PUTHAN PALLI PUNNAYURKKULAM, DARS', 'SHIHABUDHEEN AZHARI\nHASAN BAQAVI\nRAHEEM SAQAFI', 'FATHER', 'OK', 124, 'PERINTHALMANNA-PAARAL-PARIYAPURAM', 'PERINTHALMANNA', '8', NULL, b'0'),
(129, 'VADAMUKK', 'VALIYA VALAPPIL HOUSE\nVADAMUKK\nMARANJERI PO', '1', 1, 1025, 'Malappuram', '2017-07-03 05:30:00', '1992-06-26 05:30:00', NULL, b'1', 'ABDUL KHADIR', 'VALIYA VALAPPIL', NULL, 'VV', 'ABDUL HAMEED SAQAFI', '9946477207', 'MAARANJERI', 'NIL', '9567144581', 'RASHID', 679581, 'VADAMUKK DARS \nKOORIYAD DARS\nHIEC KOYILANDI', 'ALAVI KUNJI FAIZI MANJERI\nABDUL HAMEED SAQAFI', 'FATHER', 'MEMBERSHIP NO IS NOT GIVEN', 125, 'MAARANJER-VADAMUKKU', 'PONNANI', '8', NULL, b'0'),
(130, 'KALADI', 'ANGADI PARAMBIL HOUSE\nKALADI PO\n', '1', 1, 1026, 'Malappuram', '2017-07-03 05:30:00', '1995-04-23 05:30:00', NULL, b'1', 'MUHAMMED', 'ANGADI PARAMBIL', NULL, 'AP', 'SHAFI AHSANI', '9048641685', 'KALADI', '329000068', '8606842510', 'RAFEEQ ', 679582, 'MASJID DARS', 'SHAMSUDHEEN NIZAMI\nSHAFI AHSANI AL KAMILI', 'FATHER', 'OK', 126, 'KUTTIPPURAM-KALADI', 'PONNANI', '9', NULL, b'0'),
(131, 'KAKKAD', 'POKKATT HOUSE\n KAKKAD PO\nTIRURANGADI\n', '1', 1, 1027, 'Malappuram', '2017-07-03 05:30:00', '1993-11-05 05:30:00', NULL, b'1', 'ABDUL LATHEEF', 'POKKATT', NULL, 'P', 'RASHEED BAQAVI', '9656344577', 'TIRURANGADI', '370670', '8289827986,9605964434', 'SA ADUDHEEN', 676306, 'THENNALA WEST BAZAR PALLI DARS\nKOLAPPURAM PALLI DARS\nPUKAYOOR CHENDAPPURAYA', 'K RASHEED BAQAVI KUTTIPPURAM\nMUHAJIR AHSANI EDAPAL', 'FATHER', 'OK', 127, 'KAKKAD', 'TIRURANGADI', '9', NULL, b'0'),
(132, 'KOLAPPURAM SOUTH', 'THAYYIL HOUSE\nKOLAPPURAM\nAR NAGAR PO', '1', 1, 1028, 'Malappuram', '2017-07-03 05:30:00', '1995-07-27 05:30:00', NULL, b'1', 'ABDUL RASHEED', 'THAYYIL', NULL, 'T', 'IBRAHIM AHSANI KAVANOOR', '9946652639', 'AR NAGAR', '90301060016', '9567892530,7560868305', 'SAFWAN', 676305, 'MADARU SAQAFATHI SUNNIYYA CHAMRA VATTAM', 'IBRAHIM AHSANI KAVANOOR', 'FATHER', 'OK', 128, 'THENNALA-TIRURANGADI-KOLAPPURAM SOUTH', 'TIRURANGADI', '8', NULL, b'0'),
(133, 'PANTHUR', 'THAZHE CHERUVATH HOUSE\nPO PANTHOOR', '1', 1, 1029, 'Kannur', '2017-07-03 05:30:00', '1995-06-03 05:30:00', NULL, b'1', 'ISMAEEL', 'THAZHE CHERUVATH', NULL, 'TC', 'ABDUL MAJEED AMANI', '9447549134', 'PANTHUR', '00', '0490 2317785', 'SA AD ', 670692, 'RAHMANIYA DARS', 'ABDUL MAJEED AMANI', 'FATHER', 'MEMBERSHIP NO IS NOT GIVEN', 129, 'THALASSERY-PANTHUR', 'THALASERY', '8', NULL, b'0'),
(134, 'PUTHAN THERU', 'PULIKKAL HOUSE\nOZHUR PO', '1', 1, 1030, 'Malappuram', '2017-07-03 05:30:00', '1994-02-28 05:30:00', NULL, b'1', 'KUNJI MUHAMMED MUSLIYAR', 'PULIKKAL', NULL, 'P', 'ABDU RAOOF FAZILI', '9946010271`', 'OZHUR', '3570000054', '8592829248,9061502522', 'SAEED', 676313, 'HIKAMIYYA DARS', 'PONMALA USTHAD\nRAOOF FAZILI\nHASAN BAQAVI', 'FATHER', 'OK', 130, 'THEYYALA-THANUR-PUTHAN THERU', 'TIRUR', '8', NULL, b'0'),
(135, 'PARAPPANANGADI', 'PALLICHINTE PURAKKAL\nPARAPPANANGADI PO', '1', 1, 1031, 'Malappuram', '2017-07-03 05:30:00', '1994-04-09 05:30:00', NULL, b'1', 'HAMZA PP', 'PALLICHINTE PURAKKAL', NULL, 'PP', 'MUHAMMED SAQAFI', '9947307641', 'PARAPPANANGADI', '90304080053', '9645718071', 'SIRAJ', 676307, 'HIKAMIYYA MANJERI', 'PONMALA ABDUL KHADIR MUSLIYAR\nHASAN BAQAVI PALLARALAVI SAQAFI KOLATHUR', 'FATHER', 'OK', 131, 'POOKKIPPARAMB-PARAPPANANGADI', 'TIRURANGADI', '8', NULL, b'0'),
(136, 'KALLAMPAD', 'BISMILLAH HOUSE \nNEERKALAM KODE\nMELAM KODE', '1', 1, 1032, 'Palakkad', '2017-07-03 05:30:00', '2000-02-01 05:30:00', NULL, b'1', 'SAINUDHEEN', 'BISMILLAH HOUSE', NULL, 'S', 'MUHAMMED SHAFI AHSANI', '8129474041', 'MELARKODE', '00', '9744236093', 'SAIFUDHEEN', 678703, 'MARAKAZU SAQAFATHIL ISLAMIYYA ALATHUR', 'MUHAMMED SHAFI AHSANI\nABDUL NASAR SAQAFI', 'FATHER', 'REMOVED FROM REGISTER', 132, 'PALAKKAD-VADAKKANJERI-UNGIN CHUVAD', 'AALATHUR', '8', NULL, b'0'),
(137, 'ERIMAYUR', 'PADINJAMURI HOUSE \nERIMAYUR PO\nALATHUR', '1', 1, 1033, 'Palakkad', '2017-07-03 05:30:00', '1994-05-05 05:30:00', NULL, b'1', 'SULAIMAN S', 'PADINJAMURI VEEDU', NULL, 'S', 'MUHAMMED RIYASUDHEEN SAQAFI', '9495009179', 'ERIMAYUR', 'NIL', '8129167011,8075256643', 'SAIDALAVI', 678546, 'JAMIA HASANIYYA ISLAMIYYA\nCHULLIYAN MEDU MASJID DARS\nJAMIA AZEEZIYA MADAVANA', 'AHMAD KABEER ANWARI\nMUHAMMED RIYASUDHEEN SAQAFI\nTHOUFEEQ AL HASANI', 'FATHER', 'NO SYS SEAL AND MEMBERSHIP NO', 133, 'PARAPPANANGADI-PALAKKAD-ERIMAYUR', 'ALATHUR', '9', NULL, b'0'),
(138, 'KUMARAM PUTHUR PALLIKKUNNU', 'KARIMBANAKKAL HOUSE\nPALLIKKUNNU PO', '1', 1, 1034, 'Palakkad', '2017-07-03 05:30:00', '1995-11-05 05:30:00', NULL, b'1', 'UMAR LATHEEFI', 'KARIMBANAKKAL', NULL, 'KU', 'UMAR SAQAFI', '9495511844', 'MANNARKKAD', '25511 SYS', '9605950932', 'SAINUDHEEN ', 678583, 'OTTAPPALAM MARKAZ\nAALATHIYUR DARS', 'MV SIDDEQUE SAQAFI OTTAPPALAM\nUMAR SAQAFI ATHAVANAD', 'FATHER', 'OK', 134, 'PERINTHALMANNA-MANNARKKAD-PALAKKADKUMARAM PUTHUR', 'OTTAPPALAM', '8', NULL, b'0'),
(139, 'PATHINARUNGAL', 'PANANJERI HOUSE\nPOTTAMMAL PATHINARUNGAL\nPANTHARANGADI PO', '1', 1, 1035, 'Malappuram', '2017-07-03 05:30:00', '1993-05-05 05:30:00', NULL, b'1', 'ABDUL NASAR P', 'PANANJERI ', NULL, 'P', 'ASHRAF SAQAFI POOKKOTTUR', '9526936480', 'PATHINARUNGAL', '372148 SYS', '8606038993,9895200929', 'SAINUL ABIDEEN', 676306, 'MAJMA\' AREACODE\nMANSHAUL HIKAM DARS\n', 'BEERAN MUSLIYAR\nAHMAD BAQAVI \nABOOBACKER FAIZI', 'FATHER', 'OK', 135, 'POOKKI-PARAPPANANGADI BUS-PANTHARANGADI STOP', 'TIRURANGADI', '8', NULL, b'0'),
(140, 'PUTHUR PALLIKKAL', 'IRANITHAYATH HOUSE \nPO PUTHUR PALLIKKAL', '1', 1, 1036, 'Malappuram', '2017-07-03 05:30:00', '1993-05-04 05:30:00', NULL, b'1', 'KUTTYALI', 'KALLUNGAL', NULL, 'K', 'ABDURAOOF AL FAZILI', '9946010271', 'PERUVALLUR', '60506010271', '9961137226,9745926481', 'SAIFUDHEEN ', 673636, 'CM MARKAZ THENNALA\nNANNAMBRA OLD JUMA MASJID', 'ABDU RAOOF AL FAZILI KARINKAPPARA', 'FATHER', 'OK', 136, 'PUTHUR PALLIKKAL', 'TIRURANGADI', '8', NULL, b'0'),
(141, 'THANNIKKADAVU', 'KOOMANJERI HOUSE\nTHANNIKKADAVU\nKUNNUMMAL POTTI PO', '1', 1, 1037, 'Malappuram', '2017-07-03 05:30:00', '1995-12-28 05:30:00', NULL, b'1', 'HAMZAPPU', 'KOOMANJERI', NULL, 'KH', 'MUHAMMED BAKHAVI PK', '9446730954', 'VAZHIKKADAVU', '293004', '8891105080,9847233092', 'SHIHABUDHEEN ', 679331, 'IHYA UL ULOOMUDHEEN DARS POOZHIKKUNNU', 'PK MUHAMMED BAKHAVI IRUMBUZHI\nBASHEER BAQAVI ', 'FATHER', 'OK', 137, 'NILAMBUR-EDAKKARA-THANNIKKADAVU', ' NILAMBUR', '8', NULL, b'0'),
(142, 'THOOTHA', 'KALI PARAMBIL HOUSE\nTHOOTHA PO\n', '1', 1, 1038, 'Malappuram', '2017-07-03 05:30:00', '1995-07-10 05:30:00', NULL, b'1', 'MOIDUTTY', 'KALI PARAMBIL', NULL, 'KP', 'SAIDALAVI SAQAFI KODUR', '9895129836', 'AALIPPARAMB', '160601030006', '9961482773', 'UMMAR   KP', 679657, 'SWIRATHUL MUSTHAQEEM ISLAMIC ACADEMY', 'SAIDALAVI SAQAFI KODOOR', 'FATHER', 'OK', 138, 'PERINTHALMANNA-CHERPPULASSERY-THOOTHA', 'PERINTHALMANNA', '7', 'KERALA', b'0'),
(143, 'PARAMBIL PADI', 'NALLATTU THODIKA HOUSE \nPARAMBIL PADI VENGARA PO', '1', 1, 1039, 'Malappuram', '2017-07-03 05:30:00', '1996-09-27 05:30:00', NULL, b'1', 'HAMZA NT', 'NALLATTU THODIKA', NULL, 'NT', 'SAIDALAVI SAQAFI', '9895129836', 'VENGARA ', '90802020033 SSF', '9656339644', 'UMAR  NT', 676304, 'SWIRATHUL MUSTHAQQEM ISLAMIC ACADEMY', 'SAIDALAVI SAQAFI KODUR', 'FATHER', 'PK', 139, 'MANJERI-PARAPPANAGADI ROUTE-PARAMBILPADI', 'TIRURANGADI', '8', NULL, b'0'),
(144, 'PERUMANNA', 'MELE PEEDIYEKKAL HOUSE\nPERUMANNA\nVALAKKULAM PO', '1', 1, 1040, 'Malappuram', '2017-07-03 05:30:00', '1993-06-06 05:30:00', NULL, b'1', 'SULAIKHA', 'MELE PEEDIYEKKAL', NULL, 'MP', 'SAYYID ABDULLA HABEEBRAHMAN  BUKHARI', '961188313', 'PERUMANNA', 'NIL', '7736630313', 'UMMAR   MP', 676508, 'SINCERE SHAREEATH COLLEGE', 'SAYYID ABDULLA HABEEBURAHMAN AL BUKHARI\nASHRAF AHSANIABDUSSALAM SAQAFI PANAMBRA', 'MOTHER', 'MEMBERSHIP NO AND SYS SEAL IS NOT FOUND', 140, 'KOZHICHENA-PERUMANNA-THOTTUMKAYA', 'TIRIRANGADI', '9', NULL, b'0'),
(145, 'HANDEL', 'ASHRAF MANZIL\nHANDEL HOUSE\nMIJAR PO\nMOODA BIDRI', '1', 1, 1041, '10', '2017-07-03 05:30:00', '1993-11-22 05:30:00', NULL, b'1', 'HI MUHAMMED MUSLIYAR', 'ASHRAF MANZIL', NULL, 'HM', 'HASAN BAQAVI PALLAR', '9846827009', 'PUTHIGE', '65111', '9980951657', 'USMAN ', 574225, 'JAMIA HIKAMIYYA MANJERI', 'PONMALA USTHAD\nHASAN BAQAVI \nALAVI SAQAFI', 'FATHER', 'SSF DIVISION LETTER IS ATTATCHED WITH FORM', 141, 'MANGLORE-HANDEL', 'MOODABIDRI', '8', NULL, b'0'),
(146, 'KELAM KULAM', 'KOONATHIL HOUSE\nPERUMANNA KLARI PO', '1', 1, 1042, 'Malappuram', '2017-07-03 05:30:00', '1993-06-07 05:30:00', NULL, b'1', 'HAMZA MUSLIYAR', 'KOONATHIL', NULL, 'K ', 'SIBGATHULLA  SAQAFI', '9744999313', 'PERUMANNA KLARI', '90107050016', '8089772983,9745928472', 'UDAIF ', 676501, 'AL IHSAN VENGARA', 'ABDU RAHEEM AHSANI\nASHRAF SAQAFI\nSIBGATHULLA SAQAFI', 'FATHER', 'OK', 142, 'KARINKAPPARA ROAD-PARAMEL-KELAM KULAM', 'TIRURANGADI', '7', NULL, b'0'),
(147, 'AKKAREPPURAM', 'PUTHUR HOUSE\nEDAPPATTA PO\nMELATTUR', '1', 1, 1043, 'Malappuram', '2017-07-03 05:30:00', '1994-02-26 05:30:00', NULL, b'1', 'MOIDEEN KUTTY', 'PUTHUR ', NULL, 'P', 'HAIDARALI AHSANI', '9846566328', 'EDAPPATTA', 'SYS 311769', '9656569249', 'UBAIDULLA', 679326, 'PAKARA MASJID,THENNALA THURAKKAL MASJID,KALD PALLI,PADIKKAL PALLI', 'CP ABOOBACKER AL QASIMI\nHAMZA BAQAVI\nHAIDARALI AHSANI', 'FATHER', 'OK', 143, 'KOTTAKKAL-MANJERI-MELATTUR-EPPIKKAD', 'ERANAD', '8', NULL, b'0'),
(148, 'OORAKAM KUNNATH', 'PUTHAN PEEDIYEKKAL HOUSE \nOORAKAM KUNATH PO', '1', 1, 1044, 'Malappuram', '2017-07-03 05:30:00', '1993-02-20 05:30:00', NULL, b'1', 'MUHAMMED MUSLIYAR', 'PUTHAN PEEDIYEKKL', NULL, 'PP', 'UNAIS KAMIL SAQAFI', '8129887966', 'OORAKAM KUNNATH', 'SYS 340216', '9846256127', 'UNAIS', 676519, 'BADRU DHUJA KUTTALUR', 'SAYYID SHIHABUDHEEN BUKHARI\nSAEED SAQAFI\n', 'FATHER', 'OK\n', 144, 'OORAKAM KUNNATH', 'TIRURANGADI', '8', NULL, b'0'),
(149, 'THANNIKKADAVU', 'KARIMBANAKKAL HOUSE\nVAZHIKKADAVU\nKUNNUMMAL POTTY PO', '1', 1, 1045, 'Malappuram', '2017-07-03 05:30:00', '1995-09-01 05:30:00', NULL, b'1', 'ALAVI', 'KARIMBANAKKAL', NULL, 'KA', 'MUHAMMED BAQAVI', '9446730954', 'VAZHIKKADAVU', '293172', '8943889181', 'YA QOOB ', 679331, 'IHYA ULOOM DARS POOZHIKKUNNU', 'MUHAMMED BAQAVI\nSHAMSUDHEEN AHSANI\nAMEERUDHEEN AZHARI', 'FATHER', 'OK', 145, 'NILAMBUR-EDAKKARA-THANNIKKADAVU', 'NILAMBUR', '8', NULL, b'0'),
(150, 'NALVATHAKLU', 'DUDHIYANDA\nNALVATHAKLU\nKUDAK', '1', 1, 1046, '10', '2017-07-03 05:30:00', '1992-02-04 05:30:00', NULL, b'1', 'ISMAEEL', 'DUDHIYANDA', NULL, 'BI', 'SAYYID THWAYYIB BUKHARI', '9946095998', 'NALVATHAKLU', '00', '9567439626', 'ABDU RAHMAN', 671218, 'AL MUJAMMAL ISLAMI', 'SAYYID THWAYYIBUL BUKHARI\nABDULLA MUSLIYAR', 'FATHER', 'NO SEAL', 146, 'KUDAK-VIRAJPET-NALVATHAKLU', 'VIRAJPET', '10', NULL, b'0'),
(151, 'POONOOR', 'KAKKATTUMMAL HOUSE\nUNNIKKULAM PO\n', '1', 1, 1047, 'Kozhikkode', '2017-07-03 05:30:00', '1994-09-30 05:30:00', NULL, b'1', 'ASHRAF', 'KAKKATTUMMAL ', NULL, 'UA', 'NIZAMUDHEEN AHSANI', 'NIL', 'UNNIKKULAM', '81205010039', '9895600448,9142069703', 'MUHAMMED AJMAL', 673574, 'AL FIRDOUSE DA WA COLLEGE', 'OK ABDURASHEED USTHAD\nJALEEL SAQAFI', 'FATHER', 'NO SEAL\nCONTACT NO OF LAST USTHAD IS NOT FOUND', 147, 'KLOZHIKODE-POONOOR', 'KOYILANDI', '7', NULL, b'0'),
(152, 'KAROOPPADANNA', 'MUDAVAN KATTIL HOUSE\nKAROOPPADANNA PO\nKODUNGALLUR', '1', 1, 1048, 'KERALA', '2017-07-03 05:30:00', '1994-04-25 05:30:00', NULL, b'1', 'ABDUL LATHEEF M M', 'MUDAVAN KATTIL', NULL, 'MA', 'KOTTUR KUNJAMMU MUSLIYAR', '9946099687', 'VELLANGALLUR', 'NIL', '8943991458', 'MUHAMMED SALIM', 680670, 'CM MARKAZ THENNALA', 'KOTTUR KUNJAMMU MUSLIYAR\nSIRAJUDHEEN AL FAZILI NARATH', 'FATHER', 'NO SEAL AND MEMEBERSHIP', 8, 'THRISSUR-KODUNGALLUR-KAROOPPADANNA', 'MUKUNDAPURAM', '7', 'THRISSUR', b'0'),
(153, 'PALACHIRAMADU', 'PUTHIYEDATH HOUSE \nPALACHIRAMADU\nEDARICODE PO', '1', 1, 1049, 'KERALA', '2017-07-03 05:30:00', '1994-04-01 05:30:00', NULL, b'1', 'USMAN', 'PUTHIYEDATH', NULL, 'P', 'ABDUL RAOOF AL FAZILI', 'NIL', 'PERUMANNA KLARI', '90101090001', '9946125647', 'MUHAMMED FARZEEN', 676501, 'MUHYISSUNNA DARS NANNAMBRA', 'KOTTUR KUNJAMMU MUSLIYAR\nABDU RAOOF AL FAZILI \nSIRAJUDHEEN FAZILI', 'FATHER', 'CONTACT NO OF LAST USTHAD IS NOT FOUND', 3, 'THENNALA-POOKKI-PALACHIRAMADU', 'TIRUR', '6', 'MALAPPURAM', b'0'),
(154, 'PADIYANI', 'MANNERI HOUSE\nERUMAD PO', '1', 1, 1050, 'KODAG', '2017-07-03 05:30:00', '1995-05-16 05:30:00', NULL, b'1', 'MA SHADULI MUSLIYAR', 'MANNERI', NULL, 'MS', 'SIRAJUDHEEN FAZILI', '9895293794', 'ERUMAD', 'NIL', '9448383161', 'MUHAMMED SHAMEEL', 571214, 'ERAMANGALAM DARS MENJESHWARAM', 'KOTTUR USTHAD\nABDUL KHADIR MADANI\nSIDDEEQ BAQAVI\nSIRAJUDHEEN FAZILI', 'FATHER', 'NO SEAL AND MEMBERSHIP NO', 4, 'ERUMAD-PADIYANI', 'MADIKKERI', '7', 'KARNATAKA', b'0'),
(155, 'CHERUMUKK JEELANI NAGAR', 'KOZHISSERY HOUSE \nCHERUMUKK PO', '1', 1, 1051, 'MALAPPURAM', '2017-07-03 05:30:00', '1996-07-08 05:30:00', NULL, b'1', 'ALI K', 'KOZHISSERY HOUSE', NULL, 'K', 'SIRAJUDHEEN AL FAZILI', '9895293794', 'NANNAMBRA', 'NIL', '7558962532', 'JUBAIR ', 676306, 'MISBAHUSSUNNA DARS KALLOORMA\nCM MARKAZ THENNALA', 'KOTTUR KUNJAMMU MUSLIYAR\nSHARAFUDHEEN MISBAHI\nSIRAJUDHEEN AL FAZILI', 'FATHER', 'ok\n\n\n', 5, 'KARUMBIL -CHERUMUKK ROAD-JEELANI NAGAR', 'TIRURANGADI', '9', 'KERALA', b'0'),
(156, 'CHULLIPPARA', 'KODAPPANJERI HOUSE\nCHULLIPPARA PO', '1', 1, 1052, 'MALAPPURAM', '2017-07-03 05:30:00', '1995-05-23 05:30:00', NULL, b'1', 'HYDARS', 'KODAPPANJERI', NULL, 'K', 'SIRAJUDHEEN AL FAZILI', '09895293794', 'TIRURANGADI', 'NIL', '8086500364', 'ABDUL BASITH', 676508, 'PALLI DARS KALLURMA\nCM MARKAZ THENNALA', 'SHARAFUDHEEN MISBAHI\nSIRAJUDHEEN AL FAZILI', 'FATHER', 'MEMBERSHI AND SEAL IS NOT FOUND', 6, 'KARUMBIL-CHULLIPPARA', 'TIRURANGADI', '8', 'KERALA', b'0'),
(157, 'MUMBODY', 'MUMBODY HOUSE \nUPPALA  P.O\nKASARKODE', '1', 1, 1053, 'KASARKODE', '2017-07-03 05:30:00', '1995-02-27 05:30:00', 'M', b'1', 'IBRAHEEM', 'MUMBODY HOUSE', NULL, 'M', 'M', 'M', 'MANGALPADI', 'M', '9746111150', 'ABOOBACKER SIDEEQ', 671323, 'DARS ', 'MUHAMMED FAISI\nSWADIQ SAQAFI', 'FATHER', 'FORM REJECTED ', 6, 'UPPAL  - MUMBODY', 'MANJESWARAM', '7', 'KERALA', b'0'),
(158, 'OTHUKKUNGAL', 'KUNNAKKADAN  HOUSE\nOTHUKKUNGAL  PO\nMALAPPURAM   DT', '1', 1, 1054, 'MALAPPURAM', '2017-07-10 05:30:00', '1989-05-21 05:30:00', NULL, b'1', 'ABDU', 'KUNNAKKADAN  HOUSE', NULL, 'KK', 'ABDUSALAM AHSANI', '9847291878', 'OTHKKUNGAL', '00000', '9605609794', 'SHAMSUDEEN K.K.', 676528, 'MAJ MAU  VETTICHERA  \nNELLIPARAMBU  JUMA MASJID', 'SULAIMAN SAQAFI  MALIYEKKAL\nABDU SALAM AHSANI', 'FATHER', 'FORM REJECTED ', 7, 'OTHUKKUNGAL  - MARATHINGAL', 'THIRURANGADI', '09', 'KERALA', b'0'),
(159, 'KOZHISERY KUNNU', 'KUNNUMMAL  HOUSE\nORAVAMPURAM   \nTHECHINGANADAM  PANDIKKAD', '1', 1, 1055, 'MALAPPURAM', '2017-07-03 05:30:00', '1993-06-02 05:30:00', NULL, b'1', 'HAMZA', 'KUNNUMMAL  HOUSE', NULL, 'K', 'SHEREEF  AZHARI VENGARA', '000', 'KEEZHATOOR ', '160704060010', '8089997311', 'SHAHID MUNEER', 679325, 'BADHRUDDUJA   ISLAMIC SENTR', 'SAYYID SHIHABUDEEN BUKHARI\n', 'FATHER', 'FORM REJECTED ', 8, 'MALAPPURAM   MANJERI \n PANDIKKAD  ORAVUMPURAM', 'PERINTHALMANNA', '7', 'KERALA', b'0'),
(160, 'PATHUMOOCHI', 'NAYATTIL HOUSE\nPATHUMOOCHI\nVENGARA\n', '1', 1, 1056, 'MALAPPURAM', '2017-07-03 05:30:00', '1998-06-24 05:30:00', NULL, b'1', 'ABDUL LATHEEF SQUAFI', 'NAYATYTIL', NULL, 'N', 'USMAN SAQUAFI NALLALAM', '00000', 'VENGARA', '90800310003', '9847041203- 8089777461', 'MUHAMMED  THANVEERE HASAN', 676374, 'KUTYALOOR JUUMA MASJID', 'USMAN SAQUAFI NALLALAM', 'FATHER', 'FOM REJACTED', 9, 'POOKIPARAMBA-KAKKAD-PATHUMOOCHI', 'THIROORANGADI', '7', 'KERALA', b'0'),
(161, 'KUTTIPPALA', 'BADRIYYA, APPATT HOUSE\nPULLIPPARAMB\nCHELEMBNRA', '1', 1, 1057, 'MALAPPURAM', '2017-07-03 05:30:00', '1993-03-22 05:30:00', NULL, b'1', 'ABDUL MJEED', 'BADRIYYA MANZIL', NULL, 'P T', 'IBRHIM SAQUFI', '00000', 'KUTTIPPALA', '0000', '9961868155', 'MUHAMMED ABDUL BARI', 673634, 'ROULATHU SWALIHEEN DARS', 'IBRHIM SQUAFI KOOTOR', 'FATHER', 'FOM REJECTED\n', 10, 'IDIMUZHIKKAL-KOLAKKUTH-KOONOOL', 'KONDOTTY', '6', 'KELARA', b'0'),
(162, 'MUPPATHARAM ERAMAM', 'KARUNNAPPALLI\nT O G ROAD ,NORTH KALAMASSERY', '1', 1, 1058, 'ERANAKULAM', '2017-07-03 05:30:00', '1992-12-12 05:30:00', NULL, b'1', 'KINJUMUHAMMED', 'KARUNNPPALI', NULL, 'K K', 'HAFIOZ ZUBAIR MISBAHI', '0000', 'KADUNGALLOR', '0000', '9746493076', 'MUHAMMED AZAD', 683110, 'NELLISERY DARS', 'HAFIZ ZUBAIR MISBAHI', 'FATHER', 'FOM RIJECTED', 11, 'ALUVA-PANJAYATH STOP', 'KADUNGALLOR', '8', 'KERARA', b'0'),
(163, 'VENGAD', 'PARAPPALLATH HOUSE\nVENGAD\n', '1', 1, 1059, 'MALAPPURAM', '2017-07-03 05:30:00', '1996-08-13 05:30:00', NULL, b'1', 'SAIDALAVIKUTTY', 'PARAPPALLATH HOUSE', NULL, 'P', 'MUHAMMED ALI MUSLIYAR VENGAD', '0000', 'MOORKKANAD', '160602060025', '9747521008', 'MUHAMMED RASHID', 679338, 'MANU MUSLIYAR ISLAMIC CENTER PALLAM', 'MUHAMMED ALI MUSLIYAR VENGAD', 'FATHER', 'FORM RIJECTED', 12, 'VENDAD', 'PARINTHALMANNA', '8', 'KERALA', b'0'),
(164, 'THENNALA', 'ARAKKAL', '1', 1, 1060, 'MALAPPURAM', '2017-07-03 05:30:00', '1995-04-16 05:30:00', NULL, b'1', 'MUSTHAFA BAQUAVI', 'NECHIYYIL', NULL, 'N C', 'ABDUL RAHOOF AL FAZILI', '000', 'THENNELA', '000', '0494495456', 'MUHAMMED JABIR', 676511, 'NANAMBRA MUHYUSSUNNA', 'ABDUL RAHOOF AL FAZILI', 'FATHER', 'FORM REJECTED', 7, 'THENNALA', 'THIROORANGADI', '7', 'KERALA', b'0'),
(165, 'KODAPPURAM', 'CHEMBRA CHOLA HOUSE\nPERINGAV\nPUTHUKKODE PO\nRAMANATTUKARA', '1', 1, 1061, 'MALAPPURAM', '2017-07-03 05:30:00', '1995-01-28 05:30:00', NULL, b'1', 'YOOSAF', 'CHEMBRACHOLA', NULL, 'P', 'V MUHAMMED KOYA AHSANI VK PADI', '00000', 'CHERUKAV', '333347', '9847349096', 'MUHAMMED FIROS', 673633, 'VALKKULAM PARAMMAL DERS', 'V MUHAMMED KOYA AHSANI VK PADI', 'FATHER', 'FORM REGECTED', 14, 'RAMANATTUKARA-PERINGAVU-PUTHUKKODE-KODAPPURAM', 'KONDOTTY', '6', 'KERALA', b'0'),
(166, 'PERIYA', 'OTHAYOTH HOUSE\nPERIYA \nWAYANAD', '1', 1, 1062, 'WAYANAD', '2017-07-03 05:30:00', '1992-07-21 05:30:00', NULL, b'1', 'NASAR OP', 'OTHAOTH PUTHANPURA', NULL, 'OP', 'MUHAMMED JABIR FAZILI PAMBURATH', '00', 'THAVINJAL', NULL, '9961974584', 'MUHAMMED ', 670644, 'MANSHAU THASKIYATHU SSUNNIYA MATTOL\n', 'LIYAHUL MUSTHAFA SAYYID HAMID KOYAMMA THANGAL MATTOOL\nUK MUHAMMED ALI BAQAVI\nMUHAMMED JABIR FAZILI PAMBURATH\n\n', 'FATHER', 'FORM REGECTED', 15, 'KOZHIKODE - MANANTHAVADI-PERIYA 34', 'MANANTHAVADI', '8', 'KERALA', b'0'),
(167, 'KUTTOR', 'PAAPPAATTIYIL HOUSE\nKANNAMANGALAM\n', '1', 1, 1063, 'MALAPPURAM', '2017-07-03 05:30:00', '1994-07-11 05:30:00', NULL, b'1', 'ALI MUSLIYAR', 'PAAPPAATTIYIL', NULL, 'PP', 'SIDHEEQUE MUSLIYAR', '0000', 'A', '343268', '7736585395', 'MUHAMMED SALEEM', 676304, 'THAZE KOLAPPURAM DARS', 'SIDHEEQUE MUSLIYAR', 'FATHER', 'FORM REJECTED', 16, 'POKKIPARAMBA-KAKKAD-VENGARA-KUTTOR-POONKAYA', 'THIROORANGADI', '8', 'KERALA', b'0'),
(168, 'POOTHANOOR, CHUNKATHEPPALA', 'POTHANOOR\nKANMANAM(PO)', '1', 1, 1064, 'MALAPPURAM', '2017-07-03 05:30:00', '1996-08-04 05:30:00', NULL, b'1', 'ALAVIKKUTTY HAJI', 'KALL MOTTAKKAL', NULL, 'KM', 'SULAIMAN RAHAMNI', '00000', 'VALAVANNOOR PANJAYATH', '0000', '9539390905', 'MUBARAK ALI', 676551, 'CHEMMANNOR PALLI DARS', 'SULAIMAN RAHMANI', 'FATHER', 'FORM REJECTED', 17, 'PUTHANATHANI-THUVVAKKAD', 'TIRUR', '7', 'KERALA', b'0'),
(169, 'AAVIL BEECH', 'CHALAYIL HOUSE\nPARAPPANAGADI', '1', 1, 1065, 'MALAPPURAM', '2017-07-03 05:30:00', '1991-09-22 05:30:00', NULL, b'1', 'HAMZA', 'CHALAYIL', NULL, 'C', 'SHIHABUDHEEV LATHEEFI', '00000', 'PARAPPANANGADI', '00000', '9539410471', 'ASIF', 676303, 'CHEMMAD PALLI DARS\nTHALASSEY PALLI DARS', 'SHIHABUDHEEN LATHEEFI', 'FATHER', 'FORM REJECTED', 18, 'PARAPPANANGADI-AAVIL BEECH', 'THIROORANGADI', '7', 'KERALA', b'0'),
(170, 'VELUTHAPARAMBA', 'KALATHODI HOUSE\nVELUTHATHA PARAMBA\nOLAVTOOR(PO)', '1', 1, 1066, 'MALAPPURAM', '2017-07-03 05:30:00', '1997-04-06 05:30:00', NULL, b'1', 'ZAINUDHEEN', 'KALATHODI', NULL, 'KT', 'CP MUHAMMED MUSLIYAR', '0000', 'PULIKKAL', '160906080027', '9020474717', 'MUHAAMMED FARIS', 673638, 'NEETANIMMAL PALLI DARS', 'CP MUHAMMED MISLIYAR', 'FATHER', 'FORM REJECTED', 19, 'KONDOTY-VETTUKAAD-VELUTHAPARAMB', 'ERNAD', '8', 'KERALA', b'0'),
(171, 'KAREKKAD', 'EDATHADATHIL HOUSE\nKAREKKAD(PO)', '1', 1, 1067, 'MALAPPURAM', '2017-07-03 05:30:00', '1994-08-18 05:30:00', NULL, b'1', 'ISMAYIL', 'EDATHADATHIL;', NULL, 'ET', 'SIRAJUDHEEN AL FALILY', '0000', 'EDAZHAR', '0000', '8113092012', 'MIUHAMMED JUNAID', 676553, 'CM MARKAZ', 'SIRAJUDHEEN AL FALILI', 'FATHER', 'FORM REJECTED', 10, 'TIRUR-KAREKKAD', 'TIRUR', '8', 'KERALA', b'0'),
(172, 'MAYILADIYAL', 'CHERAN KULANKARA HOUSE\nVAIRANKODE(PO)', '1', 1, 1068, 'MALAPPURAM', '2017-07-15 05:30:00', '1993-10-26 05:30:00', NULL, b'1', 'MOUDEEN KUTTY', 'CHEERAN KUKNGARA', NULL, 'CK', 'SULAIMAN SAQUAFI ', '000', 'THIRUNAVALLA', '0000', '6956045979', 'MUHAMMED ABDUL FATHAH', 676301, 'MAJAM-U VETTICHIRA', 'SULAIMAN SAQUAFI MALIYEKKAL', 'FATHER', 'FORM REJECTED', 21, 'PUTHANATHANI-ALOOR', 'TIRUR', '8', 'KERALA', b'0'),
(173, 'THARAYITTAL', 'PULLITHODIKKA\nMUNNAYIKKAD HOUSE\nKARIPUR(PO)', '1', 1, 1069, 'MALAPPURAM', '2017-07-03 05:30:00', '1995-11-23 05:30:00', NULL, b'1', 'SULAIMAN', 'MUNNAYIKKAD HOUSE', NULL, 'PT', 'MUHAMMEDALI KAMIL SAQUAFI', '0000', 'PALLIKKAL', '0000', '9656302041', 'MUHAMMED ASIF ', 676368, 'FAROOQUE JUMA MASJID CHALIYAPPIDAM', 'MUHAMMEDALI KAMIL SAQUAFI', 'FATHER', 'FORM REJECTED', 22, 'KAKKAD-KOLAPPURAM-THARAYITTAL', 'KONDITTY', '8', 'KERALA', b'0'),
(174, 'SOONKAL', 'KODAMBOYIL HOUSE\nSONKAL\nUPPALA(PO)', '1', 1, 1070, 'KASARGODE', '2017-07-03 05:30:00', '1997-05-09 05:30:00', NULL, b'1', 'ABDULLAH MADANI', 'KOODAMBAYIL HOUSE', NULL, 'P', 'ABDULSSALAM DARIMI', '0000', 'MANGALPADI', '0000', '9895149450', 'UMARUL FAROOQUE', 671322, 'JAMALIYA JUMA MASJID KUMBANUR', 'ABDULSSALAM DARIMI KUMBANOOR', 'FATHER', 'FORM REJECTED', 23, 'KASARGOD-UPPALA-SONKAL', 'KASARGOD', '8', 'KERALA', b'0'),
(175, 'BADARIYAA NAGAR', 'RABIYA MANZIL \nBADARIYYA NAGAR\nICHILANKODE(PO)\n', '1', 1, 1071, 'KASARGODE', '2017-07-03 05:30:00', '1993-03-01 05:30:00', NULL, b'1', 'IZZUDHEEN', 'RABIYA MANZIL', NULL, 'DI', 'ABDUSSALAM DARI', '0000', 'MANGAPPADI', '0000', '9895474539', 'MUHAMMED ASHARAF', 671322, 'JAMALIYA JUMA MASJID KUMBANOOR', 'ABDUSSALAM DARIMI', 'FATHER', 'FORM REJECTED', 24, 'KASARGODE-BANDOYODE-PACHAMBALA-BADAROYYA NAGAR', 'KASARGODE', '8', 'KERALA', b'0'),
(176, 'KAVUMPADI', 'AL AMAAN\n KAVUMBADI\nTHILLANKERI(PO)\n', '1', 1, 1072, 'KANNOR', '2017-07-04 05:30:00', '1995-06-30 05:30:00', NULL, b'1', 'IBRAHIM SA-ADI', 'AL AMAAN', NULL, 'NP', 'MUHAMMED JABIR FALILY', '9656274761', 'THILLANKLERY', '0000', '94464314', 'ABDUL HAFEEL', 670702, 'CHAPPARAPPADAVU JUMA MASJID', 'MUHAMMED JABIR FALILY PAMBURUTHI', 'FATHER', 'FORM REJECTED', 25, 'THALASSERY-MATTANNOR-KAVIMPADY', 'THILLANKERY', '8', 'KERALA', b'0'),
(177, 'PANMANA', 'HUSSAIN Manzil\nPANMANA\nPUTHAN CHANDA(PO)', '1', 1, 1073, 'KOLLAM', '2017-07-03 05:30:00', '1993-05-10 05:30:00', NULL, b'1', 'ABDUL KAREEM', 'HUSSAIN MANZIL', NULL, 'A', 'MUHAMMED NIYAS AHSANI', '0000', 'PANMANA', '000000', '9947113930', 'THAMEEMUL ANSARI', 691583, 'HARID JUMA MASJID', 'MUHAMMED NIYAS AHSANI', 'FATHER', 'FORM REJECTED\n', 26, 'KARUNAGAPPALLY-TITANUM-PUTHANCHANDA', 'KARUNAGAPPALLY', '10', 'KERALA', b'0'),
(178, 'CHANGUVATTYKKUND', 'MANAMMAL HOUSE\nCHANGUVATTYKKUND\nKOTTAKKAL(PO)', '1', 1, 1074, 'MALAPPURAM', '2017-07-03 05:30:00', '1994-03-21 05:30:00', NULL, b'1', 'SAIDALAVI', 'MANAMMAL', NULL, 'M', 'ABDULNASAR SAQUAFI PONAMAL', '0000', 'KOTTAKKAL', '0000', '8086366823', 'MUHAMMED SHAFI', 676503, 'MULHIRUSSUNNA DARS KOLKKALAM', 'ABDUNASAR SAQUAFI PONAMALA', 'FATHER', 'FORM REJECTED', 27, 'KOTTAKKAL', 'TIRUR', '9', 'KERALA', b'0'),
(179, 'PUTHUPPARAMB', 'KARUVALLY HOUISE\nPUTHUPPARAMB(PO)', '1', 1, 1075, 'MALAPPURAM', '2017-07-11 05:30:00', '1994-07-14 05:30:00', '', b'1', 'HAYDROS MUSLIYAR', 'KARUVALLY', NULL, 'KV', 'ABULLAH BFALILY', '0000', 'EDARIKKODE', '0000', '000', 'MUHAMMED SAFEEQUE', 676501, 'AL IHSAN VENGARA', 'ABDULLA FALILY', 'FATHER', 'FORM REJECTED\nNO CONDACT NUMER', 28, 'KOTTAKKAL-PUTHUPPARAMB-KAARAATTANGADY', 'THIRORANGADY', '7', 'KERALA', b'0'),
(180, 'PARAKKUNI', 'KANDAN KULAVAN HOIUSE\nPANAMARAM(PO)', '1', 1, 1076, 'VAYANAD', '2017-07-03 05:30:00', '1996-04-11 05:30:00', NULL, b'1', 'SAIDAJAVI', 'KANDANKULAVAN', NULL, 'KP', 'MUHYADHEEN KUTTY BAQUAVI PONMALA', '000', 'PANAMARAM', '000', '0000', 'MUHAMMED ABDUNASAR', 670721, 'PUTHOORPADAM HOUSE', 'MUHYADHEEN KUTTY BAQUAVI PONAMALA', 'FATHER', 'FORM REJECTED\nNO CONDACT NUMBER', 29, 'KOZIKKODE-PANAMARAM', 'MANANDAVADY', '6', 'KERALA', b'0'),
(181, 'PALAKKUTTY', 'AMIYAM POYIL HOUSE\nKODUVALLY(PO)', '1', 1, 1077, 'KOZIKKODE', '2017-07-03 05:30:00', '1997-01-16 05:30:00', NULL, b'1', 'MUHAMMED', 'AMIYAM POYIL', NULL, 'AP', 'ASHRAF AHSANI', '0000', 'KODUVALLY', '0000', '9061999088', 'MUHAMMED UNAIS', 673572, 'PALAYI PALLI DARS', 'ASHRAF AHSANI KUTTIKKATTOR', 'FATHER', 'FORM REJECTED\nNO CONDACT NUMBER', 30, 'KOZIKKODE-KODUVALLY-PALAKKUTTY', 'THAMARASSERY', '7', 'KERALA', b'0'),
(182, 'PANANCHOLA', 'KALLAN KUNNAN HOUSE\nKARUVARAKKUND\nIRINGATTIRI(PO)', '1', 1, 1078, 'MALAPPURAM', '2017-07-11 05:30:00', '1996-06-06 05:30:00', NULL, b'1', 'ABDUSSALAM', 'KALLAN KUNNAN', NULL, 'KK', 'RASHEED SAQUAFI', '0000', 'KARUVARAKKUND', '0000', '0000', 'MUHAMMED JAVAD ', 675523, 'AL HIDAYA VEETTIKKUNN', 'RASHEED SAQUAFI', 'FATHER', 'FORM REJECTED\nNO CONTCT NUMBER', 31, 'IRINGATTIRI-MOOCHIKKAL', 'NALAMBOOR', '6', 'KERALA', b'0'),
(183, 'MAMPATTA', 'TANNIKKAL .HOUSE\nMAMPATTA,POOKKOTTUM PADAM .P.O\nNILAMPUR  MALAPPURAM', '1', 1, 1079, 'MALAPPURAM', '2017-07-03 05:30:00', '1996-05-15 05:30:00', NULL, b'1', 'BASHEER .T.K', 'TANNIKKAL  HOUSE', NULL, 'T.K.', 'AP HAMZA SAQAFI MELMURI', '9447750373', 'AMARAMBALAM', '00000', '9526544755', 'MUHAMMED YASEEN .T.K.', 679332, 'MHS DHARS  MUTTHANOOR', 'AP HAMZA SAQAFI MELMURI ', 'FATHER', NULL, 32, 'KOTTAKKAL  -MANJERI  - NILAMPUR  - POOKKOTTUM PADAM', 'NILAMPUR', '09', 'KERALA', b'0'),
(184, 'KOTTAPOYIL', 'KM HOUSE ,KOTTAPOYIL\nPO.CHERU PAZHASHI\nKOLACHORI KANNUR', '1', 1, 1080, 'KANNUR', '2017-07-03 05:30:00', '1995-03-05 05:30:00', NULL, b'1', 'MARIYAM ', 'K.M. HOUSE KOTTA POYIL', NULL, 'K.M', 'A', 'A', 'MAYYIL', 'A', '9526073996', 'MUHAMMED SHAFI .K.M.', 670601, 'RIFAI MAZJID', 'ASHRAF SAQAFI P.T', 'FATHER', 'REJECTED', 33, NULL, 'THALIPPARMBU', '6', 'KERALA', b'0'),
(185, 'THOOKKUPALAM', 'VALIYAKATH   (h)\nBLOCK NO 125\nK.P KOLANI- THOOKKUPALAM\nKALLAR (P.O)\nEDUKKI', '3', 1, 1081, 'EDUKKI', '2017-07-03 05:30:00', '1983-02-02 05:30:00', 'A', b'1', 'ABDUL RAHEEM', 'VALIYAKATH (H)', NULL, 'VR', 'A', 'A', 'NEDUM KANDAM', 'A', '9846 012 882, 9495 700 512', 'SHAMEER V.R', 685552, 'PALLI DARAS', 'MT ABDUL MAJEED FAIZY MOLOOR', 'FATHER', 'REJECTED', 1, 'TOOKKUPALAM ', 'UDUMBANCHOLA', '00', 'KERALA', b'0'),
(186, 'VALLAPPUZHA', 'PULIYAN PARAMBIL. H\nMULAYANKAV .P.O.,KULUKALLOOR\nPALAKKAD \nPIN 679337\n', '1', 1, 1082, 'PALAKKAD', '2017-07-03 05:30:00', '1995-01-26 05:30:00', '0', b'1', 'USMAN', 'PULIYAN PARAMBIL', NULL, 'P', 'MOIDEEN KUTTY BAQAVI,PONMALA', '00', 'KULUKKALLOOR', '00', '7510675560', 'SULAIMAN .P', 679337, 'MARKAZUL MASWALIH,CHAPPANAGADI\n2.KARAD AJMEER GTE \n3.MIC PALLAM ', 'MOIDEEN KUTTY MUSLIYAR,PONMALA\n2. HAMZA AHSANI.THENALA\n3.SHEMEER AHSANI PAPPINIPARA\n4. SHEMEER AHSANI CHERUVANNOOR\n5.ABOOBACKER AHSANI ,VALLAPPUZHA', 'FATHER', 'REJECTED', 35, 'PATTAMBI,CHERPULASERY BUS, VALLAPPUZHA YARAM, -MULAYAN KAV\n', 'OTTAPPALAM', '13', 'KERALA', b'0'),
(187, 'CHERUKODE', 'KALLIYIL .HOUSE\nCHERUKODE, VALLAPUZHA.P.O.\nPALAKKAD,DT', '1', 1, 1083, 'PALAKKAD', '2017-07-03 05:30:00', '1995-03-09 05:30:00', '0', b'1', 'ABDUL KAHADAR', 'KALLIYIL', '153776682205124.jpg', 'K', 'ALAVI SAQAFI KOLATHOOR', '00', 'VALLAPPUZHA', '00', '8943613076', 'ILYAS.K.', 0, 'MARKAZ KHALFAN ,KOYILANDI\n2. IRSHADIYYA,KOLATHOOR\n3.MUHYISUNNA DARS . NELLISSERY', 'ALAVI SAQAFI,KOLATHOOR\n2. SULAIMAN MISBAHI, OTHALOOR\n3. ASHRAF SAQAFI PULLAVOOR', 'FATHER', 'REJECTED', 36, 'PATTAMBI- CHERPULASERY BUS -VALLAPUZHA YARAM-MULAYANKAV ROAD-ERAVATHRA', 'PATTAMBI', '07', 'KERALA', b'0'),
(188, 'MEENADATHOOR', 'THALAPARAMBIL .H\nMEENADATHOOR\nMALAPPURAM.D.T\n', '1', 1, 1084, 'MALAPPURAM', '2017-07-03 05:30:00', '1998-04-06 05:30:00', NULL, b'1', 'SAKEER AHSANI', 'THALAPARAMBIL', '153776675923024.png', 'T.P.', 'SALEEM KAMIL SAQAFI CHEMBRA', '00', 'THANALOOR', '00', '7994523168', 'MUHAMMED SHEMEEM ABDULLA .T.P.', 676307, '`TTSS DARS ALIN CHUVAD', 'SALEEM KAMIL SAQAFI', 'FATHER', 'SYS LETTER ATTACHED WITH FORM', 8, 'MEENADATHUR-THANALOOR-', 'THIRUR', '07', 'KERALA', b'0'),
(189, 'MAVOOR, PARAMMAL', 'KALATHIL HOUSE\nPARAMMAL .P.O MAVOOR ', '1', 1, 1089, 'KOZHIKODE', '2018-07-24 05:30:00', '1968-07-04 05:30:00', '', b'1', 'KADHAR KUTTY HAJI', 'KALATHIL', '153901339020317.jpg', 'K', 'SHIKHUNA AL USTHAD', '000', 'MAVOOR', '200118 SYS', '9947224313', 'ABDU RAHIMAN AL QASIMI', 673661, 'CHEEKODE, PONMUNDAM, KUNDOOR, KOLAPPURAM, DAYUBANTH', '1(MUHAMMED SAQAFI  OLAVANNA\n2(SHIKHUNA', 'FATHER', NULL, 1, 'KOZHIKODE- MAVOOR-PARAMMAL STOP', 'KOZHIKODE', '09', 'KERALA', b'0'),
(190, 'OORAGAM ,PARAKKANNI', 'PULAKKAL HOUSE\nOORAGAM,MELMURI.P.O\n', '1', 1, 1090, 'MALAPPURAM', '2018-07-24 05:30:00', '1992-09-07 05:30:00', NULL, b'1', 'ABDUL KABEER', 'PULAKKAL HOUSE', NULL, 'P', 'ABOOBACKER MISBAHI, PATTAMBI', '9946167591', 'OORAGAM', 'SYS 90804070009', '8606474112', 'SUBAIR', 676519, 'ZZ', 'ZZ', 'FATHER', NULL, 148, 'URAGAM ', 'THIROORANGADI', '08', 'KERALA', b'0'),
(191, 'PONMALA.PALLIYALIL', 'PALLIYALIL.HOUSE\nPONMALA,P.O.OTHUKKUNGAL', '1', 1, 1091, 'MALAPPURAM', '2018-07-24 05:30:00', '1996-03-09 05:30:00', NULL, b'1', 'ABDUL BASHEER', 'PULLADAN', NULL, 'P', 'P.K. MUSTHAFA SAQAFI. KOLATHUR', '00', 'PONMALA.PALLIYALIL', '90109020003', '7025848405-9400605939', 'AHAMMED MUKTHAR', 676528, '1.MA\'ADIN ACADEMY\n2. IRSHADIYYA KOLATHUR\n2.MUSTHAFA AHSANI. KULATHUR\n3.MIDLAJ FAZILY .KODAMPUZHA\n\n\n', '1.ALAVI SAQAFI .KOLATHUR', 'FATHER', ' ATTACHED ADHAR COPY\nNO FACE BOOK ID ', 39, 'PONMALA---- PALLIYALIL', 'THIRUR', '09', 'KERALA', b'0'),
(192, 'MANOOR.POOKUNN', 'KUNNATHADATHIL.{H}\nOTHUKKUNGAL .P.O\nMANOOR.', '1', 1, 1092, 'MALAPPURAM', '2018-07-24 05:30:00', '1996-05-05 05:30:00', NULL, b'1', 'ALI', 'KUNNATHADATHIL', NULL, 'K.T', 'ABDUL GAFOOR MISBAHI ,MELATOOR', '9946373313', 'OTHUKKUNGAL', 'SYS/280927', '97472150 .9526512002', 'AFSAL', 676528, 'KARINGANAD DARS\nVELLIYAMPURAM DARS\nPULIKKAPARAMB DARS\n', 'ABDUL GAFOOR MISBAHI ,MELATOOR', 'FATHER', 'ADAR COPY 4483 3205 5390\n', 149, 'KOTTAKKAL -- MALAPPURAM ROAD MANOOR', 'THIRURANGADI', '09', 'Kerala', b'0'),
(193, 'POOCHAPOYIL', 'KOTTEPPADATH,POOCHAPOYIL,\nANCHACHAVADY.P.O VELLAYUR \nKALIKAVU', '1', 1, 1093, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-09-06 05:30:00', NULL, b'1', 'KUNCHI MUHAMMED ', 'KOTTEPPADATH,', NULL, 'KP', 'ABIR SAQAFI MAPPATTUKARA', '9946439054', 'KALIKAVU', 'SSF/160702040001', '8137883089-8111903480', 'LABEEBU ', 676525, 'DARUL ISLAM AL BADRIYYA-KALIIKAVU', 'JABIR SAQAFI MAPPATTUKARA\nBASHEER AHSANI.PONMALA', 'FATHER', 'ADAR COPY\n7904 0198 6596 ', 150, 'MALAPPURAM -- VANDOOR --ANCHACHAVADY', 'NILAMBOOR', '10', 'Kerala', b'0'),
(194, 'CHERUTH', 'VATTOLA, VELLAYUR\nMALAPPURAM,POONGOD', '1', 1, 1094, 'MALAPPURAM', '2018-07-24 05:30:00', '1994-12-10 05:30:00', NULL, b'1', 'HUSAIN MUSLIYAR', 'VATTOLA H', NULL, 'V', '.JABIR SAQAFI MAPPATTUKARA', '9946439054', 'KALIKAVU', 'SSF/160705020002', '9567224401', 'MUHAMMED RILVAN.', 679327, 'DARUL ISLAM AL BADRIYYA VANDOOR', '1.JABIR SAQAFI MAPPATTUKARA\n2.BASHEER AHSANI.PONMALA', 'FATHER', 'ADAR COPY\n8424 3221 0329', 151, 'VANDOOR -- KARUTHENI-- POONGOD --CHERUTH', 'NILAMBOOR', '10', 'KERALA', b'0'),
(195, 'MALIYEKKAL,CHODHYATH', 'ATTEERI .HOUSE\nMALIYEKKAL,AMBALAKKADAVUP.O.', '1', 1, 1095, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-10-11 05:30:00', NULL, b'1', 'MUHAMMED KOYA THANGAL', 'ATTEERI  .H.', NULL, 'A', 'JABIR SAQAFI MAPPATTUKARA', '000', 'CHOKKAD', 'SSF--160707070001', '9061735400', 'SAYYID THASNEEM ', 676525, 'DARUL ISLAM AL BADTRIYYA,KALIKKAV', 'JABIR SAQAFI MAPPATTUKARA', 'FATHER', '2 PHOTO \nAND COPY NOT SUBMITE\nPLZ ENTER LAST TEACHERS NUMBER', 152, 'KALIKKAVU-- MALIYEKKAL -- PARAMMAL', 'NILAMBOOR', '10', 'KERALA', b'0'),
(196, 'CHITTAYIL', 'KALAN KADAN H,\nVELLAYOOR.P.O\nTHUVOOR', '1', 1, 1096, 'MALAPPURAM', '2018-07-24 05:30:00', '1996-04-04 05:30:00', NULL, b'1', 'RAFI', 'KALAM KADAN', NULL, 'KM', 'JABIR SAQAFI.MAPPATTUKARA', '00', 'KALIKAVU', 'SSF160705050002', '9567674549', 'MUHAMMED RASHID', 679327, 'DARUL ISLAM AL BADRIYYA, KALIKKAV', 'JABIR SAQAFI.MAPPATTUKARA\n2.BASHEER AHSANI .PONMALA', 'SUN', 'ESSENTIAL NOT SUBMITTED ', 153, 'VANDOOR -- KARUTHENI -- POONGODE -- CHITTAYIL', 'NILAMBOOR', '10', 'KERALA', b'0'),
(197, 'KARIPPOL', 'KIZHAKKEPPURATH .HOUSE\nKARIPPOL.P.O\nVALANCHERY ', '1', 1, 1097, 'MALAPPURAM', '2018-07-24 05:30:00', '1996-05-10 05:30:00', NULL, b'1', 'SAYYID MUHAMMED KOYA', 'KIZHAKKEPPURATH', NULL, 'KP', 'HAMZA AHSANI AL KAMILI-', '9846681039', 'ADHAVANAD', 'SSF-90607030007', '9037945790', 'SAYYID SAIDHALAVI KOYA', 676552, 'DHU A THU SUNNA DHARS ,KOTTKKL', 'HAMZA AHSANI AL KAMILI-', 'SUN', 'ADAR : 2143 83330 1378', 154, 'VETTICHIRA -- VALANCHERY ROUTE KARIPPOL', 'THIRUR', '08', 'KERALA', b'0'),
(198, 'OTHALUR', 'POOKATH ,HOUSE\nOTHALUR.P.O\nTHRITHALA', '1', 1, 1098, 'PALAKKAD', '2018-07-24 05:30:00', '1994-12-29 05:30:00', NULL, b'1', 'SAINUDHEEN MUSLIYAR', 'POOKATH ', NULL, 'P', 'ABDUL KHADAR MUSLIYAR PONMALA', '9447382716', 'PATTITHARA', '237335SSF ', '9846695745', 'MUHAMMED SAFUVAN', 679552, 'HIKAMIYYA', '1.ABDUL KHADAR MUSLIYAR PONMALA\n2. HASSAN SAQAFI.PALLAR\n', 'SON', 'K', 155, 'EDAPPAL -- PATTAMBI ROAD -- KOKKAD -- OTHALUR', 'PATTAMBI', '11', 'Kerala', b'0'),
(199, 'MUDIPU', '1-396,BALEPUNI\nBANTWAL.T\nDAKSHINA KANNADA.DIST-\n', '1', 1, 1099, 'DAKSHINA KANNADA', '2018-07-24 05:30:00', '1992-02-03 05:30:00', NULL, b'1', 'MUHAMMAD HAS-AN', 'M.H.HOUSE', NULL, 'B', 'UMARUL FAROOQ SAQAFI ', '9745626708', 'BALEPUNI', 'SSF - 132000228', '7403209817--9633048962', 'ZAKEER HUSAIN', 574153, '1.MAMBA UL ULOOM DARS.BEKUR. UPPALA\n\n\n', 'UMARUL FAROOQ SAQAFI ', 'SON', 'ELECTION ID CARD COPY ', 156, 'MANGLORE -- THOKKOTU --- MUDIPU', 'BANTWAL', '08', 'KARNADAGA', b'0'),
(200, 'KOTTAPPURAM', 'MOIADATH.HOUSE\nKOTTAPPURAM.P.O.\nNILESHWAR {VIA}\nKASARGOD', '1', 1, 1100, 'KASARGOD', '2018-07-24 05:30:00', '1990-04-06 05:30:00', NULL, b'1', 'HAMEED HAJI.T.M', 'MOILADATH', NULL, 'M', 'SAYYID TWAYYIBUL BUKHARI', '9946095998', 'NILESHWAR', '00', '04672282399--9744753698', 'MUHAMMED ASHRAF.', 671341, '`AL MUJAMMAUL ISLAMI, TRIKARIPUR', '1.SAYYID TWAYYIBUL BUKHARI\n2. BASHEER MISBAHI .OMACHAPUZHA', 'SON', 'ADAR -*- 6119 7691 3868', 157, 'NILESHWAR -- MARKET ROAD -- KOTTAPPURAM', 'HOSDURG', '05', 'KERALA', b'0'),
(201, 'PONNAD', 'MANGATT PARAMBAN.HOUSE\nCHERUVAZHOOR.P.O\nVAZHAKKAD', '1', 1, 1101, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-08-05 05:30:00', NULL, b'1', 'MUHAMMAD', 'MANGATT PARAMBAN', NULL, 'M.P.', NULL, NULL, 'VAZHAKKAD', NULL, '9656919238', 'SAHAD ', 673645, 'MARKAZUL HUDA DARS \nPULIKKAL', 'HAMZA SAQAFI AL KAMILY .POOKOTUR', 'SON', NULL, 158, 'KONDOTTY -- EDAVANNA PARA., ROUTE -- PONNAD', 'KONDOTTY', NULL, 'Kerala', b'0'),
(202, 'BADRIYYA NAGAR', 'FAISAL MANZIL\nS/O MOIDEEN KUTTY\nBADRIYYA NAGAR\nKASARGOD', '1', 1, 1102, 'KASARGOD', '2018-07-24 05:30:00', '1997-05-04 05:30:00', '', b'1', 'HANEEFA', 'FAISAL MANZIL', NULL, 'M', 'ABDURASHEED KAMIL SAQAFI', '9497348660', 'KUMBALA', '121000513', '9961702257', 'MUHAMMED FAISAL ', 671321, 'SIRAJU THWULABA DARS ,PERAL ,KANNUR', 'ABDURASHEED KAMIL SAQAFI', 'UNCLE', 'ELECTION ID CARD \nUVF0853051', 159, 'KASARGOD -- KUMBALA -- BADRIYYA NAGAR', 'KASARGOD', '7', 'Kerala', b'0'),
(203, 'ADIVADU', 'KALLELIL.HOUSE\nPALLARIMANGALAM .P.O\nADIVADU,KOTHAMANGALAM.\nERNAKULAM', '1', 1, 1103, 'ERNAKULAM', '2018-07-24 05:30:00', '1995-11-12 05:30:00', NULL, b'1', 'SAITHU MUHAMMED', 'KALLELIL.HOUSE', NULL, 'K', 'P.CHERIYA KOYA AL QASIMI.LAKSHADEEP', '9447529899', 'PALLARIMANGALAM', 'SYS/251339', '9544589288', 'MUHAMMED SUFAIL', 686671, '1.CM . SENTR PAIMATTAM \nMARKAZUL BUSHRA ,CHEMBARAKKI,PERUMBAVOOR', 'P.CHERIYA KOYA AL QASIMI.LAKSHADEEP', 'SON', 'K', 160, '\n\n\n\n\n\n\n\n\n\nERNAKULAM -- KOTHAMANGALAM -- BUS STANT POTHAANIKKAD -- ADIVAD \n\n', 'KOTHAMANGALAM', '8', 'Kerala', b'0'),
(204, 'KADALUNDI ', 'PANDI HOUSE\nMUDHIYAM BEACH\nVALLIKKUNN', '1', 1, 1104, 'MALAPPURAM', '2018-07-24 05:30:00', '1998-05-20 05:30:00', NULL, b'1', 'BASHEER', 'PANDI HOUSE', NULL, 'P', 'ALI AKBAR SAQAFI', '9539417399', 'VALLIKKUNN', 'ssf /370000251', '9562871161', 'MUHAMMAD BARSAK', 676312, 'BADARIYYA DARS KADAMPUZHA', 'ALI AKBAR SAQAFI', 'SON', 'og drv ', 161, 'KAKKAD -- PARAPPANAGADI -- KADALUNDI - ROUTE - USHA NURSARY', 'THIRURANGADI', '10', 'Kerala', b'0');
INSERT INTO `102_studentold` (`id`, `place`, `address`, `adm_class`, `year`, `admission_no`, `district`, `doa`, `dob`, `email`, `enabled`, `guardian_name`, `house_name`, `image_url`, `initial`, `last_teacher`, `last_teacher_mobile`, `local_body`, `membership_no`, `mobile`, `name`, `pin`, `previous_institutes`, `previous_teachers`, `relationship`, `remarks`, `roll_no`, `route_home`, `taluk`, `year_studied`, `state`, `isdeleted`) VALUES
(205, 'PUDHUSHERY KOTTA', 'PIRAKKATT KIZHAKKATHIL. PUDHUSERRY KOTTA.P.O\nPANMANA,CHAVARA, KOLLAM', '1', 1, 1105, 'KOLLAM', '2018-07-24 05:30:00', '1995-01-25 05:30:00', NULL, b'1', 'SHARAFUDHEEN', 'PIRAKKATT KIZHAKKATHIL', NULL, 'S', 'AHSAN AHSANI', '9447304707', 'PANMANA', '60103060007', '8157928240', 'MUHAMMAD SHAFI ', 691586, 'VADAKKAN MAINAGAPALLI DARS\nMISBAHUL HUDHA,  NEEDUR,THAMIZHNADU', 'ANAS AHSANI\nKADAR USTHAD\nAHSAN AHSANI', 'SON', 'K', 162, 'IDAPALLI KOTTA.N.H', 'CHAVARA', '9', 'Kerala', b'0'),
(206, 'KODINJI', 'POOCHENGAL KUNNATH .HOUSE.\nKODINJI.P.O.\nCHEMMAD \n', '1', 1, 1106, 'MALAPPURAM', '2018-07-24 05:30:00', '1994-04-10 05:30:00', NULL, b'1', 'ABDUL KAREEM', 'POOCHENGAL KUNNATH HOUSE', NULL, 'P.K.', 'ZUBAIR MADHANI  THANUR', '9744368113', 'NANNAMBRA', '9137000245', '9846530808', 'MUHAMMED SHAFEEQ.', 676309, 'ITHIYAD  DARS  PALANI', 'ZUBAIR MADHANI  THANUR', 'SON', 'NO PHOTOS \nAND PR COPY', 163, 'CHEMMAD -- KODINJI', 'THIRURANGADI', '07', 'Kerala', b'0'),
(207, 'KACHERI PADI', 'PARANCHERI HOUSE\nKACHERI PADI\nVALIYORA.P.O.\nMLP', '1', 1, 1107, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-06-28 05:30:00', NULL, b'1', 'MOHAMMED ASHRAF', 'PARANCHERI HOUSE', NULL, 'P', 'IBRAHIM AHSANI   KAVANOOR', '9946652639', 'VENGARA', '90803120001', '9895971930 -- 9544175441', 'MOHAMMED ASHARUDHEEN', 676304, 'MADARU SAQAFATHU SUNNIYYA \nCHAMRAVATTAM. THIRUR', 'IBRAHIM AHSANI   KAVANOOR', 'FATHER', 'NO PHOTHOS AND PR  COPY', 164, 'VENGARA --- KACHERI PADI', 'THIRURANGADI', '09', 'Kerala', b'0'),
(208, 'NANDI', 'PONNATTIL. HOUSE\nNANDI. KADALOOR.P.O.\nKOYLANDI \nKOZHIKKODE', '1', 1, 1108, 'KOZHIKKODE', '2018-07-24 05:30:00', '1998-01-21 05:30:00', NULL, b'1', 'HAMEED .P', 'PONNATTIL. HOUSE', NULL, 'P', 'A.P.ANVAR SWADIQ SAQAFI.', '9495142627', 'MOODADI', '81307030014', '9946271976 -- 7025784909', 'MUHAMMED SAHEER', 673529, 'AL -QAMAR \nDA-AWA COLLEGE, ', 'A.P.ANVAR SWADIQ SAQAFI.', 'SON ', 'K', 165, 'KOZHIKKODE --- KOYLANDI --- NANDI ', 'KOYLANDI', '08', 'Kerala', b'0'),
(209, 'RE ADMISSION 1274', 'RE ADMISSION 1274', '1', 1, 1109, 'RE ADMISSION 1274', '2018-07-24 05:30:00', '1995-05-08 05:30:00', NULL, b'1', 'SUBAIR HAJI', 'RE ADMISSION 1274', NULL, 'KT', 'RE ADMISSION 1274', '1274', 'RE ADMISSION 1274', '1274', '1274', 'MUHAMMED AMEEN', 1274, 'RE ADMISSION 1274', 'RE ADMISSION 1274', 'RE ADMISSION 1274', 'RE ADMISSION 1274', 166, 'RE ADMISSION 1274', 'RE ADMISSION 1274', '1274', 'Kerala', b'0'),
(210, 'POTTAMALMADU', 'MUHAMMED RAFEEQUE C SON OF MOIDEEN KUTTY MUSLIAR ,CHEMBAYIMADU (H) POTTAMMALMADU,PERUVALLOOR(PO) KONDOTTY(VIA) MALAPPURAM DISTRICT .673638 PIN', '1', 1, 1110, 'MALAPPURAM', '2018-07-24 05:30:00', '1993-10-04 05:30:00', NULL, b'1', 'MOIDEEN KUTTTY MUSLYAR', 'CHEMBAYIMADU', NULL, 'C', 'PONMALA ABDUL KADER MUSLIAR, HASSAN BAQAVI PALLAR,MUHAMMED ALI SAQAFI VENGARA,ALAVI SAQAFI KOLATHOOR', '9447382716', 'PERUVALLUR', 'SYS MEMBER. 353910', '0', 'MUHAMMED RAFEEQUE', 673638, NULL, 'JAMIA HIKAMIYYA MANJERI ', 'SON', NULL, 167, 'KADAPPADI KOLLAMCHINA POTTAMALAMADU', 'TIRURANGADI', '8', NULL, b'0'),
(211, 'THENANGAPARAMB ', 'NADUKKANDI HOUSE,THENANGA PARAMB,CHERUVADI (PO)MAVOOR (VIA) CALICUT DISTRICT, PIN 673661', '1', 1, 1111, 'MALAPPURAM', '2018-07-24 05:30:00', '1993-05-25 05:30:00', NULL, b'1', 'MUHAMMED NK ', 'NADUKKANDI', NULL, 'N K ', 'PONMALA ABDUL KADIR MUSLIAR ', '9495377633', 'KODIYATHOOR', 'MEMBER 169754', '9048908542', 'FASALU RAHMAN ', 673661, 'JAMIA HIKAMIYYA MANJERI ', 'PONMALA ABDUL KADER MUSLIAR,HASAN BAQAVI PALLAR ', 'FATHER', 'adar 411837168979', 168, 'KOTTAKKAL MANJERI AREEKKOD CHERUVADI ', 'CALICUT', '8', 'KERALA', b'0'),
(212, 'SOUTH PALLAR ', 'SOOPIL HOUSE SOUTH PALLAR THIRUNAVAYA VAIRAKOD (PO)', '1', 1, 1112, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-07-13 05:30:00', NULL, b'1', 'ALAVI S ', 'SOORPIL HOUSE ', NULL, 'S', 'PONMALA ABDUL KADIR MUSLIAR ', '9437382716', 'THIRUNAVAYA', '00000', '04941604891', 'ANSAB ', 676301, 'HIKAMIYYA', 'PONMALA ABDUL KADIR MUSLIAR ', 'FATHER', 'PHOTOS AND PRF NOT SUBMIT', 169, 'THENNALA , CHANKUVETTY, PUTHANATHANI , THIRUNAVAYA', 'THRUR', '8', 'KERALA', b'0'),
(213, 'BONDEL , KRISHNANAGAR ', 'NOUSHEER MANSIL ,KRISHNANAGAR ,MARAKKADA VILLAGE,KUNJATHBAIL POST BONDEL , MANGLORE 575015, KARNATAKA ', '1', 1, 1113, 'DAKSHINA KANNADA ', '2018-07-24 05:30:00', '1992-06-21 05:30:00', '', b'1', 'AHMMED BAVA ', 'NOWSHEER MANSIL ', NULL, 'N', 'PONMALA USTHAD ', '9447382716', 'CO ORPERATION ', '00000', '9686065640', 'SHAHUL HAMEED ', 575015, 'HIKAMIYYA', 'PONMALA USTHAD ', 'SON', 'PHOTOS AND PRF NOT SUBMIT', 170, 'MANGLORE RAILWAY STATION (BAJPE ROAD)', 'MANGLORE', '8', 'KARNATAKA ', b'0'),
(214, 'THENANGAPARAMBU ', 'KANJIRAKUZHI (H) THENANGA PARAMBU , CHERUVADI  (PO)MAVOOR (VIA )CALICUT ', '1', 1, 1114, 'CALICUT ', '2018-07-24 05:30:00', '1994-01-07 05:30:00', NULL, b'1', 'ABDUL RASAK ', 'KANJIRA KUZHI', NULL, 'KK', 'PONMALA USTHAD ', '9495377633', 'KODIYATHOOR ', '169757', '9567770783', 'MUHAMMED MIDLAJ ', 673661, 'HIKAMIYYA ', 'PONMALA USTHAD ', 'FATHER ', 'ONLY PRF', 171, 'KOTTAKKAL , MANJERI , AREEKOD , CHERUVADI ', 'CALICUT ', '8', 'Kerala', b'0'),
(215, 'MUNDEKARAD ', 'CHULLIMUNDA HOUSE , MANNARKADU (PO)MUNDEKARAD , PALAKKAD (DISTRICT)PIN 678582', '1', 1, 1115, 'PALAKKAD', '2018-07-24 05:30:00', '1994-03-06 05:30:00', NULL, b'1', 'CMS MUHAMMED MUSLIAR ', 'CHULLIMUNDA HOUSE ', NULL, 'CM', 'PONMALA USTHAD ', '9447382716', 'MANNARKAD ', '428000126', '9847431972', 'MUHAMMED SHAKIR ', 678582, 'HIKAMIYYA ', 'PONMALA USTHAD ', 'FATHER ', 'PHOTOS AND PRF NOT SUBMIT', 172, 'MANNARKAD PERINTHALMANNA VIA ', 'MANNARKAD ', '10', 'Kerala', b'0'),
(216, 'KONDANJERI ', 'HALUGUNDA (VIA) KONDANGERI ,VIRAJPET, KODAGU KARNATAKA ', '1', 1, 1116, 'KODAKU', '2018-07-24 05:30:00', '1994-07-12 05:30:00', 'PHOTOS AND PRF NOT SUBMIT', b'1', 'ABDUL AZEEZ', 'PUTHIYAPURA ', NULL, 'PA ', 'PONMALA USTHAD ', '9447382716', 'VIRAJPETTA ', '29916', '9448380846', 'JAMALUDHEEN ', 571252, 'HIKAMIYYA', 'PONMALA USTHAD ', 'FATHER ', NULL, 173, 'CALICUT, VIRAJPET, KONDANKERI', 'KODAKU ', '8', 'KARNATAKA', b'0'),
(217, 'PARAPPOOR', 'ACHU KOMBAN (H) PARAPPURUR (PO) VENGARA  MALAPPURAM  DIS ', '1', 1, 1117, 'MALAPPURAM ', '2018-07-24 05:30:00', '1996-06-25 05:30:00', NULL, b'1', 'MUHAMMED AK ', 'ACHUKOMBAN ', NULL, 'AK ', 'MUHAMMED SHAHEER AHSANI', '9947301662', 'THIROORANGADI ', '90802060053', '9605560216', 'IRSHAD ', 676304, 'MARKKASU DHAHVATHU SSUNNIYYA MAMBEETHI IQAMATHUSSUNNIYYA  DARS ', 'MUHAMMED SHAHEER AHSANI ', 'FATHER ', 'PHOTOS AND PRF NOT SUBMIT', 174, 'VENGARA ASHERI PPADI ILLIPPILAKKAL ', 'MALAPPURAM ', '8', 'Kerala', b'0'),
(218, 'PERUMANNA ', 'ELAMBULASHERI , VALAKKULAM (PO) PERUMANNA ', '1', 1, 1118, 'MALAPPURAM ', '2018-07-24 05:30:00', '1993-04-21 05:30:00', NULL, b'1', 'ABDURAHMAN ', 'ELAMBULASHERI ', NULL, 'E', 'N SHARAFUDHEEN SAQAFI ', '9447393004', 'PERUMANNA ', '90107130011', '9747323982', 'NOORUDHEEN ', 676502, 'BADRUL HUDHA DARS KOLAPPURAM ', 'SHARAFUDEEN SAQAFI ', 'FATHER ', 'PHOTOS AND PRF NOT SUBMIT', 175, 'KOYICHINA TO PERUMANNA ', 'THIRUR', '8', 'Kerala', b'0'),
(219, 'MUNDEKKARAD', 'CHULLI MUNDA.HOUSE\nMANNARKKAD.P.O\nPALAKKAD\nMUNDEKKARAD', '1', 1, 1119, 'PALAKKAD', '2018-07-24 05:30:00', '1992-09-10 05:30:00', NULL, b'1', 'CMS.MUHAMMED MUSLIYAR', 'CHULLIMUNDA .HOUSE', NULL, 'C', 'ABDUL KADAR MUSLIYAR. PONMALA.', '9447382716', 'MANNARKKAD', 'NIL ', '9847431972', 'MUHAMMED THWAYYIB ', 678582, 'HIKAMIYYA', 'ABDUL KADAR MUSLIYAR. PONMALA.\nHASSAN SAQAFI .PALLAR', 'SON', 'NO PRF\nNO PHOTOS ', 176, 'MANNARKKAD --- PERINTHALMANNA [VIA]', 'MANNARKKAD', NULL, 'Kerala', b'0'),
(220, 'KAREPARAMB ', 'MUHAMMED UBAIDULLAH  M  KAREPARAMB PAYYANAD(PO) MANJERI ', '1', 1, 1120, 'MALAPPURAM', '2018-07-24 05:30:00', '1998-08-30 05:30:00', NULL, b'1', 'ABDUSSALAM M ', 'MANNAYIL ', NULL, 'M', 'PONMALA USTHAD', '9447382716', 'MUNICIPALITY ', 'CIRCLE PRESIDENT 361407', '8086370834', 'MUHAMMED UBAIDULLAH ', 676122, 'HIKAMIYYA ', 'PONMALA USTHAD ', 'FATHER ', 'adar 495931078040', 177, 'CHANKUVETTY , MANJERI , KAREPARAMB', 'ERNNAD ', '8', 'Kerala', b'0'),
(221, 'KOMBAM ', 'KALAMBAN HOUSE KOMBAM KODAKKAD PO', '1', 1, 1121, 'PALAKKAD', '2018-07-24 05:30:00', '1995-02-01 05:30:00', NULL, b'1', 'MUHYADHEEN HAJI ', 'KALAMBAN ', NULL, 'K', 'KT ABOOBAKKER FAISY', '9744368608', 'KOTTOPADAM ', '216781', '8304968445', 'ABDUL RASAK ', 678583, 'MARKASUL HIDAYA KOMBAM ', 'ALI AL HASANI MUKKAM', 'FATHER', 'ALL ARE AVAILABLE', 178, 'PERINTHALMANNA , MANNARKAD KOMBAM ', 'MANNARKAD ', '8', 'KERALA', b'0'),
(222, 'VENGARA ', 'SHAHID IBRAHEEM ,PALLIYALI , KUTTOOR MADAMCHINA \n', '1', 1, 1122, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-06-20 05:30:00', NULL, b'1', 'HUSSAIN', 'PALLIYALI HOUSE ', NULL, 'V', 'N SHARAFUDHEEN SAQAFI ', '9847119570', 'THIRURANGADI ', '90803080023.', '8129085351', 'SHAHID IBRAHEEM ', 676306, 'BADRUL HUDHA DARS KOLAPPURAM ', 'N SHARAFUDHEEN SAQAFI KUTTIPURAM ', 'FATHER', 'NO PHOTOS AND NO PRF ARE AVAILABLE', 179, 'KOLAPPURAM KODUVAYOOR ', 'MALAPPURAM ', '9', 'Kerala', b'0'),
(223, 'PATHINARUNGAL ', 'AMEER PULIKKAL (H)PATHINARUNGAL (PO)PANTHARANGADI MALAPPURAM DIS ', '1', 1, 1123, 'MALAPPURAM', '2018-07-24 05:30:00', '1994-12-10 05:30:00', NULL, b'1', 'MUHAMMED ', 'PULIKKAL ', NULL, 'V ', 'N SHARAFUDHEEN SAQAFI', '9447393004', 'THIRURNGADI ', '90309060007', '9567992112', 'AMEER ', 676306, 'BADRUL HUDHA DARS KOLAPPURAM', 'N SHARAFUDHEEEN SAQAFI KUTTIPPURAM ', 'FATHER ', 'NO PHOTOS AND NO PRF ARE AVAILABLE', 180, 'PARAPPANANGADI ', 'MALAPPURAM ', '8', 'Kerala', b'0'),
(224, 'VENGARA', 'PULLIKKUNNAL HOUSE KACHERIPARMB (PO) ARANELLUR (VIA) MANNARKAD , PALAKKAD ', '1', 1, 1124, 'PALAKKAD', '2018-07-24 05:30:00', '1998-11-20 05:30:00', NULL, b'1', 'SALEENA', 'PULLIKKUNNAL ', NULL, 'PK', 'SAIFUDHEEN KAMIL SAQAFI PAYYANADAM', '9847610559', 'KOTTOPADAM ', '110305080020', '9539862230', 'MUHAMMED SHANIF ', 678583, 'ISHAHATHUSSUNNA DARS KOTTOPADAM ', 'SAIFUDHEEN KAMIL SAQAFI PAYYANADAM ', 'MOTHER ', 'NO PHOTOS AND NO PRF ARE AVAILABLE', 181, 'VENGARA MELATTOOR MANNARKAD ', 'MANNARKAD ', '8', 'Kerala', b'0'),
(225, 'PALLIKKUNN ', 'NALAKATH HOUSE  PALLIKKUNN PO  \nKUMARAMPUTHOOR ', '1', 1, 1125, 'PALAKKAD ', '2018-07-24 05:30:00', '1992-02-06 05:30:00', NULL, b'1', 'ASIYA', 'NALAKATH ', NULL, 'N ', 'SAINUDHEEN KAMIL SAQAFI PAYYANADAM ', '9847610559', 'KUMARAMPUTHOOR ', '110306020035', '9847610559', 'MUHAMMED SHAREEF ', 678583, 'ISHAHATHUSSUNNA DARS KOTTOPADAM ', 'SAINUDHEEN KAMIL SAQAFI PAYYANADAM ', 'ABDUL KAREEM DHARIMI ', 'ALL ARE AVAILABLE ', 182, 'MANJERI MANNARKKAD ', 'MANNARKKAD ', '8', 'Kerala', b'0'),
(226, 'THIRUVIYAMKKUNNU', 'PUTHUKKUDI (H)THIRUVIYAMKUNNU  (P0) ALNALLOOR MANNARKKAD  PALAKKAD', '1', 1, 1126, 'PALAKKAD', '2018-07-24 05:30:00', '1998-02-19 05:30:00', 'NIL', b'1', 'ASIYA', 'PUTHUKKIDI', NULL, 'P', 'ZAINUDHEEN KAMIL SAQAFI PAYYANADAM', '9847610559', 'KOTTOPPADAM', '0', '9847610559', 'SAHEER', 678583, 'ISHAATHUSSUNNA DARS ', 'ZAINUDHEEN KAMIL SAQAFI PAYYANADAM', 'MOTHER', 'PRF AND PHOTO ARE  NOT AVAILABLE', 183, 'MANNARKKAD  MANJERY  KOTTOPPADAM  THIRUVIYAMKKUNNU', 'MANNARKKAD', '8  ', 'Kerala', b'0'),
(227, 'SOUTH PALLAR', 'NIZAMUDHEEN CV CHETTIYAM VALAPPIL (H) POKKAR HAJI VAIRANKODE ( PO) SOUTE PALLAR THIRUNAMVAYA`', '1', 1, 1127, 'MALAPPURAM ', '2018-07-24 05:30:00', '1994-09-30 05:30:00', NULL, b'1', 'POKKAR HAJI ', 'CHETTIYAM VALAPPIL ', NULL, 'CV ', 'MUHAMMED AHSANI KODOOR', '9847311967', 'THIRUNAVAYA', '90608040024', '9142423116', 'NIZAMUDHEEN ', 676301, 'MULHIRUSSUNNA DARS OMACHAPPUZHA ', 'MUHAMMED AHSANI KODOOR ', 'SON ', 'PRF AND PHOTO ARE NOT AVAILABLE ', 184, 'THIRUR THIRUNAVAYA SOUTH PALLAR ', 'THIRUR', '9', 'Kerala', b'0'),
(228, 'PERINTHALMANNA ', 'IRANIKKAL (H) MUNDAKKODE PAYAMALLOOR  (PO)  MALAPPURAM  ', '1', 1, 1128, 'MALAPPURAM ', '2018-07-24 05:30:00', '1993-05-03 05:30:00', NULL, b'1', 'ABDHUL KAREEM ', 'IRANIKKAL', NULL, 'EK', 'HAFIZ ABDHUL MAJEED AHSANI CHANGANI ', '8607313313', 'KODOOR PANCHAYATH ', 'NIL', '9567052705', 'MASHOOD ', 676506, 'ZAINIYYA DARS KALIYATTU MUKKU ', 'HAFIZ ABDHUL MAJEED AHSANI CHANGANI ', 'FATHER', 'PRF AND PHOTO ARE NOT AVAILABLE ', 185, 'MALAPPURAM KUTTILANGADI  MUNDAKKODE ', 'PERINTHALMANNA ', '7', 'Kerala', b'0'),
(229, 'V K MAD ', 'PULIKKODAN (H)  V K MAD  CHEROOR  ', '1', 1, 1129, 'MALAPPURAM ', '2018-07-24 05:30:00', '1998-02-03 05:30:00', 'NIL', b'1', 'MAMMUDHU HAJI ', 'PULIKKODAN (H)', NULL, 'P', 'ABDHUL MAJEED AHSANI CHANGANI ', '8893700800', 'KANNAMANGALAM ', '90807030003', '0494 2451228', 'UNAIS ', 676304, 'MAJMAU THAZKIYYATHUL ISLAMIYYA VETTICHIRA ', 'MALIYEKKAL SULAIMAN SAQAFI ', 'FATHER ', 'PRF AND PHOTO ARE NOT AVAILABLE ', 186, 'VENGARA CHEROOR  V K MAD ', 'THIROORANGADI', '7 ', 'Kerala', b'0'),
(230, 'KOPPAM ', 'AKKAPPARAMBL (H) PULASSHERY (PO)  KOPPAM  PATTAMBI PALAKKAD  ', '1', 1, 1130, 'PALAKKAD ', '2018-07-24 05:30:00', '1995-11-13 05:30:00', 'NIL ', b'1', 'MOIDHEEN KUTTY AP ', 'AKKAPPARAMBIL ', NULL, 'AP', 'MUHYUDHEEN SAQAFI ', '9946657081', 'KOPPAM  ', '234114', '9645242028', 'MUHAMMED SHUHAOIB ', 679307, 'MAMBAUL HUDHA ISLAMIC ACCADAMY KECHERY ', 'MUHAMMED FAROOQUE NAEEMI KOLLAM ', 'FATHER ', 'PRF AND PHOTO ARE NOT AVAILABLE ', 187, 'KOPPAM MULAYAMKKAVU ROAD  ', 'PATTAMBI ', '7 ', 'Kerala', b'0'),
(231, 'KUTTIKKAD ', 'KATTUMUNDA (H) KUTTIKKAD MOOTHEDAM (PO)  NILAMBOOR  MALAPPURAM  ', '1', 1, 1131, 'MALAPPURAM ', '2018-07-24 05:30:00', '1995-06-10 05:30:00', 'NIL ', b'1', 'MARHOOM ABDHUL HAMEED BAQAVI ALKAMILI ', 'KATTUMUNDA (H)   KUTTIKKAD ', NULL, 'K A ', 'ZAID MUHAMMED SAQAFI ', 'NIL ', 'MOOTHEDAM ', '160803070001         ', '8593809492 ', 'HABEEB ', 679331, 'HIDHAYA ISLAMIC DAHWA COLLEGE  ', 'ZAID MUHAMMED SAQAFI ', 'FATHER ', 'PRF AND PHOTO ARE NOT AVAILABLE  ', 188, 'KOTTAKKAL  MANJERY  EDAKKARA  MOOTHEDAM  ', 'NILAMBOOR ', '6', 'Kerala', b'0'),
(232, 'KALLACHAL ', 'THOHA NOUFAL N KALLACHAL PULPATTA (PO) MANJERI MALAPPURAM (DIS) ', '1', 1, 1132, 'MALAPPURAM', '2018-07-24 05:30:00', '1993-04-29 05:30:00', 'NIL ', b'1', 'HAIDAR MUSLIYAR N', 'NARIPPTTA (H)', NULL, 'N', 'DHEVARSHOLA USTHAD', '9489273715', 'PULPATTA', '160408080041', '9605648644', 'THOHA NOUFAL ', 676123, 'PADANDARA MARKAZ', 'DHEVERSHOLA ABDUSSALAM (MU)', 'FATHER', 'PRF AND PHOTO ARE NOT AVAILABLE ', 189, 'MANJERI PULPATTA KALLACHAL ', 'EARANAD', '9', 'Kerala', b'0'),
(233, 'THODUKKOOTHU PPARAMB  PANAKKAD ', 'ASHIF RAHMAN KC SON OF ABDU KC KURUNIYYAN CHEERATH (H) PO CHAKKUNGAL  MATTATHOOR MALAPPURAM ', '1', 1, 1133, 'MALAPPURAM ', '2018-07-24 05:30:00', '1996-06-14 05:30:00', NULL, b'1', 'ABDU KC ', 'KURUNIYAN CHEERATH (HOUSE)', NULL, 'KC', 'ABDULLA AHSANI ', '9847810257', 'OTHUKKUNGAL ', 'NIL', '8113018079', 'ASHIF RAHMAN ', 676519, 'PALLI DARS ', 'ABDULLA AHSANI PATTARKADAV', 'FATHER ', 'PRF AND PHOTO ARE NOT AVAILABLE ', 190, 'MATTATHOOR PANAKKAD ', 'TIRURANGADI', '8', 'Kerala', b'0'),
(234, 'THACHAKKODE', 'VARIKKOTTIL THACHAKKODE ELAVAMPADAM PALAKKAD', '1', 1, 1134, 'PALAKKAD ', '2018-07-24 05:30:00', '1993-05-31 05:30:00', 'nil', b'1', 'ABBAS VK', 'VARIKKOTTIL ', NULL, 'VA', 'dhevarshola usthad ', '9489273715', 'KIYAKKANCHERI ', '110105130004', '7560966046', 'HUSSAIN ', 678684, 'PADANTHARA MARKAZ ', 'DHEVARSHOLA  USTHAD ', 'FATHER ', 'PRF AND PHOTO ARE NOT AVAILABLE ', 191, 'THACHAKKODE ', 'ALATHOOR ', '8', 'Kerala', b'0'),
(235, 'ANSAR NAGAR TEKKUMALA', 'MARKASSERI (H) MELMURI (PO) THKKUMALA  KOPPAM PALAKKAD', '1', 1, 1135, 'PALAKKAD ', '2018-07-24 05:30:00', '1997-09-25 05:30:00', 'NIL', b'1', 'IBRAHIM M', 'MARKASSERI (H) ', NULL, 'M', 'MUSTHAFA AHSANI  KOLATUR ', '9747363870', 'KOPPAM ', '110801010008', '8891948797', 'MUHAMMED SHABEEB ', 679307, 'IRSHADIYYA DHWA COLLEGE KOLATHUR ', 'ALAVI SAQAFI KOLATUR', 'FATHER', 'PRF AND PHOTO ARE NOT AVAILABLE ', 192, 'KOPPAM TEKKUMMALA ANSAR NAGAR ', 'OTTAPPALAM ', '9', 'Kerala', b'0'),
(236, 'OTUKKUGAL TEKKUM MURI ', 'MATTIL ( H ) OTHUKKUGAL MATTATUR (PO) ', '1', 1, 1136, 'MALAPPURAM ', '2018-07-24 05:30:00', '1997-09-25 05:30:00', 'NIL ', b'1', 'ALI', 'MATTIL ', NULL, 'M', 'MUHAMMAD AHSANI KODOOR ', '9847311967', 'OTUKKUGAL ', '90105050013', '7736571960', 'ANVAR SWADIQUE ', 676528, 'MULHIRU SUNNA DARS OMACHAPPUZA ', 'MUHAMMAD AHSANI KODOOR ', ' FATHER', 'PRF AND PHOTO ARE NOT AVAILABLE ', 193, 'OTUKKUGAL TEKKUMMURI ', 'THIRURAGADI ', '10', 'Kerala', b'0'),
(237, 'MATTATHOOR THODUKKOOTHU PARAMBU', 'MUHAMMED FAISAL K , KODASSERI (H) ', '1', 1, 1137, 'MALAPPURAM ', '2018-07-24 05:30:00', '1992-06-20 05:30:00', NULL, b'1', 'MOIDEEN MUSLIAR ', 'KODASSERI', NULL, 'K ', 'MUHAMMED AHSANI KODOOR', 'NIL', 'OTHUKKUNGAL ', '00000', '9946096965', 'MUHAMMED FAISAL ', 676528, 'MULHIRUSSUNNA DARS OMACHAPPUYA ', 'MUHAMMED AHSANI KODOOR ', 'FATHER', 'ALL ARE AVAILABLE', 194, 'OTHUKKUNGAL THODUKKOOTHUPARAMB ', 'TIRURANGADI ', '10', 'Kerala', b'0'),
(238, 'KULATHAKKARA', 'MELE PUTHIYEDATH (H) PUTHOOR (PO) ', '1', 1, 1138, 'CALICUT ', '2018-07-24 05:30:00', '1994-11-25 05:30:00', 'NIL', b'1', 'IBRAHIM SAQAFI ', 'MELE PUTHIYEDATH ', NULL, 'KK', 'HAMSA MUSLIAR MANJAPPATTA', '9446633918', 'OMASSERI', '80704080028', '9645795231', 'MUHAMMED SHAHID ', 673572, 'HIDAYA DAHWA COLLEGE ', 'NTK BAQAVI AVILORA ', 'FATHER ', 'ALL ARE AVAILABLE ', 195, 'CALICUT KODUVALLI KULATHARAKKARA', 'KODUVALLI ', '8', 'Kerala', b'0'),
(239, 'PORNGATOOR ', 'KUMBALATHIL VAVAD KODUVALLI CALICUT ', '1', 1, 1139, 'CALICUT ', '2018-07-24 05:30:00', '1996-07-19 05:30:00', 'NIL', b'1', 'ABDUL KAREEM ', 'KUMBALATHIL', NULL, 'K', 'HAFIZ  JAHFAR AMEEN SAQAFI ', '9539677192', 'KODUVALLI ', '80702010021', '9747264172', 'JAHFAR SADIQUE ', 673572, 'PONMALA PALLIPADI DARS ', 'C', 'FATHER', 'ALL ARE READY', 196, 'PORNGATOOR ', 'CALICUT ', '9', 'Kerala', b'0'),
(240, 'MOOLIPPARAMB ', 'THAYATHIL HOUSE  PERINGOD (po) PALAKKAD ', '1', 1, 1140, 'PALAKKAD ', '2018-07-24 05:30:00', '1997-02-15 05:30:00', 'NIL', b'1', 'AKBAR ', 'THAYATHIL ', NULL, 'A', 'HABID AHSANI ', '9846646960', 'KOOTANAD ', '00000', '9633382543', 'MUHAMMED HARIS ', 679535, 'PUNNAYOOR JUMA MASJID ', 'HABID AHSANI', 'SON ', 'PHOTO AND PRF IS NOT AVAILABLE', 197, 'PERINGOD CHALUSSERI VIA ', 'THALAPPILLI ', '8', 'Kerala', b'0'),
(241, 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', '1', 1, 1141, 'REMOVED FROM THE REGISTER', '2018-07-24 05:30:00', '1993-04-10 05:30:00', NULL, b'1', 'KUNJIRAYIN HAJI', 'REMOVED FROM THE REGISTER', NULL, 'K', 'REMOVED FROM THE REGISTER', '00', 'REMOVED FROM THE REGISTER', '00', '123', 'MUHAMMED YASEEN ', 123, 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', 198, 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', '0', 'REMOVED FROM THE REGISTER', b'0'),
(242, 'CHERUKOD ', 'SALSABEEL K KANJIRAPPALLI (H) CHERUKOD CHATHANGOTTUPPURAM (PO)  VANDOOR VIA ', '1', 1, 1142, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-06-16 05:30:00', 'NIL', b'1', 'MUHAMMED ', 'KANJIRAPPALLI', NULL, 'K ', 'SAYYED HAIDROOS THANGAL ', '9895341265', 'POROOR', '160701100022', '8136860857', 'SALSABEEL', 679328, 'IRSHADUL ANAM DARS ELANKOOR', 'SAYYED HAIDROOS MUTHUKKOYA THANGAL', 'SON', 'ALL ARE READY', 199, 'VANDOOR, CHERUKOD, MALAKKAL', 'NILAMBOOR', '10', 'Kerala', b'0'),
(243, 'KUYIPPURAM ', 'KODALIKKADAN (H) OTUKKUGAL KUYIPPURAM ', '1', 1, 1143, 'MALAPPURAM', '2018-07-24 05:30:00', '1994-11-24 05:30:00', 'NIL', b'1', 'BEERAN KUTTY', 'KODALIKKADAN', NULL, 'K K ', 'SHAMSUDHEEN SAQAFI', '9142842510', 'PARAVOOR ', '90105070020', '9656324787', 'AYYOOB ', 676304, 'IRIGALLUR DARS', 'SHAMSUDHEEN SAQAFI PARAMBIL EEDIKA', 'SON', ' PHOTOS AND PRF ARE NOT AVAILABLE', 200, 'KUYIPPURAM ', 'THIRURAGADI ', '8', 'Kerala', b'0'),
(244, 'REMOVED FROM REGISTRATION', 'REMOVED FROM REGISTRATION', '1', 1, 1144, 'REMOVED FROM REGISTRATION', '2018-07-24 05:30:00', '1995-08-09 05:30:00', 'NIL', b'1', 'ALAVI KUTTY', 'REMOVED FROM REGISTRATION ', NULL, 'K', 'REMOVED FROM REGISTRATION', '000', 'REMOVED FROM REGISTRATION', '000', '000', 'HAFIZ MUHAMMAD JABIR ', 0, 'REMOVED FROM REGISTRATION', 'REMOVED FROM REGISTRATION', 'REMOVED FROM REGISTRATION', 'REMOVED FROM REGISTRATION', 201, 'REMOVED FROM  REGISTRATION', 'REMOVED FROM REGISTRATION', '00', 'Kerala', b'0'),
(245, 'AYYAYA', 'PEROLI (H) OZHUR (PO) AYYAYA MALAPPURAM ', '1', 1, 1145, 'MALAPPURAM', '2018-07-24 05:30:00', '1995-01-29 05:30:00', 'NIL', b'1', 'KUNHALI ', 'PEROLI', NULL, 'P', 'MALIYEKKAL SULAIMAN SAQAFI ', '00', 'OZHUR', 'SSF 90702080002', '8592038128', 'MUHAMMED AMEEN ', 676307, 'MAJMA-U  THAZKIYATHUL ISLAMIYYA VETTICHIRA ', 'MALIYEKKAL SULAIMAN SAQAFI ', 'SON', 'PHOTOS AND PRF ARE NOT AVAILABLE', 202, 'VENNIYOOR THEYYALA CHURAGARA', 'THIRUR', '9', 'Kerala', b'0'),
(246, 'OLAVANNA', 'ANVAR MANZIL SADHA PUNJIRIYL (H0) KOLATHARA (PO) KANNATTIKKULAM CALICUT', '1', 1, 1146, 'CALICUT ', '2018-07-24 05:30:00', '1997-08-13 05:30:00', 'NIL', b'1', 'BARSAN KP', 'THACHARAKKAL (H) ', NULL, 'KP', 'CK ABOOBAKKAR MUSLIYAR ', '9447321294', ' CALICUT COPRATION ', '80107040035', '9656561772', 'SUHAIL MUQTHAR ', 673007, 'MAHI DARUL HIKAM DARS ', 'CT ABOOBAKKAR MUSLIYAR', 'SON', 'OK', 203, 'FEROKE OLAVANNA MALAYENKANDI ', 'FEROKE', '11', 'Kerala', b'0'),
(247, 'ALANALLOOR', 'CHATHOLI ALANALLOOR MANNARAKKAD ', '1', 1, 1147, 'PALAKKAD', '2018-07-24 05:30:00', '1994-09-18 05:30:00', 'NIL', b'1', 'ABOOBAKKAR C ', 'CHATHOLI ', NULL, 'C ', 'PONMALA USTHD', '9447', 'ALANALLOOR', '000', '9645634524', 'RASHID ', 678601, 'HIKMIYYA MANJERI ', 'PONMALA USTHAD', 'SON ', 'PHOTOS AND PRF ARE NOT AVAILEBLE', 204, 'MANJERI MELATTOOR MANNARAKKAD ALANALLOOR ', 'MANNARAKKAD', '9', 'Kerala', b'0'),
(248, 'DURGALAPU HOUSE', 'SUMAYYA MANZIL,DURGALAPU HOUSE BALEPUNI POST AND VILLAGE BANTEWAL THALOOK', '1', 1, 1148, 'DAKSHINAKANNADA', '2018-07-24 05:30:00', '1994-11-14 05:30:00', 'NIL', b'1', 'USMAN', 'DARGALAPU HOUSE ', NULL, 'DU', 'PONMALA USTHAD', '9447', 'BALEPUNI', '107994', '8550880772', 'MUHYADHEEN', 574153, 'HIKAMIYYA ', 'PONMALA USTHAD ', 'SON', 'PHOTOS AND PRF ARE NOT SUBMITTED', 205, 'MANGALORE RAILWAY STATION MUDUNGAR VILLA ROAD ', 'BANTWAL', '8', 'KARNATAKA', b'0'),
(249, 'KUKKAJE THOTA', 'KUKKAJE THOTA HOUSE IRA VILLAGE', '1', 1, 1149, 'DAKSHINA KANNADA', '2018-07-24 05:30:00', '1993-12-20 05:30:00', 'NIL', b'1', 'T.UMAR', 'THOTA HOUSE', NULL, 'T ', 'PONMALA USTHAD', '000000', 'IRA', '05496', '9481961738', 'ABOOBAKKER SIDHEEQ', 574323, 'HIKAMIYYA', 'PO0NMALA USTHAD', 'SON', 'PHOTOS AND PRF ARE NOT SUBMITTED', 206, 'MANGLORE RAILWAY KUKKAJE', 'BANTWALA', '9', 'KARNATAKA', b'0'),
(250, 'MEMATTUPARA', 'MEMATTUPARA KANNAMANGALAM ', '1', 1, 1150, 'MALAPPURAM ', '2018-07-24 05:30:00', '1946-05-14 05:30:00', 'NIL', b'1', 'AVARAN EP', 'EDAKKAPARAMBAN', NULL, 'EP', 'UMAR SAQAFI AL KAMILI ', '98959894845', 'KANNAMANGALAM', '90801060011', '9061479230', 'ISMAYEEL ', 676304, 'VEERAMANGALAM DARS', 'UMAR KAMILI SAQAFI MELATOOR', 'SON', 'PHOTOS AND PRF ARE NOT SUBMITTED', 207, 'MEMATTUPARA', 'TIRURANGADI', '9', 'Kerala', b'0'),
(251, 'GULF BASAR, PARAMBIL BASAR', 'THEKKE KAYAKKALI  GULF BASAR  PARAMBIL BASAR', '1', 1, 1151, 'CALICUT', '2018-07-24 05:30:00', '1994-08-19 05:30:00', 'NIL', b'1', 'HUSSAIN MUSLIAR EK', 'THEKKE KAYAKKALI ', NULL, 'EK ', 'ABDUSALAM MUSLIAR DEVARSHOLA', '9489273715', 'KURUVATOOR PANJAYATH', '0000', '9048590690', 'MUHAMMED USMAN AL HAROON ', 673012, 'PADANTHARA MARKAZ', 'ABDUSALAM NMUSLIYAR DEVARSHOLA', 'FATHER ', 'PHOTOS AND PRF ARE NOT SUBMITTED', 208, 'CALICUT PARAMBIL BASAR GULF BASAR', 'ELATHOOR', '8', 'Kerala', b'0'),
(252, 'KOLATHOOR STATION PADI', 'MAKANDAN (H) KOLATHOOR', '1', 1, 1152, 'MALAPPURAM', '2018-07-24 05:30:00', '1993-05-20 05:30:00', 'NIL', b'1', 'HAMSA MUALIAR', 'MAKKANDAN', NULL, 'M ', 'ALI BAQAVI ATTUPURAM', 'MUHAMMED FAISAL AHSANI ', 'MOORKANAD', '284571', '9526601653', 'MUHAMMED ANSAR ', 679338, 'JAMIA NUSRATHUL ISLAM RANDATHANI ', 'ALI BAQAVI ATTUPURAM', 'SON', 'PHOTOS AND PRF ARE NOT SUBMITTED', 209, 'POOKIPARAMB VALANJERI KOLATHOOR', 'PERINTHALMANNA', '7', 'Kerala', b'0'),
(253, 'MANCHADI', 'KUNNATH HOUSE MANJADI VENTHOOR ', '1', 1, 1153, 'THRISSUR', '2018-07-24 05:30:00', '1993-03-02 05:30:00', 'NIL', b'1', 'MAKKAR', 'KUNNATH HOUSE', NULL, 'M', 'NISAR AHSANI MOOVATTUPPUZHA', '9446766418', 'PAYAYANTHOOR', '140204040005', '9809411631', 'SHAREEF ', 680587, 'NUSRATHUL ISLAM  NELLIKKUNN', 'NISAR AHSANI MOOVATTUPPUZHA ', 'SON', 'PHOTO AND PRF ARE NOT AVAILABLE', 210, 'PATTAMBI OTTAPPALAM PAYAYANTHOOR VENTHOOR ', 'THALAPPILLI', '9', 'Kerala', b'0'),
(254, 'ATTATHODE ', 'METHUKAYIL (H)  (PO) PANANGATOOR  TANNUR', '1', 1, 1154, 'MALAPPURAM ', '2018-07-24 05:30:00', '1993-05-25 05:30:00', 'NIL', b'1', 'MUHAMMED BAVA  M', 'METHUKAYIL ', NULL, 'M', 'SAYYED ABDULLA HABEEB AL BUKHARI KADALUNDI', '9961188313', 'THANUR', '35900057', '7736107300', 'RAHOOF ', 676302, 'SINCIERE ISLAMIC ACADEMY ', 'SAYYED ABDULLA HABEEB AL BUKHARI KADALUNDI', 'SON ', 'ONLY ONE PHOTO AND PRF ARE AVAILABLE ', 211, 'THENNALA THEYYALA VIA THANUR ', 'TIRUR', '8', 'Kerala', b'0'),
(255, 'PADINJARATHARA ', 'THAZHEKKANDY HOUSE PADINJARANTHARA WAYANAD', '1', 1, 1155, 'WAYANAD', '2018-07-24 05:30:00', '1995-12-03 05:30:00', 'NIL', b'1', 'MOIDUTTY MUSLIAR', 'THAZHEKKANDY', NULL, 'TK', 'HAFIZ JAHFAR AMEEN SAQAFI ', '9539677192', 'PADINJARAHTARA', '151798', '9526334734', 'MANSOOR ', 673575, 'CM CENTER MADAVOOR ', 'HAFIZ JAHFAR AMEEN SAQAFI ', 'SON ', 'NO PHOTOS AND PRF ARE AVAILABE', 212, 'KALPATTA PADINJARATHARA ', 'VYTHIRI ', '8', 'Kerala', b'0'),
(256, 'CHELAKKUNNU', 'SHAREEF P PARAMMAL HOUSE UPPATY  PO, CHELAKKUNNU NILGIRI , TAMIL NADU ', '1', 1, 1156, 'NIGIRI', '2018-07-24 05:30:00', '1996-04-24 05:30:00', 'NIL', b'1', 'MOIDEEN P ', 'PARAMMAL', NULL, 'P', 'SHAJAHAN SAQAFI ', '8086984671', 'NEKKIYALAM ', '000', '8086350826', 'SHAREEF ', 643241, 'AL AZHAR ISLAMIC EDUCATIONAL CENTRE EDAKKARA ', 'PT MUHAMMED FAIZY', 'SON', 'PHOTOS AND PRF ARE NOT SUBMITTED', 213, 'UPPATY PANDALLUR NILGIRI DIS ', 'PANDALLUR', '9', 'Kerala', b'0'),
(257, 'ALIKE ', 'ALIKKE MADIYALA (H) ALIKKE PK BUND VAL THALOOK ', '1', 1, 1157, 'DHAKSHINA KARNADAKA', '2018-07-24 05:30:00', '1995-03-08 05:30:00', 'NIL', b'1', 'KP ABOOBAKKAR', 'ALIKE MADIYALA', NULL, 'A ', 'HAFIZ AHMAD SAQAFI KARNADAKA', '8660953535', 'ALIKE', 'KARNADAKA STAT SYS', '000', 'AHMAD RILWAN ', 574243, 'MUHYISSUNNA DARS UKKUDA ', 'HAFIZ AHMAD SHAREEF KAMIL SAQAFI ', 'SON ', 'PHOTOS AND PRF NOT AVAILBLE', 214, 'KASRGOD REILVE STESHON VITTILA ALIKE ', 'BUNDVAL', '8', 'TAKSHINA KARNADAKA', b'0'),
(258, 'REMOVED FROM THE REGISTER', '`REMOVED FROM THE REGISTER', '1', 1, 1158, 'REMOVED FROM THE REGISTER', '2018-07-24 05:30:00', '1992-07-18 05:30:00', NULL, b'1', 'MOIDEEN KUTY ', 'REMOVED FROM THE REGISTER', NULL, 'M', 'REMOVED FROM THE REGISTER', '00', 'REMOVED FROM THE REGISTER', '00', '9486953792', 'SAIDALI', 0, 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', NULL, 215, 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', '00', 'Kerala', b'0'),
(259, 'NADUMPOZHIL', 'MADATHIL THAZE HOUSE\nKUZHIKKALLUR.P.O\nNARAKPODE', '1', 1, 1159, 'KOZHIKODE', '2018-07-24 05:30:00', '1996-06-10 05:30:00', NULL, b'1', 'ABOOBACKER M.C', 'MADATHIL THAZHE . HOUSE', NULL, 'M.C.', 'SHARFUDEEN SAQAFI  KUTTIPPURAM', '9447393004', 'KOZHIKKALLUR', '81306050024', '9495481737', 'ALI AKBAR ', 673524, 'BADARUL HUDA  DARS   KOLAPPURAM', 'SHARFUDEEN SAQAFI  KUTTIPPURAM', 'SON', 'K', 216, 'KOZHIKODE --- KOYILANDI --- NARAKODE', 'LOYLANDI', '09', 'Kerala', b'0'),
(260, 'UNNIYETHI PARAMBU', 'REMOVED FROM THE REGISTER', '1', 1, 1160, 'REMOVED FROM THE REGISTER', '2018-07-24 05:30:00', '1994-11-01 05:30:00', NULL, b'1', 'ABDU RAHMAN .KK', 'REMOVED FROM THE REGISTER', NULL, 'KK', 'REMOVED FROM THE REGISTER', '00', 'REMOVED FROM THE REGISTER', '00', '00', 'MUHAMMED ANEES ', 0, 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', 217, 'REMOVED FROM THE REGISTER', 'REMOVED FROM THE REGISTER', '0', 'REMOVED FROM THE REGISTER', b'0'),
(261, 'CHAMRAKUND', 'PUL KUZHIYIL HOUSE\nCHAMRAKUND\nKATTIPARA.P.O.\nTHAMARASSERY', '1', 1, 1161, 'KOZHIKODE', '2018-07-24 05:30:00', '1993-11-19 05:30:00', NULL, b'1', 'ABDUL KAREEM .PK', 'PUL KUZHIYIL', NULL, 'PA', 'LUKMANUL HAKEEM SAQAFI  .PULLARA', '9846441365', 'KATTIPPARA', '228000274', '9946709855', 'FASLU RAHMAN ', 673573, 'PANDIKODE  JUMA MASJID ', 'LUKMANUL HAKEEM SAQAFI  .PULLARA', 'SON', 'K', 218, 'KOZHIKODE -- THAMARASERY -- POONUR -- CHEMRAKUND', 'THAMARASERY', '09', 'Kerala', b'0'),
(262, 'THENNALA WEST BAZAR', 'KARAYIL HOUSE \nTHENNALA\nWST BAZAR\n', '1', 1, 1162, 'MALAPPURAM', '2018-07-24 05:30:00', '1996-09-09 05:30:00', NULL, b'1', 'HAMZA  K', 'KARAYIL  HOUSE', NULL, 'K', 'MOIDEEN KUTTY BAQAVI PONMALA', '0', 'THENNALA', '301584', '9847206225', 'AHAMMAD KABEER.', 676508, 'AJMEER GT KARAD', 'MOIDEEN KUTTY BAQAVI PONMALA', 'SON', 'NO PHOTOS \nAND PRF', 219, 'THENNALA --- WEST BAZAR \n', 'THIRURANGADI', '09', 'Kerala', b'0'),
(263, 'KALLEKKAD', 'METTU PARA  HOUSE\nKALLEKKAD.P.O.\nPALAKKAD', '1', 1, 1163, 'PALAKKAD', '2018-07-24 05:30:00', '1995-02-14 05:30:00', NULL, b'1', 'ABDUL NAFIA\' MUSLIYAR', 'METTUPARA  HOUSE', NULL, 'A', 'ABDUL RASHEED SAQAFI ELAMKULAM', '9946001600', 'PIRAYIRI', '285709', '8281655330', 'MUHAMMAD SHAFEEQ', 678012, 'madheenathul uloom  da-a wa college \nkumaramputhoor', 'ABDUL RASHEED SAQAFI ELAMKULAM', 'SON', 'NO PHOTOS AND PRF', 220, 'kallekkad --- mettupara ', 'PALAKKAD', '08', 'Kerala', b'0'),
(264, 'KAYAPANACHI  NADAPURAM', 'KUNIYIL   HOUSE \nKAYAPPANACHI .P.O. \nKOZHIKODE  DT\n', '1', 1, 1164, 'KOZHIKODE', '2018-07-24 05:30:00', '1994-05-15 05:30:00', NULL, b'1', 'HAMEED ', 'KUNIYIL   HOUSE ', NULL, 'K', 'MA- ARIF BUKHARI', '9747603112', 'EDACHERI', '80504030010', '7034420075', 'AFSAL HAMEED ', 673505, 'SIRAJUL HUDA    KUTTIYADI', 'PEROD USTHAD', 'SON', 'NO PHOTO NO PRF ', 221, 'THALASSERY --PERINGATHUR --- KAYPANACHI', 'VADAKARA', '07', 'Kerala', b'0'),
(265, 'KUPPAM', 'MUHIYADHEEN  MAHAL\nMADHEENA  NAGARA  \nP.O. KUPPAM  ,', '1', 1, 1165, 'KANNUR', '2018-07-24 05:30:00', '1995-11-09 05:30:00', NULL, b'1', 'SIDDIK  .P.', 'KUTTAN THAKUTHIL ', NULL, 'K', 'MA ARIF BUKHARI', '9747603112', 'THALIPARAMBU', '129768', '9847601555', 'MUHAMMAD ASHARAF ', 670502, 'SIRAJUL  HUDA   KUTTIYADI', 'PEROD USTHAD \nMA ARIF BUKHARI', 'SON', 'NO PHOTOS NO PRF', 222, 'KOZHIKODE --- KANUR --- PAYYANUR  -- KUPPAM ', 'THALIPARAMBU', '07', 'Kerala', b'0'),
(266, 'KATHARAMMAL', 'THANNI KUND   HOUSE\nVALIYAPARAMBU .P.O\nKODUVALLI', '1', 1, 1166, 'KOZHIKODE', '2018-07-24 05:30:00', '1994-12-21 05:30:00', NULL, b'1', 'SULAIMAN MADANI ', 'THANNI KUND', NULL, 'T.K.', 'MA ARIF BUKHARI', '9747603112', 'KIZHAKOTH', '810070300117', '9496163738', 'MUNAVVAR', 673572, 'SIRAJUL HUDA ', 'PEROD USD', 'SON ', 'NO PHOTO NO PRF ', 223, 'KOZHIKODE --- THAMARASSERRY -- BUSTHANABADH', 'KODUVALLY', '07', 'Kerala', b'0'),
(267, 'FORM MISSING', 'FORM MISSING', '1', 1, 1167, 'FORM MISSING', '2018-07-24 05:30:00', '2018-10-18 05:30:00', 'FORM MISSING', b'1', 'FORM MISSING', 'FORM MISSING', NULL, 'CK ', 'FORM MISSING', '00000', 'FORM MISSING', '0000', '000', 'MUHAMMAD ABDU RAHMAN', 0, 'FORM MISSING', 'FORM MISSING', 'FORM MISSING', 'FORM MISSING', 224, 'FORM MISSING', 'FORM MISSING', '000', 'Kerala', b'0'),
(268, 'CHOVVANNOOR', 'PUTHUSHERI', '1', 1, 1168, 'THRISSUR', '2018-07-24 05:30:00', '1994-07-10 05:30:00', 'NIL', b'1', 'JAMAL ', 'NALAKATH ', NULL, 'NJ', 'MUSTHAFA AHSANI KOLATHOOR', '9747363870', 'THALAPPILI', '272438', '9526210006', 'JIMSHAD ', 680502, 'NELLISSERI PALLI DARS ', 'ALAVI SAQAFI KOLATHOOR ', 'SON ', 'ALL ARE AVALIABLE', 225, 'POOKIPARAMB ;;;; THRISSUR ;;;;;PUTHUSHERI ', 'THRISSIUR', '9', 'Kerala', b'0'),
(269, 'THAVANO0R ', 'NELLIKLUNN HOUSE THAVANNOOR PO', '1', 1, 1169, 'MALAPPURAM ', '2018-07-24 05:30:00', '1994-04-01 05:30:00', 'NIL ', b'1', 'HASSAN KUTTY MUSLIAR', 'NELLIKKUNN', NULL, 'T', 'SIDHEEK USTHAD KUTOOR ', '9544185829', 'MUTHUVALLOR', '160206020050', '9744884507', 'MUHAMMED UNAIS ', 673641, 'ITHIHAD DARS', 'SIDHEEK USTHAD KUTOOR ', 'SON', 'ALL ARE  AVAILABLE', 226, 'KONDOTTY\'\' KISYISHERI \'KUYINJILAM', 'KONDOTY ', '7', 'Kerala', b'0'),
(270, 'PANAKKOD ', 'MUDHIYALAKKULAM HOUSE  CHOORAKKOD PO VALLAPUYA ', '1', 1, 1170, 'PALAKKAD ', '2018-07-24 05:30:00', '1997-01-07 05:30:00', 'NIL', b'1', 'MUHAMMED MUSTHAFA', 'MUTHIYARAKULAM', NULL, 'MK', 'MUSTHAFA AHSANI KOLATHOOR', '9747363870', 'VALLAPUYA ', '233701', '7510375695', 'MUHAMMED SHABEER ', 679336, 'NELLISSERI PALLI DARS IRSHADIYA KOLATHOOR ', 'ALAVI SAQAFI  KOLATHOOR ', 'SON ', 'NO PHOTO NO PRF', 227, 'CHOORAKKOD', 'PATTAMBI', '9', 'Kerala', b'0'),
(271, 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', '1', 1, 1171, 'REMOVED FROM TH REGISTER', '2018-07-24 05:30:00', '1997-01-07 05:30:00', 'NIL', b'1', 'REMOVED FROM TH REGISTER', 'MOIDEEN KOYA M', NULL, 'M', 'REMOVED FROM TH REGISTER', '000', 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', '000', 'SAFEER', 0, 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', 228, 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', 'REMOVED FROM TH REGISTER', b'0'),
(272, 'PARAPPANANGADI ', 'MUHAMMED UNAIS PK PUTHAN KAMMUVINTE HOUSE PARAPANANGADI PUTHAN KADAPPURAM ', '1', 1, 1172, 'MALAPPURAM ', '2018-07-24 05:30:00', '1995-04-28 05:30:00', 'NIL', b'1', 'ABDURAHMAN', 'PUTHAN KAMMUVINTE ', NULL, 'PK', 'MUHAMMED AHSANI KODOOR', '9847311367', 'PARPPANANGADI ', '344000466', '9747313452', 'MUHAMMED UNAIS ', 676303, 'MULHIRUSSUNN DARS ;OMACHAPUYA ', 'MUHAMMED AHSANI KODOOR', 'SON', 'NO PHOTO AND NO PRF', 229, 'PARAPPANANGADI PUTHAN KADAPPUARM', 'THIROORANGADI ', '9', 'Kerala', b'0'),
(273, 'PERUBPARAMBA', 'VALIPARAMBATH HOUSE  UGRAPURAM PO AREEKOD VIA', '1', 1, 1173, 'MALAPPURAM', '2018-07-24 05:30:00', '1994-09-24 05:30:00', 'NIL', b'1', 'MUHAMMED MUSLIAR ', 'VALIPARAMBATH;', NULL, 'TK', 'PSK DARIMI IDAYOOR ', '9747241096', 'AREEKOD ', '160105010019', '8129620706', 'MUHAMMED HABEEB RAHMAN ', 673639, 'IMIC DAHAWA COLLEGE KUTTIKKATOOR  ', 'PSK DARIMI IDAYOOR ', 'SON', ' NO PHOTO AND NO PRF ', 230, 'MALAPPURAM    AREEKOD   PERUMPARAMBA ', 'EARNAD', '8', 'Kerala', b'0'),
(274, 'MUDALAMADU ', 'CHENAKKAL HOUSE VALIYORA PO VENGARA', '1', 1, 1174, 'MALAPPURAM', '2018-07-24 05:30:00', '1991-12-28 05:30:00', 'NIL', b'1', 'ALIKKUTTY', 'CHENAKKAL', NULL, 'C', 'SEYYID SALIM SAQAFI', '9846363021', 'VEGARA', '9080301009', '7558967276', 'JAFAR SADIQ', 676304, 'KONDOTTY MASJIDUL FATHE ', 'SEYYID SALIM SAQAFI', 'SON ', 'PHOTO AND PRF NOT AVAILIBLE', 231, 'THENNALA KAKKAD MUTHALAMAD ', 'THIRURAGADI', '9', 'Kerala', b'0'),
(275, 'KODAKKAD ', 'MAGADAVATH (H0)  KODAKKAD (P) MANNARAKKAD   (THALOOKK)', '1', 1, 1175, 'PALAKKAD', '2018-07-24 05:30:00', '1997-04-09 05:30:00', 'NIL', b'1', 'IBRAHIM KUTTY ', 'MAGADAVATH (H)', NULL, 'M', 'ABDU RASAQ SAQAFI PUTHUR ', '9747951224', 'KOTTOPPADAM(11)', '110304040041', '8137996555', 'ANWAR SWADIQ ', 675883, 'DHARUL FATHE ISLAMIC CENTER THAYEKKOD ', 'ABDU RASAQ SAQAFI PUTHUR', 'SON', 'PHOTOS AND PRF NOT AVAILABLE', 232, 'PERIDHALMANNA MANNARKKAD KODAKKAD ', 'MANNARAKKAD', '8', 'Kerala', b'0'),
(276, 'KADUGAPURAM ', 'KUNDUKATTIL (H) KADUGAPURAM (PO) MALAPPURAM (PO)', '1', 1, 1176, 'MALAPPURAM', '2018-07-24 05:30:00', '1994-11-10 05:30:00', 'NIL', b'1', 'ABDUL KADHAR SAQAFI ', 'KUNDUKATTIL ', NULL, 'K ', 'SAIDALAVI BAQAVI VALAPURAM ', '9846273523', 'PUYAKKATTIRI', 'SYS 285580', '04933', 'MUHAMMAD ABOONAFH ', 679321, 'DHEENUL ISLAM DARS PADIJHARAGADI ', 'ICC SAIDALAVI BAQAVI VALAPPURAM ', 'SON ', 'NO PHOTOS AND PRF', 233, 'KOTTAKKAL  PADAPPARAMB KADUGAPURAM ', 'PERIDHELMANNA', '11', 'Kerala', b'0'),
(277, 'AGATHI ', 'NARAGA PPURA LAKSHADEEB AGATHI ', '1', 1, 1177, 'LAKSHADEEB ', '2018-07-24 05:30:00', '1995-09-27 05:30:00', 'NILL', b'1', 'LIRAR ', 'NARAGAPPURA ', NULL, 'NP', 'LUKMAN HAKKEM SAQAFI PULLARA ', '00', 'AGATHI', '000', '9567228744', 'MUHAMMAD MIRSWAD ', 682553, 'PULLARA USTHAD DARS ', 'LUKMAN HAKKEEM SAQAFI PULLARA ', 'SON ', 'PHOTO NOT AVAILBLE', 234, 'KOCHI    AGATHI ', 'AGATHI ', '12', 'LAKSHA DEEB ', b'0'),
(278, 'NAROKKAVE', 'ARYADEN  EDAKKARA KUNNUMMAL PPADI ', '1', 1, 1087, 'MALAPPURAM', '2017-09-02 05:30:00', '1994-10-10 05:30:00', 'NIL', b'1', 'ABDU SAMAD', 'ARYADEN ', NULL, 'A', 'MUHAMMAD UNUS NISAMI ', '9846602746', 'VAYIKKADAV ', '8606403015', '04931 287589', 'MUHAMMED SWAFVAN', 679331, 'AL AZHAR EDAKKARA ', 'MUHAMMAD UNUS NISAMI ', 'SON', 'NO PHOTO AND PRF', 39, 'NAROKAVE SCHOOL PADI ', 'NILAMBOOR ', '8', 'Kerala', b'0'),
(279, 'EDAKKAYIYOOR', 'KALLINGAL (H)  EDAKKAYYOR (PO) CHAVAKKAD ', '1', 1, 1178, 'TRISHOOR', '2018-07-24 05:30:00', '1993-12-08 05:30:00', 'NIL', b'1', 'SAFIYYA', 'KALLINGAL (H)', NULL, 'KA', 'CK ALAVIKUTTY SAHDI', '000', 'PUNNAYOOR', '0000', '9995974712', 'JABIR ', 680515, 'EDAKKAYIYOOR JUMUA MASJID', 'CK ALAVIKKUTTY SAHDI', 'SON', 'OK ', 235, 'PONNANI   CHAVAKKAD  EDAKKAYIYOOR', 'CHAVAKKAD', '8', 'Kerala', b'0'),
(280, 'GOODALLUR ', 'KAMARAJ NAGAR GOODALLOR\n\n\n\n\n\n\n\nGOODALLUR \n ', '1', 1, 1182, 'NEELAGIRI', '2018-07-24 05:30:00', '1994-10-02 05:30:00', 'NIL', b'1', 'IBRAHIM ', 'TURKI', NULL, 'T', 'PONMALA USTHAD ', '0000', 'OVALI ', '000', '9488765127', 'JAFAR SWADIQ ', 643211, 'HIKMIYYA', 'PONMALA USTHAD ', 'SON', 'NO PHOTO AND PRF', 236, 'KOTTAKKAL  VAIKKADAVE  GOODALLUR KAMARAJ ', 'GOODALLUR ', '8', 'Kerala', b'0'),
(281, 'KARULAYI', 'MANJERI POKKIL NILAMBUR KARULAYI ', '1', 1, 1183, 'MALAPPURAM', '2018-07-24 05:30:00', '1996-04-16 05:30:00', 'NIL ', b'1', 'BEERAN HAJI ', 'MANJERI POKKIL ', NULL, 'MP', 'SALEEM SAQAFI', '9544475288', 'KARULAYI', '3769018', '04931271476', 'MUHAMMAD ABOOBAKKAR ', 679330, 'PALLI DARS ', 'SHARAFUDHEEN MISBAHI', 'SON', 'OK', 237, 'NILAMBUR  KARULAYI  MAILAMBARA ', 'NILAMBUR', '10', 'Kerala', b'0'),
(282, 'AREEKAL CITY ', 'PALACHIRAKKAL HOUSE  AREEKAL CITY ', '1', 1, 1184, 'MALAPPURAM', '2018-07-24 05:30:00', '1996-01-29 05:30:00', 'NIL', b'1', 'MUHAMMED ASHRAF PC ', 'PALACHIRAKKAL HOUSE ', NULL, 'PC', 'PEROD USTHAD ', '0000', 'EDARIKKODE ', '90101020009', '9946704990', 'SHAFEEQ ', 676501, 'SIRAJUL DUDHA ', 'PONMALA USTHAD ', 'SON ', 'KK', 238, 'EDARIKKOD AREEKAL CITY ', 'THIRURANDADI ', '8', 'Kerala', b'0'),
(283, 'MANEELA ', 'GUTHINABAILA HOUSE MURAVA PO ) ', '1', 1, 1180, 'DHAKSHINA KANNADA ', '2018-07-24 05:30:00', '1995-04-03 05:30:00', 'NIL', b'1', 'MUHAMMED ', 'MANEELA ', NULL, 'G', 'MPH BASHEER FAISY ', '000', 'MANEELA ', '0000', '9745756929', 'ABDUL JABBAR ', 574243, 'KUBUNOOR DARS UPPALA ', 'BASHEER FAISY VENNAKKOD ', 'SON ', 'KK', 239, 'MURUVA  VAYAVEETIL ', 'BANDUVAL ', '10', 'KARNATAKA', b'0'),
(284, 'THINOOR ', 'ASHARIKKANDI THINOOR ', '1', 1, 1181, 'CALICUT ', '2018-07-24 05:30:00', '1994-09-29 05:30:00', NULL, b'1', 'ABDURAHMAN ', 'ASHARIKKANDI ', NULL, 'AK', 'SAYYED THOYYIBUL BUKHARI ', '9946095998', 'NARIPPATTA PANJAYATH ', '203945', '9446682920', 'JUNAID ', 673507, 'ALMUJAMMAHUL ISLAMI ', 'SAYYED THOYYIBUL BUKHARI ', 'SON', 'K', 240, 'NADHAPURAM KAKKATTIL THINOOOR ', 'VADAKARA ', '7', 'Kerala', b'0'),
(285, 'KOOMANNA', 'VALIYAPARAMBIL  HOUSE.\nOLAGARA.P.O.\n', '1', 1, 1274, 'MALAPPURAM', '2018-10-09 05:30:00', '1995-05-08 05:30:00', NULL, b'1', 'SUBAIR   HAJI .K.T.', 'VALIYAPARAMBIL HOUSE ', NULL, 'K.T.', 'ISMAIL SAQAFI  KUTTALOOR', '9747668348', 'PERUVALLOOR', '90505010040', '7034134295', 'MUHAMMED AMEEN ', 673306, 'CM CENTER MADAVOOR', '1.ABDUL RAHMAN BAQAVI \n2. ABDUL KADAR  BAQAVI \n3.SHUKOOR  AHSANI\n4.ISMAIL SAQAFI \n5. IBRAHIM AHSANI \n\n', 'SON ', 'RE ADMISSION ', 241, 'KOLAPPURAM  -- THALAPPARA  -  PADIKKAL -- KOOMANNA', 'THIRURANGADI', '07', 'Kerala', b'0'),
(286, 'VATTEKUNN', 'SCHOOL PARAMBU\nVATTEKUNN  NORTH EDAPPALLI', '2', 2, 1085, 'ERANAKULAM', '2017-09-26 05:30:00', '1998-01-24 05:30:00', 'C', b'1', 'SIDHEEQ', 'SCHOOL PARAMBU', NULL, 'KS', ' Y,', 'HGU', 'KALAMASERY', '000', '7736887479', 'THAJUDHEEN KS', 682024, 'FSF', 'HFDNHYG', 'FATHER', 'REMOVED FROM THE REGISTER ', 1, 'NBVGF', 'KANAYANNUR', ' F', 'KERALA', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `102_students`
--

CREATE TABLE `102_students` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `year` varchar(11) NOT NULL DEFAULT '2019',
  `admission_no` int(11) NOT NULL,
  `full_name` varchar(75) NOT NULL,
  `address` text NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `occupation` varchar(150) NOT NULL,
  `guardian_phone` varchar(10) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `education_islam` varchar(150) NOT NULL,
  `education_school` varchar(150) NOT NULL,
  `other_qualifications` varchar(250) NOT NULL,
  `language` varchar(100) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `place` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `whatsapp` varchar(10) NOT NULL,
  `district` varchar(200) NOT NULL,
  `pincode` int(11) NOT NULL,
  `thaluk` varchar(100) NOT NULL,
  `route_to_home` text NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `previous_institute` varchar(200) NOT NULL,
  `previous_teacher` varchar(200) NOT NULL,
  `last_teacher` varchar(250) NOT NULL,
  `last_teacher_no` varchar(20) NOT NULL,
  `year_studied` int(11) NOT NULL,
  `adhar_no` varchar(12) NOT NULL,
  `post` varchar(100) NOT NULL,
  `membership_id` varchar(20) NOT NULL,
  `email` varchar(75) NOT NULL,
  `admission_date` date NOT NULL,
  `profile_pic` varchar(2000) CHARACTER SET utf8 NOT NULL DEFAULT 'nophoto.png',
  `status` varchar(11) NOT NULL DEFAULT 'yes',
  `added_date` datetime NOT NULL,
  `upgraded_date` datetime NOT NULL,
  `last_updated_date` datetime NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'entrance',
  `remarks` text NOT NULL,
  `remove_date` date DEFAULT NULL,
  `remove_reason` text NOT NULL,
  `re_admission_status` varchar(11) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_student_accounts_transactions`
--

CREATE TABLE `102_student_accounts_transactions` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` double NOT NULL,
  `remarks` text NOT NULL,
  `date` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_student_accounts_transactions`
--

INSERT INTO `102_student_accounts_transactions` (`id`, `student_id`, `transaction_type`, `amount`, `remarks`, `date`, `date_added`, `date_updated`, `is_delete`) VALUES
(1, 124, 'credit', 1000, 'kadam', '2019-07-25', '2019-07-25 12:57:13', '2019-07-25 12:57:13', 1),
(2, 124, 'debit', 500, 'return', '2019-07-26', '2019-07-25 12:57:33', '2019-07-25 12:57:33', 1),
(3, 124, 'debit', 1000, 'kadam', '2019-09-12', '2019-09-12 12:18:42', '2019-09-12 12:18:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `102_student_leaves`
--

CREATE TABLE `102_student_leaves` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `year` varchar(11) NOT NULL DEFAULT '2019-20',
  `date` date NOT NULL,
  `session` varchar(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_subscribers`
--

CREATE TABLE `102_subscribers` (
  `id` int(11) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_sub_menu`
--

CREATE TABLE `102_sub_menu` (
  `id` int(11) NOT NULL,
  `link_ref_id` varchar(200) CHARACTER SET utf8 NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `icon` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT 'clip-home-2',
  `status` varchar(200) CHARACTER SET utf8 NOT NULL,
  `perm_admin` int(12) NOT NULL DEFAULT '0',
  `perm_host` int(11) NOT NULL,
  `perm_user` int(12) DEFAULT '0',
  `order_id` int(12) NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL DEFAULT 'site',
  `en_lang` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_time_table`
--

CREATE TABLE `102_time_table` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_time_table`
--

INSERT INTO `102_time_table` (`id`, `date`, `time`, `subject`, `updated_date`) VALUES
(8, '2019-04-15', '10.00.AM TO 12.00.PM', 'تحفة المحتاج', '2019-04-14 11:39:13'),
(9, '2019-04-16', '06.30.AM TO 08.30.AM', 'قاضي', '2019-04-14 11:39:58'),
(10, '2019-04-16', '02.00. PM TO 04.00.PM', 'مسلم الثبوت', '2019-04-14 11:40:45'),
(11, '2019-04-17', '06.30.AM TO 08.30.AM', 'حمد الله', '2019-04-14 11:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `102_uploads`
--

CREATE TABLE `102_uploads` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `file_name` text NOT NULL,
  `date` date NOT NULL,
  `added_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_uploads`
--

INSERT INTO `102_uploads` (`id`, `student_id`, `reason`, `file_name`, `date`, `added_date`, `status`) VALUES
(1, 339, '???? ????? ( CHALLAN SLIP.NO,A/19-20', '1266.jpg', '2019-06-26', '2019-07-19 20:23:59', 'yes'),
(2, 442, 'CONFESSION (CHALLAN SLIP.NO: A/03/19-20)', 'img20190719_19561955.jpg', '2019-06-26', '2019-07-19 20:41:50', 'yes'),
(3, 329, 'MEDICAL CERTIFICATE AND FITNESS CERTIFICATE', '1204.jpg', '2019-07-14', '2019-07-19 21:25:11', 'yes'),
(4, 486, 'MEDICAL CERTIFICATE', 'img20190719_21033892.jpg', '2019-07-19', '2019-07-19 21:36:40', 'yes'),
(5, 344, 'CONFESSION ACT', 'img20190724_07544564.jpg', '2019-07-24', '2019-07-24 08:48:25', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `102_user_info`
--

CREATE TABLE `102_user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `second_name` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `address` text CHARACTER SET utf8,
  `country` int(50) NOT NULL,
  `state` int(11) NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `zip_code` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT 'NA',
  `mobile` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `email` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `dob` date NOT NULL DEFAULT '0001-01-01',
  `gender` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Male',
  `user_photo` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT 'nophoto.png',
  `user_thump` varchar(50) NOT NULL DEFAULT 'thump_image.png',
  `linkedin` varchar(99) NOT NULL DEFAULT 'https://linkedin.com/',
  `twitter` varchar(99) NOT NULL DEFAULT 'https://twitter.com/',
  `gplus` varchar(99) NOT NULL DEFAULT 'https://plus.google.com/',
  `facebook` varchar(99) NOT NULL DEFAULT 'https://facebook.com/'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_user_info`
--

INSERT INTO `102_user_info` (`id`, `user_id`, `first_name`, `second_name`, `address`, `country`, `state`, `city`, `zip_code`, `mobile`, `email`, `dob`, `gender`, `user_photo`, `user_thump`, `linkedin`, `twitter`, `gplus`, `facebook`) VALUES
(1, 1850, 'M2Rentals', 'LLC', 'M2Rentals', 17, 0, 'California', '123456', '1234567', 'info@letstalkblog.org', '1941-06-14', 'Male', 'signature-website-launched.png', 'thump_image.png', 'https://linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://facebook.com/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `102_activity_history`
--
ALTER TABLE `102_activity_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_add_student`
--
ALTER TABLE `102_add_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_bus`
--
ALTER TABLE `102_bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_candidates`
--
ALTER TABLE `102_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_classes`
--
ALTER TABLE `102_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_company_information`
--
ALTER TABLE `102_company_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_complaint_box`
--
ALTER TABLE `102_complaint_box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_contact_comments`
--
ALTER TABLE `102_contact_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_countries`
--
ALTER TABLE `102_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `102_currency`
--
ALTER TABLE `102_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `102_division`
--
ALTER TABLE `102_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_documents`
--
ALTER TABLE `102_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_events`
--
ALTER TABLE `102_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_falily_list`
--
ALTER TABLE `102_falily_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_gallery`
--
ALTER TABLE `102_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_language`
--
ALTER TABLE `102_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `102_leave_days`
--
ALTER TABLE `102_leave_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_login_info`
--
ALTER TABLE `102_login_info`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `first` (`user_name`);

--
-- Indexes for table `102_medical_fund`
--
ALTER TABLE `102_medical_fund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_menu`
--
ALTER TABLE `102_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_news`
--
ALTER TABLE `102_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `102_send_sms_history`
--
ALTER TABLE `102_send_sms_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_settings`
--
ALTER TABLE `102_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `102_staff_accounts_transactions`
--
ALTER TABLE `102_staff_accounts_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_staff_details`
--
ALTER TABLE `102_staff_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_studentold`
--
ALTER TABLE `102_studentold`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nd6frej42k0orhyyho4sog1bl` (`admission_no`);

--
-- Indexes for table `102_students`
--
ALTER TABLE `102_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_student_accounts_transactions`
--
ALTER TABLE `102_student_accounts_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_student_leaves`
--
ALTER TABLE `102_student_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_subscribers`
--
ALTER TABLE `102_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_sub_menu`
--
ALTER TABLE `102_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_time_table`
--
ALTER TABLE `102_time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_uploads`
--
ALTER TABLE `102_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_user_info`
--
ALTER TABLE `102_user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `102_activity_history`
--
ALTER TABLE `102_activity_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `102_add_student`
--
ALTER TABLE `102_add_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `102_bus`
--
ALTER TABLE `102_bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `102_candidates`
--
ALTER TABLE `102_candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_classes`
--
ALTER TABLE `102_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `102_company_information`
--
ALTER TABLE `102_company_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `102_complaint_box`
--
ALTER TABLE `102_complaint_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `102_contact_comments`
--
ALTER TABLE `102_contact_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_countries`
--
ALTER TABLE `102_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `102_currency`
--
ALTER TABLE `102_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `102_division`
--
ALTER TABLE `102_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `102_documents`
--
ALTER TABLE `102_documents`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `102_events`
--
ALTER TABLE `102_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_falily_list`
--
ALTER TABLE `102_falily_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_gallery`
--
ALTER TABLE `102_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `102_language`
--
ALTER TABLE `102_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `102_leave_days`
--
ALTER TABLE `102_leave_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `102_login_info`
--
ALTER TABLE `102_login_info`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1851;
--
-- AUTO_INCREMENT for table `102_medical_fund`
--
ALTER TABLE `102_medical_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `102_menu`
--
ALTER TABLE `102_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `102_news`
--
ALTER TABLE `102_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `102_send_sms_history`
--
ALTER TABLE `102_send_sms_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `102_settings`
--
ALTER TABLE `102_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `102_staff_accounts_transactions`
--
ALTER TABLE `102_staff_accounts_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_staff_details`
--
ALTER TABLE `102_staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_studentold`
--
ALTER TABLE `102_studentold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;
--
-- AUTO_INCREMENT for table `102_students`
--
ALTER TABLE `102_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_student_accounts_transactions`
--
ALTER TABLE `102_student_accounts_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `102_student_leaves`
--
ALTER TABLE `102_student_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_subscribers`
--
ALTER TABLE `102_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_sub_menu`
--
ALTER TABLE `102_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `102_time_table`
--
ALTER TABLE `102_time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `102_uploads`
--
ALTER TABLE `102_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `102_user_info`
--
ALTER TABLE `102_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
