-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 12:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weekley_electric`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `shortname` varchar(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phonecode` bigint(20) NOT NULL,
  `country_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `shortname`, `name`, `phonecode`, `country_status`) VALUES
(1, 'AF', 'Afghanistan', 93, 'Inactive'),
(2, 'AL', 'Albania', 355, 'Inactive'),
(3, 'DZ', 'Algeria', 213, 'Inactive'),
(4, 'AS', 'American Samoa', 1684, 'Inactive'),
(5, 'AD', 'Andorra', 376, 'Inactive'),
(6, 'AO', 'Angola', 244, 'Inactive'),
(7, 'AI', 'Anguilla', 1264, 'Inactive'),
(8, 'AQ', 'Antarctica', 0, 'Inactive'),
(9, 'AG', 'Antigua And Barbuda', 1268, 'Inactive'),
(10, 'AR', 'Argentina', 54, 'Inactive'),
(11, 'AM', 'Armenia', 374, 'Inactive'),
(12, 'AW', 'Aruba', 297, 'Inactive'),
(13, 'AU', 'Australia', 61, 'Inactive'),
(14, 'AT', 'Austria', 43, 'Inactive'),
(15, 'AZ', 'Azerbaijan', 994, 'Inactive'),
(16, 'BS', 'Bahamas The', 1242, 'Inactive'),
(17, 'BH', 'Bahrain', 973, 'Inactive'),
(18, 'BD', 'Bangladesh', 880, 'Inactive'),
(19, 'BB', 'Barbados', 1246, 'Inactive'),
(20, 'BY', 'Belarus', 375, 'Inactive'),
(21, 'BE', 'Belgium', 32, 'Inactive'),
(22, 'BZ', 'Belize', 501, 'Inactive'),
(23, 'BJ', 'Benin', 229, 'Inactive'),
(24, 'BM', 'Bermuda', 1441, 'Inactive'),
(25, 'BT', 'Bhutan', 975, 'Inactive'),
(26, 'BO', 'Bolivia', 591, 'Inactive'),
(27, 'BA', 'Bosnia and Herzegovina', 387, 'Inactive'),
(28, 'BW', 'Botswana', 267, 'Inactive'),
(29, 'BV', 'Bouvet Island', 0, 'Inactive'),
(30, 'BR', 'Brazil', 55, 'Inactive'),
(31, 'IO', 'British Indian Ocean Territory', 246, 'Inactive'),
(32, 'BN', 'Brunei', 673, 'Inactive'),
(33, 'BG', 'Bulgaria', 359, 'Inactive'),
(34, 'BF', 'Burkina Faso', 226, 'Inactive'),
(35, 'BI', 'Burundi', 257, 'Inactive'),
(36, 'KH', 'Cambodia', 855, 'Inactive'),
(37, 'CM', 'Cameroon', 237, 'Inactive'),
(38, 'CA', 'Canada', 1, 'Inactive'),
(39, 'CV', 'Cape Verde', 238, 'Inactive'),
(40, 'KY', 'Cayman Islands', 1345, 'Inactive'),
(41, 'CF', 'Central African Republic', 236, 'Inactive'),
(42, 'TD', 'Chad', 235, 'Inactive'),
(43, 'CL', 'Chile', 56, 'Inactive'),
(44, 'CN', 'China', 86, 'Inactive'),
(45, 'CX', 'Christmas Island', 61, 'Inactive'),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 'Inactive'),
(47, 'CO', 'Colombia', 57, 'Inactive'),
(48, 'KM', 'Comoros', 269, 'Inactive'),
(49, 'CG', 'Republic Of The Congo', 242, 'Inactive'),
(50, 'CD', 'Democratic Republic Of The Congo', 242, 'Inactive'),
(51, 'CK', 'Cook Islands', 682, 'Inactive'),
(52, 'CR', 'Costa Rica', 506, 'Inactive'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, 'Inactive'),
(54, 'HR', 'Croatia (Hrvatska)', 385, 'Inactive'),
(55, 'CU', 'Cuba', 53, 'Inactive'),
(56, 'CY', 'Cyprus', 357, 'Inactive'),
(57, 'CZ', 'Czech Republic', 420, 'Inactive'),
(58, 'DK', 'Denmark', 45, 'Inactive'),
(59, 'DJ', 'Djibouti', 253, 'Inactive'),
(60, 'DM', 'Dominica', 1767, 'Inactive'),
(61, 'DO', 'Dominican Republic', 1809, 'Inactive'),
(62, 'TP', 'East Timor', 670, 'Inactive'),
(63, 'EC', 'Ecuador', 593, 'Inactive'),
(64, 'EG', 'Egypt', 20, 'Inactive'),
(65, 'SV', 'El Salvador', 503, 'Inactive'),
(66, 'GQ', 'Equatorial Guinea', 240, 'Inactive'),
(67, 'ER', 'Eritrea', 291, 'Inactive'),
(68, 'EE', 'Estonia', 372, 'Inactive'),
(69, 'ET', 'Ethiopia', 251, 'Inactive'),
(70, 'XA', 'External Territories of Australia', 61, 'Inactive'),
(71, 'FK', 'Falkland Islands', 500, 'Inactive'),
(72, 'FO', 'Faroe Islands', 298, 'Inactive'),
(73, 'FJ', 'Fiji Islands', 679, 'Inactive'),
(74, 'FI', 'Finland', 358, 'Inactive'),
(75, 'FR', 'France', 33, 'Inactive'),
(76, 'GF', 'French Guiana', 594, 'Inactive'),
(77, 'PF', 'French Polynesia', 689, 'Inactive'),
(78, 'TF', 'French Southern Territories', 0, 'Inactive'),
(79, 'GA', 'Gabon', 241, 'Inactive'),
(80, 'GM', 'Gambia The', 220, 'Inactive'),
(81, 'GE', 'Georgia', 995, 'Inactive'),
(82, 'DE', 'Germany', 49, 'Inactive'),
(83, 'GH', 'Ghana', 233, 'Inactive'),
(84, 'GI', 'Gibraltar', 350, 'Inactive'),
(85, 'GR', 'Greece', 30, 'Inactive'),
(86, 'GL', 'Greenland', 299, 'Inactive'),
(87, 'GD', 'Grenada', 1473, 'Inactive'),
(88, 'GP', 'Guadeloupe', 590, 'Inactive'),
(89, 'GU', 'Guam', 1671, 'Inactive'),
(90, 'GT', 'Guatemala', 502, 'Inactive'),
(91, 'XU', 'Guernsey and Alderney', 44, 'Inactive'),
(92, 'GN', 'Guinea', 224, 'Inactive'),
(93, 'GW', 'Guinea-Bissau', 245, 'Inactive'),
(94, 'GY', 'Guyana', 592, 'Inactive'),
(95, 'HT', 'Haiti', 509, 'Inactive'),
(96, 'HM', 'Heard and McDonald Islands', 0, 'Inactive'),
(97, 'HN', 'Honduras', 504, 'Inactive'),
(98, 'HK', 'Hong Kong S.A.R.', 852, 'Inactive'),
(99, 'HU', 'Hungary', 36, 'Inactive'),
(100, 'IS', 'Iceland', 354, 'Inactive'),
(101, 'IN', 'India', 91, 'Inactive'),
(102, 'ID', 'Indonesia', 62, 'Inactive'),
(103, 'IR', 'Iran', 98, 'Inactive'),
(104, 'IQ', 'Iraq', 964, 'Inactive'),
(105, 'IE', 'Ireland', 353, 'Inactive'),
(106, 'IL', 'Israel', 972, 'Inactive'),
(107, 'IT', 'Italy', 39, 'Inactive'),
(108, 'JM', 'Jamaica', 1876, 'Inactive'),
(109, 'JP', 'Japan', 81, 'Inactive'),
(110, 'XJ', 'Jersey', 44, 'Inactive'),
(111, 'JO', 'Jordan', 962, 'Inactive'),
(112, 'KZ', 'Kazakhstan', 7, 'Inactive'),
(113, 'KE', 'Kenya', 254, 'Inactive'),
(114, 'KI', 'Kiribati', 686, 'Inactive'),
(115, 'KP', 'Korea North', 850, 'Inactive'),
(116, 'KR', 'Korea South', 82, 'Inactive'),
(117, 'KW', 'Kuwait', 965, 'Inactive'),
(118, 'KG', 'Kyrgyzstan', 996, 'Inactive'),
(119, 'LA', 'Laos', 856, 'Inactive'),
(120, 'LV', 'Latvia', 371, 'Inactive'),
(121, 'LB', 'Lebanon', 961, 'Inactive'),
(122, 'LS', 'Lesotho', 266, 'Inactive'),
(123, 'LR', 'Liberia', 231, 'Inactive'),
(124, 'LY', 'Libya', 218, 'Inactive'),
(125, 'LI', 'Liechtenstein', 423, 'Inactive'),
(126, 'LT', 'Lithuania', 370, 'Inactive'),
(127, 'LU', 'Luxembourg', 352, 'Inactive'),
(128, 'MO', 'Macau S.A.R.', 853, 'Inactive'),
(129, 'MK', 'Macedonia', 389, 'Inactive'),
(130, 'MG', 'Madagascar', 261, 'Inactive'),
(131, 'MW', 'Malawi', 265, 'Inactive'),
(132, 'MY', 'Malaysia', 60, 'Inactive'),
(133, 'MV', 'Maldives', 960, 'Inactive'),
(134, 'ML', 'Mali', 223, 'Inactive'),
(135, 'MT', 'Malta', 356, 'Inactive'),
(136, 'XM', 'Man (Isle of)', 44, 'Inactive'),
(137, 'MH', 'Marshall Islands', 692, 'Inactive'),
(138, 'MQ', 'Martinique', 596, 'Inactive'),
(139, 'MR', 'Mauritania', 222, 'Inactive'),
(140, 'MU', 'Mauritius', 230, 'Inactive'),
(141, 'YT', 'Mayotte', 269, 'Inactive'),
(142, 'MX', 'Mexico', 52, 'Inactive'),
(143, 'FM', 'Micronesia', 691, 'Inactive'),
(144, 'MD', 'Moldova', 373, 'Inactive'),
(145, 'MC', 'Monaco', 377, 'Inactive'),
(146, 'MN', 'Mongolia', 976, 'Inactive'),
(147, 'MS', 'Montserrat', 1664, 'Inactive'),
(148, 'MA', 'Morocco', 212, 'Inactive'),
(149, 'MZ', 'Mozambique', 258, 'Inactive'),
(150, 'MM', 'Myanmar', 95, 'Inactive'),
(151, 'NA', 'Namibia', 264, 'Inactive'),
(152, 'NR', 'Nauru', 674, 'Inactive'),
(153, 'NP', 'Nepal', 977, 'Inactive'),
(154, 'AN', 'Netherlands Antilles', 599, 'Inactive'),
(155, 'NL', 'Netherlands The', 31, 'Inactive'),
(156, 'NC', 'New Caledonia', 687, 'Inactive'),
(157, 'NZ', 'New Zealand', 64, 'Inactive'),
(158, 'NI', 'Nicaragua', 505, 'Inactive'),
(159, 'NE', 'Niger', 227, 'Inactive'),
(160, 'NG', 'Nigeria', 234, 'Inactive'),
(161, 'NU', 'Niue', 683, 'Inactive'),
(162, 'NF', 'Norfolk Island', 672, 'Inactive'),
(163, 'MP', 'Northern Mariana Islands', 1670, 'Inactive'),
(164, 'NO', 'Norway', 47, 'Inactive'),
(165, 'OM', 'Oman', 968, 'Inactive'),
(166, 'PK', 'Pakistan', 92, 'Inactive'),
(167, 'PW', 'Palau', 680, 'Inactive'),
(168, 'PS', 'Palestinian Territory Occupied', 970, 'Inactive'),
(169, 'PA', 'Panama', 507, 'Inactive'),
(170, 'PG', 'Papua new Guinea', 675, 'Inactive'),
(171, 'PY', 'Paraguay', 595, 'Inactive'),
(172, 'PE', 'Peru', 51, 'Inactive'),
(173, 'PH', 'Philippines', 63, 'Inactive'),
(174, 'PN', 'Pitcairn Island', 0, 'Inactive'),
(175, 'PL', 'Poland', 48, 'Inactive'),
(176, 'PT', 'Portugal', 351, 'Inactive'),
(177, 'PR', 'Puerto Rico', 1787, 'Inactive'),
(178, 'QA', 'Qatar', 974, 'Inactive'),
(179, 'RE', 'Reunion', 262, 'Inactive'),
(180, 'RO', 'Romania', 40, 'Inactive'),
(181, 'RU', 'Russia', 70, 'Inactive'),
(182, 'RW', 'Rwanda', 250, 'Inactive'),
(183, 'SH', 'Saint Helena', 290, 'Inactive'),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 'Inactive'),
(185, 'LC', 'Saint Lucia', 1758, 'Inactive'),
(186, 'PM', 'Saint Pierre and Miquelon', 508, 'Inactive'),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 'Inactive'),
(188, 'WS', 'Samoa', 684, 'Inactive'),
(189, 'SM', 'San Marino', 378, 'Inactive'),
(190, 'ST', 'Sao Tome and Principe', 239, 'Inactive'),
(191, 'SA', 'Saudi Arabia', 966, 'Inactive'),
(192, 'SN', 'Senegal', 221, 'Inactive'),
(193, 'RS', 'Serbia', 381, 'Inactive'),
(194, 'SC', 'Seychelles', 248, 'Inactive'),
(195, 'SL', 'Sierra Leone', 232, 'Inactive'),
(196, 'SG', 'Singapore', 65, 'Inactive'),
(197, 'SK', 'Slovakia', 421, 'Inactive'),
(198, 'SI', 'Slovenia', 386, 'Inactive'),
(199, 'XG', 'Smaller Territories of the UK', 44, 'Inactive'),
(200, 'SB', 'Solomon Islands', 677, 'Inactive'),
(201, 'SO', 'Somalia', 252, 'Inactive'),
(202, 'ZA', 'South Africa', 27, 'Inactive'),
(203, 'GS', 'South Georgia', 0, 'Inactive'),
(204, 'SS', 'South Sudan', 211, 'Inactive'),
(205, 'ES', 'Spain', 34, 'Inactive'),
(206, 'LK', 'Sri Lanka', 94, 'Inactive'),
(207, 'SD', 'Sudan', 249, 'Inactive'),
(208, 'SR', 'Suriname', 597, 'Inactive'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, 'Inactive'),
(210, 'SZ', 'Swaziland', 268, 'Inactive'),
(211, 'SE', 'Sweden', 46, 'Inactive'),
(212, 'CH', 'Switzerland', 41, 'Inactive'),
(213, 'SY', 'Syria', 963, 'Inactive'),
(214, 'TW', 'Taiwan', 886, 'Inactive'),
(215, 'TJ', 'Tajikistan', 992, 'Inactive'),
(216, 'TZ', 'Tanzania', 255, 'Inactive'),
(217, 'TH', 'Thailand', 66, 'Inactive'),
(218, 'TG', 'Togo', 228, 'Inactive'),
(219, 'TK', 'Tokelau', 690, 'Inactive'),
(220, 'TO', 'Tonga', 676, 'Inactive'),
(221, 'TT', 'Trinidad And Tobago', 1868, 'Inactive'),
(222, 'TN', 'Tunisia', 216, 'Inactive'),
(223, 'TR', 'Turkey', 90, 'Inactive'),
(224, 'TM', 'Turkmenistan', 7370, 'Inactive'),
(225, 'TC', 'Turks And Caicos Islands', 1649, 'Inactive'),
(226, 'TV', 'Tuvalu', 688, 'Inactive'),
(227, 'UG', 'Uganda', 256, 'Inactive'),
(228, 'UA', 'Ukraine', 380, 'Inactive'),
(229, 'AE', 'United Arab Emirates', 971, 'Inactive'),
(230, 'GB', 'United Kingdom', 44, 'Inactive'),
(231, 'US', 'United States', 1, 'Active'),
(232, 'UM', 'United States Minor Outlying Islands', 1, 'Inactive'),
(233, 'UY', 'Uruguay', 598, 'Inactive'),
(234, 'UZ', 'Uzbekistan', 998, 'Inactive'),
(235, 'VU', 'Vanuatu', 678, 'Inactive'),
(236, 'VA', 'Vatican City State (Holy See)', 39, 'Inactive'),
(237, 'VE', 'Venezuela', 58, 'Inactive'),
(238, 'VN', 'Vietnam', 84, 'Inactive'),
(239, 'VG', 'Virgin Islands (British)', 1284, 'Inactive'),
(240, 'VI', 'Virgin Islands (US)', 1340, 'Inactive'),
(241, 'WF', 'Wallis And Futuna Islands', 681, 'Inactive'),
(242, 'EH', 'Western Sahara', 212, 'Inactive'),
(243, 'YE', 'Yemen', 967, 'Inactive'),
(244, 'YU', 'Yugoslavia', 38, 'Inactive'),
(245, 'ZM', 'Zambia', 260, 'Inactive'),
(246, 'ZW', 'Zimbabwe', 263, 'Inactive'),
(247, 'Lisandra12', 'Stella Armstrong12', 6212, 'Inactive'),
(248, 'test', 'testc', 48, 'Inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
