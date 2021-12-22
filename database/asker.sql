-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2021 at 11:47 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asker`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `answer` text,
  `rating` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `job_id`, `question_id`, `answer`, `rating`, `created_at`, `updated_at`) VALUES
(1, 114, 2, 1, '1637384888/tmp/phplvjLjc.mp4', 5, '2021-11-20 05:08:09', '2021-12-01 07:18:29'),
(2, 114, 2, 1, '1637401030/tmp/phpNf2XLa.mp4', NULL, '2021-11-20 09:37:10', '2021-11-20 09:37:10'),
(3, 114, 2, 1, '1637401034/tmp/php6YBK7b.mp4', NULL, '2021-11-20 09:37:14', '2021-11-20 09:37:14'),
(289, 114, 42, 47, '1638858353/tmp/phpH09rll.mp4', 2, '2021-12-07 06:25:53', '2021-12-15 04:51:43'),
(290, 114, 42, 47, '1638858484/tmp/phpFkbUOn.mp4', NULL, '2021-12-07 06:28:04', '2021-12-07 06:28:04'),
(291, 114, 42, 47, '1638858484/tmp/phphqb33k.mp4', NULL, '2021-12-07 06:28:04', '2021-12-07 06:28:04'),
(292, 114, 42, 47, '1638858965/tmp/phpRkE0Ko.mp4', NULL, '2021-12-07 06:36:05', '2021-12-07 06:36:05'),
(293, 114, 42, 47, '1638858965/tmp/phpIoaxvo.mp4', NULL, '2021-12-07 06:36:06', '2021-12-07 06:36:06'),
(294, 114, 42, 47, '1638859464/tmp/phpYuQ8Om.mp4', NULL, '2021-12-07 06:44:24', '2021-12-07 06:44:24'),
(295, 114, 42, 47, '1638859464/tmp/phpwexc4k.mp4', NULL, '2021-12-07 06:44:25', '2021-12-07 06:44:25'),
(296, 114, 42, 47, '1638859535/tmp/php8VUh5k.mp4', NULL, '2021-12-07 06:45:35', '2021-12-07 06:45:35'),
(297, 114, 42, 47, '1638859535/tmp/phpWans8l.mp4', NULL, '2021-12-07 06:45:36', '2021-12-07 06:45:36'),
(298, 114, 42, 47, '1638859586/tmp/phpMWTUZm.mp4', NULL, '2021-12-07 06:46:27', '2021-12-07 06:46:27'),
(299, 114, 42, 47, '1638859587/tmp/phpBTtoIl.mp4', NULL, '2021-12-07 06:46:27', '2021-12-07 06:46:27'),
(300, 114, 42, 47, '1638859713/tmp/phpipEIyo.mp4', NULL, '2021-12-07 06:48:33', '2021-12-07 06:48:33'),
(301, 114, 42, 47, '1638859713/tmp/phpBSWlvo.mp4', NULL, '2021-12-07 06:48:33', '2021-12-07 06:48:33'),
(302, 114, 42, 47, '1638859802/tmp/phpnUvyCm.mp4', NULL, '2021-12-07 06:50:03', '2021-12-07 06:50:03'),
(303, 114, 42, 47, '1638859803/tmp/phpLBBHOk.mp4', NULL, '2021-12-07 06:50:03', '2021-12-07 06:50:03'),
(304, 114, 42, 47, '1638859803/tmp/php8BanSl.mp4', NULL, '2021-12-07 06:50:03', '2021-12-07 06:50:03'),
(305, 114, 42, 47, '1638859803/tmp/phpACtiBm.mp4', NULL, '2021-12-07 06:50:03', '2021-12-07 06:50:03'),
(306, 114, 42, 47, '1638859861/tmp/phpmuuDTk.mp4', NULL, '2021-12-07 06:51:01', '2021-12-07 06:51:01'),
(307, 114, 42, 47, '1638859861/tmp/phpYE7W1o.mp4', NULL, '2021-12-07 06:51:02', '2021-12-07 06:51:02'),
(308, 114, 42, 47, '1638860011/tmp/phpaypVIn.mp4', NULL, '2021-12-07 06:53:32', '2021-12-07 06:53:32'),
(309, 114, 42, 47, '1638860198/tmp/php4uQZxm.mp4', NULL, '2021-12-07 06:56:38', '2021-12-07 06:56:38'),
(310, 114, 42, 47, '1638860352/tmp/php61i9Vk.mp4', NULL, '2021-12-07 06:59:13', '2021-12-07 06:59:13'),
(311, 114, 41, 49, '1638863077/tmp/phpU2sHRk.mp4', 5, '2021-12-07 07:44:38', '2021-12-10 13:28:04'),
(312, 114, 41, 49, '1638863790/tmp/phpmB6oel.mp4', NULL, '2021-12-07 07:56:30', '2021-12-07 07:56:30'),
(313, 114, 41, 49, '1638863822/tmp/phpCDOHhm.mp4', NULL, '2021-12-07 07:57:02', '2021-12-07 07:57:02'),
(314, 114, 48, 58, '1638864062/tmp/phpIDenk4.mp4', 3, '2021-12-07 08:01:03', '2021-12-13 07:27:03'),
(315, 114, 48, 57, '1638867587/tmp/phpIMV7e3.mp4', 4, '2021-12-07 08:59:47', '2021-12-13 07:27:05'),
(316, 114, 49, 59, '1638870325/tmp/php5Ievi6.mp4', 4, '2021-12-07 09:45:26', '2021-12-14 09:29:06'),
(317, 114, 51, 62, '1638871025/tmp/phpeEA9W2.mp4', 2, '2021-12-07 09:57:06', '2021-12-17 11:36:17'),
(318, 114, 51, 63, '1638871108/tmp/phpbuk3e3.mp4', 3, '2021-12-07 09:58:28', '2021-12-17 11:36:22'),
(319, 114, 51, 64, '1638871152/tmp/phpdwuFq5.mp4', 2, '2021-12-07 09:59:12', '2021-12-17 11:36:25'),
(320, 114, 55, 65, '1638959813/tmp/phpJAMZBT.mp4', 3, '2021-12-08 10:36:54', '2021-12-14 09:27:18'),
(321, 114, 55, 73, '1638959952/tmp/phpyTx47Q.mp4', NULL, '2021-12-08 10:39:12', '2021-12-08 10:39:12'),
(322, 114, 55, 73, '1638959984/tmp/phpO92a5R.mp4', NULL, '2021-12-08 10:39:45', '2021-12-08 10:39:45'),
(323, 114, 63, 80, '1639137664/tmp/php9N5EiZ.mp4', 3, '2021-12-10 12:01:04', '2021-12-20 09:44:49'),
(324, 114, 63, 81, '1639137846/tmp/phpX0lZ7Y.mp4', NULL, '2021-12-10 12:04:07', '2021-12-10 12:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryId` int NOT NULL,
  `unicode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `countryName` varchar(50) NOT NULL,
  `Currency` varchar(30) DEFAULT NULL,
  `CurrencyCode` varchar(3) DEFAULT NULL,
  `phonecode` varchar(10) NOT NULL,
  `country_flag` varchar(255) DEFAULT NULL,
  `countryName_1` varchar(50) NOT NULL,
  `countryName_2` varchar(50) NOT NULL,
  `isAudienceCountry` enum('y','n') NOT NULL DEFAULT 'y',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryId`, `unicode`, `countryName`, `Currency`, `CurrencyCode`, `phonecode`, `country_flag`, `countryName_1`, `countryName_2`, `isAudienceCountry`, `isActive`) VALUES
