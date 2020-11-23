-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2020 at 11:23 AM
-- Server version: 8.0.22-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `102_activity_history`
--

CREATE TABLE `102_activity_history` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `done_by` int DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `activity` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `notification_status` tinyint(1) NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_company_information`
--

CREATE TABLE `102_company_information` (
  `id` int NOT NULL,
  `company_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `favicon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `icon` varchar(99) NOT NULL DEFAULT 'icon.png',
  `company_address` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `default_lang` int NOT NULL DEFAULT '1',
  `login_lang` int NOT NULL,
  `admin_theme_folder` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'NA',
  `user_theme_folder` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `facebook` varchar(100) NOT NULL DEFAULT 'https://facebook.com/',
  `gplus` varchar(99) NOT NULL DEFAULT 'https://plus.google.com/',
  `linkedin` varchar(99) NOT NULL DEFAULT 'https://www.linkedin.com/',
  `country_id` int NOT NULL,
  `currency_id` int NOT NULL,
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `maintenance_mode_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_company_information`
--

INSERT INTO `102_company_information` (`id`, `company_name`, `email`, `phone`, `logo`, `favicon`, `icon`, `company_address`, `default_lang`, `login_lang`, `admin_theme_folder`, `user_theme_folder`, `facebook`, `gplus`, `linkedin`, `country_id`, `currency_id`, `maintenance_mode`, `maintenance_mode_text`) VALUES
(1, 'Code Green', 'careerscgtindia.in', '+91-8075929280', 'logo1.png', 'favicon.png', 'favicon .png', 'Metro pillar 835,2nd floor,C Jacob and sons building,SA Road,Vyttila,Kochi,India,682019', 1, 1, 'default', 'default', 'https://facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 0, 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `102_countries`
--

CREATE TABLE `102_countries` (
  `country_id` int NOT NULL,
  `country_name` varchar(128) NOT NULL DEFAULT 'NA',
  `country_code` varchar(2) NOT NULL DEFAULT 'NA',
  `phone_code` varchar(10) NOT NULL DEFAULT '0',
  `iso_code_3` varchar(3) NOT NULL DEFAULT 'NA',
  `lang_ref_id` int NOT NULL DEFAULT '0'
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
  `currency_id` int NOT NULL,
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
-- Table structure for table `102_documents`
--

CREATE TABLE `102_documents` (
  `id` int NOT NULL,
  `file_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `doc_file_name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `doc_description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `uploaded_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `sort_order` int NOT NULL DEFAULT '1'
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
-- Table structure for table `102_language`
--

CREATE TABLE `102_language` (
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `site_perm` int NOT NULL,
  `login_perm` int NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `102_language`
--

INSERT INTO `102_language` (`language_id`, `name`, `code`, `image`, `directory`, `site_perm`, `login_perm`, `sort_order`) VALUES
(1, 'English', 'en', 'en.png', 'english', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `102_login_info`
--

CREATE TABLE `102_login_info` (
  `user_id` int UNSIGNED NOT NULL,
  `order_id` int NOT NULL DEFAULT '0',
  `user_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `signup_otp` int NOT NULL DEFAULT '0',
  `date_of_joining` datetime DEFAULT NULL,
  `default_lang` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_login_info`
--

INSERT INTO `102_login_info` (`user_id`, `order_id`, `user_type`, `user_name`, `password`, `status`, `signup_otp`, `date_of_joining`, `default_lang`) VALUES
(1850, 0, 'admin', 'ADMIN', '0192023a7bbd73250516f069df18b500', 1, 0, '2020-11-22 11:22:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `102_mail_contents`
--

CREATE TABLE `102_mail_contents` (
  `id` int NOT NULL,
  `type` varchar(55) NOT NULL DEFAULT 'mail',
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_mail_contents`
--

INSERT INTO `102_mail_contents` (`id`, `type`, `content`) VALUES
(1, 'lead_capture', 'One Person is contacted through leads'),
(2, 'replica_contact', '<br>\r\n   \'. lang(\"mail_dear\") .\' <strong>{fullname},</strong>\r\n<br>\r\nOne Person is contacted via  Referral Page.\r\n\r\n<hr>\r\n\r\n<br>\r\n\r\n<br>\r\n\r\n<br>\r\n   Name: <strong>{name},</strong>\r\n<br>\r\n<br>\r\n   Email: <strong>{email},</strong>\r\n<br>\r\n<br>\r\n   Subject: <strong>{subject},</strong>\r\n<br>\r\n<br>\r\n   Message: <strong>{message},</strong>\r\n<br>');

-- --------------------------------------------------------

--
-- Table structure for table `102_mail_settings`
--