(1, '🇱🇧', 'Lebanon', 'Lebanese Pound', 'LBP', '+961', 'lb', 'Lebanon', 'Lebanon', 'y', 'y'),
(2, '🇦🇱', 'Albania', 'Lek ', 'ALL', '+355', 'al', 'Albania', 'Albania', 'y', 'y'),
(3, '🇩🇿', 'Algeria', 'Algerian Dinar ', 'DZD', '+213', 'dz', 'Algeria', 'Algeria', 'y', 'y'),
(4, '🇦🇸', 'American Samoa', 'US Dollar', 'USD', '+1684', 'as', 'American Samoa', 'American Samoa', 'y', 'y'),
(5, '🇦🇩', 'Andorra', 'Euro', 'EUR', '+376', 'ad', 'Andorra', 'Andorra', 'y', 'y'),
(6, '🇦🇴', 'Angola', 'Kwanza ', 'AOA', '+244', 'ao', 'Angola', 'Angola', 'y', 'y'),
(7, '🇦🇮', 'Anguilla', 'East Caribbean Dollar ', 'XCD', '+1264', 'ai', 'Anguilla', 'Anguilla', 'y', 'y'),
(8, '🇦🇶', 'Antarctica', '', '', '+672', 'aq', 'Antarctica', 'Antarctica', 'y', 'y'),
(9, '🇦🇬', 'Antigua and Barbuda', 'East Caribbean Dollar ', 'XCD', '+1268', 'ag', 'Antigua and Barbuda', 'Antigua and Barbuda', 'y', 'y'),
(10, '🇦🇷', 'Argentina', 'Argentine Peso ', 'ARS', '+54', 'ar', 'Argentina', 'Argentina', 'y', 'y'),
(11, '🇦🇲', 'Armenia', 'Armenian Dram ', 'AMD', '+374', 'am', 'Armenia', 'Armenia', 'y', 'y'),
(12, '🇦🇼', 'Aruba', 'Aruban Guilder', 'AWG', '+297', 'aw', 'Aruba', 'Aruba', 'y', 'y'),
(13, NULL, 'Ashmore and Cartier', '', '', '', NULL, 'Ashmore and Cartier', 'Ashmore and Cartier', 'y', 'n'),
(14, '🇦🇺', 'Australia', 'Australian dollar ', 'AUD', '+61', 'au', 'Australia', 'Australia', 'y', 'y'),
(15, '🇦🇹', 'Austria', 'Euro', 'EUR', '+43', 'at', 'Austria', 'Austria', 'y', 'y'),
(16, '🇦🇿', 'Azerbaijan', 'Azerbaijani Manat ', 'AZM', '+994', 'az', 'Azerbaijan', 'Azerbaijan', 'y', 'y'),
(17, '🇧🇸', 'The Bahamas', 'Bahamian Dollar ', 'BSD', '+1242', 'bs', 'The Bahamas', 'The Bahamas', 'y', 'y'),
(18, '🇧🇭', 'Bahrain', 'Bahraini Dinar ', 'BHD', '+973', 'bh', 'Bahrain', 'Bahrain', 'y', 'y'),
(19, NULL, 'Baker Island', '', '', '', NULL, 'Baker Island', 'Baker Island', 'y', 'n'),
(20, '🇧🇩', 'Bangladesh', 'Taka ', 'BDT', '+880', 'bd', 'Bangladesh', 'Bangladesh', 'y', 'y'),
(21, '🇧🇧', 'Barbados', 'Barbados Dollar', 'BBD', '+1246', 'bb', 'Barbados', 'Barbados', 'y', 'y'),
(22, NULL, 'Bassas da India', '', '', '', NULL, 'Bassas da India', 'Bassas da India', 'y', 'n'),
(23, '🇧🇾', 'Belarus', 'Belarussian Ruble', 'BYR', '+375', 'by', 'Belarus', 'Belarus', 'y', 'y'),
(24, '🇧🇪', 'Belgium', 'Euro', 'EUR', '+32', 'be', 'Belgium', 'Belgium', 'y', 'y'),
(25, '🇧🇿', 'Belize', 'Belize Dollar', 'BZD', '+501', 'bz', 'Belize', 'Belize', 'y', 'y'),
(26, '🇧🇯', 'Benin', 'CFA Franc BCEAO', 'XOF', '+229', 'bj', 'Benin', 'Benin', 'y', 'y'),
(27, '🇧🇲', 'Bermuda', 'Bermudian Dollar ', 'BMD', '+1441', 'bm', 'Bermuda', 'Bermuda', 'y', 'y'),
(28, '🇧🇹', 'Bhutan', 'Ngultrum', 'BTN', '+975', 'bt', 'Bhutan', 'Bhutan', 'y', 'y'),
(29, '🇧🇴', 'Bolivia', 'Boliviano ', 'BOB', '+591', 'bo', 'Bolivia', 'Bolivia', 'y', 'y'),
(30, '🇧🇦', 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', '+387', 'ba', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'y', 'y'),
(31, '🇧🇼', 'Botswana', 'Pula ', 'BWP', '+267', 'bw', 'Botswana', 'Botswana', 'y', 'y'),
(32, NULL, 'Bouvet Island', 'Norwegian Krone ', 'NOK', '', 'bv', 'Bouvet Island', 'Bouvet Island', 'y', 'n'),
(33, '🇧🇷', 'Brazil', 'Brazilian Real ', 'BRL', '+55', 'br', 'Brazil', 'Brazil', 'y', 'y'),
(34, '🇮🇴', 'British Indian Ocean Territory', 'US Dollar', 'USD', '+246', 'io', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'y', 'y'),
(35, '🇻🇬', 'British Virgin Islands', 'US Dollar', 'USD', '+1284', 'vg', 'British Virgin Islands', 'British Virgin Islands', 'y', 'y'),
(36, '🇧🇳', 'Brunei Darussalam', 'Brunei Dollar', 'BND', '+673', 'bn', 'Brunei Darussalam', 'Brunei Darussalam', 'y', 'y'),
(37, '🇧🇬', 'Bulgaria', 'Lev ', 'BGN', '+359', 'bg', 'Bulgaria', 'Bulgaria', 'y', 'y'),
(38, '🇧🇫', 'Burkina Faso', 'CFA Franc BCEAO', 'XOF', '+226', 'bf', 'Burkina Faso', 'Burkina Faso', 'y', 'y'),
(39, NULL, 'Burma', 'kyat ', 'MMK', '', 'mm', 'Burma', 'Burma', 'y', 'n'),
(40, '🇧🇮', 'Burundi', 'Burundi Franc ', 'BIF', '+257', 'bi', 'Burundi', 'Burundi', 'y', 'y'),
(41, '🇰🇭', 'Cambodia', 'Riel ', 'KHR', '+855', 'kh', 'Cambodia', 'Cambodia', 'y', 'y'),
(42, '🇨🇲', 'Cameroon', 'CFA Franc BEAC', 'XAF', '+237', 'cm', 'Cameroon', 'Cameroon', 'y', 'y'),
(43, '🇨🇦', 'Canada', 'Canadian Dollar ', 'CAD', '+1', 'ca', 'Canada', 'Canada', 'y', 'y'),
(44, '🇨🇻', 'Cape Verde', 'Cape Verdean Escudo ', 'CVE', '+238', 'cv', 'Cape Verde', 'Cape Verde', 'y', 'y'),
(45, '🇰🇾', 'Cayman Islands', 'Cayman Islands Dollar', 'KYD', '+1345', 'ky', 'Cayman Islands', 'Cayman Islands', 'y', 'y'),
(46, '🇨🇫', 'Central African Republic', 'CFA Franc BEAC', 'XAF', '+236', 'cf', 'Central African Republic', 'Central African Republic', 'y', 'y'),
(47, '🇹🇩', 'Chad', 'CFA Franc BEAC', 'XAF', '+235', 'td', 'Chad', 'Chad', 'y', 'y'),
(48, '🇨🇱', 'Chile', 'Chilean Peso ', 'CLP', '+56', 'cl', 'Chile', 'Chile', 'y', 'y'),
(49, '🇨🇳', 'China', 'Yuan Renminbi', 'CNY', '+86', 'cn', 'China', 'China', 'y', 'y'),
(50, '🇨🇽', 'Christmas Island', 'Australian Dollar ', 'AUD', '', 'cx', 'Christmas Island', 'Christmas Island', 'y', 'n'),
(51, NULL, 'Clipperton Island', '', '', '', 'cp', 'Clipperton Island', 'Clipperton Island', 'y', 'n'),
(52, '🇨🇨', 'Cocos (Keeling) Islands', 'Australian Dollar ', 'AUD', '', 'cc', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'y', 'n'),
(53, '🇨🇴', 'Colombia', 'Colombian Peso ', 'COP', '+57', 'co', 'Colombia', 'Colombia', 'y', 'y'),
(54, '🇰🇲', 'Comoros', 'Comoro Franc', 'KMF', '+269', 'km', 'Comoros', 'Comoros', 'y', 'y'),
(55, '🇨🇩', 'Congo, Democratic Republic of the', 'Franc Congolais', 'CDF', '+243', 'cd', 'Congo, Democratic Republic of the', 'Congo, Democratic Republic of the', 'y', 'y'),
(56, '🇨🇩', 'Congo, Republic of the', 'CFA Franc BEAC', 'XAF', '+242', 'cd', 'Congo, Republic of the', 'Congo, Republic of the', 'y', 'y'),
(57, '🇨🇰', 'Cook Islands', 'New Zealand Dollar ', 'NZD', '+682', 'ck', 'Cook Islands', 'Cook Islands', 'y', 'y'),
(58, NULL, 'Coral Sea Islands', '', '', '', NULL, 'Coral Sea Islands', 'Coral Sea Islands', 'y', 'n'),
(59, '🇨🇷', 'Costa Rica', 'Costa Rican Colon', 'CRC', '+506', 'cr', 'Costa Rica', 'Costa Rica', 'y', 'y'),
(60, '🇨🇮', 'Cote d\'Ivoire', 'CFA Franc BCEAO', 'XOF', '+225', 'ci', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'y', 'y'),
(61, '🇭🇷', 'Croatia', 'Kuna', 'HRK', '+385', 'hr', 'Croatia', 'Croatia', 'y', 'y'),
(62, '🇨🇺', 'Cuba', 'Cuban Peso', 'CUP', '+53', 'cu', 'Cuba', 'Cuba', 'y', 'y'),
(63, '🇨🇾', 'Cyprus', 'Cyprus Pound', 'CYP', '+357', 'cy', 'Cyprus', 'Cyprus', 'y', 'y'),
(64, '🇨🇿', 'Czech Republic', 'Czech Koruna', 'CZK', '+420', 'cz', 'Czech Republic', 'Czech Republic', 'y', 'y'),
(65, '🇩🇰', 'Denmark', 'Danish Krone', 'DKK', '+45', 'dk', 'Denmark', 'Denmark', 'y', 'y'),
(66, '🇩🇯', 'Djibouti', 'Djibouti Franc', 'DJF', '+253', 'dj', 'Djibouti', 'Djibouti', 'y', 'y'),
(67, '🇩🇲', 'Dominica', 'East Caribbean Dollar', 'XCD', '+1767', 'dm', 'Dominica', 'Dominica', 'y', 'y'),
(68, '🇩🇴', 'Dominican Republic', 'Dominican Peso', 'DOP', '+1', 'do', 'Dominican Republic', 'Dominican Republic', 'y', 'y'),
(69, NULL, 'East Timor', 'Timor Escudo', 'TPE', '', NULL, 'East Timor', 'East Timor', 'y', 'n'),
(70, '🇪🇨', 'Ecuador', 'US Dollar', 'USD', '+593', 'ec', 'Ecuador', 'Ecuador', 'y', 'y'),
(71, '🇪🇬', 'Egypt', 'Egyptian Pound ', 'EGP', '+20', 'eg', 'Egypt', 'Egypt', 'y', 'y'),
(72, '🇸🇻', 'El Salvador', 'El Salvador Colon', 'SVC', '+503', 'sv', 'El Salvador', 'El Salvador', 'y', 'y'),
(73, '🇬🇶', 'Equatorial Guinea', 'CFA Franc BEAC', 'XAF', '+240', 'gq', 'Equatorial Guinea', 'Equatorial Guinea', 'y', 'y'),
(74, '🇪🇷', 'Eritrea', 'Nakfa', 'ERN', '+291', 'er', 'Eritrea', 'Eritrea', 'y', 'y'),
(75, '🇪🇪', 'Estonia', 'Kroon', 'EEK', '+372', 'ee', 'Estonia', 'Estonia', 'y', 'y'),
(76, '🇪🇹', 'Ethiopia', 'Ethiopian Birr', 'ETB', '+251', 'et', 'Ethiopia', 'Ethiopia', 'y', 'y'),
(77, NULL, 'Europa Island', '', '', '', NULL, 'Europa Island', 'Europa Island', 'y', 'n'),
(78, '🇫🇰', 'Falkland Islands (Islas Malvinas)', 'Falkland Islands Pound', 'FKP', '+500', 'fk', 'Falkland Islands (Islas Malvinas)', 'Falkland Islands (Islas Malvinas)', 'y', 'y'),
(79, '🇫🇴', 'Faroe Islands', 'Danish Krone ', 'DKK', '+298', 'fo', 'Faroe Islands', 'Faroe Islands', 'y', 'y'),
(80, '🇫🇯', 'Fiji', 'Fijian Dollar ', 'FJD', '+679', 'fj', 'Fiji', 'Fiji', 'y', 'y'),
(81, '🇫🇮', 'Finland', 'Euro', 'EUR', '+358', 'fi', 'Finland', 'Finland', 'y', 'y'),
(82, '🇫🇷', 'France', 'Euro', 'EUR', '+33', 'fr', 'France', 'France', 'y', 'y'),
(83, NULL, 'France, Metropolitan', 'Euro', 'EUR', '', NULL, 'France, Metropolitan', 'France, Metropolitan', 'y', 'n'),
(84, '🇬🇫', 'French Guiana', 'Euro', 'EUR', '+594', 'gf', 'French Guiana', 'French Guiana', 'y', 'y'),
(85, '🇵🇫', 'French Polynesia', 'CFP Franc', 'XPF', '+689', 'pf', 'French Polynesia', 'French Polynesia', 'y', 'y'),
(86, NULL, 'French Southern and Antarctic Lands', 'Euro', 'EUR', '', NULL, 'French Southern and Antarctic Lands', 'French Southern and Antarctic Lands', 'y', 'n'),
(87, '🇬🇦', 'Gabon', 'CFA Franc BEAC', 'XAF', '+241', 'ga', 'Gabon', 'Gabon', 'y', 'y'),
(88, '🇬🇲', 'The Gambia', 'Dalasi', 'GMD', '+220', 'gm', 'The Gambia', 'The Gambia', 'y', 'y'),
(89, NULL, 'Gaza Strip', 'New Israeli Shekel ', 'ILS', '', NULL, 'Gaza Strip', 'Gaza Strip', 'y', 'n'),
(90, '🇬🇪', 'Georgia', 'Lari', 'GEL', '+995', 'ge', 'Georgia', 'Georgia', 'y', 'y'),
(91, '🇩🇪', 'Germany', 'Euro', 'EUR', '+49', 'de', 'Germany', 'Germany', 'y', 'y'),
(92, '🇬🇭', 'Ghana', 'Cedi', 'GHC', '+233', 'gh', 'Ghana', 'Ghana', 'y', 'y'),
(93, '🇬🇮', 'Gibraltar', 'Gibraltar Pound', 'GIP', '+350', 'gi', 'Gibraltar', 'Gibraltar', 'y', 'y'),
(94, NULL, 'Glorioso Islands', '', '', '', NULL, 'Glorioso Islands', 'Glorioso Islands', 'y', 'n'),
(95, '🇬🇷', 'Greece', 'Euro', 'EUR', '+30', 'gr', 'Greece', 'Greece', 'y', 'y'),
(96, '🇬🇱', 'Greenland', 'Danish Krone', 'DKK', '+299', 'gl', 'Greenland', 'Greenland', 'y', 'y'),
(97, '🇬🇩', 'Grenada', 'East Caribbean Dollar', 'XCD', '+1473', 'gd', 'Grenada', 'Grenada', 'y', 'y'),
(98, '🇬🇵', 'Guadeloupe', 'Euro', 'EUR', '+590', 'gp', 'Guadeloupe', 'Guadeloupe', 'y', 'y'),
(99, '🇬🇺', 'Guam', 'US Dollar', 'USD', '+1671', 'gu', 'Guam', 'Guam', 'y', 'y'),
(100, '🇬🇹', 'Guatemala', 'Quetzal', 'GTQ', '+502', 'gt', 'Guatemala', 'Guatemala', 'y', 'y'),
(101, '🇬🇬', 'Guernsey', 'Pound Sterling', 'GBP', '', 'gg', 'Guernsey', 'Guernsey', 'y', 'n'),
(102, '🇬🇳', 'Guinea', 'Guinean Franc ', 'GNF', '+224', 'gn', 'Guinea', 'Guinea', 'y', 'y'),
(103, '🇬🇼', 'Guinea-Bissau', 'CFA Franc BCEAO', 'XOF', '+245', 'gw', 'Guinea-Bissau', 'Guinea-Bissau', 'y', 'y'),
(104, '🇬🇾', 'Guyana', 'Guyana Dollar', 'GYD', '+592', 'gy', 'Guyana', 'Guyana', 'y', 'y'),
(105, '🇭🇹', 'Haiti', 'Gourde', 'HTG', '+509', 'ht', 'Haiti', 'Haiti', 'y', 'y'),
(106, NULL, 'Heard Island and McDonald Islands', 'Australian Dollar', 'AUD', '', NULL, 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'y', 'n'),
(107, NULL, 'Holy See (Vatican City)', 'Euro', 'EUR', '', NULL, 'Holy See (Vatican City)', 'Holy See (Vatican City)', 'y', 'n'),
(108, '🇭🇳', 'Honduras', 'Lempira', 'HNL', '+504', 'hn', 'Honduras', 'Honduras', 'y', 'y'),
(109, '🇭🇰', 'Hong Kong (SAR)', 'Hong Kong Dollar ', 'HKD', '+852', 'hk', 'Hong Kong (SAR)', 'Hong Kong (SAR)', 'y', 'y'),
(110, NULL, 'Howland Island', '', '', '', NULL, 'Howland Island', 'Howland Island', 'y', 'n'),
(111, '🇭🇺', 'Hungary', 'Forint', 'HUF', '+36', 'hu', 'Hungary', 'Hungary', 'y', 'y'),
(112, '🇮🇸', 'Iceland', 'Iceland Krona', 'ISK', '+354', 'is', 'Iceland', 'Iceland', 'y', 'y'),
(114, '🇮🇩', 'Indonesia', 'Rupiah', 'IDR', '+62', 'id', 'Indonesia', 'Indonesia', 'y', 'y'),
(115, '🇮🇷', 'Iran', 'Iranian Rial', 'IRR', '+98', 'ir', 'Iran', 'Iran', 'y', 'y'),
(116, '🇮🇶', 'Iraq', 'Iraqi Dinar', 'IQD', '+964', 'iq', 'Iraq', 'Iraq', 'y', 'y'),
(117, '🇮🇪', 'Ireland', 'Euro', 'EUR', '+353', 'ie', 'Ireland', 'Ireland', 'y', 'y'),
(118, '🇮🇱', 'Israel', 'New Israeli Sheqel', 'ILS', '+972', 'il', 'Israel', 'Israel', 'y', 'y'),
(119, '🇮🇹', 'Italy', 'Euro', 'EUR', '+39', 'it', 'Italy', 'Italy', 'y', 'y'),
(120, '🇯🇲', 'Jamaica', 'Jamaican dollar ', 'JMD', '+1876', 'jm', 'Jamaica', 'Jamaica', 'y', 'y'),
(121, NULL, 'Jan Mayen', 'Norway Kroner', 'NOK', '', 'sj', 'Jan Mayen', 'Jan Mayen', 'y', 'n'),
(122, '🇯🇵', 'Japan', 'Yen ', 'JPY', '+81', 'jp', 'Japan', 'Japan', 'y', 'y'),
(123, NULL, 'Jarvis Island', '', '', '', NULL, 'Jarvis Island', 'Jarvis Island', 'y', 'n'),
(124, NULL, 'Jersey', 'Pound Sterling', 'GBP', '', 'je', 'Jersey', 'Jersey', 'y', 'n'),
(125, NULL, 'Johnston Atoll', '', '', '', NULL, 'Johnston Atoll', 'Johnston Atoll', 'y', 'n'),
(126, '🇯🇴', 'Jordan', 'Jordanian Dinar', 'JOD', '+962', 'jo', 'Jordan', 'Jordan', 'y', 'y'),
(127, NULL, 'Juan de Nova Island', '', '', '', NULL, 'Juan de Nova Island', 'Juan de Nova Island', 'y', 'n'),
(128, '🇰🇿', 'Kazakhstan', 'Tenge', 'KZT', '+7', 'kz', 'Kazakhstan', 'Kazakhstan', 'y', 'y'),
(129, '🇰🇪', 'Kenya', 'Kenyan shilling ', 'KES', '+254', 'ke', 'Kenya', 'Kenya', 'y', 'y'),
(130, NULL, 'Kingman Reef', '', '', '', NULL, 'Kingman Reef', 'Kingman Reef', 'y', 'n'),
(131, '🇰🇮', 'Kiribati', 'Australian dollar ', 'AUD', '+686', 'ki', 'Kiribati', 'Kiribati', 'y', 'y'),
(132, NULL, 'Korea, North', 'North Korean Won', 'KPW', '', 'kp', 'Korea, North', 'Korea, North', 'y', 'n'),
(133, NULL, 'Korea, South', 'Won', 'KRW', '', 'kr', 'Korea, South', 'Korea, South', 'y', 'n'),
(134, '🇰🇼', 'Kuwait', 'Kuwaiti Dinar', 'KWD', '+965', 'kw', 'Kuwait', 'Kuwait', 'y', 'y'),
(135, '🇰🇬', 'Kyrgyzstan', 'Som', 'KGS', '+996', 'kg', 'Kyrgyzstan', 'Kyrgyzstan', 'y', 'y'),
(136, '🇱🇦', 'Laos', 'Kip', 'LAK', '+856', 'la', 'Laos', 'Laos', 'y', 'y'),
(137, '🇱🇻', 'Latvia', 'Latvian Lats', 'LVL', '+371', 'lv', 'Latvia', 'Latvia', 'y', 'y'),
(138, '🇮🇳', 'India', 'Indian Rupee ', 'INR', '+91', 'in', 'India', 'India', 'y', 'y'),
(139, '🇱🇸', 'Lesotho', 'Loti', 'LSL', '+266', 'ls', 'Lesotho', 'Lesotho', 'y', 'y'),
(140, '🇱🇷', 'Liberia', 'Liberian Dollar', 'LRD', '+231', 'lr', 'Liberia', 'Liberia', 'y', 'y'),
(141, '🇱🇾', 'Libya', 'Libyan Dinar', 'LYD', '+218', 'ly', 'Libya', 'Libya', 'y', 'y'),
(142, '🇱🇮', 'Liechtenstein', 'Swiss Franc', 'CHF', '+423', 'li', 'Liechtenstein', 'Liechtenstein', 'y', 'y'),
(143, '🇱🇹', 'Lithuania', 'Lithuanian Litas', 'LTL', '+370', 'lt', 'Lithuania', 'Lithuania', 'y', 'y'),
(144, '🇱🇺', 'Luxembourg', 'Euro', 'EUR', '+352', 'lu', 'Luxembourg', 'Luxembourg', 'y', 'y'),
(145, '🇲🇴', 'Macao', 'Pataca', 'MOP', '+853', 'mo', 'Macao', 'Macao', 'y', 'y'),
(146, '🇲🇰', 'Macedonia, The Former Yugoslav Republic of', 'Denar', 'MKD', '+389', 'mk', 'Macedonia, The Former Yugoslav Republic of', 'Macedonia, The Former Yugoslav Republic of', 'y', 'y'),
(147, '🇲🇬', 'Madagascar', 'Malagasy Franc', 'MGF', '+261', 'mg', 'Madagascar', 'Madagascar', 'y', 'y'),
(148, '🇲🇼', 'Malawi', 'Kwacha', 'MWK', '+265', 'mw', 'Malawi', 'Malawi', 'y', 'y'),
(149, '🇲🇾', 'Malaysia', 'Malaysian Ringgit', 'MYR', '+60', 'my', 'Malaysia', 'Malaysia', 'y', 'y'),
(150, '🇲🇻', 'Maldives', 'Rufiyaa', 'MVR', '+960', 'mv', 'Maldives', 'Maldives', 'y', 'y'),
(151, '🇲🇱', 'Mali', 'CFA Franc BCEAO', 'XOF', '+223', 'ml', 'Mali', 'Mali', 'y', 'y'),
(152, '🇲🇹', 'Malta', 'Euro', 'EUR', '+356', 'mt', 'Malta', 'Malta', 'y', 'y'),
(153, NULL, 'Man, Isle of', 'Pound Sterling', 'GBP', '', NULL, 'Man, Isle of', 'Man, Isle of', 'y', 'n'),
(154, '🇲🇭', 'Marshall Islands', 'US Dollar', 'USD', '+692', 'mh', 'Marshall Islands', 'Marshall Islands', 'y', 'y'),
(155, '🇲🇶', 'Martinique', 'Euro', 'EUR', '+596', 'mq', 'Martinique', 'Martinique', 'y', 'y'),
(156, '🇲🇷', 'Mauritania', 'Ouguiya', 'MRO', '+222', 'mr', 'Mauritania', 'Mauritania', 'y', 'y'),
(157, '🇲🇺', 'Mauritius', 'Mauritius Rupee', 'MUR', '+230', 'mu', 'Mauritius', 'Mauritius', 'y', 'y'),
(158, '🇦🇼', 'Mayotte', 'Euro', 'EUR', '', 'yt', 'Mayotte', 'Mayotte', 'y', 'n'),
(159, '🇲🇽', 'Mexico', 'Mexican Peso', 'MXN', '+52', 'mx', 'Mexico', 'Mexico', 'y', 'y'),
(160, '🇫🇲', 'Micronesia, Federated States of', 'US Dollar', 'USD', '+691', 'fm', 'Micronesia, Federated States of', 'Micronesia, Federated States of', 'y', 'y'),
(161, NULL, 'Midway Islands', 'United States Dollars', 'USD', '', NULL, 'Midway Islands', 'Midway Islands', 'y', 'n'),
(162, NULL, 'Miscellaneous (French)', '', '', '', NULL, 'Miscellaneous (French)', 'Miscellaneous (French)', 'y', 'n'),
(163, '🇲🇩', 'Moldova', 'Moldovan Leu', 'MDL', '+373', 'md', 'Moldova', 'Moldova', 'y', 'y'),
(164, '🇲🇨', 'Monaco', 'Euro', 'EUR', '+377', 'mc', 'Monaco', 'Monaco', 'y', 'y'),
(165, '🇲🇳', 'Mongolia', 'Tugrik', 'MNT', '+976', 'mn', 'Mongolia', 'Mongolia', 'y', 'y'),
(166, '🇲🇪', 'Montenegro', '', '', '+382', 'me', 'Montenegro', 'Montenegro', 'y', 'y'),
(167, '🇲🇸', 'Montserrat', 'East Caribbean Dollar', 'XCD', '+1664', 'ms', 'Montserrat', 'Montserrat', 'y', 'y'),
(168, '🇲🇦', 'Morocco', 'Moroccan Dirham', 'MAD', '+212', 'ma', 'Morocco', 'Morocco', 'y', 'y'),
(169, '🇲🇿', 'Mozambique', 'Metical', 'MZM', '+258', 'mz', 'Mozambique', 'Mozambique', 'y', 'y'),
(170, '🇲🇲', 'Myanmar', 'Kyat', 'MMK', '+95', 'mm', 'Myanmar', 'Myanmar', 'y', 'y'),
(171, '🇳🇦', 'Namibia', 'Namibian Dollar ', 'NAD', '+264', 'na', 'Namibia', 'Namibia', 'y', 'y'),
(172, '🇳🇷', 'Nauru', 'Australian Dollar', 'AUD', '+674', 'nr', 'Nauru', 'Nauru', 'y', 'y'),
(173, NULL, 'Navassa Island', '', '', '', NULL, 'Navassa Island', 'Navassa Island', 'y', 'n'),
(174, '🇳🇵', 'Nepal', 'Nepalese Rupee', 'NPR', '+977', 'np', 'Nepal', 'Nepal', 'y', 'y'),
(175, '🇳🇱', 'Netherlands', 'Euro', 'EUR', '+31', 'nl', 'Netherlands', 'Netherlands', 'y', 'y'),
(176, NULL, 'Netherlands Antilles', 'Netherlands Antillean guilder ', 'ANG', '', NULL, 'Netherlands Antilles', 'Netherlands Antilles', 'y', 'n'),
(177, '🇳🇨', 'New Caledonia', 'CFP Franc', 'XPF', '+687', 'nc', 'New Caledonia', 'New Caledonia', 'y', 'y'),
(178, '🇳🇿', 'New Zealand', 'New Zealand Dollar', 'NZD', '+64', 'nz', 'New Zealand', 'New Zealand', 'y', 'y'),
(179, '🇳🇮', 'Nicaragua', 'Cordoba Oro', 'NIO', '+505', 'ni', 'Nicaragua', 'Nicaragua', 'y', 'y'),
(180, '🇳🇪', 'Niger', 'CFA Franc BCEAO', 'XOF', '+227', 'ne', 'Niger', 'Niger', 'y', 'y'),
(181, '🇳🇬', 'Nigeria', 'Naira', 'NGN', '+234', 'ng', 'Nigeria', 'Nigeria', 'y', 'y'),
(182, '🇳🇺', 'Niue', 'New Zealand Dollar', 'NZD', '+683', 'nu', 'Niue', 'Niue', 'y', 'y'),
(183, '🇳🇫', 'Norfolk Island', 'Australian Dollar', 'AUD', '+672', 'nf', 'Norfolk Island', 'Norfolk Island', 'y', 'y'),
(184, '🇲🇵', 'Northern Mariana Islands', 'US Dollar', 'USD', '+1670', 'mp', 'Northern Mariana Islands', 'Northern Mariana Islands', 'y', 'y'),
(185, '🇳🇴', 'Norway', 'Norwegian Krone', 'NOK', '+47', 'no', 'Norway', 'Norway', 'y', 'y'),
(186, '🇴🇲', 'Oman', 'Rial Omani', 'OMR', '+968', 'om', 'Oman', 'Oman', 'y', 'y'),
(187, '🇵🇰', 'Pakistan', 'Pakistan Rupee', 'PKR', '+92', 'pk', 'Pakistan', 'Pakistan', 'y', 'y'),
(188, '🇵🇼', 'Palau', 'US Dollar', 'USD', '+680', 'pw', 'Palau', 'Palau', 'y', 'y'),
(189, NULL, 'Palmyra Atoll', '', '', '', NULL, 'Palmyra Atoll', 'Palmyra Atoll', 'y', 'n'),
(190, '🇵🇦', 'Panama', 'balboa ', 'PAB', '+507', 'pa', 'Panama', 'Panama', 'y', 'y'),
(191, '🇵🇬', 'Papua New Guinea', 'Kina', 'PGK', '+675', 'pg', 'Papua New Guinea', 'Papua New Guinea', 'y', 'y'),
(192, NULL, 'Paracel Islands', '', '', '', NULL, 'Paracel Islands', 'Paracel Islands', 'y', 'n'),
(193, '🇵🇾', 'Paraguay', 'Guarani', 'PYG', '+595', 'py', 'Paraguay', 'Paraguay', 'y', 'y'),
(194, '🇵🇪', 'Peru', 'Nuevo Sol', 'PEN', '+51', 'pe', 'Peru', 'Peru', 'y', 'y'),
(195, '🇵🇭', 'Philippines', 'Philippine Peso', 'PHP', '+63', 'ph', 'Philippines', 'Philippines', 'y', 'y'),
(196, NULL, 'Pitcairn Islands', 'New Zealand Dollar', 'NZD', '', NULL, 'Pitcairn Islands', 'Pitcairn Islands', 'y', 'n'),
(197, '🇵🇱', 'Poland', 'Zloty', 'PLN', '+48', 'pl', 'Poland', 'Poland', 'y', 'y'),
(198, '🇵🇹', 'Portugal', 'Euro', 'EUR', '+351', 'pt', 'Portugal', 'Portugal', 'y', 'y'),
(199, '🇵🇷', 'Puerto Rico', 'US Dollar', 'USD', '+1', 'pr', 'Puerto Rico', 'Puerto Rico', 'y', 'y'),
(200, '🇶🇦', 'Qatar', 'Qatari Rial', 'QAR', '+974', 'qa', 'Qatar', 'Qatar', 'y', 'y'),
(201, '🇷🇪', 'Reunion', 'Euro', 'EUR', '+262', 're', 'Reunion', 'Reunion', 'y', 'y'),
(202, '🇷🇴', 'Romania', 'Leu', 'ROL', '+40', 'ro', 'Romania', 'Romania', 'y', 'y'),
(203, '🇷🇺', 'Russia', 'Russian Ruble', 'RUB', '+7', 'ru', 'Russia', 'Russia', 'y', 'y'),
(204, '🇷🇼', 'Rwanda', 'Rwanda Franc', 'RWF', '+250', 'rw', 'Rwanda', 'Rwanda', 'y', 'y'),
(205, '🇸🇭', 'Saint Helena', 'Saint Helenian Pound ', 'SHP', '+290', 'sh', 'Saint Helena', 'Saint Helena', 'y', 'y'),
(206, '🇰🇳', 'Saint Kitts and Nevis', 'East Caribbean Dollar ', 'XCD', '+1869', 'kn', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'y', 'y'),
(207, '🇱🇨', 'Saint Lucia', 'East Caribbean Dollar ', 'XCD', '+1758', 'lc', 'Saint Lucia', 'Saint Lucia', 'y', 'y'),
(208, '🇵🇲', 'Saint Pierre and Miquelon', 'Euro', 'EUR', '+508', 'pm', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'y', 'y'),
(209, '🇻🇨', 'Saint Vincent and the Grenadines', 'East Caribbean Dollar ', 'XCD', '+1784', 'vc', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'y', 'y'),
(210, '🇼🇸', 'Samoa', 'Tala', 'WST', '+685', 'ws', 'Samoa', 'Samoa', 'y', 'y'),
(211, '🇸🇲', 'San Marino', 'Euro', 'EUR', '+378', 'sm', 'San Marino', 'San Marino', 'y', 'y'),
(212, '🇸🇹', 'Sao Tome and Principe', 'Dobra', 'STD', '+239', 'st', 'Sao Tome and Principe', 'Sao Tome and Principe', 'y', 'y'),
(213, '🇸🇦', 'Saudi Arabia', 'Saudi Riyal', 'SAR', '+966', 'sa', 'Saudi Arabia', 'Saudi Arabia', 'y', 'y'),
(214, '🇸🇳', 'Senegal', 'CFA Franc BCEAO', 'XOF', '+221', 'sn', 'Senegal', 'Senegal', 'y', 'y'),
(215, '🇷🇸', 'Serbia', '', '', '+381', 'rs', 'Serbia', 'Serbia', 'y', 'y'),
(216, NULL, 'Serbia and Montenegro', '', '', '', NULL, 'Serbia and Montenegro', 'Serbia and Montenegro', 'y', 'n'),
(217, '🇸🇨', 'Seychelles', 'Seychelles Rupee', 'SCR', '+248', 'sc', 'Seychelles', 'Seychelles', 'y', 'y'),
(218, '🇸🇱', 'Sierra Leone', 'Leone', 'SLL', '+232', 'sl', 'Sierra Leone', 'Sierra Leone', 'y', 'y'),
(219, '🇸🇬', 'Singapore', 'Singapore Dollar', 'SGD', '+65', 'sg', 'Singapore', 'Singapore', 'y', 'y'),
(220, '🇸🇰', 'Slovakia', 'Euro', 'EUR', '+421', 'sk', 'Slovakia', 'Slovakia', 'y', 'y'),
(221, '🇸🇮', 'Slovenia', 'Euro', 'EUR', '+386', 'si', 'Slovenia', 'Slovenia', 'y', 'y'),
(222, '🇸🇧', 'Solomon Islands', 'Solomon Islands Dollar', 'SBD', '+677', 'sb', 'Solomon Islands', 'Solomon Islands', 'y', 'y'),
(223, '🇸🇴', 'Somalia', 'Somali Shilling', 'SOS', '+252', 'so', 'Somalia', 'Somalia', 'y', 'y'),
(224, '🇿🇦', 'South Africa', 'Rand', 'ZAR', '+27', 'za', 'South Africa', 'South Africa', 'y', 'y'),
(225, NULL, 'South Georgia and the South Sandwich Islands', 'Pound Sterling', 'GBP', '', NULL, 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'y', 'n'),
(226, '🇪🇸', 'Spain', 'Euro', 'EUR', '+34', 'es', 'Spain', 'Spain', 'y', 'y'),
(227, NULL, 'Spratly Islands', '', '', '', NULL, 'Spratly Islands', 'Spratly Islands', 'y', 'n'),
(228, '🇱🇰', 'Sri Lanka', 'Sri Lanka Rupee', 'LKR', '+94', 'lk', 'Sri Lanka', 'Sri Lanka', 'y', 'y'),
(229, '🇸🇩', 'Sudan', 'Sudanese Dinar', 'SDD', '+249', 'sd', 'Sudan', 'Sudan', 'y', 'y'),
(230, '🇸🇷', 'Suriname', 'Suriname Guilder', 'SRG', '+597', 'sr', 'Suriname', 'Suriname', 'y', 'y'),
(231, NULL, 'Svalbard', 'Norwegian Krone', 'NOK', '', 'sj', 'Svalbard', 'Svalbard', 'y', 'n'),
(232, '🇸🇿', 'Swaziland', 'Lilangeni', 'SZL', '+268', 'sz', 'Swaziland', 'Swaziland', 'y', 'y'),
(233, '🇸🇪', 'Sweden', 'Swedish Krona', 'SEK', '+46', 'se', 'Sweden', 'Sweden', 'y', 'y'),
(234, '🇨🇭', 'Switzerland', 'Swiss Franc', 'CHF', '+41', 'ch', 'Switzerland', 'Switzerland', 'y', 'y'),
(235, '🇸🇾', 'Syria', 'Syrian Pound', 'SYP', '+963', 'sy', 'Syria', 'Syria', 'y', 'y'),
(236, '🇹🇼', 'Taiwan', 'New Taiwan Dollar', 'TWD', '+886', 'tw', 'Taiwan', 'Taiwan', 'y', 'y'),
(237, '🇹🇯', 'Tajikistan', 'Somoni', 'TJS', '+992', 'tj', 'Tajikistan', 'Tajikistan', 'y', 'y'),
(238, '🇹🇿', 'Tanzania', 'Tanzanian Shilling', 'TZS', '+255', 'tz', 'Tanzania', 'Tanzania', 'y', 'y'),
(239, '🇹🇭', 'Thailand', 'Baht', 'THB', '+66', 'th', 'Thailand', 'Thailand', 'y', 'y'),
(240, '🇹🇬', 'Togo', 'CFA Franc BCEAO', 'XOF', '+228', 'tg', 'Togo', 'Togo', 'y', 'y'),
(241, '🇹🇰', 'Tokelau', 'New Zealand Dollar', 'NZD', '+690', 'tk', 'Tokelau', 'Tokelau', 'y', 'y'),
(242, '🇹🇴', 'Tonga', 'Pa\'anga', 'TOP', '+676', 'to', 'Tonga', 'Tonga', 'y', 'y'),
(243, '🇹🇹', 'Trinidad and Tobago', 'Trinidad and Tobago Dollar', 'TTD', '+1868', 'tt', 'Trinidad and Tobago', 'Trinidad and Tobago', 'y', 'y'),
(244, NULL, 'Tromelin Island', '', '', '', NULL, 'Tromelin Island', 'Tromelin Island', 'y', 'n'),
(245, '🇹🇳', 'Tunisia', 'Tunisian Dinar', 'TND', '+216', 'tn', 'Tunisia', 'Tunisia', 'y', 'y'),
(246, '🇹🇷', 'Turkey', 'Turkish Lira', 'TRY', '+90', 'tr', 'Turkey', 'Turkey', 'y', 'y'),
(247, '🇹🇲', 'Turkmenistan', 'Manat', 'TMM', '+993', 'tm', 'Turkmenistan', 'Turkmenistan', 'y', 'y'),
(248, '🇹🇨', 'Turks and Caicos Islands', 'US Dollar', 'USD', '+1649', 'tc', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'y', 'y'),
(249, '🇹🇻', 'Tuvalu', 'Australian Dollar', 'AUD', '+688', 'tv', 'Tuvalu', 'Tuvalu', 'y', 'y'),
(250, '🇺🇬', 'Uganda', 'Uganda Shilling', 'UGX', '+256', 'ug', 'Uganda', 'Uganda', 'y', 'y'),
(251, '🇺🇦', 'Ukraine', 'Hryvnia', 'UAH', '+380', 'ua', 'Ukraine', 'Ukraine', 'y', 'y'),
(252, '🇦🇪', 'United Arab Emirates', 'UAE Dirham', 'AED', '+971', 'ae', 'United Arab Emirates', 'United Arab Emirates', 'y', 'y'),
(253, '🇬🇧', 'United Kingdom', 'Pound Sterling', 'GBP', '+44', 'gb', 'United Kingdom', 'United Kingdom', 'y', 'y'),
(254, '🇻🇮', 'United States', 'US Dollar', 'USD', '+1', 'us', 'United States', 'United States', 'y', 'y'),
(255, NULL, 'United States Minor Outlying Islands', 'US Dollar', 'USD', '', 'um', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'y', 'n'),
(256, '🇺🇾', 'Uruguay', 'Peso Uruguayo', 'UYU', '+598', 'uy', 'Uruguay', 'Uruguay', 'y', 'y'),
(257, '🇺🇿', 'Uzbekistan', 'Uzbekistan Sum', 'UZS', '+998', 'uz', 'Uzbekistan', 'Uzbekistan', 'y', 'y'),
(258, '🇻🇺', 'Vanuatu', 'Vatu', 'VUV', '+678', 'vu', 'Vanuatu', 'Vanuatu', 'y', 'y'),
(259, '🇻🇪', 'Venezuela', 'Bolivar', 'VEB', '+58', 've', 'Venezuela', 'Venezuela', 'y', 'y'),
(260, '🇻🇳', 'Vietnam', 'Dong', 'VND', '+84', 'vn', 'Vietnam', 'Vietnam', 'y', 'y'),
(261, NULL, 'Virgin Islands', 'US Dollar', 'USD', '', NULL, 'Virgin Islands', 'Virgin Islands', 'y', 'n'),
(262, NULL, 'Virgin Islands (UK)', 'US Dollar', 'USD', '', 'vg', 'Virgin Islands (UK)', 'Virgin Islands (UK)', 'y', 'n'),
(263, NULL, 'Virgin Islands (US)', 'US Dollar', 'USD', '', 'vi', 'Virgin Islands (US)', 'Virgin Islands (US)', 'y', 'n'),
(264, NULL, 'Wake Island', 'US Dollar', 'USD', '', NULL, 'Wake Island', 'Wake Island', 'y', 'n'),
(265, '🇼🇫', 'Wallis and Futuna', 'CFP Franc', 'XPF', '+681', 'wf', 'Wallis and Futuna', 'Wallis and Futuna', 'y', 'y'),
(266, NULL, 'West Bank', 'New Israeli Shekel ', 'ILS', '', NULL, 'West Bank', 'West Bank', 'y', 'n'),
(267, '🇪🇭', 'Western Sahara', 'Moroccan Dirham', 'MAD', '', 'eh', 'Western Sahara', 'Western Sahara', 'y', 'n'),
(268, '🇼🇸', 'Western Samoa', 'Tala', 'WST', '', 'ws', 'Western Samoa', 'Western Samoa', 'y', 'n'),
(269, NULL, 'World', '', '', '', NULL, 'World', 'World', 'y', 'n'),
(270, '🇾🇪', 'Yemen', 'Yemeni Rial', 'YER', '+967', 'ye', 'Yemen', 'Yemen', 'y', 'y'),
(271, NULL, 'Yugoslavia', 'Yugoslavian Dinar ', 'YUM', '', NULL, 'Yugoslavia', 'Yugoslavia', 'n', 'n'),
(272, NULL, 'Zaire', '', '', '', NULL, 'Zaire', 'Zaire', 'y', 'n'),
(273, '🇿🇲', 'Zambia', 'Kwacha', 'ZMK', '+260', 'zm', 'Zambia', 'Zambia', 'y', 'y'),
(274, '🇿🇼', 'Zimbabwe', 'Zimbabwe Dollar', 'ZWD', '+263', 'zw', 'Zimbabwe', 'Zimbabwe', 'y', 'y'),
(275, NULL, 'Palestinian Territory, Occupied', '', '', '', NULL, 'Palestinian Territory, Occupied', 'Palestinian Territory, Occupied', 'y', 'y'),
(276, '🇦🇫', 'Afghanistan', 'Afghani', 'AFA', '+93', 'af', 'Afghanistan', 'Afghanistan', 'n', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `asker_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `asker_code` varchar(255) DEFAULT NULL,
  `url` text,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'inactive',
  `rating` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `title`, `author`, `asker_image`, `asker_code`, `url`, `status`, `rating`, `created_at`, `updated_at`) VALUES
(41, 114, 'react js1234', NULL, NULL, 'A2FIAT', NULL, 'active', NULL, '2021-12-01 12:35:42', '2021-12-18 09:09:57'),
(42, 114, 'react js123', NULL, NULL, 'WHJFL3', NULL, 'active', NULL, '2021-12-01 12:44:16', '2021-12-15 07:22:38'),
(43, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-01 12:46:53', '2021-12-15 07:22:38'),
(44, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-01 13:15:38', '2021-12-15 07:22:38'),
(45, 115, 'Chandani', 'Laravel', NULL, 'XUIEP8', NULL, 'active', NULL, '2021-12-03 09:25:21', '2021-12-03 09:35:33'),
(46, 115, 'Chandani', 'Laravel', NULL, NULL, NULL, 'inactive', NULL, '2021-12-03 09:33:29', '2021-12-03 09:33:29'),
(47, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-03 09:35:48', '2021-12-15 07:22:38'),
(48, 114, 'react js123', NULL, NULL, 'FQIBLD', NULL, 'active', NULL, '2021-12-07 07:58:32', '2021-12-15 07:22:38'),
(49, 114, 'react js123', NULL, NULL, 'QNNH0T', NULL, 'inactive', NULL, '2021-12-07 09:35:16', '2021-12-15 07:22:38'),
(50, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-07 09:42:40', '2021-12-15 07:22:38'),
(51, 114, 'react js1235', NULL, NULL, 'LWYMO9', NULL, 'active', NULL, '2021-12-07 09:47:30', '2021-12-15 13:15:52'),
(52, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-07 10:27:23', '2021-12-15 07:22:38'),
(53, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-07 10:27:41', '2021-12-15 07:22:38'),
(54, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-07 10:27:51', '2021-12-15 07:22:38'),
(55, 114, 'react js123', NULL, NULL, 'NHDWUE', NULL, 'active', NULL, '2021-12-07 10:28:19', '2021-12-15 07:22:38'),
(56, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-07 11:57:14', '2021-12-15 07:22:38'),
(57, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-08 09:33:12', '2021-12-15 07:22:38'),
(58, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-08 11:29:46', '2021-12-15 07:22:38'),
(59, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-08 11:31:31', '2021-12-15 07:22:38'),
(60, 114, 'react js1235', 'dfdfdfdf', NULL, 'ZF9Y0T', NULL, 'active', NULL, '2021-12-08 11:32:41', '2021-12-15 13:15:21'),
(61, 114, 'react js123', NULL, NULL, 'JIKXVI', NULL, 'active', NULL, '2021-12-08 11:57:21', '2021-12-15 07:22:38'),
(62, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-08 12:30:34', '2021-12-15 07:22:38'),
(63, 114, 'react js123', NULL, NULL, '7UCLLX', NULL, 'active', NULL, '2021-12-08 12:58:17', '2021-12-15 07:22:38'),
(64, 114, 'react js123', NULL, NULL, 'K7QE7H', NULL, 'active', NULL, '2021-12-08 13:03:53', '2021-12-15 07:22:38'),
(65, 114, 'react js123', NULL, NULL, 'RNZIQQ', NULL, 'active', NULL, '2021-12-08 13:06:56', '2021-12-15 07:22:38'),
(66, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-10 12:17:13', '2021-12-15 07:22:38'),
(67, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-10 12:26:11', '2021-12-15 07:22:38'),
(68, 114, 'react js123', NULL, NULL, '5R2VRF', NULL, 'active', NULL, '2021-12-10 12:26:57', '2021-12-15 07:22:38'),
(69, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-13 09:52:27', '2021-12-15 07:22:38'),
(70, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-13 11:53:48', '2021-12-15 07:22:38'),
(71, 114, 'react js123', NULL, NULL, '2E4LV0', NULL, 'active', NULL, '2021-12-13 12:51:45', '2021-12-15 07:22:38'),
(72, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 05:04:58', '2021-12-15 07:22:38'),
(73, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 05:49:43', '2021-12-15 07:22:38'),
(74, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 05:55:09', '2021-12-15 07:22:38'),
(75, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 05:56:02', '2021-12-15 07:22:38'),
(76, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 05:58:26', '2021-12-15 07:22:38'),
(77, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 05:58:52', '2021-12-15 07:22:38'),
(78, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 05:59:09', '2021-12-15 07:22:38'),
(79, 114, 'react js123', NULL, NULL, 'LUMKPO', NULL, 'active', NULL, '2021-12-14 05:59:24', '2021-12-17 11:16:09'),
(80, 114, 'react js123', NULL, NULL, 'FHVQA9', NULL, 'active', NULL, '2021-12-14 06:13:50', '2021-12-15 07:22:38'),
(81, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 06:18:09', '2021-12-15 07:22:38'),
(82, 114, 'react js123', NULL, NULL, 'GAMSXM', NULL, 'inactive', NULL, '2021-12-14 07:59:25', '2021-12-15 07:22:38'),
(83, 114, 'react js123', NULL, NULL, NULL, NULL, 'inactive', NULL, '2021-12-14 09:43:04', '2021-12-15 07:22:38'),
(84, 114, 'react js123', 'gdfgdfgf', NULL, 'XYHEYP', NULL, 'active', NULL, '2021-12-18 09:08:56', '2021-12-18 09:09:10'),
(85, 114, 'test', 'test', NULL, NULL, NULL, 'inactive', NULL, '2021-12-18 12:55:41', '2021-12-18 12:55:41'),
(86, 114, 'test2', 'test2', NULL, NULL, NULL, 'inactive', NULL, '2021-12-18 13:03:10', '2021-12-18 13:03:10'),
(87, 114, 'asd', 'asd', NULL, NULL, NULL, 'inactive', NULL, '2021-12-18 13:04:49', '2021-12-18 13:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `language_messages`
--

CREATE TABLE `language_messages` (
  `id` int NOT NULL,
  `constant` text,
  `en_value` text,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `language_messages`
--

INSERT INTO `language_messages` (`id`, `constant`, `en_value`, `created_at`, `updated_at`) VALUES
(1, 'SEND_SMS_SUCCESS', 'Otp sent your mobile number, kindly check your inbox', '2021-09-28 04:52:56', '2021-09-28 04:52:56'),
(2, 'SEND_SMS_ALREADY_EXIST', 'your mobile number is not verified', '2021-09-28 04:58:11', '2021-09-28 04:58:11'),
(3, 'VERIFY_OTP_SUCCESS', 'Your general profile detail saved successfully', '2021-09-28 05:01:55', '2021-09-28 05:01:55'),
(4, 'VERIFY_OTP_ERROR', 'Your entered Otp is not valid or expired, please try again', '2021-09-28 05:01:55', '2021-09-28 05:01:55'),
(5, 'RESEND_OTP_SUCCESS', 'Otp sent your mobile number, kindly check your inbox', '2021-09-28 05:04:42', '2021-09-28 05:04:42'),
(6, 'RESEND_OTP_ERROR', 'Entered mobile number is already exist, please try again', '2021-09-28 05:04:42', '2021-09-28 05:04:42'),
(7, 'SEND_SMS_COUNTRY_CODE_MIS_MATCH', 'Your Country Code and mobile no does not match', '2021-09-28 09:52:21', '2021-09-28 09:52:21'),
(8, 'SEND_SMS_PARAMS_MISMATCH', 'You entered parameters are mismatch.', '2021-09-28 09:56:09', '2021-09-28 09:56:09'),
(9, 'EMAIL_INVALID', 'Please Enter Valid Email Address', '2021-09-29 05:31:01', '2021-09-29 05:31:01'),
(10, 'EMAIL_ALREADY_EXIST', 'Your Entered Email Is Not Verified, Please Verify Email And Try Again', '2021-09-29 05:42:45', '2021-09-29 05:42:45'),
(11, 'SEND_EMAIL_SUCCESS', 'Register Successfully', '2021-09-29 05:53:38', '2021-09-29 05:53:38'),
(12, 'VALUE_NOT_FOUND', 'Please enter value.', '2021-09-29 08:51:57', '2021-09-29 08:51:57'),
(13, 'EMAIL_SEND_SUCCESS', 'Asker code send in entered email Address.', '2021-10-01 04:32:09', '2021-10-01 04:32:09'),
(14, 'SUCCESS_LOGIN', 'Login Successful', '2021-10-01 07:16:31', '2021-10-01 07:16:31'),
(15, 'USER_NOT_FOUND', 'Your email or password is incorrect, please try again.', '2021-10-01 07:19:54', '2021-10-01 07:19:54'),
(16, 'INCOMPLETE_REGISTER', 'Incomplete register, please countinue the register.', '2021-10-01 12:03:13', '2021-10-01 12:03:13'),
(17, 'PHONE_NOT_VERIFIED', 'Your Entered Mobile Number Is Not Verified Or Not Registered, Please Try Again.', '2021-10-02 04:05:27', '2021-10-02 04:05:27'),
(18, 'RESET_PASSWORD_SEND_SUCCESS', 'Reset password link sent your Email Adreess, kindly check your inbox', '2021-10-02 08:05:53', '2021-10-02 08:05:53'),
(19, 'ASKER_CREATE_AUTHOR', 'Asker Created Successfully .', '2021-10-20 05:59:03', '2021-10-20 05:59:03'),
(20, 'ASKER_PREBUILD_QUESTIONS_SUCESS', 'All of the prebuild questions display.', '2021-10-20 05:59:03', '2021-10-20 05:59:03'),
(21, 'ASKER_QUESTIONS', 'Asker Question Added Successfully', '2021-10-20 06:04:59', '2021-10-20 06:04:59'),
(22, 'ASKER_QUESTION_LIST', 'All questions display ', '2021-10-20 06:04:59', '2021-10-20 06:04:59'),
(23, 'ASKER_PUBLISH_SUCCESS', 'Asker Created Successfully', '2021-10-20 06:11:52', '2021-10-20 06:11:52'),
(24, 'FORGOT_PASSWORD_UPDATE_SUCCESS', 'Password Update Successfully', '2021-10-20 07:28:34', '2021-10-20 07:28:34'),
(25, 'FORGOT_PASSWORD_OTP_SUCCESS', 'Change your password .', '2021-10-20 07:29:55', '2021-10-20 07:29:55'),
(26, 'PROMOTIONAL_VIDEO_SUCCESS', 'All the promotional Video Display.', '2021-10-20 07:48:15', '2021-10-20 07:48:15'),
(27, 'ALL_ASKER_SUCCESS', 'All Asker Display .', '2021-10-20 11:58:51', '2021-10-20 11:58:51'),
(28, 'ALL_ASKER_FAIL', 'Share asker Code', '2021-10-20 11:58:51', '2021-10-20 11:58:51'),
(29, 'ACTIVE_ASKER_SUCCESS', 'Active asker display .', '2021-10-20 12:09:21', '2021-10-20 12:09:21'),
(30, 'ACTIVE_ASKER_FAILED', 'Share Asker Code', '2021-10-20 12:09:21', '2021-10-20 12:09:21'),
(31, 'NO_ASKERS', 'No Askers.', '2021-10-21 04:44:10', '2021-10-21 04:44:10'),
(32, 'ASKER_CODE_SUCCESS', 'Asker detail here .', '2021-10-21 06:33:13', '2021-10-21 06:33:13'),
(33, 'ASKER_CODE_FAILED', 'This Asker is no  longer', '2021-10-21 06:34:02', '2021-10-21 06:34:02'),
(34, 'SUBMIT_ANSWER_SUCCESS', 'Video uploaded success.', '2021-10-21 10:02:54', '2021-10-21 10:02:54'),
(35, 'SUBMIT_ANSWER_FAILED', 'select only video File', '2021-10-21 10:02:54', '2021-10-21 10:02:54'),
(38, 'ASKER_NEXT_QUESTION_LIST_SUCCESS', 'Asker question List Display .', '2021-10-21 11:46:04', '2021-10-21 11:46:04'),
(39, 'ASKER_NEXT_QUESTION_LIST_FAILED', 'Asker question list ', '2021-10-21 11:46:04', '2021-10-21 11:46:04'),
(40, 'SEND_ANSWER_TO_ASKER_SUCCESS', 'All answers send to asker successfully .', '2021-10-22 07:19:32', '2021-10-22 07:19:32'),
(41, 'SEND_ANSWER_TO_ASKER_FAILED', 'All answers are not completed, first complete the all answers then send the answers to asker.', '2021-10-22 07:19:32', '2021-10-22 07:19:32'),
(42, 'VIDEO_RATING_SUCCESS', 'Rating Updated successfully.', '2021-10-28 07:00:47', '2021-10-28 07:00:47'),
(43, 'VIDEO_RATING_FAILED', 'Answer Not added .', '2021-10-28 07:00:47', '2021-10-28 07:00:47'),
(44, 'VIEW_ANSWERS_SUCCESS', 'View Answers success .', '2021-10-28 10:06:06', '2021-10-28 10:06:06'),
(45, 'VIEW_ANSWERS_FAILED', 'No Answers.', '2021-10-28 10:06:06', '2021-10-28 10:06:06'),
(46, 'INACTIVE_STATUS_SUCCESS', 'Asker Updated successfully .', '2021-10-28 11:02:32', '2021-10-28 11:02:32'),
(47, 'INACTIVE_STATUS_FAILED', 'This Asker Not Found.', '2021-10-28 11:02:32', '2021-10-28 11:02:32'),
(50, 'INACTIVE_STATUS_SUCCESS', 'Asker Updated successfully .', '2021-10-28 11:02:32', '2021-10-28 11:02:32'),
(51, 'INACTIVE_STATUS_FAILED', 'This Asker Not Found.', '2021-10-28 12:19:48', '2021-10-28 12:19:48'),
(52, 'ANSWER_LIST_SUCCESS', 'Answer List Displayed .', '2021-11-09 10:40:00', '2021-11-09 10:40:00'),
(53, 'ANSWER_LIST_FAILED', 'Not Display Answer List', '2021-11-09 10:41:08', '2021-11-09 10:41:08'),
(54, 'MAIL_SEND_SUCCESSFULLY', 'Mail Send Successfully .', '2021-11-22 10:22:48', '2021-11-22 10:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2017_08_11_073824_create_menus_wp_table', 1),
(5, '2017_08_11_074006_create_menu_items_wp_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_07_10_021010_create_brands_table', 1),
(8, '2020_07_10_025334_create_banners_table', 1),
(9, '2020_07_10_112147_create_categories_table', 1),
(10, '2020_07_11_063857_create_products_table', 1),
(11, '2020_07_12_073132_create_post_categories_table', 1),
(12, '2020_07_12_073701_create_post_tags_table', 1),
(13, '2020_07_12_083638_create_posts_table', 1),
(14, '2020_07_13_151329_create_messages_table', 1),
(15, '2020_07_14_023748_create_shippings_table', 1),
(16, '2020_07_15_054356_create_orders_table', 1),
(17, '2020_07_15_102626_create_carts_table', 1),
(18, '2020_07_16_041623_create_notifications_table', 1),
(19, '2020_07_16_053240_create_coupons_table', 1),
(20, '2020_07_23_143757_create_wishlists_table', 1),
(21, '2020_07_24_074930_create_product_reviews_table', 1),
(22, '2020_07_24_131727_create_post_comments_table', 1),
(23, '2020_08_01_143408_create_settings_table', 1),
(24, '2021_09_07_064710_create_languages_table', 1),
(25, '2021_09_13_090422_create_table_payments', 1),
(26, '2021_09_13_113720_create_country_table', 2),
(27, '2021_09_30_051553_create_sessions_table', 3),
(28, '2021_09_30_061520_create_verify_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `cat_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `photo` text,
  `link` text,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `cat_id`, `name`, `slug`, `description`, `photo`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 21, 'Blog', 'blog', '<section class=\"blog-single shop-blog grid section\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-8 col-12\">\r\n                    <div class=\"row\">\r\n                                                                        \r\n                            <div class=\"col-lg-6 col-md-6 col-12\">\r\n                                <!-- Start Single Blog  -->\r\n                                <div class=\"shop-single-blog\">\r\n                                <img src=\"/storage/photos/1/allinonepc.jpg\" alt=\"/storage/photos/1/allinonepc.jpg\">\r\n                                    <div class=\"content\">\r\n                                                                                <p class=\"date\"><i class=\"fa fa-calendar\" aria-hidden=\"true\"></i> 18 Aug, 2020. Tue\r\n                                            <span class=\"float-right\">\r\n                                                <i class=\"fa fa-user\" aria-hidden=\"true\"></i> \r\n                                                                                                                                                            Chandani Raiyani\r\n                                                                                                                                                </span>\r\n                                        </p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/lorem-ipsum-is-simply\" class=\"title\">Lorem Ipsum is simply</a>\r\n                                        <p></p><p><strong style=\"margin: 0px; padding: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry.</span><br></p><p></p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/lorem-ipsum-is-simply\" class=\"more-btn\">Continue Reading</a>\r\n                                    </div>\r\n                                </div>\r\n                                <!-- End Single Blog  -->\r\n                            </div>\r\n                                                \r\n                            <div class=\"col-lg-6 col-md-6 col-12\">\r\n                                <!-- Start Single Blog  -->\r\n                                <div class=\"shop-single-blog\">\r\n                                <img src=\"/storage/photos/1/blog/blog1.jpg\" alt=\"/storage/photos/1/blog/blog1.jpg\">\r\n                                    <div class=\"content\">\r\n                                                                                <p class=\"date\"><i class=\"fa fa-calendar\" aria-hidden=\"true\"></i> 15 Aug, 2020. Sat\r\n                                            <span class=\"float-right\">\r\n                                                <i class=\"fa fa-user\" aria-hidden=\"true\"></i> \r\n                                                                                                                                                            Chandani Raiyani\r\n                                                                                                                                                </span>\r\n                                        </p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/the-standard-lorem-ipsum-passage\" class=\"title\">The standard Lorem Ipsum passage,</a>\r\n                                        <p></p><p><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p><p></p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/the-standard-lorem-ipsum-passage\" class=\"more-btn\">Continue Reading</a>\r\n                                    </div>\r\n                                </div>\r\n                                <!-- End Single Blog  -->\r\n                            </div>\r\n                                                \r\n                            <div class=\"col-lg-6 col-md-6 col-12\">\r\n                                <!-- Start Single Blog  -->\r\n                                <div class=\"shop-single-blog\">\r\n                                <img src=\"/storage/photos/1/blog/blog2.jpg\" alt=\"/storage/photos/1/blog/blog2.jpg\">\r\n                                    <div class=\"content\">\r\n                                                                                <p class=\"date\"><i class=\"fa fa-calendar\" aria-hidden=\"true\"></i> 14 Aug, 2020. Fri\r\n                                            <span class=\"float-right\">\r\n                                                <i class=\"fa fa-user\" aria-hidden=\"true\"></i> \r\n                                                                                                                                                            Chandani Raiyani\r\n                                                                                                                                                </span>\r\n                                        </p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/where-can-i-get-some\" class=\"title\">Where can I get some?</a>\r\n                                        <p></p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">It is a long established fact that a reader</span><br></h2><p></p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/where-can-i-get-some\" class=\"more-btn\">Continue Reading</a>\r\n                                    </div>\r\n                                </div>\r\n                                <!-- End Single Blog  -->\r\n                            </div>\r\n                                                \r\n                            <div class=\"col-lg-6 col-md-6 col-12\">\r\n                                <!-- Start Single Blog  -->\r\n                                <div class=\"shop-single-blog\">\r\n                                <img src=\"/storage/photos/1/blog/blog3.jpg\" alt=\"/storage/photos/1/blog/blog3.jpg\">\r\n                                    <div class=\"content\">\r\n                                                                                <p class=\"date\"><i class=\"fa fa-calendar\" aria-hidden=\"true\"></i> 14 Aug, 2020. Fri\r\n                                            <span class=\"float-right\">\r\n                                                <i class=\"fa fa-user\" aria-hidden=\"true\"></i> \r\n                                                                                                                                                            User\r\n                                                                                                                                                </span>\r\n                                        </p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/where-does-it-come-from\" class=\"title\">Where does it come from?</a>\r\n                                        <p></p><p><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text.&nbsp;</span><br></p><p></p>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-detail/where-does-it-come-from\" class=\"more-btn\">Continue Reading</a>\r\n                                    </div>\r\n                                </div>\r\n                                <!-- End Single Blog  -->\r\n                            </div>\r\n                                                <div class=\"col-12\">\r\n                            <!-- Pagination -->\r\n                            \r\n                            <!--/ End Pagination -->\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-lg-4 col-12\">\r\n                    <div class=\"main-sidebar\">\r\n                        <!-- Single Widget -->\r\n                        <div class=\"single-widget search\">\r\n                            \r\n                                <input type=\"text\" placeholder=\"Search Here...\" name=\"search\">\r\n                                <button class=\"button\" type=\"sumbit\"><i class=\"fa fa-search\"></i></button>\r\n                            \r\n                        </div>\r\n                        <!--/ End Single Widget -->\r\n                        <!-- Single Widget -->\r\n                        <div class=\"single-widget category\">\r\n                            <h3 class=\"title\">Blog Categories</h3>\r\n                            <ul class=\"categor-list\">\r\n                                                            <form action=\"http://127.0.0.1:8000/blog/filter\" method=\"POST\">\r\n                                    <input type=\"hidden\" name=\"_token\" value=\"oL4D9NzHh8FdZspb0KHWAeXNPw7rZ0kBMdWnox5i\">                                    \r\n                                                                        <li>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-cat/mobile\">Mobile </a>\r\n                                    </li>\r\n                                                                        <li>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-cat/laptop\">Laptop </a>\r\n                                    </li>\r\n                                                                        <li>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-cat/desktop-pc\">Desktop PC </a>\r\n                                    </li>\r\n                                                                        <li>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-cat/sport\">Sport </a>\r\n                                    </li>\r\n                                                                        <li>\r\n                                        <a href=\"http://127.0.0.1:8000/blog-cat/electronics\">Electronics </a>\r\n                                    </li>\r\n                                                                    </form>\r\n                                \r\n                            </ul>\r\n                        </div>\r\n                        <!--/ End Single Widget -->\r\n                        <!-- Single Widget -->\r\n                        <div class=\"single-widget recent-post\">\r\n                            <h3 class=\"title\">Recent post</h3>\r\n                                                            <!-- Single Post -->\r\n                                <div class=\"single-post\">\r\n                                    <div class=\"image\">\r\n                                        <img src=\"/storage/photos/1/allinonepc.jpg\" alt=\"/storage/photos/1/allinonepc.jpg\">\r\n                                    </div>\r\n                                    <div class=\"content\">\r\n                                        <h5><a href=\"#\">Lorem Ipsum is simply</a></h5>\r\n                                        <ul class=\"comment\">\r\n                                                                                    <li><i class=\"fa fa-calendar\" aria-hidden=\"true\"></i>18 Aug, 20</li>\r\n                                            <li><i class=\"fa fa-user\" aria-hidden=\"true\"></i> \r\n                                                                                                                                                            Chandani Raiyani\r\n                                                                                                                                                </li>\r\n                                        </ul>\r\n                                    </div>\r\n                                </div>\r\n                                <!-- End Single Post -->\r\n                                                            <!-- Single Post -->\r\n                                <div class=\"single-post\">\r\n                                    <div class=\"image\">\r\n                                        <img src=\"/storage/photos/1/blog/blog1.jpg\" alt=\"/storage/photos/1/blog/blog1.jpg\">\r\n                                    </div>\r\n                                    <div class=\"content\">\r\n                                        <h5><a href=\"#\">The standard Lorem Ipsum passage,</a></h5>\r\n                                        <ul class=\"comment\">\r\n                                                                                    <li><i class=\"fa fa-calendar\" aria-hidden=\"true\"></i>15 Aug, 20</li>\r\n                                            <li><i class=\"fa fa-user\" aria-hidden=\"true\"></i> \r\n                                                                                                                                                            Chandani Raiyani\r\n                                                                                                                                                </li>\r\n                                        </ul>\r\n                                    </div>\r\n                                </div>\r\n                                <!-- End Single Post -->\r\n                                                            <!-- Single Post -->\r\n                                <div class=\"single-post\">\r\n                                    <div class=\"image\">\r\n                                        <img src=\"/storage/photos/1/blog/blog2.jpg\" alt=\"/storage/photos/1/blog/blog2.jpg\">\r\n                                    </div>\r\n                                    <div class=\"content\">\r\n                                        <h5><a href=\"#\">Where can I get some?</a></h5>\r\n                                        <ul class=\"comment\">\r\n                                                                                    <li><i class=\"fa fa-calendar\" aria-hidden=\"true\"></i>14 Aug, 20</li>\r\n                                            <li><i class=\"fa fa-user\" aria-hidden=\"true\"></i> \r\n                                                                                                                                                            Chandani Raiyani\r\n                                                                                                                                                </li>\r\n                                        </ul>\r\n                                    </div>\r\n                                </div>\r\n                                <!-- End Single Post -->\r\n                                                    </div>\r\n                        <!--/ End Single Widget -->\r\n                        <!-- Single Widget -->\r\n                        <!--/ End Single Widget -->\r\n                        <!-- Single Widget -->\r\n                        <div class=\"single-widget side-tags\">\r\n                            <h3 class=\"title\">Tags</h3>\r\n                            <ul class=\"tag\">\r\n                                                                <form action=\"http://127.0.0.1:8000/blog/filter\" method=\"POST\">\r\n                                    <input type=\"hidden\" name=\"_token\" value=\"oL4D9NzHh8FdZspb0KHWAeXNPw7rZ0kBMdWnox5i\">                                                                            <li>\r\n                                            </li><li>\r\n                                                <a href=\"http://127.0.0.1:8000/blog-tag/Tag\">Tag </a>\r\n                                            </li>\r\n                                        \r\n                                                                            <li>\r\n                                            </li><li>\r\n                                                <a href=\"http://127.0.0.1:8000/blog-tag/Visit%20nepal%202020\">Visit nepal 2020 </a>\r\n                                            </li>\r\n                                        \r\n                                                                            <li>\r\n                                            </li><li>\r\n                                                <a href=\"http://127.0.0.1:8000/blog-tag/2020\">2020 </a>\r\n                                            </li>\r\n                                        \r\n                                                                            <li>\r\n                                            </li><li>\r\n                                                <a href=\"http://127.0.0.1:8000/blog-tag/Enjoy\">Enjoy </a>\r\n                                            </li>\r\n                                        \r\n                                                                    </form>\r\n                            </ul>\r\n                        </div>\r\n                        <!--/ End Single Widget -->\r\n                        <!-- Single Widget -->\r\n                        <div class=\"single-widget newsletter\">\r\n                            <h3 class=\"title\">Newslatter</h3>\r\n                            <div class=\"letter-inner\">\r\n                                <h4>Subscribe &amp; get news <br> latest updates.</h4>\r\n                                <form method=\"POST\" action=\"http://127.0.0.1:8000/subscribe\" class=\"form-inner\">\r\n                                    <input type=\"hidden\" name=\"_token\" value=\"oL4D9NzHh8FdZspb0KHWAeXNPw7rZ0kBMdWnox5i\">                                    <input type=\"email\" name=\"email\" placeholder=\"Enter your email\">\r\n                                    <button type=\"submit\" class=\"btn \" style=\"width: 100%\">Submit</button>\r\n                                </form>\r\n                            </div>\r\n                        </div>\r\n                        <!--/ End Single Widget -->\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>', '/storage/photos/1/banner1.jpg', 'blog', 'active', '2021-09-04 11:26:16', '2021-09-04 11:26:16'),
(2, 21, 'Contact', 'contact', '<section id=\"contact-us\" class=\"contact-us section\">\r\n		<div class=\"container\">\r\n				<div class=\"contact-head\">\r\n					<div class=\"row\">\r\n						<div class=\"col-lg-8 col-12\">\r\n							<div class=\"form-main\">\r\n								<div class=\"title\">\r\n																		<h4>Get in touch</h4>\r\n									<h3>Write us a message  </h3>\r\n								</div>\r\n								<form class=\"form-contact form contact_form\" method=\"post\" action=\"http://127.0.0.1:8000/contact/message\" id=\"contactForm\" novalidate=\"novalidate\">\r\n									<input type=\"hidden\" name=\"_token\" value=\"oL4D9NzHh8FdZspb0KHWAeXNPw7rZ0kBMdWnox5i\">									<div class=\"row\">\r\n										<div class=\"col-lg-6 col-12\">\r\n											<div class=\"form-group\">\r\n												<label>Your Name<span>*</span></label>\r\n												<input name=\"name\" id=\"name\" type=\"text\" placeholder=\"Enter your name\">\r\n											</div>\r\n										</div>\r\n										<div class=\"col-lg-6 col-12\">\r\n											<div class=\"form-group\">\r\n												<label>Your Subjects<span>*</span></label>\r\n												<input name=\"subject\" type=\"text\" id=\"subject\" placeholder=\"Enter Subject\">\r\n											</div>\r\n										</div>\r\n										<div class=\"col-lg-6 col-12\">\r\n											<div class=\"form-group\">\r\n												<label>Your Email<span>*</span></label>\r\n												<input name=\"email\" type=\"email\" id=\"email\" placeholder=\"Enter email address\">\r\n											</div>	\r\n										</div>\r\n										<div class=\"col-lg-6 col-12\">\r\n											<div class=\"form-group\">\r\n												<label>Your Phone<span>*</span></label>\r\n												<input id=\"phone\" name=\"phone\" type=\"number\" placeholder=\"Enter your phone\">\r\n											</div>	\r\n										</div>\r\n										<div class=\"col-12\">\r\n											<div class=\"form-group message\">\r\n												<label>your message<span>*</span></label>\r\n												<textarea name=\"message\" id=\"message\" cols=\"30\" rows=\"9\" placeholder=\"Enter Message\"></textarea>\r\n											</div>\r\n										</div>\r\n										<div class=\"col-12\">\r\n											<div class=\"form-group button\">\r\n												<button type=\"submit\" class=\"btn \">Send Message</button>\r\n											</div>\r\n										</div>\r\n									</div>\r\n								</form>\r\n							</div>\r\n						</div>\r\n						<div class=\"col-lg-4 col-12\">\r\n							<div class=\"single-head\">\r\n								<div class=\"single-info\">\r\n									<i class=\"fa fa-phone\"></i>\r\n									<h4 class=\"title\">Call us Now:</h4>\r\n									<ul>\r\n										<li> +91 7861077977 </li>\r\n									</ul>\r\n								</div>\r\n								<div class=\"single-info\">\r\n									<i class=\"fa fa-envelope-open\"></i>\r\n									<h4 class=\"title\">Email:</h4>\r\n									<ul>\r\n										<li><a href=\"mailto:info@yourwebsite.com\"> career@coretus.com </a></li>\r\n									</ul>\r\n								</div>\r\n								<div class=\"single-info\">\r\n									<i class=\"fa fa-location-arrow\"></i>\r\n									<h4 class=\"title\">Our Address:</h4>\r\n									<ul>\r\n										<li> 507 - South Block, Twin Star 150 Feet Ring Road, Near Balaji Hall Rajkot - 360005, Gujarat, India </li>\r\n									</ul>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n	</section>', '/storage/photos/1/coretus.png', '/contact', 'active', '2021-09-04 11:27:32', '2021-09-04 11:41:35'),
(3, 22, 'Privacy Policy', 'privacy-policy', '<h1>Privacy Policy<br></h1>\r\n<h4>\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4>\r\n<h5>\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5>\r\n\r\n\r\n<hr>\r\n\r\n\r\n<div id=\"bannerL\"><div id=\"div-gpt-ad-1474537762122-2\" data-google-query-id=\"CLfO98bt8fICFbShSwUd4_EDjQ\">\r\n\r\n</div></div>\r\n<div id=\"bannerR\"><div id=\"div-gpt-ad-1474537762122-3\" data-google-query-id=\"CLjO98bt8fICFbShSwUd4_EDjQ\">\r\n\r\n</div></div>\r\n<div id=\"lipsum\">\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam \r\npellentesque vulputate ultricies. Maecenas ut purus dignissim, dictum \r\nnunc pellentesque, gravida purus. Sed imperdiet ipsum vitae pretium \r\nvolutpat. Donec vitae pulvinar nulla, non pulvinar sapien. Integer \r\nmauris sem, congue ut arcu ac, aliquam sollicitudin sem. Suspendisse \r\nfringilla posuere tempor. Sed faucibus ultricies nulla in fermentum. \r\nPellentesque molestie commodo vestibulum. Sed interdum nisl in lorem \r\nultricies, id placerat arcu suscipit.\r\n</p>\r\n<p>\r\nFusce sed euismod tellus. Nullam ut magna dapibus, ullamcorper neque ac,\r\n iaculis turpis. Ut lacinia nunc imperdiet vehicula congue. Morbi \r\ntincidunt mi nulla, vitae bibendum ligula rutrum sed. Nunc nec mi \r\ninterdum, auctor augue non, egestas turpis. Mauris euismod nunc id \r\npretium malesuada. Donec volutpat finibus lacus sit amet facilisis. Nam \r\nquam lectus, ultrices vel eleifend eu, bibendum vel nunc. Cras nec magna\r\n et metus blandit auctor. Integer vulputate turpis sed eleifend semper. \r\nUt quis ex tristique, dictum nisl sollicitudin, pellentesque sem. \r\nAliquam erat volutpat. In non elit eget diam varius ultricies. Donec et \r\nsem vehicula, dapibus nunc id, suscipit sem. Sed venenatis commodo \r\nporta. Donec malesuada orci ut diam sagittis laoreet.\r\n</p>\r\n<p>\r\nAenean ullamcorper elit quis porttitor laoreet. Etiam dapibus placerat \r\norci, ac commodo ante tincidunt quis. Pellentesque feugiat bibendum \r\nerat, sit amet dignissim sem. Pellentesque quam lacus, tempus id blandit\r\n sit amet, tempor vel nulla. Sed dolor ligula, lobortis quis finibus \r\neget, lacinia vel massa. Sed maximus magna ac turpis tristique gravida. \r\nDonec aliquet a purus at malesuada. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Vestibulum ac odio pharetra, mattis nisl \r\nquis, interdum nunc. Suspendisse mollis neque metus, id sagittis ligula \r\nfacilisis a. Cras eget gravida risus. Aliquam molestie ipsum arcu, sed \r\nmollis mauris dapibus ullamcorper. Nulla et mauris dui. Nullam ut \r\nvestibulum lectus. Nam iaculis ipsum non nisi lobortis, vel eleifend \r\norci vulputate. In elit tellus, semper eu leo id, semper tempor enim.\r\n</p>\r\n<p>\r\nProin magna mi, posuere in volutpat vitae, feugiat nec justo. Vestibulum\r\n luctus odio nec mi placerat cursus. Fusce ligula sem, luctus eget \r\nsuscipit vel, bibendum vel nibh. Sed eu pulvinar lorem, non fermentum \r\norci. Cras pharetra sed turpis vel pulvinar. Aenean a risus quis lacus \r\nlacinia sollicitudin eget ut tellus. Sed sodales, justo sed lobortis \r\ndictum, metus eros feugiat sapien, sed sollicitudin mauris felis vel \r\norci. Aenean vel urna et tortor euismod imperdiet ac eu nisi. Phasellus \r\nsit amet quam dapibus, varius erat nec, pretium mi. Curabitur eu \r\nfringilla augue.\r\n</p>\r\n<p>\r\nProin ultricies varius elementum. Donec ultrices neque a ultrices \r\nvarius. Morbi pharetra elementum lacinia. Maecenas ipsum quam, semper \r\nscelerisque leo ac, dignissim dictum justo. Morbi eu finibus turpis. \r\nNulla porta arcu ut augue scelerisque, sed dapibus ipsum pellentesque. \r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per \r\ninceptos himenaeos. Nulla tincidunt porta ipsum. Sed rutrum non libero \r\nut pulvinar. Quisque sit amet sapien semper, finibus magna vel, tempus \r\nneque. Phasellus interdum placerat quam. Ut porttitor sem in libero \r\neuismod, in mollis sapien congue. Vestibulum ante ipsum primis in \r\nfaucibus orci luctus et ultrices posuere cubilia curae;\r\n</p>\r\n<p>\r\nNulla maximus venenatis nibh, sit amet auctor nisi volutpat quis. \r\nVestibulum molestie finibus eleifend. Sed tristique pretium nulla. Donec\r\n in pretium dolor. Nunc scelerisque mattis risus eu vulputate. Nullam \r\nbibendum feugiat turpis sed bibendum. Cras bibendum, quam in imperdiet \r\nfeugiat, sem nunc venenatis turpis, sed tincidunt lorem libero ut \r\nligula. Aliquam posuere mauris dignissim, malesuada ligula vitae, \r\nfacilisis turpis. Nulla ut odio vel risus molestie gravida.\r\n</p>\r\n<p>\r\nQuisque vestibulum, nibh quis porttitor pulvinar, sapien orci venenatis \r\nnisi, a commodo dolor mi sit amet augue. Sed rhoncus facilisis ante, eu \r\nfermentum arcu sollicitudin ac. Pellentesque sed vulputate dui. Cras vel\r\n leo eu dolor sodales mollis sit amet eget metus. Class aptent taciti \r\nsociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. \r\nMaecenas et elit eu tortor accumsan fermentum in at odio. In faucibus \r\njusto fringilla dui tincidunt mollis vel non ligula.\r\n</p>\r\n<p>\r\nQuisque luctus bibendum urna id blandit. Maecenas diam metus, fermentum \r\nut congue a, bibendum pellentesque tellus. Vestibulum sed auctor ex. \r\nDonec congue felis nunc, blandit venenatis sapien egestas ultricies. \r\nDonec dapibus odio id tortor imperdiet bibendum at imperdiet elit. Donec\r\n cursus nulla eget scelerisque consequat. Curabitur facilisis mi vitae \r\nvestibulum elementum. Aliquam mattis venenatis nunc, et ornare magna \r\ncommodo at. Vivamus id sapien facilisis, cursus justo non, elementum \r\neros.\r\n</p>\r\n<p>\r\nSed nec lorem venenatis, interdum eros ut, eleifend ex. Nam interdum \r\nrisus leo, in ultricies est eleifend in. Integer a mauris eget arcu \r\nporttitor vulputate ac a risus. Donec nec ligula hendrerit, sodales erat\r\n ut, iaculis est. Duis vel lectus sagittis, malesuada lectus quis, \r\npretium mi. Nulla facilisi. Proin tristique orci quis venenatis \r\nefficitur. Curabitur vulputate dictum molestie. Sed bibendum cursus \r\nefficitur. Pellentesque tristique tempor bibendum. Phasellus sem arcu, \r\nhendrerit sit amet nibh vel, dignissim egestas ipsum.\r\n</p>\r\n<p>\r\nVestibulum sit amet semper erat, at vestibulum elit. Donec quis ipsum \r\nrhoncus, tempus odio ut, aliquam elit. Nulla consectetur ex urna, in \r\ntincidunt ligula finibus fringilla. Aenean pulvinar tellus velit, vel \r\npretium velit semper nec. Donec id tincidunt eros, a cursus massa. Sed \r\nrhoncus dolor sed facilisis pulvinar. Sed tellus mi, facilisis sed erat \r\neget, mattis hendrerit ex. Integer eu arcu lorem.\r\n</p></div>', 'http://localhost/base//storage/photos/1/blog/61+GUTSPxaL._SY450_.jpg', '/privacy-policy', 'active', '2021-09-09 12:10:25', '2021-09-13 09:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('chandani.raiyani@coretus.com', '$2y$10$DXCxa7Vl0sKJSRRSRWFAEul9KslOXdFOC7OkAtiNJtPziyywfN82y', '2021-11-19 01:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `promotional_videos`
--

CREATE TABLE `promotional_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotional_videos`
--

INSERT INTO `promotional_videos` (`id`, `title`, `author`, `video`, `question`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Font Size Options', 'Chandani', '1634721881/tmp/phpEloLPP.mp4', 'test ?', 'active', '2021-10-20 03:54:41', '2021-10-20 03:54:41'),
(5, 'abc', 'abc', '1635850258/tmp/php8sWMgu.mp4', 'abc ?', 'active', '2021-11-02 05:20:58', '2021-11-02 05:20:58'),
(9, 'Promo B', 'Sport Company', '1635857309/tmp/phplcmgKu.mp4', 'What is laravel ?', 'active', '2021-11-02 07:18:37', '2021-11-02 07:18:37'),
(10, 'Sample Test', 'H K', '1635857947/tmp/phpMgevxy.mp4', 'What is your past experience in php/laravel technology ?', 'active', '2021-11-02 07:29:14', '2021-11-02 07:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `question` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `job_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 114, 2, 'What is laravel ui ?', '2021-11-20 04:33:04', '2021-11-24 09:42:59'),
(2, 114, 2, 'what is laravel ??', '2021-11-20 05:04:48', '2021-11-24 09:43:06'),
(3, 114, 3, 'what is route?', '2021-11-20 05:36:23', '2021-11-20 05:36:23'),
(4, 114, 3, 'Change active tab on click react js', '2021-11-20 09:19:07', '2021-11-20 09:19:07'),
(5, 114, 3, 'react js', '2021-11-20 11:07:54', '2021-11-20 11:07:54'),
(6, 114, 8, 'dfgdfgfdgdfg', '2021-11-20 13:02:10', '2021-11-20 13:02:10'),
(7, 114, 9, 'ererewrwer', '2021-11-20 13:29:27', '2021-11-20 13:29:27'),
(8, 114, 9, 'What is your strength', '2021-11-20 13:30:33', '2021-11-20 13:30:33'),
(9, 114, 10, 'how to create build?', '2021-11-22 04:10:42', '2021-11-22 04:10:42'),
(10, 114, 11, 'hoe to generate debug apk?', '2021-11-22 04:18:26', '2021-11-22 04:18:26'),
(11, 114, 11, 'dfgdfgfdgdfg', '2021-11-22 04:18:44', '2021-11-22 04:18:44'),
(12, 114, 1, 'dfgdfgfdgdfg', '2021-11-22 04:27:27', '2021-11-22 04:27:27'),
(13, 114, 1, 'gfghgfhfgh', '2021-11-22 04:27:40', '2021-11-22 04:27:40'),
(14, 114, 1, 'dfgdfgfdgdfg', '2021-11-22 04:27:48', '2021-11-22 04:27:48'),
(15, 114, 11, 'function call', '2021-11-22 04:28:07', '2021-11-22 04:28:07'),
(16, 114, 12, 'dfgdfgfdgdfg', '2021-11-22 04:37:02', '2021-11-22 04:37:02'),
(17, 114, 13, 'react native', '2021-11-22 04:37:56', '2021-11-22 04:37:56'),
(18, 114, 13, 'react native', '2021-11-22 04:38:42', '2021-11-22 04:38:42'),
(19, 114, 13, 'react js', '2021-11-22 04:41:51', '2021-11-22 04:41:51'),
(20, 114, 14, 'dfgdfgfdgdfg', '2021-11-22 05:07:50', '2021-11-22 05:07:50'),
(21, 114, 15, 'dfgdfgfdgdfg', '2021-11-22 05:09:01', '2021-11-22 05:09:01'),
(22, 114, 16, 'dfgdfgfdgdfg', '2021-11-22 06:10:05', '2021-11-22 06:10:05'),
(23, 114, 17, 'xyz', '2021-11-22 06:14:10', '2021-11-22 06:14:10'),
(24, 114, 17, 'dfgdfgfdgdfg', '2021-11-22 06:14:18', '2021-11-22 06:14:18'),
(25, 114, 17, 'gfghgfhfgh', '2021-11-22 06:14:25', '2021-11-22 06:14:25'),
(26, 114, 17, 'sdasdas', '2021-11-22 06:14:40', '2021-11-22 06:14:40'),
(27, 114, 18, 'gfghgfhfgh', '2021-11-22 09:37:01', '2021-11-22 09:37:01'),
(28, 114, 2, 'what is route?', '2021-11-24 07:52:42', '2021-11-24 07:52:42'),
(29, 114, 2, 'what is route in laravel?', '2021-11-24 09:58:15', '2021-11-24 09:58:15'),
(30, 114, 22, 'what is route?', '2021-11-24 11:33:07', '2021-11-24 11:33:07'),
(31, 114, 22, 'dfd', '2021-11-25 05:40:05', '2021-11-25 05:40:05'),
(32, 114, 23, 'dfgdfgfdgdfg', '2021-11-25 05:40:10', '2021-11-25 05:40:10'),
(33, 114, 38, 'gfghgfhfgh', '2021-11-26 11:53:25', '2021-11-26 11:53:25'),
(34, 114, 32, 'dfgdfgfdgdfg', '2021-11-26 11:54:47', '2021-11-26 11:54:47'),
(35, 114, 38, 'gfghgfhfgh', '2021-11-26 11:56:09', '2021-11-26 11:56:09'),
(36, 114, 38, 'gfghgfhfgh', '2021-11-26 11:56:49', '2021-11-26 11:56:49'),
(37, 114, 38, 'dfsd', '2021-11-26 11:59:27', '2021-11-26 11:59:27'),
(38, 114, 38, 'dfsd', '2021-11-26 12:02:40', '2021-11-26 12:02:40'),
(39, 114, 38, 'dfsd', '2021-11-26 12:07:19', '2021-11-26 12:07:19'),
(40, 114, 38, 'gfghgfhfgh', '2021-11-26 12:07:32', '2021-11-26 12:07:32'),
(41, 114, 40, 'current version of flutter?', '2021-11-29 10:59:15', '2021-11-29 10:59:15'),
(42, NULL, 0, 'Wht is your strengths ?', '2021-12-01 12:39:13', '2021-12-01 12:39:13'),
(43, NULL, 0, 'What is your weakness ?', '2021-12-01 12:39:24', '2021-12-01 12:39:24'),
(44, 114, 41, 'What is laravel ?', '2021-12-01 12:41:33', '2021-12-18 09:09:48'),
(45, 114, 42, 'Wht is your strengths ??', '2021-12-01 12:44:21', '2021-12-15 12:22:03'),
(46, 114, 42, 'What is your weakness ?', '2021-12-01 12:44:33', '2021-12-01 12:44:33'),
(47, 114, 42, 'Wht is your strengths ?', '2021-12-01 12:45:17', '2021-12-01 12:45:17'),
(48, 114, 43, 'Wht is your strengths ?', '2021-12-01 12:46:55', '2021-12-01 12:46:55'),
(49, 114, 41, 'what is laravel ui ?', '2021-12-01 13:00:05', '2021-12-01 13:00:05'),
(50, 114, 42, 'Wht is your strengths ?', '2021-12-01 13:01:24', '2021-12-01 13:01:24'),
(51, 115, 45, 'what is laravel ?', '2021-12-03 09:33:51', '2021-12-03 09:33:51'),
(52, 115, 45, 'what is php ?', '2021-12-03 09:35:11', '2021-12-03 09:35:11'),
(53, 115, 45, 'Diffrence between laravel and php .', '2021-12-03 09:35:29', '2021-12-03 09:35:29'),
(54, 114, 47, 'Wht is your strengths ?', '2021-12-03 09:35:51', '2021-12-03 09:35:51'),
(55, 114, 47, 'What is your weakness ?', '2021-12-03 09:36:16', '2021-12-03 09:36:16'),
(56, 114, 47, 'Wht is your strengths ?', '2021-12-03 09:36:19', '2021-12-03 09:36:19'),
(57, 114, 48, 'Wht is your strengths ??', '2021-12-07 07:58:35', '2021-12-07 09:33:48'),
(58, 114, 48, 'What is your weakness ?', '2021-12-07 07:58:37', '2021-12-07 07:58:37'),
(59, 114, 49, 'Wht is your strengths ?', '2021-12-07 09:35:19', '2021-12-07 09:35:19'),
(60, 114, 49, 'What is your weakness ?', '2021-12-07 09:35:22', '2021-12-07 09:35:22'),
(61, 114, 49, 'what is route?', '2021-12-07 09:35:29', '2021-12-07 09:35:29'),
(62, 114, 51, 'What is your weakness ?', '2021-12-07 09:47:34', '2021-12-07 09:47:34'),
(63, 114, 51, 'Wht is your strengths ?', '2021-12-07 09:47:37', '2021-12-07 09:47:37'),
(64, 114, 51, 'What is your weakness ?', '2021-12-07 09:47:45', '2021-12-07 09:47:45'),
(65, 114, 55, 'what is route?', '2021-12-07 10:28:27', '2021-12-07 10:28:27'),
(66, 114, 41, 'Wht is your strengths ?', '2021-12-07 11:58:49', '2021-12-07 11:58:49'),
(67, 114, 42, 'gfghgfhfgh', '2021-12-07 11:59:07', '2021-12-07 11:59:07'),
(68, 114, 41, 'what is laravel ?', '2021-12-07 12:04:04', '2021-12-07 12:04:04'),
(69, 114, 41, 'Wht is your strengths ?', '2021-12-07 12:04:41', '2021-12-07 12:04:41'),
(70, 114, 41, 'Wht is your strengths ?', '2021-12-07 12:04:47', '2021-12-07 12:04:47'),
(71, 114, 41, 'Wht is your strengths ?', '2021-12-07 12:06:31', '2021-12-07 12:06:31'),
(72, 114, 41, 'What is your weakness ?', '2021-12-07 12:06:34', '2021-12-07 12:06:34'),
(73, 114, 55, 'Wht is your strengths ?', '2021-12-08 09:33:14', '2021-12-08 09:33:14'),
(74, 114, 42, 'Wht is your strengths ?', '2021-12-08 10:10:52', '2021-12-08 10:10:52'),
(75, 114, 58, 'Wht is your strengths ?', '2021-12-08 11:31:14', '2021-12-08 11:31:14'),
(76, 114, 60, 'Wht is your strengths ?', '2021-12-08 11:32:44', '2021-12-08 11:32:44'),
(77, 114, 61, 'What is your weakness ?', '2021-12-08 11:57:24', '2021-12-08 11:57:24'),
(78, 114, 41, 'Wht is your strengths ?', '2021-12-08 12:30:38', '2021-12-08 12:30:38'),
(79, 114, 41, 'what is php ?', '2021-12-08 12:31:22', '2021-12-08 12:31:22'),
(80, 114, 63, 'Wht is your strengths ?', '2021-12-08 12:58:19', '2021-12-08 12:58:19'),
(81, 114, 63, 'what is laravel ?', '2021-12-08 12:58:29', '2021-12-08 12:58:29'),
(82, 114, 64, 'Wht is your strengths ?', '2021-12-08 13:03:56', '2021-12-08 13:03:56'),
(83, 114, 64, 'What is your weakness ?', '2021-12-08 13:03:59', '2021-12-08 13:03:59'),
(84, 114, 65, 'what is dart ?', '2021-12-08 13:07:24', '2021-12-08 13:07:24'),
(85, 114, 65, 'Wht is your strengths ?', '2021-12-08 13:07:56', '2021-12-08 13:07:56'),
(86, 114, 41, 'What is your weakness ?', '2021-12-09 04:43:44', '2021-12-09 04:43:44'),
(87, 114, 66, 'what is route?', '2021-12-10 12:29:35', '2021-12-10 12:29:35'),
(88, 114, 68, 'What is your weakness ?', '2021-12-10 12:35:40', '2021-12-10 12:35:40'),
(89, 114, 68, 'Wht is your strengths ?', '2021-12-10 12:37:03', '2021-12-10 12:37:03'),
(90, 114, 71, 'Wht is your strengths ?', '2021-12-13 12:54:56', '2021-12-13 12:54:56'),
(91, 114, 71, 'dfsdfds fdsf dsf', '2021-12-13 12:55:04', '2021-12-13 12:55:04'),
(92, 114, 79, 'Wht is your strengths ?', '2021-12-14 06:02:46', '2021-12-14 06:02:46'),
(93, 114, 79, 'Wht is your strengths ?', '2021-12-14 06:05:12', '2021-12-14 06:05:12'),
(94, 114, 80, 'Wht is your strengths ?', '2021-12-14 06:13:55', '2021-12-14 06:13:55'),
(95, 114, 80, 'What is your weakness ?', '2021-12-14 06:14:01', '2021-12-14 06:14:01'),
(96, 114, 81, 'Wht is your strengths ?', '2021-12-14 06:18:13', '2021-12-14 06:18:13'),
(97, 114, 82, 'Wht is your strengths ?', '2021-12-14 07:59:30', '2021-12-14 07:59:30'),
(98, 114, 82, 'What is your weakness ?', '2021-12-14 07:59:39', '2021-12-14 07:59:39'),
(99, 114, 82, 'What is your weakness ?', '2021-12-14 07:59:41', '2021-12-14 07:59:41'),
(100, 114, 41, 'what is route?', '2021-12-15 07:23:00', '2021-12-15 07:23:00'),
(101, 114, 42, 'What is your weakness ?', '2021-12-15 12:22:09', '2021-12-15 12:22:09'),
(102, 114, 73, 'What is your weakness ?', '2021-12-17 11:13:31', '2021-12-17 11:13:31'),
(103, 114, 84, 'Wht is your strengths ?', '2021-12-18 09:09:00', '2021-12-18 09:09:00'),
(104, 114, 84, 'What is your weakness ?', '2021-12-18 09:09:06', '2021-12-18 09:09:06'),
(105, 114, 41, 'Wht is your strengths ?', '2021-12-18 09:09:55', '2021-12-18 09:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('03FZtFY8fvRyWnZ70MCHPMc03fKQczrjJ9sksdEo', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNlQzWDRiVGVySG5MelpUcjBRR0p5ZmZqNVloblpTNk1VTWRvN21LYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737990),
('0aCfOkn50K7yF4Ybr0W9cWmtvfaVVyqiffzkL38h', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibW5jUEZIaWVvNW9yV3lxbEF2Rmtrd3YzTjRBYU85R010NTE2eGFNSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738157),
('0MrR1qpxaLHDYDwrlntaOaQxjfBjQKOhNqxXJ1FC', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS1FPTTducDZnOEZNVnNGc1kyaTI1cXRrVG8yMlpuekJYOG9DTkVZeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741029),
('0QEFLjiphNEHf9L7YMvuM71guH6mlVWnM8YvljFQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMnVSenF4cXNDWURLTjBaMnJPejB3a1BXamdaWFFqU0hwaGpreWhmZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738788),
('0W0rUTGjNNjxlsE8LMLQBX6FbVfKrtIKZGmgE7F9', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNkNNWkVuSXFyU3JCUk9JWkpVSTRuVDdVZG5lS2ZwUU9Xd3BrdWZCQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741526),
('0zrbuKGxxcWC2w1VuPqXI6WNNJwEFMS12m4zBF9t', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMDZCcHFHNGZmTG5YQkJ0RU5DNXNWeUZlYTlBMGZ6NnFIcGI1N0tGbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742209),
('16bZa6Li5E2YvCSgeRmOuKV7DA4NMnbmtHC4f2mC', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3J3TzRzbklUeW9zd0F5dmNYTkVKV3ZIV3RyQ2p0Umd4Z2ZIcVptVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741149),
('1A4mUjJuyw0UisVxiSdg8Y0Mg2HNM5Pv60bE4yH1', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid1NRaXdNNDJxZjVjWXd2Z2hYRjkyWHVtUGxrb2hlSnowdEJhZ241cSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738752),
('1cgJQt973sV0hgRha59pS8RAhWYQnW1OjBDZXlbp', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidTZXamdyWmh0U29kcXlvYXBONUJLNUQyYWpFSEpkejBqVlBpZXpycCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741748),
('1dFRDUE55B1WbRpX92pEMETwUtdbQxVNftlPn54D', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT1JwSUJCRHcwT0NpaVZBTXZPRnJpSDNXdlNURnJOa0c5MnlLbFU3ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739071),
('1do17qsvBf1GeaSa4Bxcmqmn1Eex8nIk9655kbFS', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTG9Scm5IYU5xdm9iZ2RsUnNMdHVKT1RISGV3dzhQSld2UEhST2dyTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741563),
('1gJpNGGFAe5BaapsW2kTvh6DQAwmmx9OO35rJKk0', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM0k4S1BtTDB4cG02dm92WHdCVEExRGl1N3MzdWFZM2hpd3RvMTV0WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741279),
('1jb6zbUrwLFmIKDI6uWHAvkJ6MEpZ8fRhtJbDrya', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVXJlUFoweUdyZFc5NDF5TE9JaUs2T0JkYmV2cHVpZENvUHdyNjBLcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737906),
('1mNlXZNbdazlVHYy7SY50DOdvNmMhcF1X56pBhlD', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWVVSFo1RWwwTXNhaTQxaUlxUnduc3NxN0dlZlA0TVBzcUhPaWRYMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741565),
('1NdbUZWra3Cui2j1ThiNofFDoth8WQG4T1yJuGiQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0hoN1hZRVBTcW1qN2dPWUNlSzZ0QWRBS2RMUTB4d0d1UlZmcHN2NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740989),
('1twDuj9f07uWLxlhNcorhmbjurMQwCJ43c7gXHrr', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS3liMjRhZ0hWR3k0ZEd1ek03Q01WZms2Y0Jsbkh1V2JRa0ZraU8xaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735443),
('1V5DWtsQOJsZYt25KjDCr5FIRaheEFmpRLZYFlSL', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYjVIUUFTaWZBY3BvNWlSN3dFT1FvMTVxQm50TkpObWdhamt4Nmc0ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741748),
('1xdUWNEgjkKBD6vzYX3dEhK3leQODKrLoKZLhGqz', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWWtYWmoyQklSdVFrTE5PYlA0NTJDY0xLTGxWZXNNNGF4VnFqRTA4cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738880),
('20dj4aeuSaaxKffleqdD9dRLimKso8YJFFoeRNla', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRW5qbEJkYUM2SDRBYmo4WGVZUFNhcXREMVA4SjBFQ3ZhNnFlbjdCUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740683),
('23XV2mO0yb6wvG6BOGJaplIqG8DGpOi2mKFM7JJH', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT0RqN2ltUUhUOUZaV2xaWHBVa0FUdFdKSHZvQ0JjMFFXRVVJNzhENSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739078),
('24uNhIABZ8w3XZjMe2BRIVVEZJmJ7GSaNTjfiHRm', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZGNJVXRJR2FLNFZ6bFdkalk1ZWR6cnJLQm5ueGhIY281UHd5bWVzNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739756),
('25GryqQzgdTpXjweeYft6YelCKaSi9zywsJ5CZHM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZGlGZHpUOHRpV2N2bWJDTEdXSzgwTEJQOEkzelY1TDd3UkoxOVYyRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740353),
('2Ed2KQIAy7aplV5T7LK5Hl8refLt0gTMBIUSzRK0', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNzJUb01VZklDR2xUb3J5UWVHams4SmY5UFBsbktmSFdGNjlhUDA2YSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739480),
('2gEGMrO0IF6NwcA1O7gGsOPJgXiog8wUomLAG6DI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYlJFTE1FUUVaZXhRTFU1WmpRcXpiVk9HbzlKb2htMW81MUxxUzQxYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736843),
('2gQ5OBfzw6uNAmGhMqVDguLHHmsPwFMMnFg8pgbV', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYXdlckpUMFYzU1poeDNhZERVOHlqbE9FWGlLQ3JJWjFpQ2swakRWRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739698),
('2O4hrJyegGsczrqub3gt8vF26qnDQPTvoa2kJPpM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS0JDb21vZkZxVlJJNFZueFBkOFYwcFBhUU9ZT255WDRsUklvSkFaQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739603),
('2U0agSn21CpgW6oF0DkG9npSAw2CD5bY7G3zJZZi', 114, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3dGQ0owbTVYYUJ4bXVEamgwa0JIdUNHNkVTdkUwVWNVMXRCbUxIdiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE0O3M6NDoidXNlciI7czoyMToiY2hhbmRhbmkxMjNAZ21haWwuY29tIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639736695),
('2XkU0obzwq6pTfsGHs3JFjQuRZOgEgWv9IpDjJZE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicURSU0swcjR3SXBDeElPNmZBdXZiQjZ1OWdSVUdKNG56QlBoNEJ1RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740687),
('33L9dHo7TrNommoQVxciCaYewVwRzAP0vV4WuwmO', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTGtHem9xQ21xM3BiYW91ZWZ1Y0N0dWlOeDlTeXVJdU9FMDhZWWxmMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741279),
('3CFVR6VnLEK03HHFu8NLTv4k4iRql04uGzC3zCb8', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibHB4cXlIVnBZSVZVY2ZSckJ0VUtuUGtYeFRjUUFETVpjS3BoZUlVWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737514),
('3VSDQ4ogr7CcBLi0FCiA08vM21T2iU2bvbChIeYk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQWJXUnhkOXY2SlI4TFVTdVhsemp0WGduNU11SXNKdUVHMnNZSTZZNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741198),
('3xAut9gIvXa990BZkD8J1eZscraHXbAD4nUPkb9r', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZG9GcGpPSmVYY3BLYW1PZ1JsZ25PNHBuNzlxRFZRV1VXQWZUaXRmbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741703),
('3Ymdxub8tlbJeewSFYsm0ZsLfaSphkbgQxkv7zt2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMjFUWUVVUTZIMFM3aTlWZXBsNG5STVd3b3p0ZFB5bk9MUGtMNFhMZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740975),
('41cKIaKDMjLSWZiugdvMzc4IANk1SohQchMLY5vN', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVmRQUm5lelNlREdOQ0lXMEh3Y0FqZTNza0pTMGZxSFN5YVpIbDB5UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739937),
('4J2jm2lIiWJEOhczfW4Se7CZhLQkiBKyndJvStD3', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic3ZMVzRrSWJ1VGdjMkprUUkyUUxkOWRUMTU0azZReGIwbjFveDFGMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740552),
('50OCUNd6q9tPW7Vhx4WusYsG1OzSg29xZ2TewHhf', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOUZoMUNERGR4TTFhWk42WEVpSWlNcFBXV1JjWEFYTFpONmxORnpRayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740205),
('5B8o0z3oz2J5gb1L1Opm24aS22AkEHjKrNpCuW5V', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOU5HOGJJVEc2clg1TENmVkFwdGdjVnNiTURoOFlxTnZOOVZQakxWOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742640),
('5GtqWsXfgAP9LrbIFKhPAR72k1Lex1Q8Ke6R1BUJ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUVTeENwSTlxTnZPTTVHckhwcmdRMXlYWlltR3czZWs1REpJZFdyaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739067),
('5jEoSLx51dbuelTtwLjJTVw4yaBnyKzfagH9ecJQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMVh0UjA1MXdwRkJKN0pYMWRoVDA4RGFSMU9zMmhSaHZrVXplMnFyYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737947),
('5K1valzYVDH8h3BqrZMxIWkhYdROVElYikg8k3HM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNjNBc2RmZ1N2OU5xekRWU2dLMG1KY3BZdmpGZ2RyTHRUS0dmY0tsbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740961),
('5kHTSsd14bKnB6dKuBmdlUN7l40JDZONGzx6VIut', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM2VSSHlBQjdoSmhtaFhtbWY4NG1NY1ZrRDVHY00wczlNaGxlRHJGdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738957),
('5T8V3ktYHvrSm3avH1HkKm245Pfk4tZHyzMevd16', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMkVPZGJUWE5VOUx6REhiNVo1QmNtU1E3U041Q1Vjek5JSm1DNHlaTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736904),
('5vSksXEBr3Qb9KaEIiYlWkefwIis1kSQOx2QOyzB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVTFDTHZqM1czdW1iMHFjQmN3NWhCR0NIVFVVWWNrZWFJUUNmZFppcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742224),
('5wbJ2AsJr4KLtQLmj2KJj8AJkBLWkHm9gEk3cdfy', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVg0NHNOeFZFMTZxelNWNU8yVzcxM0RyaEp0QnE2WHUxRFNicm9kOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737903),
('62jZYx0wN2UJfR3zF8N9a6m1fDMZrmMOtZ49PSGL', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicnZMcTRmR2VkaUtzUXdsYVUxS0hNMEMwZXdPRDYwOFhUclRXVzM1ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741529),
('66rv1Hn0bP4s3qHXSeBrXJWh2gBU7hdfBYsytmPS', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOE5pNXQzRU9OMW03cVBpWlhMRndZYmZtc25lYW95MTR0YU1ZaU1mOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738028),
('74fAlHWvNHFskVoaJ3LxEvjx4tSP8Ou12gpIHenC', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGhKaFZzOENZdXRoZXlPaU5Vcm9RQ2pNUlRjdTZ3Y3FmUDZMdHlLNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739709),
('7h9MNIjugxiGZ6WeUybYvH9m6UuaCY6SlUJ5avxE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT2dkcGpjZjFzM09EaVNPMlREcVpXRXZzM1Y5UmFEMk5qbjJHNnhrSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741437),
('7ibuhpPpeNEOfMwWDUiNG07M6gZa23Cbfia92hk6', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMzk4b2M5c2dpUGZKcEpWdmRVWEdSSXdWQ2FMVjhwUUV4VWQzd3pmSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741031),
('7pYdMIUpX5zYafjQ2vZs0i4bQ2l0HuACR7ZSckph', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWUl1OTNmN2FzRFRGckxtd3dicUtucUVIYTJ5R2lWRmNlZW9OT1pHQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740982),
('7UJte2GHeD3aUsxbi01TOZT6GDdbjjLAwyn0ub65', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ2JjTmlPaW5hUEdyczFWdlVtcXN3RktyMnptbGkydnNXcVQ3MW5wZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741163),
('80avBhKeqgFFiA1QEwyGozuDCyTveKskQ8N1b34p', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicjNvWEJzRlpEMXVqV2k3ejdvR0dvRExNS3c2SUdTR2dvYlBsN09HaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741209),
('8A8mLIfq3BYDScHpMCXFqdMaXowiwUjxUOsb79T1', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWdGWEVOd1FxbkZrTm5rd2NRWUVjUzdHV0gzMzNVOWNBTnZENGh1ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740945),
('8BMjT5Lyr9oQLysghNShVaM9VFT6y7g4TVNZkY5x', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU0JwdzZmYnRzanZqVTVyTFdSUG53R3p2VUR4QXNwaWl1MWJZTVBYcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741152),
('8BpX1caDG89H44rsZqk70z8PG5eDlaoL58sAz72b', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOFZ2aWlmWVA5dUVBeDRmSlJLeHdwRkRpekZ4a2tWc3I3d0lidlNVaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740679),
('8FLorCRSJN4RSukyfHpVPGUXYjyTTUmQovrIpOL4', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZVlPMGM1UTF0TlVXV0hxcjBYYWt6NmpSRjk4SDFPN1BPdElmU3FBQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739483),
('8JzF5YYfZHEBTFkp2SYpGuua0bwxnao3Vo2kDLtn', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZW13UzIzeGU5WDJCTnNaQ0NxM3JGUGJ6eTZ6T2NwOXJvVUNEbFU5VCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737897),
('8O7Y2W1WlgUvZeRuMovuVBZYfAdZnRsQmFSG9dxG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicFZ4ZHpGdHRiMFJPTXFzOGoyMGE1RlFUdkV5VG5xMzBNYzJHR21pZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737985),
('8W5xUPdPtF7iykHDwzuFfTsD2UEdpzUL68f7iqGS', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieWZWY0RuN2JwWnFIWFBCYmN1eXBaV0pqTzVMazdoMThuS2lhSUFsYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735518),
('8XKv5tHI0zrRHG16lUAQJ2nPtSw5Z0lYY9BN3dDs', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZWdjckk4ODQwWElyb2JXOEpjWUxoVDUyRlNzdGlhV3htSDJSRVNLdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738791),
('91BnKUqS3P8kImXDV5I9MquVMrquRxLOEf26Vy1x', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmNScTdCNUZJUHFkazh0SmJ6YUh4ZXNOQW5kNHdOMWNUaWFXdTBkYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740985),
('959Z4IX9HaRIjgyU4iW2sdyamh8d7EZVuqXiCTcy', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSHY2cXlFTTR2T2xHbkNDcHZBZHZrRWZQRnEwbWk4OTlMczZpbXh0WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741650),
('97FYOlmsP2wPCb3CNE0BSrhGtI05bZ9OxApmphUu', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRzZ0bkdBZzg4dUJyVncwYlFVN3hYUkhCYUdvRHAyNXNUTU9yWncwOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738883),
('9g3w8TJWaF6Gdr1SUscxbwA3gmpCL55uCZbAmwhc', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUGt0Sm42TXNuSFJXbHg2VGt0TmFGVWxxSXd0Vll2WWFiZmYzdnpLQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739811),
('A6SFQaYa6Ip4sewLppwAMgiXEIOBDxVBwSAeZESy', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNWJ1SzhNam1IU1FkajdEdUREdDFvQlZtMWlOS214TGNpWm5ESWVsVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738454),
('A92iG8URV0U82d9KpABHePia28yuVxtOyxMr7MGf', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSW9Vb0M1Qm8xMEx2dG1vekxzcXYwSWlHYWR5U0ZRblNvOGRSUWNjSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741161),
('Abr4ct8pEp1ElWXtMhdb6n55LWGio59EgBp0FzVB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2ZIVll1N2hJTHFBQXZsSm5Vckd1eVh6V0JNdDdJTEFZeDNXWFBZNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741529),
('AcgqEHwTZEaqCkEzsbZuqjvvwqGLAVPdSvXRKiua', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNGEzNHlhcllZVTFFYWpobjVtRXc1MXdQTklvd1FBZTlDUnQ2cFo0aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740961),
('AdcCkMzUEZPwyMJ0jt1ic7IiLzfvkHUnXJtC6bi2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRVNReTBpMDVYUTBXdExMb001dDB0RlJ2ZzFMSlVQWnYyclhsdXg4TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741702),
('adE6o25ppaPD3e6Ssfks2h9EpXZTxKuFg5q1eUM2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSFN6S0xZWUpoc1pQR3ZRUHBKazBaMzRqMTA3VVEwNkZPSVJwTzdGZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735505),
('AhSlKWOAYChuhcoYOi7LLd48xjlDRbHA6wkyRlHI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidEVnS3VFUXRuRVhvZ2dvRG5Hb2s0UDhGWU1XaFhjMFM0Y3hGVDZ4eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740225),
('aKlyghv1uTMLMtdNubcFjhkIfOPfRnDNGRgAM1Yh', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSWltN3A0b0VEVnc1Szk0ZHVkbnEwYWt3WUd5M1VGbFRLcTBRZVNxTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740660),
('ALYGjJPxkNeJZA1hZTaAO3LADupqC6DwC0i8MgrV', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVFVPWFB0Vmtad0NnM1BMb3A4YXplbGhXUU5KM1Z1bXdYMkU5UVc0ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737993),
('AMua5MP48SRdSGloUXeN9g3gNJoDYpDS8xn0JaKx', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVUpMTU14QmlMOFNsYmpKZkdDRjVqWDVXWUhmT056bXRBcFVYQjQyQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739638),
('anpAdc3ax9UwLxHj5zuNT5NYjNFKIrTPikAFMnmA', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiak1UcUpDZW9YYThON3RvbTdCQ3ZiaFRKOUdoRHRaMVp3QmlQRm9MdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741525),
('APHWzQg2JA237xNAn9zAp25aeFkB1hlSIIdkPg9o', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2JOQTl1cUl0QUJkTkthVUpwT0NBUWkwSFIxQ0xpa1lkUFNCeExTRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736782),
('API09hqROLeNfjeNkvMNUx7h3NBNcgpgZY4iWfxI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY3NlekFwdm9lVFNhc2VkbVNYZ01aSEh0ZlJwOHlXZFJwU3hmcGJ0RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739525),
('ar6uP8k3C7X50c4YYo9yipHxfEjVZwb0s9MpVMCZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaTlHMGJScXNYMGhScGpGcmYzR1htcHBkVXRLT0o0UG12TGNtcW8zaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738960),
('aRXEMwCJ1cp8sLkjvg1S9lCVDraX4WWKcuqfZDtG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWW1VZ2RmenNjMXp6ZFNlTDd1RVF6alNZRzdjODF4U211TlJITjJRMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739065),
('ATWqIHTfbpir2TqgwP308nIUGURtyiWqGzaCi2kf', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRHJGd3pIZHdqVjFwQ1cxSUZXOUV4VnhZSjBvNW5ISVVkamVwTUZoYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739704),
('aUUXMRyRtttrJ7m4Pq9nsFDbiV8BlaPGMruhf1vD', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZXJEM2FXQnFvZGxVM2VFNDM4dkMwR1lCQnp0YUhQUXJsVHlaWG9TTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738791),
('AwHbE4XmvAxsO57K2kh8gsg9JONmQ77NPOetORvF', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMGJscW05RzVNdVdGYXZFR1FadVdEYXQ2TFpvS0xJeElTcEtEZllJcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738957),
('aWOWa4KC3I86AF6ukUX2tOVXjwWylhUk9QLqhM3N', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZnBPekJzaThyZDJDTUFndnRKbG5SbDlNTVJ1elJ2UG10ZTJhSW9ONyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741526),
('ayiGVDEsonmH6ijNjegUEN3xx1lBGoxvVOPRjfIu', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWtSU3E1YjdjRWtmbUVjbXhrd0hxZ3ltMk9LZEhPc3R1ZTRuYVliZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738872),
('AyW57HQLITGRA3RnSelb4Sv9cQCyQ3QLhNikf3gc', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUVNOSnRiZzV5b1J3TVpCbFBjcHBMQWtNUW55YzdOQVFyZkdPZFNOdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740678),
('B0DGa20hTN2o5m2mg2ors4gW7S4L4nwfgJXyuJKy', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWHRjRGtvOFBZODhoSmFwU2hWcHFUbm9qdk5sc3dzWnlleEUzcmd0aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738780),
('B4zluBEuJufs8OFyNe3dglsMoNzOWtO9ceah7H6C', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMEZidFRCZk9Vbm1CU09yVFpjaXVrQ1BhMWE3VkYzWGhmRTZwelE5SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741564),
('B86qGFL0IroNFl8FvjMuLGeama0E3J5I8Hver0h2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMDAybVo0cVM2SHNJVEFIZTJGb01oVHhMTHNXaFhRTU91akRGaWJUWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739954),
('b9wmr9KLPsvJmt9MNbAXGCOeCLve4h2II03XrMl8', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibWZDUUl0WDJjMWJHWUg1UzBOS1hkRmdBbUV1eHpEWjU1eEU0YnFTTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739065),
('baAYpJEPj0rnWqqhSdTvqVkIpiHDIgVXLVymBt2Y', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQzV5VUlPcUhGU1k2Q3NwQXVQUlVoU09vMTVTMjJUejBOMWNhQWROVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741517),
('bbl4Qjhl5VM6TWHqqpgaI2m4qI0h24m4DWocsAZ3', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMXRZNGlnTG9oRlNoQ1hDeUcwc1kweE1ieWRKWHlVOEpWb2lWdXBNcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741563),
('BddYcBGLEZkJ5xXOg4swrfXCoqocycHyx28DLprN', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidmh2QjdtcFRIcVRiNWxHVkNBWlV2eGY2eFE0TUZMUFdGU1BBV0ZrMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741748),
('BdI6bwgQLiwe69rVntmOCrUS9KADmXiFzDNbpwz4', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieUYxd3JNR1RSRkNlcHpXSEdqSVFPVEpCbUpyUnBMSHE1cThFTWZwNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738872),
('Bew6afB8zzSZ1Gqugjs5bM6LqGfYtfPKOEwWQVBV', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidVA0QXY1YUYwQnJJU2FoOW1CSzVycDh1WHdnS0FKcUxXQTFIUGRFcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737910),
('BEX1zx4off20zbqkRkznpw5wkB4wPNXyffW6nssB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMlZLY2FwZlp2Y3YwZHBKWE1obHdpWXlKSGl6a3ptZktmbE9LSm9HViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738886),
('BGvNDolfHgVbQWzUGjbDZdSJDeGQOP1KXez9EM9n', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0VYVmVJMHdZRGlLYTlPUXV1THZwbkNtaXZSUVJxY3lDczNKc2UxdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739071),
('BIAvRujLMRxaVjLucYKy63sqoRMSmdaZufdIFclR', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNVM3OXh5ek1xcFZ4blUxVHRPeUhmTHNQTWtGZ1JkaHQ3S1JTZjlxeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741497),
('BOkttlF92BjMyHAxFbfrXO61YuBOx60PQ5U47s07', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidTVjRVJrOVc3S09ZUnYwZlREc1h0NEcxZlN0TnpEeFNkYkxnNGZIWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741441),
('Br8reN6qgbGd9X8qHhNtm61HSOkkPQdZt6LVD7gu', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSmFGeFVFbFBlZlRHNFdWem16eDd4ZFc0NklmOEgyTHRGdUJZMUZYRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739641),
('bYw0xWmJah9sEOmEAov2i2qZnxFKEwoiIvTqMgSp', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGsxcDlFVnFWYkZBY0VFdVNRa2xBWG80Rm50VHFCUll3NDNiVVd1USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738885),
('C04ahtXAKXtY1I63gEZoD7huLkv8Er1S7zRkRo4z', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU3cyWkFSQUZZcVFiUHBmVFZibGJjMFdCQ1VYdGJOVGdKUVFXcmsyZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740549),
('cAUUBFOpTedFEhvxIk5OqPGhZcB7z7oy55Xv79IZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSDc0NmhacDN2SlpHVkFHWlpjcWc3aG9KVmFjYnJFbGJ0RVZxVmtHVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737715),
('chBX9dFxh6jgUPZXAHjnqEqR58KrXPEvEs9dJBUY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUnRYMG11WVVFMFRJYzU2UW5XZkdGbHVNcXlPMkl2bVhCNk9mU3hBZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741156),
('chPWYlIXxPWOpvNupFbj8k0oBvgfp1qhND1I8cs2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGpkVmlqNThub1kxRkYyb3dVVnphaUdzQkJMQU56am9tYktyeEJiQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736743),
('cKsc4cVNgxISjSqGOXz8NendAVJXgZldC1WXxhCv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU2lYQkNYRHdTMmdxbkljYkRDTUZEczdRWGpRN01xWTBZTFZFbDlDeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738467),
('cRNqNQQPjgtSR1i0z34I4gpOHXt9AHiHtuAduiLq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWERNeVFGa2w0OHpPSFJQenhmRGs4TGkyWUFjZmRLczBiOW1SOThqcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739065),
('cu03fXAe21QtsifmAyUI9gK4R9lMaVuHkeLu36Wx', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZWFKVEZYM1YxM0xtZ2pkWnR4SGp1UDFsZDczdmM5bVdRUXluYW5tNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740225),
('cylXcAcrgMvxdxJHaOmlqYR8Z9pDh3O3u2UkQYle', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYjAyZnJOdEN3WTNDaGNPd1Q2ZHlIN3llUkRFbG9yRWU0WUp5NkNNWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741295),
('CziMfnVfbqvi5gdKLSYTwkSy2FG56Edj05MZnWfG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQWFlMmVJQlNBeVpubFVmZ2JIamJrbnpOTlVMVGJPTWp1Qnk0ZkJOTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738960),
('cZUC8RFj7o5FIcucDmTRvl0MgRCrd9UhPmeIKR2U', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV1ZrQW9kTmZvUE9TWmZjT0R4Ynh2NFRWckJDbFlKQlo3OFBSZHV3TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737934),
('d94jZCmIP4rYh0kTtGL6cg2RjxQ3Eoq7uSAmrscq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSUZhVTdFZm55clFlZjMxNmJSd3gzSW1jeTJIaG1wRWVzcktPVlppZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740684),
('Dbq02SBkCwOLY8l1Tpk6RZdYnwmDTn49EgAll3sz', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibXBNeGo1RkdOdnFYYkhXWDlkT1FxOUxGZHRZdGFEbDdsNWk4eHB3bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741029),
('dfi7uqfAs3oyy4YWiDe66YRzkk09dhraPNmhyOHh', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSG82RVE2ZkE1YmJGQVdJMThEaGw0ZHVJNDloQUhyWFhGV25tSThMcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742100),
('DFiXu7TsDmUjQd79KxSFdM14si6B5vd6pZIKMsUs', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTklCbUhHV2ZNNVV5SWljb0dBbEdHMjV5SmZKUFJiQ0JRMzc3SHh4ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739810),
('DgZIp8yhMwEt9ftw58VcAUKBBlNvIOotQiCrzbmh', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib0ttZ3ZkN0hIM2lOSEtxbzBhak56UWpGYnVZSjE4bkxGVkVIWFZXbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737726),
('dNQddZgv6fwuK2o6VEcuBxrPTe8VYh0DodCIztHP', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidnFva3I3ZXlwa2tHYzIxbE9yYnJrSktWS05XRjVQQklCYTZhVVBSOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738120),
('DPqVpRpO8JXjUt0WD3IqmVrRijAuzO10pqi6kSab', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1Y0bW1mWFBJVHIzMmN0TWU2ajdlNFJVNnR0U2lmNU9XczBmWVd0eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738458),
('dQTYchwvGkG4OhW0HsddTmZnEFd5hVdQAlNqkFZT', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWYxRDBEQWRsbWRiWGlQR3hJM0E3U1V5NER6V2NDeEZNUm5McmRpNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741471),
('DtIFCG1wYVxAoWHz4w7oRceqBIIIV1P3xWgXdwYG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUtuY3ozZ2RTVm5pNTF1QmNlZHRZZ1VhRnJEMGgzcWZrWEpXa01BdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741652),
('duDKsbLtQpq0Z4bsMvBGEMAA3og1F5dYzHrJ46wB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0NSVzF6amZ4dVNxOXhqT2dJdUl3NlBxNWV3UDh6MGZXaXZSS09SeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739936),
('dVOXg02hDduyrnd0sCRbUyIBaBC86GMW6Ea0AHqU', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaUJUaWU0UkFHVlcyMWJNd3FxU0NsRFU5VG9JTnNVRDYyS2tQS0ZvdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739756),
('E3xTDRT65pqig7E1YIRh3PjGpsmyWEHGQRgmUHTE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN0hNcjZFdnF2S2NSMlJnUVdDSmxQam1rbmhaWFA1eVRpY2N3V0lMeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735403),
('EAJ0QrNUp0DcIuNbMe3ZvoHzQII2PgXmaj1YfvAg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic1BISU14S1p0ZVZhQXNDUWkwZ3JmWkRDVXlyNjJTY2l6ZTBFTjdvWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738779),
('EBWFmcr9Hwg4VRAH7Trxv7VThaD4v5slsvFofDQW', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU0MzTnB0bjVRMEpqNzRmbVE4RE1QR01hTWN6NVhlV3l4STM5Y1h3aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741527),
('edi1eqGYFqF25waj3ybaIVsUhYGH0rbMvfhE9iwW', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMFpTV0lSa3BXTnhlVHNFa2U1bTlyWGVHN2J1dVF5NzdOak9WdlNLZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740989),
('EFc9AP6sDThvhDT0MS3VbSJ41niyorLrMv8H0DFA', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMjV6MzNlbDRqVHB2VUVtZ1JPMEdZUHljWVpZZ2U3WDlLcFljT29lMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737947),
('EFFuNq8zPUTu8EQL5gTQaiCOr30AbRa8Wr4jbY55', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiejJsclpPTUZxY0R2dWxkZ09QQlFSRnJISkl3MHk1U0FQTHNxNXF6SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741149),
('eMAXHjIrvPoeesBhZQXeTmZ6FuqPZlqy7LPBjskk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS0N6c3lWbDZLYUd0ZEIzcWRmS1RNQk1uTXhQNFBHVEVtUWJ3MWowZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741562),
('eoyY4dnzNlxBc6vuYJ4Sy70lBbG400zqpMrnz17U', 114, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHNkR0VMQnJoaDljUzIycDdCcFhzVFo3YkFkQ0FXOGpJbVNPYVB4YyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE0O3M6NDoidXNlciI7czoyMToiY2hhbmRhbmkxMjNAZ21haWwuY29tIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639737943),
('esH4PlrpnuY4kgPoJh8QsTPZhALjdRuaY0yTyJ1y', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRlBidmlPUTVpZ091TklKN1M2STFYYVhOWllEell6cEFaU0pHRmE4bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741703),
('eVRbPrIDITKMR5T5KX9jpO1mfhNm94j5i7aLaNcI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT1ZJTUtETHkwdWtWRWtwQktQaDdkOE13R1oxRFQ2OTVONVRPSVU4biI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741641),
('EVVZ9AwRSwwDXSEbM7lfpKbHAQ0VbaasevlmU6SM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieWxud2czU1Y2T1lKWnpBdmRhQnczblVocTVvTm1GWVVVcnc5b0ZwQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738956),
('EX2Nj5uarM15nBB2YLvDo4FmCbj9dyB8SF6aL9jL', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVm9HUnFCRFl3b2VCSHo5dktMVXlndk95YlhmMG1sanBMNTFJaEsyaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742209),
('Exz91LkvlJHaEk5qMROi2UhmpxrBaHoCqbuwlfDG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidkVDWm5YeGJ4NDdLamhmTzVmNGJ5UjRwR1lHdXJUcENDeU4wOXhDOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738112),
('f15Agnqpp0cQKxGtS0lFv0Mrm0qT3hiwzW4TojEd', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMVZCYnFhalAzZUN6RzRqUGNBVFlnZ2VHZ0FtV2U0VGg4SHFUMU9MUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738753),
('f3LXpvsNxYOdTEOPgThjchvMkHy1OwtA4xqyJVVV', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVTZ3WFcyeFlFS1pFRXE3Z3ZVRnl4QTFJQjZzR0V6WXAyeDJqS1ltSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740951),
('f3NgPkkOfsBsFo00QXeWuuqyX0eE7ILkrRwoJsqG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic013SmR0Qmg1OTd1TGNLVndaa1NzOUVNM1lsZjZ5bVBxa2NPRXNNOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739936);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('F5bCq3jbUYiPUdIQEIYCkTUvt0Uy7xxYbWwNevRS', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEZwSjBvaEhyTldLYUhXZ1hpY1hsR0FNU01xa3N0NmIxRnBpTGhPbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739603),
('F8RiGDaqvEtIDjz5YeOpa9kYsIBbBULzu0Jm5NxY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoielVDR0tRT3Y0a1lpdEdRSFFYRGkzU3dKdGVtRXQ5RktIZGNpWlE2YiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740982),
('FcqJ9z97qZxATcw8fCqrwYxia0IBPGiYhOV30RuP', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZHZtekt4bHU5THpVYXg2SkkzSlRrUU1yUTVYZGczelFwTEIxa2dZOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741525),
('FemDxFxbLeydT4JYbShbfdJwKC53wWbHm3fLxQHI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmNtbU80dEFzN3JMSEo2OFJBejIwNVdDNTJjWWtzZlFrZ3RpenJxWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741652),
('fGQ6Ys3oJ3ZRe8pXhKPcwUATMaET3c0G8yqujhjG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSUdRY3lBc29QWkVURlVWWllpRVVLZ3Q5QkNVeEtxZldlcjVQTHlUeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739250),
('FGyTVryp13cNVyAyEQYoNWrz0ZyG1Y9ZSv2LKKDG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVzJlQmZEeUpnb3lZcnBLM0dndjhpTTZ2WHdVQUJ0MzBBbTNJTnVKRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739071),
('FllI3lPjYoKHcsylAdEdicssUyNwHvkOWMtPAfVt', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicW5RVFpLTWFCQlVsdEFjRlV1Sms4N0R1ZUhqZUdEaE9mZ3ZxcnBwSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741152),
('fLQG6ZL8GIqa6yCvV40tF9MFgpflFuUpyrcSdluK', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicXMwcEtRS2F2OVJWYXZpdnN6aXoyZGI3dUIza25EMEh6WGN4clVaRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739641),
('fprHAlQ2ArRoYu4FDGnEru4UWlsClwXSwkHTZ5nT', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWW05Sk1TeThzUVBjY0kzQVN6dlljVzhVTWlkcEpHSU9PQU5YTEhKcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741529),
('FsEa75e65wyNG7GzvtCYTKw2JirBfpk8qKQBz5dm', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOFdoQ2ZFTDdoazVreW5vaHpNQWZCZkR4Mk9TTGNodW9xc1p0NVVjNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739280),
('FT8OD00VAJ2nHwYcLZL6DFzjfjzSwUCiAAojuUPF', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR0pDQ2JuaERNRHBRTDN5bVN3V2QyV1NKempyVmtHTmVOY2ZqcHRFTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737982),
('Fu33Y9Pvx4G5dabFa8pzoiHSaah558i6SHT687mI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmpyRVVDTmJuZVdQNTloZzNQOThBMllOeVg1TFdYaU5wenJlbTRMWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739520),
('fUtdapUBv6CiTXoNvPDchPjJk213zfC5mNydbi0f', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmphYWlYSjNKaHJreW1tenZKN0lSYVh3WjhoTW1Gb1V4dUZNRWxxUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739698),
('fvSJTQodLmP53bDA8RlTEE86HlqhkV8cYpgkDyBl', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1RwdWdJWHRLOWVrbEtpZnMxRDA1WDhVUWR1dUREYzFManlTejJwViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740976),
('Fy2YpDQZ8OUqUOpnchpC4kPAfwZvlIgNZRFrX3Zv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNnVVTU1yRW9HcGEwRHdCdktlZHkxbnpsYnNaNW84TjZZc0ZJZUtPayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740974),
('fYf3k5hiaperamUcztRiBICsOdjWBqCvHijCvMrW', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGZWbWFvaDZwYTRXNm5rZ0J0R0x1eUdETmRmYVZUQ29kYU1jempwZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737717),
('Fyw470CdSsKuC23MKWIZCmllM146ba6Y5Z1eZfS2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR29aZWo4a1l5c0ZxaU95cHZSYkx0SUdUdTVlVk9hd1ZzSTV4Vmd3byI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741037),
('g1t43famcBzb2BPtVSrwAT6rA07BCcC6HhuyVDXo', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidFdIQWs5QXIyNnRXWldxV0dHbGxxWXp2SkpiOWRrc042SER2bktOcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740666),
('g33A58jrRPk1RzuA4y1LHSOrfvEka8R09s9pFNjE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUVWY3ZxR2pzSWJkSnQ4YTk0ZjRBSTluU2xiekFDV2Z1WGJvVzg5ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741279),
('G36YuKwx1LjHjVSi87Ck9WG0yjijUSQO8FLim8sX', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMUdxZW5heUNYOFhEY2xTSHJTTDNJSFA1aVgzSXFSMTZXWmRxT0dDNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739603),
('GauxBCG0toMqQkaCZvoxwzMbbQDFqiKbhhlOjbGM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVElrT3pwRUx6VGpyRGF1Zmhtb29iWEhabEZqbkpSMEoxRU1uQWpXbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738868),
('gaVfLLV1VptVVDlVzgrOGyED7ER0X6RcBnZ5sLxC', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSk52NWZLWG1OVE9QdVFtVlhVcWlQODQxYkM5T2R5MXpJSFdmdXdkZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740683),
('gMb6nJ90za5PMhbaQfYWLqNgkV4wiD3RvK0pzO6B', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVlNVG5Ca0lkQ2ZodU5HeGUzRnhHU3hkSEJpdGVleVZKNElvbkh2WCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741473),
('gMUSq4cxOYSoKuSOw7jzzL39Df6WS4vrbuHaKQJl', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSDdmSzVHdXpPWmttTDN3SzRsclVVblJiMUVQVHFNVGZpcjBCb2xWOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740664),
('Gnn3sY6DoOF6gnt2MhJhJMEYteVcoUqhMLMbWm9O', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN1E1UlRPeER1SGJwUkNnUEVzazV0aHVlUnFSaEs1VXU3NUcxNWlzNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735624),
('Gny9ovbevVC3uLpWYauOpI62uMAMOrlkf1LvkAsZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieFdhZXpScW55TTIwQ2xGNUZtNHYxb0dlbXlsTkdjZkdGSDFmUHlSRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741565),
('GNzfvRAKDbR3xmxyW2uy1m9qMpuha1AWq3JimsWu', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicnNyZEhBRlBMdk52YU05NHRpU2J5cUNINEdOajZRWW53Q2l4WXVuSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742205),
('gPfQlacEBI2QrLnRD4s8d7136RkGrx3DBQoEUePM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSEJmWEZNc01pZDRWRll3NUZ5czNXY2t3dUNNV016dm1XM1BGemp6MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742599),
('GPT85aaFabC3xpNTV5SUOOq1VUYgZMq69ArzQTdm', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSFA5QWlsbDhydmttRkZxOWtxU2lSSVh3c1NBQWlPVDdRSnBaY29jVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741498),
('gRqmFbLntDDqEWjG1XfWzD0TAZHEoQKR7mz0wBLy', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVTZxSjhKenl3S0lObVhPWXg3Z2dSaUJ3YTJvT1k2cVV6Q2Z5NWYzTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738748),
('GryR7CLwa8Aog3x1FXyYO4zlGGUUpDDCWD7Jrsbp', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSTkzeHhINWlCVEN2R01CRFVGTDA2ZXVhWk13SWtEbHFFQzJZcWxWWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737515),
('GTLjTdSZQYgZyUaP1lPBARQ03jMEp6kzxCDaHeUB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ1ZoNXVkd09nRFZ4MVVMR0lyRlUySXRHYm5GUDZybzF2aEtTQlVBViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740208),
('GttNz6hBNevTQWW0PiURH94jtKHHi9AWZwvTU4tj', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOU5ROTFUZWI2cW5Eazh1SWJIZzc1YkdWWGFaalNyTlVPRmlCcTRiVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742088),
('GuPTC1JZrcZ0kEyK0bfsM6zSwd6hhimnWkpKD8Vg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid2lTV2p4d3dqdWRuSDFsSnI0d1hlT1h0bDZ3bUNNTUNSSlc4ZWFaRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739611),
('gYJZnMdISkkovJv7bm1f4skv4e1dC5UmhVET3ciO', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTGlZcDlRTzN5UENNSm1VbkpleldOb3p3aUs3a0JJbktzeGdEMHJIVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740957),
('Gypud1umfcJtb5Ftbsuz5KsGcmLl2YEF6axIZEyi', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicEVKbDF3cTgzMzIwVEpESmtaMEF4VkZ5NzNDS2lueU5VZnNUTG9GMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739769),
('gZ0g2K7KQJHLhFtBuvc9eAMU2PNnrAmj0IHky6Ez', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaEQxMTUzdnZCbUc2Mkx6NWdsME1RRGVLdGQ4WG5FMjZ6QXBQd2plWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739547),
('H1MugPztBKBCYAfGHyiN6rmzye76dZILVNTNVTLA', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNGxubk1mcElSOVVvVk93R0Eyd2ducmhVMzFIcFR1bnF1QWhPWkZrZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740659),
('h9Q6AWWucUfuZE3R636CfI12VY0M8klPknDs62Gp', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieEo5TnRjOGlyZHNkb3hJZFlJc0txRFV5T2VlRGpVMkxpeXBPRHM4USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740684),
('h9v1v6f9QpoTtz4XTc1hsod8VswjckhilrXIS3Z2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiemY3VjJvdDhDZW9wUGJhVWtmMTM4TThrYTdORzlocW9Cck9aeXlYcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740353),
('HFzK7EpQYIWdhvehXlNalhWgMLcxOfvkF8Zam9eE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZkk1R0p1MGpzbXZnS0VNM2JiUU9sSXZZTjJURk84SDZZa0NxNFdwZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741564),
('hGhY8unUFk0A4SUjNodTaBTh2Yl6bnPet0XlPvj4', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidzNZNjNsbFdLUHlZcG96UTh6QWx1MUJSYjNaYjR6RU1XbXN4UzhjeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741565),
('HGLjac55wGaTRXL3uT1Pa2yAW74UhzOKNbvH4Ctv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU2NQMkVrTXhOU05BWmRDMWxBRzdaZXRUS3BnZU9wa0NLRERzMXlubiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740552),
('HGoGrwvZVSA1psaTQ7RhlGDgmmWPjvGW1brRTfjt', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0JxTlMxd0tTOXBkM1R4cEZ3QVFZS2t0cERjWEdCNHg4bHBFTklDMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741146),
('HjQlEckjmxpoOreMulJCnYT5sy2EFORTppMsOQeJ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN09kMTJhM3lmaGdBeVFKbk93WHNXUE5oZTBKb01HZWNoS2F4WGV1OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737053),
('hPGpzsouuJcoKmQltXNkqllkzn9fguTNWWqlTsnk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR09tdG5GWG1HOHFNeENnalI0aXNPOUFHc0dJdHZHY3hLVWdzaHprViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741565),
('hqohkuWb5TzXwsxRtFm76bQhKWc9vEoyBUpVVByU', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid2JpYmcxS1NaNUJmV0JHeFYyUmFhRWtqODNNbkpsYmhEeVJpdTJnUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739810),
('HujY3hwkxxEKAxn5EaBUbejahka68k4UtO5Ubbwp', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSE1IaXpXZFAyV3F5MmJaaU1kcXVNZXNCUkZDQk5iT085dkdnYU82dSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739954),
('HV7VWvbqiTgZQ0zzO307LZ4psAjdAZnq5hEarYNk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWWsyb0xqQUxRWktwalpzTUVQdzNKdzdGQWR5TE5ZaVVPdFl3cTlHYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741525),
('HxEU17MaQ45n5l0dBrglTV4csRTngeF0nvQLH8VL', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib0hoT0VPQU9HWmk3SkRwZ2JIWmVvbXhReUZCY1YxR29HNGhLUWlESyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741284),
('hyN6YpKt69qIjAtpRGFkfNNltTCcNNi8rS0nHst8', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMGFlNjZYZzI0d1BoVXVlcm11RnRtR0Y2VEU2anA2WVJOcnBIT2lVdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742622),
('hzbaPOTslHafe9TCVPIYqh2PpqjUKBqEssk9YpEX', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWZSTjZVRzU1RnA5T0QzRG9XbGlFZGFlUEJ0TVZsWVlEYmNWdUxBZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739649),
('I0YWMSRUHvp7IiJ8hsOxZc1yLcs5wexNL45N5Kcj', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUWdpYmIwTVJoNU9XdnV0TExkMTU3bFVqeGxhM0tQWGV3RnRUR3lCeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738067),
('iAiHcQFZl6cD78mcn2jCI2FfSFsZwpSKl6dEcUDd', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQU1hNWVWdUtBUWNJUmhmc1F2RGZtcGZRZmlOc2w0TDY0ZVVoYWwxeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741652),
('IEToel0AniZ9aqdJ1dBaAk0flQdLME9O5nYiUaRZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiejJhYkh1M0RkSGdHMVU0enlBNDhybE1QbXJLOEVIR2h4UXZMcWt0SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741704),
('ihlj4UBcy5OUvFX2VjN3MBZfeRVLQiy8J6qHkTeb', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiakxvbjhWSkxBdzFFMUxkUDF6Q3NVNEJ5YWlWbGhObDRRVVdDaVE1MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740688),
('iJloi6ei3GbSfbowydUT3OtEf085674YOVc8JLdB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY0daOFRoMzhSQnJhTW9sWmwwUUd5bHhGd1VCQUtnaU9QaDRFNFVzNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741470),
('IleWjFGrZjxnmCwDIjUocmKDsI9WWXCLnRHTeagB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUljbWxodlFJYWVhUm5WZm1VZXVmWWFyRHBhUFYzb3ZhUXRZYmNXMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739250),
('ILw44d0UZKcnmNyzd3Rsy9XAWdEyXvJ86KyolJ7y', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2VsMkFSUTBBTTN2ODVvZlpOZzEzY0YyN3VSWUwxSzZRaUtKQmJsaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738065),
('Ink6X3QkZbFp4dqpaIJSaAQDQa5ttP50a7p78sdt', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidkgwS0FmTGNFSDRjVU1rSkU4Umd6NnFjMW42YUtNN01ldThyUnhUSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738952),
('Ip6cKV8RFmEieB6ZaLjsG9vWHm3GGQbff8RFiX5r', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmFwMjNLQ1J6eXNoVzk3NDh4R1g4eU1TNzdYSWd0Ym94RHRjM3AwVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739551),
('IUwIJMmYWr3CpN75rrNggAagbWy8MAjI8j08ub4f', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOXFnQUFlOHpDMU9Jb0pHQ0dwSHYxbm1aSU1Iak5PMFVFZGZwSFRUaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742637),
('j2k33bfjd56m0mm4QUW7HB9YNya7ZM0pFEKgQ70q', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQmY3ZE5UWXAxVXp6RUJCWmpyeTYyeUgwdXVnYnFkejlsam9GVm11dSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741471),
('j7aLpQNcrdEDNLHKxQlao7MdrX4whV2HEmohOhv8', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVzV3TUszbE9HcWZ4U2hBSDRURXdPRUtzODliQklkWWdmeDdFYUoydiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737720),
('JBn4TgA3NNXQA1eozkkXztra3d3LVIx5bRUZO1rQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV3RJbUs2UEVlSzZXcTNhNUhJZEdmcmxMQzVMbWJTNE5LYnhSckxJQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737998),
('jckFWRHgpu47s70PVsvA5V2a681O19StAPFzLyMx', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUHUwQXd1NVFRNEFkSmsyaFNMbVhVckZxcDRxSWZYOEd3UWFDMldsTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739695),
('jdVjRZegrK7TSbImaVJZdgiVlxzccTN7ZYtXiGjK', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS3lYRzdqTjllZEVOd3dXZ2lEVEdCdU5iTndlbFR4MGtVMVBlMmNVZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737887),
('jemi82lALuaHKmz8Tt9W088ML1keISXpAXqVNHcZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUTNQaVZ1MHF1MHFwallMYnpHbmVJdkdMeXV3Mjg2elNjT2E4cTNPUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741025),
('JgUSsCEh2Cud3EqUkmv09i1wIWC3vUTg47lvDRM6', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN00yaU1lTklmSDZha0Y1d2dOS3R4Vk9hMzdLYkIxSk9FbU5CRkVNbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740655),
('jilpox4fLEjVnDrYJzuJ9bLUHK19CJkwME0ReloD', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVFNDWThMaDhSNTZ0QkhHeGFVR0pQTTcxaVN0eTBPODJmNUc1c3pBaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735499),
('jqPquSE0gU0dEX29KMVZQHy7b98E6Rz3iCWx2dXm', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU3ozeG8xS3d6NHFONGxiUXAzOUFFcHZMS1dDbjdLTWREVXVIQ1pyTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741652),
('JTeCvAJJX5RpFfLf99PrkXnExvMTyaP6cuu8vo8o', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSlVSeUpzSWhMS1g4WDRGdGVOZ1F2YUx2bjJBZXhURkVCcW9UQ0FpQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738028),
('JtVlBvBCwrSxsEeQ1fb2P76MDAPdWuDvKdjvLKjL', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMHBwWkxUVEtBRjNaV2VaMkpGWVJIbEwzaTkyQjNPZzViMnptbTdpcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738745),
('jU5qcaf7jcfsdOaLvuO2PnA2cgE7famLgfK9DHTo', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZXpObzVSa3B2d3l5SWxOVEl0d0IyUjdUWXBncHA1MGp6UkhKZXFWTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736642),
('jv3myEkTUs507Hcuq9h5s0vqPaNfA4eYloVIFoes', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaVE5ODIxS0k5aUYzTlFaUkpQd0RWRkZPeGNvWXgyZG9BZ3hxUGEyMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737985),
('jyIcO7kNARfT4U6WLnuklEdDq1nxSqaNspQmne5y', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMDFVS1N6MFN5VW1SMzJhb3B0bEs0VnpDaWQ5RkdFVUQ5RTVYNlhaUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741702),
('jyWuWZDUcTR8eYl64UjYlN9ylQndE0HUF7d4liFd', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMWdKVmRHVVpseFIyWk15YnFEb0NBU1NHZ3N3RHF6NnpQQzNMVEFyNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739954),
('JZpwYfbMVotxVZAc7D5p6pL0yWouOeXuUlOwwmMW', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWEhEWnFvR3NvVndadHU2RkExbGRJOUVESXhWTHN3bXFsZEkybXJCTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739641),
('jzWcjYjKxkuPCxB8wEWlKnlCPfQdpGwhcPoDSNTj', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiclZzams5UDY0eVk4UWFxckIwcUNOTVB4ckRxMUJ5STdhbEZJQ3BQUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737943),
('K0SGyIkQmEGLl6x42dul4DjWsxPToHxc02v9tuHZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieXlHSHVIaDNsMnZlQ3E4ck5rdFdKNEN5OFV3MFF1aDFWSHRuNldCSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735440),
('k3oAoK3S8srzYaPpTxM7TKhokRR2hAlROoEy1c5O', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ1FKUjFhUDRna0k4emllWFhuTmNCcEtxUzloT2xWdTRXdEc2MlFzSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739518),
('K3UqyASD2tkcoFTlwGciFnQonVkzR5sXdRFG6eNl', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRjZ2ekc2SzhON0VlcGIwMXhyRFIzeG81dENQSmZCNWtCN0x2UU9EZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741491),
('K4vRx65QrQkGwSKzyOVBRKoj6Fvr0XuhJn1amkRn', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRGhDamNNb3pLaTB2bWt6OFh1V0dSNWpFaGR3TUFIRGExWFdHajlIQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735435),
('K6jXdsOCqCH2O9RIDFooFVDjL6VxY6PlA1vApPrk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZFY1ZmJYTXBhM241WEYweGFKTTdOWFhsN0JraHRMU0RYamNURVVacSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740351),
('kAMNBqlrU1rVq2B8UyoQdyMAFZ799OBMGivkA9aS', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieEwxU1REY0ppZXJQQUJhV3ZjRmIza3NHVVBOY2hnUjVxc0JIQTg1TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740666),
('KCB6DVHtYJvXvEKf1qSJXlqS3yPQR5onfubRKz3P', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN21YMjZkS082UUtnQ2N5ZEpnTE4zUWlaTjlWTExOUWt3NUZPNlhaaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739525),
('Kd1sB5aTo9XQuA4i662X12kOhVZ4WNJgBAYi8iCn', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid091d1hSTWM5bkZhaVE3VkRQdFhQckEzVGFURXpkc3drcWc3T204cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741651),
('Kdr9kJb2ileNY0gShpPc0wqKe1v454G0xddNYYVA', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ0lYcGhpS1R5WUM2NkhVMlFNZDF0VTM0RTdGd2hoaGR0RExtNGVEbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739645),
('kjcCLpmvUdYmffgjOtkJllLAdpag6yAwmaLgkdKH', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicE9pVk01MlExbDdhdXExQWVrZGd3dnlmalhNVU9aekNDVERnejZRSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740960),
('kjDzksnD8o6w8T7MSuOJqnMyBEeXa0Bp9ldgVo9s', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibzdualIxcHZHOHVhTzhuYWZZY0JPeEVHTnlYVGZjVzlXNXVqUXJ5TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740951),
('kmzL40ly410M9fSbcl1SCJULr2BvrWDiJXPeMMNe', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiekhhZ2RHNkZsVGswWnlpWTA5Z21CS0lPRUpjTkgwUTNPTkZuOFdSTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742126),
('kN3kPnWy92WsG9Xk8ZfVNy5lEjQcN9iTg7fJMRAv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUjM0b2syQUxhWTE2QUc5UmhBVDFTVjFkclk5NnkwSFpZajl1Tmp3OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741985),
('KQPE3rWsmlcsqKtFlvVUvFfOrPLbmOxetjg6Zso7', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZWtScm1aMU9Sb1d6VU5MUWhZTFpOMVM2czVhUERyM1gwUmp0ZmpMaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741703),
('KuJ2U5j4a8ZO5S8UKuPzJXjurLSWxfvSN1vdqY4N', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaFViVVk4QWhTbzFlWWFTOGZwV3BVdDE2anFGR1FmVW13d0pIM3JiRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742634),
('l5WCRog9tzJb5llEA2Q1hBN6KZBqybpHZq1kwQXo', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMEQ5eXZyUkFsbENTeHJadnpXWUZKR2ZTUmhOSDBKb2ZTZmYzaVljVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740989),
('l9V6Slq9SGPPRsbEZZ6Fhpp4YPlganRatL6opsYK', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVBVazZ6cUpLOE5MRDFxZk9YbmZlbzZjV2taU1ZNZ2JMUE9MOTNZMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739078),
('lBZZQ8acSGee1DQ1zKrdzgFEyRdC24tVwuwo3QpU', 114, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoickoyYjRRemYxWElXS0VxbTdFWThVTUFrY2R4V2dGbXdPMHlhejVYbyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE0O3M6NDoidXNlciI7czoyMToiY2hhbmRhbmkxMjNAZ21haWwuY29tIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639736683),
('lc22EzGC26CrW95ZbDPfhi1I9pJsrJyxB6MgR12M', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRnFqQjhQc2pzU3pHQlFjNmlpaDRXNnQxVkpmVHNZR3lRcTdRZlQ5UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741284),
('LcBubgNMVPZq2wGD2dL44ojDuaVTm0C6CXO4H4y3', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVVWWGRjOU5JOXVkRzVKeFpmdG9qQjEzdklGeEFGNFNpS0RvZzVFOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741198),
('lEPkKWXRccmm4NTcDh3IkQymzVBFwgLLedBqAegK', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ0dPU0lac3RZaG5ick5GSmNTTEF6RHRrT3Fka1MwdjhHcFp0WVc5TyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738890),
('LKFuHDuajHmCg8fyAZ8gtmV86tY2LgsUIennvGcc', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaE1WR1AwM0c5MkhqRTVLV01vODVrSFFpVUJxMjBhanJJSXFaOENvdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740686),
('lLBlkipABg7LWjRyzL5ADZKflNo7ouIMMDkXlkMK', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM2NwUDRsUGY2dTlOMzhid3lsUkZ2RE5KeVJzQ3hlcTBtTHNkclN3aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739808),
('LlzESRbXkCdKV1kkh7w2hH4XMAUAxLKD0i3646iR', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTnpHUlVFTzlPUTdtNThlaXpSSW5vSmx1VVZ2Vm5uNTY0SEdIYXlFSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741764),
('LNiVauehVH1hbHQ6Oiq8nj5FUCWlNEnaYkxZrKfc', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYnQ4N1diUTJnbjE1UUFqV2dUbUoyVHJ6bEFvYVJ0SXdFejRseUxzRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741993),
('LTYn9U111yo921HINdr6pg48E9kIZkGrFfyHzCUQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoianU5c0xiYWdNQzFBSVRnd2tlcmV3cU5QdFM3RmxhOUY5ejdYVkRXbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739483),
('lVfKMcKSYIWDgFcNOMQAwNHELtL084Mvdy77AWVg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN0RtZElrMmtKSDIxUW9tRTVnNUM5R1pCRkF2dnpUTjlUb1QyWGp5RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741526),
('LWWvCi9g3kUtlXDvz9ObP7tx4rSYD9gZ5HkCXPp6', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMkRJaFNnT2R6aW5GRzROSlBsWkdZYkI5RE5TRXJKN2N4NWtZaUQ2biI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739932),
('LzPDv7zLo81lcNhNVuCqUmYeSecF05Z5Eti6Xokw', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic05WSm5vb3BPWjIxbWdZOW5wd2ZIRWwwUk5WaE5MTVBXYTNDMnpZUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740210),
('m0K7oH4KjbMrh4gcFXtBFy6jcSt3QMFdvF7IzVH9', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ1lkeVI4MlN0WG1vMzRzS3pERjVDTk1YeHA5VlFrdUdHclZqNFpyRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740210),
('M4gjzve6jzk2mdPIxiPELfcZJFhXLcoDqtAldDWq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiajhqU1NRbHVxbERPNjFIQ3BBRGcyZTh4RVQxZkpQUWEwakF1blR4eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739483),
('m8KQn644vM9s5dciobyezeGb5YvhtdKgGlVhsDPv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2pwZ2RxTE9pN1RxQ28yeGxEMjE2Y2hqbWpIWlBNSkFIN1hFdHZINyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xOTIuMTY4LjAuMTM6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mzk6Imh0dHA6Ly8xOTIuMTY4LjAuMTM6ODAwMC9hZG1pbi9xdWVzdGlvbiI7fX0=', 1639745185),
('MF8wJO4lAaYYJ9ZLiRjxjMts8B2fmmYDT0ORLQYV', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTENpM2IzTHZNUXdBcVcyZFhoTjlXMklhWWk2QlB1OXJqREdxZ0NzNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738883),
('MKDqIc9AvzB2fLbU2SG8FHLDZcbLwRXSJNM64f93', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOFd0T1VZQ3JmcnBhVFJJOXNBcE81MWljNzFLblpsUGZWUnc1YmFvTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739810),
('mRGlj44qKHypUiUmJ90dOV2LPGVDMsvvdSbf6bFn', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUnRnbG1ROVFvbGpYaTF3dDVSR1gwQk1mbFdoaGJ3NEZYMlphMVFraSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741526),
('MtikMnAX6Bm3ZRyHHNmML5lLHUTxqihNbIff7b5O', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibzYxdkgxNmFHWEM3RnV2UHVLcnJiRG5ERVNOWUl5aUhXRjRsY0h1YyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740976),
('mV10RiP7zK8UKhfSOGqde2cdckfU4Ts4q2QbDTzx', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2F5ZFoxWHlyOFNIOVhsME5JekV2ckQ3OHJFZENIZlhiYVI0QmRxZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740660),
('mwD8sZ2MOAKZYDoiWBrqxsDedru65KWg4voPvuWJ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYjJtc3pDTkhSeFNONEhtaWtueTBlUXVzQ05oRktZQXdzOFFmMlhwdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737985),
('N1jfoKGmOrIByUAxNnG6msr7zQnmYAgFrvESy6LX', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY0FONzVCVE03VHdSNlRnek9SbTA0bEJqRFJpWEJrcVpnalZ1eldnRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738157),
('N5ONIAx38pJo9AdT9vGt4yGy68HDq0TaE8ia8zzD', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNzlka0JXUHI0ZGY0OVN3ZXpLNmxqYkNuSFR0ak8yZEx2YXpPanhQQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739079),
('NC88ow4ScPaltRXEhD9ymPagqk3Czkv4CjGrr3fs', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSzEwYmFIaG5IdkpDQkJ2ajcxcjJYSDBxVU1JV1lVdTlkSkxFelF1RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738469),
('NdHzvrrQdqV2LEXV1WDYhncfaYtLxlAeTxnL6R9R', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibHdLT0JxTXVRejhROHVBR1NFWXFWTzdrQVhIYVZGblV4MnBpYkR6NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739598),
('NgIKMSMf0csmAF7aWKiA6G2qoL9uO2DvIZ9k5EkP', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoialpidzJGNzhzVW5KVzFMNnp6NkdkdURLdmNtQlRyaGN5NGxmVEF6NSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735428),
('nhHnUOFGGt5MSsemfc5KHcXGRSjywbXlsQgJd1hE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRzQ5Mmpkbk9uSm9BYjJRUHF2NEpKTDNmQVZhQXgxUzV0T0o5TnFXZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738152),
('NO6EfGn2eZEgMswummHMlb7syBvYGhC2EjqCKYft', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicFNQd3BxaEhnT0FRN3BVbm5LTFNIUzhOMVFOaDZ1Q2lzVnFnNFlLTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738065),
('NqaEBwy4hiLDKbwRVdz66PLBjM64llEQ1kpHNwpY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUGl1R3BWSWNnN0ZoODNDd0Y1MDh4UHhGWlBtbTFZS0Q1WkhVR0s2USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735479),
('NRaYMGlld3ief9twiDMqNkaRmCh4XDKFXQUnIVvv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNGtmdHlYWlYzcHBsc0JRMFZ0eTgyQ2pZZ3BvZ3dMWERRTm1RTXp2UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737887),
('NSU9E9ccvYvBlZNcVsznWQi7Wf5OmYLIzSu98mU9', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZGJFMVBLWkFERTZYQ0VXZnVqNnN4M254c2lDTWtDQUFvVFNneW8ydSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740229),
('nYfwgmWqOtA2dpG2UeaQkjtQUPpmDv4WF29CMfXP', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibGZoTlVZa25wSXRjcnAzS1VVb3gybmlqclhhTVFqYjBNTjdGNzhHayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741203),
('o4rDO9mUscmXUuFxHD9UKmr6pYNBVxLm3FjnzMBd', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2V1QW0yV0h4b0VNbDYxbEczOG1Hb0plQjNzTFlOS2tuenlFUVVOUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738872),
('o8vuzrWw0GKQrmejICgvemLnVCuz7925tyO4UNWM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoianlJRlZmc3BiQ09XU2xsOG9uOXRzWTcxcEVoWFBBc0UwcmRaV3lEbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739547),
('oCCgWcOis0UoFJa7VPsio698JaLkE7rUW1FXXZ1c', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVXNHcGlIb3dnZ1dCTVhsQThDT0ZickRZc2JwOVRuZTNGVERtdjB3YSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739547),
('oEGcoH44QAUdsW62UkHNaKsEnE50NEFw1ThbizSQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmM5VHRXeDlVbzJhdk1kWFdGOHU4MEdJbVZhQklYbE9OY0lZRGJRRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741524),
('ofX31Q2TxUPoE564E7bjWCXGH8o62SItmEmAhXr3', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ0MzdkJET000dTNIRFZnZFRmc0NTZ05rNW9jNUJTV0g3eld1OXQ1USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741530),
('oi9QYEbVjUPPVwophp8UiwQrkcq5z0RuIBqQSTCf', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic2xxcG9aOEhRWkJ6SmUyMTZGTEZ6SjE4dkhSc0JtS2piZ3JUdmMyeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738161),
('OkG1o4GndmVSVUGdm8prwAFA9GiK7Px6o4mcg6y6', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSTZMbkhhTmkzdXRzS1hQbjlhbnpOV1cwSzNLTDBwYTE2bEdacWRZQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738112),
('oPmMgpCpriDA4HR3fVgwcbDdoMrJvDFMA3P4NR8v', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWGNGbGQzRFAxaGlJNEtxR1JGUVdrV1FRZ1E0WExFZ0hFcTFEaGd6UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738028),
('otcFjrIGkOlTA7pDCj8TKCWCPVnPMxvh5dzbNX6y', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUzVEYzhMUVp0VU9CUXI5R0VSbDBMQzlCM0Q3WFowMzEwY2g5dHQ0NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738956);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oTMC3dkIGwgbpveHhafN263vgW311AQqRIIzjSt0', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1ZIY004RmhaTWhPN2MwNW9XQVoyN3BjWm5CVmo2b3d4OEVPc2lsRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741716),
('oV74UliisvacI8enl2efWrgRa1JFylwtXnxUI57H', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZXFJMlhwUVlXVDF3WE1maDJPV2F3VlQ5RnVReDR1aE44S1hOdzdodiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739698),
('P03jI9AcztkdHXZxObLRKMx18TJVBnDdjagYeUMY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSmIzVWNNVlI0WDNkYWVKekc0S1p6RnFhWDViV0ZzRjdNU3ExRzdvaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739937),
('p140t4YNZIRzoKNAwAI7xCTDNWbNGVcpOgPgjkTg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2NJRXVVWmV1ZnRPNWxVNTM4clhnZm1VNmFNSjdoWmt0ek5LRnRzTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741513),
('p6Qh7WvGAHC31UGbD0b6nzKaqETrB8f1QrzaWieu', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaUdxSmw4NFFnam9xRXVCdHZDcDUzeTR0RzY2bGpqMmFDV21OckhBbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739762),
('p9QKfBJKWMVHCWTaD7lHenqpdnCqVbJXWNzs1PRI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiazJZWmdra2lkS25pZklsUkVGVGRLMmdac004NmZNT3VLVGlBSWs3ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639734162),
('pAabgoB8K0PHqBj6iFdKdfvsRv863EDwL8FpepWB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM3ZlaWNSQVd4MVB0WWY0Z3ZUSmxlMXhWeUNnRmRQQjFHSlVJazZBeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738121),
('PaUbauaQK2QufXuhWUGnVkAHn1UGJOW8g3MIAXkQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiamNGeEg2VjJvd3JwQ2taSjB4Z2cydXc0NGM5ODlEWHBpeGVpUWxQSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740659),
('PgQHm7YUGZiB2sNix70C1LmnlMirVFe2LSTZ3BBv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiejZpcTNnMFNXcWNNbmlQaHpQazdvclU0eVhoWmFWUmYwV3ZiQmYxRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741762),
('pHpJCKnuNTPYy6FRzeqMlYkDEsFdraB88aDqOzVh', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTmtwWDhHbXBldkM3bnVoNXpQQUlxOFBPQnlwTEJKZkNkWGQwMGt4WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742623),
('PIuyee6EMUnKNlRTQJ5M1zyJYVp7kPtlmcET78EY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieWthYkxqdHBrdzM1bjhkMElQUmlOQXJBOTd6QTZteEJhRWI1MjZJTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739280),
('pMolTUHxNqRnKX0vTnVlooX8CaE31GDzUwFYt1RV', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMDN6ZWZLSHZYZ2FFSldMVEFva0dOaVUzOUt4VjF1MjVTeXB2N2NBSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741651),
('pnH9PrJCi0mX5VIwbN8r4NNOoLuBNbJiL1KB2pDk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib1JEVzR6TlBJemJmbU4xa2p2NERvV2xnOGtETHV4QXVlSm14WklHMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737900),
('pOSGimAh7iIWJyXrH3apKvrIFeS8z0GNSagNJ68a', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidUlwOEo1dXF6QUM3czJ6TDFoODdmSWpoMXlwVlEyZ2o1dTRNbkxWYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740348),
('pQzasW9OgDpnGev6UlAqJzfmeFLBOZKUEgpkMWoY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieW5zV0lNbUNlMlN3RzN1TmZaT3pQN2xPTERhNmNNWG5lTUxoOWtsRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741029),
('PRE1dIiFAAkmoBUxo26tj1s9E68Vcs0qr7rqg5ni', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN3R4aWFHaHgwVmxuQUhJb2x2eXlMbExQc0xlMWJvd0VtU1lRMzlScCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738956),
('PtXWZNMkUAXFHgOWgcQoSypdYa37vQxBYIhEcxRc', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUDlLMjdzQlBCclJSTlpFUzdzWGFqdDFiZmZwalVTTW5oa0JFU1BndSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741031),
('q7G4zWbXoHXNquY77kGWSTI8Wrlye3mVAhAUr2A7', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT3dHdGpxdG9aeTNBRFU3aXpZdjdqSWh6NjROTnRKbHl3ZmdQSnhnUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738161),
('q7pf0df6gQmtMDv7uyRSBYZqCCqUCBUxLNiUBYwN', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRlJQNW4xY2RxZEFHQXFDUXJsaDhYNDdLeHNzYmNMbkFjQkNncktpWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742232),
('qEq7c6KBT1XkVqoyKiP9IK6VBsXCIwy85Tc5ow3v', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicGpKeVh5VFlnZTlsSnJ0MVJXcTV5RjBzUEhWOTY5WjdNV1R4aVhRaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741146),
('QiBwIa2IM1Rk85zIDmAc84XObWpq6YT02zd9nDL9', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicXBLeTJFbEVFZXZZd1F0VEsxUEpPamtGUU5KS3R2YjA0UWZDbU1WUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741689),
('qItNutvKGws48Gh8cKsYm0dM2IZ4YMmi08x4smqv', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYkRoQmI3SnppbXNmOEI4MEZIZk9PT0s0R2swNWJoQVVtSHpBZUVYVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738467),
('qJ7WUSqA4QSFTpgsktT9RKDOHuJ6sfIAg9wVVsT2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVk8zeHF5UlAxa0dUQkkxbU40R0UyNEs5emd4QXFwaHE3RllnREZEaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742118),
('qj9tvXnPoEklXZGztcQAcGuglIeAS4C3lCutCmpB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaFI3djJacWoyamRWR0RkTEtWUzZpeTlkTDJySDdiRUF6aFRiUGZ6dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737884),
('QlD46CSxJpdUq1zgIzCR5oHpmCI6qgfio46DD2fU', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2ZVSTdMMHoxY0pBajlMbHNZS05SOTFxSGlPMm9XVnN2V2hHQzFjNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741489),
('qMIu5i2pv2YRxMWxilktOu0o5qtLW7kBCVM2yycW', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYzJ6OTRvZWNHb2ZES3lpTmZncW9DOHN6RzBlU1BLTTluSVlSRHd6SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737887),
('Qom1AdC6WA6WAOWNWYwjAt7oU1YtWfLe9rrP8OrB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVUNBdzRzYXhPd0hTNUMyWEVSQ2VCbjRveHNtRnhKbjEzYXFqd0NKMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741530),
('qSWMlt9mgiYVkP0a4UYpakBmUW5hpsZ3viEQHSEw', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYW9iTnVzTTFjeGFOd1d2dXNyWDFHV08zR3ZVWVVxMzRkdDZXQTl3biI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738960),
('qY2gluwbbq4JCKYLNG2YmbwBvFqyxVxO0UBmXUu7', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidDAwWjFlYUhaZ1ZBTk9MRlpjbGwzS1oxazJpZUx1Y0ZUNGVsSVJOWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741652),
('r0orGvEwgYA6wUAEH3wEUjLYZyNRPp3Qw9YZ9OTw', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTXJ0eHhjeUJLeGI1Q1hUQm1WU3RFTjJyeHVXeGhLaGxKbzdDMXRuYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740356),
('R4N2eguo0ZMbXGQaZpdF1u7gzrvFN6kzDjTF3dGw', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSDc1bVJxSUZyQXRVOVVqRFNYaVpDOG5SSjhYdjRtMjhaaWJGVWlyTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736407),
('r4pjs1cW3id4SSrLpwE03F5X2I5QwWXwgwyY6Ci5', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT042U2Q4Z2Nwc2FPamo1QW5JV1BLU21GZG1vR0Rza3BNQ1BxTmFmTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740978),
('R4x6dCzVMAmvSOr4QYxxObbmCLFf0rdj10I5Gq0q', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOWgwa0FtYjlsT2txc2tYUnBaVjdzekVLVDdjQ2VQa1phTzJUb29lQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737720),
('RbJp6fR9Tmyh7sBpe4XTH86Fm03off2zsIdF7uNS', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYWozWURjdUVRZGNUQWxHbmg1dGVPS0pZSFB3MUdHWjVtdVB2RjBkQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735511),
('rBL8zFuf1xdNtQszgbHxDmVqyuERVNB3TT8MoGSY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS1dKaXRpMElzUWszYlFOWm1vU3l2WnNXelJXeWNYRUNXZ2tmM3VkbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741745),
('rcFyIylVZ8EXijz9MshLvd5kiCVIM7Kq9oUDsWJP', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRFFsOGRQcVlEUkdzNXc3TVJmRG1SQzZ3eDdiRTJiVVN2MVd3cFd5ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739280),
('rcrNDPMeywYAyOOLxGRAuWeA5ZTEuf954JWhPmGs', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSTd5YnFzR0JPakVRN3NhMmxxcFZ1MG1NNU9maUNOaHFXUnJDeTV1ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741455),
('rCZtKLfAxrrRKg902kLqtIGSCVXFtdWofdbUCtDk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVhFeHBMdGRqdGo2Y2o0Z3VLbG9EZEVROURwMm5VMFlVbXhodWpSbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741198),
('RDmsZiP4xYDJn4RSZdnCEmTxfb9e7CcAWEhjstYu', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibDhyaGMyVTNzeXdTQ2ZJdkNVU0gzQzY3amFuT2E2bTkyUzVCbGhzNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740229),
('rm8xivv89jsnXe8CHg58ES9Q5lUNvpBHm2UrTYC4', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOWdZSnhJYkM4WUM2MEZSSzhIY2RCTzk1MUFBZUZiamtJTTRkSzNhYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739956),
('ROEJl2nYm9E6injIHlL0KjmG6pbZxMbkuOhOGC2H', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicGhIdjVYMHF4R2ZQM3A4WTdHVmhjdExWY3ltWHM0clZhRWJQQm04NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739525),
('RSpsoFee1NIuPh3vYEGAZEistF4RXgGDZbJQfPwe', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ2IyYlNzWG1rUnQ2bk8wdUdsZ1dHOEVhWXZiQklnVzFtUmRJcDVnYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738779),
('rTtELyEDyEh8LheuFVlpjryxCieIvXGqx1YxwpHE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWNodG1QR2FpbVYzYVRLdkl5MW1zWXltWFFQdkxYU0F4b2xiZ1l3TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739807),
('ru7Zs4dbZL135bdLct4o8QGtBH1emQF1ECAGWsKV', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiblB1c1huV1ZKaURlZ3ZDcWdKcURJbmtWMkVXdTl3NDVLV3lKZTVDaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739936),
('Ru8gymKASL0X05DVUQwxDC9BI0dTFxvuXKQgw43y', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUFZHeDgwaGZUb3hIVVg1QlRWczNrUWlOZ3pNa0FjQXRVM1NQek1PaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736744),
('RZ2WHO8jL6yO5XBZ7qUy3bJiTFea0lqbis1LtnUK', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNkFvWlA2cmg0dkdZMGdLWjZENmp4NmdPbHJhUkFPa3pIYlpaQWpMMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740351),
('rzFgkg710QDuu37FOXq8IklTCrd0iGmAQZwWS4b4', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid3AxelcyaVo0eURRbFZQSGNmcFdFMnpNMm1qSTVVSGRydW9SMXBKNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740985),
('RZtYsO2S8hHNNXoJU8IwEk8PqsnaHzlvIvUzfTtZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicTN0TjZzME11aUl5TFJNRkgwbkdvV0Q2ek1oTGZ5aVY2eHpTZ1hvNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741471),
('S7c56f3pddkX9uYQCuUbzIEL7kVgKrxjYDjJBg4d', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicEhHWmV5TTZRQWZhYmZNOTJtSnZCNDdqR2Y2UGZaYmpHTkFxWnhtViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738748),
('S8p75PVFyNP4hhkPJB6LBVMklLVJeTk01nEoT8CL', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieFF1TENRanFEdFd3MHhmMWR3a2EySE9NczBzazR6RWJzWmx2SG1aSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741203),
('s8rdpq9h1uKf5MRN9GswZcIT6ykM09b6Cus7Qtil', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRU40dFk3a3BjeE5HaHNKbWE5WHZ3Q21sSlhvMWhsRHlIdWREdVdjNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741488),
('S9C9lPGb83J8ZiVlMr6oXVESSszz5C3G50ASPZq2', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEZDMXgySm1NeEZhdUVMQ0NSV0p6aFBjbVBIRVpkUDVHZXFvd1ZqOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738112),
('s9kZeOOcQWOmGs2SpUht7cLacFhWHnC1QCTGYxUu', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS0dSTENDUnBvbFQzZTRhdG9kaGZiY2laOXRyRVdvcHU0OGJHT1RjSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741284),
('sbCADvQKbL48NSpDoR6oZWvZIoua17ECDmdlscE4', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOGVMWmN3eEpUWTd0cGlaakJZNmxuSFJJcHV1TThIY1haczd5Tk5jbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639734185),
('sBRN8G26LyeiHjz8IvTxyZUIHEifPKxKTkw3WnSe', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ3MzblpUeUhUWDFxVEV1NEVyYnlyeEdlaFpVR25pdTRlWm5NMzBJaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741151),
('sciScES67RrFfRi8GPAsUD5qD7f1P3MK0AFCAAwf', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZUdKaFNucnBlOHZoZkxVbVlhWFZCUXg0TEhYQzZNcjVGeW90dEQ3ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739766),
('sEBomY6PeLXFZUT9OAXyuFIyV5GlRpEnU2x0yO5K', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieHpMblZoMnBiSnBWbm12TWNBMjkzYzBJUHNha1JTc2FxaGhmTzJabCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738751),
('Sfl1y0ZcuPNhmxvNkWzh1h1MmwzE2GE6HkBr5Awy', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0IwOVhERnBlSDVmRnJuYkpBa2FpRkRMOFBvbFZVVkExQmZ1eTFqVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741703),
('sFusTqH2aO8etZm6WLAd4VKD1zzVHoHhamuANZBt', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU0p0MzY4azUwazBCRnJKSkhmOGxOa1M5ejVYRVl1bm5SdHVtZ2VZaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739515),
('SfYD8sH9agb6Ogtp6aNQYXrsCJpT0vcH3b3RJxia', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEVMallybHA0SGJuSm02MjA5NjNHZUJ2WmdNUnRCQ3JsYUlZZ2F3bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742100),
('SHRncxWko6xZD6YGyjOaEbgLNhxqeR0ybdobc8xq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZHNNTFhDcVQ1ZnkyWUI4UlNXY2R1Qmw2OTYycmJ6a3NlRGk1T0RiUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741498),
('SKVMSvsN2tGuDDuEqgi7Nsl4NNf9ZzIVBDsgLUNq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiek0zMWhmY1JpV2ViU2lyZXVrUXphWTZnUmdhcEt2ZllVcmxXSWhBUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738889),
('ssNG19XDLDFSwXtbnNsaDNtciSLQBGHf5t87YCRh', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibE83dkhlUEJxZ0dndk1jb3h6UDIwTG1hWlJHeGJERFJZUzBla0RGYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739645),
('STvWWgwe4ZOXR3195NK6tN1nHWUJ8iVImnHrrcKH', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibmI1YWRzNVJ1YmNmamdTOUJmOVNkNHBBdWVmSFFDeTR3dDBnZkNXZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739717),
('suvkjy7JoSHWxXLcMrvRjfK1r7J249QL3ZN7j8lC', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiczF3UFZyWlBqRmMweDU4ZHRuV2ZOZVE0NUVxSjg3ZzNNYmp2eFFvdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738748),
('SYI2m9l33Z2JNJ1r0yXbg5FrWuOgFEs0lHdHnaww', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiamxBOFlzdWR4YmFmeXB3SE1HZGtMQjZrNkpGWEluSnNRRmJEcU9sWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742100),
('T7r1Mwgvoz3wWbd3pQIedIdUvqnEfkoKOVQWQNXY', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmk0VWhCdlV2QWR1dzZNdTFSckVFOUdKaVNIdmdFTXU5Nk5IblhYaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739701),
('TfEuyA2990HTJaTXe7rZsfwmVrYhf50bujmtcJ55', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieEdPcUlYNzlqMWNzU2Z0aEZxamJ5bXE0eG81NXhzVzhxS0ZkSDhPWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741564),
('TGQ3pAgkZcUNRzS6iDa1Jx8nfJasgRPK75FCS15g', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibElFUkw1SzQ5NmJTeDEwRDM4WUxPclg4NFk3Skc4YVBYclFEaU5DWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736920),
('TGV61HxiMregQsO7WNurEX5c9Qjhgd0aOdun0xDZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUmVaUnU3eFZibEd3alN4UDhzOGlvWWUyQllEc01SQVpoaFB4dlY0dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741456),
('TiL99RoBmlXpNYF6LpkskkGpUBjhF1wozys1IJnB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUVlHejNvV1ZHY2dkZG9rZFJpTndURXRWVEFmUXRyV0ZVdnNNbTlMbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737720),
('tkzEZwuRymqwdSHPvUQpF9fFUce7iWR38Oj3Aket', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQnU5WTFtMzNrSHhJdWQyVjZrWkVpSXZOdVBlem9xUER3ak9NOXdEUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741158),
('ToEIac9WnUGKSebeCBKx0advzF0VnmUIGmlXovZU', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTllxWTFNQ0gxb3gwTjR3WEJQWXpLT1A4TlNvb0R6SnVHaEpSQUlETCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741452),
('TRsn83anSQov1wcdFHbtzQdY7kYoZUod7Jk2UGF4', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQUhuamtnTG1HY2VNQjZmT0FFM1o5N2hBeEw0czZpb2sxV3NDaXFFVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738065),
('ttRR7fhhzyqOiONp6p2KwlFTBEfmom3VmNNC7MsX', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVXgzZDVzWDJmR3d3MUx6Q1ZDdnAwd1dGVHoyaHJwcUNTYnBjaVU3diI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735448),
('tTVhGk2uJtPIeB0eMeppro1dPXFbzFAUGiFEvnzl', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSXJhN01nVUtNMmt6TGhCeWxpVmVCNnVRenVPenRnOFFYd3RtN0M3MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739811),
('TVuiRLVRckKIpSQtNdzkXLfrJ5QXshxbmjrakunz', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibERGWWtuQm9TajloMUpac2pXVGFuMTg1aERRR3UwVFM2WXlvV2xzSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740951),
('UEo5r86J5NvboThkFNveWrFXsTZC0dH0mPAVdpDK', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTW1NeEtodklKMTZ0cGI5QXNyekZ0a1lhVEVZT2lmUXhxV0tSWU5vRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738467),
('UetuKNnELbOjkQoGyJB7ccUnT7rb9cNx2DkHXOX6', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWNLOTBmakdXc0ZDZXZIanFDdm5yenRMcEgzOWdrN2hzRkliVFBVTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741156),
('ugOXEfb6oTqi7No8wusg2cibvhdL4ld1iZCp3EIH', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoienl1NDRGamxaYTFOaFBTSHFBdndicjJkaWdTaE5ObzNOcnptSW5BUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737947),
('uHsAF6yDPn7ibsuBXdpVQ6OPZBZDLgFrRaMRGA6i', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic3VXdFFDT2R1eVV2Z3FvNkp5amZMWXE4TXlkclZKcVo1VGVnbk12OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740552),
('uM7FWPEOajwIBTLPNoLyfj6f1V81bqw3VV9tyNEp', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTWN4YnRZVW95UzF6dDJqODFZUFFHbnF2ZG1PVFZuaU5tMW1FZkdzdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737900),
('upOulJ31h13LsyaQ4vKf6kRMmCJ3frGbPEBy08xQ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNlROZE1Xb0N4OXNxaldrZUVkVmU0ZlFIVTNRVWNpd0N5ekI0REJxTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741192),
('UPyqRhf0ajRrsVA4u16fzc8pmSDus8OetmgMBfKA', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV2NpOEM4N3pRbWdyZ0ZXdGNzZFJLZ0tnWXNmVWx2WGhzZDk2ODhZaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737726),
('uq2XbO64u2A3pF61LurMoKOOUSFxUhVdNFFsfTOp', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiREtGYjFNUEFpZWtHRTdNUE9xZE5xVEJRcnlxV3RwRFhsY3ZyMEpIOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737913),
('urawLYvfv80che3dncLoYKHyPscjEvpU5QW88Dgg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZXA5bWdhcFVQSE5TYlNYSFJIZDdsZ3RBUW9hOFZEdGNkRzNWTFdlaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738791),
('uSseGGwDJUugMM9rb1KTPpKOdzvwk88n8gqGxf0M', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieEhCaFdIMHdORERoN0FWOXMyeHdkaGxVdTFOVlFsRk5HUWVydUhhaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740977),
('UsVFj7cJqRTi2or0viQJee9tnYuWJKMhyk80cjVE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMm1kbzRYdVQ1cTFld1pVdDhTUTdZNFlvYzlhQnRUZHlvdWVqU3ZIaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740208),
('uudu7chaxFQKObQtsLEmafs5cm6gGNbAqSh8Nbvr', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYWNqT0E5MEpvU2p2U0F5UGVaZUNlYXVpaEpYbGVkUll2SVRVOEpTeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739950),
('UukGRXndQsL1tSzXw01pkptY8h8JJ7aLJgZZXvZb', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiekZTTmd0a2tjdGhOMkZ4ZTI2Z3daSklwbXQ1bUJoaXdTQUlGNWlPSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740361),
('UWhLxgp0G3SPDkr0qGLSZ7TbG1HIDF5D0W4Tha7e', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOGZ0STlBSXhzd01lQU9FbnpGNlVHdDY4QWxMNU54QU5zSVl2cnp6UyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741203),
('uXuJeJgLC9HbG9LhUHGDFIBnP1kt0r4W9tzAkACr', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRTBUMjVRcFduYjNtaENGUTQyZ3NwVk5ocnR4ajFmelFSOG05ZlBrViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737990),
('uZTF8jOs7YqacB9JFmr2FErgTB74wYQDIeOcvDhg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY0FFQ3o5SVJXVVdqZnBQS3IwZTY3RTVWUDBveHpZR3ZSZVo2VEM3bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738458),
('v0YPKmES0Gkfr5Zf7f4uuZc0JXBTXddRAS7mbiAZ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiemJaQXJKbmhPUnVmQW9wc1ZjdThEbTJ1T1pGcG5kd1FtazA3WnhWSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742115),
('V925PFm6TYYI9G4A24bgJCn1YruD9FmC7I0Oy3zk', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN0NsVXJXNzhlZkprRTN6Z3V3UG9kMVZ6UldKQlVkTnJRUVFYdU9kdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737990),
('VbJCK3zUmDE3QL9l5lkHIOxfNGiHH004wLgqvoIE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicTNqMHVLcTBkY0tCQlROQm1PU0tjMWk3ekgyS1BKa0lzeWdhWm1ITyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735508),
('vBvOG0cloYwaFgvk2hymr3G4VuQJKws0EqD3e6zD', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiREY2c29QV1MzSmkyUjlkajZpOFB3elhPalRVdks3N08wRDltcEtuMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738157),
('vCl8uV9K8Z7fF2Xc74vu54ceV3bg2fJvZFW7JVmg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNlVNRHNuckI0ZFpUaVpzQkNabDZuM3NhRnZzVWNmR2htS2dYMkJPZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741457),
('VCxqwvbcqo98sRLQHntXnMO75G8TFpvVpcNxIlSn', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmU3STQzWlU4NEpOU1RGRkUxMDM3THplb3c4aTRtNmlHamJBTUg5QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739756),
('vdmPAmqAIBHjAh9Rbrg20B2KagXJ09MuXS199S6P', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGZTNDVuWXJ1ZGZYWURlTTNSaUtwYmxYWVlTek1MTkg4VzBUVFA4eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739956),
('VdOHaaZq3kTlAhEEYJdrFuqKKQ50ZXloYg5A0jnU', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidEtUNlpQdERkdjlKNFc5cTZRWkNXRUFxeWpPVXd3VGQ0ZnVZNlljSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739713),
('Vi6KtHc7FSG7KEMohYuzwEdiktoVgdY24sECAdUx', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1B4WFhXZVNYWXFKR0lES0JmSUFIU2ZrVjA5TTk4bVBYazlNaVoxTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737904),
('vnSR6VxMXusy69LzlEDg1lBAlmGsf9M5EbbeRgzb', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM2kyR2tLWGxjeDlJVzZyeVl0UVM5Z3Vrbjk3SVVNeEg5anBwNjFtWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741695),
('VR40uoQgvYrHNi5ULORdFigR9AYsjVUMfq00XqF7', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia2diU1dENFZYbmg5OWlJb0o4d1pjVXMzdVpFVG5HYklPSm8zZllWMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739059),
('VrEq15AOkx2L5pnuEAuGRhel3URhHLIa4TnzaaNq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicVdIUGVFSnNxc2dEdkVyQ1dKa2hCSHdDV1pUZEd3ZFFEVVBGTDN3cyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735409),
('VywDmmOetL6VBg0fvVEim9IPgTRbQAhqClGzNhFD', 114, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmgwRUhtOTNvZlRja09FaVMyaWZPQkJtTVVsbjlQR2hRTHNJamhLcyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE0O3M6NDoidXNlciI7czoyMToiY2hhbmRhbmkxMjNAZ21haWwuY29tIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639736680),
('w1Gl64sgfn0OFLhxcQsz7WObOZhmJ19A5NU9Obe0', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUWZGMUdHYWFLQ01DM3BGVW55U1BsZlRhUVRRSGRKQmFUR1pFekhkViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737998),
('w4fsq4KjDncc11NIPrbQ1VVGtNUGV2xYfFSd7FDr', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieFpQc0pCYklkbllFbEhQakhlRE1Iek91WHNkU3h1S1YxVVRqc0d3WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742209),
('wEfyChikEX8XqxgOshkQrS170QNu5AyVzXnyx39g', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNjk5bTJEU1htaDVJSjJ1SzUxc2RWTzVSMk4yMnR1b3hoaXJZOTB1WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741156),
('Wm2D95tJWPRyDgNQ0e2xSoIq4icLL72RI6kNvnhj', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMFRxYlFvdll0VUtyTzRxTHV4Rnc2bHJNSHVXNU9BaHdRS0RPenNTWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740957),
('wMBnRDF9H8OKErdarMNqUo4JYy1VYtFPxPL3Ky0S', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib3A1c0k1d21yaUFqUWFiblhZTlJaU0dhVkF2aWlFWUVySmhtV2FseiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739753),
('wO1Ycui0hW7brxlL7rrUQPtkCz4lfVv8HypN6dZU', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTTJKYzdaNnVzV1pXV3JFU05JbjBrWjM1YnE3TUV1QXVlUmI3dGljTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741441),
('WOyMF176xQmWAUaGZvSnAd4NO8umtCDuBl9ir79y', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWJCZGZ1czBJRWJCbU5iME02MUZwRlBDN2ZMeWlLWEMyT2hONUNZSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741688),
('WsgDXX4GuCXqasKRdrZx4B4yd9LbvmpTt0htk3oE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMDd3czhDY3l3Z1k2WmxrQTNmYjVUYTJHeU5ZTUI2aHowTmZQam9EYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740659),
('X0oKXSZaf5cEOPU6dabXVDzJyGQphEQj4sIMx2b3', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ042bE1BMDBVWXF6VzRtanFRVUNQWlB6cGhiTmRqSmNCeDZWSnlCUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737726),
('XaXHygcMOcBO3RP3tM5bJuoYIph9KHXApTkdzCzM', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWWc2MVZZN2I3bzRJT0lnUDBIQU5SM0NJbURuWVdMeEw2U2dkU0V0biI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738883),
('XE1hTPmDobKllY1vwdju1klg56jjRfa9GGz1bDAd', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWTEwZ3RXQWhoTGhES3dnaDRTV2dKSTIzRGE1eTBCVG1FTkFjaWNQbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742434),
('XGmWAjgAaiV8LorQmNkxRsHorZDvlzKPFAM9eZCG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaXJZZ3l4UWFqek1oa0lWUFhsUllRWU04dlFJREViR1JVcUJMYlFxQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738161),
('xIg1ZpwiWEn6EfAG44vbAt81MUZvf5VVqIuFxVqi', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieWtocFY4RmxCSXpTNEJsWGdWenM1ZTdxbGlFbnNmQ1I1eXl6Z2E0cyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741276),
('XJbpOvUzoA1Gy2V2TuDyJlNp0U5IXcEijhrQbHlP', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidGlFaTNyWER5RnZZNzVwYWpMOTZZMXpSUzN1QzhFSWhybzJBb0tveCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738119),
('xJj0x8jVOlCOitGFUgb03CkWm01blxHydwbBGMhq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV3AxQmdFM0YxdTBWUXdoa2pNRjNNOGR0Wmdha3FTOWd4OE5hS1VUdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741635),
('Xlikoxdt1BHA5ghNNnVsvzCl3DJpCVpLbZoaIPIG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoienFtYzRDZFFTbnJlUkpucTFTR2xhUElDaHBxT0F3aU5tZUZjeG5jdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639742222),
('Xlm29nKiZc3hyKy0c2KoyKvSMfbW64NjIdMiSEbF', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicW4yVmZZRGZ6a29HSzBQVEZlSUcxOHRLYWRFZUw1d0UzYWRRNnUyTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740351),
('XNzaj31Uw6caXf1jLwiJQ2YAw2sbHZt11sgnV57b', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWHlEZXMzTHBuaUxSM0xNd2NCUE1ObzgyYmNhelRSNVdBbHJzZ2ZsYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738104),
('xp4acWPJG4OadOiaiEVL4tAB4OdmW92Hmmid4BYJ', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTWF4anJKVjNGZWJ0U1B0cmplVnM4SFh4akxtM3dtc3BycVIybWdxaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737900),
('xu5R8H9wNFnXIC4WOieWT0N8189FGEOuuxeT88p8', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibmd6MjdYNTl5UUdNTTZta011dzR1RWNlbnFSTWgwcUlTVGxwakNvSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736738),
('xwQYbwKtMWSKpZ9wLnQ4Mb1QfZqxCQIX4JtCJRtO', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWEhZOWhwdHpPSElORWdhOHdabTdrM3BxckNqWGVzbHU2VWtlcGNrZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739522),
('XzkOZZJwDvgu3RHwWSDvDd1OUln5yDpSIZWsTnHE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVzdKa0ZMSW50UTVCY0c4cWhjOWQxOUZRUG51TVEzenRwbm41ZGxudyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741530),
('Y5pC5sueaxbfPvB6Xc7v5wBRNxuKTMW9AiICa1dB', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMG5Ec1FRRWw0OGIwUThEbXZNS1ZYaXowbVIzbDZsaE9oOUlUMmNINyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738469),
('YCw3mErNCDeZK7UC3eFg791nRxnQgPQIfULJgWcA', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWEM5STBwRFJIcTFLelE2T2x0WVhhQ0JSR0ExOWRsRFNkQVV1M2x3NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737576),
('Yf7oarLV7mzU7PRlR0GHaJUu1zHX7LbmT9g6liQT', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTjJGQzNsWnVlcHBUY002bXpaaXl0bXZWNm9hN0dtTFoxcFBYS2lZQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741146),
('YIPiCTq8hTPOBiq5kIpsvyrh6Mr1JXP4iOnhJ1nw', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ3VNN1dsNE1wd25rRVpIa1pXQVdjUGREWkdKMHVDbmRjZ21MS1R3aiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738458),
('Yj7bnlpgZjyxGavKW5pvmv2NjIYJ5pXIdLEHKhGa', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidzFKY1hYTHIyTEI4a2RCWkNpcDUyWUpTeEppMGNJTG5mY3VoZFNRbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740974),
('YmPSTxAhBEBTq5ogtjghCcLppJDB0EnYpPemKMCn', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWUNZNTRCZW02c0tyWEtYdTlVY3hBR29lNHJpQkVYWHp4bHhhcG05MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740208),
('yNjBhG71amYI06pz9sGfDOqESdP4hoRj9DOjP09U', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUG5ycm5ESHh1UE5ueERaZDRENHJ2cWVQaG5rZGg5a1VMVW1tYkpoOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738888),
('YNtW34CrldZ9MXWU9WsKfRySLw2mWzm2tTz0xo8r', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGZ1MFhYUmVkMnFSTzNWbDU5ZGk4Qk45blltUmE1ODlNcEFuSldqYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639736739),
('Yq81egS3IBk77OOGbkRD3QIuDs6BNt2LGOwBIyxb', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMGRZVHNSODBYQWVHa0FZUVk3bDBYc1NXdUNrVk9XbDhQTHRrVVhWVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739544),
('ysSN9pIFey2wDsBS5k5q9wTGHdGzfWPhxi9isGcm', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOW15VEFuaUl5dHhoeU15M0N2ZGZJNHZCT05tVmZXVmZlNnNXT2xRMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639739607);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YvXJ20VAQ2FUe2I5U6wlmeFxJBRYna1aGkfncrIG', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibWRsQnVia0hLQWN6eVowaWRXa2Y4MElEZW1YeGhKNVk4RXVJamlIVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740683),
('YwtOOSijeFV13OmJRXxGVWmwlkm0ahmcxxuH5Ywo', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZnNhaXZDRmhJR2dvMUNXT3QxZEdwaHo1clFzWDVrdVYzd3lNaUplQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738776),
('YzkW8vOSidvrq9C3RyoRd1ULDxerHUbs8MSVNArg', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWWpJMnFINUNWOG15U1JXdTdKRjBVS1YwaXJLQUpWNERZTTE3bW40SCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737574),
('Z2NjzopYYNiTScWkkwuf5wQP2LTrYkqicKucMYsI', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM3k4VzY5OHpYVVhaek1WcEkzNURhdHk3WkoyREJYUDhDbjdSWE9vWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735431),
('Z7EZQSjWGQe29MhdPTI1CIY16OMBrtbBcTmoxvQE', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiamxrdHV0VWs3UUhzQ1ZDRHFDbXNLTVRvTU5hR0NSd0dXMkp3M0RsVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737998),
('Z8042EhNMbukrrUCWJs8O9pxs4cRNu7telLpnH3P', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia1MzbDRwUTMwTnVTNlQ5TjVhNEVUY2ZJVThra3d1QW04d1JKZ2lybSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737993),
('z8utRIiTSbOCqNgfpYcuWigWqv9AygmDRvoas9Gd', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNTZ1WjV0OGxnckhnMHVYQnpBZlJzN0FXWnJCcjdISEMyb2xLVUlWSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741441),
('ZCtnXiwbxlTdPE2S5hXyRJBsAXNUJvWngfyDld7x', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSlZCb2xyQW41WTNsbUZzZ1lHb0cyQk5OWHJJT2IybENvbkRwU3pvNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741994),
('zFpApzi8SeT4j1klHpwTzcSiqzU1j7KxYc55lpRc', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibFhucndpaWhLa1RIcVc5YVZFR1ZvT1pDS0pod050U1RHbVFTbXhYRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741143),
('zibYiV4dvqp265ukvDnJkLn6ROYwWF1IxgFdxUyH', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM25Bd1VYYjNPMDdhSFJQSFdxT0g1b1hRMXVPQVdpUWpKaHhkZVl2QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741564),
('Zmsr4qGtBjvIkHzRy43xudyh3KjOYFuvbbJQEg2a', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN0hQeEhHYmtqUld6UnJqRFZQQk9pWkRuNTNrcFVhbTdMcGp1d3lObCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639740975),
('ZsAk5KdZf5YxKCM2U3oGp6sPqQg0tdIvQ2E5XANz', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV0lJdThKeVpqOGRUUHZROVZ3YjBmaUR0QmN0alFGMDhyZXFZV2FheiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639738754),
('zSgyEHa1sjbEhz203NEzrkl2WIf58LA5NDPeSWRR', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid0dKTFhJQkl0bWdoY2ZWdWhJSGptUHZRaUxsTDJ4U2lWNzNvaHRnMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735425),
('zTgyI4Lh3GuNbpxNpAGJO4xz5h1IPqqUJCnY35hq', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMEZOczlBQ0s2M01lMDBzeW1DdThCcW9weFBjUGczM1NwQm1oNXRFMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741463),
('zVAme1FIPB12xFZu1mIj1pKBt0T86BCNiIzRZ0me', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUDdTZUdJdW5aNGRmSG5obk9DVndOSnZ3U0lhT3ZSd3BJV2VxbXpCUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639737993),
('Zw2dFMVsVedjh9h6fGkMGZFEfdJJ4xECBTqpe1ls', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVmNRakI5VnNNNmhTTnRPbGZJdng1VHVWeXpLVEpvTjZFRk1DcW5BdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639741526),
('zXIaS1JrP4JSGnHwb4g88KkzfcVfkRyWbrqK3tE3', NULL, '192.168.0.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWjdkR0lnTDFYbVRidVBWdEdkS082eGhSZ0o3VVBMYTA0cEpJWksySyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639735453);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `timer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `timer`, `created_at`, `updated_at`) VALUES
(1, '30', NULL, '2021-10-13 05:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OTP` int DEFAULT NULL,
  `phone_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `verify_token` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified`, `password`, `country_code`, `phone`, `OTP`, `phone_verified`, `verify_token`, `role`, `status`, `job_status`, `remember_token`, `verification_code`, `rating`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Chandani Raiyani', 'chandani.raiyani@coretus.com', 'y', '$2y$10$qLn/JUNongEPimtWeew2lu.EkdyBsvu/bJdaVZwhcOB0QArg1lkI.', '', NULL, NULL, 'y', 'NULL', 'admin', 'active', NULL, 'i8Y4EaBeYcHC9isLTrxe5gQCIQI7wDiSbpgOrKkT4dgELUyGOv6RaVKSjgRB', NULL, NULL, 'http://192.168.0.13:8000/storage/photos/1/fevicon.png', NULL, '2021-12-18 04:21:25'),
(114, 'chandani raiyani', 'chandani123@gmail.com', NULL, '$2y$10$jvphfMwhowxt9w.469wTmu2XOkI24JwOvSKyRWxBMcFUp4dVqQIsq', '+91', '7069826897', 6194, 'y', '21f48f87b1b09d141ab9c024d9c1f847a665f0be', NULL, 'active', 'completed', NULL, '5622', NULL, NULL, '2021-11-19 22:38:58', '2021-12-17 02:29:45'),
(115, 'hardik@coretus.com', 'hardik@coretus.com', NULL, '$2y$10$0zJzsyXnabTYVyatiYzijO9J72td14JD11yA1gVpKuay0E.2U5TIq', '+91', '7990998285', 9111, 'y', '5bc3156bceebfe5864d9ebadf46a8c3c2046182d', NULL, 'active', NULL, NULL, '9111', NULL, NULL, '2021-11-23 23:43:59', '2021-11-23 23:43:59'),
(127, 'chandani raiyani', NULL, NULL, '', '+91', '7069826897', 6194, 'n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 07:08:52', '2021-12-17 02:29:45'),
(128, 'chandani raiyani', NULL, NULL, '', '+91', '7069826897', 6194, 'n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 00:47:14', '2021-12-17 02:29:45'),
(129, 'chandani raiyani', NULL, NULL, '', '+91', '7069826897', 6194, 'n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-13 05:17:27', '2021-12-17 02:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `created_at`, `updated_at`, `user_id`, `token`) VALUES
(1, '2021-10-19 04:09:36', '2021-10-19 04:09:36', 8, '7d4e7c192bb96e630eb8c46c4e263e49e2c29b5b'),
(2, '2021-10-19 04:23:43', '2021-10-19 04:23:43', 8, '1dde7a55574e8a82d3293ad52d8d0929562f0f4b'),
(3, '2021-10-19 04:24:58', '2021-10-19 04:24:58', 8, '04e6d0e34e980e1d77107b34094f8a15c5d6dbfa'),
(4, '2021-10-19 04:25:29', '2021-10-19 04:25:29', 8, 'ca1350c2cddc4631049f76498dc62e19625fbd28'),
(5, '2021-10-19 04:27:40', '2021-10-19 04:27:40', 8, '8008b6548ffc1e85b0445c461fef96f29f797532'),
(6, '2021-10-19 04:27:53', '2021-10-19 04:27:53', 8, 'ea17975c9d318c17cd80f373e277f7b2cb8af905'),
(7, '2021-10-19 04:28:10', '2021-10-19 04:28:10', 8, 'e9b5fe235950e3323f20a84f0f3f8d1fce6f0d03'),
(8, '2021-10-19 04:29:21', '2021-10-19 04:29:21', 8, 'a92ad6daf7a74ae37f3604db0f629eff43acb78e'),
(9, '2021-10-19 04:29:33', '2021-10-19 04:29:33', 8, '96bf7d37716f7df92e0b3b869e9351e597348d52'),
(10, '2021-10-19 04:29:45', '2021-10-19 04:29:45', 8, 'c68f9d1c83a6023b38d103503c8d09f2adcd91e5'),
(11, '2021-10-19 04:30:26', '2021-10-19 04:30:26', 8, '6cc8c22526eb70fdb8d4845a6d1b0fa6f586614b'),
(12, '2021-10-19 04:31:50', '2021-10-19 04:31:50', 8, '3907883a6877156d3205e80917d4d640a4017a42'),
(13, '2021-10-19 04:32:20', '2021-10-19 04:32:20', 8, '38a4cf0931319d2345c8a1eeb8cad3cc3366db01'),
(14, '2021-10-19 04:36:55', '2021-10-19 04:36:55', 8, 'c8667998af89ee401b0b30fb2c0888b2fe99da95'),
(15, '2021-10-19 04:37:25', '2021-10-19 04:37:25', 8, '7ab5f0fe4ab05740790c435f435449b4f110405a'),
(16, '2021-10-19 04:41:01', '2021-10-19 04:41:01', 8, 'cc764c09ca0088498a4a137f1fef5f368786ee67'),
(17, '2021-10-19 04:42:27', '2021-10-19 04:42:27', 8, '6dea86e3d406fa70846b61f52b40cf4bb9e89ec7'),
(18, '2021-10-19 04:42:32', '2021-10-19 04:42:32', 8, '0b0505e5b3638fb385c16b52bb94f7bc78953d20'),
(19, '2021-10-19 04:42:46', '2021-10-19 04:42:46', 8, 'ef6eb46bab455e4c8ef8cdbbec1d53e0b30f1ae2'),
(20, '2021-10-19 04:43:47', '2021-10-19 04:43:47', 8, '21534c6058c84d3442bd7511ac62c6f21015b1bd'),
(21, '2021-10-19 04:44:53', '2021-10-19 04:44:53', 8, 'b874bfb11e5a466c32820d4916c236a128e5bc24'),
(22, '2021-10-19 04:45:21', '2021-10-19 04:45:21', 8, '94a516966dd64a7c87e0ecc95b277d67dd66d15f'),
(23, '2021-10-19 04:47:20', '2021-10-19 04:47:20', 8, '51044a2131c639b4203c3ff54f7bc09cb4099545'),
(24, '2021-10-19 04:48:52', '2021-10-19 04:48:52', 8, 'fd36f15a4d1068da9d43dc68dc55bb31e39b548f'),
(25, '2021-10-19 04:50:02', '2021-10-19 04:50:02', 8, '9b992601d7c7147ab08e39c263b34d84f862884a'),
(26, '2021-10-19 04:51:38', '2021-10-19 04:51:38', 8, '6714d84e67ad65711dad619da973545d3db99459'),
(27, '2021-10-19 04:55:43', '2021-10-19 04:55:43', 8, '87445882b43ff703008edae51453e4d852da295d'),
(28, '2021-10-19 04:57:56', '2021-10-19 04:57:56', 8, '46ce4831b4b73d3950a0a81d88bd7e8abef81819'),
(29, '2021-10-19 05:10:10', '2021-10-19 05:10:10', 8, 'f393d927799169951717826dfbe7138127e0a693'),
(30, '2021-10-19 05:15:25', '2021-10-19 05:15:25', 8, '3538c46ba5812920d224dd502d2f65fbf437fe27'),
(31, '2021-10-19 05:17:22', '2021-10-19 05:17:22', 8, '1763014c577e7835a9dc6bed1b350645316c77e3'),
(32, '2021-10-19 23:00:34', '2021-10-19 23:00:34', 8, 'bd390a186bd95db080702268b174e679778877b0'),
(33, '2021-10-19 23:01:59', '2021-10-19 23:01:59', 8, 'a760f881020d8ab23940383a297998c9eddc950a'),
(34, '2021-10-21 03:46:44', '2021-10-21 03:46:44', 8, '5d3e0cdf7a4671a7bba3f89090a4625d78ae9b01'),
(35, '2021-10-21 05:56:13', '2021-10-21 05:56:13', 8, '8478331dd7036c5db48c688dc1f98e8b458d6c49'),
(36, '2021-10-21 05:59:12', '2021-10-21 05:59:12', 8, '3153044ea22fd8e62b808ff62a0ee119c8352f35'),
(37, '2021-10-21 06:33:20', '2021-10-21 06:33:20', 48, 'c0fa7276d4626df048fe70848632b00fb8504060'),
(38, '2021-10-21 06:37:17', '2021-10-21 06:37:17', 50, '40bce2bd2acae4fb9546c65355ec9567f55809bd'),
(39, '2021-10-21 06:49:06', '2021-10-21 06:49:06', 54, 'a415b27f274ef2ac7690aa4315ea439a13ac5f0a'),
(40, '2021-10-21 06:52:36', '2021-10-21 06:52:36', 55, '089389b5d877dca259e476b9cc7d723ab75e8ae0'),
(41, '2021-10-21 06:54:41', '2021-10-21 06:54:41', 56, 'b4e1dabb4d481d7e72d550fd56c1d0555fbf48bb'),
(42, '2021-10-28 03:54:39', '2021-10-28 03:54:39', 59, 'fc6dffa45f2ed10367d13a290293eacacbc0d63e'),
(43, '2021-10-30 03:59:43', '2021-10-30 03:59:43', 69, '10444010d92b73c51d0be2a795305c73a2237612'),
(44, '2021-10-30 04:25:54', '2021-10-30 04:25:54', 69, '3014b2e3bf5ccfa490ae8a1e0cacbe297ef578ed'),
(45, '2021-10-30 04:26:04', '2021-10-30 04:26:04', 69, '902ec392357d4d966c9de8f673bd583f850ae7de'),
(46, '2021-10-30 04:34:33', '2021-10-30 04:34:33', 69, '5eeccbe62e7659325363cc6bf24a40494a11254b'),
(47, '2021-10-30 07:01:22', '2021-10-30 07:01:22', 8, '222e51d9c0872852514ce2678b2a2d5aa3a36aeb'),
(48, '2021-10-30 07:03:00', '2021-10-30 07:03:00', 8, '7bca073d6f1259358173c7ff1701ee069d088f78'),
(49, '2021-10-31 23:02:05', '2021-10-31 23:02:05', 75, '7db55ad9301732cf7c7f077a08c928080cdfacf1'),
(50, '2021-11-11 23:36:51', '2021-11-11 23:36:51', 76, '8d7dbb9b3c06a9620dd773889c667c9f73176aa9'),
(51, '2021-11-13 05:30:12', '2021-11-13 05:30:12', 8, '977d23230c0410e1c6c57f89f2d1f7679dab1afd'),
(52, '2021-11-13 06:33:14', '2021-11-13 06:33:14', 8, '415a72fe52a5dc1a751692eabca753a354ea6ebb'),
(53, '2021-11-13 06:46:33', '2021-11-13 06:46:33', 8, '3d252b1c789a4d0a237a09d07d1dcdd3d9948ccd'),
(54, '2021-11-13 07:20:09', '2021-11-13 07:20:09', 94, '37b296847f0d7afc296cf57e5292c18f582886ee'),
(55, '2021-11-13 07:46:00', '2021-11-13 07:46:00', 98, '7a18b8d6f5595c9f7ce27ca4f14c38fe1c1a669d'),
(56, '2021-11-13 07:58:13', '2021-11-13 07:58:13', 99, '41541144f39e32c6f419c667520f2804d5efabcb'),
(57, '2021-11-15 23:44:15', '2021-11-15 23:44:15', 98, '1ec3bc84434e4510e6b98953741304f5aeac06a8'),
(58, '2021-11-18 06:51:25', '2021-11-18 06:51:25', 98, '4e452186eacf8727a02e178202cc42daf9609f65'),
(59, '2021-11-19 22:39:59', '2021-11-19 22:39:59', 114, '319b83b0ccc4547bbbf249fc8fdeb996849ac5da'),
(60, '2021-11-23 23:44:31', '2021-11-23 23:44:31', 115, 'e381edabd27b910bfec9bf3f90889c5ea034a90b'),
(61, '2021-11-24 01:17:24', '2021-11-24 01:17:24', 114, '6bb1ae8ff8d21b7e98c443859b0c50cd4beae766'),
(62, '2021-11-24 01:26:57', '2021-11-24 01:26:57', 114, 'ee01ed844d8440b87250bf89273132579ae858d1'),
(63, '2021-12-03 07:21:35', '2021-12-03 07:21:35', 114, 'da9bfcf00cd9104263eb81cb7b7c0190300649db'),
(64, '2021-12-06 02:00:29', '2021-12-06 02:00:29', 115, '5bc3156bceebfe5864d9ebadf46a8c3c2046182d'),
(65, '2021-12-10 00:48:48', '2021-12-10 00:48:48', 114, '26e705bbaacc64fe76c03f7e3acb5b764d642295'),
(66, '2021-12-17 02:30:51', '2021-12-17 02:30:51', 114, '21f48f87b1b09d141ab9c024d9c1f847a665f0be');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_messages`
--
ALTER TABLE `language_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `promotional_videos`
--
ALTER TABLE `promotional_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `language_messages`
--
ALTER TABLE `language_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promotional_videos`
--
ALTER TABLE `promotional_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