CREATE TABLE `102_mail_settings` (
  `id` int NOT NULL,
  `type` varchar(11) NOT NULL DEFAULT 'mail',
  `authentication` int NOT NULL DEFAULT '0',
  `protocol` varchar(20) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `timeout` varchar(20) NOT NULL,
  `mail_cc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_mail_settings`
--

INSERT INTO `102_mail_settings` (`id`, `type`, `authentication`, `protocol`, `host`, `port`, `username`, `password`, `timeout`, `mail_cc`) VALUES
(1, 'mail', 0, 'none', 'fdsafdsa', '111', 'asdasd', 'asdasd', '111', 'dsadsa@vcas.fdsafsadf');

-- --------------------------------------------------------

--
-- Table structure for table `102_menu`
--

CREATE TABLE `102_menu` (
  `id` int NOT NULL,
  `link_ref_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'clip-home-2',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `perm_admin` int NOT NULL DEFAULT '0',
  `perm_host` int NOT NULL,
  `perm_user` int DEFAULT '0',
  `order_id` int NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL DEFAULT 'site',
  `en_lang` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_menu`
--

INSERT INTO `102_menu` (`id`, `link_ref_id`, `menu_link`, `icon`, `status`, `perm_admin`, `perm_host`, `perm_user`, `order_id`, `type`, `en_lang`) VALUES
(1, '#', 'dashboard/index', 'fa-dashboard', 'yes', 1, 0, 1, 1, 'site', 'Dashboard'),
(2, '#', '../login/logout', 'fa fa-unlock', 'yes', 1, 0, 1, 10, 'site', 'Logout'),
(17, '#', 'profile/profile', 'fa-plus-square', 'yes', 1, 0, 1, 5, 'site', 'Profile');

-- --------------------------------------------------------

--
-- Table structure for table `102_settings`
--

CREATE TABLE `102_settings` (
  `setting_id` int NOT NULL,
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
(33, 'social_login', 'google_login', '0', ''),
(39, 'user_name_config', 'user_name_postfix', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `102_signup_otp`
--

CREATE TABLE `102_signup_otp` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `email` varchar(500) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `submitted_date` datetime NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_sub_menu`
--

CREATE TABLE `102_sub_menu` (
  `id` int NOT NULL,
  `link_ref_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'clip-home-2',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `perm_admin` int NOT NULL DEFAULT '0',
  `perm_host` int NOT NULL,
  `perm_user` int DEFAULT '0',
  `order_id` int NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL DEFAULT 'site',
  `en_lang` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `102_user_info`
--

CREATE TABLE `102_user_info` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `country` int NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `mobile` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dob` date NOT NULL DEFAULT '0001-01-01',
  `user_photo` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'nophoto.png',
  `user_thump` varchar(50) NOT NULL DEFAULT 'thump_image.png',
  `linkedin` varchar(99) NOT NULL DEFAULT 'https://linkedin.com/',
  `twitter` varchar(99) NOT NULL DEFAULT 'https://twitter.com/',
  `gplus` varchar(99) NOT NULL DEFAULT 'https://plus.google.com/',
  `facebook` varchar(99) NOT NULL DEFAULT 'https://facebook.com/'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `102_user_info`
--

INSERT INTO `102_user_info` (`id`, `user_id`, `name`, `address`, `country`, `city`, `mobile`, `email`, `dob`, `user_photo`, `user_thump`, `linkedin`, `twitter`, `gplus`, `facebook`) VALUES
(1, 1850, 'M2Rentals', 'M2Rentals', 17, 'California', '1234567', 'info@letstalkblog.org', '1941-06-14', 'nophoto.png', 'thump_image.png', 'https://linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://facebook.com/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `102_activity_history`
--
ALTER TABLE `102_activity_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_company_information`
--
ALTER TABLE `102_company_information`
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
-- Indexes for table `102_documents`
--
ALTER TABLE `102_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_language`
--
ALTER TABLE `102_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `102_login_info`
--
ALTER TABLE `102_login_info`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `first` (`user_name`);

--
-- Indexes for table `102_mail_contents`
--
ALTER TABLE `102_mail_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_mail_settings`
--
ALTER TABLE `102_mail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_menu`
--
ALTER TABLE `102_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_settings`
--
ALTER TABLE `102_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `102_signup_otp`
--
ALTER TABLE `102_signup_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `102_sub_menu`
--
ALTER TABLE `102_sub_menu`
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `102_company_information`
--
ALTER TABLE `102_company_information`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `102_countries`
--
ALTER TABLE `102_countries`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `102_currency`
--
ALTER TABLE `102_currency`
  MODIFY `currency_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `102_documents`
--
ALTER TABLE `102_documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `102_language`
--
ALTER TABLE `102_language`
  MODIFY `language_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `102_login_info`
--
ALTER TABLE `102_login_info`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1851;

--
-- AUTO_INCREMENT for table `102_mail_contents`
--
ALTER TABLE `102_mail_contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `102_mail_settings`
--
ALTER TABLE `102_mail_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `102_menu`
--
ALTER TABLE `102_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `102_settings`
--
ALTER TABLE `102_settings`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `102_signup_otp`
--
ALTER TABLE `102_signup_otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `102_sub_menu`
--
ALTER TABLE `102_sub_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `102_user_info`
--
ALTER TABLE `102_user_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
