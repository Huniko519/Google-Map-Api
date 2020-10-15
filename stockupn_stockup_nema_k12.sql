-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2020 at 11:00 AM
-- Server version: 5.6.40-84.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockupn_stockup_nema_k12`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `c_id` double NOT NULL,
  `c_name` varchar(144) NOT NULL,
  `c_logoLink` varchar(255) NOT NULL,
  `c_tollFreePhone` varchar(32) NOT NULL,
  `c_mainPhone` varchar(32) NOT NULL,
  `c_address1` varchar(255) NOT NULL,
  `c_address2` varchar(255) NOT NULL,
  `c_city` varchar(64) NOT NULL,
  `c_state` varchar(64) NOT NULL,
  `c_zip` varchar(32) NOT NULL,
  `c_county` varchar(132) NOT NULL,
  `c_website` varchar(255) NOT NULL,
  `c_country` varchar(64) NOT NULL,
  `c_emailSmallPrint` blob NOT NULL,
  `c_proposalSmallPrint` blob NOT NULL,
  `c_business Hours` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`c_id`, `c_name`, `c_logoLink`, `c_tollFreePhone`, `c_mainPhone`, `c_address1`, `c_address2`, `c_city`, `c_state`, `c_zip`, `c_county`, `c_website`, `c_country`, `c_emailSmallPrint`, `c_proposalSmallPrint`, `c_business Hours`) VALUES
(1, 'K12 Solar Inc.', 'http://www.k12solar.com/app/img/k12logo_100px.jpg', '1-800-SOLAR-LOVE', '916-871-0552', '4961 Windplay Dr.', '', 'El Dorado Hills', 'CA', '95762', 'El Dorado', 'http://www.k12solar.com', 'United States', '', '', 'M-F 8am o 5PM Pacific Time'),
(2, 'K12 Power', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounts`
--

CREATE TABLE `crm_accounts` (
  `cac_id` double NOT NULL,
  `cac_legalName` varchar(132) NOT NULL,
  `cac_shortName` varchar(132) NOT NULL,
  `cac_websiteLink` varchar(255) NOT NULL,
  `cac_logoLink` varchar(255) NOT NULL,
  `cac_phones` varchar(255) NOT NULL,
  `cac_address1` varchar(128) NOT NULL,
  `cac_address2` varchar(128) NOT NULL,
  `cac_city` varchar(128) NOT NULL,
  `cac_state` varchar(132) NOT NULL,
  `cac_zip` varchar(128) NOT NULL,
  `cac_country` varchar(128) NOT NULL,
  `cac_county` varchar(128) NOT NULL,
  `cac_referredBy` varchar(255) NOT NULL,
  `cac_source` varchar(255) NOT NULL,
  `cac_industry` varchar(128) NOT NULL,
  `cac_government` tinyint(1) NOT NULL,
  `cac_payIncomeTaxes` tinyint(1) NOT NULL,
  `cac_creditRating` varchar(128) NOT NULL,
  `cac_enteredDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounts`
--

INSERT INTO `crm_accounts` (`cac_id`, `cac_legalName`, `cac_shortName`, `cac_websiteLink`, `cac_logoLink`, `cac_phones`, `cac_address1`, `cac_address2`, `cac_city`, `cac_state`, `cac_zip`, `cac_country`, `cac_county`, `cac_referredBy`, `cac_source`, `cac_industry`, `cac_government`, `cac_payIncomeTaxes`, `cac_creditRating`, `cac_enteredDate`) VALUES
(1, 'Association Commercial Master Engineers', 'ACME', 'www.acme.com', 'http://upload.wikimedia.org/wikipedia/commons/0/07/Acme-motor-car_1906_logo.jpg', 'Toll Free 1-800-CALL-ACME', '1', 'Capitol Mall', 'Sacramento', 'CA', '95814', 'United States', 'Sacramento County', '', 'Radio', 'Food Processing', 0, 1, '3yrs of profitability', '0000-00-00 00:00:00'),
(2, 'Foods Company ', 'Foods Co.', '', 'http://norcalcoupongal.com/wp-content/uploads/2013/10/Foods-Co-Logo.jpg', 'Toll free 1-800-777-7777', '1875', 'Auburn Ravine Rd', 'Auburn', 'CA', '95603', 'United States', 'Placer County', '', 'Radio', 'Food Processing', 0, 1, '3yrs of profitability', '2014-09-08 21:07:05'),
(3, 'JAMES E. SULLIVAN', 'SULLIVAN RANCH', '', '', '', '10515 FIMPLE ROAD', '', 'CHICO', 'California', '95928', 'United States', 'BUTTE', '', 'Referral', 'Agriculture - Harvest post processring', 0, 1, '', '2014-09-10 16:33:03'),
(4, 'FIFTH SUN', '5SUN', '5SUN.COM', 'http://www.5sun.com/wp-content/themes/fifthsun/images/logo.png', '', '495 RYAN AVENUE', '', 'CHICO', 'CA', '95973', 'United States', 'BUTTE', '', 'Referral', 'General Distribution', 0, 1, 'AA-', '2014-09-10 17:21:02'),
(5, 'test Non Profit', 'Non Profit', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '2014-09-25 11:13:41'),
(6, 'EDWARDS RANCH', 'JIM EDWARDS', '', '', 'JIM\'S CELL 530-515-4285\r\nOFFICE 530-527-4285', '13038', 'Hwy 99', 'Red Bluff', 'CA', '96080', 'United States', 'Tehama County', 'Tyler Christensen (nephew, attended our aggregation seminar)', 'Referral', 'Agriculture - Harvest post processring', 0, 1, '3yrs of profitability', '2014-09-25 11:20:55'),
(7, 'JOE GARCIA', 'GARCIA FARMS', '', '', '530-682-9457 CELL', '3173', '8th St', 'Biggs', 'CA', '95917', 'United States', 'Butte County', 'ALLEN LITTLE', '', 'Agriculture - Harvest post processring', 0, 1, '', '2014-10-10 15:43:49'),
(8, 'LAKE OROVILLE STATE RECREATION AREA', 'KEVIN MATHEWS', '', '', '(530) 538-2293 Office \r\n(530) 538-2356 fax  \r\n(530) 990-8502 cell', '400', 'Glen Dr', 'Oroville', 'CA', '95966', 'United States', 'Butte County', '', '', '', 1, 1, '', '2014-10-10 15:51:32'),
(9, 'ADOBE SYSTEMS', 'JEFF WING', '', '', '415-832-4953', '', '', 'SAN FRANCISCO', '', '', '', '', 'WEB', 'Web search', '', 0, 1, '', '2014-10-10 15:56:04'),
(10, 'RED HOT METAL', 'JEFF LINDSAY', '', '', '530-342-1970 OFFICE', '24', 'Bellarmine Ct', 'Chico', 'CA', '95928', 'United States', 'Butte County', 'LANCE MCCLUNG', '', '', 0, 1, '', '2014-10-10 16:03:16'),
(11, 'B&B RV', 'WAYNE BARNES', '', '', 'C: 559.978.4931', '3750', 'Auto Mall Dr', 'Anderson', 'CA', '96007', 'United States', 'Shasta County', 'JASON GRANT CUSTOMER', '', '', 0, 1, '', '2014-10-10 16:23:49'),
(12, 'LARKIN AUTOMOTIVE', 'SHERRY LARKIN', '', '', '530.826.0324', '551', 'E 4th St', 'Hamilton City', 'CA', '95951', 'United States', 'Glenn County', '', '', '', 0, 1, '', '2014-10-10 16:26:48'),
(13, 'SISCO ENTERPRISES', 'RICH LOUGEE', '', '', '(530) 895-8330 x318', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '2014-10-10 16:29:34'),
(14, 'SISCO ENTERPRISES', 'RICH LOUGEE', '', '', '(530) 895-8330 x318', '500', 'W East Ave', 'Chico', 'CA', '95926', 'United States', 'Butte County', '', '', '', 0, 1, '', '2014-10-10 16:30:03'),
(15, 'THE WAFFLE SHOP', 'YOUNIS ANANI', '', '', '559-801-3377', '2107', 'Feather River Blvd', 'Oroville', 'CA', '95965', 'United States', 'Butte County', 'SAMANTHA DUNCAN FRIEND', '', '', 0, 1, '', '2014-10-10 16:32:28'),
(16, 'BUTTE BIBLE FELLOWSHIP', 'JIM ESTES', '', '', '530-570-4953 JIM\'S CELL', '2255', 'Pillsbury Rd', 'Chico', 'CA', '95926', 'United States', 'Butte County', 'CHUCK BAIN - AMBER\'S NEIGHBOR', '', '', 0, 0, '', '2014-10-10 16:37:02'),
(17, 'DWCW FARMS', 'CINDY WARD', '', '', '530-520-4576 cindy\'s cell', '25805', 'Moller Ave', 'Orland', 'CA', '95963', 'United States', 'Tehama County', '', '', '', 0, 1, '', '2014-10-10 16:40:31'),
(18, 'LARIAT BOWL', 'LARIAT BOWL', '', '', '530-828-2264 DALE PENNE CELL', '365', 'S Main St', 'Red Bluff', 'CA', '96080', 'United States', 'Tehama County', 'WEBSITE', 'Web search', '', 0, 1, '', '2014-12-12 12:42:01'),
(19, 'JONES & SON', 'JONES & SON', '', '', '', '25120', '4th Ave', 'Los Molinos', 'CA', '96055', 'United States', 'Tehama County', 'KEVIN THOMAS', 'Referral', 'Agriculture - Harvest post processring', 0, 1, '', '2014-12-15 10:06:20'),
(20, 'Lindauer River Ranch', 'Lindauer River Ranch', '', '', '', '13620', 'Golden State Highway 99', 'Chico', 'CA', '95973', 'United States', 'Butte County', '', '', '', 0, 1, '3yrs of profitability', '2015-02-18 08:38:04'),
(21, 'Tesla Corp', 'Tesla Corp', '', '', 'B: 916-916-9166 M: ', '1235', 'Darling Way', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', '', 'E-mail', '', 0, 1, '', '2015-03-25 11:37:15'),
(22, 'Super Burger LLC', 'Super Burger LLC', '', '', 'H: 530-530-5300 F: ', '4501', 'Latrobe Rd', 'El Dorado Hills', 'CA', '95762', 'United States', 'El Dorado County', '', 'E-mail', '', 0, 1, '', '2015-03-25 12:03:33'),
(23, 'Vatican City', 'Vatican City', '', '', 'B: 999-999-9999 x 156 M: ', '311', 'Vernon St', 'Roseville', 'CA', '95678', 'United States', 'Placer County', '', 'E-mail', '', 0, 1, '', '2015-03-25 12:10:41'),
(24, 'Senorita Maestra Studios', 'Senorita Maestra Studios', '', '', 'H: 777-777-7777 F: ', '4944', 'Breese Cir', 'El Dorado Hills', 'CA', '95762', 'United States', 'El Dorado County', 'Jacinta Pichimauida', 'PPC Google', '', 0, 1, '', '2015-03-25 12:19:34'),
(25, 'Ring Side Popcorn LLC', 'Ring Side Popcorn LLC', '', '', 'B: 515-515-5151 B: ', '7794', 'Folsom Dam Rd', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', 'Rambo', 'PPC Google', '', 0, 1, '', '2015-03-25 12:24:29'),
(26, 'Ring Side Popcorn LLC', 'Ring Side Popcorn LLC', '', '', 'B: 515-515-5151 B: ', '7794', 'Folsom Dam Rd', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', 'Rambo', 'PPC Google', '', 0, 1, '', '2015-03-25 12:31:07'),
(27, 'Ring Side Popcorn LLC', 'Ring Side Popcorn LLC', '', '', 'B: 515-515-5151 B: ', '7794', 'Folsom Dam Rd', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', 'Rambo', 'PPC Google', '', 0, 1, '', '2015-03-25 12:34:46'),
(28, 'Bodegas del Solar Parana', 'Bodegas del Solar Parana', '', '', 'F: 5166565151 B: ', '2295', 'Iron Point Rd', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', 'Johnny', 'Radio', '', 0, 1, '', '2015-03-25 12:46:58'),
(29, 'ACME', 'ACME', '', '', 'B: 1-800-999-9999 M: ', '3326', 'Cambridge rd', 'cameron park', 'CA', '95682', '', '', 'EMCA', 'PPC Google', '', 0, 1, '', '2015-03-25 12:47:59'),
(30, 'Dog Enterprises', 'Dog Enterprises', '', '', 'B: 151651 H: ', '1120', 'Harvard Way', 'El Dorado Hills', 'CA', '95762', 'United States', 'El Dorado County', 'jjj', 'PPC Google', '', 0, 1, '', '2015-03-25 12:53:50'),
(31, 'Samantha Fox Corp.', 'Samantha Fox Corp.', '', '', 'F: 15651651 H: ', '151', 'N Sunrise Ave', 'Roseville', 'CA', '95661', 'United States', 'Placer County', 'johoh', 'Web search', '', 0, 1, '', '2015-03-25 12:56:26'),
(32, 'Samantha Fox Corp.', 'Samantha Fox Corp.', '', '', 'F: 15651651 H: ', '151', 'N Sunrise Ave', 'Roseville', 'CA', '95661', 'United States', 'Placer County', 'johoh', 'Web search', '', 0, 1, '', '2015-03-25 12:58:54'),
(33, 'Chef Ent', 'Chef Ent', '', '', 'B: 516516516 B: ', '5169', 'Mississippi Bar Dr', 'Orangevale', 'CA', '95662', 'United States', 'Sacramento County', 'Ramsey', 'TV', '', 0, 1, '', '2015-03-25 13:01:39'),
(34, 'Chef Ent', 'Chef Ent', '', '', 'B: 516516516 B: ', '5169', 'Mississippi Bar Dr', 'Orangevale', 'CA', '95662', 'United States', 'Sacramento County', 'Ramsey', 'TV', '', 0, 1, '', '2015-03-25 13:03:38'),
(35, 'Sangria Juice', 'Sangria Juice', '', '', ':  : ', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '2015-03-25 13:07:12'),
(36, 'Real Sugar Corp', 'Real Sugar Corp', '', '', 'H: 6516516 F: ', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', '', '', '', 0, 1, '', '2015-03-25 13:08:50'),
(37, 'Real Sugar Corp', 'Real Sugar Corp', '', '', 'H: 6516516 F: ', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', '', '', '', 0, 1, '', '2015-03-25 13:13:21'),
(38, 'Real Sugar Corp', 'Real Sugar Corp', '', '', 'H: 6516516 F: ', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', '', '', '', 0, 1, '', '2015-03-25 13:15:25'),
(39, 'Real Sugar Corp', 'Real Sugar Corp', '', '', 'H: 6516516 F: ', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', '', '', '', 0, 1, '', '2015-03-25 13:15:51'),
(40, 'Vatican City II', 'Vatican City II', '', '', 'B: 999-999-9999 x 156 M: ', '311', 'Vernon St', 'Roseville', 'CA', '95678', 'United States', 'Placer County', '', 'E-mail', '', 0, 1, '', '2015-03-26 09:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_contacts`
--

CREATE TABLE `crm_contacts` (
  `cco_id` double NOT NULL,
  `cco_firstName` varchar(128) NOT NULL,
  `cco_lastName` varchar(128) NOT NULL,
  `cco_title` varchar(64) NOT NULL,
  `cco_accountId` double NOT NULL,
  `cco_directPhone` varchar(64) NOT NULL,
  `cco_mobilePhone` varchar(64) NOT NULL,
  `cco_alternativePhone` varchar(64) NOT NULL,
  `cco_skypeAddress` varchar(64) NOT NULL,
  `cco_email1` varchar(128) NOT NULL,
  `cco_email2` varchar(128) NOT NULL,
  `cco_decisionMaker` tinyint(1) NOT NULL,
  `cco_champion` tinyint(1) NOT NULL,
  `cco_influencer` tinyint(1) NOT NULL,
  `cco_lastUpdate` datetime NOT NULL,
  `cco_lastUpdateBy` double NOT NULL,
  `cco_address1` varchar(128) NOT NULL,
  `cco_address2` varchar(128) NOT NULL,
  `cco_city` varchar(128) NOT NULL,
  `cco_state` varchar(64) NOT NULL,
  `cco_zip` varchar(16) NOT NULL,
  `cco_country` varchar(128) NOT NULL,
  `cco_county` varchar(128) NOT NULL,
  `cco_notes` blob NOT NULL,
  `cco_validContact` tinyint(1) NOT NULL,
  `cco_sendMarketingEmails` tinyint(1) NOT NULL,
  `cco_enteredDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_contacts`
--

INSERT INTO `crm_contacts` (`cco_id`, `cco_firstName`, `cco_lastName`, `cco_title`, `cco_accountId`, `cco_directPhone`, `cco_mobilePhone`, `cco_alternativePhone`, `cco_skypeAddress`, `cco_email1`, `cco_email2`, `cco_decisionMaker`, `cco_champion`, `cco_influencer`, `cco_lastUpdate`, `cco_lastUpdateBy`, `cco_address1`, `cco_address2`, `cco_city`, `cco_state`, `cco_zip`, `cco_country`, `cco_county`, `cco_notes`, `cco_validContact`, `cco_sendMarketingEmails`, `cco_enteredDate`) VALUES
(1, 'Robert', 'Smith', 'President', 1, '9169199166', '9169166666', '8007775555', 'smight_robert', 'robert@robert.com', 'robert2@robert.com', 1, 0, 0, '2014-09-09 10:47:04', 1, '444', 'Tobrurry Way', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', 0x4861726420746f2066696e642068696d2061742074686973206f66666963652e20547279207265616368696e67206f757420746f206869732073656372657461727920536172616820536d697474, 1, 1, '2014-09-09 09:59:51'),
(2, 'Sarah', 'Smitt', 'Secretary', 1, '916-916-9666', '916-916-8888', '800-777-55555', '', 'sara@robert.com', 'sara2@robert.com', 0, 0, 1, '2014-09-11 16:01:31', 1, '1', 'Capitol Mall', 'Sacramento', 'CA', '95814', 'United States', 'Sacramento County', 0x5368652069732074686520676174656b65657065722c20736865206d616e616765732074686520636f72706f726174652063616c656e646172, 1, 1, '2014-09-09 10:02:05'),
(3, 'Carlos', 'Vega', 'Facility Manager', 1, '919-916-9166', '919-191-9999', 'TF: 800-888-5555', '', 'carlos @carlos.com', 'vega@vega.com', 0, 1, 0, '2014-09-09 10:45:54', 1, '4552', 'Creekside Dr', 'Latrobe', 'CA', '95682', 'United States', 'El Dorado County', 0x48652077616e747320746f206765742074686520736f6c61722073797374656d20746f2061747461696e206d6f7265207265636f676e6974696f6e2077697468696e2068697320636f6d70616e7920616e64206865207472756c792062656c69657665732069732061206772656174206465636973696f6e20666f722074686520636f6d70616e79, 1, 1, '2014-09-09 10:26:58'),
(4, 'Steve', 'Jobs', 'Assistant', 2, '710-711-1155', '710-565-5656', 'Fax: 710-555-6666', '', 'stevejobs@apple.com', 'steve@apple.com', 0, 0, 1, '2014-09-09 12:14:56', 1, '9999', 'Niblick Dr', 'Roseville', 'CA', '95678', 'United States', 'Placer County', 0x48697320697320766973696f6e6172792077697468206261642074656d706572, 1, 1, '2014-09-09 10:36:14'),
(5, 'Jim', 'Sullivan', 'Owner', 3, '530.588.6327', '', '', '', '', '', 1, 1, 1, '2014-09-10 15:00:42', 11, '', '', '', '', '', '', '', '', 1, 1, '2014-09-10 14:41:10'),
(6, 'SCOTT', 'HOE', 'PLANT MANAGER', 4, '530.521.8670', '800.658.0070', '', '', 'SHOE@5SUN.COM', '', 0, 1, 1, '2014-09-10 15:23:16', 11, '', '', '', '', '', '', '', '', 1, 1, '2014-09-10 15:23:16'),
(7, 'Mike', 'Mechanics', 'Chief Engineer', 1, '916-916-9166 x55', '916-919-8919', '', '', 'mike@mechanics.com', '', 0, 0, 1, '2014-09-11 16:02:42', 1, '1', 'Capitol Mall', 'Sacramento', '', '95814', 'United States', 'Sacramento County', '', 1, 1, '2014-09-11 16:02:42'),
(8, 'JAMES', 'EDWARDS', 'OWNER', 6, '', '530-515-4285', '', '', 'eranch@clearwire.net', '', 1, 1, 1, '2014-09-25 11:26:14', 12, '13038', 'Hwy 99', 'Red Bluff', '', '96080', 'United States', 'Tehama County', 0x6f776e73204d696c6c205261636520447279657273202d20456c69746520536f6c61722064696420612073797374656d20666f722064727965722d204a696d20686173207365766572616c206d657465727320616e6420616e6f7468657220627573696e6573732063616c6c656420416e74656c6f706520437265656b20436174746c6520436f2d2077696c6c2062652061736b696e6720757320746f206269642074686f73652061732077656c6c, 1, 0, '2014-09-25 11:26:14'),
(9, 'DALE', 'PENNE', 'OWNER', 18, '530-891-4673', '530-828-2264', '', '', 'dpenne@mybesthealthplan.com', '', 1, 1, 1, '2014-12-12 12:45:58', 12, '', '', '', '', '', '', '', 0x44616c652077617320612077616c6b20696e202d206861732061206269642066726f6d20556e697465642053756e20284567616e2920616e642077616e747320746f207365652061626f757420616e6f7468657220666f722068697320626f776c696e6720616c6c657920696e2052656420426c7566662d20616c736f206f776e7320746865206275696c64696e6720616e732070726f7065727479206174204f726368617264204c616e657320436869636f, 1, 0, '2014-12-12 12:44:23'),
(10, 'Greg', 'Jones', 'OWNER', 19, '', '530-646-8391', '', '', 'gbjonesjr@gmail.com', '', 1, 1, 1, '2014-12-16 08:42:12', 12, '', '', '', '', '', '', '', '', 1, 0, '2014-12-16 08:42:12'),
(11, 'Miguel', 'de anquin', ' test', 4, 'teat', 'aaaa', '', '', '', '', 0, 1, 1, '2015-03-18 17:15:21', 16, '', '', '', '', '', '', '', '', 1, 1, '2015-03-18 17:15:09'),
(12, 'test', 'test', 'teae', 1, '', '', '', '', '', '', 1, 1, 1, '2015-03-18 17:29:06', 16, '', '', '', '', '', '', '', '', 1, 1, '2015-03-18 17:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `crm_followers`
--

CREATE TABLE `crm_followers` (
  `cfo_id` double NOT NULL,
  `cfo_opportunityId` double NOT NULL,
  `cfo_userId` double NOT NULL,
  `cfo_startedFollowingDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_followers`
--

INSERT INTO `crm_followers` (`cfo_id`, `cfo_opportunityId`, `cfo_userId`, `cfo_startedFollowingDate`) VALUES
(9, 15, 16, '2015-03-23 11:18:52'),
(10, 7, 16, '2015-03-23 16:32:01'),
(15, 34, 16, '2015-03-26 08:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `crm_opportunities`
--

CREATE TABLE `crm_opportunities` (
  `cop_id` double NOT NULL,
  `cop_name` varchar(132) NOT NULL,
  `cop_accountId` double NOT NULL,
  `cop_repId` double NOT NULL,
  `cop_type` varchar(132) NOT NULL,
  `cop_address1` varchar(132) NOT NULL,
  `cop_address2` varchar(132) NOT NULL,
  `cop_city` varchar(132) NOT NULL,
  `cop_state` varchar(64) NOT NULL,
  `cop_zip` varchar(16) NOT NULL,
  `cop_country` varchar(132) NOT NULL,
  `cop_county` varchar(132) NOT NULL,
  `cop_isRfp` tinyint(1) NOT NULL,
  `cop_proposalDeadline` datetime NOT NULL,
  `cop_userUtilityTaxRate` decimal(5,3) NOT NULL,
  `cop_salesTaxRate` decimal(5,3) NOT NULL,
  `cop_salesTaxRateMuni` decimal(6,4) NOT NULL,
  `cop_salesTaxRateCounty` decimal(6,4) NOT NULL,
  `cop_salesTaxExemption` tinyint(1) NOT NULL,
  `cop_farmTaxCreditRate` decimal(5,3) NOT NULL,
  `cop_federalTaxCreditRate` decimal(5,3) NOT NULL,
  `cop_combinedIncomeTaxRate` decimal(5,3) NOT NULL,
  `cop_federalIncomeTaxRate` decimal(5,3) NOT NULL,
  `cop_stateIncomeTaxRate` decimal(5,3) NOT NULL,
  `cop_macrsRates` varchar(255) NOT NULL,
  `cop_depreciationDescription` varchar(128) NOT NULL,
  `cop_pipelineStage` varchar(132) NOT NULL,
  `cop_nextAgreedContactDate` datetime NOT NULL,
  `cop_estimatedRevenue` decimal(15,2) NOT NULL,
  `cop_estimatedGrossProfit` decimal(15,2) NOT NULL,
  `cop_estimatedFinalDecisionDate` datetime NOT NULL,
  `cop_preferredFinancingMethod` double NOT NULL,
  `cop_preferredFinancingMethod2` double NOT NULL,
  `cop_preferredFinancingMethod3` double NOT NULL,
  `cop_preferredFinancingMethod4` double NOT NULL,
  `cop_soldDate` datetime NOT NULL,
  `cop_siteSurveyCompletionDate` datetime NOT NULL,
  `cop_siteSurveyCompletionBy` double NOT NULL,
  `cop_proposalDeliveryDate` datetime NOT NULL,
  `cop_finalPresentationDate` datetime NOT NULL,
  `cop_nonBindingSoldDate` datetime NOT NULL,
  `cop_contractAmount` decimal(15,2) NOT NULL,
  `cop_saleContingencies` blob NOT NULL,
  `cop_enteredDate` datetime NOT NULL,
  `cop_competitors` blob NOT NULL,
  `cop_whyDidWeWin` blob NOT NULL,
  `cop_whyDidWeLose` blob NOT NULL,
  `cop_whoWon` varchar(132) NOT NULL,
  `cop_lostDate` datetime NOT NULL,
  `cop_notes` blob NOT NULL,
  `cop_lastUpdate` datetime NOT NULL,
  `cop_lastUpdateBy` double NOT NULL,
  `cop_cashflowYears` int(11) NOT NULL,
  `cop_electricityInflation` decimal(4,2) NOT NULL,
  `cop_electricityInflation2` decimal(4,2) NOT NULL,
  `cop_electricityInflation3` decimal(4,2) NOT NULL,
  `cop_oneTimeRebateAmount` decimal(15,2) NOT NULL,
  `cop_oneTimeRebatePercent` decimal(6,4) NOT NULL,
  `cop_oneTimeRebateLegend` varchar(132) NOT NULL,
  `cop_lastContactDate` datetime NOT NULL,
  `cop_nextContactDateAgreed` tinyint(1) NOT NULL,
  `cop_nextContactPurpose` varchar(255) NOT NULL,
  `cop_pipelineStageDate` datetime NOT NULL,
  `cop_leadId` double NOT NULL,
  `cop_kwp` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_opportunities`
--

INSERT INTO `crm_opportunities` (`cop_id`, `cop_name`, `cop_accountId`, `cop_repId`, `cop_type`, `cop_address1`, `cop_address2`, `cop_city`, `cop_state`, `cop_zip`, `cop_country`, `cop_county`, `cop_isRfp`, `cop_proposalDeadline`, `cop_userUtilityTaxRate`, `cop_salesTaxRate`, `cop_salesTaxRateMuni`, `cop_salesTaxRateCounty`, `cop_salesTaxExemption`, `cop_farmTaxCreditRate`, `cop_federalTaxCreditRate`, `cop_combinedIncomeTaxRate`, `cop_federalIncomeTaxRate`, `cop_stateIncomeTaxRate`, `cop_macrsRates`, `cop_depreciationDescription`, `cop_pipelineStage`, `cop_nextAgreedContactDate`, `cop_estimatedRevenue`, `cop_estimatedGrossProfit`, `cop_estimatedFinalDecisionDate`, `cop_preferredFinancingMethod`, `cop_preferredFinancingMethod2`, `cop_preferredFinancingMethod3`, `cop_preferredFinancingMethod4`, `cop_soldDate`, `cop_siteSurveyCompletionDate`, `cop_siteSurveyCompletionBy`, `cop_proposalDeliveryDate`, `cop_finalPresentationDate`, `cop_nonBindingSoldDate`, `cop_contractAmount`, `cop_saleContingencies`, `cop_enteredDate`, `cop_competitors`, `cop_whyDidWeWin`, `cop_whyDidWeLose`, `cop_whoWon`, `cop_lostDate`, `cop_notes`, `cop_lastUpdate`, `cop_lastUpdateBy`, `cop_cashflowYears`, `cop_electricityInflation`, `cop_electricityInflation2`, `cop_electricityInflation3`, `cop_oneTimeRebateAmount`, `cop_oneTimeRebatePercent`, `cop_oneTimeRebateLegend`, `cop_lastContactDate`, `cop_nextContactDateAgreed`, `cop_nextContactPurpose`, `cop_pipelineStageDate`, `cop_leadId`, `cop_kwp`) VALUES
(1, 'Distribution center', 1, 16, 'PV + EE', '444', 'Tobrurry Way', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', 1, '2014-09-29 12:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '5-Final-Presentation-Completed', '2014-09-28 07:30:00', '500000.00', '110000.00', '2014-09-30 18:00:00', 0, 0, 0, 0, '2014-09-30 14:00:00', '0000-00-00 00:00:00', 0, '2014-09-18 14:00:00', '2014-09-19 14:00:00', '2014-09-17 14:00:00', '550000.00', 0x436f6e74726163742063616e206265207465726d696e6174656420666f7220636f6e76656e69656e63652069662077652063616e6e6f74206765742061207065726d6974206279204e6f7620333020323031342e20, '2014-09-10 11:09:38', 0x446172796c20536f6c617220616e64204a6f6520536f6c6172204c4c43, 0x50726573656e7465642061206d6f72652064657461696c656420616e6420636c65617220736f6c7574696f6e207468616e206f757420636f6d70657469746f72732c2074686579206c6f766564206f75722070726573656e746174696f6e2e, '', '', '0000-00-00 00:00:00', '', '2015-03-22 21:35:04', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(2, 'VIneyard Willows', 2, 10, 'PV', '555', 'Howe Ave', 'Sacramento', 'CA', '95825', 'United States', 'Sacramento County', 0, '2014-09-20 14:00:00', '0.000', '8.880', '0.0000', '0.0000', 0, '10.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '3-Site-Survey-Completed', '2014-09-19 14:00:00', '10000000.55', '2000000.77', '2014-09-27 14:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2014-09-10 11:10:25', 0x6e6f626f6479, '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:11:25', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(3, 'Rice Processing Facility', 1, 9, 'PV + ES', '888', 'Howard St', 'San Francisco', 'CA', '94103', 'United States', 'San Francisco County', 1, '2014-09-30 14:00:00', '0.000', '0.000', '0.0000', '0.0000', 1, '0.000', '0.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '5-Final-Presentation-Completed', '2014-09-26 14:00:00', '750000.00', '100000.00', '2014-09-30 14:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2014-09-10 11:10:45', '', '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:11:14', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(4, 'HULLER', 3, 9, 'PV', '', '', '', '', '', '', '', 0, '0000-00-00 05:00:00', '0.000', '7.500', '0.0000', '0.0000', 0, '2.500', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-Qualification', '0000-00-00 05:00:00', '250000.00', '0.00', '0000-00-00 05:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2014-09-10 15:17:20', '', '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:11:35', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(5, 'FIFTH SUN_PHASE 1', 4, 16, 'PV', '495', 'RYAN AVENUE', 'CHICO', 'CA', '95973', 'United States', 'BUTTE', 0, '0000-00-00 05:00:00', '5.000', '7.500', '0.0000', '0.0000', 1, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '8-Sold', '0000-00-00 05:00:00', '445709.00', '0.00', '2014-05-14 14:00:00', 0, 0, 0, 0, '2014-09-11 14:00:00', '0000-00-00 00:00:00', 0, '2014-09-06 14:00:00', '2014-09-10 14:00:00', '2014-09-02 14:00:00', '555777.00', 0x4d7573742062652066696e6973686564206279207965617220656e64, '2014-09-10 15:27:30', 0x6a6f6520736f6c6172, 0x6d6f7374206b7720782073716674, '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:11:58', 16, 25, '4.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(6, 'Test Miguel', 5, 16, '', '950', 'E Joiner Pkwy', 'Lincoln', 'CA', '95648', 'United States', 'Placer County', 0, '0000-00-00 05:00:00', '5.000', '7.500', '4.0000', '5.0000', 0, '5.500', '30.000', '43.000', '33.000', '10.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '3-Site-Survey-Completed', '0000-00-00 05:00:00', '54000.00', '5400.00', '0000-00-00 05:00:00', 1, 5, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2014-12-11 14:10:35', '', '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:12:13', 16, 25, '4.00', '7.00', '3.00', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(7, 'Huller/pumps/resi aggregation', 19, 9, 'PV', '', '', '', '', '', '', '', 0, '0000-00-00 05:00:00', '0.000', '0.000', '0.0000', '0.0000', 0, '0.000', '0.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '2-Qualification-Completed', '2015-01-05 05:00:00', '169512.00', '0.00', '2015-01-05 05:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2014-12-16 08:52:44', 0x53554e574f524b532053414352414d454e544f2c20454c49544520534f4c4152, '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:11:46', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(8, 'New Walnut Orchard – Red Bluff, California', 20, 10, '', '13620', 'Golden State Highway 99', 'Chico', 'CA', '95973', 'United States', 'Butte County', 0, '0000-00-00 05:00:00', '5.000', '7.500', '0.0000', '0.0000', 0, '5.500', '30.000', '41.000', '33.000', '8.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '7-Contract-Negotiation', '0000-00-00 05:00:00', '150000.00', '30000.00', '2015-02-28 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-02-18 08:42:05', '', '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 21:35:31', 16, 25, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(9, 'new project', 4, 16, '', '', '', '', '', '', '', '', 1, '0000-00-00 05:00:00', '0.000', '0.000', '0.0000', '0.0000', 1, '0.000', '0.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '4-Proposal-Delivered', '0000-00-00 05:00:00', '500000.00', '50000.00', '0000-00-00 05:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-18 17:29:55', '', '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 21:34:34', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(10, 'VIneyard Willows', 2, 10, 'PV', '555', 'Howe Ave', 'Sacramento', 'CA', '95825', 'United States', 'Sacramento County', 0, '2014-09-20 14:00:00', '0.000', '8.880', '0.0000', '0.0000', 0, '10.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-Qualification', '2014-09-19 14:00:00', '10000000.55', '2000000.77', '2014-09-27 14:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-22 22:15:59', 0x6e6f626f6479, '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:15:59', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(11, 'FIFTH SUN_PHASE 1', 4, 16, 'PV', '495', 'RYAN AVENUE', 'CHICO', 'CA', '95973', 'United States', 'BUTTE', 0, '0000-00-00 05:00:00', '5.000', '7.500', '0.0000', '0.0000', 1, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-Qualification', '0000-00-00 05:00:00', '445709.00', '0.00', '2014-05-14 14:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-22 22:16:14', 0x6a6f6520736f6c6172, '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:16:14', 16, 25, '4.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(12, 'Test Miguel', 5, 16, '', '950', 'E Joiner Pkwy', 'Lincoln', 'CA', '95648', 'United States', 'Placer County', 0, '0000-00-00 05:00:00', '5.000', '7.500', '4.0000', '5.0000', 0, '5.500', '30.000', '43.000', '33.000', '10.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-Qualification', '0000-00-00 05:00:00', '54000.00', '5400.00', '0000-00-00 05:00:00', 1, 5, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-22 22:16:26', '', '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:16:26', 16, 25, '4.00', '7.00', '3.00', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(13, 'FIFTH SUN_PHASE 1', 4, 16, 'PV', '495', 'RYAN AVENUE', 'CHICO', 'CA', '95973', 'United States', 'BUTTE', 0, '0000-00-00 05:00:00', '5.000', '7.500', '0.0000', '0.0000', 1, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '3-Site-Survey-Completed', '0000-00-00 05:00:00', '445709.00', '0.00', '2014-05-14 14:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-22 22:18:06', 0x6a6f6520736f6c6172, '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:18:06', 16, 25, '4.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(14, 'Distribution center', 1, 16, 'PV + EE', '444', 'Tobrurry Way', 'Folsom', 'CA', '95630', 'United States', 'Sacramento County', 1, '2014-09-29 12:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '4-Proposal-Delivered', '2014-09-28 07:30:00', '500000.00', '110000.00', '2014-09-30 18:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-22 22:18:23', 0x446172796c20536f6c617220616e64204a6f6520536f6c6172204c4c43, '', '', '', '0000-00-00 00:00:00', '', '2015-03-22 22:18:23', 16, 30, '5.00', '6.70', '2.99', '0.00', '0.0000', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, '0.00'),
(15, 'Test Miguel', 5, 16, '', '950', 'E Joiner Pkwy', 'Lincoln', 'CA', '95648', 'United States', 'Placer County', 0, '0000-00-00 05:00:00', '5.000', '7.500', '4.0000', '5.0000', 0, '5.500', '30.000', '43.000', '33.000', '10.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '5-Final-Presentation-Completed', '2015-03-25 05:00:00', '124000.00', '5400.00', '0000-00-00 05:00:00', 1, 5, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-22 22:18:53', '', '', '', '', '0000-00-00 00:00:00', '', '2015-03-23 08:56:08', 16, 25, '4.00', '7.00', '3.00', '0.00', '0.0000', '', '2015-03-23 13:36:36', 0, 'Discuss PPA', '2015-03-23 08:41:17', 0, '0.00'),
(16, 'Tesla Corp', 21, 16, 'PV', '1235', 'Darling Way', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-New-Qualified-Opportunity', '2015-03-31 11:30:00', '250000.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 11:37:15', '', '', '', '', '0000-00-00 00:00:00', 0x4d79206e6f7465732072652067726561740d0a6d6f7265206e6f746573, '2015-04-12 21:17:34', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-04-13 06:43:31', 1, 'Join me meeting', '2015-03-25 11:37:15', 0, '100.00'),
(17, 'Super Burger LLC', 22, 16, 'PV', '4501', 'Latrobe Rd', 'El Dorado Hills', 'CA', '95762', 'United States', '95762', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '6-Presented-To-Customer', '2015-04-29 14:00:00', '888666.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:03:33', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:55:16', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:03:33', 1, 'Join me meeting', '2015-04-12 17:01:09', 0, '350.00'),
(18, 'Vatican City', 23, 16, 'PV', '311', 'Vernon St', 'Roseville', 'CA', '95678', 'United States', '95678', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '5-Proposal-Complete', '2015-04-30 13:30:00', '156156.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:10:41', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:14:48', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:10:41', 1, 'Meet and greet', '2015-04-12 17:03:40', 0, '58.00'),
(19, 'Senorita Maestra Studios', 24, 16, 'PV', '4944', 'Breese Cir', 'El Dorado Hills', 'CA', '95762', 'United States', '95762', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-New-Qualified-Opportunity', '2015-03-31 14:30:00', '55555.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:19:34', '', '', '', '', '0000-00-00 00:00:00', 0x4d792064657461696c6564206e6f7465732061726520686572652e2062696c6c206a3139396d20646b6b, '2015-04-12 21:17:54', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:19:34', 1, 'Gather electric bills', '2015-03-25 12:19:34', 0, '22.00'),
(20, 'Ring Side Popcorn LLC', 25, 16, 'PV', '7794', 'Folsom Dam Rd', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-New-Qualified-Opportunity', '2015-03-31 14:30:00', '77777.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:24:29', '', '', '', '', '0000-00-00 00:00:00', 0x54686520636f727265637420776972652073697a6520666f7220636f6e6e656374696e6720736f6c61722070616e656c7320746f207468652062617474657269657320696e206120736f6c617220656e657267792073797374656d206d7573742062652061206c6172676520656e6f7567682073697a65202867617567652920746f20736166656c7920616e6420656666696369656e746c79206361727279207468652044432063757272656e742066726f6d2074686520736f6c61722070616e656c7320746f207468652073797374656d2065717569706d656e742e204966207468652077697265732f6361626c65732061726520746f6f20736d616c6c2c206e6f74206f6e6c792063616e2074686520776972696e672067657420686f742028776869636820697320626164292c2062757420616c736f2074686572652077696c6c206265206120766f6c746167652064726f702064756520746f2074686520726573697374616e6365206f662074686520776972657320616e64206c65737320656e657267792028616d7073292077696c6c2062652064656c69766572656420746f20746865206261747465726965732e205468657265206172652074776f207761797320746f20736f6c766520746869732070726f626c656d2e20546865206669727374206973206f6620636f7572736520757365206c61726765722077697265732f6361626c65732e2053696e636520636f707065722077697265732061726520657870656e736976652c20612062657474657220617070726f61636820697320746f2075736520612068696768657220766f6c746167652073797374656d2e, '2015-04-12 21:18:07', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:24:29', 1, 'Throw a few punches', '2015-03-25 12:24:29', 0, '30.00'),
(21, 'Ring Side Popcorn LLC', 26, 16, 'PV', '7794', 'Folsom Dam Rd', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '2-Customer-Engaged', '0000-00-00 05:00:00', '25000.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:31:07', '', '', '', '', '0000-00-00 00:00:00', 0x54686520636f727265637420776972652073697a6520666f7220636f6e6e656374696e6720736f6c61722070616e656c7320746f207468652062617474657269657320696e206120736f6c617220656e657267792073797374656d206d7573742062652061206c6172676520656e6f7567682073697a65202867617567652920746f20736166656c7920616e6420656666696369656e746c79206361727279207468652044432063757272656e742066726f6d2074686520736f6c61722070616e656c7320746f207468652073797374656d2065717569706d656e742e204966207468652077697265732f6361626c65732061726520746f6f20736d616c6c2c206e6f74206f6e6c792063616e2074686520776972696e672067657420686f742028776869636820697320626164292c2062757420616c736f2074686572652077696c6c206265206120766f6c746167652064726f702064756520746f2074686520726573697374616e6365206f662074686520776972657320616e64206c65737320656e657267792028616d7073292077696c6c2062652064656c69766572656420746f20746865206261747465726965732e205468657265206172652074776f207761797320746f20736f6c766520746869732070726f626c656d2e20546865206669727374206973206f6620636f7572736520757365206c61726765722077697265732f6361626c65732e2053696e636520636f707065722077697265732061726520657870656e736976652c20612062657474657220617070726f61636820697320746f2075736520612068696768657220766f6c746167652073797374656d2e, '2015-04-12 21:16:29', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:31:07', 0, '', '2015-04-12 21:09:57', 0, '5.00'),
(22, 'Ring Side Popcorn LLC', 27, 16, 'PV', '7794', 'Folsom Dam Rd', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '2-Customer-Engaged', '0000-00-00 05:00:00', '7889.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:34:46', '', '', '', '', '0000-00-00 00:00:00', 0x54686520636f727265637420776972652073697a6520666f7220636f6e6e656374696e6720736f6c61722070616e656c7320746f207468652062617474657269657320696e206120736f6c617220656e657267792073797374656d206d7573742062652061206c6172676520656e6f7567682073697a65202867617567652920746f20736166656c7920616e6420656666696369656e746c79206361727279207468652044432063757272656e742066726f6d2074686520736f6c61722070616e656c7320746f207468652073797374656d2065717569706d656e742e204966207468652077697265732f6361626c65732061726520746f6f20736d616c6c2c206e6f74206f6e6c792063616e2074686520776972696e672067657420686f742028776869636820697320626164292c2062757420616c736f2074686572652077696c6c206265206120766f6c746167652064726f702064756520746f2074686520726573697374616e6365206f662074686520776972657320616e64206c65737320656e657267792028616d7073292077696c6c2062652064656c69766572656420746f20746865206261747465726965732e205468657265206172652074776f207761797320746f20736f6c766520746869732070726f626c656d2e20546865206669727374206973206f6620636f7572736520757365206c61726765722077697265732f6361626c65732e2053696e636520636f707065722077697265732061726520657870656e736976652c20612062657474657220617070726f61636820697320746f2075736520612068696768657220766f6c746167652073797374656d2e, '2015-04-12 21:16:42', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:34:46', 0, '', '2015-04-12 21:07:01', 6, '12.00'),
(23, 'Bodegas del Solar Parana', 28, 16, 'PV', '2295', 'Iron Point Rd', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '3-Pre-Design-Meeting-Complete', '2015-03-31 14:30:00', '515155.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:46:58', '', '', '', '', '0000-00-00 00:00:00', 0x49534f2d383630312079656172206e756d6265722e205468697320686173207468652073616d652076616c756520617320592c206578636570742074686174206966207468652049534f207765656b206e756d626572202857292062656c6f6e677320746f207468652070726576696f7573206f72206e65787420796561722c20746861742079656172206973207573656420696e73746561642e2028616464656420696e2050485020352e312e3029, '2015-04-12 21:15:45', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:46:58', 1, 'Taste wine', '2015-04-12 21:09:09', 7, '151.00'),
(24, 'ACME', 29, 16, 'PV', '3326', 'Cambridge rd', 'cameron park', 'CA', '95682', '', '95682', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '2-Customer-Engaged', '0000-00-00 05:00:00', '3000000.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:47:59', '', '', '', '', '0000-00-00 00:00:00', 0x49534f2d383630312079656172206e756d6265722e205468697320686173207468652073616d652076616c756520617320592c206578636570742074686174206966207468652049534f207765656b206e756d626572202857292062656c6f6e677320746f207468652070726576696f7573206f72206e65787420796561722c20746861742079656172206973207573656420696e73746561642e2028616464656420696e2050485020352e312e3029, '2015-04-12 21:17:02', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:47:59', 0, '', '2015-04-12 21:12:33', 1, '1000.00'),
(25, 'Dog Enterprises', 30, 16, 'PV', '1120', 'Harvard Way', 'El Dorado Hills', 'CA', '95762', 'United States', '95762', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '5-Proposal-Complete', '2015-04-29 05:00:00', '788999.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:53:50', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:57:49', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:53:50', 0, '', '2015-04-12 17:03:18', 8, '300.00'),
(26, 'Samantha Fox Corp.', 31, 16, 'PV', '151', 'N Sunrise Ave', 'Roseville', 'CA', '95661', 'United States', '95661', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-New-Qualified-Opportunity', '0000-00-00 05:00:00', '88888.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:56:26', '', '', '', '', '0000-00-00 00:00:00', 0x596f752063616e2070726576656e742061207265636f676e697a65642063686172616374657220696e2074686520666f726d617420737472696e672066726f6d206265696e6720657870616e646564206279206573636170696e672069742077697468206120707265636564696e67206261636b736c6173682e204966207468652063686172616374657220776974682061206261636b736c61736820697320616c72656164792061207370656369616c2073657175656e63652c20796f75206d6179206e65656420746f20616c736f2065736361706520746865206261636b736c6173682e, '2015-04-12 21:18:38', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:56:26', 0, '', '2015-03-25 12:56:26', 9, '55.00'),
(27, 'Samantha Fox Corp.', 32, 16, 'PV', '151', 'N Sunrise Ave', 'Roseville', 'CA', '95661', 'United States', '95661', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '2-Customer-Engaged', '0000-00-00 05:00:00', '500000.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 12:58:54', '', '', '', '', '0000-00-00 00:00:00', 0x596f752063616e2070726576656e742061207265636f676e697a65642063686172616374657220696e2074686520666f726d617420737472696e672066726f6d206265696e6720657870616e646564206279206573636170696e672069742077697468206120707265636564696e67206261636b736c6173682e204966207468652063686172616374657220776974682061206261636b736c61736820697320616c72656164792061207370656369616c2073657175656e63652c20796f75206d6179206e65656420746f20616c736f2065736361706520746865206261636b736c6173682e, '2015-04-12 21:17:19', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 12:58:54', 0, '', '2015-04-12 21:12:48', 10, '300.00'),
(28, 'Chef Ent', 33, 16, 'PV', '5169', 'Mississippi Bar Dr', 'Orangevale', 'CA', '95662', 'United States', '95662', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '4-Pre-Design-Complete', '2015-04-28 14:30:00', '84555.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 13:01:39', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:15:32', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 13:01:39', 1, 'Meet and greet', '2015-04-12 21:13:54', 11, '15.00'),
(29, 'Chef Ent', 34, 16, 'PV', '5169', 'Mississippi Bar Dr', 'Orangevale', 'CA', '95662', 'United States', '95662', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '1-New-Qualified-Opportunity', '0000-00-00 05:00:00', '78999.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 13:03:38', '', '', '', '', '0000-00-00 00:00:00', 0x416e797468696e6720676f6573, '2015-04-12 21:18:52', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 13:03:38', 0, '', '2015-03-25 13:03:38', 12, '30.00'),
(30, 'Sangria Juice', 35, 16, 'PV', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '3-Pre-Design-Meeting-Complete', '0000-00-00 05:00:00', '7555.00', '0.00', '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 13:07:12', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:54:39', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 13:07:12', 0, '', '2015-04-12 21:13:05', 13, '0.00'),
(31, 'Real Sugar Corp', 36, 16, 'PV', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '8-Review-Negotiation', '2015-04-28 14:30:00', '188888.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 13:08:50', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:16:11', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 13:08:50', 1, 'Drink', '2015-04-12 17:01:43', 14, '80.00'),
(32, 'Real Sugar Corp', 37, 16, 'PV', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '4-Pre-Design-Complete', '2015-04-27 15:30:00', '50555.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 13:13:21', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:15:18', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 13:13:21', 1, 'Eat', '2015-04-12 17:01:59', 15, '10.00'),
(33, 'Real Sugar Corp', 38, 10, 'PV', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '6-Presented-To-Customer', '2015-04-29 05:00:00', '555666.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 13:15:25', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:57:04', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 13:15:25', 1, '', '2015-04-12 21:14:20', 16, '125.00'),
(34, 'Real Sugar Corp', 39, 16, 'PV', '560', 'E Natoma St', 'Folsom', 'CA', '95630', 'United States', '95630', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '7-Verbal-Commitment', '2015-04-30 14:00:00', '355000.00', '35000.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-25 13:15:51', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:56:30', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-25 13:15:51', 1, 'Eat', '2015-04-12 17:01:26', 17, '137.00'),
(35, 'Vatican City II', 40, 16, 'PV', '311', 'Vernon St', 'Roseville', 'CA', '95678', 'United States', '95678', 0, '0000-00-00 05:00:00', '0.000', '8.000', '0.0000', '0.0000', 0, '0.000', '30.000', '0.000', '0.000', '0.000', '20.00,32.00,19.20,11.52,11.52,5.76', '', '3-Pre-Design-Meeting-Complete', '2015-04-21 05:00:00', '6666.00', '0.00', '0000-00-00 05:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0.00', '', '2015-03-26 09:52:00', '', '', '', '', '0000-00-00 00:00:00', '', '2015-04-12 21:54:54', 16, 20, '5.00', '6.70', '3.00', '0.00', '0.0000', '', '2015-03-26 09:52:00', 1, 'review financials', '2015-04-12 21:13:31', 4, '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_opportunity_notes`
--

CREATE TABLE `crm_opportunity_notes` (
  `cno_id` double NOT NULL,
  `cno_opportunityId` double NOT NULL,
  `cno_type` varchar(132) NOT NULL,
  `cno_note` blob NOT NULL,
  `cno_lastUpdate` datetime NOT NULL,
  `cno_lastUpdateBy` double NOT NULL,
  `cno_leadId` double NOT NULL,
  `cno_deadline` date NOT NULL,
  `cno_responsibleId` double NOT NULL,
  `cno_completionDate` date NOT NULL,
  `cno_photoLink` varchar(255) NOT NULL,
  `cno_photoThumbLink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_opportunity_notes`
--

INSERT INTO `crm_opportunity_notes` (`cno_id`, `cno_opportunityId`, `cno_type`, `cno_note`, `cno_lastUpdate`, `cno_lastUpdateBy`, `cno_leadId`, `cno_deadline`, `cno_responsibleId`, `cno_completionDate`, `cno_photoLink`, `cno_photoThumbLink`) VALUES
(1, 0, 'Design', 0x546865206973206120626967207472656520746f2074686520736f757468, '2015-03-18 20:58:01', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(2, 0, 'Site Survey', 0x4e65656420746f20646f75626c6520636865636b20616765206f662073776974636867656172, '2015-03-18 21:09:58', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(3, 9, 'Client', 0x63617266756c20776974682074686520636174, '2015-03-18 21:23:21', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(4, 9, 'Site Survey', 0x746f6f206d756368206d7564, '2015-03-18 21:23:38', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(5, 9, 'Design', 0x526f6f66206973207374616e64696e67207365616d20, '2015-03-19 07:21:12', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(6, 9, 'General', 0x646f6e2774207061726b20696e20746865206472697665776179, '2015-03-19 07:22:38', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(7, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 07:24:08', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(8, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 07:27:53', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(9, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 07:36:16', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(10, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 07:37:29', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(11, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 07:38:05', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(12, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:06:43', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(13, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:07:58', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(14, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:10:56', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(15, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:11:31', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(16, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:13:57', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(17, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:18:09', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(18, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:19:27', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(19, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:23:18', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(20, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:24:30', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(21, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:24:49', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(22, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:27:40', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(23, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:30:45', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(24, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:31:25', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(25, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:31:48', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(26, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:32:59', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(27, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:33:54', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(28, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:39:35', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(29, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:40:41', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(30, 9, 'General', 0x446f6e277420776f726b20746f64617920736169642074686520637573746f6d6572, '2015-03-19 08:41:51', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(31, 9, '16', 0x46696e697368207265706f7274, '2015-03-20 08:49:37', 16, 0, '2015-03-31', 0, '0000-00-00', '', ''),
(32, 9, '16', 0x46696e697368207265706f7274, '2015-03-20 08:52:52', 16, 0, '2015-03-31', 0, '0000-00-00', '', ''),
(33, 9, '16', 0x46696e697368207265706f7274, '2015-03-20 08:59:37', 16, 0, '2015-03-31', 0, '0000-00-00', '', ''),
(34, 9, '16', 0x53656e6420505653595354207265706f7274207769746820616c6c2064617461, '2015-03-20 09:08:56', 16, 0, '2015-03-30', 0, '0000-00-00', '', ''),
(35, 9, 'Task', 0x53656e64207065726d697420706163616b6765, '2015-03-20 09:09:22', 16, 0, '2015-03-29', 16, '2015-03-26', '', ''),
(36, 9, 'Task', 0x74657374, '2015-03-20 09:14:43', 16, 0, '2015-03-03', 16, '0000-00-00', '', ''),
(37, 15, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20342d50726f706f73616c2d44656c69766572656420746f20352d46696e616c2d50726573656e746174696f6e2d436f6d706c65746564, '2015-03-23 08:41:17', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(38, 15, 'Photo', 0x47726561742073797374656d, '2015-03-23 10:30:00', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(39, 15, 'Photo', 0x70686f746f2032, '2015-03-23 10:32:07', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(40, 15, 'Photo', 0x70686f746f2033, '2015-03-23 10:41:06', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/_acc_opp15/photos/Navy-solar-installation-from-flickr1.jpg', ''),
(41, 15, 'Photo', 0x70686f746f2034, '2015-03-23 10:41:40', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/_acc_opp15/photos/maxresdefault.jpg', ''),
(42, 15, 'Photo', 0x70686f742034, '2015-03-23 10:42:51', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/_acc_opp15/photos/hillsboro_intermodal_transit_facility_3.jpg', ''),
(43, 15, 'Photo', 0x70686f746f20355c36, '2015-03-23 10:45:12', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/maxresdefault.jpg', ''),
(44, 15, 'Photo', 0x54686973206d7573742062652061207468756d622031, '2015-03-23 11:03:57', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/Navy-solar-installation-from-flickr1.jpg', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/Navy-solar-installation-from-flickr1.jpg'),
(45, 15, 'Photo', 0x48696c6c73626f726f20696e6665726e6f, '2015-03-23 11:13:33', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/hillsboro_intermodal_transit_facility_3.jpg', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/hillsboro_intermodal_transit_facility_3.jpg'),
(46, 15, 'General', 0x6e6577206d657373616765, '2015-03-23 11:14:23', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(47, 15, 'Design', 0x6d75646479207465727261696e, '2015-03-23 11:18:44', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(48, 15, 'Photo', 0x67726f756e64206d6f756e74, '2015-03-23 11:19:06', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/maxresdefault.jpg', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/maxresdefault.jpg'),
(49, 15, 'Photo', 0x67726f756e64206d6f756e74, '2015-03-23 11:26:20', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/Futo_Ground_Mount_Nov2014_02.jpg', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/Futo_Ground_Mount_Nov2014_02.jpg'),
(50, 15, 'Design', 0x6469666963756c74207465727261696e, '2015-03-23 12:21:40', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(51, 15, 'Design', 0x6e65772064657369676e206973207265616479, '2015-03-23 12:24:17', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(52, 15, 'Design', 0x616e6f74686572206e6f746520666f7220656e67696e656572696e672e206d616b65207375726520796f75206d6561737572652073686164696e67, '2015-03-23 12:26:50', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(53, 15, 'Design', 0x616e6f74686572206e6f7465, '2015-03-23 12:31:14', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(54, 15, 'Design', 0x74657374696e6720656d61696c73, '2015-03-23 12:32:06', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(55, 15, 'Design', 0x74657374696e6720656d61696c73, '2015-03-23 12:34:50', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(56, 15, 'Design', 0x74657374696e6720656d61696c73, '2015-03-23 12:35:47', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(57, 15, 'Design', 0x74657374696e6720656d61696c73, '2015-03-23 12:36:14', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(58, 15, 'Design', 0x74657374696e6720656d61696c73, '2015-03-23 12:37:30', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(59, 15, 'Design', 0x74657374696e6720656d61696c73, '2015-03-23 12:41:08', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(60, 15, 'Design', 0x746869732069732061206c6f6e67206e6f746520666f7220616c6c20746f206b6e6f772077686174206920616d20646f696e67, '2015-03-23 12:42:52', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(61, 15, 'Design', 0x616e6f74686572206e6f746520666f7220616c6c, '2015-03-23 12:43:44', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(62, 15, 'Design', 0x686f706575666c6c79207468697320697320746865206c617374206e6f746520746f2074737420656d61696c, '2015-03-23 12:46:12', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(63, 15, 'Photo', 0x5377697463686765617220666f7220656e67696e656572696e6720746f20726576696577, '2015-03-23 12:50:49', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/IndustrialSwitchgear.JPG', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/IndustrialSwitchgear.JPG'),
(64, 15, 'Photo', 0x706c6561736520616e616c797a65207468697320627265616b6572, '2015-03-23 12:55:04', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/breaker.jpg', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/breaker.jpg'),
(65, 15, 'Photo', 0x706c6561736520616e616c797a65207468697320627265616b6572, '2015-03-23 12:59:21', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/breaker.jpg', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/breaker.jpg'),
(66, 15, 'Task', 0x46696e736973682033642044657369676e, '2015-03-23 13:11:13', 16, 0, '2015-03-31', 16, '0000-00-00', '', ''),
(67, 15, 'Task', 0x46696e616c697a65206d6f64656c, '2015-03-23 13:13:29', 16, 0, '2015-03-30', 16, '0000-00-00', '', ''),
(68, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:30:40', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(69, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:32:35', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(70, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:32:53', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(71, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:34:22', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(72, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:34:56', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(73, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:36:00', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(74, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:36:12', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(75, 15, 'Call-Completed', 0x54616b656420746f206d616e616765722069732077696c6c207265766965772074686973207765656b, '2015-03-23 13:36:36', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(76, 0, 'General', 0x74657374696e67, '2015-03-23 16:24:12', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(77, 0, 'General', 0x74657374696e67, '2015-03-23 16:24:59', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(78, 0, 'General', 0x74657374696e67, '2015-03-23 16:25:26', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(79, 0, 'General', 0x74657374696e67, '2015-03-23 16:26:11', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(80, 15, 'General', 0x74657374696e67, '2015-03-23 16:29:37', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(81, 15, 'General', 0x74657374, '2015-03-23 16:29:47', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(82, 15, 'General', 0x74657374, '2015-03-23 16:30:30', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(83, 7, 'Design', 0x616b6c626a6c6b, '2015-03-23 16:32:01', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(84, 15, '', 0x6f682077656c6c, '2015-03-23 16:32:24', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(85, 7, 'Photo', 0x427265616b6572, '2015-03-23 16:34:14', 16, 0, '0000-00-00', 0, '0000-00-00', '/breaker.jpg', '/breaker.jpg'),
(86, 7, 'Photo', 0x70616e656c73, '2015-03-23 16:34:41', 16, 0, '0000-00-00', 0, '0000-00-00', '/hillsboro_intermodal_transit_facility_3.jpg', '/hillsboro_intermodal_transit_facility_3.jpg'),
(87, 7, 'Photo', 0x74657374, '2015-03-23 16:39:04', 16, 0, '0000-00-00', 0, '0000-00-00', '/maxresdefault.jpg', '/maxresdefault.jpg'),
(88, 15, 'Photo', 0x6161616161, '2015-03-23 16:40:12', 16, 0, '0000-00-00', 0, '0000-00-00', '/breaker.jpg', '/breaker.jpg'),
(89, 15, 'Photo', 0x6161616161, '2015-03-23 16:43:12', 16, 0, '0000-00-00', 0, '0000-00-00', '/breaker.jpg', '/breaker.jpg'),
(90, 15, 'Photo', 0x70686f746f, '2015-03-23 16:43:35', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/nonprofit_acc5_opp15/photos/Navy-solar-installation-from-flickr1.jpg', './usr_testco/accts/nonprofit_acc5_opp15/photos/thumbs/Navy-solar-installation-from-flickr1.jpg'),
(91, 4, 'Design', 0x68656c6c6f, '2015-03-23 19:43:00', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(92, 4, 'Design', 0x676f6f6420627965, '2015-03-23 19:43:13', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(93, 34, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20, '2015-03-26 07:36:36', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(94, 34, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d2020746f20322d437573746f6d65722d456e6761676564, '2015-03-26 08:06:02', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(95, 34, 'General', 0x54657374206e6f7465, '2015-03-26 08:35:42', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(96, 34, 'General', 0x74657374, '2015-03-26 08:35:55', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(97, 34, 'Design', 0x74657374, '2015-03-26 08:36:06', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(98, 35, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20352d50726f706f73616c2d436f6d706c657465, '2015-04-12 17:00:41', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(99, 17, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20362d50726573656e7465642d546f2d437573746f6d6572, '2015-04-12 17:01:09', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(100, 34, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20322d437573746f6d65722d456e676167656420746f20372d56657262616c2d436f6d6d69746d656e74, '2015-04-12 17:01:26', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(101, 31, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20382d5265766965772d4e65676f74696174696f6e, '2015-04-12 17:01:43', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(102, 32, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20342d5072652d44657369676e2d436f6d706c657465, '2015-04-12 17:01:59', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(103, 33, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20372d56657262616c2d436f6d6d69746d656e74, '2015-04-12 17:02:38', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(104, 28, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20352d50726f706f73616c2d436f6d706c657465, '2015-04-12 17:03:06', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(105, 25, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20352d50726f706f73616c2d436f6d706c657465, '2015-04-12 17:03:18', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(106, 18, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20352d50726f706f73616c2d436f6d706c657465, '2015-04-12 17:03:40', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(107, 0, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d2020746f20372d56657262616c2d436f6d6d69746d656e74, '2015-04-12 21:03:05', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(108, 0, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d2020746f20372d56657262616c2d436f6d6d69746d656e74, '2015-04-12 21:03:56', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(109, 34, 'General', 0x4f70706f7274756e6974792061737369676e65642066726f6d204d696775656c20646520416e7175696e20746f2054696d2048616d6f72, '2015-04-12 21:06:26', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(110, 22, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20322d437573746f6d65722d456e6761676564, '2015-04-12 21:07:01', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(111, 23, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20332d5072652d44657369676e2d4d656574696e672d436f6d706c657465, '2015-04-12 21:09:09', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(112, 21, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20322d437573746f6d65722d456e6761676564, '2015-04-12 21:09:57', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(113, 24, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20322d437573746f6d65722d456e6761676564, '2015-04-12 21:12:33', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(114, 27, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20322d437573746f6d65722d456e6761676564, '2015-04-12 21:12:48', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(115, 30, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20312d4e65772d5175616c69666965642d4f70706f7274756e69747920746f20332d5072652d44657369676e2d4d656574696e672d436f6d706c657465, '2015-04-12 21:13:05', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(116, 35, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20352d50726f706f73616c2d436f6d706c65746520746f20332d5072652d44657369676e2d4d656574696e672d436f6d706c657465, '2015-04-12 21:13:31', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(117, 28, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20352d50726f706f73616c2d436f6d706c65746520746f20342d5072652d44657369676e2d436f6d706c657465, '2015-04-12 21:13:54', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(118, 33, 'General', 0x506970656c696e65205374616765206368616e6765642066726f6d20372d56657262616c2d436f6d6d69746d656e7420746f20362d50726573656e7465642d546f2d437573746f6d6572, '2015-04-12 21:14:20', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(119, 34, 'General', 0x4f70706f7274756e6974792061737369676e65642066726f6d2054696d2048616d6f7220746f204d696775656c20646520416e7175696e, '2015-04-12 21:37:38', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(120, 33, 'General', 0x4f70706f7274756e6974792061737369676e65642066726f6d204d696775656c20646520416e7175696e20746f2054696d2048616d6f72, '2015-04-12 21:39:31', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(121, 16, 'Photo', 0x5468697320697320696e20746865206d61696e206275696c64696e67, '2015-04-13 06:38:01', 16, 0, '0000-00-00', 0, '0000-00-00', './usr_testco/accts/teslacorp_acc21_opp16/photos/Electrical-Control-Panel-Boards.jpg', './usr_testco/accts/teslacorp_acc21_opp16/photos/thumbs/Electrical-Control-Panel-Boards.jpg'),
(122, 16, 'Call-Completed', 0x48616420636f6e766572736174696f6e207720466163696c697479204d616e616765722c2068652073617973207765206e65656420746f20636865636b2074686520737461746963206c6f6164206f6e2074686520726f6f66, '2015-04-13 06:42:58', 16, 0, '0000-00-00', 0, '0000-00-00', '', ''),
(123, 16, 'Email-Response', 0x466163696c697479206d616e6167657220686173206a7573742073656e7420626c75657072696e7473206f66206275696c64696e67, '2015-04-13 06:43:31', 16, 0, '0000-00-00', 0, '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboardfunctions`
--

CREATE TABLE `dashboardfunctions` (
  `functionid` double NOT NULL,
  `groupid` double NOT NULL,
  `description` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `permissions` varchar(128) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dashboardfunctions`
--

INSERT INTO `dashboardfunctions` (`functionid`, `groupid`, `description`, `link`, `type`, `permissions`, `priority`, `icon`) VALUES
(25, 3, 'Users', 'users_browse.php', 'same', 'mng', 1, 'business56.png'),
(31, 3, 'PV Modules', 'modules_browse.php', 'same', 'all', 5, 'solar10.png'),
(36, 1, 'Accounts', 'crm_accounts_browse.php', 'same', 'all', 2, '8.png'),
(37, 3, 'Configuration', 'configurations_browse.php', 'same', 'mng', 8, 'cogwheel5.png'),
(45, 3, 'Photos', 'photos_browse.php', 'same', 'all', 18, 'vintage2.png'),
(46, 3, 'Monitoring', 'monitoring_browse.php', 'same', 'all', 6, 'scale14.png'),
(47, 1, 'Reverse PVWatts', 'kwh_models_browse.php', 'same', 'mng', 15, 'sun70.png'),
(48, 3, 'Racking', 'racking_browse.php', 'same', 'all', 5, 'geometry1.png'),
(49, 3, 'Inverters', 'inverters_browse.php', 'same', 'all', 5, 'warning21.png'),
(50, 4, 'Utilities', 'utilities_browse.php', 'same', 'all', 1, 'electrical7.png'),
(51, 1, 'Contacts', 'crm_contacts_browse.php', 'same', 'all', 2, 'contact11.png'),
(52, 4, 'Rates', 'rates_browse.php', 'same', 'all', 1, 'analytics2.png'),
(53, 4, 'Rate Charges', 'ratecharges_browse.php', 'same', 'all', 5, 'icon_coins_arrowup.png'),
(54, 4, 'Rate Tiers', 'ratetiers_browse.php', 'same', 'all', 7, 'icon_bars_arrowup.png'),
(55, 4, 'Time of Use Periods', 'pv_touPeriods_browse.php', 'same', 'all', 3, 'gasoline1.png'),
(56, 1, 'Opportunities', 'crm_opportunities_browse.php', 'same', 'all', 3, 'banknote.png'),
(57, 1, 'Meters', 'meters_browse.php', 'same', 'all', 3, 'plug2.png'),
(58, 4, 'Rate Baselines', 'rates_baseline_browse.php', 'same', 'all', 9, 'ruler17.png'),
(59, 4, 'Rate Flat Price', 'rates_kwh_prices_browse.php', 'same', 'all', 11, 'icon_dollar_sign.png'),
(60, 4, 'TOU Profiles', 'meters_tou_profile_header_browse.php', 'same', 'all', 15, 'speedometer26.png'),
(61, 3, 'String Sizes', 'string_sizes_browse.php', 'same', 'all', 5, 'measuring7.png'),
(62, 1, 'Arrays', 'arrays_browse.php', 'same', 'all', 3, 'solar6.png'),
(63, 5, 'PVSim', 'pvsim_browse.php', 'same', 'all', 15, 'bright1.png'),
(64, 5, 'Inverters', 'pvsim_inverters_browse.php', 'same', 'all', 16, 'agency_48.png'),
(65, 5, 'Modules', 'pvsim_modules_browse.php', 'same', 'all', 16, 'solar15.png'),
(66, 3, 'Project Templates', 'browse_templates.php', 'same', 'all', 18, 'education31.png'),
(67, 3, 'Financing', 'financing_browse.php', 'same', 'all', 6, 'icon_dollar_sign.png'),
(68, 1, 'Reports', 'query_browse.php', 'same', 'mng', 15, 'man216.png'),
(69, 3, 'Tabs', 'dashboard_tab_browse.php', 'same', 'mng', 8, 'general_reports_48.png'),
(70, 1, 'Leads', 'leads_browse.php', 'same', 'all', 1, 'businessmen18.png'),
(71, 1, 'Pipeline', 'pipeline.php', 'same', 'all', 1, 'business133.png'),
(72, 1, '2W Email Schedule', 'crm_scheduler.php', 'same', 'mng', 15, 'opened4.png'),
(73, 1, 'My activities', 'crm_my_activity.php', 'same', 'all', 1, 'icon_computer_desk.png');

-- --------------------------------------------------------

--
-- Table structure for table `dashboardgroups`
--

CREATE TABLE `dashboardgroups` (
  `groupid` double NOT NULL,
  `groupdescription` varchar(128) NOT NULL,
  `grouppriority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dashboardgroups`
--

INSERT INTO `dashboardgroups` (`groupid`, `groupdescription`, `grouppriority`) VALUES
(1, 'Opportunity Management', 1),
(3, 'Configuration', 3),
(4, 'Electric Rates', 2),
(5, 'PVSim', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dashboardtabs`
--

CREATE TABLE `dashboardtabs` (
  `tab_id` double NOT NULL,
  `tab_group` varchar(64) NOT NULL,
  `tab_label` varchar(132) NOT NULL,
  `tab_iconPath` varchar(255) NOT NULL,
  `tab_link` varchar(255) NOT NULL,
  `tab_showActive` blob NOT NULL,
  `tab_lastUpdate` datetime NOT NULL,
  `tab_lastUpdateBy` double NOT NULL,
  `tab_sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dashboardtabs`
--

INSERT INTO `dashboardtabs` (`tab_id`, `tab_group`, `tab_label`, `tab_iconPath`, `tab_link`, `tab_showActive`, `tab_lastUpdate`, `tab_lastUpdateBy`, `tab_sequence`) VALUES
(1, 'Opportunities', 'Edit', '', 'crm_opportunities_edit.php', 0x63726d5f6f70706f7274756e69746965735f656469742e706870, '2015-02-16 12:27:35', 1, 10),
(2, 'Opportunities', 'Meters', '', 'meters_browse.php', 0x6d65746572735f62726f7773652e7068702c6d65746572735f656469742e706870, '2015-02-16 17:58:50', 1, 20),
(3, 'Opportunities', 'Arrays', '', 'arrays_browse.php', 0x6172726179735f62726f7773652e7068702c6172726179735f656469742e706870, '2015-02-16 17:58:30', 1, 30),
(4, 'Opportunities', 'Proposal', '', 'proposals_browse.php', 0x70726f706f73616c735f62726f7773652e7068702c70726f706f73616c735f656469742e706870, '2015-02-16 17:57:59', 1, 40),
(5, 'Opportunities', 'Files', '', 'files_browse.php', 0x66696c65735f62726f7773652e706870, '2015-02-16 11:57:34', 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_functions`
--

CREATE TABLE `dashboard_functions` (
  `dad_id` double NOT NULL,
  `dad_page` varchar(255) NOT NULL,
  `dad_allowDelete` tinyint(1) NOT NULL,
  `dad_allowEdit` tinyint(1) NOT NULL,
  `dad_allowInsert` tinyint(1) NOT NULL,
  `dad_allowOpen` tinyint(1) NOT NULL,
  `dad_lastUpdate` datetime NOT NULL,
  `dad_userId` double NOT NULL,
  `dad_lastUpdateBy` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dashboard_functions`
--

INSERT INTO `dashboard_functions` (`dad_id`, `dad_page`, `dad_allowDelete`, `dad_allowEdit`, `dad_allowInsert`, `dad_allowOpen`, `dad_lastUpdate`, `dad_userId`, `dad_lastUpdateBy`) VALUES
(1, 'modules_edit.php', 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 0),
(2, 'inverters_edit.php', 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 0),
(3, 'racking_edit.php', 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 0),
(4, 'monitoring_edit.php', 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `masterTemplate`
--

CREATE TABLE `masterTemplate` (
  `tm_id` double NOT NULL,
  `tm_name` varchar(64) NOT NULL,
  `tm_duration` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masterTemplate`
--

INSERT INTO `masterTemplate` (`tm_id`, `tm_name`, `tm_duration`) VALUES
(1, 'Difficult Install', '76'),
(2, 'Sunpower Easy Install', '119'),
(3, 'Large Install', '76'),
(4, 'Medium Complexity Install', '72');

-- --------------------------------------------------------

--
-- Table structure for table `pv_arrays`
--

CREATE TABLE `pv_arrays` (
  `pva_id` double NOT NULL,
  `pva_opportunityId` double NOT NULL,
  `pva_proposalGroup` varchar(64) NOT NULL,
  `pva_moduleId` double NOT NULL,
  `pva_inverterId` double NOT NULL,
  `pva_inverterQty` int(11) NOT NULL,
  `pva_rackingId` double NOT NULL,
  `pva_monitoringId` double NOT NULL,
  `pva_stringSize` int(11) NOT NULL,
  `pva_name` varchar(255) NOT NULL,
  `pva_tilt` int(11) NOT NULL,
  `pva_azimuth` int(11) NOT NULL,
  `pva_moduleCount` int(11) NOT NULL,
  `pva_layoutModuleCount` int(11) NOT NULL,
  `pva_kWp` decimal(6,1) NOT NULL,
  `pva_estimatedKWh` decimal(10,0) NOT NULL,
  `pva_availability` decimal(6,3) NOT NULL,
  `pva_description` varchar(255) NOT NULL,
  `pva_moduleOnOff` blob NOT NULL,
  `pva_areaLatLon` blob NOT NULL,
  `pva_status` varchar(32) NOT NULL,
  `pva_derate` decimal(6,4) NOT NULL,
  `pva_lat` varchar(16) NOT NULL,
  `pva_apiDataSet` varchar(64) NOT NULL,
  `pva_lon` varchar(16) NOT NULL,
  `pva_trackMode` varchar(16) NOT NULL,
  `pva_kwhPerKwp` decimal(12,4) NOT NULL,
  `pva_areaSqft` int(11) NOT NULL,
  `pva_monthlyKwh` blob NOT NULL,
  `pva_hourlyKwh` blob NOT NULL,
  `pva_monthlySolarRadiation` blob NOT NULL,
  `pva_forecastSource` varchar(128) NOT NULL,
  `pva_meteoStationInformation` varchar(255) NOT NULL,
  `pva_apiVersion` varchar(255) NOT NULL,
  `pva_forecastDate` datetime NOT NULL,
  `pva_meterId` double NOT NULL,
  `pva_pricePerWatt` decimal(12,4) NOT NULL,
  `pva_pricePerKwh` decimal(10,4) NOT NULL,
  `pva_surfaceSqft` int(11) NOT NULL,
  `pva_isPortrait` tinyint(1) NOT NULL,
  `pva_includeScopeInProposal` tinyint(1) NOT NULL,
  `pva_scopePanelUpgrade` int(11) NOT NULL,
  `pva_scopeHomeRun` int(11) NOT NULL,
  `pva_scopeTrenching` int(11) NOT NULL,
  `pva_scopeMonitoring` int(11) NOT NULL,
  `pva_scopeRacking` int(11) NOT NULL,
  `pva_scopeInvererToMeterRun` int(11) NOT NULL,
  `pva_scopePanelsToInverterRun` int(11) NOT NULL,
  `pva_scopeWireRuns` int(11) NOT NULL,
  `pva_scopeAreaSteepness` int(11) NOT NULL,
  `pva_scopePlanes` int(11) NOT NULL,
  `pva_scopeArrayAccess` int(11) NOT NULL,
  `pva_scopeInstalledOn` int(11) NOT NULL,
  `pva_scopeExclusions` blob NOT NULL,
  `pva_scopeInclusions` blob NOT NULL,
  `pva_scopeAssumptions` blob NOT NULL,
  `pva_scopePermitFees` int(11) NOT NULL,
  `pva_scopeRoofStructuralEngineering` int(11) NOT NULL,
  `pva_monthlyShadingPercent` varchar(255) NOT NULL,
  `pva_lastUpdate` datetime NOT NULL,
  `pva_lastUpdateBy` double NOT NULL,
  `pva_residentialPercent` decimal(5,2) NOT NULL,
  `pva_equipmentCostPerWatt` decimal(6,4) NOT NULL,
  `pva_linkToLayout` varchar(255) NOT NULL,
  `pva_agriculturalPercent` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_arrays`
--

INSERT INTO `pv_arrays` (`pva_id`, `pva_opportunityId`, `pva_proposalGroup`, `pva_moduleId`, `pva_inverterId`, `pva_inverterQty`, `pva_rackingId`, `pva_monitoringId`, `pva_stringSize`, `pva_name`, `pva_tilt`, `pva_azimuth`, `pva_moduleCount`, `pva_layoutModuleCount`, `pva_kWp`, `pva_estimatedKWh`, `pva_availability`, `pva_description`, `pva_moduleOnOff`, `pva_areaLatLon`, `pva_status`, `pva_derate`, `pva_lat`, `pva_apiDataSet`, `pva_lon`, `pva_trackMode`, `pva_kwhPerKwp`, `pva_areaSqft`, `pva_monthlyKwh`, `pva_hourlyKwh`, `pva_monthlySolarRadiation`, `pva_forecastSource`, `pva_meteoStationInformation`, `pva_apiVersion`, `pva_forecastDate`, `pva_meterId`, `pva_pricePerWatt`, `pva_pricePerKwh`, `pva_surfaceSqft`, `pva_isPortrait`, `pva_includeScopeInProposal`, `pva_scopePanelUpgrade`, `pva_scopeHomeRun`, `pva_scopeTrenching`, `pva_scopeMonitoring`, `pva_scopeRacking`, `pva_scopeInvererToMeterRun`, `pva_scopePanelsToInverterRun`, `pva_scopeWireRuns`, `pva_scopeAreaSteepness`, `pva_scopePlanes`, `pva_scopeArrayAccess`, `pva_scopeInstalledOn`, `pva_scopeExclusions`, `pva_scopeInclusions`, `pva_scopeAssumptions`, `pva_scopePermitFees`, `pva_scopeRoofStructuralEngineering`, `pva_monthlyShadingPercent`, `pva_lastUpdate`, `pva_lastUpdateBy`, `pva_residentialPercent`, `pva_equipmentCostPerWatt`, `pva_linkToLayout`, `pva_agriculturalPercent`) VALUES
(1, 5, 'Mitsubishi', 13, 2, 1, 3, 6, 12, 'Barn Ground Mount', 20, 180, 1325, 0, '351.1', '563696', '0.000', '', '', '', '', '0.8400', '39.806795', 'tmy3', '-121.849768', '0', '1605.4002', 0, 0x37382e3037313133363437343630392c38302e3035323734323030343339352c3132382e31333135373635333830392c3135362e34333835323233333838372c3138392e34313839333030353337312c3138382e38383930353333343437332c3138392e32343230383036383834382c3137352e39323533393937383032372c3135322e37343930353339353530382c3132342e37313537373435333631332c37362e3134313333343533333639312c36352e3632343539353634323039, 0x302c302c302c302c302c302c302c302e3336392c323732342e38392c363936372e3339362c31303133372e3039312c31323639302e3638332c31333433372e3134352c31323834372e3538392c31303932322e3638362c373539372e3338382c3734352e38392c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3235332e3833392c333336312e3338342c373336332e36372c393430332e3333372c31313532382e3633322c31323232382e3631382c31323430322e3137312c31303333312e3735332c373934302e31372c353232352e3932312c31332e3235342c302c302c302c302c302c302c302c302c302c302c302c302c312e3635392c323332362e3730372c383330322e3836372c31323930352e3833362c31343938362e3032342c31383139332e3839362c31393338362e3035312c31373331372e3037322c31353234372e30392c31313230362e3330352c373137322e3636312c313038352e3431392c302c302c302c302c302c302c302c302c302c302c302c302c3538302e3435352c363834322e3533352c31323733352e3835332c31363838372e3438382c31393936322e3737382c32313432332e3138352c32303432352e32322c31393337342e3835372c31353634382e3835322c31313634382e31322c373530312e3937332c333430372e3130392c302e3034382c302c302c302c302c302c302c302c302c302c302c312e3134352c323939302e3137392c383938352e3930362c31343635332e3633382c31393438372e3834362c32313637372e3130352c32333832362e3736332c32343339352e32382c32323738332e3331342c32303334332e3336382c31353635372e30372c393633382e3232312c343736382e3538332c3231302e3634392c302c302c302c302c302c302c302c302c302c302c342e3432372c333435322e35392c393238332e3634392c31343734342e33322c31383830332e3233372c32313434372e3837362c32323935392e3330322c32333436382e3536362c32323337382e3634392c31393333312e3833392c31363031382e3935372c31303733392e3639352c353435382e3533332c3739372e3434362c302c302c302c302c302c302c302c302c302c302c302e3238382c323434352e3332322c383437382e3630382c31343137372e3835332c31383734302e3935392c32313732332e3136332c32333334332e3633372c32333733352e3234362c32323334302e3432322c32303135332e3032322c31363635322e3531312c31303934312e3430372c353735362e3439372c3735332e3234382c302c302c302c302c302c302c302c302c302c302c302c3632362e3231342c373333332e32342c31323936372e3736362c31373937362e3530312c32313038312e3934332c32323439372e3630392c32323933332e3732332c32313835382e3338342c31383938322e312c31353139362e3937382c393936302e3039312c343435322e3130382c35382e3736312c302c302c302c302c302c302c302c302c302c302c302c37342e3336352c353930302e3738362c31313933312e3939382c31363938382e3037322c31393632372e3636312c32303435392e3137392c32313039302e3536372c31393235372e3831392c31363937372e3635332c31323039342e3139352c373033372e3330352c313330392e3438392c302c302c302c302c302c302c302c302c302c302c302c302c312e37382c343034342e3832382c393336302e3335362c31343237322e3032322c31373631302e3435312c31383739382e3536372c31383234382e3235332c31363638372e3733322c31333537332e3933312c383835312e33342c333236362e3336322c302e3133322c302c302c302c302c302c302c302c302c302c302c302c302c302c3632342e3733312c353133362e3437342c383333352e3236332c31303832382e3136392c31323837362e3530392c31323731342e3537372c31303932362e3935392c393431392e3835372c353232392e3334392c34392e3437322c302c302c302c302c302c302c302c302c302c302c302c302c302c302c332e3938342c323839392e3830362c363332372e3532352c393630382e3837332c31303939302e3033372c31313539392e3134342c31303930302e3531312c383135302e332c353132362e3630372c31372e3833322c302c302c302c302c302c302c30, 0x332e303032373039363237313531352c332e343931313232393631303434332c342e383939393037313132313231362c362e333432303439353938363933382c372e353938313934313232333134352c382e303532353633363637323937342c372e393638353231353935303031322c372e333532343537353233333435392c362e353135333235353436323634362c342e393930343732333136373431392c332e313930333438383633363031372c322e36323233333439353731323238, 'PV-Watts-V4', 'Location: 725910, Lat: 40.150001525879, Lon: -122.25, City: \"RED BLUFF MUNICIPAL ARPT\", State: CA, Elevation: 106, Distance: 51250, File name: , Timezone offset: -8, ', '4.2.1, 34, Unix 64 bit GNU/C++ Aug 18 2014 13:38:36', '2014-11-24 11:47:35', 4, '0.0000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '0.0000', '', '0.00'),
(2, 5, 'Mitsubishi', 13, 2, 1, 3, 4, 12, 'Roof mount', 10, 180, 100, 0, '26.5', '39957', '0.000', '', '', '', '', '0.8300', '39.806746', 'tmy3', '-121.849746', '0', '1507.7985', 0, 0x36342e3231323230333937393439322c37302e3039383030373230323134382c3131372e363332353337383431382c3135302e32343837303330303239332c3138372e353031363738343636382c3139302e37373634323832323236362c3138392e38323435353434343333362c3137302e38373433383936343834342c3134312e31363838353337353937372c3130392e34333236373035393332362c36332e3139333732353538353933382c35322e383334373238323430393637, 0x302c302c302c302c302c302c302c302c313738392e3930362c353533322e3834332c383433372e3338362c31303735322e3937332c31313339372e3632362c31303739332e3935342c383936362e3637312c353938342e3339362c3535362e3433362c302c302c302c302c302c302c302c302c302c302c302c302c302c302c38342e3831372c323635382e3230362c363332372e3535362c383330352e3532382c31303333392e3236392c31303935382e3231372c31313037382e3930312c393134342e3431332c363833302e3639332c343336362e3935322c332e3435352c302c302c302c302c302c302c302c302c302c302c302c302c312e3638392c313934312e3537322c373533392e3532312c31313738322e3736352c31333834372e36312c31363736392e3437332c31373838322e3837342c31353937392e3437362c31343035332e3435392c31303235382e3939322c363531392e3734342c313035352e3337392c302c302c302c302c302c302c302c302c302c302c302c302c3831322e3231352c363737312e3031392c31323233302e3437322c31363131302e3639352c31383938332e3439382c32303333332e3833352c31393430382e3039352c31383435322e3436372c31353031312e3139362c31313231332e3431372c373336362e3833312c333535342e3737322c302e3138322c302c302c302c302c302c302c302c302c302c302c332e3032332c333533342e3339332c393333382e3130322c31343632372e3732382c31393037392e3136362c32313037332e3039362c32333036392e3033342c32333631312e3434332c32323132302e3331332c31393837352e3432352c31353530342e3533372c393837352e3730342c353333332e3836372c3435352e3936322c302c302c302c302c302c302c302c302c302c302c31352e3838332c343234332e3237362c393931332e3439332c31353032312e3735372c31383635352e3739362c32313038382e3331342c32323437352e3932392c32323935332e3331312c32313936312e30322c31393130362e3837352c31363036352e3538372c31313139372e3532332c363231362e3638332c313836302e39312c302c302c302c302c302c302c302c302c302c302c312e3235342c333434382e3230352c393033332e3138312c31343239332e3737392c31383438362e3036382c32313234372e3133392c32323734312e3234312c32333039372e3138322c32313738382e3430312c31393737332e3939312c31363534392e3431382c31313235332e3435362c363434312e3637372c313636392e3538322c302c302c302c302c302c302c302c302c302c302c302c313235392e3439372c373434392e35372c31323634312e3432322c31373331332e3032342c32303139362e3132382c32313530302e3431352c32313931322e3935322c32303931332e3031342c31383233332e32392c31343731302e32322c393838312e3737352c343734362e3237352c3131362e3639322c302c302c302c302c302c302c302c302c302c302c302c38302e3534392c353431352e38382c31303934392e3933312c31353637372e3738352c31383134322e3331342c31383933302e34322c31393530382e3038322c31373831332e3433382c31353638342e3535332c31313131322e3832332c363532362e3835322c313332362e3239382c302c302c302c302c302c302c302c302c302c302c302c302c302e3436332c333134342e3036382c373939352e3334352c31323437332e3837322c31353632392e3134352c31363738302e3830382c31363331392e3934332c31343835332e3735322c31313837382e3838332c373537382e3130342c323737382e3234392c302e3032382c302c302c302c302c302c302c302c302c302c302c302c302c302c3133382e3734392c333934392e3739322c363833312e3031312c393136372e3231342c31313039382e3534372c31303931372e36392c393139392e3232362c373737382e3133342c343130372e3135362c362e3137332c302c302c302c302c302c302c302c302c302c302c302c302c302c302c302e3232332c313932372e32372c343934382e3236382c373833332e3839382c393130372e3631352c393636372e3434322c383933342e3635352c363534362e3630342c333836372e3733382c302e3939392c302c302c302c302c302c302c30, 0x322e353632393432303238303435372c332e313234373730343032393038332c342e353636343134333536323331372c362e313539343439313030343934342c372e3539383333313435313431362c382e323030393334343130303935322c382e303433363431303930333933312c372e323034373738363731323634362c362e303937363235373332343231392c342e343631323439333531353031352c322e373432373734393633333738392c322e32303839373635303731383639, 'PV-Watts-V4', 'Location: 725910, Lat: 40.150001525879, Lon: -122.25, City: \"RED BLUFF MUNICIPAL ARPT\", State: CA, Elevation: 106, Distance: 51255, File name: , Timezone offset: -8, ', '4.2.1, 34, Unix 64 bit GNU/C++ Aug 18 2014 13:38:36', '2014-11-24 11:47:21', 2, '4.0000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '0.0000', '', '0.00'),
(3, 5, 'Sunpower', 12, 3, 1, 4, 6, 12, 'Sunpower Array', 15, 180, 100, 0, '32.7', '48200', '100.000', '', '', '', '', '0.8300', '39.806847', 'TM3', '-121.850612', '0', '1474.0000', 0, 0x39332e34342c38382e37372c3132342e35392c3133352e36352c3134392e34352c3134322e33342c3134352e35382c3134362e31362c3134332e33312c3133302e38392c39312e33312c38322e3531, 0x302c302c302c302c302c302c302c38322e3636333630383536323639312c343433362e303634323230313833352c383531332e363134363738383939312c31313431362e3339313433373330392c31343134382e3038353632363931312c31353030332e3030333035383130342c31343633312e3431323834343033372c31333230322e3931313331343938352c31303333362e3731383635343433342c313637322e323233323431353930322c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313134342e3132323332343135392c343433322e373234373730363432322c373936352e383833373932303438392c393733372e343631373733373030332c31313730322e3936363336303835362c31323438362e3839393038323536392c31323932322e37333038383638352c31313131332e37393230343839332c393430372e363339313433373330392c373132342e343036373237383238372c3733352e37303333363339313433372c302c302c302c302c302c302c302c302c302c302c302c302c37352e3133343535363537343932342c323735382e3235303736343532362c373839352e393230343839323936362c31323033392e3636303535303435392c31333835372e3237323137313235342c31363839322e3137373337303033312c31383039302e3134303637323738332c31363631392e3136323037393531312c31353039302e3839363032343436352c31313536312e3732313731323533382c383237312e373637353834303937392c313433392e363336303835363236392c302c302c302c302c302c302c302c302c302c302c302c302c3838342e30363732373832383734362c343937322e313436373838393930382c31303235392e3137373337303033312c31343039392e3932333534373430312c31363934332e37303033303538312c31383335312e3437343030363131362c31373634342e3132383434303336372c31373037352e3935373138363534342c31333939372e3032373532323933362c31303635332e3330353831303339382c373137382e363636363636363636372c333530352e383430393738353933332c38382e3239303531393837373637362c302c302c302c302c302c302c302c302c302c302c3336322e30333636393732343737312c313431372e373935313037303333362c353333372e363435323539393338382c31303339302e3436343833313830342c31343837322e3831303339373535342c31373039312e3539363333303237352c31393132392e3139383737363735382c31393738362e3232303138333438362c31383732392e3234313539303231342c31363837312e3639373234373730362c31323939312e3736373538343039382c383034372e323431353930323134312c333738312e393134333733303838372c3634332e33333032373532323933362c302c302c302c302c302c302c302c302c302c302c3538342e30343538373135353936332c313433382e313535393633333032382c343831332e393732343737303634322c393638352e3132383434303336372c31333731342e3134333733303838372c31363330372e3035313938373736382c31373834332e3631373733373030332c31383530352e3434333432353037362c31373735312e3532393035313938382c31353436382e3430393738353933332c31323633372e3430333636393732352c383231382e393230343839323936362c333739392e383238373436313737342c313536392e303736343532353939342c302c302c302c302c302c302c302c302c302c302c3334352e303234343634383331382c313236322e3439353431323834342c343435302e313133313439383437312c393531372e333432353037363435332c31333932382e3732373832383734362c31363639352e3739353130373033342c31383338312e3934343935343132382c31383835382e3136353133373631352c31373932392e3539363333303237352c31363239392e3834373039343830312c31333431392e3639343138393630322c383731302e303931373433313139332c343233342e333438363233383533322c313534382e313130303931373433312c302c302c302c302c302c302c302c302c302c302c302c3836312e32323632393936393431392c343630332e343337333038383638352c393735322e303435383731353539362c31343334352e3131393236363035352c31373334382e3735353335313638322c31383733332e3232393335373739382c31393138322e32363931313331352c31383532382e3834373039343830312c31363335352e3132383434303336372c31333237372e3132353338323236332c383932362e393239363633363038362c343035362e383037333339343439352c3139332e35313938373736373538342c302c302c302c302c302c302c302c302c302c302c302c3637352e37323738323837343631382c353137382e303234343634383331382c31303630322e3831333435353635372c31353230372e3032343436343833322c31373730352e3132383434303336372c31383537362e3832353638383037332c31393231342e3839363032343436352c31373932312e3736373538343039382c31363237352e3735353335313638322c31323239392e3035313938373736382c373931302e343337333038383638352c313733382e333336333931343337332c302c302c302c302c302c302c302c302c302c302c302c302c3232302e38313935373138363534342c343930392e373634353235393933392c393738322e353533353136383139362c31343330362e3132353338323236332c31373530312e3631313632303739352c31383634352e3036343232303138332c31383237352e3833343836323338352c31373139342e3331343938343730392c31343634392e3331313932363630362c31303636322e3531303730333336342c343631312e343730393438303132322c3132372e34303336363937323437372c302c302c302c302c302c302c302c302c302c302c302c302c302c323234382e323735323239333537382c363637372e363339313433373330392c393638302e353139383737363735382c31313839302e3630383536323639312c31333836302e3936303234343634382c31333938332e3531333736313436382c31323536332e3439353431323834342c31313530302e3838333739323034392c373536312e383139353731383635342c313334302e393837373637353834312c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3230322e32363931313331343938352c343734342e353834303937383539332c383031302e3735353335313638322c31313134362e35323239333537382c31323636382e3134333733303838372c31333337382e3937323437373036342c31323937312e3234313539303231342c31303437342e3234343634383331382c373839302e363438333138303432382c313032362e303435383731353539362c302c302c302c302c302c302c30, '', 'CSV-8761row-Import', 'Sac', 'Manual Import', '2014-11-18 08:57:19', 3, '4.0000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '2014-11-18 08:57:19', 1, '0.00', '0.0000', '', '0.00'),
(4, 5, 'SunPower', 11, 3, 2, 4, 6, 12, 'Eric 01 ', 15, 180, 416, 0, '143.5', '222293', '100.000', '', '', '', '', '0.8600', '39.806847', 'TMY3', '-121.850612', '0', '1549.0800', 0, 0x36302e33362c36392e31372c3131362e39372c3135352e35372c3139362e39362c3230342e38322c3230332e37352c3137392e38332c3134332e33352c3130362e35332c36312e34362c35302e3331, 0x302c302c302c302c302c302c302c31382e3735343030363936383634312c323633372e363731373737303033352c353932352e373032343339303234342c383430322e333734323136303237392c31303236362e3739353132313935312c31303434312e3135383838353031372c393630322e3631383831353333312c373634362e333139383630363237322c343833362e393736333036363230322c3537382e36333833323735323631332c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3931352e36323239393635313536382c333635332e353136333736333036362c363835322e323236343830383336322c383439362e313935313231393531322c31303135312e3436333431343633342c31303438352e3038373130383031342c31303332312e3839353437303338332c383431372e343030363936383634312c363039342e3531383436363839392c333639312e353431343633343134362c39342e3331393136333736333036362c302c302c302c302c302c302c302c302c302c302c302c302c3330392e32313630323738373435362c333534372e373339333732383232332c383631302e323637353935383138382c31323332322e3335353430303639372c31333932352e3033313335383838352c31363432362e38373830343837382c31373135342e34333930323433392c31353137312e38313138343636392c31333039392e3931363337363330372c393338302e32363237313737372c353930362e3231323534333535342c313131312e393031303435323936322c302c302c302c302c302c302c302c302c302c302c302c372e393032343339303234333930322c333037322e353932333334343934382c383631342e303537383339373231332c31333732382e3335353430303639372c31363937342e3438373830343837382c31393434372e3732313235343335352c32303336392e3334343934373733352c31393133372e3238393139383630362c31373939332e3333313031303435332c31343439322e3732343733383637362c31303830342e3734353634343539392c373131352e323532393631363732352c333730302e3734393832353738342c3131362e32353932333334343934382c302c302c302c302c302c302c302c302c302c302c313233352e353139313633373633312c353836372e373532363133323430342c31313639342e3231393531323139352c31363334312e3832353738333937322c32303335382e3730333833323735332c32313837372e3532363133323430342c32333439392e3734323136303237392c32333538362e3336393333373937392c32313833322e3630363237313737372c31393335312e3237353236313332342c31343936382e3039303539323333342c393735332e383630363237313737372c353536332e3331383436363839392c313032372e343037363635353035322c302c302c302c302c302c302c302c302c302c302c323039392e333537343931323839322c363837372e353430303639363836342c31323538302e3332373532363133322c31373032352e3630323738373435362c32303234302e3832393236383239332c32323233342e3239393635313536382c32333232332e3739303934303736372c32333332392e3534373033383332382c32313939362e3539393330333133362c31383937372e3630323738373435362c31353737332e3534373033383332382c31313135322e3038333632333639332c363531362e323537383339373231332c323739342e383034383738303438382c302c302c302c302c302c302c302c302c302c302c313239372e3937343931323839322c363035322e3131383436363839392c31313735392e3435363434353939332c31363531362e3334383433323035362c32303238322e3235373833393732312c32323436382e3431313134393832362c32333634382e3334313436333431352c32333438362e3533363538353336362c32313832332e3931363337363330372c31393536382e3739343432353038372c31363231322e3438303833363233372c31313231302e3730303334383433322c363638362e353932333334343934382c323733322e303332303535373439312c302c302c302c302c302c302c302c302c302c302c3133362e373537343931323839322c343235342e303233363933333739382c393932372e393430303639363836342c31343535302e3134363334313436332c31383639302e33313335383838352c32313230392e3031303435323936322c32323036352e3432383537313432392c32313938302e3232323939363531362c32303634312e3835333635383533372c31373731392e31383436363839392c31343036372e31323139353132322c393439302e393333373937393039342c343831382e353034353239363136372c3237362e31323936313637323437342c302c302c302c302c302c302c302c302c302c302c302c323033322e353836303632373137382c373139372e363435393933303331342c31323235352e3031303435323936322c31363430362e3438303833363233372c31383434302e3336323336393333382c31383838332e3730303334383433322c31383936352e3035323236343830382c31373032342e3932363832393236382c31343631302e3230393035393233332c31303230342e3330343532393631372c353936332e383335353430303639372c313336302e393036363230323039312c302c302c302c302c302c302c302c302c302c302c302c302c3239302e35303137343231363032382c343438382e373936353135363739342c383831352e343133323430343138312c31323735352e3738323537383339372c31353335352e3233333434393437372c31363133382e3737333531393136342c31353339322e3336323336393333382c31333633332e3536373934343235312c31303636312e3932363832393236382c363631362e353535343030363936392c323338312e393037333137303733322c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313232392e313236313332343034322c343539362e313137303733313730372c373136352e363138313138343636392c393037362e303733383637353935382c31303439322e3332343034313831322c31303133392e38383634313131352c383339342e3934333535343030372c363731392e333037333137303733322c333535342e393736333036363230322c39332e3337363330363632303230392c302c302c302c302c302c302c302c302c302c302c302c302c302c302c36322e3431313134393832353738342c323638372e333635313536373934342c353332392e363638323932363832392c373730392e383131383436363839392c383730352e363035353734393132392c383931372e3535363039373536312c373932362e363930353932333334352c353637372e313431343633343134362c333239302e313035393233333434392c302c302c302c302c302c302c302c30, '', 'CSV-8761row-Import', 'Red_Bluff_Municipal_Arpt', 'Manual Import', '2014-11-24 12:04:57', 1, '3.3500', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '2014-11-24 12:04:57', 1, '0.00', '0.0000', '', '0.00'),
(5, 6, 'Normal', 13, 1, 2, 0, 0, 15, 'South West', 20, 140, 86, 0, '22.8', '35368', '100.000', '', '', '', '', '0.8300', '38.8688526', 'tmy3', '-121.292281', '0', '1551.9042', 0, 0x35302e3631353037343135373731352c37312e3935393030373236333138342c3133352e37383430373238373539382c3136342e32393636343631313831362c3138332e36313631343939303233342c3138352e39393536363635303339312c3138382e35373836373433313634312c3138302e31343334393336353233342c3134342e33343131373132363436352c3130372e39323533313538353639332c37382e3237363135333536343435332c36302e333732383231383037383631, 0x302c302c302c302c302c302c302c31312e3436342c313539392e3435322c343739332e3139372c373531342e3737382c393634372e3135342c393332302e39342c383939352e38352c353738302e3030372c323931302e3534312c34312e3639332c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3933382e3838312c353135382e3530392c373838332e3835352c31303335302e3134312c31323232372e3932342c31313832352e3036352c393731312e39392c373335352e3730312c343530322e3530322c323030342e3434382c302e3030352c302c302c302c302c302c302c302c302c302c302c302c302c3437352e32382c363039392e3939312c31313932372e3135382c31363430382e3734372c31393036302e3437332c31393439332e3337372c31393330312e3336382c31363937372e3931382c31333435302e3239322c383434372e3338322c333931362e3039342c3232352e3938362c302c302c302c302c302c302c302c302c302c302c302c332e32322c343332362e3039372c31313038332e3834332c31363435342e3139372c31393333382e31342c32313334362e3437372c32313431352e39312c32303934312e3134312c31383632342e3333312c31343830322e3837392c31303333322e3437362c343832352e3933362c3830312e3932332c302c302c302c302c302c302c302c302c302c302c302c3330302e31312c373032372e31332c31333036382e3131372c31373839342e3630332c32313039372e3436312c32333035342e3138312c32333138362e3231322c32323934332e3032362c32303139332e3138382c31353936332e3334342c31313139382e3738312c353938322e3035352c313633342e3739382c37332e3130352c302c302c302c302c302c302c302c302c302c302c3630372e38392c373332342e3336312c31333531382e3130392c31373939352e3931372c32303831352e3234382c32323333342e3131312c32333231322e3731352c32323731302e3532382c32303136322e33382c31363535302e3438362c31313831372e3237322c363437352e3234312c323035382e3932352c3431322e3438382c302c302c302c302c302c302c302c302c302c302c3133392e3832332c363336302e3637382c31323930322e3230332c31383034312e3437332c32303939302e3235352c32333337322e3434352c32333837312e3535342c32323938312e3330382c32303833312e3539332c31373130382e3335342c31323432312e3931392c363932392e3332332c323239312e3933342c3333352e3933372c302c302c302c302c302c302c302c302c302c302c322e3834372c353238332e3636322c31323038342e3831352c31373634332e3238342c32313335352e3334312c32333331332e3934312c32333738352e3331332c32323539322e3636382c32303230372e3839372c31363131342e3736322c31313234332e3333342c353532362e3632352c3938392e3031362c302c302c302c302c302c302c302c302c302c302c302c302c323633352e3531332c383837312e3137342c31343331362e3036322c31373636382e3430382c32303034382e34382c31393832312e3438312c31383932332e3032342c31363931302e31392c31333235362e3930362c383330302e3036392c333337382e3731332c3231312e3136312c302c302c302c302c302c302c302c302c302c302c302c302c3139392e3438362c353937312e39362c31313039372e3938312c31333738392e3137392c31363133392e3931342c31363330382e3739332c31343836372e3936312c31333132322e3531342c31303136332e30382c353431392e3537342c3834342e39322c302c302c302c302c302c302c302c302c302c302c302c302c302c302c323133382e3439312c363736352e3930372c31303333362e3834342c31333437352e3930322c31343136362e3932372c31323331332e3638392c393732372e3337372c363433302e392c323932302e3037392c302e3031382c302c302c302c302c302c302c302c302c302c302c302c302c302c302c34312e3236352c333234312e3636362c363838322e3035392c393435392e3737342c31313236312e3336352c31313339392e3335382c393032392e3030372c363039352e37332c323936322e3630322c302c302c302c302c302c302c302c30, 0x322e313233343130343633333333312c332e313634333738363433303335392c352e343039323232313236303037312c362e383130313235383237373839332c372e343730373232363735333233352c382e303134353539373435373838362c372e3837373233363336363237322c372e343338353437363131323336362c362e313132383737383435373634322c342e333930323131313035333436372c332e323136383735353533313331312c322e343138343433343431333931, 'PV-Watts-V4', 'Location: 724839, Lat: 38.700000762939, Lon: -121.58300018311, City: \"SACRAMENTO METROPOLITAN AP\", State: CA, Elevation: 7, Distance: 31370, File name: , Timezone offset: -8, ', '4.2.1, 34, Unix 64 bit GNU/C++ Aug 18 2014 13:38:36', '2015-01-13 07:18:57', 6, '4.0000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '0.0000', '', '0.00'),
(6, 6, 'Normal', 13, 1, 2, 4, 6, 15, 'South East', 20, 225, 86, 0, '22.8', '34761', '100.000', '', '', '', '', '0.8300', '38.8688526', 'tmy3', '-121.292281', '0', '1525.2573', 0, 0x35332e3231373436383236313731392c36392e3730313336323630393836332c3133302e383234393230363534332c3136312e343037363338353439382c3138302e36333833323039323238352c3138342e35383335343138373031322c3138372e39333535303130393836332c3137352e35303336303130373432322c3134302e33353734363736353133372c3130352e36373130323831333732312c37352e3137363231363132353438382c36302e323430323338313839363937, 0x302c302c302c302c302c302c302c302c3137332c323830362e3533342c353639362e3337332c383537342e3330362c393339352e3333392c31303336332e3839342c383131302e3537352c353834352e3336352c323235322e3038372c302c302c302c302c302c302c302c302c302c302c302c302c302c302c322e3832382c313536372e3738312c343636382e3937372c383035352e3631392c31303937312e3635362c31313836372e3333322c31303834312e3839352c393437392e3236322c373139312e3739342c343937322e3433382c38312e3735372c302c302c302c302c302c302c302c302c302c302c302c302c302e31312c3237392e3239382c353430362e3736352c31303930392e3836312c31353336332e3539352c31373831322e3330372c31393633372e3331312c31393331322e3933382c31373433362e3330312c31333739392e3536382c393330372e3133372c313535392e3735322c302c302c302c302c302c302c302c302c302c302c302c302c33362e3739312c323835362e372c383837322e3332312c31333833312e3836312c31373835322e3232392c31393936352e3934322c32313631342e3234382c32313338392e3935322c31393337392e3236342c31363835332e3434342c31323131372e362c363537362e32322c36312e3130332c302c302c302c302c302c302c302c302c302c302c302e3736322c3230392e3436372c343735362e3231312c31303535392e3833312c31353637302e39312c31393532352e3630382c32313832322e3733372c32333835302e3838342c32333235332e3633332c32303830352e3838332c31373933372e30352c31333539392e3330312c383033372e39312c3630382e3039332c302c302c302c302c302c302c302c302c302c302c322e3239392c3130392e3938322c343930342e3038342c31303532312e3131392c31353434342e3235362c31383836342e3535372c32313734342e3837382c32333436372e3935392c32333036312e3636342c32313237362e34392c31383531302e3536352c31343238322e3039342c383938392c333430342e3637362c302c302c302c302c302c302c302c302c302c302c302e3333342c3130392e3038382c343238302e3730392c31303034362e3933322c31353135322e3830352c31393438382e3233332c32323135312e3331322c32333534382e3538362c32333637322e3735312c32313932342e3437332c31393336392e3733312c31353131332e3333352c393730302e3331312c333337362e3930312c302c302c302c302c302c302c302c302c302c302c302c31382e3734342c333133362e3036392c393037342e3034392c31343932372e3832372c31393230332e3639362c32313939382e3634362c32333231302e3632372c32333136302e3839342c32313034322e3831362c31383331352e3432342c31333634382e3535392c373731352e3834372c35302e34382c302c302c302c302c302c302c302c302c302c302c302c332e3732372c313433312e3536352c373235382e3130392c31323331342e3630372c31363631322e3432322c31383534312e3631342c31393732392e3130352c31393834342e3538332c31383331322e33392c31353030352e3337392c393534322e3733382c313736312e3139382c302c302c302c302c302c302c302c302c302c302c302c302c302c3239312e3736352c353336392e3837332c393433392e3638382c31333433352e3030392c31353430352e3638372c31353734312e3738382c31353739332e3237342c31343833362e39362c31313038362e3234322c343235382e3438312c31322e3235382c302c302c302c302c302c302c302c302c302c302c302c302c302c31332e3833332c323939342e3031342c363835362e3633352c31313030372e3535312c31333331392e3533372c31333037392e3533342c31313939342c393638352e3136332c363037342e3231372c3135312e3734332c302c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3435332e3236332c343235352e3834382c373430372e3734322c31303233302e3735352c31313831302e3836372c31303832302e3233362c383939342e3635372c363038302e3035362c3138362e3832322c302c302c302c302c302c302c30, 0x322e323039303736363432393930312c332e303838363439373439373535392c352e323339353736383136353538382c362e373335313239383333323231342c372e333430343833313838363239322c372e393233393034343138393435332c372e383235343931393035323132342c372e3239343739383337343137362c352e393939333735333433333232382c342e333136363639393430393438352c332e313330323434343933343834352c322e34353636333034363833363835, 'PV-Watts-V4', 'Location: 724839, Lat: 38.700000762939, Lon: -121.58300018311, City: \"SACRAMENTO METROPOLITAN AP\", State: CA, Elevation: 7, Distance: 31370, File name: , Timezone offset: -8, ', '4.2.1, 34, Unix 64 bit GNU/C++ Aug 18 2014 13:38:36', '2015-01-13 07:19:28', 6, '3.7000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '0.0000', '', '0.00'),
(7, 6, 'Normal', 13, 1, 2, 4, 6, 15, 'North East', 20, 70, 86, 0, '22.8', '29656', '100.000', '', '', '', '', '0.8300', '38.8688526', 'tmy3', '-121.292281', '0', '1301.2601', 0, 0x32392e3139373830333439373331342c35302e3032323838343336383839362c3130362e38383238383837393339352c3134332e35383033303730303638342c3137342e33353438383839313630322c3138332e32383736353836393134312c3138312e32383133323632393339352c3136312e31373336373535333731312c3131352e33373136383838343237372c37352e3532333838373633343237372c34372e33373339383134373538332c33332e323039303837333731383236, 0x302c302c302c302c302c302c302c332e3436322c313134332e3935362c333439322e3832362c353237312e3639382c363337372e3630322c353835332e3638382c343730372e3338342c313931372e3031352c3431362e3231322c31332e3935392c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3734362e3037322c343231362e38372c363231362e3331372c383030302e3431332c393031362e3533392c383334302e36392c363237362e3136342c343135302e3139332c323136322e3035362c3839372e3535392c302e3030352c302c302c302c302c302c302c302c302c302c302c302c302c3933332e3731382c363332342e3335312c31313135392e3635312c31343534352e3534352c31363131352e3030322c31353834302e3336392c31343834392e3133392c31323035352e30342c383639342e3537362c343531372e3332342c313632322e3032332c3232362e3136312c302c302c302c302c302c302c302c302c302c302c302c38342e3435392c353936322e3835392c31323230382e3433372c31363337382e3734392c31383136312e3536392c31393139322e3631352c31383439382e3233372c31373435362e3737342c31343733312e3631332c31303733382e3639322c363730392e3733322c323637342e3037392c3738322e3431372c302c302c302c302c302c302c302c302c302c302c302c323938342e39342c393736352e3939342c31343936362e3136392c31383631302e3435332c32303730332e3533342c32313632372e3832332c32303936342e3337312c32303130322e3438382c31373230392e3431312c31323930342e3537382c383534342e3231342c343533302e3437312c313336372e3339322c37332e3131312c302c302c302c302c302c302c302c302c302c302c343230302e3432322c31303632322e3935342c31353937372e3632362c31393233332e38352c32303933372e3234372c32313438362e3936362c32313533382e3239342c32303433382e3331382c31373638372e3437322c31343034352e3938382c393634372e3938312c353238312e32382c313737362e3637382c3431322e352c302c302c302c302c302c302c302c302c302c302c323437362e39352c393332302e31322c31353238362e3330352c31393230392e3330352c32303938302e35362c32323331342e3037362c32313935352e3731312c32303435392e3732332c31373939342e32312c31343137372e3937322c393737372e3632322c353334362e3831372c313634352e3936362c3333352e3934332c302c302c302c302c302c302c302c302c302c302c3131342e3039342c373538332e3138312c31333738352e34312c31373939392e3536352c32303434372e3737322c32313239312e3430372c32303836332e3536372c31393037342e3930312c31363331362e3233342c31323039382e3038362c373630352e3038322c333236302e3031382c3733342e34322c302c302c302c302c302c302c302c302c302c302c302c302c333632302e34362c393133312e3437392c31333436382e3834352c31353732302e37332c31373031372e3937382c31363132352e3837322c31343633372e3830322c31313935332e3030332c383134332e3235392c343230332e3635332c313133372e3332362c3231312e32372c302c302c302c302c302c302c302c302c302c302c302c302c3330332e3838352c353338302e3834352c393334392e3637332c31313131382e3832312c31323439302e3739342c31313937342e32382c31303134312e3632372c373738362e3335322c343839382e3433382c313634392e3734392c3432392e3430342c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313239332e3730362c353033372e3037332c373439362e3730372c393430372e32352c393134342e3438312c373035322e36322c343636312e3632352c323437352e39362c3830342e3534352c302e3031382c302c302c302c302c302c302c302c302c302c302c302c302c302c302c372e3736342c323038352e3636332c343733392e3035382c363330392e3530392c363936302e3934372c363333382e3230342c343234312e3633352c313838332e3134362c3634332e3137352c302c302c302c302c302c302c302c30, 0x312e3431343834303232313430352c322e3334323736363034363532342c342e333136393933323336353431372c352e393733383037383131373337312c372e303334383837333133383432382c372e383131343234373332323038332c372e353238313639313535313230382c362e363630373836363238373233312c342e393435313139333830393530392c332e323036363030363636303436312c322e313438393531303533363139342c312e35333737353935343234363532, 'PV-Watts-V4', 'Location: 724839, Lat: 38.700000762939, Lon: -121.58300018311, City: \"SACRAMENTO METROPOLITAN AP\", State: CA, Elevation: 7, Distance: 31370, File name: , Timezone offset: -8, ', '4.2.1, 34, Unix 64 bit GNU/C++ Aug 18 2014 13:38:36', '2015-01-13 07:19:45', 6, '3.5000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '0.0000', '', '0.00'),
(8, 6, 'Standard-Efficiency', 13, 1, 20, 4, 5, 15, 'Nema', 20, 180, 3500, 0, '927.5', '1534772', '100.000', '', '', '', '', '0.8600', '38.8688526', 'tmy3', '-121.292281', '0', '1654.7402', 0, 0x35382e3838383636303433303930382c37382e3639383435353831303534372c3134352e37383139383234323138382c3137332e34373436323436333337392c3139312e38353335373636363031362c3139322e34333739383832383132352c3139362e31313534333237333932362c3138382e31393337343038343437332c3135342e30363239323732343630392c3131392e33373533303531373537382c38362e36303433323433343038322c36392e3235333136363139383733, 0x302c302c302c302c302c302c302c302e3937352c313234352e3333382c343434352e3037342c373536332e3434352c31303236352e3337332c31303433362e3137392c31303837312e3934312c373931322e3739352c353037372e3536382c313036392e3936362c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3139322e3038362c343037302e3434332c373233322e3338362c31303332312e3739372c31323834392e3537352c31333033342e3937352c31313238352e3631312c393331312e3534352c363439392e3231382c333839372e3535332c332e3233372c302c302c302c302c302c302c302c302c302c302c302c302c352e3431352c333734392e3338342c393831362e3431332c31353231382e3530332c31383834362e31352c32303331342e3234352c32313135352e3037322c31393637372e3033332c31363734372e3536352c31323134362e3533332c373131312e3830392c3939332e3836332c302c302c302c302c302c302c302c302c302c302c302c302c3935322e3130382c373636342e3033392c31333934332e3239382c31383031312e3731372c32313039352e3237372c32323233332e3935342c32323830312e3030372c32313337382e322c31383231352e3431312c31343538322e3337342c383837312e3838372c333732352e3430342c302c302c302c302c302c302c302c302c302c302c302c302e3834372c333436312e3938372c393438362e3936372c31353336372e3932342c31393631362e3131392c32323636342e3036392c32333933362e3832342c32343832342e3138382c32323935312e3139312c31393333382e3930342c31353339372e33382c31303034342e3134392c343636392e3839312c39332e3134372c302c302c302c302c302c302c302c302c302c302c322e3533352c333530372e3434362c393636392e35352c31353233342e3935342c31393232302e3432322c32313830392e3331382c32333738322e3135382c32343337372e3338332c32323732382e3733372c31393738372e3236382c31353838392e3935332c31303539322e3036312c353230332e3530342c3633322e3636382c302c302c302c302c302c302c302c302c302c302c302e33382c323635362e3930312c393030342e3932352c31353038382e3433392c31393238302e3636372c32323735372e3433362c32343431302e3836392c32343633312e3438322c32333437392e3030332c32303439352e3930342c31363732342e3837362c31313333332e3734362c353638362e3834372c3536332e38392c302c302c302c302c302c302c302c302c302c302c302c3831352e31342c383135342e3139382c31343635352e3934332c31393634392e3135362c32323833332e3135392c32343533302e3538392c32343438312e3630382c32333131302e3532312c31393733322e3036332c31353739382e3139362c393939302e3635392c343434322e3436372c302c302c302c302c302c302c302c302c302c302c302c302c3130382e3834312c363130382e3439332c31323133342e30342c31363536302e3530352c31393939312e3236382c32303832392e3038332c32303932332e3838312c31393837322e3230322c31373133362e3234372c31323638302e3732332c363831362e3930382c3930302e36312c302c302c302c302c302c302c302c302c302c302c302c302c332e3535382c343035322e30312c393531362e3737382c31333135322e3032372c31363339352e3733352c31373437332e3731392c31363830392e3033322c31353839312e3032332c31333839392e3031382c393138372e3336312c323939352c302e3032332c302c302c302c302c302c302c302c302c302c302c302c302c302c3935352e3130382c353831362e3735352c393932372e3830322c31333835322e372c31353339322e3139332c31343138382e38322c31323232302e3339322c393131352e3631332c353131392e3233352c31352e3730392c302c302c302c302c302c302c302c302c302c302c302c302c302c302c352e3636342c323630392e3931332c363534382e3931382c393637372e3734362c31323137302e3031382c31333035372e3932362c31313234392e3130322c383636312e3337352c353234362e3330342c32362e3137332c302c302c302c302c302c302c30, 0x322e333337393233353236373633392c332e333330393139323635373437312c352e353837333738353031383932312c362e393439323334303038373839312c372e343839303136353332383937392c372e393732393930303336303130372c372e383935353639333234343933342c372e353334303930353138393531342c362e333234333537303332373735392c342e363339363136343839343130342c332e343431353339353235393835372c322e36353536303436303039303634, 'PV-Watts-V4', '', '', '2014-12-14 18:16:23', 7, '4.0000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '0.0000', '', '0.00'),
(9, 6, 'Normal', 13, 1, 2, 4, 6, 15, 'South', 20, 180, 64, 0, '17.0', '27078', '100.000', '', '', '', '', '0.8300', '38.8688526', 'tmy3', '-121.292281', '0', '1596.5697', 0, 0x35362e3639363931343637323835322c37352e3834353134363137393139392c3134302e363734353330303239332c3136372e34313830373535363135322c3138352e32303835343138373031322c3138352e37363531323134353939362c3138392e32383630373137373733342c3138312e363634343734343837332c3134382e36383535373733393235382c3131352e31343630303337323331342c38332e3436393632373338303337312c36362e373039363235323434313431, 0x302c302c302c302c302c302c302c302e3839362c313139352e3836312c343237322e3838332c373238332e31372c393839342e3034362c31303035382e3137332c31303438322e3039372c373631342e3336362c343837392e3339322c313031362e30332c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3137382e3635322c333931332e3437392c363936372e32382c393935312e3232332c31323339352e37332c31323537372e3931322c31303838362e3134312c383937342e3935372c363235352e3434342c333734312e3330322c322e3938332c302c302c302c302c302c302c302c302c302c302c302c302c342e3939372c333630302e3232322c393435342e3331322c31343638362e3234362c31383230302e3936342c31393632312e3238312c32303433332e3835382c31393030342e3436322c31363136362e3936352c31313730362e32382c363834312e3533352c3935332e3434322c302c302c302c302c302c302c302c302c302c302c302c302c3838392e3734362c373337352e3836382c31333434342e3135342c31373339322e3938312c32303338302e3337382c32313437372e3935372c32323032352e3931322c32303635342e3635312c31373539322e392c31343036352e3439352c383533392e3539322c333537382e3434312c302c302c302c302c302c302c302c302c302c302c302c302e3736322c333332382e3530312c393133342e3938342c31343832332e3937322c31383934372e3437322c32313930302e3939342c32333132352e3531362c32333938342e3338392c32323137362e3533342c31383637382e3932392c31343835322e3230372c393637322e3537322c343439352e3132382c38362e3632332c302c302c302c302c302c302c302c302c302c302c322e3239392c333337362e3338322c393331302e3631372c31343639342e3531352c31383536342e3239362c32313037342e3431342c32323938312e3136382c32333535372e32322c32313936342e3130382c31393131322e33362c31353333302e3635392c31303230312e3735332c353030362e3930352c3538382e352c302c302c302c302c302c302c302c302c302c302c302e3333342c323532372e3031392c383636392e3039332c31343534392e3533322c31383631392e3637322c32313939302e3132362c32333538392e3733332c32333830332e3131322c32323638392e3230362c31393739372e3435332c31363133362e3136382c31303931362e3339392c353437332e3730382c3532342e3530332c302c302c302c302c302c302c302c302c302c302c302c3735382e3335352c373834392e3135322c31343133302e3234372c31383937342e38372c32323036342e3034392c32333730362e3032362c32333635382e35332c32323333322e3732342c31393035352e3931342c31353233372e3732312c393632302e3232362c343237362e36362c302c302c302c302c302c302c302c302c302c302c302c302c3130312e3037312c353837392e3339342c31313639342e3030352c31353938352e3735382c31393331312e3731342c32303132342e3431312c32303231352e3431372c31393139362e3631372c31363533392e3136372c31323232312e3233352c363536312e3737332c3835352e3030322c302c302c302c302c302c302c302c302c302c302c302c302c332e3237312c333839362e3935322c393136342e3930362c31323638352e3537342c31353832382e3432372c31363837312e3834362c31363232372e3335352c31353333392e3832362c31333430302e35322c383834342e3136392c323838332e3132372c302e3031392c302c302c302c302c302c302c302c302c302c302c302c302c302c3930382e3639352c353539382e3138362c393536322e3739342c31333336312e33322c31343835342e34372c31333639312e3333362c31313738352e30332c383737372e3933372c343931352e3330362c31342e3534392c302c302c302c302c302c302c302c302c302c302c302c302c302c302c352e3234342c323530362e3635352c363239312e3035362c393332342e3632322c31313733382e3233312c31323539332e3031332c31303834342e3333362c383333362e33322c353034352e3838322c32342e3235322c302c302c302c302c302c302c30, 0x322e333337393233353236373633392c332e333330393139323635373437312c352e353837333738353031383932312c362e393439323334303038373839312c372e343839303136353332383937392c372e393732393930303336303130372c372e383935353639333234343933342c372e353334303930353138393531342c362e333234333537303332373735392c342e363339363136343839343130342c332e343431353339353235393835372c322e36353536303436303039303634, 'PV-Watts-V4', 'Location: 724839, Lat: 38.700000762939, Lon: -121.58300018311, City: \"SACRAMENTO METROPOLITAN AP\", State: CA, Elevation: 7, Distance: 31370, File name: , Timezone offset: -8, ', '4.2.1, 34, Unix 64 bit GNU/C++ Aug 18 2014 13:38:36', '2015-01-13 07:20:02', 6, '3.4000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '0.0000', '', '0.00'),
(10, 6, 'LCI', 13, 1, 1, 4, 5, 10, 'LCI 4337', 20, 90, 12, 0, '3.2', '4403', '100.000', '', '', '', '', '0.8300', '38.8688526', 'tmy3', '-121.292281', '', '1384.5411', 0, 0x33352e3436323437343832323939382c35372e3138353938353536353138362c3131362e33353939303134323832322c3135302e37393937343336353233342c3137382e33323238373539373635362c3138342e39363531373934343333362c3138342e30343430363733383238312c3136382e30303133323735313436352c3132342e38393631373931393932322c38362e3031343435303037333234322c35372e31353430363033363337372c34312e3333343833353035323439, 0x302c302c302c302c302c302c302c392e3635312c313431342e3335312c343131312e3536322c363138362e3439342c373535352e3136332c363934342e3737352c353835352e3532342c323930312e3634362c3436392e3335322c31332e3935362c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313032352e3437362c343838372e3132382c373038382e3932362c393031362e3031332c31303230392e3737312c393435322e3532362c373231332e3634362c343834362e3335342c323534382e3730312c3839372e3434342c302e3030352c302c302c302c302c302c302c302c302c302c302c302c302c313032372e3332342c363835362e33392c31323035392e3337352c31353638342e3036342c31373433302e3438382c31373135372e30332c31363233382e3433372c31333333302e3036362c393636362e3338322c353032342e3837352c313635392e3338392c3232362e3135342c302c302c302c302c302c302c302c302c302c302c302c37342e3639312c363130342e3539382c31323731382e3633352c31373134302e3835392c31393039382e3331332c32303233352e3534382c31393535312e3933342c31383434392e3733322c31353635312e342c31313339332e3434382c363938392e3130382c323630392e3032382c3738322e34332c302c302c302c302c302c302c302c302c302c302c302c323737312e3535332c393733312e3339312c31353231312e3234372c31393131322e3832362c32313430342e3033362c32323435302e3236362c32313739312e38362c32303836372e3534392c31373737302e3335312c31333231382e3738322c383439382e3834382c343139372e3137362c313232332e3834352c37332e3132362c302c302c302c302c302c302c302c302c302c302c333932302e3831342c31303434392e3835332c31363038342e3039342c31393539322e3231362c32313437322e3937332c32323132352e3133372c32323231302e36392c32313034352e3730372c31383131302e3231312c31343231362e3331392c393436312e3232352c343738352e34322c313037382e3033322c3431322e3534352c302c302c302c302c302c302c302c302c302c302c323230372e3139352c393138372e37392c31353433322e3232382c31393633322e3736392c32313539342e3233352c32333036312e3734332c32323733302e36332c32313136352e3736342c31383533352e3134322c31343437302e3535342c393730322e3837352c343932352e3638312c313036312e3533352c3333352e3935342c302c302c302c302c302c302c302c302c302c302c39332e3339332c373635332e3339312c31343230342e3930392c31383732322e38362c32313339362e3232312c32323336302e3931322c32313935372e3332312c32303038342e3339382c31373230342e3433382c31323639382e3131362c373832302e3836322c333038352e3434312c3731392e3132392c302c302c302c302c302c302c302c302c302c302c302c302c333931352e3236372c393739352e3132392c31343432352e3639332c31363837382e3039322c31383333312e3638352c31373431312e3430352c31353931312e3332392c31333135322e3833342c393037372e3530352c343634352e3736352c313134302e32352c3231312e3236392c302c302c302c302c302c302c302c302c302c302c302c302c3437322e3331392c363132392e3237372c31303439372e3831392c31323434362e3536362c31333938312e3133382c31333439352e3530392c31313534372e3338382c393131322e3932342c353836362e3033372c323033362e3131362c3432392e33352c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313930392e3732372c353938362e3533382c383736372e3033322c31303938382e3632312c31303836312e3533332c383631372e3231332c353930352e3230312c333331332e3930312c3830342e3330312c302e3031382c302c302c302c302c302c302c302c302c302c302c302c302c302c302c32352e3639362c323732302e3131362c353639392e3032342c373533382e3537342c383435322e3634392c373836392e3830392c353433372e3136352c323934382e3836322c3634322e3935372c302c302c302c302c302c302c302c30, 0x312e363135333037323131383735392c322e363033393932323233373339362c342e363730383132313239393734342c362e323634333431333534333730312c372e323032323339303336353630312c372e393030353833323637323131392c372e363536363431303036343639372c362e393338383836363432343536312c352e33323336383531363932322c332e3537383638383632313532312c322e343738303732383831363938362c312e37393536363833363335373132, 'PV-Watts-V4', '', '', '2015-02-10 07:54:54', 12, '4.0000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '100.00', '2.0000', './usr_aestest/accts/nonprofit_acc5_opp6/layouts/layout02.jpg', '0.00');
INSERT INTO `pv_arrays` (`pva_id`, `pva_opportunityId`, `pva_proposalGroup`, `pva_moduleId`, `pva_inverterId`, `pva_inverterQty`, `pva_rackingId`, `pva_monitoringId`, `pva_stringSize`, `pva_name`, `pva_tilt`, `pva_azimuth`, `pva_moduleCount`, `pva_layoutModuleCount`, `pva_kWp`, `pva_estimatedKWh`, `pva_availability`, `pva_description`, `pva_moduleOnOff`, `pva_areaLatLon`, `pva_status`, `pva_derate`, `pva_lat`, `pva_apiDataSet`, `pva_lon`, `pva_trackMode`, `pva_kwhPerKwp`, `pva_areaSqft`, `pva_monthlyKwh`, `pva_hourlyKwh`, `pva_monthlySolarRadiation`, `pva_forecastSource`, `pva_meteoStationInformation`, `pva_apiVersion`, `pva_forecastDate`, `pva_meterId`, `pva_pricePerWatt`, `pva_pricePerKwh`, `pva_surfaceSqft`, `pva_isPortrait`, `pva_includeScopeInProposal`, `pva_scopePanelUpgrade`, `pva_scopeHomeRun`, `pva_scopeTrenching`, `pva_scopeMonitoring`, `pva_scopeRacking`, `pva_scopeInvererToMeterRun`, `pva_scopePanelsToInverterRun`, `pva_scopeWireRuns`, `pva_scopeAreaSteepness`, `pva_scopePlanes`, `pva_scopeArrayAccess`, `pva_scopeInstalledOn`, `pva_scopeExclusions`, `pva_scopeInclusions`, `pva_scopeAssumptions`, `pva_scopePermitFees`, `pva_scopeRoofStructuralEngineering`, `pva_monthlyShadingPercent`, `pva_lastUpdate`, `pva_lastUpdateBy`, `pva_residentialPercent`, `pva_equipmentCostPerWatt`, `pva_linkToLayout`, `pva_agriculturalPercent`) VALUES
(11, 6, 'LCI', 13, 1, 1, 4, 5, 10, 'LCI 7673', 20, 90, 52, 0, '13.8', '19079', '100.000', '', '', '', '', '0.8300', '38.8688526', 'tmy3', '-121.292281', '', '1384.5411', 0, 0x33352e3436323437343832323939382c35372e3138353938353536353138362c3131362e33353939303134323832322c3135302e37393937343336353233342c3137382e33323238373539373635362c3138342e39363531373934343333362c3138342e30343430363733383238312c3136382e30303133323735313436352c3132342e38393631373931393932322c38362e3031343435303037333234322c35372e31353430363033363337372c34312e3333343833353035323439, 0x302c302c302c302c302c302c302c392e3635312c313431342e3335312c343131312e3536322c363138362e3439342c373535352e3136332c363934342e3737352c353835352e3532342c323930312e3634362c3436392e3335322c31332e3935362c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313032352e3437362c343838372e3132382c373038382e3932362c393031362e3031332c31303230392e3737312c393435322e3532362c373231332e3634362c343834362e3335342c323534382e3730312c3839372e3434342c302e3030352c302c302c302c302c302c302c302c302c302c302c302c302c313032372e3332342c363835362e33392c31323035392e3337352c31353638342e3036342c31373433302e3438382c31373135372e30332c31363233382e3433372c31333333302e3036362c393636362e3338322c353032342e3837352c313635392e3338392c3232362e3135342c302c302c302c302c302c302c302c302c302c302c302c37342e3639312c363130342e3539382c31323731382e3633352c31373134302e3835392c31393039382e3331332c32303233352e3534382c31393535312e3933342c31383434392e3733322c31353635312e342c31313339332e3434382c363938392e3130382c323630392e3032382c3738322e34332c302c302c302c302c302c302c302c302c302c302c302c323737312e3535332c393733312e3339312c31353231312e3234372c31393131322e3832362c32313430342e3033362c32323435302e3236362c32313739312e38362c32303836372e3534392c31373737302e3335312c31333231382e3738322c383439382e3834382c343139372e3137362c313232332e3834352c37332e3132362c302c302c302c302c302c302c302c302c302c302c333932302e3831342c31303434392e3835332c31363038342e3039342c31393539322e3231362c32313437322e3937332c32323132352e3133372c32323231302e36392c32313034352e3730372c31383131302e3231312c31343231362e3331392c393436312e3232352c343738352e34322c313037382e3033322c3431322e3534352c302c302c302c302c302c302c302c302c302c302c323230372e3139352c393138372e37392c31353433322e3232382c31393633322e3736392c32313539342e3233352c32333036312e3734332c32323733302e36332c32313136352e3736342c31383533352e3134322c31343437302e3535342c393730322e3837352c343932352e3638312c313036312e3533352c3333352e3935342c302c302c302c302c302c302c302c302c302c302c39332e3339332c373635332e3339312c31343230342e3930392c31383732322e38362c32313339362e3232312c32323336302e3931322c32313935372e3332312c32303038342e3339382c31373230342e3433382c31323639382e3131362c373832302e3836322c333038352e3434312c3731392e3132392c302c302c302c302c302c302c302c302c302c302c302c302c333931352e3236372c393739352e3132392c31343432352e3639332c31363837382e3039322c31383333312e3638352c31373431312e3430352c31353931312e3332392c31333135322e3833342c393037372e3530352c343634352e3736352c313134302e32352c3231312e3236392c302c302c302c302c302c302c302c302c302c302c302c302c3437322e3331392c363132392e3237372c31303439372e3831392c31323434362e3536362c31333938312e3133382c31333439352e3530392c31313534372e3338382c393131322e3932342c353836362e3033372c323033362e3131362c3432392e33352c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313930392e3732372c353938362e3533382c383736372e3033322c31303938382e3632312c31303836312e3533332c383631372e3231332c353930352e3230312c333331332e3930312c3830342e3330312c302e3031382c302c302c302c302c302c302c302c302c302c302c302c302c302c302c32352e3639362c323732302e3131362c353639392e3032342c373533382e3537342c383435322e3634392c373836392e3830392c353433372e3136352c323934382e3836322c3634322e3935372c302c302c302c302c302c302c302c30, 0x312e363135333037323131383735392c322e363033393932323233373339362c342e363730383132313239393734342c362e323634333431333534333730312c372e323032323339303336353630312c372e393030353833323637323131392c372e363536363431303036343639372c362e393338383836363432343536312c352e33323336383531363932322c332e3537383638383632313532312c322e343738303732383831363938362c312e37393536363833363335373132, 'PV-Watts-V4', '', '', '2015-02-10 07:55:16', 11, '4.0000', '0.0000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '100,100,100,100,100,100,100,100,100,100,100,100', '0000-00-00 00:00:00', 0, '0.00', '1.8000', './usr_aestest/accts/nonprofit_acc5_opp6/layouts/layout01.jpg', '50.00'),
(12, 8, 'IrrigationPump', 12, 3, 2, 4, 7, 20, 'Ground Mount for Irrigation Pump', 20, 180, 156, 0, '51.0', '89215', '98.500', '', '', '', '', '0.8300', '39.7965501', 'TMY2', '-121.9014917', '0', '1749.3100', 0, 0x38362e38382c38392e38352c3133392e30362c3136392e35372c3230332e33362c3230342e30322c3230342e38352c3139302e31322c3136352e32362c3133352e34372c38362e31382c37342e3639, 0x302c302c302c302c302c302c302c35312e3031313736343730353838322c333737322e373431313736343730362c383031332e3136383632373435312c31313134342e32323734353039382c31333831362e3830353838323335332c31343438332e3538383233353239342c31333833382e3539303139363037382c31313933322e3433373235343930322c383630382e353836323734353039382c313231342e363832333532393431322c302c302c302c302c302c302c302c302c302c302c302c302c302c302c313037382e353736343730353838322c343435332e323235343930313936312c383332332e393037383433313337332c31303334322e36323734353039382c31323436372e3234373035383832342c31333135322e3239343131373634372c31333334372e3130373834333133372c31313232372e3131373634373035392c383932312e393730353838323335332c363132372e393836323734353039382c3430392e38383433313337323534392c302c302c302c302c302c302c302c302c302c302c302c302c3230332e363433313337323534392c333534332e313536383632373435312c393335362e363437303538383233352c31333837362e3636383632373435312c31353931332e3535303938303339322c31393137332e3038303339323135372c32303335322e3332333532393431322c31383337322e3834373035383832342c31363332352e3530393830333932322c31323138342e3336323734353039382c383237302e333834333133373235352c313439322e323133373235343930322c302c302c302c302c302c302c302c302c302c302c302c382e333133373235343930313936312c323136362e303239343131373634372c373931372e363335323934313137362c31333837312e3532313536383632372c31373934352e3836323734353039382c32313038342e3836303738343331342c32323439382e3532353439303139362c32313432372e3937363437303538382c32303436322e3239323135363836332c31363632392e3838323335323934312c31323539312e3635383832333532392c383438392e393934313137363437312c343337332e373530393830333932322c3130352e34353039383033393231362c302c302c302c302c302c302c302c302c302c302c3532332e35313137363437303538382c343033352e303135363836323734352c31303136382e3734353039383033392c31353730392e3430373834333133372c32303533372e3635303938303339322c32323731332e3934393031393630382c32343839392e3439343131373634372c32353338392e3934333133373235352c32333830352e3836323734353039382c32313334352e3934313137363437312c31363631372e3035383832333532392c31303830392e3731393630373834332c353839312e393836323734353039382c3930392e35323135363836323734352c302c302c302c302c302c302c302c302c302c302c3830302e34373235343930313936312c343434342e353838323335323934312c31303531352e3736343730353838322c31353835342e3636363636363636372c31393838382e3039383033393231362c32323532362e3431313736343730362c32343032332e3739323135363836332c32343531332e3133373235343930322c32333335322e3732353439303139362c32303332322e3534393031393630382c31363933392e3033393231353638362c31313834372e3934313137363437312c363535332e323435303938303339322c323433332e373235343930313936312c302c302c302c302c302c302c302c302c302c302c3530312e30343930313936303738342c333734332e3333373235343930322c393734342e343534393031393630382c31353338342e3233353239343131382c31393937332e3838323335323934312c32323831332e3133373235343930322c32343530382e36383632373435312c32343733342e3636363636363636372c32333237362e3534393031393630382c32313039372e3131373634373035392c31373538392e3435303938303339322c31323039392e3932393431313736352c363930392e393730353838323335332c323437322e303435303938303339322c302c302c302c302c302c302c302c302c302c302c372e393836323734353039383033392c323630382e313131373634373035392c383536342e353534393031393630382c31343133362e3132333532393431322c31393130382e342c32323332312e3133373235343930322c32333637312e36323734353039382c32333934302e3930313936303738342c32323834352e3934313137363437312c31393933392e3238303339323135372c31363132332e39323734353039382c31313037342e3432313536383632372c353530372e313039383033393231362c3236392e36353838323335323934312c302c302c302c302c302c302c302c302c302c302c302c313435322e383732353439303139362c373032382e313031393630373834332c31333030312e3131313736343730362c31383034382e3332333532393431322c32303733352e3731313736343730362c32313538332e3535383832333532392c32323036342e33313337323534392c32303233392e3230313936303738342c31373933362e3933333333333333332c31333134302e3534353039383033392c383137332e353333333333333333332c313835302e393932313536383632372c302c302c302c302c302c302c302c302c302c302c302c302c3236362e30373834333133373235352c353133332e353431313736343730362c31303430342e3730393830333932322c31353239362e3030353838323335332c31383730342e35373235343930322c31393931372e3531313736343730362c31393334362e3936303738343331342c31373735372e3032353439303139362c31343631302e3534393031393630382c393938362e333932313536383632372c333938312e313534393031393630382c36352e3739363037383433313337332c302c302c302c302c302c302c302c302c302c302c302c302c302c313738312e333734353039383033392c363137332e353532393431313736352c393431332e373439303139363037382c31313833382e3736303738343331342c31333832382e3932393431313736352c31333734392e3637363437303538382c31313938342e3635363836323734352c31303432302e3835363836323734352c363236332e393630373834333133372c3732372e31393830333932313536392c302c302c302c302c302c302c302c302c302c302c302c302c302c302c3131342e352c333937342e3036323734353039382c373339382e343233353239343131382c31303539322e3935383832333532392c31323039312e3230393830333932322c31323636372e3039323135363836332c31313931352e3033333333333333332c393139302e303634373035383832342c363233302e313830333932313536392c3531362e34393431313736343730362c302c302c302c302c302c302c30, '', 'CSV-8761row-Import', 'Chico', 'Manual Import', '2015-02-18 09:21:17', 13, '3.0800', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '98,98,98,98,98,98,98,98,98,98,98,98', '2015-02-18 09:21:17', 1, '0.00', '2.0500', './usr_aestest/accts/lindauerriverranch_acc20_opp8/layouts/layout.jpg', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `pv_defaultValues`
--

CREATE TABLE `pv_defaultValues` (
  `dft_id` int(11) NOT NULL,
  `dft_startImportRow` int(11) NOT NULL,
  `dft_startImportCol` int(11) NOT NULL,
  `dft_importCharacterSeparator` varchar(1) NOT NULL,
  `dft_inclusions` blob NOT NULL,
  `dft_exclusions` blob NOT NULL,
  `dft_assumptions` blob NOT NULL,
  `dft_warranties` blob NOT NULL,
  `dft_federalTaxCredit` decimal(5,2) NOT NULL,
  `dft_stateTaxCredit` decimal(5,2) NOT NULL,
  `dft_loanTerms` blob NOT NULL,
  `dft_ppaTerms` blob NOT NULL,
  `dft_leaseTerms` blob NOT NULL,
  `dft_template_pdf_page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_defaultValues`
--

INSERT INTO `pv_defaultValues` (`dft_id`, `dft_startImportRow`, `dft_startImportCol`, `dft_importCharacterSeparator`, `dft_inclusions`, `dft_exclusions`, `dft_assumptions`, `dft_warranties`, `dft_federalTaxCredit`, `dft_stateTaxCredit`, `dft_loanTerms`, `dft_ppaTerms`, `dft_leaseTerms`, `dft_template_pdf_page`) VALUES
(1, 14, 5, ';', '', '', '', '', '30.00', '0.00', '', '', '', 'proposal_template_01.php');

-- --------------------------------------------------------

--
-- Table structure for table `pv_dropdowns`
--

CREATE TABLE `pv_dropdowns` (
  `pvd_id` double NOT NULL,
  `pvd_value` varchar(64) NOT NULL,
  `pvd_description` varchar(255) NOT NULL,
  `pvd_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_dropdowns`
--

INSERT INTO `pv_dropdowns` (`pvd_id`, `pvd_value`, `pvd_description`, `pvd_type`) VALUES
(1, 'Residential', 'Homeowners only with residential electric rates', 'Lead-Type'),
(2, 'Lead-Type', 'Define the different types of leads', 'z-configuration'),
(3, 'Utilities', 'Electric companies', 'z-configuration'),
(4, 'Lead-Status', 'Indicates if the lead is sold, cold, entered, etc.', 'z-configuration'),
(5, 'Phone-Type', 'Cell phone, home phone, work phone, evening phone, fax', 'z-configuration'),
(6, 'z-configuration', '', 'z-configuration'),
(7, 'PG&E', 'Pacific Gas and Electric', 'Utilities'),
(8, 'Commercial', 'Urban businesses large and small', 'Lead-Type'),
(9, 'Ag', 'Farmers, growers, wineries, vineyards, ranches', 'Lead-Type'),
(10, '1-Entered', '', 'Lead-Status'),
(12, '4-Qualified', '', 'Lead-Status'),
(13, '3-Contacted', '', 'Lead-Status'),
(14, '6-Disqualified', '', 'Lead-Status'),
(15, '5-Follow-Up', '', 'Lead-Status'),
(16, '2-Attempted-Contact', '', 'Lead-Status'),
(17, 'M', 'Mobile Phone', 'Phone-Type'),
(18, 'H', 'Home Phone', 'Phone-Type'),
(19, 'B', 'Business Phone', 'Phone-Type'),
(20, 'F', 'Fax', 'Phone-Type'),
(21, 'Lead-Source', 'How did the lead find us', 'z-configuration'),
(22, 'PPC Google', 'AdWords PPC from Google', 'Lead-Source'),
(23, 'E-mail', 'Campaigns from email marketing', 'Lead-Source'),
(24, 'Referral', 'Somebody had us contact us', 'Lead-Source'),
(25, 'Web search', 'Web search no Pay Per Click', 'Lead-Source'),
(26, 'Retargeting', 'Saw banner ad after visiting website', 'Lead-Source'),
(27, 'Lead-Financing', 'PPA, Lease, Cash, Equity Loan, Non Equity', 'z-configuration'),
(28, 'PPA', 'Power Purchase Agreement', 'Lead-Financing'),
(29, 'Operating Lease', 'Long term lease', 'Lead-Financing'),
(30, 'Cash', '', 'Lead-Financing'),
(31, 'Loan', '', 'Lead-Financing'),
(32, 'Capital Lease', '', 'Lead-Financing'),
(33, 'Undecided/Unknown', 'Not sure what the lead wants ', 'Lead-Financing'),
(34, 'Tilt', 'Degrees and roof standards', 'z-configuration'),
(35, '0', 'Flat', 'Tilt'),
(36, '09', 'Low pitch 2/12 ', 'Tilt'),
(37, '14', 'Typical in southern climates 3/12', 'Tilt'),
(38, '18', 'Standard roof pitch 4/12', 'Tilt'),
(39, '22', 'Walkable 5/12', 'Tilt'),
(40, '26', 'Steeper roof 6/12', 'Tilt'),
(41, '30', 'Steep 7/12', 'Tilt'),
(42, '33', 'Steep 8/12', 'Tilt'),
(43, '36', 'Steep 9/12', 'Tilt'),
(44, '39', 'Steep 10/12', 'Tilt'),
(45, '42', 'Very steep 11/12', 'Tilt'),
(46, '45', 'Super steep 12/12', 'Tilt'),
(47, 'DCAC', 'PVWatts DC to AC derate factor', 'z-configuration'),
(48, '0.83', 'Default - No shading standard pv modules', 'DCAC'),
(49, '0.77', 'Some shading present', 'DCAC'),
(50, '0.7', 'Significant shading present', 'DCAC'),
(51, '0.86', 'Ideal conditions - no shade - no high heat', 'DCAC'),
(52, 'SMUD', 'Sacramento Municipal Utility District', 'Utilities'),
(53, 'web_form_resi_notify', 'Who to notify when form is submitted', 'z-configuration'),
(54, 'lead_form_resi_notify', 'mdeanquin@yahoo.com', 'web_form_resi_notify'),
(55, 'mdeanquin@yahoo.com', 'Miguel de Anquin', 'web_form_resi_notify'),
(56, 'dmarks@yahoo.com', 'Dean Marks', 'web_form_resi_notify'),
(57, 'jdmaher@yahoo.com', 'JD Maher', 'web_form_resi_notify'),
(63, 'Religious Entity', 'Churches, congregations, camps', 'Lead-Type'),
(64, 'Government', 'Municipalities, Federal, State', 'Lead-Type'),
(65, 'Fortune 1000', 'Largest companies', 'Lead-Type'),
(66, 'Non profit', 'Non profit & charities  501(c)(3) ', 'Lead-Type'),
(67, 'Education', 'Schools, universities', 'Lead-Type'),
(68, 'Contractors', 'General contractors & architects', 'Lead-Type'),
(69, 'Proposal-Defaults', 'Set the Proposal Default Values', 'z-configuration'),
(70, 'Expiration-Days', '14', 'Proposal-Defaults'),
(71, 'Proposal-Types', 'Proposal-types', 'z-configuration'),
(72, 'Cash', '', 'Proposal-Types'),
(73, 'Residential PPA', '', 'Proposal-Types'),
(74, 'Residential Lease', '', 'Proposal-Types'),
(75, 'Not in use', '', 'z-configuration'),
(76, 'Loan', 'Secured and unsecured', 'Proposal-Types'),
(77, 'Proposal-Status', '', 'z-configuration'),
(78, 'In progress', '', 'Proposal-Status'),
(79, 'Sent', '', 'Proposal-Status'),
(80, 'Rejected', '', 'Proposal-Status'),
(81, 'Accepted', '', 'Proposal-Status'),
(82, 'Scope-Unit-Type', 'Scope of work units of measurement', 'z-configuration'),
(83, 'Scope-Product-Type', 'Scope of work categorization of products', 'z-configuration'),
(84, 'kWp', 'kilowatt peak or DC', 'Scope-Unit-Type'),
(85, 'ft', 'Feet', 'Scope-Unit-Type'),
(86, 'ea', 'each', 'Scope-Unit-Type'),
(87, 'Miles', '', 'Scope-Unit-Type'),
(88, 'None', 'Lump sum', 'Scope-Unit-Type'),
(89, 'Inverter-To-Meter-Run', '', 'Scope-Product-Type'),
(90, 'Inverter-To-Array-Run', '', 'Scope-Product-Type'),
(91, 'Wire-Run-Under-Array', '', 'Scope-Product-Type'),
(92, 'Steepness', '', 'Scope-Product-Type'),
(93, 'Planes', '', 'Scope-Product-Type'),
(94, 'Array-Access', '', 'Scope-Product-Type'),
(95, 'Surface', '', 'Scope-Product-Type'),
(96, 'Inverter-Location', '', 'Scope-Product-Type'),
(97, 'Structural-Engineering', '', 'Scope-Product-Type'),
(98, 'Home-Run-Wire', '', 'Scope-Product-Type'),
(99, 'Trenching', '', 'Scope-Product-Type'),
(100, 'Electrical-Panel-Upgrade', '', 'Scope-Product-Type'),
(101, 'Building-Permit', '', 'Scope-Product-Type'),
(102, 'hr', 'hours', 'Scope-Unit-Type'),
(103, 'days', '', 'Scope-Unit-Type'),
(104, 'm/hr', 'man hour', 'Scope-Unit-Type'),
(105, 'Panel Upgrade', '', 'Scope-Product-Type'),
(106, 'Monitoring', 'Data acquisition system', 'Scope-Product-Type'),
(107, 'Racking', '', 'Scope-Product-Type'),
(108, 'Opened', 'The leads has viewed the proposal', 'Proposal-Status'),
(109, 'Radio', 'ad', 'Lead-Source'),
(110, 'TV', 'ad', 'Lead-Source'),
(111, 'Disposition', 'Cold-calling and robo calling disposition', 'z-configuration'),
(112, 'Disconnected', 'Phone line', 'Disposition'),
(113, 'Fax Machine', 'Bad number', 'Disposition'),
(114, 'Call lost', 'Need follow up', 'Disposition'),
(115, 'Do not call', 'Remove from all lists', 'Disposition'),
(116, 'Careful-threatening-bulgar', 'Watch this caller and do not call', 'Disposition'),
(117, 'In-home appointment set', 'Success', 'Disposition'),
(118, 'Phone appointment set', 'Success', 'Disposition'),
(119, 'Does not qualify', 'No follow up', 'Disposition'),
(120, 'Qualified but stalled', 'Unwilling to set appointment', 'Disposition'),
(121, 'Event-Type', 'Calendar function', 'z-configuration'),
(122, 'Call', 'Call lead agreed time and purpose', 'Event-Type'),
(123, 'FollowUp', 'Follow Up, vague or no specific time agreed upon', 'Event-Type'),
(124, 'Meet', 'Meet with lead agreed time and location', 'Event-Type'),
(125, 'Personal', 'Time not available - vacation, time off, off hours, lunch', 'Event-Type'),
(126, 'Office', 'Office meeting or company event', 'Event-Type'),
(127, 'Training', 'Employee training', 'Event-Type'),
(128, 'Tracking-Mode', 'PVWatts API tracking modes', 'z-configuration'),
(129, '0', 'Fixed', 'Tracking-Mode'),
(130, '1', '1-Axis tracker', 'Tracking-Mode'),
(131, '2', '2-Axis tracker', 'Tracking-Mode'),
(132, 'Pvwatts-Dataset', 'PVWatts API', 'z-configuration'),
(133, 'tmy2', 'TMY2 station data', 'Pvwatts-Dataset'),
(134, 'tmy3', 'TMY3 station data', 'Pvwatts-Dataset'),
(135, 'intl', 'International station data', 'Pvwatts-Dataset'),
(136, 'Wp', 'Watt peak (DC)', 'Scope-Unit-Type'),
(137, 'Credit-Ratings', 'Account Credit Ratings', 'z-configuration'),
(138, 'AAA', 'Prime (S&P)', 'Credit-Ratings'),
(139, 'AA+', 'High Grade (S&P)', 'Credit-Ratings'),
(140, 'AA', 'High Grade (S&P)', 'Credit-Ratings'),
(141, 'AA-', 'Highe Grade (S&P)', 'Credit-Ratings'),
(142, 'A+', 'Upper Medium Grade (S&P)', 'Credit-Ratings'),
(143, 'A', 'Upper Medium Grade (S&P)', 'Credit-Ratings'),
(144, 'A-', 'Upper Medium Grade (S&P)', 'Credit-Ratings'),
(145, 'BBB+', 'Lower medium grade (S&P)', 'Credit-Ratings'),
(146, 'BBB', 'Lower medium grade (S&P)', 'Credit-Ratings'),
(147, 'BBB-', 'Lower medium grade (S&P)', 'Credit-Ratings'),
(148, 'BB+', 'Non investment grade speculative (S&P)', 'Credit-Ratings'),
(149, 'BB', 'Non investment grade speculative (S&P)', 'Credit-Ratings'),
(150, 'BB-', 'Non investment grade speculative (S&P)', 'Credit-Ratings'),
(151, 'B+', 'Highly Speculative (S&P)', 'Credit-Ratings'),
(152, 'B', 'Non investment grade speculative (S&P)', 'Credit-Ratings'),
(153, 'CCC+', 'Substantial risks (S&P Negative)', 'Credit-Ratings'),
(154, 'SD', 'Negative', 'Credit-Ratings'),
(155, 'CCC', 'Extremely speculative (S&P)', 'Credit-Ratings'),
(156, 'CCC-', 'Default imminent  (S&P)', 'Credit-Ratings'),
(157, 'CC', 'Default imminent (S&P)', 'Credit-Ratings'),
(158, 'C', 'Default imminent (S&P)', 'Credit-Ratings'),
(159, 'Industries', 'For accounts', 'z-configuration'),
(160, 'Agriculture - Harvest post processring', 'SIC 0100', 'Industries'),
(161, 'Food Processing', 'SIC 2000', 'Industries'),
(162, 'Municipality', '', 'Industries'),
(163, 'General Distribution', '', 'Industries'),
(164, '3yrs of profitability', 'Not rated', 'Credit-Ratings'),
(165, 'Unkown', '', 'Credit-Ratings'),
(166, 'Cold-Calling', '', 'Lead-Source'),
(167, 'Pipeline-Stages', 'CRM functions', 'z-configuration'),
(168, '7-Verbal-Commitment', 'Y', 'Pipeline-Stages'),
(169, '6-Presented-To-Customer', 'Y', 'Pipeline-Stages'),
(170, '4-Pre-Design-Complete', 'Y', 'Pipeline-Stages'),
(171, '5-Proposal-Complete', 'Y', 'Pipeline-Stages'),
(173, '3-Pre-Design-Meeting-Complete', 'Y', 'Pipeline-Stages'),
(174, '8-Review-Negotiation', 'Y', 'Pipeline-Stages'),
(175, 'Disqualified', 'N', 'Pipeline-Stages'),
(176, 'Opportunity-Type', 'Classification of Opportunities', 'z-configuration'),
(177, 'PV', 'Solar Photovoltaic', 'Opportunity-Type'),
(178, 'PV + EE', 'Solar + Energy Efficiency', 'Opportunity-Type'),
(179, 'PV + ES', 'Solar + Energy Storage', 'Opportunity-Type'),
(180, 'PV + ES + EE', 'Solar + Storage + Efficiency', 'Opportunity-Type'),
(181, 'Utility-Rate-Types', 'For defining electric rates', 'z-configuration'),
(182, 'TOU', 'Time of Use Rate', 'Utility-Rate-Types'),
(183, 'Tiered', 'Price increase with consumption', 'Utility-Rate-Types'),
(184, 'Flat', 'Same price all month', 'Utility-Rate-Types'),
(185, 'crm-opportunity-dates', 'Filter pipeline by dates', 'z-configuration'),
(186, 'cop_nextAgreedContactDate', 'Next agreed contact date', 'crm-opportunity-dates'),
(187, 'cop_estimatedFinalDecisionDate', 'Estimated final decision date', 'crm-opportunity-dates'),
(188, 'cop_siteSurveyCompletionDate', 'Site survey competion day', 'crm-opportunity-dates'),
(189, 'cop_proposalDeliveryDate', 'Proposal delivery date', 'crm-opportunity-dates'),
(190, 'cop_finalPresentationDate', 'Final presentation date', 'crm-opportunity-dates'),
(191, 'cop_nonBindingSoldDate', 'Non binding sale date', 'crm-opportunity-dates'),
(192, 'cop_enteredDate', 'Opportunity entered date', 'crm-opportunity-dates'),
(193, 'cop_lostDate', 'Lost date', 'crm-opportunity-dates'),
(194, 'cop_lastUpdate', 'Last update', 'crm-opportunity-dates'),
(195, 'crm-date-filters', 'Filters for opportunities', 'z-configuration'),
(198, 'Year to date', 'From beginning of year til now', 'crm-date-filters'),
(199, 'This month', 'Dates during this month', 'crm-date-filters'),
(200, 'Last month', '', 'crm-date-filters'),
(201, 'This quarter', '', 'crm-date-filters'),
(202, 'Last quarter', '', 'crm-date-filters'),
(203, 'This quarter last year', '', 'crm-date-filters'),
(204, 'Last quarter last year', '', 'crm-date-filters'),
(205, 'This semester', '', 'crm-date-filters'),
(206, 'Last semester', '', 'crm-date-filters'),
(207, 'Meter-Types', 'Demand vs Load meters for aggregate net metering', 'z-configuration'),
(208, 'Load', '', 'Meter-Types'),
(209, 'Generation', '', 'Meter-Types'),
(210, 'Meter-Phases', '', 'z-configuration'),
(211, '2-Phase ', '', 'Meter-Phases'),
(212, '3-Phase', '', 'Meter-Phases'),
(213, 'Poly Phase', '', 'Meter-Phases'),
(214, 'Single Phase', '', 'Meter-Phases'),
(215, 'Rate-Charges-Per', 'Used to defined utility charges', 'z-configuration'),
(216, 'Day', '', 'Rate-Charges-Per'),
(217, 'Meter', '', 'Rate-Charges-Per'),
(218, 'Month', '', 'Rate-Charges-Per'),
(219, 'TOU-Periods', 'Time of Use Periods', 'z-configuration'),
(220, 'On-Peak', '', 'TOU-Periods'),
(221, 'Off-Peak', '', 'TOU-Periods'),
(222, 'Part-Peak', '', 'TOU-Periods'),
(223, 'kwh-forecast-api', 'API used to estimate kwh generation PVWatts, PVSIM', 'z-configuration'),
(224, 'PV-Watts-V4', 'NREL w inoct and gamma values', 'kwh-forecast-api'),
(225, 'PVSim V1', 'SunPower Api w module & inverter', 'kwh-forecast-api'),
(226, 'Yield-Forecast-Units', 'The data is measured in Wh, kWh, etc', 'z-configuration'),
(227, 'kWh', '', 'Yield-Forecast-Units'),
(228, 'Wh', '', 'Yield-Forecast-Units'),
(229, 'CSV-8761row-Import', '', 'kwh-forecast-api'),
(230, 'PDF-Templates', 'PDF Generation Code', 'z-configuration'),
(231, 'aes_proposal_template_02.php', 'AES-2015 PDF', 'PDF-Templates'),
(232, 'Max', '', 'TOU-Periods'),
(233, 'MACRS', 'Depreciation Schedule', 'z-configuration'),
(234, '20.00,32.00,19.20,11.52,11.52,5.76', '5 year Accelerated Depreciation (MACRS)', 'MACRS'),
(235, '20.00,32.00,19.20,11.52,11.52,5.76', '5yr Farm Accelerated Depreciation MACRS', 'MACRS'),
(236, 'crm-note-types', 'Notes for crm', 'z-configuration'),
(237, 'Design', '', 'crm-note-types'),
(238, 'Site Survey', '', 'crm-note-types'),
(239, 'General', '', 'crm-note-types'),
(240, 'Referral', '', 'crm-note-types'),
(241, 'Meeting-Completed', 'updates last contact date', 'crm-note-types'),
(242, 'Task', '', 'crm-note-types'),
(243, 'Photo', '', 'crm-note-types'),
(244, '1-New-Qualified-Opportunity', 'Y', 'Pipeline-Stages'),
(245, '2-Customer-Engaged', 'Y', 'Pipeline-Stages'),
(246, 'Call-Completed', 'updates last contact date', 'crm-note-types'),
(247, 'Email-Response', 'updates last contact date', 'crm-note-types'),
(248, 'Lost', 'N', 'Pipeline-Stages'),
(249, 'Stalled', 'N', 'Pipeline-Stages'),
(250, 'Won', 'N', 'Pipeline-Stages');

-- --------------------------------------------------------

--
-- Table structure for table `pv_financing`
--

CREATE TABLE `pv_financing` (
  `pvf_id` double NOT NULL,
  `pvf_name` varchar(132) NOT NULL,
  `pvf_titleForProposal` varchar(255) NOT NULL,
  `pvf_providerName` varchar(132) NOT NULL,
  `pvf_providerContactPerson` varchar(132) NOT NULL,
  `pvf_providerPhones` varchar(132) NOT NULL,
  `pvf_providerEmail` varchar(132) NOT NULL,
  `pvf_providerFullAddress` varchar(255) NOT NULL,
  `pvf_geography` varchar(132) NOT NULL,
  `pvf_type` varchar(132) NOT NULL,
  `pvf_loanInterest` decimal(8,6) NOT NULL,
  `pvf_loanDownPaymentPercent` decimal(6,4) NOT NULL,
  `pvf_loanPaymentFrequency` int(11) NOT NULL,
  `pvf_loanDownPaymentAmount` decimal(15,2) NOT NULL,
  `pvf_term` int(11) NOT NULL,
  `pvf_fee` decimal(8,6) NOT NULL,
  `pvf_endOfTermPayment` decimal(8,6) NOT NULL,
  `pvf_ppaKwhPrice` decimal(7,5) NOT NULL,
  `pvf_ppaAssumedPricePerWatt` decimal(5,3) NOT NULL,
  `pvf_ppaAssumedYield` int(11) NOT NULL,
  `pvf_operatingLeaseFactor` decimal(12,11) NOT NULL,
  `pvf_capitalLeaseFactor` decimal(12,11) NOT NULL,
  `pvf_lastUpdate` datetime NOT NULL,
  `pvf_lastUpdateBy` double NOT NULL,
  `pvf_notes` blob NOT NULL,
  `pvf_ppaEscalator` decimal(8,6) NOT NULL,
  `pvf_hidden` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_financing`
--

INSERT INTO `pv_financing` (`pvf_id`, `pvf_name`, `pvf_titleForProposal`, `pvf_providerName`, `pvf_providerContactPerson`, `pvf_providerPhones`, `pvf_providerEmail`, `pvf_providerFullAddress`, `pvf_geography`, `pvf_type`, `pvf_loanInterest`, `pvf_loanDownPaymentPercent`, `pvf_loanPaymentFrequency`, `pvf_loanDownPaymentAmount`, `pvf_term`, `pvf_fee`, `pvf_endOfTermPayment`, `pvf_ppaKwhPrice`, `pvf_ppaAssumedPricePerWatt`, `pvf_ppaAssumedYield`, `pvf_operatingLeaseFactor`, `pvf_capitalLeaseFactor`, `pvf_lastUpdate`, `pvf_lastUpdateBy`, `pvf_notes`, `pvf_ppaEscalator`, `pvf_hidden`) VALUES
(1, 'Cash', '', 'NA', 'NA', 'NA', 'NA', '', 'ALL', 'Cash', '0.000000', '0.0000', 0, '0.00', 1, '0.000000', '0.000000', '0.00000', '0.000', 0, '0.00000000000', '0.00000000000', '2015-01-20 08:24:16', 1, 0x4d7573742068617665206361736820617661696c61626c6520616e642062652077696c6c696e6720746f2075736520697420746f776172647320736f6c61722073797374656d, '0.000000', 0),
(2, 'PPA CareFunding 19c/kwh 3.55%esc.', 'PPA CareFunding 19c/kwh 3.55%esc.', 'Care Funding', 'Joe Care', '626 584-8858', 'info@CRenergyfunding.com', '211 S Orange Grove Blvd\r\nSuite 13\r\nPasadena, CA 91105', 'California', 'PPA', '0.000000', '0.0000', 0, '0.00', 20, '0.000000', '20.000000', '0.19500', '3.700', 1450, '0.00000000000', '0.00000000000', '2015-02-02 16:08:25', 1, 0x4e656564207374726f6e672066696e616e6369616c7320656c736520697420726575716972657320706572736f6e616c2067756172616e74656573, '3.550000', 0),
(3, 'Butte Bank Operating Lease', 'Butte Bank Operating Lease', 'Butte Bank', 'Joe Butte', '530-530-6666', 'joe@buttebank.com', 'Somewhere in butte county', 'Butte county only', 'Operating Lease', '0.000000', '0.0000', 0, '0.00', 7, '3.000000', '20.000000', '0.00000', '0.000', 0, '0.00800148600', '0.00000000000', '2015-02-02 16:07:24', 1, 0x4d757374206f776e206275696c64696e672c2033207965617273206f662070726f6669746162696c6974792c207374726f6e672062616c616e6365207368656574, '0.000000', 0),
(4, 'Chico Lending Tree Capital Lease', 'Chico Lending Tree Capital Lease', 'Chico Lending Tree', 'Joe Chico', '530-530-6666', 'joe@lendingtree.com', 'Somewhere in Chico', 'Butte and Yuba county', 'Capital Lease', '0.000000', '0.0000', 0, '0.00', 10, '5.657890', '35.000000', '0.00000', '0.000', 0, '0.00000000000', '0.00800148600', '2015-02-02 16:07:39', 1, 0x4d757374206f776e206275696c64696e6720616e642069662066696e616e6369616c7320617265206e6f74207374726f6e6720656e6f7567682077696c6c207265717569726520706572736f6e616c2067756172616e7465652066726f6d207072696e636970616c73, '0.000000', 0),
(5, 'Loan 7.5%int 20yr Butte Bank', 'Loan 7.5%int 20yr Butte Bank', 'YB', 'NA', '999-999-999', 'NA@NA.com', '4444 Main St, \\r\\nSan Francisco, CA', 'Butte County', 'Loan', '7.500000', '0.0000', 12, '1000.00', 20, '6.000000', '0.000000', '0.00000', '0.000', 0, '0.00000000000', '0.00000000000', '2015-02-02 16:21:24', 1, 0x4d757374206f776e206275696c64696e67, '0.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pv_inverters`
--

CREATE TABLE `pv_inverters` (
  `pin_id` double NOT NULL,
  `pin_brand` varchar(255) NOT NULL,
  `pin_logo` varchar(255) NOT NULL,
  `pin_model` varchar(255) NOT NULL,
  `pin_capacity` varchar(255) NOT NULL,
  `pin_warranty` blob NOT NULL,
  `pin_warrantyOther` blob NOT NULL,
  `pin_extendedWarranty` blob NOT NULL,
  `pin_notes` blob NOT NULL,
  `pin_sellingPoints` blob NOT NULL,
  `pin_specSheet` varchar(255) NOT NULL,
  `pin_active` tinyint(1) NOT NULL,
  `pin_inverterEfficiency` varchar(255) NOT NULL,
  `pin_voltage` varchar(255) NOT NULL,
  `pin_mppt` varchar(255) NOT NULL,
  `pin_warrantyLink` varchar(255) NOT NULL,
  `pin_price` decimal(12,3) NOT NULL,
  `pin_pricePer` varchar(64) NOT NULL,
  `pin_stringSizeToolLink` varchar(255) NOT NULL,
  `pin_pvsimInverterId` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_inverters`
--

INSERT INTO `pv_inverters` (`pin_id`, `pin_brand`, `pin_logo`, `pin_model`, `pin_capacity`, `pin_warranty`, `pin_warrantyOther`, `pin_extendedWarranty`, `pin_notes`, `pin_sellingPoints`, `pin_specSheet`, `pin_active`, `pin_inverterEfficiency`, `pin_voltage`, `pin_mppt`, `pin_warrantyLink`, `pin_price`, `pin_pricePer`, `pin_stringSizeToolLink`, `pin_pvsimInverterId`) VALUES
(1, 'SMA', 'http://www.sma-america.com/fileadmin/templates/sma/images/logo.png', 'Sunny TripPower 24000TL-US', '24', 0x6173676466736164, 0x73646166736461666173, 0x736466617366616473, 0x64736166617364, 0x54687265652d7068617365207472616e73666f726d65726c65737320696e76657274657220697320554c206c697374656420666f7220757020746f20313030302056204443206d6178696d756d2073797374656d20766f6c7461676520616e6420686173207065616b20656666696369656e63792061626f76652039382070657263656e742c207768696c65204f7074695472616320476c6f62616c205065616b206d696e696d697a6573207468652065666665637473206f6620736861646520666f72206d6178696d756d20656e657267792070726f64756374696f6e2e204571756970706564207769746820616c6c2d706f6c652067726f756e64206661756c742070726f74656374696f6e20616e64206d65657473204e4543203230313120726571756972656d656e7473207769746820696e7465677261746564204146434920666f72206120736166652c2072656c6961626c6520736f6c7574696f6e2e205769646520696e70757420766f6c746167652072616e676520616e642074776f20696e646570656e64656e74204d505020747261636b6572732e205375697461626c6520666f7220626f746820363030205620444320616e6420312c3030302056204443206170706c69636174696f6e732e, 'http://www.sma-america.com/en_US/products/grid-tied-inverters/sunny-tripower/sunny-tripower-12000tl-', 1, '98.2%', '1000V', '300V 800V', 'sadfas', '0.345', 'Wp', '', '48'),
(2, 'Solectria Renewables', 'http://www.altestore.com/Solar/descfiles/solectria/Solectria_Renewables_Logo.png', 'PVI 28TL', '28', 0x3130207965617273, '', 0x3130207965617220657874656e73696f6e20617661696c61626c65, '', 0x536f6c6563747269612052656e657761626c65739220505649203233544c20616e6420505649203238544c2061726520636f6d706163742c207472616e73666f726d65726c6573732074687265652d706861736520696e766572746572732077697468206475616c204d505020747261636b65722e20546865736520696e7665727465727320636f6d65207374616e64617264207769746820414320616e6420444320646973636f6e6e6563742c20757365722d696e746572616374697665204c43442c20382d6675736520737472696e6720636f6d62696e657220616e64204443206172632d6661756c742070726f74656374696f6e2e2049747320736d616c6c20616e64206c696768747765696768742064657369676e206d616b6520666f7220717569636b20616e64206561737920696e7374616c6c6174696f6e20616e64206d61696e74656e616e63652e20546865736520696e7665727465727320696e636c75646520616e20656e68616e6365642044535020636f6e74726f6c2c20636f6d70726568656e736976652070726f74656374696f6e2066756e6374696f6e732c20616e6420616476616e63656420746865726d616c2064657369676e20656e61626c696e6720686967686573742072656c696162696c69747920616e6420757074696d652e205468657920616c736f20636f6d6520776974682061207374616e6461726420313020796561722077617272616e74792077697468206f7074696f6e7320666f7220313520616e642032302079656172732e20417661696c61626c65206f7074696f6e7320696e636c756465207765622d6261736564206d6f6e69746f72696e672c20736861646520636f76657220616e642044432f414320646973636f6e6e65637420636f766572732e, '', 1, '98.4', '1000', '2', '', '4404.000', 'ea', '', '654'),
(3, 'Solectria Renewables', 'http://www.altestore.com/Solar/descfiles/solectria/Solectria_Renewables_Logo.png', 'PVI 23TL', '23.0', 0x3130207965617273, '', 0x3130207965617220657874656e73696f6e20617661696c61626c65, '', 0x536f6c6563747269612052656e657761626c65739220505649203233544c20616e6420505649203238544c2061726520636f6d706163742c207472616e73666f726d65726c6573732074687265652d706861736520696e766572746572732077697468206475616c204d505020747261636b65722e20546865736520696e7665727465727320636f6d65207374616e64617264207769746820414320616e6420444320646973636f6e6e6563742c20757365722d696e746572616374697665204c43442c20382d6675736520737472696e6720636f6d62696e657220616e64204443206172632d6661756c742070726f74656374696f6e2e2049747320736d616c6c20616e64206c696768747765696768742064657369676e206d616b6520666f7220717569636b20616e64206561737920696e7374616c6c6174696f6e20616e64206d61696e74656e616e63652e20546865736520696e7665727465727320696e636c75646520616e20656e68616e6365642044535020636f6e74726f6c2c20636f6d70726568656e736976652070726f74656374696f6e2066756e6374696f6e732c20616e6420616476616e63656420746865726d616c2064657369676e20656e61626c696e6720686967686573742072656c696162696c69747920616e6420757074696d652e205468657920616c736f20636f6d6520776974682061207374616e6461726420313020796561722077617272616e74792077697468206f7074696f6e7320666f7220313520616e642032302079656172732e20417661696c61626c65206f7074696f6e7320696e636c756465207765622d6261736564206d6f6e69746f72696e672c20736861646520636f76657220616e642044432f414320646973636f6e6e65637420636f766572732e, '', 1, '98.4', '1000', '2', '', '4164.000', 'ea', '', '655');

-- --------------------------------------------------------

--
-- Table structure for table `pv_leads`
--

CREATE TABLE `pv_leads` (
  `pvl_id` double NOT NULL,
  `pvl_names` varchar(255) NOT NULL,
  `pvl_firstName` varchar(64) NOT NULL,
  `pvl_lastName` varchar(64) NOT NULL,
  `pvl_spouseFirstName` varchar(64) NOT NULL,
  `pvl_status` varchar(64) NOT NULL,
  `pvl_qualified` int(11) NOT NULL,
  `pvl_enteredDate` datetime NOT NULL,
  `pvl_remindMeDate` datetime NOT NULL,
  `pvl_lastUpdate` datetime NOT NULL,
  `pvl_nextScheduledDate` datetime NOT NULL,
  `pvl_proposalDeliveredDate` datetime NOT NULL,
  `pvl_referredBy` varchar(128) NOT NULL,
  `pvl_sourceId` varchar(128) NOT NULL,
  `pvl_sqft` int(11) NOT NULL,
  `pvl_acres` decimal(6,2) NOT NULL,
  `pvl_averageElectricBill` int(11) NOT NULL,
  `pvl_deadReason` varchar(255) NOT NULL,
  `pvl_soldDate` datetime NOT NULL,
  `pvl_notes` blob NOT NULL,
  `pvl_revenueSold` decimal(10,2) NOT NULL,
  `pvl_financing` varchar(255) NOT NULL,
  `pvl_unitsSold` decimal(10,2) NOT NULL,
  `pvl_repId` double NOT NULL,
  `pvl_address1` varchar(255) NOT NULL,
  `pvl_address2` varchar(255) NOT NULL,
  `pvl_city` varchar(64) NOT NULL,
  `pvl_state` varchar(64) NOT NULL,
  `pvl_county` varchar(64) NOT NULL,
  `pvl_zip` varchar(16) NOT NULL,
  `pvl_country` varchar(64) NOT NULL,
  `pvl_phone1` varchar(64) NOT NULL,
  `pvl_phone2` varchar(64) NOT NULL,
  `pvl_phone3` varchar(64) NOT NULL,
  `pvl_email1` varchar(64) NOT NULL,
  `pvl_email2` varchar(64) NOT NULL,
  `pvl_textMessageNumber` varchar(64) NOT NULL,
  `pvl_searchedKeywords` varchar(255) NOT NULL,
  `pvl_landingPage` varchar(255) NOT NULL,
  `pvl_lastWebsiteVisitDate` datetime NOT NULL,
  `pvl_lastIpAddress` varchar(64) NOT NULL,
  `pvl_retarget` varchar(64) NOT NULL,
  `pvl_abandonment` varchar(64) NOT NULL,
  `pvl_numberWebsiteVisits` varchar(64) NOT NULL,
  `pvl_type` varchar(64) NOT NULL,
  `pvl_company` varchar(64) NOT NULL,
  `pvl_title` varchar(64) NOT NULL,
  `pvl_score` int(11) NOT NULL,
  `pvl_utility` varchar(64) NOT NULL,
  `pvl_phone1Type` varchar(16) NOT NULL,
  `pvl_phone2Type` varchar(16) NOT NULL,
  `pvl_phone3type` varchar(16) NOT NULL,
  `pvl_nextContactDate` date NOT NULL,
  `pvl_nextContactTime` varchar(16) NOT NULL,
  `pvl_nextContactType` varchar(16) NOT NULL,
  `pvl_nextContactAgreedByCusomer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_leads`
--

INSERT INTO `pv_leads` (`pvl_id`, `pvl_names`, `pvl_firstName`, `pvl_lastName`, `pvl_spouseFirstName`, `pvl_status`, `pvl_qualified`, `pvl_enteredDate`, `pvl_remindMeDate`, `pvl_lastUpdate`, `pvl_nextScheduledDate`, `pvl_proposalDeliveredDate`, `pvl_referredBy`, `pvl_sourceId`, `pvl_sqft`, `pvl_acres`, `pvl_averageElectricBill`, `pvl_deadReason`, `pvl_soldDate`, `pvl_notes`, `pvl_revenueSold`, `pvl_financing`, `pvl_unitsSold`, `pvl_repId`, `pvl_address1`, `pvl_address2`, `pvl_city`, `pvl_state`, `pvl_county`, `pvl_zip`, `pvl_country`, `pvl_phone1`, `pvl_phone2`, `pvl_phone3`, `pvl_email1`, `pvl_email2`, `pvl_textMessageNumber`, `pvl_searchedKeywords`, `pvl_landingPage`, `pvl_lastWebsiteVisitDate`, `pvl_lastIpAddress`, `pvl_retarget`, `pvl_abandonment`, `pvl_numberWebsiteVisits`, `pvl_type`, `pvl_company`, `pvl_title`, `pvl_score`, `pvl_utility`, `pvl_phone1Type`, `pvl_phone2Type`, `pvl_phone3type`, `pvl_nextContactDate`, `pvl_nextContactTime`, `pvl_nextContactType`, `pvl_nextContactAgreedByCusomer`) VALUES
(1, '', 'Joe', 'Montana', '', '4-Qualified', 0, '2015-03-18 16:18:34', '0000-00-00 00:00:00', '2015-03-25 12:47:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'EMCA', 'PPC Google', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x49534f2d383630312079656172206e756d6265722e205468697320686173207468652073616d652076616c756520617320592c206578636570742074686174206966207468652049534f207765656b206e756d626572202857292062656c6f6e677320746f207468652070726576696f7573206f72206e65787420796561722c20746861742079656172206973207573656420696e73746561642e2028616464656420696e2050485020352e312e3029, '0.00', '', '0.00', 16, '3326', 'Cambridge rd', 'cameron park', 'CA', '', '95682', '', '1-800-999-9999', '1-919-212-2222', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'ACME', 'VP or Relations', 0, '', 'B', 'M', '', '2015-03-31', '', '', 0),
(2, '', 'Joe', 'smith', '', '4-Qualified', 0, '2015-03-25 11:14:55', '0000-00-00 00:00:00', '2015-03-25 11:37:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'E-mail', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x4d79206e6f7465732072652067726561740d0a6d6f7265206e6f746573, '0.00', '', '0.00', 16, '1235', 'Darling Way', 'Folsom', 'CA', 'Sacramento County', '95630', 'United States', '916-916-9166', '916-999-9999', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Tesla Corp', 'President', 0, '', 'B', 'M', '', '0000-00-00', '', '', 0),
(3, '', 'Johnny', 'Rockets', '', '4-Qualified', 0, '2015-03-25 12:03:00', '0000-00-00 00:00:00', '2015-03-25 12:03:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'E-mail', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x54686973206973206d79206e6f7465, '0.00', '', '0.00', 16, '4501', 'Latrobe Rd', 'El Dorado Hills', 'CA', 'El Dorado County', '95762', 'United States', '530-530-5300', '530-555-5555', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Super Burger LLC', 'President', 0, '', 'H', 'F', '', '0000-00-00', '', '', 0),
(4, '', 'Juan', 'Pablo', '', '4-Qualified', 0, '2015-03-25 12:10:41', '0000-00-00 00:00:00', '2015-03-26 10:23:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'E-mail', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x6d6f7265206e6f746573, '0.00', '', '0.00', 16, '311', 'Vernon St', 'Roseville', 'CA', 'Placer County', '95678', 'United States', '999-999-9999 x 156', '777-777-7777', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Vatican City II', 'Pope', 0, '', 'B', 'M', '', '2015-03-31', '', '', 0),
(5, '', 'Palmiro', 'Caballasca', '', '4-Qualified', 0, '2015-03-25 12:19:34', '0000-00-00 00:00:00', '2015-03-25 12:19:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jacinta Pichimauida', 'PPC Google', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x4d792064657461696c6564206e6f7465732061726520686572652e2062696c6c206a3139396d20646b6b, '0.00', '', '0.00', 16, '4944', 'Breese Cir', 'El Dorado Hills', 'CA', 'El Dorado County', '95762', 'United States', '777-777-7777', '8888-8888-88888', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Senorita Maestra Studios', 'CEO', 0, '', 'H', 'F', '', '2015-03-31', '', '', 0),
(6, '', 'Rocky', 'Balboa', '', '4-Qualified', 0, '2015-03-25 12:24:29', '0000-00-00 00:00:00', '2015-03-25 12:36:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Rambo', 'PPC Google', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x54686520636f727265637420776972652073697a6520666f7220636f6e6e656374696e6720736f6c61722070616e656c7320746f207468652062617474657269657320696e206120736f6c617220656e657267792073797374656d206d7573742062652061206c6172676520656e6f7567682073697a65202867617567652920746f20736166656c7920616e6420656666696369656e746c79206361727279207468652044432063757272656e742066726f6d2074686520736f6c61722070616e656c7320746f207468652073797374656d2065717569706d656e742e204966207468652077697265732f6361626c65732061726520746f6f20736d616c6c2c206e6f74206f6e6c792063616e2074686520776972696e672067657420686f742028776869636820697320626164292c2062757420616c736f2074686572652077696c6c206265206120766f6c746167652064726f702064756520746f2074686520726573697374616e6365206f662074686520776972657320616e64206c65737320656e657267792028616d7073292077696c6c2062652064656c69766572656420746f20746865206261747465726965732e205468657265206172652074776f207761797320746f20736f6c766520746869732070726f626c656d2e20546865206669727374206973206f6620636f7572736520757365206c61726765722077697265732f6361626c65732e2053696e636520636f707065722077697265732061726520657870656e736976652c20612062657474657220617070726f61636820697320746f2075736520612068696768657220766f6c746167652073797374656d2e, '0.00', '', '0.00', 16, '7794', 'Folsom Dam Rd', 'Folsom', 'CA', 'Sacramento County', '95630', 'United States', '515-515-5151', '515-515-5155', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Ring Side Popcorn LLC', 'Fighter', 0, '', 'B', 'B', '', '2015-03-31', '', '', 0),
(7, '', 'Moscato', 'Moscatell', '', '4-Qualified', 0, '2015-03-25 12:46:58', '0000-00-00 00:00:00', '2015-03-25 12:46:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Johnny', 'Radio', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x49534f2d383630312079656172206e756d6265722e205468697320686173207468652073616d652076616c756520617320592c206578636570742074686174206966207468652049534f207765656b206e756d626572202857292062656c6f6e677320746f207468652070726576696f7573206f72206e65787420796561722c20746861742079656172206973207573656420696e73746561642e2028616464656420696e2050485020352e312e3029, '0.00', '', '0.00', 16, '2295', 'Iron Point Rd', 'Folsom', 'CA', 'Sacramento County', '95630', 'United States', '5166565151', '916919619', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Bodegas del Solar Parana', 'Manager', 0, '', 'F', 'B', '', '2015-03-31', '', '', 0),
(8, '', 'cesar', 'Baine', '', '4-Qualified', 0, '2015-03-25 12:53:50', '0000-00-00 00:00:00', '2015-03-25 12:53:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'jjj', 'PPC Google', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x596f752063616e2070726576656e742061207265636f676e697a65642063686172616374657220696e2074686520666f726d617420737472696e672066726f6d206265696e6720657870616e646564206279206573636170696e672069742077697468206120707265636564696e67206261636b736c6173682e204966207468652063686172616374657220776974682061206261636b736c61736820697320616c72656164792061207370656369616c2073657175656e63652c20796f75206d6179206e65656420746f20616c736f2065736361706520746865206261636b736c6173682e, '0.00', '', '0.00', 16, '1120', 'Harvard Way', 'El Dorado Hills', 'CA', 'El Dorado County', '95762', 'United States', '151651', '26521+65', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Dog Enterprises', 'Dog King', 0, '', 'B', 'H', '', '2015-03-31', '', '', 0),
(9, '', 'Sam', 'Ceasar', '', '4-Qualified', 0, '2015-03-25 12:56:26', '0000-00-00 00:00:00', '2015-03-25 12:56:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'johoh', 'Web search', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x596f752063616e2070726576656e742061207265636f676e697a65642063686172616374657220696e2074686520666f726d617420737472696e672066726f6d206265696e6720657870616e646564206279206573636170696e672069742077697468206120707265636564696e67206261636b736c6173682e204966207468652063686172616374657220776974682061206261636b736c61736820697320616c72656164792061207370656369616c2073657175656e63652c20796f75206d6179206e65656420746f20616c736f2065736361706520746865206261636b736c6173682e, '0.00', '', '0.00', 16, '151', 'N Sunrise Ave', 'Roseville', 'CA', 'Placer County', '95661', 'United States', '15651651', '156516', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Samantha Fox Corp.', 'Salad', 0, '', 'F', 'H', '', '2015-03-31', '', '', 0),
(10, '', 'Sam', 'Ceasar', '', '4-Qualified', 0, '2015-03-25 12:58:54', '0000-00-00 00:00:00', '2015-03-25 12:58:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'johoh', 'Web search', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x596f752063616e2070726576656e742061207265636f676e697a65642063686172616374657220696e2074686520666f726d617420737472696e672066726f6d206265696e6720657870616e646564206279206573636170696e672069742077697468206120707265636564696e67206261636b736c6173682e204966207468652063686172616374657220776974682061206261636b736c61736820697320616c72656164792061207370656369616c2073657175656e63652c20796f75206d6179206e65656420746f20616c736f2065736361706520746865206261636b736c6173682e, '0.00', '', '0.00', 16, '151', 'N Sunrise Ave', 'Roseville', 'CA', 'Placer County', '95661', 'United States', '15651651', '156516', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Samantha Fox Corp.', 'Salad', 0, '', 'F', 'H', '', '0000-00-00', '', '', 0),
(11, '', 'Fridge', 'Micro', '', '4-Qualified', 0, '2015-03-25 13:01:39', '0000-00-00 00:00:00', '2015-03-25 13:01:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ramsey', 'TV', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x416e797468696e6720676f6573, '0.00', '', '0.00', 16, '5169', 'Mississippi Bar Dr', 'Orangevale', 'CA', 'Sacramento County', '95662', 'United States', '516516516', '9191919191', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Chef Ent', 'Oven Master', 0, '', 'B', 'B', '', '2015-03-31', '', '', 0),
(12, '', 'Fridge', 'Micro', '', '4-Qualified', 0, '2015-03-25 13:03:38', '0000-00-00 00:00:00', '2015-03-25 13:03:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ramsey', 'TV', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x416e797468696e6720676f6573, '0.00', '', '0.00', 16, '5169', 'Mississippi Bar Dr', 'Orangevale', 'CA', 'Sacramento County', '95662', 'United States', '516516516', '9191919191', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Chef Ent', 'Oven Master', 0, '', 'B', 'B', '', '0000-00-00', '', '', 0),
(13, '', 'ramune', 'Strawberry', '', '4-Qualified', 0, '2015-03-25 13:07:12', '0000-00-00 00:00:00', '2015-03-25 13:07:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 0, '0.00', 0, '', '0000-00-00 00:00:00', '', '0.00', '', '0.00', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Sangria Juice', 'Driner', 0, '', '', '', '', '0000-00-00', '', '', 0),
(14, '', 'Natural', 'Flavor', '', '4-Qualified', 0, '2015-03-25 13:08:50', '0000-00-00 00:00:00', '2015-03-25 13:08:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x5468697320617265206d79206e6f746573, '0.00', '', '0.00', 16, '560', 'E Natoma St', 'Folsom', 'CA', 'Sacramento County', '95630', 'United States', '6516516', '651651651', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Real Sugar Corp', 'Orange', 0, '', 'H', 'F', '', '0000-00-00', '', '', 0),
(15, '', 'Natural', 'Flavor', '', '4-Qualified', 0, '2015-03-25 13:13:21', '0000-00-00 00:00:00', '2015-03-25 13:13:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x5468697320617265206d79206e6f746573, '0.00', '', '0.00', 16, '560', 'E Natoma St', 'Folsom', 'CA', 'Sacramento County', '95630', 'United States', '6516516', '651651651', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Real Sugar Corp', 'Orange', 0, '', 'H', 'F', '', '0000-00-00', '', '', 0),
(16, '', 'Natural', 'Flavor', '', '4-Qualified', 0, '2015-03-25 13:15:25', '0000-00-00 00:00:00', '2015-03-25 13:15:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x5468697320617265206d79206e6f746573, '0.00', '', '0.00', 16, '560', 'E Natoma St', 'Folsom', 'CA', 'Sacramento County', '95630', 'United States', '6516516', '651651651', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Real Sugar Corp', 'Orange', 0, '', 'H', 'F', '', '0000-00-00', '', '', 0),
(17, '', 'Natural', 'Flavor', '', '4-Qualified', 0, '2015-03-25 13:15:51', '0000-00-00 00:00:00', '2015-03-25 13:15:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 0, '0.00', 0, '', '0000-00-00 00:00:00', 0x5468697320617265206d79206e6f746573, '0.00', '', '0.00', 16, '560', 'E Natoma St', 'Folsom', 'CA', 'Sacramento County', '95630', 'United States', '6516516', '651651651', '', 'me@me.com', 'me2@me2.com', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', 'Real Sugar Corp', 'Orange', 0, '', 'H', 'F', '', '0000-00-00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pv_meters`
--

CREATE TABLE `pv_meters` (
  `pvb_id` double NOT NULL,
  `pvb_utilityId` double NOT NULL,
  `pvb_rateId` double NOT NULL,
  `pvb_alternativeRateId` double NOT NULL,
  `pvb_recommendRateChange` int(1) NOT NULL,
  `pvb_meterDescription` varchar(255) NOT NULL,
  `pvb_panelBoxAmps` varchar(32) NOT NULL,
  `pvb_meterNumber` varchar(32) NOT NULL,
  `pvb_opportunityId` double NOT NULL,
  `pvb_janKwh` int(11) NOT NULL,
  `pvb_febKwh` int(11) NOT NULL,
  `pvb_marKwh` int(11) NOT NULL,
  `pvb_aprKwh` int(11) NOT NULL,
  `pvb_mayKwh` int(11) NOT NULL,
  `pvb_junKwh` int(11) NOT NULL,
  `pvb_julKwh` int(11) NOT NULL,
  `pvb_augKwh` int(11) NOT NULL,
  `pvb_sepKwh` int(11) NOT NULL,
  `pvb_octKwh` int(11) NOT NULL,
  `pvb_novKwh` int(11) NOT NULL,
  `pvb_decKwh` int(11) NOT NULL,
  `pvb_lastUpdate` int(11) NOT NULL,
  `pvb_lastUpdateBy` double NOT NULL,
  `pvb_voltage` varchar(32) NOT NULL,
  `pvb_phase` varchar(32) NOT NULL,
  `pvb_interconnectNotes` blob NOT NULL,
  `pvb_parcelIdentification` varchar(64) NOT NULL,
  `pvb_lat` varchar(64) NOT NULL,
  `pvb_lon` varchar(64) NOT NULL,
  `pvb_type` varchar(64) NOT NULL,
  `pvb_parentMeter` double NOT NULL,
  `pvb_billBeforeSolar` decimal(12,2) NOT NULL,
  `pvb_billAfterSolar` decimal(12,2) NOT NULL,
  `pvb_billAfterSolarAlternativeRate` decimal(12,2) NOT NULL,
  `pvb_targetBillReduction` int(11) NOT NULL,
  `pvb_alternativeRateId2` double NOT NULL,
  `pvb_alternativeRateId3` double NOT NULL,
  `pvb_alternativeRateId4` double NOT NULL,
  `pvb_expectedChangeInConsumption` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_meters`
--

INSERT INTO `pv_meters` (`pvb_id`, `pvb_utilityId`, `pvb_rateId`, `pvb_alternativeRateId`, `pvb_recommendRateChange`, `pvb_meterDescription`, `pvb_panelBoxAmps`, `pvb_meterNumber`, `pvb_opportunityId`, `pvb_janKwh`, `pvb_febKwh`, `pvb_marKwh`, `pvb_aprKwh`, `pvb_mayKwh`, `pvb_junKwh`, `pvb_julKwh`, `pvb_augKwh`, `pvb_sepKwh`, `pvb_octKwh`, `pvb_novKwh`, `pvb_decKwh`, `pvb_lastUpdate`, `pvb_lastUpdateBy`, `pvb_voltage`, `pvb_phase`, `pvb_interconnectNotes`, `pvb_parcelIdentification`, `pvb_lat`, `pvb_lon`, `pvb_type`, `pvb_parentMeter`, `pvb_billBeforeSolar`, `pvb_billAfterSolar`, `pvb_billAfterSolarAlternativeRate`, `pvb_targetBillReduction`, `pvb_alternativeRateId2`, `pvb_alternativeRateId3`, `pvb_alternativeRateId4`, `pvb_expectedChangeInConsumption`) VALUES
(1, 1, 3, 1, 1, 'Warehouse meter', '400', '7879855-A', 5, 1000, 1000, 1000, 1000, 1000, 2000, 3000, 4000, 5000, 2000, 1000, 1000, 2015, 1, '12000', '3-Phase', 0x4e65772073776974636867656172206d61792062652072657175697265642e2054686520656c656374726963616c20696e66726173747275637475726520776173206275696c6420696e20313937312e2053776974636867656172206973206c6f636174656420696e206120626173656d656e74207769746820646966666963756c74206163636573732e20204c696e652d7369646520746170206d61792062652072657175697265642c2074686520414320446973636f6e6e656374206d6179206861766520746f20626520706c61636564203e2031302066742066726f6d2050472645206d657465722e, '1234', '', '', 'Load', 0, '47865.97', '0.00', '0.00', 85, 12, 5, 0, '100.00'),
(2, 1, 1, 12, 1, 'Barn meter', '400', '125355-A', 5, 1000, 1000, 1000, 1000, 1000, 2000, 3000, 4000, 5000, 2000, 1000, 1000, 2014, 1, '12000', '3-Phase', 0x4e65772073776974636867656172206d61792062652072657175697265642e2054686520656c656374726963616c20696e66726173747275637475726520776173206275696c6420696e20313937312e2053776974636867656172206973206c6f636174656420696e206120626173656d656e74207769746820646966666963756c74206163636573732e20204c696e652d7369646520746170206d61792062652072657175697265642c2074686520414320446973636f6e6e656374206d6179206861766520746f20626520706c61636564203e2031302066742066726f6d2050472645206d657465722e, 'APN: ATM-1234', '', '', 'Load', 5, '20154.69', '0.00', '0.00', 80, 0, 0, 0, '100.00'),
(3, 1, 6, 1, 0, 'Office', 'NA', '4565465465', 5, 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 11000, 12000, 0, 0, 'NA', '2-Phase ', 0x4d6574657220697320696e20746865206261636b206f6620746865206f6666696365206275696c64696e672e204d6179207265717569726520746f2072756e20636f6e64756974206f6e206f7574736964652077616c6c206f66206275696c64696e672e, 'NA', '', '', 'Load', 0, '28302.75', '0.00', '0.00', 0, 0, 0, 0, '0.00'),
(4, 1, 10, 0, 0, 'Home', '200', '89879815', 5, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1500, 1000, 2014, 1, 'NA', '2-Phase ', 0x536d617274204d6574657220697320616c726561647920696e7374616c6c65642c207468652070616e656c20626f78207365656d6564204e4f5420746f206861766520726f6f6d20666f72206164646974696f6e616c20627265616b657220666f7220736f6c61722e, 'NA', '', '', 'Load', 0, '57288.44', '0.00', '0.00', 0, 0, 0, 0, '0.00'),
(5, 1, 6, 0, 0, 'NEMA', 'NA', 'NA', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2014, 1, '480V', '3-Phase', '', '', '', '', 'Generation', 0, '0.00', '0.00', '0.00', 80, 0, 0, 0, '100.00'),
(6, 1, 6, 1, 1, 'Main', '400', '2855920454', 6, 9920, 7681, 6825, 6836, 10768, 14293, 18060, 14489, 13898, 10938, 7360, 8800, 2015, 1, '480', '3-Phase', '', '', '', '', 'Load', 0, '28774.01', '0.00', '0.00', 99, 5, 0, 0, '100.00'),
(7, 1, 10, 0, 0, 'Solar Gen', '400', 'TBD', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2014, 1, '480', '3-Phase', '', '', '', '', 'Generation', 0, '0.00', '0.00', '0.00', 100, 0, 0, 0, '100.00'),
(8, 1, 10, 0, 0, 'Home', '200A', '12345', 6, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 0, 0, 2014, 1, '240', '2-Phase ', '', '', '', '', 'Load', 7, '0.00', '0.00', '0.00', 100, 0, 0, 0, '100.00'),
(9, 1, 11, 0, 0, 'Shop', '200', '4567', 6, 50000, 50000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 2014, 1, '240', '2-Phase ', '', '', '', '', 'Load', 7, '0.00', '0.00', '0.00', 100, 0, 0, 0, '100.00'),
(10, 1, 11, 0, 0, 'Appartment', '200', '987654', 6, 0, 0, 0, 0, 80000, 80000, 80000, 80000, 80000, 80000, 0, 0, 2014, 1, '240', '2-Phase ', '', '', '', '', 'Load', 7, '0.00', '0.00', '0.00', 100, 0, 0, 0, '100.00'),
(11, 1, 5, 1, 0, 'LCI 7673', 'NA', 'NA', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2015, 1, 'NA', '2-Phase ', '', 'NA', '', '', 'Load', 0, '0.00', '0.00', '0.00', 100, 0, 0, 0, '100.00'),
(12, 1, 5, 1, 0, 'LCI 4337', 'NA', 'NA', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2015, 1, 'NA', '2-Phase ', '', 'NA', '', '', 'Load', 0, '0.00', '0.00', '0.00', 100, 0, 0, 0, '100.00'),
(13, 1, 13, 0, 0, 'Irrigation Pump', '400', '123456', 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2015, 1, '240', '3-Phase', '', '123456', '', '', 'Load', 0, '20538.30', '0.00', '0.00', 100, 0, 0, 0, '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `pv_metersTimeOfUseConsumption`
--

CREATE TABLE `pv_metersTimeOfUseConsumption` (
  `pto_id` double NOT NULL,
  `pto_rateTimeOfUseId` double NOT NULL,
  `pto_rateId` double NOT NULL,
  `pto_meterId` double NOT NULL,
  `pto_janKwh` int(11) NOT NULL,
  `pto_febKwh` int(11) NOT NULL,
  `pto_marKwh` int(11) NOT NULL,
  `pto_aprKwh` int(11) NOT NULL,
  `pto_mayKwh` int(11) NOT NULL,
  `pto_junKwh` int(11) NOT NULL,
  `pto_julKwh` int(11) NOT NULL,
  `pto_augKwh` int(11) NOT NULL,
  `pto_sepKwh` int(11) NOT NULL,
  `pto_octKwh` int(11) NOT NULL,
  `pto_novKwh` int(11) NOT NULL,
  `pto_decKwh` int(11) NOT NULL,
  `pto_janKw` int(11) NOT NULL,
  `pto_febKw` int(11) NOT NULL,
  `pto_marKw` int(11) NOT NULL,
  `pto_aprKw` int(11) NOT NULL,
  `pto_mayKw` int(11) NOT NULL,
  `pto_junKw` int(11) NOT NULL,
  `pto_julKw` int(11) NOT NULL,
  `pto_augKw` int(11) NOT NULL,
  `pto_sepKw` int(11) NOT NULL,
  `pto_octKw` int(11) NOT NULL,
  `pto_novKw` int(11) NOT NULL,
  `pto_decKw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_metersTimeOfUseConsumption`
--

INSERT INTO `pv_metersTimeOfUseConsumption` (`pto_id`, `pto_rateTimeOfUseId`, `pto_rateId`, `pto_meterId`, `pto_janKwh`, `pto_febKwh`, `pto_marKwh`, `pto_aprKwh`, `pto_mayKwh`, `pto_junKwh`, `pto_julKwh`, `pto_augKwh`, `pto_sepKwh`, `pto_octKwh`, `pto_novKwh`, `pto_decKwh`, `pto_janKw`, `pto_febKw`, `pto_marKw`, `pto_aprKw`, `pto_mayKw`, `pto_junKw`, `pto_julKw`, `pto_augKw`, `pto_sepKw`, `pto_octKw`, `pto_novKw`, `pto_decKw`) VALUES
(6, 6, 3, 1, 0, 0, 0, 0, 18720, 18160, 18720, 18320, 16880, 24080, 0, 0, 0, 0, 0, 0, 10, 20, 30, 40, 50, 60, 0, 0),
(7, 7, 3, 1, 0, 0, 0, 0, 7600, 5840, 5920, 5520, 5220, 5120, 0, 0, 0, 0, 0, 0, 46, 49, 49, 48, 44, 42, 0, 0),
(8, 8, 3, 1, 0, 0, 0, 0, 3040, 4960, 5120, 4640, 4720, 6640, 0, 0, 0, 0, 0, 0, 43, 46, 46, 45, 41, 42, 0, 0),
(9, 9, 3, 1, 16000, 17120, 14800, 16240, 0, 0, 0, 0, 0, 0, 18160, 15520, 888, 999, 888, 777, 0, 0, 0, 0, 0, 0, 666, 555),
(10, 10, 3, 1, 8960, 9520, 9280, 9940, 0, 0, 0, 0, 0, 0, 7520, 9360, 42, 41, 42, 42, 0, 0, 0, 0, 0, 0, 42, 40),
(11, 11, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 41, 42, 42, 0, 0, 0, 0, 0, 0, 42, 41),
(12, 12, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 49, 49, 48, 44, 42, 0, 0),
(13, 1, 1, 2, 0, 0, 0, 0, 2000, 2000, 2000, 2000, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 2, 1, 2, 0, 0, 0, 0, 3000, 3000, 3000, 3000, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 3, 1, 2, 0, 0, 0, 0, 4000, 4000, 4000, 4000, 4000, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 4, 1, 2, 5000, 5000, 5000, 5000, 0, 0, 0, 0, 0, 0, 5000, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 5, 1, 2, 6000, 6000, 6000, 6000, 0, 0, 0, 0, 0, 0, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 1, 1, 3, 0, 0, 0, 0, 924, 1645, 1857, 2227, 2400, 1564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 2, 1, 3, 0, 0, 0, 0, 1593, 1486, 1674, 1993, 2154, 3457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 4, 1, 3, 484, 976, 1530, 1978, 0, 0, 0, 0, 0, 0, 5193, 5566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 3, 1, 3, 0, 0, 0, 0, 2483, 2869, 3469, 3781, 4446, 4980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 5, 1, 3, 516, 1024, 1470, 2022, 0, 0, 0, 0, 0, 0, 5807, 6432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 6, 3, 2, 0, 0, 0, 0, 4000, 4000, 4000, 4000, 4000, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 7, 3, 2, 0, 0, 0, 0, 3000, 3000, 3000, 3000, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 8, 3, 2, 0, 0, 0, 0, 2000, 2000, 2000, 2000, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 9, 3, 2, 6000, 6000, 6000, 6000, 0, 0, 0, 0, 0, 0, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 10, 3, 2, 5000, 5000, 5000, 5000, 0, 0, 0, 0, 0, 0, 5000, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 18, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 49, 49, 48, 44, 42, 0, 0),
(160, 19, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 41, 42, 42, 0, 0, 0, 0, 0, 0, 42, 41),
(161, 17, 12, 1, 0, 0, 0, 0, 18720, 18160, 18720, 18320, 16880, 24080, 0, 0, 0, 0, 0, 0, 10, 20, 30, 40, 50, 60, 0, 0),
(162, 14, 12, 1, 0, 0, 0, 0, 7600, 5840, 5920, 5520, 5220, 5120, 0, 0, 0, 0, 0, 0, 46, 49, 49, 48, 44, 42, 0, 0),
(163, 13, 12, 1, 0, 0, 0, 0, 3040, 4960, 5120, 4640, 4720, 6640, 0, 0, 0, 0, 0, 0, 43, 46, 46, 45, 41, 42, 0, 0),
(164, 15, 12, 1, 16000, 17120, 14800, 16240, 0, 0, 0, 0, 0, 0, 18160, 15520, 888, 999, 888, 777, 0, 0, 0, 0, 0, 0, 666, 555),
(165, 16, 12, 1, 8960, 9520, 9280, 9940, 0, 0, 0, 0, 0, 0, 7520, 9360, 42, 41, 42, 42, 0, 0, 0, 0, 0, 0, 42, 40),
(166, 3, 1, 1, 0, 0, 0, 0, 18720, 18160, 18720, 18320, 16880, 24080, 0, 0, 0, 0, 0, 0, 10, 20, 30, 40, 50, 60, 0, 0),
(167, 2, 1, 1, 0, 0, 0, 0, 7600, 5840, 5920, 5520, 5220, 5120, 0, 0, 0, 0, 0, 0, 46, 49, 49, 48, 44, 42, 0, 0),
(168, 1, 1, 1, 0, 0, 0, 0, 3040, 4960, 5120, 4640, 4720, 6640, 0, 0, 0, 0, 0, 0, 43, 46, 46, 45, 41, 42, 0, 0),
(169, 5, 1, 1, 16000, 17120, 14800, 16240, 0, 0, 0, 0, 0, 0, 18160, 15520, 888, 999, 888, 777, 0, 0, 0, 0, 0, 0, 666, 555),
(170, 4, 1, 1, 8960, 9520, 9280, 9940, 0, 0, 0, 0, 0, 0, 7520, 9360, 42, 41, 42, 42, 0, 0, 0, 0, 0, 0, 42, 40),
(171, 22, 5, 1, 0, 0, 0, 0, 18720, 18160, 18720, 18320, 16880, 24080, 0, 0, 0, 0, 0, 0, 10, 20, 30, 40, 50, 60, 0, 0),
(172, 21, 5, 1, 0, 0, 0, 0, 7600, 5840, 5920, 5520, 5220, 5120, 0, 0, 0, 0, 0, 0, 46, 49, 49, 48, 44, 42, 0, 0),
(173, 20, 5, 1, 0, 0, 0, 0, 3040, 4960, 5120, 4640, 4720, 6640, 0, 0, 0, 0, 0, 0, 43, 46, 46, 45, 41, 42, 0, 0),
(174, 24, 5, 1, 16000, 17120, 14800, 16240, 0, 0, 0, 0, 0, 0, 18160, 15520, 888, 999, 888, 777, 0, 0, 0, 0, 0, 0, 666, 555),
(175, 23, 5, 1, 8960, 9520, 9280, 9940, 0, 0, 0, 0, 0, 0, 7520, 9360, 42, 41, 42, 42, 0, 0, 0, 0, 0, 0, 42, 40),
(176, 1, 1, 6, 0, 0, 0, 0, 3113, 4876, 6464, 4925, 4568, 3281, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0),
(177, 2, 1, 6, 0, 0, 0, 0, 2184, 2888, 4028, 2672, 2702, 2188, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0),
(178, 4, 1, 6, 4762, 3687, 2724, 3256, 0, 0, 0, 0, 0, 0, 2520, 4200, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
(179, 3, 1, 6, 0, 0, 0, 0, 5471, 6529, 7568, 6892, 6628, 5469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 5, 1, 6, 5158, 3994, 4101, 3580, 0, 0, 0, 0, 0, 0, 4840, 4600, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
(181, 20, 5, 6, 0, 0, 0, 0, 3113, 4876, 6464, 4925, 4568, 3281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 21, 5, 6, 0, 0, 0, 0, 2184, 2888, 4028, 2672, 2702, 2188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 23, 5, 6, 4762, 3687, 2724, 3256, 0, 0, 0, 0, 0, 0, 2520, 4200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 22, 5, 6, 0, 0, 0, 0, 5471, 6529, 7568, 6892, 6628, 5469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 24, 5, 6, 5158, 3994, 4101, 3580, 0, 0, 0, 0, 0, 0, 4840, 4600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 20, 5, 11, 0, 0, 0, 0, 819, 584, 486, 356, 801, 508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 21, 5, 11, 0, 0, 0, 0, 531, 409, 766, 326, 454, 435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 22, 5, 11, 0, 0, 0, 0, 566, 614, 596, 734, 638, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 23, 5, 11, 993, 861, 758, 1080, 0, 0, 0, 0, 0, 0, 669, 939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 24, 5, 11, 731, 525, 604, 566, 0, 0, 0, 0, 0, 0, 677, 1127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 20, 5, 12, 0, 0, 0, 0, 89, 259, 320, 132, 45, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 21, 5, 12, 0, 0, 0, 0, 136, 196, 129, 55, 63, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 22, 5, 12, 0, 0, 0, 0, 150, 297, 206, 145, 121, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 23, 5, 12, 117, 63, 60, 128, 0, 0, 0, 0, 0, 0, 101, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 24, 5, 12, 219, 159, 137, 101, 0, 0, 0, 0, 0, 0, 187, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(196, 3, 1, 12, 0, 0, 0, 0, 150, 297, 206, 145, 121, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 2, 1, 12, 0, 0, 0, 0, 136, 196, 129, 55, 63, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 1, 1, 12, 0, 0, 0, 0, 89, 259, 320, 132, 45, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 5, 1, 12, 219, 159, 137, 101, 0, 0, 0, 0, 0, 0, 187, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(200, 4, 1, 12, 117, 63, 60, 128, 0, 0, 0, 0, 0, 0, 101, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(201, 3, 1, 11, 0, 0, 0, 0, 566, 614, 596, 734, 638, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 2, 1, 11, 0, 0, 0, 0, 531, 409, 766, 326, 454, 435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 1, 1, 11, 0, 0, 0, 0, 819, 584, 486, 356, 801, 508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 5, 1, 11, 731, 525, 604, 566, 0, 0, 0, 0, 0, 0, 677, 1127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 4, 1, 11, 993, 861, 758, 1080, 0, 0, 0, 0, 0, 0, 669, 939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 25, 13, 13, 0, 0, 0, 0, 1079, 1439, 1439, 1439, 1079, 360, 0, 0, 0, 0, 0, 0, 66, 67, 66, 66, 65, 65, 0, 0),
(207, 26, 13, 13, 0, 0, 0, 569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 27, 13, 13, 0, 0, 0, 4226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(209, 28, 13, 13, 0, 0, 0, 0, 13308, 17744, 17744, 17744, 13308, 4436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(210, 29, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 30, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 67, 66, 66, 65, 65, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pv_meterTimeOfUseProfile`
--

CREATE TABLE `pv_meterTimeOfUseProfile` (
  `pro_id` int(11) NOT NULL,
  `pro_profileId` varchar(64) NOT NULL,
  `pro_name` varchar(64) NOT NULL,
  `pro_janKwhPercent` decimal(5,4) NOT NULL,
  `pro_febKwhPercent` decimal(5,4) NOT NULL,
  `pro_marKwhPercent` decimal(5,4) NOT NULL,
  `pro_aprKwhPercent` decimal(5,4) NOT NULL,
  `pro_mayKwhPercent` decimal(5,4) NOT NULL,
  `pro_junKwhPercent` decimal(5,4) NOT NULL,
  `pro_julKwhPercent` decimal(5,4) NOT NULL,
  `pro_augKwhPercent` decimal(5,4) NOT NULL,
  `pro_sepKwhPercent` decimal(5,4) NOT NULL,
  `pro_octKwhPercent` decimal(5,4) NOT NULL,
  `pro_novKwhPercent` decimal(5,4) NOT NULL,
  `pro_decKwhPercent` decimal(5,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_meterTimeOfUseProfile`
--

INSERT INTO `pv_meterTimeOfUseProfile` (`pro_id`, `pro_profileId`, `pro_name`, `pro_janKwhPercent`, `pro_febKwhPercent`, `pro_marKwhPercent`, `pro_aprKwhPercent`, `pro_mayKwhPercent`, `pro_junKwhPercent`, `pro_julKwhPercent`, `pro_augKwhPercent`, `pro_sepKwhPercent`, `pro_octKwhPercent`, `pro_novKwhPercent`, `pro_decKwhPercent`) VALUES
(1, '1', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1370', '0.2257', '0.2226', '0.2214', '0.2101', '0.1038', '0.0000', '0.0000'),
(2, '1', 'Part-Peak', '0.4518', '0.4487', '0.4885', '0.4922', '0.3252', '0.2526', '0.2372', '0.2509', '0.2349', '0.3258', '0.4236', '0.4285'),
(3, '1', 'Off-Peak', '0.5482', '0.5513', '0.5115', '0.5078', '0.5378', '0.5217', '0.5402', '0.5278', '0.5550', '0.5704', '0.5764', '0.5715'),
(4, '2', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1325', '0.2577', '0.2521', '0.2365', '0.2458', '0.1628', '0.0000', '0.0000'),
(5, '2', 'Part-Peak', '0.5198', '0.5110', '0.5244', '0.5230', '0.3936', '0.2676', '0.2638', '0.2653', '0.2620', '0.3444', '0.4959', '0.5145'),
(6, '2', 'Off-Peak', '0.4802', '0.4890', '0.4756', '0.4770', '0.4739', '0.4748', '0.4841', '0.4982', '0.4923', '0.4928', '0.5041', '0.4855'),
(7, '3', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1848', '0.2742', '0.2653', '0.2784', '0.2667', '0.1564', '0.0000', '0.0000'),
(8, '3', 'Part-Peak', '0.4837', '0.4878', '0.5100', '0.4946', '0.3185', '0.2476', '0.2391', '0.2491', '0.2393', '0.3457', '0.4721', '0.4638'),
(9, '3', 'Off-Peak', '0.5163', '0.5122', '0.4900', '0.5054', '0.4966', '0.4782', '0.4956', '0.4726', '0.4940', '0.4980', '0.5279', '0.5362'),
(10, '4', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1479', '0.2332', '0.2278', '0.2311', '0.2266', '0.1253', '0.0000', '0.0000'),
(11, '4', 'Part-Peak', '0.4513', '0.4587', '0.4696', '0.4582', '0.3181', '0.2410', '0.2356', '0.2388', '0.2340', '0.3283', '0.4335', '0.4419'),
(12, '4', 'Off-Peak', '0.5487', '0.5413', '0.5304', '0.5418', '0.5340', '0.5258', '0.5366', '0.5301', '0.5394', '0.5465', '0.5665', '0.5581'),
(13, '5', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1231', '0.2290', '0.2221', '0.2243', '0.2155', '0.1441', '0.0000', '0.0000'),
(14, '5', 'Part-Peak', '0.4872', '0.4928', '0.5029', '0.4889', '0.3518', '0.2559', '0.2520', '0.2588', '0.2478', '0.3188', '0.4664', '0.4826'),
(15, '5', 'Off-Peak', '0.5128', '0.5072', '0.4971', '0.5111', '0.5251', '0.5151', '0.5259', '0.5169', '0.5367', '0.5371', '0.5336', '0.5174'),
(16, '6', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1783', '0.2718', '0.2547', '0.2714', '0.2562', '0.1328', '0.0000', '0.0000'),
(17, '6', 'Part-Peak', '0.4835', '0.4863', '0.5212', '0.4849', '0.3225', '0.2578', '0.2422', '0.2563', '0.2436', '0.3571', '0.4761', '0.4636'),
(18, '6', 'Off-Peak', '0.5165', '0.5137', '0.4788', '0.5151', '0.4992', '0.4704', '0.5031', '0.4724', '0.5002', '0.5101', '0.5239', '0.5364'),
(19, '7', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1361', '0.1889', '0.1851', '0.1893', '0.1820', '0.0963', '0.0000', '0.0000'),
(20, '7', 'Part-Peak', '0.3898', '0.3883', '0.4061', '0.3975', '0.2618', '0.2231', '0.2189', '0.2256', '0.2162', '0.3070', '0.3810', '0.3731'),
(21, '7', 'Off-Peak', '0.6102', '0.6117', '0.5939', '0.6025', '0.6021', '0.5880', '0.5960', '0.5850', '0.6018', '0.5967', '0.6190', '0.6269'),
(22, '8', 'On-Peak', '0.0000', '0.0000', '0.0000', '0.0000', '0.1285', '0.2044', '0.2006', '0.2071', '0.2000', '0.1184', '0.0000', '0.0000'),
(23, '8', 'Part-Peak', '0.4074', '0.4096', '0.4274', '0.4146', '0.2867', '0.2210', '0.2160', '0.2230', '0.2167', '0.3004', '0.3979', '0.3964'),
(24, '8', 'Off-Peak', '0.5926', '0.5904', '0.5726', '0.5854', '0.5848', '0.5746', '0.5834', '0.5700', '0.5833', '0.5812', '0.6021', '0.6036');

-- --------------------------------------------------------

--
-- Table structure for table `pv_meterTimeOfUseProfileHeader`
--

CREATE TABLE `pv_meterTimeOfUseProfileHeader` (
  `prf_id` double NOT NULL,
  `prf_name` varchar(132) NOT NULL,
  `prf_description` blob NOT NULL,
  `prf_lastUpdate` datetime NOT NULL,
  `prf_lastUpdateBy` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_meterTimeOfUseProfileHeader`
--

INSERT INTO `pv_meterTimeOfUseProfileHeader` (`prf_id`, `prf_name`, `prf_description`, `prf_lastUpdate`, `prf_lastUpdateBy`) VALUES
(1, 'PG&E Ag Service 3-TOU-Periods', 0x46726f6d20506163696669632047617320616e6420456c656374726963205768617420496620746f6f6c2e20417665726167652033342c303030206d6f6e74686c79206b57682c20313025204f6e207065616b, '2014-09-23 08:43:34', 1),
(2, 'PG&E Misc. Industries 3-TOU-Periods', 0x46726f6d2050472645207768617420696620746f6f6c2e2041766572616765206d6f6e74686c7920636f6e73756d7074696f6e206f662031332c303030206b57682c20313125206f6e207065616b, '2014-09-20 16:48:36', 1),
(3, 'PG&E Office 3-TOU-Periods', 0x46726f6d2050472645207768617420696620746f6f6c2e2041766572616765206d6f6e74686c7920636f6e73756d7074696f6e206f662031302c303030206b57682c20313225206f6e207065616b, '2014-09-20 16:48:43', 1),
(4, 'PG&E Machinery 3-TOU-Periods', 0x46726f6d2050472645207768617420696620746f6f6c2e2041766572616765206d6f6e74686c7920636f6e73756d7074696f6e206f662031372c303030206b57682c20313025206f6e207065616b, '2014-09-20 16:49:00', 1),
(5, 'PG&E Metal Fabricator 3-TOU-Periods', 0x46726f6d2050472645207768617420696620746f6f6c2e2041766572616765206d6f6e74686c7920636f6e73756d7074696f6e206f662032342c303030206b57682c20313025206f6e207065616b, '2014-09-20 16:48:20', 1),
(6, 'PG&E Retail 3-TOU-Periods', 0x46726f6d2050472645207768617420696620746f6f6c2e2041766572616765206d6f6e74686c7920636f6e73756d7074696f6e206f6620372c303030206b57682c20313225206f6e207065616b, '2014-09-20 16:48:49', 1),
(7, 'PG&E Hotel-Motel 3-TOU-Periods', 0x46726f6d2050472645207768617420696620746f6f6c2e2041766572616765206d6f6e74686c7920636f6e73756d7074696f6e206f662031362c303030206b57682c203825206f6e207065616b, '2014-09-20 16:49:08', 1),
(8, 'PG&E Grocery 3-TOU-Periods', 0x46726f6d2050472645207768617420696620746f6f6c2e2041766572616765206d6f6e74686c7920636f6e73756d7074696f6e206f662031362c303030206b57682c203925206f6e207065616b, '2014-09-20 16:49:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pv_modules`
--

CREATE TABLE `pv_modules` (
  `modid` double NOT NULL,
  `modbrand` varchar(64) NOT NULL DEFAULT '',
  `modlogoimage` varchar(255) NOT NULL,
  `modmodel` varchar(64) NOT NULL DEFAULT '',
  `modtype` varchar(64) NOT NULL DEFAULT '',
  `modwattsstc` decimal(8,2) NOT NULL DEFAULT '0.00',
  `modwattsptc` decimal(8,2) NOT NULL DEFAULT '0.00',
  `modpricew` decimal(8,2) NOT NULL DEFAULT '0.00',
  `modestpricew` decimal(8,2) NOT NULL DEFAULT '0.00',
  `modpricewupdate` date NOT NULL DEFAULT '0000-00-00',
  `modheight` decimal(8,2) NOT NULL DEFAULT '0.00',
  `modwidth` decimal(8,2) NOT NULL DEFAULT '0.00',
  `modnotes` varchar(255) NOT NULL DEFAULT '',
  `modsellingpoints` blob NOT NULL,
  `modspecsheet` varchar(255) NOT NULL DEFAULT '',
  `modstatus` varchar(64) NOT NULL DEFAULT '',
  `modtolerance` varchar(32) NOT NULL DEFAULT '',
  `modefficiency` varchar(32) NOT NULL DEFAULT '',
  `modpowerwarranty` varchar(255) NOT NULL DEFAULT '',
  `modmaterialwarranty` varchar(255) NOT NULL DEFAULT '',
  `modframe` varchar(64) NOT NULL DEFAULT '',
  `modlastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modmarkets` varchar(250) NOT NULL DEFAULT '',
  `modresi` tinyint(1) NOT NULL,
  `modcomm` tinyint(1) NOT NULL,
  `modavailable` tinyint(1) NOT NULL,
  `modimage` varchar(255) NOT NULL,
  `moddegradation` decimal(6,4) NOT NULL,
  `modgamma` varchar(16) NOT NULL,
  `modinoct` int(11) NOT NULL,
  `modactive` tinyint(1) NOT NULL,
  `modapi` varchar(128) NOT NULL,
  `modPvsimModuleId` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_modules`
--

INSERT INTO `pv_modules` (`modid`, `modbrand`, `modlogoimage`, `modmodel`, `modtype`, `modwattsstc`, `modwattsptc`, `modpricew`, `modestpricew`, `modpricewupdate`, `modheight`, `modwidth`, `modnotes`, `modsellingpoints`, `modspecsheet`, `modstatus`, `modtolerance`, `modefficiency`, `modpowerwarranty`, `modmaterialwarranty`, `modframe`, `modlastupdate`, `modmarkets`, `modresi`, `modcomm`, `modavailable`, `modimage`, `moddegradation`, `modgamma`, `modinoct`, `modactive`, `modapi`, `modPvsimModuleId`) VALUES
(1, 'ReneSolar', 'http://www.wagenvoortsolar.nl/images/renesola_logo600.png', 'JC255S-24/Bb', 'Mono crystalline', '255.00', '188.00', '0.70', '0.00', '0000-00-00', '53.50', '34.60', 'Check availability, short supply', 0x52656e65736f6c61206973206f6e65206f6620746865206c61726765737420736f6c61722070616e656c206d616e7566616374757265727320696e2074686520776f726c642c2061732077656c6c206173206f6e65206f6620746865206c656164696e6720737570706c6965727320746f204175737472616c69612e2054686520636f6d70616e792070726f647563657320612072616e6765206f66206166666f726461626c65209171756173692d6d6f6e6f6372797374616c6c696e65922c206d6f6e6f6372797374616c6c696e6520616e6420706f6c796372797374616c6c696e6520736f6c61722070616e656c732c2061732077656c6c20617320697473206f776e206c696e65206f66206d6963726f696e766572746572732e2054686520636f6d70616e792077696c6c20616c736f20736f6f6e20626520696e74726f647563696e6720697473206f776e20737472696e672f63656e7472616c20696e76657274657220736f6c7574696f6e2c20726f6f66207261636b696e672073797374656d2c20616e6420616e20656e657267792073746f726167652073797374656d20666f7220626f746820677269642d636f6e6e656374656420616e64206f66662d6772696420736f6c61722073797374656d7320696e746f20746865204175737472616c69616e206d61726b65742e, 'http://www.ecodirect.com/Renesola-JC255S-24-Bb-b-255W-30V-PV-Panel-p/renesola-jc255s-24-bb-b.htm', 'Available', '0/+5W', '14', '25-year power output transferable warranty with PICC insurance', '5 years', 'Black', '2014-03-04 19:05:14', 'US only', 1, 0, 1, '', '0.0050', '', 0, 0, 'PV-Watts-V4', ''),
(2, 'Trina Solar', 'http://www.trinasolar.com/HtmlData/images/global/logo_trinasolar.gif', 'STP200S-18/Ub-1', 'Mono crystalline', '200.00', '179.30', '2.50', '2.20', '0000-00-00', '58.30', '37.10', 'Possible price increase in Sep 2014 (MD 7/14)', 0x5472696e6120536f6c6172206d6f64756c657320686176652070726f76656e207468656972206869676820706572666f726d616e636520696e20746865206669656c642c207768657265206974206d617474657273206d6f73742e20496e206120686561642d746f2d6865616420636f6d70617269736f6e206f66205056206d6f64756c6573206d616465206279206c656164696e67206d616e756661637475726572732c205472696e6120536f6c6172206d6f64756c657320726563656e746c792072616e6b65642061742074686520746f7020666f72206d6f73742072656c6961626c6520706572666f726d616e636520756e646572207265616c2d77, 'http://www.affordable-solar.com/admin/product_doc/Doc_STP190-200-210_18Ud_E01_01%20Aug08EN_200901161', 'Available', '+/-3', '17', '25-year power output transferable warranty with PICC insurance', '5 years', 'Silver', '2009-07-31 12:22:56', 'US only price', 1, 0, 1, 'http://www.trinasolar.com/HtmlData/images/us/about-us/linear_performance_warranty.jpg', '0.0050', '-1', 50, 0, 'PV-Watts-V4', ''),
(11, 'SunPower', './img/sunpower_logo.png', 'SPR-X21-345-COM', 'Mono', '345.00', '323.30', '1.40', '0.00', '0000-00-00', '61.40', '41.20', '', 0x44657369676e65642062792053756e506f77657220696e2043616c69666f726e69612c204d6178656f6eae20736f6c617220746563686e6f6c6f6779206d616b6573206d6f726520656e657267792066726f6d2065766572792064726f70206f662073756e7368696e652e200d0a466163746f7220696e206f757220656c6567616e74207374796c696e6720616e6420696d7072657373697665206475726162696c6974792c20616e642069749273206e6f20776f6e646572207765206f75747368696e652074686520726573742e0d0a496620796f7592726520676f696e6720736f6c61722c20676f20616c6c20746865207761792e2053756e506f7765722073797374656d73206172652064657369676e656420746f2077616b65207570206561726c6965722c20776f726b2068617264657220616e64207475726e206f6666206c6174657220696e20746865206461792e200d0a536f20796f752063616e206d616b6520746865206d6f7374206f66206162756e64616e7420736f6c617220656e6572677920616e6420746865207661737420736176696e6773206974206272696e67732e0d0a5265616c20576f726c642052656c696162696c6974790d0a53756e506f7765722073797374656d7320617265206d65746963756c6f75736c792064657369676e656420616e642074657374656420746f207374616e6420757020746f2074686520686172736865737420636f6e646974696f6e733a200d0a74656d7065726174757265207377696e67732c20626174746572696e672077696e64732c2068756d69646974792c206861696c20616e64206d6f72652e2054686174927320776879206f75722070616e656c7320706572666f726d20636f6e73697374656e746c7920666f722077656c6c206f7665722032352079656172732e0d0a496e6475737472799273204265737420436f6d62696e656420506f77657220616e642050726f647563742057617272616e74790d0a53756e506f7765722069732070726f756420746f206f6666657220612032352d796561722077617272616e747920617320656666696369656e7420616e6420646570656e6461626c65206173206f757220746563686e6f6c6f67792e20496e2074686520756e6c696b656c79206576656e74207468617420796f75206861766520616e20756e646572706572666f726d696e672070616e656c2c2077652077696c6c20726570616972206f72207265706c616365207468652070616e656c20616e64207265696e7374616c6c206974206f6e20796f757220686f6d652e204f757220637573746f6d65722073657276696365207465616d20697320726561647920746f2061737369737420796f752e, 'http://us.sunpower.com/home-solar/solar-cell-technology-solutions/', 'Available', '+5/-3', '21.5%', '25 years', '25 years', 'Silver', '2009-06-22 19:00:45', 'US only', 1, 0, 1, 'http://www.civicsolar.com/sites/default/files/7th.png', '0.2500', '-0.30', 0, 1, 'CSV-8761row-Import', '594'),
(12, 'SunPower', './img/sunpower_logo.png', 'SPR-E20-327-COM', 'Mono', '327.00', '301.40', '1.31', '0.00', '0000-00-00', '61.40', '41.20', '', 0x44657369676e65642062792053756e506f77657220696e2043616c69666f726e69612c204d6178656f6eae20736f6c617220746563686e6f6c6f6779206d616b6573206d6f726520656e657267792066726f6d2065766572792064726f70206f662073756e7368696e652e205c725c6e466163746f7220696e206f757220656c6567616e74207374796c696e6720616e6420696d7072657373697665206475726162696c6974792c20616e642069749273206e6f20776f6e646572207765206f75747368696e652074686520726573742e5c725c6e496620796f7592726520676f696e6720736f6c61722c20676f20616c6c20746865207761792e2053756e506f7765722073797374656d73206172652064657369676e656420746f2077616b65207570206561726c6965722c20776f726b2068617264657220616e64207475726e206f6666206c6174657220696e20746865206461792e205c725c6e536f20796f752063616e206d616b6520746865206d6f7374206f66206162756e64616e7420736f6c617220656e6572677920616e6420746865207661737420736176696e6773206974206272696e67732e5c725c6e5265616c20576f726c642052656c696162696c6974795c725c6e53756e506f7765722073797374656d7320617265206d65746963756c6f75736c792064657369676e656420616e642074657374656420746f207374616e6420757020746f2074686520686172736865737420636f6e646974696f6e733a205c725c6e74656d7065726174757265207377696e67732c20626174746572696e672077696e64732c2068756d69646974792c206861696c20616e64206d6f72652e2054686174927320776879206f75722070616e656c7320706572666f726d20636f6e73697374656e746c7920666f722077656c6c206f7665722032352079656172732e5c725c6e496e6475737472799273204265737420436f6d62696e656420506f77657220616e642050726f647563742057617272616e74795c725c6e53756e506f7765722069732070726f756420746f206f6666657220612032352d796561722077617272616e747920617320656666696369656e7420616e6420646570656e6461626c65206173206f757220746563686e6f6c6f67792e20496e2074686520756e6c696b656c79206576656e74207468617420796f75206861766520616e20756e646572706572666f726d696e672070616e656c2c2077652077696c6c20726570616972206f72207265706c616365207468652070616e656c20616e64207265696e7374616c6c206974206f6e20796f757220686f6d652e204f757220637573746f6d65722073657276696365207465616d20697320726561647920746f2061737369737420796f752e5c725c6e, '', '', '+5/-3', '20.4', '25 years', '25 years', 'Silver', '0000-00-00 00:00:00', '', 0, 0, 0, '', '0.2500', '-0.38', 0, 1, 'CSV-8761row-Import', '587'),
(13, 'Mitsubishi', 'http://www.fpb.co.nz/wp-content/uploads/2012/08/mitsubishi_electric_cmyk.jpg', 'PV-MLE265HD', 'Mono', '265.00', '239.30', '0.99', '0.00', '0000-00-00', '64.00', '40.10', '', 0x4d69747375626973686920456c6563747269635c2773207068696c6f736f70687920666f72206d616e75666163747572696e672070686f746f766f6c746169632070726f647563747320636f6d65732066726f6d20746872656520756e7761766572696e67206261736963207072696e6369706c65733a20616476616e63656420746563686e6f6c6f676965732c207468652068696768657374207175616c6974792c20616e64206c6f6e672d7465726d2072656c696162696c6974792e5c725c6e20576520756e6465727374616e6420746861742070686f746f766f6c746169632073797374656d73206172652061206c6f6e672d7465726d20696e766573746d656e743b207468657265666f72652c206e6f20636f6d70726f6d697365732073686f756c64206265206d616465207768656e2063686f6f73696e67207468652072696768742070726f647563747320696e206f7264657220746f2061766f6964206675747572652070726f626c656d732e5c725c6e4174204d69747375626973686920456c6563747269632c20776520696e7465677261746520616c6c206f66206f75722070686f746f766f6c746169632070726f6475637420646576656c6f706d656e7420616e64206d616e75666163747572696e67206f7065726174696f6e73206174206f7572206f776e20666163696c697469657320696e204a6170616e2e2046726f6d2063656c6c20726573656172636820616e64206d6f64756c652064657369676e20746f2063656c6c2070726f64756374696f6e20616e64206d6f64756c6520617373656d626c792c207765206172652061626c6520746f2074616b6520636f6e74726f6c20696e20656163682073746570206f66207468652070726f636573732e5c725c6e5765206172652066756c6c7920636f6e666964656e7420616e642074616b6520677265617420707269646520696e2065616368206f66206f75722070726f64756374732c20616e6420776520696e7669746520796f7520746f20656e6a6f79207065616365206f66206d696e6420666f7220796561727320746f20636f6d652077697468204d69747375626973686920456c6563747269632050686f746f766f6c746169632053797374656d732e, 'http://www.mitsubishielectric.com/bu/solar/pv_modules/pdf/L-175-2-B9064-A.pdf', '', '-0/+5', '16.0', '25 years', '10 years', 'Silver', '0000-00-00 00:00:00', '', 0, 0, 0, '', '0.4000', '-0.45', 30, 1, 'PV-Watts-V4', ''),
(14, 'Suniva', 'http://www.northportinvestments.com/portals/npi_c403/images/suniva-logo298w.png', 'OPT-265-60-4-100', 'Mono', '265.00', '235.70', '0.86', '0.00', '0000-00-00', '65.04', '38.66', '', 0x4d6172696e6520677261646520616c756d696e756d2073696c766572206f7220626c61636b206672616d652028772f207768697465206f7220626c61636b206261636b207368656574293b20706f736974697665206f6e6c7920746f6c6572616e63653b2032352079656172206c696e6561722077617272616e74793b207269676f726f7573207175616c697479206d616e6167656d656e742e2042757920416d65726963612d636f6d706c69616e74206f7074696f6e20617661696c61626c652e, '', '', '-5/+5', '16.33', '25 years', '10 years', 'Silver', '0000-00-00 00:00:00', '', 0, 0, 0, '', '0.7000', '-0.42', 46, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pv_monitoring`
--

CREATE TABLE `pv_monitoring` (
  `pmo_id` double NOT NULL,
  `pmo_brand` varchar(64) NOT NULL,
  `pmo_logo` varchar(255) NOT NULL,
  `pmo_model` varchar(255) NOT NULL,
  `pmo_warranty` blob NOT NULL,
  `pmo_workmanship` varchar(255) NOT NULL,
  `pmo_warrantyOther` blob NOT NULL,
  `pmo_notes` blob NOT NULL,
  `pmo_sellingPoints` blob NOT NULL,
  `pmo_specSheet` varchar(255) NOT NULL,
  `pmo_active` tinyint(1) NOT NULL,
  `pmo_warrantyLink` varchar(255) NOT NULL,
  `pmo_price` decimal(12,3) NOT NULL,
  `pmo_pricePer` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_monitoring`
--

INSERT INTO `pv_monitoring` (`pmo_id`, `pmo_brand`, `pmo_logo`, `pmo_model`, `pmo_warranty`, `pmo_workmanship`, `pmo_warrantyOther`, `pmo_notes`, `pmo_sellingPoints`, `pmo_specSheet`, `pmo_active`, `pmo_warrantyLink`, `pmo_price`, `pmo_pricePer`) VALUES
(1, 'SolarEdge', 'http://energysolutionsmalvern.co.uk/wp-content/uploads/2014/05/solar_edge.png', 'Commercial Solution', 0x31302079656172, '', 0x322079656172206d6574656f726f676963616c2073746174696f6e20636f6d706f6e656e7473, 0x496e6372656173656420656e65726779207969656c643a0d0a0d0a202020204d6f726520656e657267792064756520746f206d6f64756c652d6c6576656c204d5050540d0a202020204d69736d6174636820706f776572206c6f7373657320656c696d696e617465640d0a202020204561737920616e6420636f737420656666696369656e74206d61696e74656e616e636520666f7220696e637265617365642075702d74696d65206f6620796f75722050562073797374656d0d0a0d0a200d0a0d0a4d6178696d756d2064657369676e20666c65786962696c6974793a0d0a0d0a2020202046617374657220616e64206561736965722064657369676e202d0d0a2020202020202020537472696e6773206f6620756e657175616c206c656e6774680d0a202020202020202054696c742f617a696d7574682064697665727369747920696e2073616d6520737472696e670d0a2020202020202020536861646520746f6c6572616e740d0a20202020202020204d6f64756c6573206f6620646966666572656e74206d6f64656c73202f20706f77657220726174696e67730d0a0d0a20202020557020746f2035302520726564756374696f6e20696e20656c656374726963616c20426f5320636f6d706f6e656e7473202877697265732c20636f6e64756974732c206a756e6374696f6e20626f7865732c2066757365732c206574632e292064756520746f206c6f6e67657220616e64207468657265666f726520666577657220737472696e6773207065722073797374656d0d0a0d0a200d0a0d0a7e313525204f264d20436f737420526564756374696f6e20616e642066757475726520636f6d7061746962696c697479202020200d0a0d0a20202020204d6f64756c652d6c6576656c206d6f6e69746f72696e672020666f722072656475636564206f7065726174696f6e20616e64206d61696e74656e616e636520636f7374730d0a2020202050696e706f696e74656420616c6572747320666f7220636f737420656666656374697665206d61696e74656e616e63650d0a20202020467574757265206164646974696f6e206f72207265706c6163656d656e74206f66206d6f64756c6573207769746820616e7920617661696c61626c65206d6f64756c65207479706520616e64206361706163697479200d0a0d0a200d0a0d0a200d0a0d0a46756c6c2073616665747920736f6c7574696f6e3a0d0a0d0a456c656374726f637574696f6e20616e642066697265207269736b732061726520656c696d696e617465642077697468207361666520766f6c746167657320647572696e6720696e7374616c6c6174696f6e2c206d61696e74656e616e636520616e6420666972656669676874696e67, 0x536f6c617245646765206f6666657273206120636f737420656666656374697665206d6f64756c652d6c6576656c206f7074696d697a6174696f6e20736f6c7574696f6e20666f7220636f6d6d65726369616c2073797374656d73207468617420616c6c6f777320796f7520746f2068617276657374206d6f726520706f7765722066726f6d20796f75722050562073797374656d2c20666f7220666173746573742072657475726e206f6e20696e766573746d656e742028524f492920616e64207265647563656420636f7374732e, 'http://www.solaredge.us/files/pdfs/products/power-optimizers/se-p-series-commercial-add-on-power-opt', 0, '', '0.000', ''),
(2, 'Locus Energy', 'http://aurora-energy.com/wp-content/uploads/2013/05/LocusLogo.gif', 'LGate 360 Commercial & utility', 0x35207965617273, 'werqasfd', 0x35207965617273207061727473, 0x736166647361666173, 0x466f72206c6172676520636f6d6d65726369616c20616e64207574696c6974792d7363616c65206170706c69636174696f6e732c204c6f63757320456e657267799273204c476174652033363020696e7465677261746573206365727469666965642074686972642d7061727479206d65746572696e6720616e6420646174616c6f6767696e6720636f6d706f6e656e747320696e746f20637573746f6d697a6564204e454d4120656e636c6f737572657320666f72206561737920696e7374616c6c6174696f6e2e204c6f63757320456e657267792064617461206c6f67676572732061726520636f6d70617469626c652077697468206120776964652072616e6765206f6620706f776572206d65746572732c20696e766572746572732c20776561746865722073746174696f6e7320616e6420737472696e67206d6f6e69746f72696e672065717569706d656e742e, 'http://locusenergy.com/wp-content/uploads/2014/02/Locus-LGate-360-Product-Sheet.pdf', 0, '2341243', '4500.000', 'ea'),
(3, 'Deck Monitoring AlsoEnergy', 'https://www.itron.com/na/partners/PublishedContent/DECK_logo_mi.jpg', 'Commercial PV', '', '', '', '', 0x546865206d6f6e69746f72696e6720736f6c7574696f6e2066726f6d204445434b206973207765622d626173656420736f6674776172652074686174206c65747320796f752073656520796f75722073797374656d2064617461206f6e20636f6d70757465727320616e64206d6f62696c6520646576696365732e2045616368206d6f6e69746f72696e67207061636b61676520696e636c75646573206120726576656e75652d6772616465206d6574657220616c6f6e672077697468206120676174657761792064657669636520746f2070726570617265206461746120666f7220746865207765622e204461746120697320707573686564206f7574207468726f75676820746865206c6f63616c20776562206e6574776f726b20286f7220627920612063656c6c756c6172206d6f64656d20666f722072656d6f7465206c6f636174696f6e73292e204461746120676f657320666972737420746f204445434b2077656220736572766572732c207468656e20697420706f70756c6174657320746f20796f75722074776f2077656220696e74657266616365733a207468652044617368626f61726420616e64207468652041646d696e2050616e656c2e, 'http://www.deckmonitoring.com/solar-monitoring/commercial-pv.html', 0, '', '3500.000', 'None'),
(4, 'SoraPro', 'http://www.sorapro.com/wp-content/uploads/2013/07/Clipboard01.jpg', 'VC-22 Commercial PV', '', '', '', '', 0x54686520534f524150524f20564332322072656d6f74656c79206d6f6e69746f727320656e6572677920616e64207765617468657220746f20656e7375726520746861742074686579206172652070726f647563696e67206174206f7074696d616c20656666696369656e637920617420616c6c2074696d65732e0d0a0d0a466561747572657320616e642062656e656669747320696e636c7564653a0d0a414e5349204331322e323020636572746966696564206d657465720d0a506c756720616e6420706c617920636f6e66696775726174696f6e0d0a496e646f6f72202f204f7574646f6f72204e454d41340d0a53696e676c65206f72207468726565207068617365206170706c69636174696f6e730d0a5072652d636f6e666967757265640d0a496e766572746572206c6576656c2063617061626c65, 'http://www.sorapro.com/wp-content/uploads/2014/05/Cutsheet_VC22.pdf', 1, '', '0.000', ''),
(5, 'SMA America', 'http://www.sma-america.com/fileadmin/templates/sma/images/logo.png', 'SunnyPortal', '', '', '', '', 0x5768657468657220666f72206120736d616c6c20686f6d652073797374656d206f722061206c6172676520736f6c6172207061726b2c2063656e7472616c697a65642061646d696e697374726174696f6e20616e642073797374656d206d6f6e69746f72696e672073617665732074696d6520616e64206d6f6e65792e205468726f756768207468652053756e6e7920506f7274616c2c20706c616e74206f70657261746f72732c20696e7374616c6c65727320616e64207365727669636520746563686e696369616e7320686176652061636365737320746f206b6579206461746120617420616e792074696d652c2066726f6d20616e79206c6f636174696f6e2e205072652d636f6e66696775726564207374616e646172642070616765732063616e20626520656173696c7920637573746f6d697a6564207769746820696e646976696475616c20696e666f726d6174696f6e2e205468652053756e6e7920506f7274616c20666561747572657320616c6d6f737420696e66696e697465206f7074696f6e7320666f7220616e616c797a696e67206461746120616e642076697375616c697a696e67207969656c64732c207768657468657220796f75206e65656420612064617461207461626c65206f72206120686967686c7920706572736f6e616c697a6564206469616772616d2e20496e206c61726765722073797374656d732c20746865207969656c6473206f6620616c6c20696e7665727465727320696e2074686520706c616e742061726520636f6d7061726564206175746f6d61746963616c6c792c20616c6c6f77696e6720666f722074686520646574656374696f6e206f66206576656e2074686520736d616c6c65737420646576696174696f6e732e2054686520706f77657266756c207265706f7274696e672066756e6374696f6e7320616c736f2070726f7669646520726567756c617220757064617465732076696120652d6d61696c20746f2068656c7020656e73757265207969656c64732e, '', 1, '', '0.000', ''),
(6, 'Solectria Renewables', 'http://www.altestore.com/Solar/descfiles/solectria/Solectria_Renewables_Logo.png', 'SolrenView', '', '', '', '', 0x536f6c72656e56696577207765622d6261736564206d6f6e69746f72696e672070726f76696465732050562073797374656d206f776e657273206120686967686c7920616363757261746520616e64207265616c2074696d65207765622d6261736564206d6f6e69746f72696e6720736f6c7574696f6e20746f206d6178696d697a6520656666696369656e637920616e642070726f6669746162696c697479206f6620746865697220736f6c6172206173736574732e20536f6c6563747269612052656e657761626c65739220536f6c72656e56696577206d6f6e69746f72696e6720736f6c7574696f6e20697320617661696c61626c6520666f72207573652077697468207265736964656e7469616c2c20636f6d6d65726369616c20616e64207574696c6974792d7363616c6520696e766572746572732c20616c6c6f77696e6720666f72207265616c2d74696d652c207365616d6c657373207265636f7264696e6720616e64207265706f7274696e67206f662050562073797374656d2070726f64756374696f6e2e2054686520536f6c72656e566965772064617461206c6f6767657220636f6d6573207374616e6461726420616e642066756c6c792d696e74656772617465642077697468696e20616c6c20636f6d6d65726369616c20616e64207574696c6974792d7363616c6520696e766572746572732e2041207374616e64616c6f6e6520536f6c72656e566965772064617461206c6f6767657220697320617661696c61626c6520666f722073696e676c652d706861736520696e766572746572732e2054686520636f6d706c65746520536f6c72656e566965772073797374656d20666561747572657320696e76657274657220646972656374206d6f6e69746f72696e672c20726576656e7565206772616465206d6f6e69746f72696e672c206167656e6379207265706f7274696e672c20536f6c5a6f6e6599207375622d61727261792063757272656e74206d6f6e69746f72696e672c20584d4c20666565642c206b696f736b207669657720616e6420776561746865722073746174696f6e206d6f6e69746f72696e672e, '', 1, '', '3500.000', 'None'),
(7, 'Solectria Renewables', '', 'SolrenView', '', '', '', '', 0x536f6c72656e56696577207765622d6261736564206d6f6e69746f72696e672070726f76696465732050562073797374656d206f776e657273206120686967686c7920616363757261746520616e64207265616c2074696d65207765622d6261736564206d6f6e69746f72696e6720736f6c7574696f6e20746f206d6178696d697a6520656666696369656e637920616e642070726f6669746162696c697479206f6620746865697220736f6c6172206173736574732e20536f6c6563747269612052656e657761626c65739220536f6c72656e56696577206d6f6e69746f72696e6720736f6c7574696f6e20697320617661696c61626c6520666f72207573652077697468207265736964656e7469616c2c20636f6d6d65726369616c20616e64207574696c6974792d7363616c6520696e766572746572732c20616c6c6f77696e6720666f72207265616c2d74696d652c207365616d6c657373207265636f7264696e6720616e64207265706f7274696e67206f662050562073797374656d2070726f64756374696f6e2e2054686520536f6c72656e566965772064617461206c6f6767657220636f6d6573207374616e6461726420616e642066756c6c792d696e74656772617465642077697468696e20616c6c20636f6d6d65726369616c20616e64207574696c6974792d7363616c6520696e766572746572732e2041207374616e64616c6f6e6520536f6c72656e566965772064617461206c6f6767657220697320617661696c61626c6520666f722073696e676c652d706861736520696e766572746572732e2054686520636f6d706c65746520536f6c72656e566965772073797374656d20666561747572657320696e76657274657220646972656374206d6f6e69746f72696e672c20726576656e7565206772616465206d6f6e69746f72696e672c206167656e6379207265706f7274696e672c20536f6c5a6f6e6599207375622d61727261792063757272656e74206d6f6e69746f72696e672c20584d4c20666565642c206b696f736b207669657720616e6420776561746865722073746174696f6e206d6f6e69746f72696e672e, '', 1, '', '3500.000', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `pv_products`
--

CREATE TABLE `pv_products` (
  `pvo_id` double NOT NULL,
  `pvo_type` varchar(64) NOT NULL,
  `pvo_description` varchar(255) NOT NULL,
  `pvo_unitCost` decimal(14,2) NOT NULL,
  `pvo_unitType` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_products`
--

INSERT INTO `pv_products` (`pvo_id`, `pvo_type`, `pvo_description`, `pvo_unitCost`, `pvo_unitType`) VALUES
(1, 'Inverter-To-Meter-Run', 'Ground mounted system (min 5.6kW dc)', '0.00', 'None'),
(2, 'Inverter-To-Meter-Run', 'Inverter to be located within 10 ft of electric meter', '0.00', 'None'),
(3, 'Inverter-To-Meter-Run', 'Inverter to be located within  30ft of electric meter', '0.00', 'None'),
(4, 'Inverter-To-Meter-Run', 'Inverter to be located within 60ft of electric meter', '0.00', 'None'),
(5, 'Inverter-To-Meter-Run', 'Inverter to be located within 80ft of electric meter', '0.00', 'None'),
(6, 'Inverter-To-Array-Run', 'Inverter mounted to the ground mounted rack', '0.00', 'None'),
(7, 'Inverter-To-Array-Run', 'Solar modules are located within 30 ft of inverter(s)', '0.00', 'None'),
(8, 'Inverter-To-Array-Run', 'Solar modules are located within 60ft of inverter (s)', '0.00', 'None'),
(9, 'Inverter-To-Array-Run', 'Solar modules are located within 100ft of inverter(s)', '0.00', 'None'),
(10, 'Wire-Run-Under-Array', 'Ground Mount Wire & MC connectors under the array', '0.00', 'None'),
(11, 'Wire-Run-Under-Array', 'No Attic run , conduit runs over the roof', '0.00', 'None'),
(12, 'Wire-Run-Under-Array', 'Attic run is no more than 30ft long - walking space', '0.00', 'None'),
(13, 'Wire-Run-Under-Array', 'Attic run is no more than 60 ft long - walking space', '0.00', 'None'),
(14, 'Wire-Run-Under-Array', 'Attic is no more than 90 ft long - walking space', '0.00', 'None'),
(15, 'Wire-Run-Under-Array', 'Attic run is no more than 30ft long - crawling only', '0.00', 'None'),
(16, 'Wire-Run-Under-Array', 'Attic run is no more than 60 ft long - crawling only', '0.00', 'None'),
(17, 'Wire-Run-Under-Array', 'Attic run is no more than 90 ft long - crawling only', '0.00', 'None'),
(18, 'Steepness', 'Ground mount rack will be tilted between 15 and 20 degrees', '0.00', 'None'),
(19, 'Steepness', 'Roof pitch is less than 5/12 or 22.5°', '0.00', 'None'),
(20, 'Steepness', 'Roof pitch is less than 8/12 or 33.69° ', '0.00', 'None'),
(21, 'Steepness', 'Roof pitch is more than 10/12 or 39.81° ', '0.00', 'None'),
(22, 'Steepness', 'Roof pitch is more than 12/12 or 45° ', '0.00', 'None'),
(23, 'Planes', 'One ground mount array', '0.00', 'None'),
(24, 'Planes', 'Solar array to be placed on one plane', '0.00', 'None'),
(25, 'Planes', 'Solar array to be placed on two planes', '0.00', 'None'),
(26, 'Planes', 'Solar array to be placed on three planes', '0.00', 'None'),
(27, 'Planes', 'Solar array to be placed on four planes', '0.00', 'None'),
(28, 'Array-Access', 'Easy work truck access to ground mount location', '0.00', 'None'),
(29, 'Array-Access', 'No vehicle or difficult work truck access to ground mount location', '0.00', 'None'),
(30, 'Array-Access', 'One story easy roof access', '0.00', 'None'),
(31, 'Array-Access', 'Two story easy access through first story', '0.00', 'None'),
(32, 'Array-Access', 'Two story', '0.00', 'None'),
(33, 'Surface', 'Flat & soft soil or clay', '0.00', 'None'),
(34, 'Surface', 'Flat clay soil with some rocks', '0.00', 'None'),
(35, 'Surface', 'Mildly steep & clay terrain', '0.00', 'None'),
(36, 'Surface', 'Mildly steep clay terrain with some rocks', '0.00', 'None'),
(37, 'Surface', 'Composition roof', '0.00', 'None'),
(38, 'Surface', 'Flat tile roof', '0.00', 'None'),
(39, 'Surface', 'Spanish tile roof', '0.00', 'None'),
(40, 'Surface', 'Metal tile roof', '0.00', 'None'),
(41, 'Surface', 'Shake or very old clay roofs or unlevel roofs roof', '0.00', 'None'),
(42, 'Surface', 'Metal high-low roof', '0.00', 'None'),
(43, 'Surface', 'Metal standing seam roof', '0.00', 'None'),
(44, 'Inverter-Location', 'Inverter to be placed with racking system', '0.00', 'None'),
(45, 'Inverter-Location', 'Inverter install at the ground mount location', '0.00', 'None'),
(46, 'Inverter-Location', 'Inverter will be placed on outside wall by the meter/panel box', '0.00', 'None'),
(47, 'Inverter-Location', 'Inverter will be placed on inside wall adjacent to meter/panel box', '0.00', 'None'),
(48, 'Structural-Engineering', 'Structural Engineering Included', '1000.00', 'None'),
(49, 'Structural-Engineering', 'Structural Engineering NOT included', '0.00', 'None'),
(50, 'Trenching', 'Trench with Bobcat on clay soil', '1.83', 'None'),
(51, 'Trenching', 'Not Included', '0.00', 'ft'),
(52, 'Trenching', 'Trench with Bobcat on clay with rocks soil', '3.67', 'None'),
(53, 'Trenching', 'Trench with Bobcat on rocky soil', '5.50', 'None'),
(54, 'Trenching', 'Trench with Bobcat on concrete/ashpalt', '7.33', 'None'),
(55, 'Trenching', 'Trench with Walk Behind on clay soil', '5.50', 'None'),
(56, 'Trenching', 'Trench with Walk Behind on clay with rocks soil', '11.00', 'ft'),
(57, 'Trenching', 'Trench with Walk Behind on rocky soil', '16.50', 'ft'),
(58, 'Trenching', 'Trench with Walk Behind on concrete/ashpalt', '22.00', 'ft'),
(59, 'Trenching', 'Trench by hand on clay soil', '14.67', 'ft'),
(60, 'Trenching', 'Trench by hand on clay with rocks soil', '22.00', 'ft'),
(61, 'Trenching', 'Trench by hand rocky soil', '33.00', 'ft'),
(62, 'Trenching', 'Trench by hand on concrete/ashpalt', '44.00', 'ft'),
(63, 'Home-Run-Wire', '50 feet or less (<5kW) req. 200A service req.', '66.00', 'None'),
(64, 'Home-Run-Wire', '100 feet or less (<5kW) req. 200A service req.', '183.00', 'None'),
(65, 'Home-Run-Wire', '200 feet or less (<5kW) req. 200A service req.', '588.00', 'None'),
(66, 'Home-Run-Wire', '350 feet or less (<5kW) req. 200A service req.', '1615.00', 'None'),
(67, 'Home-Run-Wire', '500 feet or less (<5kW) req. 200A service req.', '3595.00', 'None'),
(68, 'Home-Run-Wire', '50 feet or less (<10kW) req. 200A service req.', '106.00', 'None'),
(69, 'Home-Run-Wire', '100 feet or less (<10kW) req. 200A service req.', '319.00', 'None'),
(70, 'Home-Run-Wire', '200 feet or less (<10kW) req. 200A service req.', '918.00', 'None'),
(71, 'Home-Run-Wire', '350 feet or less (<10kW) req. 200A service req.', '2554.00', 'None'),
(72, 'Home-Run-Wire', '500 feet or less (<10kW) req. 200A service req.', '4741.00', 'None'),
(73, 'Home-Run-Wire', '50 feet or less (<15kW) req. 400A service req.', '146.00', 'None'),
(74, 'Home-Run-Wire', '100 feet or less (<15kW) req. 400A service req.', '397.00', 'None'),
(75, 'Home-Run-Wire', '200 feet or less (<15kW) req. 400A service req.', '1513.00', 'None'),
(76, 'Home-Run-Wire', '350 feet or less (<15kW) req. 400A service req.', '4237.00', 'None'),
(77, 'Home-Run-Wire', '500 feet or less (<15kW) req. 400A service req.', '5178.00', 'None'),
(78, 'Home-Run-Wire', '50 feet or less (<20kW) req. 400A service req.', '184.00', 'None'),
(79, 'Home-Run-Wire', '100 feet or less (<20kW) req. 400A service req.', '572.00', 'None'),
(80, 'Home-Run-Wire', '200 feet or less (<20kW) req. 400A service req.', '2138.00', 'None'),
(81, 'Home-Run-Wire', '350 feet or less (<20kW) req. 400A service req.', '5548.00', 'None'),
(82, 'Home-Run-Wire', '500 feet or less (<20kW) req. 400A service req.', '7595.00', 'None'),
(83, 'Home-Run-Wire', 'Other, ask engineering', '25000.00', 'None'),
(84, 'Panel Upgrade', 'Panel upgrade from 100amp to 200amp', '3000.00', 'None'),
(85, 'Panel Upgrade', 'Panel upgrade from 200amp to 400amp', '4000.00', 'None'),
(86, 'Panel Upgrade', 'Panel upgrade from 100amp to 400amp', '4000.00', 'None'),
(87, 'Panel Upgrade', 'Panel upgrade NOT included', '0.00', 'None'),
(88, 'Panel Upgrade', 'Panel upgrade required but cost not included', '0.00', 'None'),
(89, 'Building-Permit', 'Building permit cost included up to $100', '100.00', 'None'),
(90, 'Building-Permit', 'Building permit cost NOT included', '0.00', 'None'),
(91, 'Building-Permit', 'Building permit cost included up to $200', '200.00', 'None'),
(92, 'Building-Permit', 'Building permit cost included up to $300', '300.00', 'None'),
(93, 'Monitoring', '3rd party meter monitoring + 5yr data service', '3000.00', 'None'),
(94, 'Monitoring', '3rd party meter monitoring, No data service included', '1500.00', 'None'),
(95, 'Monitoring', 'No monitoring equipment or service included', '0.00', 'None'),
(96, 'Racking', 'Ground mounted rack, galvanized, concrete foundations', '700.00', 'kWp'),
(97, 'Racking', 'Roof mounted galvanized racking', '500.00', 'kWp');

-- --------------------------------------------------------

--
-- Table structure for table `pv_proposalAttachments`
--

CREATE TABLE `pv_proposalAttachments` (
  `pat_id` double NOT NULL,
  `pat_proposalId` double NOT NULL,
  `pat_title` varchar(132) NOT NULL,
  `pat_content` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_proposalAttachments`
--

INSERT INTO `pv_proposalAttachments` (`pat_id`, `pat_proposalId`, `pat_title`, `pat_content`) VALUES
(1, 1, 'Attachement A: PPA Term Sheet', 0x3c68333e5468697320697320746865207465726d73686565743c2f68333e0d0a3c756c3e0d0a3c6c693e4d757374206f776e20746865206275696c64696e673c2f6c693e0d0a3c6c693e4d757374206861766520616c6c20646f63756d656e747320696e206f726465723c2f6c693e0d0a3c2f756c3e0d0a3c703e446f63756d656e746174696f6e207265717569726564207072696f7220746f207369676e696e6720636f6e7472616374733c2f703e0d0a3c756c3e0d0a3c6c693e42796c61777320696e6469636174696e672070726f6f66206f6620617574686f7269747920746f2062696e6420656e746974793c2f6c693e0d0a3c6c693e4c6173742033207965617220617564697465642066696e616e6369616c2073746174656d656e74733c2f6c693e0d0a3c6c693e436f6665653c2f6c693e0d0a3c2f756c3e),
(2, 1, 'Attachment B: Pump Analysis', 0x3c68333e576520686176652074686520666f6c6c6f77696e6720616e616c797369733a3c2f68333e0d0a3c703e266e6273703b3c2f703e0d0a3c703e416e7469636970617465642050756d7020557361676520636f6e73756d7074696f6e3a3c2f703e0d0a3c703e4a414e203131356b57683c2f703e0d0a3c703e464542203131356b57683c2f703e0d0a3c703e4d4152203535316b57683c2f703e0d0a3c703e415052203135316b57683c2f703e0d0a3c703e266e6273703b3c2f703e);

-- --------------------------------------------------------

--
-- Table structure for table `pv_proposals`
--

CREATE TABLE `pv_proposals` (
  `pvp_id` double NOT NULL,
  `pvp_opportunityId` double NOT NULL,
  `pvp_title` varchar(255) NOT NULL,
  `pvp_lastUpdate` datetime NOT NULL,
  `pvp_lastUpdateBy` double NOT NULL,
  `pvp_expirationDays` int(11) NOT NULL,
  `pvp_issuedDate` date NOT NULL,
  `pvp_projectTimeline1` double NOT NULL,
  `pvp_projectTimelineTitle1` varchar(255) NOT NULL,
  `pvp_projectTimelineTitle2` varchar(255) NOT NULL,
  `pvp_projectTimeline2` double NOT NULL,
  `pvp_inclusions` blob NOT NULL,
  `pvp_exclusions` blob NOT NULL,
  `pvp_assumptions` blob NOT NULL,
  `pvp_warranties` blob NOT NULL,
  `pvp_arrayGroupList` varchar(255) NOT NULL,
  `pvp_meterList` varchar(255) NOT NULL,
  `pvp_template_pdf_page` varchar(255) NOT NULL,
  `pvp_status` varchar(64) NOT NULL,
  `pvp_loanName` varchar(255) NOT NULL,
  `pvp_loanProvider` varchar(255) NOT NULL,
  `pvp_loanTerms` blob NOT NULL,
  `pvp_loanInterest` decimal(7,0) NOT NULL,
  `pvp_loanYears` int(11) NOT NULL,
  `pvp_loanFees` decimal(5,4) NOT NULL,
  `pvp_loanDownpayment` decimal(15,2) NOT NULL,
  `pvp_includeLoan` tinyint(1) NOT NULL,
  `pvp_ppaName` varchar(255) NOT NULL,
  `pvp_ppaProvider` varchar(255) NOT NULL,
  `pvp_ppaTerms` blob NOT NULL,
  `pvp_ppaPricePerKwh` decimal(6,4) NOT NULL,
  `pvp_ppaYears` int(11) NOT NULL,
  `pvp_ppaEscalator` decimal(5,4) NOT NULL,
  `pvp_ppaTerminalValue` decimal(5,4) NOT NULL,
  `pvp_includePpa` tinyint(1) NOT NULL,
  `pvp_opLeaseName` varchar(255) NOT NULL,
  `pvp_opLeaseProvider` varchar(255) NOT NULL,
  `pvp_opLeasePayment` decimal(15,2) NOT NULL,
  `pvp_opLeaseYears` int(11) NOT NULL,
  `pvp_opLeaseTerms` blob NOT NULL,
  `pvp_opLeaseTerminalValue` decimal(5,4) NOT NULL,
  `pvp_opLeaseFees` decimal(5,4) NOT NULL,
  `pvp_includeOpLease` tinyint(1) NOT NULL,
  `pvp_preparedBy` double NOT NULL,
  `pvp_milestonePayment1` decimal(5,4) NOT NULL,
  `pvp_milestonePayment2` decimal(5,4) NOT NULL,
  `pvp_milestonePayment3` decimal(5,4) NOT NULL,
  `pvp_milestonePayment4` decimal(5,4) NOT NULL,
  `pvp_milestonePayment5` decimal(5,4) NOT NULL,
  `pvp_milestonePayment6` decimal(5,4) NOT NULL,
  `pvp_milestonePayment7` decimal(5,4) NOT NULL,
  `pvp_milestone1` varchar(255) NOT NULL,
  `pvp_milestone2` varchar(255) NOT NULL,
  `pvp_milestone3` varchar(255) NOT NULL,
  `pvp_milestone4` varchar(255) NOT NULL,
  `pvp_milestone5` varchar(255) NOT NULL,
  `pvp_milestone6` varchar(255) NOT NULL,
  `pvp_milestone7` varchar(255) NOT NULL,
  `pvp_financingType` varchar(64) NOT NULL,
  `pvp_pbiYears` int(11) NOT NULL,
  `pvp_pbiPerkwh` decimal(7,2) NOT NULL,
  `pvp_rebatePerWatt` decimal(7,2) NOT NULL,
  `pvp_pbiName` varchar(64) NOT NULL,
  `pvp_rebateName` varchar(64) NOT NULL,
  `pvp_stateTaxCredit` decimal(5,2) NOT NULL,
  `pvp_federalTaxCredit` decimal(5,2) NOT NULL,
  `pvp_photoForCover` varchar(255) NOT NULL,
  `pvp_includeDetailedEnergyAnalysis` tinyint(1) NOT NULL,
  `pvp_contractAmount` decimal(15,2) NOT NULL,
  `pvp_operationsAndMaintenanceCostPerKwp` decimal(12,4) NOT NULL,
  `pvp_operationsAndMaintenanceInflation` decimal(5,4) NOT NULL,
  `pvp_operationsAndMaintenanceScope` blob NOT NULL,
  `pvp_aboutUsPageContent` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_proposals`
--

INSERT INTO `pv_proposals` (`pvp_id`, `pvp_opportunityId`, `pvp_title`, `pvp_lastUpdate`, `pvp_lastUpdateBy`, `pvp_expirationDays`, `pvp_issuedDate`, `pvp_projectTimeline1`, `pvp_projectTimelineTitle1`, `pvp_projectTimelineTitle2`, `pvp_projectTimeline2`, `pvp_inclusions`, `pvp_exclusions`, `pvp_assumptions`, `pvp_warranties`, `pvp_arrayGroupList`, `pvp_meterList`, `pvp_template_pdf_page`, `pvp_status`, `pvp_loanName`, `pvp_loanProvider`, `pvp_loanTerms`, `pvp_loanInterest`, `pvp_loanYears`, `pvp_loanFees`, `pvp_loanDownpayment`, `pvp_includeLoan`, `pvp_ppaName`, `pvp_ppaProvider`, `pvp_ppaTerms`, `pvp_ppaPricePerKwh`, `pvp_ppaYears`, `pvp_ppaEscalator`, `pvp_ppaTerminalValue`, `pvp_includePpa`, `pvp_opLeaseName`, `pvp_opLeaseProvider`, `pvp_opLeasePayment`, `pvp_opLeaseYears`, `pvp_opLeaseTerms`, `pvp_opLeaseTerminalValue`, `pvp_opLeaseFees`, `pvp_includeOpLease`, `pvp_preparedBy`, `pvp_milestonePayment1`, `pvp_milestonePayment2`, `pvp_milestonePayment3`, `pvp_milestonePayment4`, `pvp_milestonePayment5`, `pvp_milestonePayment6`, `pvp_milestonePayment7`, `pvp_milestone1`, `pvp_milestone2`, `pvp_milestone3`, `pvp_milestone4`, `pvp_milestone5`, `pvp_milestone6`, `pvp_milestone7`, `pvp_financingType`, `pvp_pbiYears`, `pvp_pbiPerkwh`, `pvp_rebatePerWatt`, `pvp_pbiName`, `pvp_rebateName`, `pvp_stateTaxCredit`, `pvp_federalTaxCredit`, `pvp_photoForCover`, `pvp_includeDetailedEnergyAnalysis`, `pvp_contractAmount`, `pvp_operationsAndMaintenanceCostPerKwp`, `pvp_operationsAndMaintenanceInflation`, `pvp_operationsAndMaintenanceScope`, `pvp_aboutUsPageContent`) VALUES
(1, 6, 'Photovoltaic (PV) Solar Energy Proposal', '2015-02-13 15:35:58', 1, 45, '0000-00-00', 2, 'Schedule', '', 0, 0x3c756c3e0d0a3c6c693e416c6c206c61626f722c206d6174657269616c732c207065726d697420616e64206170706c69636174696f6e206665657320287475726e6b6579293c2f6c693e0d0a3c6c693e3130205965617220506172747320616e64204c61626f722057617272616e74793c2f6c693e0d0a3c6c693e323520596561722050616e656c2050726f64756374696f6e2057617272616e74793c2f6c693e0d0a3c6c693e496e74656e6574204d6f6e69746f72696e6720766961204445434b206d6f6e69746f72696e673c2f6c693e0d0a3c2f756c3e, 0x3c703e54686520696e7374616c6c65642053797374656d20636f73742069732076616c696420666f7220343520646179732e3c2f703e0d0a3c703e266e6273703b3c2f703e, '', '', 'LCI', '', 'proposal_template_01.php', '', '', '', '', '0', 0, '0.0000', '0.00', 0, '', '', '', '0.0000', 0, '0.0000', '0.0000', 0, '', '', '0.00', 0, '', '0.0000', '0.0000', 0, 1, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '', '', 'Cash', 0, '0.00', '0.00', '', '', '0.00', '0.00', './pdf_img/proposal_cover_aes_group.jpg', 1, '0.00', '0.0000', '0.0000', '', ''),
(2, 6, 'Zeroing Out The Bill', '2015-02-02 16:23:57', 1, 30, '0000-00-00', 2, 'Project Schedule', '', 0, 0x416c6c20696e636c75646564, 0x4c756e6368206e6f7420696e636c75646564, '', '', 'LCI', '', 'proposal_template_01.php', '', 'PACE', 'Ygrene', 0x4c69656e206f6e2070726f7065727479, '7', 20, '3.0000', '0.00', 1, '', '', '', '0.0000', 0, '0.0000', '0.0000', 0, '', '', '0.00', 0, '', '0.0000', '0.0000', 0, 1, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '', '', 'Loan', 0, '0.00', '0.00', '', '', '0.00', '30.00', './pdf_img/proposal_cover_AE_001.jpg', 1, '0.00', '0.0000', '0.0000', '', ''),
(3, 6, 'RoofTop SunPower', '2014-12-27 13:18:42', 1, 45, '0000-00-00', 2, 'Installation Schedule', '', 0, '', '', '', '', 'Normal,Standard-Efficiency', '', 'proposal_template_01.php', '', 'PACE', 'Ygrene', '', '8', 20, '3.0000', '0.00', 1, '', '', '', '0.0000', 0, '0.0000', '0.0000', 0, '', '', '0.00', 0, '', '0.0000', '0.0000', 1, 1, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '', '', 'Loan', 0, '0.00', '0.00', '', '', '0.00', '30.00', './pdf_img/proposal_cover_AE_002.jpg', 1, '0.00', '0.0000', '0.0000', '', ''),
(4, 5, 'AES Photovoltaic Proposal', '2015-01-15 14:35:23', 1, 30, '0000-00-00', 2, 'Schedule', '', 0, 0x3c756c3e0d0a3c6c693e416c6c206c61626f722c206d6174657269616c732c207065726d697420616e64206170706c69636174696f6e206665657320287475726e6b6579293c2f6c693e0d0a3c6c693e3130205965617220506172747320616e64204c61626f722057617272616e74793c2f6c693e0d0a3c6c693e323520596561722050616e656c2050726f64756374696f6e2057617272616e74793c2f6c693e0d0a3c6c693e496e74656e6574204d6f6e69746f72696e6720766961204445434b206d6f6e69746f72696e673c2f6c693e0d0a3c2f756c3e, 0x546869732070726f706f73616c2069732076616c696420666f722034352064617973, '', '', 'Sunpower', '', 'proposal_template_01.php', '', '', '', '', '0', 0, '0.0000', '0.00', 1, '', '', '', '0.0000', 0, '0.0000', '0.0000', 1, '', '', '0.00', 0, '', '0.0000', '0.0000', 1, 1, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '', '', 'Cash', 0, '0.00', '0.00', '', '', '0.00', '30.00', './pdf_img/proposal_cover_aes_group.jpg', 1, '0.00', '0.0000', '0.0000', '', ''),
(5, 8, 'Photovoltaic (PV) Solar Energy Proposal', '2015-02-18 10:01:58', 1, 45, '0000-00-00', 2, 'Suggested Schedule', '', 0, 0x3c6f6c3e0d0a3c6c693e496e7374616c6c6174696f6e3c2f6c693e0d0a3c6c693e45717569706d656e743c2f6c693e0d0a3c6c693e456e67696e656572696e673c2f6c693e0d0a3c6c693e547261696e696e673c2f6c693e0d0a3c2f6f6c3e, 0x3c6f6c3e0d0a3c6c693e504726616d703b452073657276696365207570677261646520616e6420666565733c2f6c693e0d0a3c6c693e52656d6f76616c206f66206578697374696e67206f616b733c2f6c693e0d0a3c2f6f6c3e, '', '', 'IrrigationPump', '', 'proposal_template_01.php', '', '', '', '', '0', 0, '0.0000', '0.00', 0, '', '', '', '0.0000', 0, '0.0000', '0.0000', 0, '', '', '0.00', 0, '', '0.0000', '0.0000', 0, 1, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '', '', 'Cash', 0, '0.00', '0.00', '', '', '0.00', '0.00', './pdf_img/proposal_cover_aes_group.jpg', 1, '0.00', '0.0000', '0.0000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pv_pvsim`
--

CREATE TABLE `pv_pvsim` (
  `sim_id` double NOT NULL,
  `sim_description` varchar(132) NOT NULL,
  `sim_address1` varchar(64) NOT NULL,
  `sim_address2` varchar(64) NOT NULL,
  `sim_city` varchar(64) NOT NULL,
  `sim_state` varchar(64) NOT NULL,
  `sim_zip` varchar(32) NOT NULL,
  `sim_country` varchar(64) NOT NULL,
  `sim_county` varchar(64) NOT NULL,
  `sim_tilt` int(11) NOT NULL,
  `sim_azimuth` int(11) NOT NULL,
  `sim_inverterId` double NOT NULL,
  `sim_inverterQty` int(11) NOT NULL,
  `sim_inverterEfficiency` decimal(5,2) NOT NULL,
  `sim_inverterCapaciy` decimal(7,2) NOT NULL,
  `sim_inverterType` int(11) NOT NULL,
  `sim_monthlyShading` varchar(132) NOT NULL,
  `sim_parallelStringCount` int(11) NOT NULL,
  `sim_moduleId` double NOT NULL,
  `sim_lat` varchar(64) NOT NULL,
  `sim_lon` varchar(64) NOT NULL,
  `sim_longTermProductionYears` int(11) NOT NULL,
  `sim_moduleCountPerString` int(11) NOT NULL,
  `sim_lastUpdate` datetime NOT NULL,
  `sim_lastUpdateBy` double NOT NULL,
  `sim_kwhh` blob NOT NULL,
  `sim_kwhYear1` int(11) NOT NULL,
  `sim_longTermProduction` blob NOT NULL,
  `sim_status` int(11) NOT NULL,
  `sim_rainFall` blob NOT NULL,
  `sim_snowDepth` blob NOT NULL,
  `sim_weatherData` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_pvsim`
--

INSERT INTO `pv_pvsim` (`sim_id`, `sim_description`, `sim_address1`, `sim_address2`, `sim_city`, `sim_state`, `sim_zip`, `sim_country`, `sim_county`, `sim_tilt`, `sim_azimuth`, `sim_inverterId`, `sim_inverterQty`, `sim_inverterEfficiency`, `sim_inverterCapaciy`, `sim_inverterType`, `sim_monthlyShading`, `sim_parallelStringCount`, `sim_moduleId`, `sim_lat`, `sim_lon`, `sim_longTermProductionYears`, `sim_moduleCountPerString`, `sim_lastUpdate`, `sim_lastUpdateBy`, `sim_kwhh`, `sim_kwhYear1`, `sim_longTermProduction`, `sim_status`, `sim_rainFall`, `sim_snowDepth`, `sim_weatherData`) VALUES
(1, 'Sacramento 100kW', '1', 'Capitol Mall', 'Sacramento', 'CA', '95814', 'United States', '', 20, 0, 48, 1, '95.50', '78.00', 1, '0,0,0,0,0,0,0,0,0,0,0,0', 20, 587, '38.5802345', '-121.5062592', 0, 12, '2014-10-01 11:45:57', 1, '', 0, '', 0, '', '', ''),
(2, 'SunPower 327.COM', '3326', 'Cambridge Rd', 'Cameron Park', 'CA', '95682', 'United States', '', 15, 0, 654, 1, '98.00', '23.00', 1, '0,0,0,0,0,0,0,0,0,0,0,0', 8, 587, '38.675725', '-120.990715', 0, 12, '2014-10-07 06:33:29', 1, '', 0, '', 0, '', '', ''),
(3, 'BUTTE BIBLE ', '2255', 'Pillsbury Rd', 'Chico', 'CA', '95926', 'United States', '', 5, 110, 48, 1, '96.00', '20.00', 1, '0,0,0,0,0,0,0,0,0,0,0,0', 6, 640, '39.757474', '-121.848884', 25, 6, '2014-10-13 15:08:28', 12, '', 0, '', 0, '', '', ''),
(4, 'BUTTE BIBLE ', '2255', 'Pillsbury Rd', 'Chico', 'CA', '95926', 'United States', '', 5, 110, 48, 1, '96.00', '20.00', 1, '100,100,100,100,100,100,100,100,100,100,100,100', 6, 640, '39.757474', '-121.848884', 0, 6, '2014-10-13 15:05:49', 12, '', 0, '', 0, '', '', ''),
(5, 'RH TEST', '', 'Stevens Creek Blvd', 'San Jose', 'CA', '95117', 'United States', '', 20, 0, 48, 1, '97.50', '28.00', 0, '0,0,0,0,0,0,0,0,0,0,0,0', 6, 587, '37.3230072', '-121.9612044', 25, 13, '2014-10-14 10:47:09', 13, '', 0, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pv_pvSimInverters`
--

CREATE TABLE `pv_pvSimInverters` (
  `pin_id` double NOT NULL,
  `pin_simEngId` int(11) NOT NULL,
  `pin_manufacturer` varchar(64) NOT NULL,
  `pin_model` varchar(64) NOT NULL,
  `pin_power` int(11) NOT NULL,
  `pin_voltage` int(11) NOT NULL,
  `pin_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_pvSimInverters`
--

INSERT INTO `pv_pvSimInverters` (`pin_id`, `pin_simEngId`, `pin_manufacturer`, `pin_model`, `pin_power`, `pin_voltage`, `pin_active`) VALUES
(2, 988, 'ABB', 'PVS800-57-0250kW-A', 250000, 300, 0),
(3, 989, 'ABB', 'PVS800-57-0500kW-A', 500000, 300, 0),
(4, 990, 'ABB', 'PVS800-57-0630kW-B', 630000, 350, 0),
(5, 666, 'Advanced Energy', 'AE3.8', 3690, 208, 0),
(6, 667, 'Advanced Energy', 'AE3.8', 3710, 240, 0),
(7, 668, 'Advanced Energy', 'AE3.8', 3710, 277, 0),
(8, 669, 'Advanced Energy', 'AE5.0', 4470, 208, 0),
(9, 670, 'Advanced Energy', 'AE5.0', 4830, 240, 0),
(10, 671, 'Advanced Energy', 'AE5.0', 4830, 277, 0),
(11, 880, 'Advanced Energy', 'AE500TX', 500000, 480, 0),
(12, 672, 'Advanced Energy', 'AE6.0', 5980, 208, 0),
(13, 673, 'Advanced Energy', 'AE6.0', 6010, 240, 0),
(14, 674, 'Advanced Energy', 'AE6.0', 6000, 277, 0),
(15, 675, 'Advanced Energy', 'AE7.0', 6950, 208, 0),
(16, 676, 'Advanced Energy', 'AE7.0', 6920, 240, 0),
(17, 677, 'Advanced Energy', 'AE7.0', 7010, 277, 0),
(18, 591, 'Advanced Energy', 'Solaron 250', 250000, 480, 0),
(19, 341, 'Advanced Energy', 'Solaron 333--1XX', 333000, 480, 0),
(20, 338, 'Advanced Energy', 'Solaron 333-104', 333000, 480, 0),
(21, 339, 'Advanced Energy', 'Solaron 333-105', 333000, 480, 0),
(22, 340, 'Advanced Energy', 'Solaron 335-110', 335000, 480, 0),
(23, 342, 'Advanced Energy', 'Solaron 500-001', 500000, 480, 0),
(24, 657, 'Advanced Solar Photonics', 'PV240', 3690, 208, 0),
(25, 658, 'Advanced Solar Photonics', 'PV240', 3980, 240, 0),
(26, 659, 'Advanced Solar Photonics', 'PV240', 3980, 277, 0),
(27, 660, 'Advanced Solar Photonics', 'PV260', 5980, 208, 0),
(28, 661, 'Advanced Solar Photonics', 'PV260', 6010, 240, 0),
(29, 662, 'Advanced Solar Photonics', 'PV260', 6000, 277, 0),
(30, 663, 'Advanced Solar Photonics', 'PV270', 6950, 208, 0),
(31, 664, 'Advanced Solar Photonics', 'PV270', 6920, 240, 0),
(32, 665, 'Advanced Solar Photonics', 'PV270', 7010, 277, 0),
(33, 343, 'Alpha Technologies', 'Solaris 3500', 3500, 240, 0),
(34, 682, 'Altenergy Power System', 'YC200-NA', 220, 240, 0),
(35, 678, 'Altenergy Power System', 'YC250A', 225, 240, 0),
(36, 679, 'Altenergy Power System', 'YC250I', 225, 240, 0),
(37, 680, 'Altenergy Power System', 'YC500A', 450, 240, 0),
(38, 681, 'Altenergy Power System', 'YC500I', 450, 240, 0),
(39, 344, 'Beacon', 'M4', 4000, 120, 0),
(40, 345, 'Beacon', 'M4 PLUS', 4000, 120, 0),
(41, 346, 'Beacon', 'M5', 5000, 120, 0),
(42, 347, 'Beacon', 'M5 PLUS', 5000, 120, 0),
(43, 683, 'Chint Power Systems', 'CPS SC100KT-O US', 100000, 480, 0),
(44, 684, 'Chint Power Systems', 'CPS SC20KTL-DO US', 20000, 480, 0),
(45, 685, 'Chint Power Systems', 'CPS SCE4KTL-O US', 3690, 208, 0),
(46, 686, 'Chint Power Systems', 'CPS SCE4KTL-O US', 3980, 240, 0),
(47, 687, 'Chint Power Systems', 'CPS SCE4KTL-O US', 3980, 277, 0),
(48, 688, 'Chint Power Systems', 'CPS SCE5KTL-O US', 4470, 208, 0),
(49, 689, 'Chint Power Systems', 'CPS SCE5KTL-O US', 4830, 240, 0),
(50, 690, 'Chint Power Systems', 'CPS SCE5KTL-O US', 4830, 277, 0),
(51, 691, 'Chint Power Systems', 'CPS SCE6KTL-O US', 5980, 208, 0),
(52, 692, 'Chint Power Systems', 'CPS SCE6KTL-O US', 6010, 240, 0),
(53, 693, 'Chint Power Systems', 'CPS SCE6KTL-O US', 6000, 277, 0),
(54, 694, 'Chint Power Systems', 'CPS SCE7KTL-O US', 6950, 208, 0),
(55, 695, 'Chint Power Systems', 'CPS SCE7KTL-O US', 6920, 240, 0),
(56, 696, 'Chint Power Systems', 'CPS SCE7KTL-O US', 7010, 277, 0),
(57, 348, 'Connect Renewable Energy', 'CE4000', 3000, 240, 0),
(58, 872, 'Danfoss', 'MLX 30', 30000, 480, 0),
(59, 873, 'Danfoss', 'MLX 45', 45000, 480, 0),
(60, 874, 'Danfoss', 'MLX 60', 60000, 480, 0),
(61, 697, 'Darfon Electronics', 'MIG240UL00', 220, 240, 0),
(62, 349, 'Delta Energy Systems', 'SI 1800 US', 1800, 208, 0),
(63, 350, 'Delta Energy Systems', 'SI 1800 US', 1800, 240, 0),
(64, 351, 'Delta Energy Systems', 'SI 2500 US', 2500, 208, 0),
(65, 352, 'Delta Energy Systems', 'SI 2500 US', 2500, 240, 0),
(66, 698, 'Delta Energy Systems', 'SOLIVIA 4.4 NA G4 TR', 4528, 208, 0),
(67, 699, 'Delta Energy Systems', 'SOLIVIA 4.4 NA G4 TR', 4564, 240, 0),
(68, 700, 'Delta Energy Systems', 'SOLIVIA 5.0 NA G4 TR', 5084, 208, 0),
(69, 701, 'Delta Energy Systems', 'SOLIVIA 5.0 NA G4 TR', 5140, 240, 0),
(70, 524, 'Diehl Controls', '4301 S-A', 3190, 208, 0),
(71, 525, 'Diehl Controls', '4301 S-A', 3680, 240, 0),
(72, 353, 'Diehl Controls', 'Platinum 100 CS-A', 100000, 208, 0),
(73, 354, 'Diehl Controls', 'Platinum 100 CS-A', 100000, 480, 0),
(74, 355, 'Diehl Controls', 'Platinum 100 CS-A HE', 100000, 208, 0),
(75, 356, 'Diehl Controls', 'Platinum 100 CS-A HE', 100000, 480, 0),
(76, 702, 'Eltek', 'Theia 3.8He-t UL', 3810, 208, 0),
(77, 703, 'Eltek', 'Theia 3.8He-t UL', 3810, 240, 0),
(78, 704, 'Eltek', 'Theia 4.4He-t UL', 4400, 208, 0),
(79, 705, 'Eltek', 'Theia 4.4He-t UL', 4400, 240, 0),
(80, 706, 'Enecsys', 'SMI-480-60', 455, 240, 0),
(81, 571, 'Enphase Energy', 'D380-72-208-S1x', 380, 208, 0),
(82, 572, 'Enphase Energy', 'D380-72-240-S1x', 380, 240, 0),
(83, 357, 'Enphase Energy', 'D380-72-S1x', 380, 208, 0),
(84, 358, 'Enphase Energy', 'D380-72-S1x', 380, 240, 0),
(85, 359, 'Enphase Energy', 'M175-24-S', 175, 208, 0),
(86, 360, 'Enphase Energy', 'M175-24-S', 175, 240, 0),
(87, 361, 'Enphase Energy', 'M210-84-S11', 210, 208, 0),
(88, 362, 'Enphase Energy', 'M210-84-S11', 210, 240, 0),
(89, 707, 'Enphase Energy', 'M215-60-2LL-S2x-IG-NA', 215, 208, 0),
(90, 708, 'Enphase Energy', 'M215-60-2LL-S2x-IG-NA', 215, 240, 0),
(91, 576, 'Enphase Energy', 'M215-60-SIE-S2x-NA', 215, 208, 0),
(92, 577, 'Enphase Energy', 'M215-60-SIE-S2x-NA', 215, 240, 0),
(93, 363, 'Fronius', 'CL 33.3 delta', 33300, 208, 0),
(94, 364, 'Fronius', 'CL 33.3 delta', 33300, 240, 0),
(95, 365, 'Fronius', 'CL 36.0 WYE', 36000, 270, 0),
(96, 366, 'Fronius', 'CL 44.4 delta', 44400, 208, 0),
(97, 367, 'Fronius', 'CL 44.4 delta', 44400, 240, 0),
(98, 368, 'Fronius', 'CL 48.0 WYE', 48000, 277, 0),
(99, 369, 'Fronius', 'CL 55.5 delta', 55500, 208, 0),
(100, 370, 'Fronius', 'CL 55.5 delta', 55500, 240, 0),
(101, 371, 'Fronius', 'CL 60.0 WYE', 60000, 277, 0),
(102, 543, 'Fronius', 'IG Plus 11.4-1 uni', 11400, 208, 0),
(103, 544, 'Fronius', 'IG Plus 11.4-1 uni', 11400, 240, 0),
(104, 545, 'Fronius', 'IG Plus 11.4-1 uni', 11400, 277, 0),
(105, 372, 'Fronius', 'IG Plus 11.4-3 delta', 11400, 208, 0),
(106, 373, 'Fronius', 'IG Plus 11.4-3 delta', 11400, 240, 0),
(107, 546, 'Fronius', 'IG Plus 12.0-3 wye', 12000, 277, 0),
(108, 526, 'Fronius', 'IG Plus 3.0-1 uni', 3000, 208, 0),
(109, 527, 'Fronius', 'IG Plus 3.0-1 uni', 3000, 240, 0),
(110, 528, 'Fronius', 'IG Plus 3.0-1 uni', 3000, 277, 0),
(111, 529, 'Fronius', 'IG Plus 3.8-1 uni', 3800, 208, 0),
(112, 530, 'Fronius', 'IG Plus 3.8-1 uni', 3800, 240, 0),
(113, 531, 'Fronius', 'IG Plus 3.8-1 uni', 3800, 277, 0),
(114, 532, 'Fronius', 'IG Plus 5.0-1 uni', 5000, 208, 0),
(115, 533, 'Fronius', 'IG Plus 5.0-1 uni', 5000, 240, 0),
(116, 534, 'Fronius', 'IG Plus 5.0-1 uni', 5000, 277, 0),
(117, 535, 'Fronius', 'IG Plus 6.0-1 uni', 6000, 208, 0),
(118, 536, 'Fronius', 'IG Plus 6.0-1 uni', 6000, 240, 0),
(119, 537, 'Fronius', 'IG Plus 6.0-1 uni', 6000, 277, 0),
(120, 547, 'Fronius', 'IG Plus 7.5-1 uni', 7500, 208, 0),
(121, 538, 'Fronius', 'IG Plus 7.5-1 uni', 7500, 240, 0),
(122, 539, 'Fronius', 'IG Plus 7.5-1 uni', 7500, 277, 0),
(123, 540, 'Fronius', 'IG Plus V 10.0-1 uni', 9995, 208, 0),
(124, 541, 'Fronius', 'IG Plus V 10.0-1 uni', 9995, 240, 0),
(125, 542, 'Fronius', 'IG Plus V 10.0-1 uni', 9995, 277, 0),
(126, 617, 'Fronius', 'IG TL 3.0', 3000, 240, 0),
(127, 618, 'Fronius', 'IG TL 3.6', 3680, 240, 0),
(128, 619, 'Fronius', 'IG TL 4.0', 4000, 240, 0),
(129, 620, 'Fronius', 'IG TL 4.6', 4600, 240, 0),
(130, 621, 'Fronius', 'IG TL 5.0', 5000, 240, 0),
(131, 1, 'Fronius', 'IG2000', 2000, 240, 0),
(132, 2, 'Fronius', 'IG2500-LV', 2350, 208, 0),
(133, 3, 'Fronius', 'IG3000', 2700, 240, 0),
(134, 5, 'Fronius', 'IG4000', 4000, 240, 0),
(135, 6, 'Fronius', 'IG4500-LV', 4500, 208, 0),
(136, 7, 'Fronius', 'IG5100', 5100, 240, 0),
(137, 895, 'GE Energy', 'Brilliance 1MW', 1000000, 480, 0),
(138, 896, 'GE Energy', 'Brilliance 1MW', 1000000, 480, 0),
(139, 374, 'GE Energy', 'GEPVe-2500-NA', 2500, 240, 0),
(140, 375, 'GE Energy', 'GEPVe-3500-NA', 3500, 240, 0),
(141, 48, 'Generic', 'Constant Efficiency', 100000, 0, 1),
(142, 49, 'Generic', 'MPPT', 96, 0, 0),
(143, 709, 'Green Power Technologies', 'PV500U', 500000, 240, 0),
(144, 879, 'Green Star Products', 'GS500A', 500, 230, 0),
(145, 376, 'GridPoint (Original Mfg - Outback)', 'Connect C36', 3037, 120, 0),
(146, 710, 'Growatt New Energy', '2000HF-US', 2000, 208, 0),
(147, 711, 'Growatt New Energy', '2000HF-US', 2000, 240, 0),
(148, 712, 'Growatt New Energy', '2500HF-US', 2500, 208, 0),
(149, 713, 'Growatt New Energy', '2500HF-US', 2500, 240, 0),
(150, 714, 'Growatt New Energy', '3000HF-US', 3000, 208, 0),
(151, 715, 'Growatt New Energy', '3000HF-US', 3000, 240, 0),
(152, 716, 'HiSEL Power', 'K 1500', 1500, 208, 0),
(153, 717, 'HiSEL Power', 'K 1500', 1500, 240, 0),
(154, 718, 'HiSEL Power', 'K 2000', 2000, 208, 0),
(155, 719, 'HiSEL Power', 'K 2000', 2000, 240, 0),
(156, 720, 'HiSEL Power', 'K 3000', 2800, 208, 0),
(157, 721, 'HiSEL Power', 'K 3000', 2800, 240, 0),
(158, 722, 'HiSEL Power', 'K 4000', 4000, 208, 0),
(159, 723, 'HiSEL Power', 'K 4000', 4000, 240, 0),
(160, 724, 'HiSEL Power', 'K 5000', 4600, 208, 0),
(161, 725, 'HiSEL Power', 'K 5000', 4600, 240, 0),
(162, 897, 'Hitachi', 'HIVERTER-NP213i', 660000, 360, 0),
(163, 727, 'i-Energy Corporation', 'GT260', 210, 240, 0),
(164, 726, 'Ideal Power Converters', 'IPV-30kW', 30070, 480, 0),
(165, 377, 'Ingeteam S.A.', 'Ingecon Sun 100U', 100000, 208, 0),
(166, 378, 'Ingeteam S.A.', 'Ingecon Sun 100U', 100000, 480, 0),
(167, 379, 'Ingeteam S.A.', 'Ingecon Sun 100UP', 100000, 208, 0),
(168, 380, 'Ingeteam S.A.', 'Ingecon Sun 100UP', 100000, 240, 0),
(169, 728, 'Ingeteam S.A.', 'INGECON SUN 125 TL U Outdoor', 125000, 208, 0),
(170, 729, 'Ingeteam S.A.', 'INGECON SUN 125 U Outdoor', 125000, 208, 0),
(171, 730, 'Ingeteam S.A.', 'INGECON SUN 125 U Outdoor', 125000, 480, 0),
(172, 381, 'Ingeteam S.A.', 'Ingecon Sun 15U', 15000, 208, 0),
(173, 382, 'Ingeteam S.A.', 'Ingecon Sun 15U', 15000, 240, 0),
(174, 731, 'Ingeteam S.A.', 'INGECON SUN 165 TL U Outdoor', 165000, 275, 0),
(175, 732, 'Ingeteam S.A.', 'INGECON SUN 200 TL U Outdoor', 200000, 330, 0),
(176, 733, 'Ingeteam S.A.', 'INGECON SUN 220 TL U Outdoor', 220000, 360, 0),
(177, 383, 'Ingeteam S.A.', 'Ingecon Sun 25U', 25000, 208, 0),
(178, 384, 'Ingeteam S.A.', 'Ingecon Sun 25U', 25000, 240, 0),
(179, 734, 'Ingeteam S.A.', 'INGECON SUN 3.6TL U', 3600, 208, 0),
(180, 735, 'Ingeteam S.A.', 'INGECON SUN 3.6TL U', 3600, 240, 0),
(181, 736, 'Ingeteam S.A.', 'INGECON SUN 3.6TL U', 3600, 277, 0),
(182, 737, 'Ingeteam S.A.', 'INGECON SUN 3.6TL U', 3600, 277, 0),
(183, 738, 'Ingeteam S.A.', 'INGECON SUN 6TL U', 6000, 240, 0),
(184, 739, 'Ingeteam S.A.', 'INGECON SUN 6TL U', 6000, 240, 0),
(185, 740, 'Ingeteam S.A.', 'INGECON SUN 6TL U', 6000, 277, 0),
(186, 385, 'Kaco New Energy GmbH', 'Blue Planet 1501xi', 1670, 240, 0),
(187, 386, 'Kaco New Energy GmbH', 'Blue Planet 1502xi', 1500, 208, 0),
(188, 387, 'Kaco New Energy GmbH', 'Blue Planet 1502xi', 1500, 240, 0),
(189, 388, 'Kaco New Energy GmbH', 'Blue Planet 2502xi', 2500, 208, 0),
(190, 389, 'Kaco New Energy GmbH', 'Blue Planet 2502xi', 2500, 240, 0),
(191, 390, 'Kaco New Energy GmbH', 'Blue Planet 2901xi', 2860, 240, 0),
(192, 391, 'Kaco New Energy GmbH', 'Blue Planet 3502 xi', 3500, 208, 0),
(193, 392, 'Kaco New Energy GmbH', 'Blue Planet 3502 xi', 3500, 240, 0),
(194, 393, 'Kaco New Energy GmbH', 'Blue Planet 3601xi', 3600, 240, 0),
(195, 394, 'Kaco New Energy GmbH', 'Blue Planet 5002 xi', 5000, 208, 0),
(196, 395, 'Kaco New Energy GmbH', 'Blue Planet 5002 xi', 5000, 240, 0),
(197, 396, 'Kaco New Energy GmbH', 'Blue Planet XP100U-H2', 100000, 208, 0),
(198, 397, 'Kaco New Energy GmbH', 'Blue Planet XP100U-H4', 100000, 480, 0),
(199, 626, 'Kaco New Energy GmbH', 'Powador 2002', 1650, 240, 0),
(200, 627, 'Kaco New Energy GmbH', 'Powador 3002', 2500, 240, 0),
(201, 628, 'Kaco New Energy GmbH', 'Powador 4202', 3500, 240, 0),
(202, 629, 'Kaco New Energy GmbH', 'Powador 5002', 4200, 240, 0),
(203, 630, 'Kaco New Energy GmbH', 'Powador 6002', 5000, 240, 0),
(204, 741, 'Kaco New Energy GmbH', 'XP10U-H4', 9990, 480, 0),
(205, 742, 'Kaco New Energy GmbH', 'XP42U-H2', 41350, 208, 0),
(206, 743, 'Kaco New Energy GmbH', 'XP50U-H4', 51300, 480, 0),
(207, 744, 'Kostal Solar Electric', 'Piko 5.3 US', 5300, 230, 0),
(208, 398, 'Magnetek Uncommon Power', 'PVI-3000-I-OUTD-US', 3000, 240, 0),
(209, 399, 'MagneTek, S.p.A.', 'PVI-3600-I-OUTD-US-F', 3600, 240, 0),
(210, 400, 'MagneTek, S.p.A.', 'PVI-3600-US', 3600, 240, 0),
(211, 745, 'Motech Industries', 'PVMate 3000U', 2700, 208, 0),
(212, 746, 'Motech Industries', 'PVMate 3000U', 2900, 240, 0),
(213, 747, 'Motech Industries', 'PVMate 3000U-PG', 2810, 208, 0),
(214, 748, 'Motech Industries', 'PVMate 3000U-PG', 3010, 240, 0),
(215, 749, 'Motech Industries', 'PVMate 4000U', 3400, 208, 0),
(216, 750, 'Motech Industries', 'PVMate 4000U', 3900, 240, 0),
(217, 751, 'Motech Industries', 'PVMate 4000U-PG', 3510, 208, 0),
(218, 752, 'Motech Industries', 'PVMate 4000U-PG', 4020, 240, 0),
(219, 401, 'Motech Industries', 'PVMate 4900U', 4300, 208, 0),
(220, 402, 'Motech Industries', 'PVMate 4900U', 4900, 240, 0),
(221, 753, 'Motech Industries', 'PVMate 5000U', 4300, 208, 0),
(222, 754, 'Motech Industries', 'PVMate 5000U', 4900, 240, 0),
(223, 755, 'Motech Industries', 'PVMate 5000U-PG', 4400, 208, 0),
(224, 756, 'Motech Industries', 'PVMate 5000U-PG', 5010, 240, 0),
(225, 403, 'Motech Industries', 'PVMate 5300U', 4600, 208, 0),
(226, 404, 'Motech Industries', 'PVMate 5300U', 5300, 240, 0),
(227, 757, 'Ningbo Ginlong Technologies', 'GCI-5K-DB', 5000, 240, 0),
(228, 758, 'Ningbo Ginlong Technologies', 'GCI-5K-W', 5000, 240, 0),
(229, 759, 'Ningbo Ginlong Technologies', 'Solis 5000-DB', 5000, 240, 0),
(230, 865, 'Oasis Inverter Stations', 'Generic - 1000kW', 1000000, 759, 0),
(231, 866, 'Oasis Inverter Stations', 'Generic - 1500kW', 1500000, 759, 0),
(232, 867, 'Oasis Inverter Stations', 'Power-One - 1000kW', 1000000, 690, 0),
(233, 868, 'Oasis Inverter Stations', 'Power-One - 1500kW', 1500000, 690, 0),
(234, 869, 'Oasis Inverter Stations', 'SMA - 1000kW', 1000000, 270, 0),
(235, 870, 'Oasis Inverter Stations', 'SMA - 1500kW', 1500000, 342, 0),
(236, 405, 'Outback Power Systems', 'GVFX3648', 3037, 120, 0),
(237, 406, 'Phoenixtec', 'PS240US3R', 4000, 208, 0),
(238, 407, 'Phoenixtec', 'PS240US3R', 4000, 240, 0),
(239, 923, 'Power-One', 'MICRO-0.25-I-OUTD-US-208', 250, 208, 0),
(240, 924, 'Power-One', 'MICRO-0.25-I-OUTD-US-240', 250, 240, 0),
(241, 925, 'Power-One', 'MICRO-0.3-I-OUTD-US-208', 300, 208, 0),
(242, 926, 'Power-One', 'MICRO-0.3-I-OUTD-US-240', 300, 240, 0),
(243, 614, 'Power-One', 'PVI-10.0-I-OUTD-x-US-208-y', 10000, 208, 0),
(244, 615, 'Power-One', 'PVI-10.0-I-OUTD-x-US-480-y-z', 10000, 480, 0),
(245, 955, 'Power-One', 'PVI-10.0-OUTD-AU', 11000, 400, 0),
(246, 616, 'Power-One', 'PVI-12.0-I-OUTD-x-US-480-y', 12000, 480, 0),
(247, 956, 'Power-One', 'PVI-12.5-OUTD-AU', 13800, 400, 0),
(248, 411, 'Power-One', 'PVI-3.0-OUTD-S-US', 3000, 208, 0),
(249, 412, 'Power-One', 'PVI-3.0-OUTD-S-US', 3000, 240, 0),
(250, 413, 'Power-One', 'PVI-3.0-OUTD-S-US', 3000, 277, 0),
(251, 905, 'Power-One', 'PVI-3.0-TL-208', 3000, 208, 0),
(252, 906, 'Power-One', 'PVI-3.0-TL-240', 3300, 240, 0),
(253, 907, 'Power-One', 'PVI-3.0-TL-277', 3300, 277, 0),
(254, 950, 'Power-One', 'PVI-3.0-TL-OUTD-AU', 3300, 230, 0),
(255, 414, 'Power-One', 'PVI-3.6-OUTD-S-US', 3600, 208, 0),
(256, 415, 'Power-One', 'PVI-3.6-OUTD-S-US', 3600, 240, 0),
(257, 416, 'Power-One', 'PVI-3.6-OUTD-S-US', 3600, 277, 0),
(258, 908, 'Power-One', 'PVI-3.6-TL-208', 3600, 208, 0),
(259, 909, 'Power-One', 'PVI-3.6-TL-240', 4000, 240, 0),
(260, 910, 'Power-One', 'PVI-3.6-TL-277', 4000, 277, 0),
(261, 951, 'Power-One', 'PVI-3.6-TL-OUTD-AU', 4000, 230, 0),
(262, 599, 'Power-One', 'PVI-3.8-I-OUTD-x-US-y', 3300, 208, 0),
(263, 600, 'Power-One', 'PVI-3.8-I-OUTD-x-US-y', 3800, 240, 0),
(264, 601, 'Power-One', 'PVI-3.8-I-OUTD-x-US-y', 3800, 277, 0),
(265, 911, 'Power-One', 'PVI-3.8-TL-208', 3800, 208, 0),
(266, 912, 'Power-One', 'PVI-3.8-TL-240', 3800, 240, 0),
(267, 913, 'Power-One', 'PVI-3.8-TL-277', 4200, 277, 0),
(268, 417, 'Power-One', 'PVI-4.2-OUTD-S-US', 4200, 208, 0),
(269, 418, 'Power-One', 'PVI-4.2-OUTD-S-US', 4200, 240, 0),
(270, 419, 'Power-One', 'PVI-4.2-OUTD-S-US', 4200, 277, 0),
(271, 914, 'Power-One', 'PVI-4.2-TL-208', 4200, 208, 0),
(272, 915, 'Power-One', 'PVI-4.2-TL-240', 4600, 240, 0),
(273, 916, 'Power-One', 'PVI-4.2-TL-277', 4600, 277, 0),
(274, 952, 'Power-One', 'PVI-4.2-TL-OUTD-AU', 4600, 230, 0),
(275, 605, 'Power-One', 'PVI-4.6-I-OUTD-x-US-y', 4600, 208, 0),
(276, 606, 'Power-One', 'PVI-4.6-I-OUTD-x-US-y', 4600, 240, 0),
(277, 607, 'Power-One', 'PVI-4.6-I-OUTD-x-US-y', 4600, 277, 0),
(278, 917, 'Power-One', 'PVI-5000-TL-208', 5000, 208, 0),
(279, 918, 'Power-One', 'PVI-5000-TL-240', 5000, 240, 0),
(280, 919, 'Power-One', 'PVI-5000-TL-277', 5000, 277, 0),
(281, 953, 'Power-One', 'PVI-5000-TL-OUTD-AU', 5000, 230, 0),
(282, 898, 'Power-One', 'PVI-560.0-TL-CN', 500000, 320, 0),
(283, 920, 'Power-One', 'PVI-6000-TL-208', 6000, 208, 0),
(284, 921, 'Power-One', 'PVI-6000-TL-240', 6000, 240, 0),
(285, 922, 'Power-One', 'PVI-6000-TL-277', 6000, 277, 0),
(286, 954, 'Power-One', 'PVI-6000-TL-OUTD-AU', 6000, 230, 0),
(287, 420, 'Power-One', 'PVI-CENTRAL-100-US', 100000, 208, 0),
(288, 421, 'Power-One', 'PVI-CENTRAL-100-US', 100000, 480, 0),
(289, 569, 'Power-One', 'PVI-CENTRAL-250-US', 250000, 480, 0),
(290, 570, 'Power-One', 'PVI-CENTRAL-300-US', 300000, 480, 0),
(291, 422, 'Power-One', 'PVI-CENTRAL-50-US', 50000, 208, 0),
(292, 423, 'Power-One', 'PVI-CENTRAL-50-US', 50000, 480, 0),
(293, 646, 'Power-One', 'TRIO-20.0-TL-OUTD', 20000, 480, 0),
(294, 957, 'Power-One', 'TRIO-20.0-TL-OUTD-AU', 22000, 400, 0),
(295, 647, 'Power-One', 'TRIO-27.6-TL-OUTD', 27600, 480, 0),
(296, 958, 'Power-One', 'TRIO-27.6-TL-OUTD-AU', 30000, 400, 0),
(297, 969, 'Power-One', 'TRIO-5.8-TL-OUTD', 5800, 400, 0),
(298, 970, 'Power-One', 'TRIO-7.5-TL-OUTD', 7500, 400, 0),
(299, 971, 'Power-One', 'TRIO-8.5-TL-OUTD', 8500, 400, 0),
(300, 644, 'Power-One', 'Ultra 1100', 1100000, 690, 0),
(301, 645, 'Power-One', 'Ultra 1500', 1500000, 690, 0),
(302, 881, 'Power-One', 'Ultra 1500 (1530 cap)', 1500000, 690, 0),
(303, 947, 'Power-One', 'Ultra 1560', 1560000, 690, 0),
(304, 927, 'Power-One', 'ULTRA-750-TL-OUTD-1-US-690-x-y-z', 780000, 690, 0),
(305, 928, 'Power-One', 'ULTRA-750-TL-OUTD-2-US-690-x-y-z', 750000, 690, 0),
(306, 929, 'Power-One', 'ULTRA-750-TL-OUTD-3-US-690-x-y-z', 780000, 690, 0),
(307, 930, 'Power-One', 'ULTRA-750-TL-OUTD-4-US-690-x-y-z', 750000, 690, 0),
(308, 948, 'Power-One', 'UNO-2.0-I-OUTD-AU', 2200, 230, 0),
(309, 760, 'Power-One', 'UNO-2.0-I-OUTD-US', 2000, 208, 0),
(310, 761, 'Power-One', 'UNO-2.0-I-OUTD-US', 2000, 240, 0),
(311, 762, 'Power-One', 'UNO-2.0-I-OUTD-US', 2000, 277, 0),
(312, 949, 'Power-One', 'UNO-2.5-I-OUTD-AU', 2750, 230, 0),
(313, 763, 'Power-One', 'UNO-2.5-I-OUTD-US', 2500, 208, 0),
(314, 764, 'Power-One', 'UNO-2.5-I-OUTD-US', 2500, 240, 0),
(315, 765, 'Power-One', 'UNO-2.5-I-OUTD-US', 2500, 277, 0),
(316, 424, 'Power-One (Original Mfr. - Magnetek)', 'PVI-5000', 5000, 240, 0),
(317, 581, 'Power-One (Original Mfr. - Magnetek)', 'PVI-5000-OUTD-US', 5000, 208, 0),
(318, 582, 'Power-One (Original Mfr. - Magnetek)', 'PVI-5000-OUTD-US', 5000, 277, 0),
(319, 425, 'Power-One (Original Mfr. - Magnetek)', 'PVI-6000', 6000, 277, 0),
(320, 583, 'Power-One (Original Mfr. - Magnetek)', 'PVI-6000-OUTD-US', 6000, 208, 0),
(321, 584, 'Power-One (Original Mfr. - Magnetek)', 'PVI-6000-OUTD-US', 6000, 240, 0),
(322, 510, 'Powercom', 'SLK-1500', 1550, 208, 0),
(323, 511, 'Powercom', 'SLK-1500', 1550, 240, 0),
(324, 512, 'Powercom', 'SLK-2000', 2060, 208, 0),
(325, 513, 'Powercom', 'SLK-2000', 2060, 240, 0),
(326, 514, 'Powercom', 'SLK-3000', 3000, 208, 0),
(327, 515, 'Powercom', 'SLK-3000', 3010, 240, 0),
(328, 408, 'Powercom', 'SLK-4000', 3980, 208, 0),
(329, 409, 'Powercom', 'SLK-4000', 4010, 208, 0),
(330, 410, 'Powercom', 'SLK-4000', 3990, 240, 0),
(331, 426, 'Princeton Power Systems', 'GTIB-480-100', 100000, 480, 0),
(332, 427, 'Princeton Power Systems', 'GTIB-480-100', 100000, 480, 0),
(333, 766, 'PV Powered', 'PVP100KW', 100000, 600, 0),
(334, 92, 'PV Powered', 'PVP1100', 1100, 120, 0),
(335, 93, 'PV Powered', 'PVP1100EVR', 1100, 120, 0),
(336, 8, 'PV Powered', 'PVP1800', 1800, 120, 0),
(337, 11, 'PV Powered', 'PVP2000', 2000, 120, 0),
(338, 94, 'PV Powered', 'PVP2000', 2000, 240, 0),
(339, 95, 'PV Powered', 'PVP2000EVR', 2000, 240, 0),
(340, 15, 'PV Powered', 'PVP2500', 2500, 240, 0),
(341, 428, 'PV Powered', 'PVP260kW', 260000, 480, 0),
(342, 429, 'PV Powered', 'PVP260kW', 260000, 480, 0),
(343, 10, 'PV Powered', 'PVP2800', 2800, 208, 0),
(344, 9, 'PV Powered', 'PVP2800', 2800, 240, 0),
(345, 12, 'PV Powered', 'PVP2900', 2900, 208, 0),
(346, 96, 'PV Powered', 'PVP3000', 3000, 240, 0),
(347, 13, 'PV Powered', 'PVP3200', 3200, 240, 0),
(348, 16, 'PV Powered', 'PVP3500', 3500, 240, 0),
(349, 826, 'PV Powered', 'PVP35kW', 35000, 208, 0),
(350, 827, 'PV Powered', 'PVP35kW', 35000, 480, 0),
(351, 828, 'PV Powered', 'PVP35kW', 35000, 600, 0),
(352, 97, 'PV Powered', 'PVP4600', 4600, 208, 0),
(353, 98, 'PV Powered', 'PVP4800', 4800, 240, 0),
(354, 830, 'PV Powered', 'PVP50kW', 50000, 208, 0),
(355, 831, 'PV Powered', 'PVP50kW', 50000, 480, 0),
(356, 829, 'PV Powered', 'PVP50kW', 50000, 600, 0),
(357, 99, 'PV Powered', 'PVP5200', 5200, 240, 0),
(358, 832, 'PV Powered', 'PVP75KW', 75000, 208, 0),
(359, 833, 'PV Powered', 'PVP75KW', 75000, 480, 0),
(360, 767, 'PV Powered', 'PVP75KW', 75000, 600, 0),
(361, 768, 'Renovo Power Systems', 'RN5000US', 5000, 240, 0),
(362, 769, 'Samil Power Co., Ltd.', 'SolarRiver3000TL-US', 3000, 208, 0),
(363, 770, 'Samil Power Co., Ltd.', 'SolarRiver3000TL-US', 3000, 240, 0),
(364, 771, 'Samil Power Co., Ltd.', 'SolarRiver4000TL-US', 4000, 208, 0),
(365, 772, 'Samil Power Co., Ltd.', 'SolarRiver4000TL-US', 4000, 240, 0),
(366, 773, 'Samil Power Co., Ltd.', 'SolarRiver5000TL-US', 5000, 208, 0),
(367, 774, 'Samil Power Co., Ltd.', 'SolarRiver5000TL-US', 5000, 240, 0),
(368, 775, 'Samil Power Co., Ltd.', 'SolarRiver6000TL-US', 6000, 208, 0),
(369, 776, 'Samil Power Co., Ltd.', 'SolarRiver6000TL-US', 6000, 240, 0),
(370, 777, 'Samil Power Co., Ltd.', 'SolarRiver6000TL-US', 6000, 277, 0),
(371, 778, 'SanRex', 'PV-100K-48T-13', 99680, 400, 0),
(372, 779, 'SanRex', 'PV-250K-48T-13', 251400, 480, 0),
(373, 780, 'SanRex', 'PV-500K-48T-13', 501400, 480, 0),
(374, 968, 'Santerno', 'Sunway TG 610V 800V TE', 467800, 270, 0),
(375, 327, 'Satcon', 'AE-100-60-PV-A', 100000, 480, 0),
(376, 326, 'Satcon', 'AE-500-60-PV-A', 500000, 480, 0),
(377, 631, 'Satcon', 'EPP-1250-1000-52085-320X-U-x', 1250000, 480, 0),
(378, 632, 'Satcon', 'EQX-0500-US-200X-X', 500000, 480, 0),
(379, 633, 'Satcon', 'EQX-0500-US-480-T', 500000, 480, 0),
(380, 149, 'Satcon', 'PVS-100', 100000, 208, 0),
(381, 150, 'Satcon', 'PVS-100', 100000, 240, 0),
(382, 151, 'Satcon', 'PVS-100', 100000, 480, 0),
(383, 430, 'Satcon', 'PVS-1000 MVT', 1000000, 265, 0),
(384, 431, 'Satcon', 'PVS-110-S-MT', 110000, 208, 0),
(385, 432, 'Satcon', 'PVS-110-S-MT', 110000, 240, 0),
(386, 433, 'Satcon', 'PVS-110-S-MT', 110000, 480, 0),
(387, 152, 'Satcon', 'PVS-135', 135000, 208, 0),
(388, 153, 'Satcon', 'PVS-135', 135000, 240, 0),
(389, 154, 'Satcon', 'PVS-135', 135000, 480, 0),
(390, 436, 'Satcon', 'PVS-250', 250000, 208, 0),
(391, 434, 'Satcon', 'PVS-250', 250000, 240, 0),
(392, 435, 'Satcon', 'PVS-250', 250000, 480, 0),
(393, 140, 'Satcon', 'PVS-30', 30000, 208, 0),
(394, 141, 'Satcon', 'PVS-30', 30000, 240, 0),
(395, 142, 'Satcon', 'PVS-30', 30000, 480, 0),
(396, 163, 'Satcon', 'PVS-375', 375000, 480, 0),
(397, 143, 'Satcon', 'PVS-50', 50000, 208, 0),
(398, 144, 'Satcon', 'PVS-50', 50000, 240, 0),
(399, 145, 'Satcon', 'PVS-50', 50000, 480, 0),
(400, 52, 'Satcon', 'PVS-500-600', 500000, 480, 0),
(401, 169, 'Satcon', 'PVS-500-900', 500000, 400, 0),
(402, 323, 'Satcon', 'PVS-500-MVT-transformerless', 500000, 200, 0),
(403, 337, 'Satcon', 'PVS-500-transformerless', 500000, 480, 0),
(404, 146, 'Satcon', 'PVS-75', 75000, 208, 0),
(405, 147, 'Satcon', 'PVS-75', 75000, 240, 0),
(406, 148, 'Satcon', 'PVS-75', 75000, 480, 0),
(407, 437, 'Satcon', 'SSB2512LNU+SDMS0100208LNIU', 100000, 208, 0),
(408, 438, 'Satcon', 'SSB2512LNU+SDMS0100240LNIU', 100000, 240, 0),
(409, 439, 'Satcon', 'SSB2512LNU+SDMS0100480LNIU', 100000, 480, 0),
(410, 876, 'Schneider Electric', 'GT100-208', 100000, 208, 0),
(411, 875, 'Schneider Electric', 'GT100-480', 100000, 480, 0),
(412, 877, 'Schneider Electric', 'GT250-480', 250000, 480, 0),
(413, 878, 'Schneider Electric', 'GT500-480', 500000, 480, 0),
(414, 781, 'Shenzhen BYD', 'BSG250K-U', 250370, 480, 0),
(415, 782, 'Shenzhen BYD', 'BSG250K-U/N', 250370, 480, 0),
(416, 783, 'Siemens', 'SINVERT PVM12 UL', 12120, 480, 0),
(417, 784, 'Siemens', 'SINVERT PVM16 UL', 16100, 480, 0),
(418, 785, 'Siemens', 'SINVERT PVM20 UL', 19650, 480, 0),
(419, 786, 'Siemens', 'SINVERT PVM24 UL', 22230, 480, 0),
(420, 440, 'Siemens', 'SINVERT PVS1051 UL', 1050000, 480, 0),
(421, 441, 'Siemens', 'SINVERT PVS1401 UL', 1400000, 480, 0),
(422, 442, 'Siemens', 'SINVERT PVS351 UL', 350000, 480, 0),
(423, 443, 'Siemens', 'SINVERT PVS701 UL', 700000, 480, 0),
(424, 787, 'Siemens', 'SMIINV215R60XX', 215, 208, 0),
(425, 788, 'Siemens', 'SMIINV215R60XX', 215, 240, 0),
(426, 789, 'Silicon Energy', 'SiE 3840', 3400, 208, 0),
(427, 790, 'Silicon Energy', 'SiE 3840', 3900, 240, 0),
(428, 791, 'Silicon Energy', 'SiE 5300', 4600, 208, 0),
(429, 792, 'Silicon Energy', 'SiE 5300', 5300, 240, 0),
(430, 19, 'SMA', '2500U', 2500, 240, 0),
(431, 959, 'SMA', 'SB 3000-TL-21-AU', 3000, 230, 0),
(432, 960, 'SMA', 'SB 3600-TL-21-AU', 3680, 230, 0),
(433, 961, 'SMA', 'SB 4000-TL-21-AU', 4000, 230, 0),
(434, 962, 'SMA', 'SB 5000-TL-21-AU', 5000, 230, 0),
(435, 634, 'SMA', 'SB10000TL-12', 10068, 208, 0),
(436, 70, 'SMA', 'SB1100', 1100, 240, 0),
(437, 643, 'SMA', 'SB11000TL-12', 11000, 208, 0),
(438, 637, 'SMA', 'SB2000HF-30', 2030, 208, 0),
(439, 639, 'SMA', 'SB2000HF-30', 2050, 240, 0),
(440, 640, 'SMA', 'SB2500HF-30', 2530, 208, 0),
(441, 638, 'SMA', 'SB2500HF-30', 2530, 240, 0),
(442, 642, 'SMA', 'SB3000HF-30', 3010, 208, 0),
(443, 641, 'SMA', 'SB3000HF-30', 3070, 240, 0),
(444, 904, 'SMA', 'SB3000TL-US-22-208', 3000, 208, 0),
(445, 901, 'SMA', 'SB3000TL-US-22-240', 3000, 240, 0),
(446, 123, 'SMA', 'SB3000US', 3000, 208, 0),
(447, 124, 'SMA', 'SB3000US', 3000, 240, 0),
(448, 73, 'SMA', 'SB3300U', 3300, 240, 0),
(449, 945, 'SMA', 'SB3800TL-US-22 (208V)', 3800, 208, 0),
(450, 946, 'SMA', 'SB3800TL-US-22 (240V)', 3800, 240, 0),
(451, 23, 'SMA', 'SB3800U', 3500, 208, 0),
(452, 22, 'SMA', 'SB3800U', 3800, 240, 0),
(453, 903, 'SMA', 'SB4000TL-US-22-208', 4000, 208, 0),
(454, 900, 'SMA', 'SB4000TL-US-22-240', 4000, 240, 0),
(455, 125, 'SMA', 'SB4000US', 3500, 208, 0),
(456, 126, 'SMA', 'SB4000US', 4000, 240, 0),
(457, 902, 'SMA', 'SB5000TL-US-22-208', 4550, 208, 0),
(458, 899, 'SMA', 'SB5000TL-US-22-240', 5000, 240, 0),
(459, 127, 'SMA', 'SB5000US', 5000, 208, 0),
(460, 128, 'SMA', 'SB5000US', 5000, 240, 0),
(461, 129, 'SMA', 'SB5000US', 5000, 277, 0),
(462, 980, 'SMA', 'SB6000TL-US-22 (208V)', 5200, 208, 0),
(463, 979, 'SMA', 'SB6000TL-US-22 (240V)', 6000, 240, 0),
(464, 130, 'SMA', 'SB6000US', 6000, 208, 0),
(465, 131, 'SMA', 'SB6000US', 6000, 240, 0),
(466, 132, 'SMA', 'SB6000US', 6000, 277, 0),
(467, 133, 'SMA', 'SB7000US', 7000, 208, 0),
(468, 134, 'SMA', 'SB7000US', 7000, 240, 0),
(469, 135, 'SMA', 'SB7000US', 7000, 277, 0),
(470, 635, 'SMA', 'SB8000TL-12', 8109, 208, 0),
(471, 444, 'SMA', 'SB8000US', 7600, 240, 0),
(472, 445, 'SMA', 'SB8000US', 8000, 277, 0),
(473, 636, 'SMA', 'SB9000TL-12', 9110, 208, 0),
(474, 138, 'SMA', 'SC 250U', 250000, 480, 0),
(475, 489, 'SMA', 'SC 500CP', 500000, 270, 0),
(476, 834, 'SMA', 'SC 500CP (Peak 550kW)', 500000, 270, 0),
(477, 85, 'SMA', 'SC 500HE', 500000, 200, 0),
(478, 516, 'SMA', 'SC 500HE-US + MV-Cooper xfmr', 500000, 480, 0),
(479, 523, 'SMA', 'SC 500HE-US + MV-TP1 xfmr', 500000, 480, 0),
(480, 592, 'SMA', 'SC 625CP', 625000, 315, 0),
(481, 490, 'SMA', 'SC 630CP', 630000, 315, 0),
(482, 835, 'SMA', 'SC 630CP (Peak 700kW)', 630000, 315, 0),
(483, 491, 'SMA', 'SC 720CP', 720000, 324, 0),
(484, 836, 'SMA', 'SC 720CP (Peak 792kW)', 720000, 324, 0),
(485, 578, 'SMA', 'SC 750CP', 750000, 342, 0),
(486, 839, 'SMA', 'SC 750CP (Peak 825kW)', 750000, 342, 0),
(487, 492, 'SMA', 'SC 760CP', 760000, 342, 0),
(488, 837, 'SMA', 'SC 760CP (Peak 836kW)', 760000, 342, 0),
(489, 493, 'SMA', 'SC 800CP', 800000, 360, 0),
(490, 838, 'SMA', 'SC 800CP (Peak 880kW)', 800000, 360, 0),
(491, 939, 'SMA', 'SC 850CP XT', 850000, 360, 0),
(492, 940, 'SMA', 'SC 850CP XT (Peak 935kW)', 850000, 360, 0),
(493, 590, 'SMA', 'SC 900CP', 900000, 360, 0),
(494, 446, 'SMA', 'SC500U', 506700, 480, 0),
(495, 447, 'SMA', 'ST36', 36000, 208, 0),
(496, 448, 'SMA', 'ST36', 36000, 240, 0),
(497, 449, 'SMA', 'ST36', 36000, 277, 0),
(498, 450, 'SMA', 'ST42', 42000, 208, 0),
(499, 451, 'SMA', 'ST42', 42000, 208, 0),
(500, 452, 'SMA', 'ST42', 42000, 277, 0),
(501, 453, 'SMA', 'ST48', 48000, 277, 0),
(502, 972, 'SMA', 'STP 10000-TL-10-AU', 10000, 230, 0),
(503, 981, 'SMA', 'STP 10000-TL-10-AU', 10000, 230, 0),
(504, 973, 'SMA', 'STP 12000-TL-10-AU', 12000, 230, 0),
(505, 982, 'SMA', 'STP 12000-TL-10-AU', 12000, 230, 0),
(506, 871, 'SMA', 'STP 12000TL', 12000, 400, 0),
(507, 974, 'SMA', 'STP 15000-TL-10-AU', 15000, 230, 0),
(508, 983, 'SMA', 'STP 15000-TL-10-AU', 15000, 230, 0),
(509, 976, 'SMA', 'STP 15000TLEE-10-AU', 15000, 230, 0),
(510, 985, 'SMA', 'STP 15000TLEE-10-AU', 15000, 230, 0),
(511, 975, 'SMA', 'STP 17000-TL-10-AU', 17000, 230, 0),
(512, 984, 'SMA', 'STP 17000-TL-10-AU', 17000, 230, 0),
(513, 977, 'SMA', 'STP 20000TLEE-10-AU', 20000, 230, 0),
(514, 986, 'SMA', 'STP 20000TLEE-10-AU', 20000, 230, 0),
(515, 963, 'SMA', 'STP 5000-TL-20-AU', 5000, 230, 0),
(516, 964, 'SMA', 'STP 6000-TL-20-AU', 6000, 230, 0),
(517, 965, 'SMA', 'STP 7000-TL-20-AU', 7000, 230, 0),
(518, 966, 'SMA', 'STP 8000-TL-20-AU', 8000, 230, 0),
(519, 967, 'SMA', 'STP 9000-TL-20-AU', 9000, 230, 0),
(520, 941, 'SMA', 'STP12000TL-US-10', 12000, 480, 0),
(521, 942, 'SMA', 'STP15000TL-US-10', 15000, 480, 0),
(522, 943, 'SMA', 'STP20000TL-US-10', 20000, 480, 0),
(523, 944, 'SMA', 'STP24000TL-US-10', 24060, 480, 0),
(524, 474, 'SMA', 'SWR1800U', 1800, 120, 0),
(525, 573, 'SolarBridge', 'P235HV', 225, 240, 0),
(526, 574, 'SolarBridge', 'P235LV', 230, 240, 0),
(527, 793, 'SolarBridge', 'P250HV', 240, 240, 0),
(528, 794, 'SolarBridge', 'P250LV', 240, 240, 0),
(529, 885, 'SolarEdge', 'SE3300-208', 3288, 208, 0),
(530, 886, 'SolarEdge', 'SE3300-240', 3250, 240, 0),
(531, 887, 'SolarEdge', 'SE4000-208', 3990, 208, 0),
(532, 888, 'SolarEdge', 'SE4000-240', 3974, 240, 0),
(533, 889, 'SolarEdge', 'SE5000-208', 4980, 208, 0),
(534, 890, 'SolarEdge', 'SE5000-240', 4975, 240, 0),
(535, 891, 'SolarEdge', 'SE6000-208', 5330, 208, 0),
(536, 892, 'SolarEdge', 'SE6000-240', 5994, 240, 0),
(537, 795, 'Solectria', 'PVI 3000S', 2810, 208, 0),
(538, 796, 'Solectria', 'PVI 3000S', 3010, 240, 0),
(539, 797, 'Solectria', 'PVI 3000S-P', 2810, 208, 0),
(540, 798, 'Solectria', 'PVI 3000S-P', 3010, 240, 0),
(541, 799, 'Solectria', 'PVI 4000S', 3510, 208, 0),
(542, 800, 'Solectria', 'PVI 4000S', 4020, 240, 0),
(543, 801, 'Solectria', 'PVI 4000S-P', 3510, 208, 0),
(544, 802, 'Solectria', 'PVI 4000S-P', 4020, 240, 0),
(545, 803, 'Solectria', 'PVI 5000S', 4400, 208, 0),
(546, 804, 'Solectria', 'PVI 5000S', 5010, 240, 0),
(547, 805, 'Solectria', 'PVI 5000S-P', 4400, 208, 0),
(548, 806, 'Solectria', 'PVI 5000S-P', 5010, 240, 0),
(549, 648, 'Solectria', 'PVI 82kW', 83300, 208, 0),
(550, 649, 'Solectria', 'PVI 82kW', 81990, 480, 0),
(551, 650, 'Solectria', 'PVI 95kW', 95470, 208, 0),
(552, 651, 'Solectria', 'PVI 95kW', 95320, 480, 0),
(553, 108, 'Solectria', 'PVI13KW', 13500, 208, 0),
(554, 109, 'Solectria', 'PVI13KW', 13440, 480, 0),
(555, 110, 'Solectria', 'PVI15KW', 15240, 208, 0),
(556, 111, 'Solectria', 'PVI15KW', 15090, 480, 0),
(557, 25, 'Solectria', 'PVI1800', 1800, 208, 0),
(558, 24, 'Solectria', 'PVI1800', 1800, 240, 0),
(559, 29, 'Solectria', 'PVI2500', 2500, 208, 0),
(560, 27, 'Solectria', 'PVI2500', 2500, 240, 0),
(561, 100, 'Solectria', 'PVI3000', 2700, 208, 0),
(562, 101, 'Solectria', 'PVI3000', 2900, 240, 0),
(563, 102, 'Solectria', 'PVI4000', 3400, 208, 0),
(564, 103, 'Solectria', 'PVI4000', 3900, 240, 0),
(565, 104, 'Solectria', 'PVI5000', 4300, 208, 0),
(566, 105, 'Solectria', 'PVI5000', 4900, 240, 0),
(567, 106, 'Solectria', 'PVI5300', 4600, 208, 0),
(568, 107, 'Solectria', 'PVI5300', 5300, 240, 0),
(569, 652, 'Solectria', 'SGI-225', 230146, 480, 0),
(570, 653, 'Solectria', 'SGI-250', 258172, 480, 0),
(571, 654, 'Solectria', 'SGI-266', 269841, 480, 1),
(572, 655, 'Solectria', 'SGI-300', 304850, 480, 1),
(573, 656, 'Solectria', 'SGI-500', 500800, 480, 0),
(574, 454, 'Sonnetek', 'Soleil 2000/Sonnetek 2000', 2000, 120, 0),
(575, 455, 'Sungrow Power Supply', 'SG100KU', 101000, 480, 0),
(576, 807, 'Sungrow Power Supply', 'SG250KC', 250000, 480, 0),
(577, 808, 'Sungrow Power Supply', 'SG250KU', 250000, 480, 0),
(578, 809, 'Sungrow Power Supply', 'SG500LV', 500000, 200, 0),
(579, 978, 'Sungrow Power Supply', 'SG500MX', 500000, 315, 0),
(580, 987, 'Sungrow Power Supply', 'SG500MX', 500000, 315, 0),
(581, 517, 'SunPower', 'SPR-10000f', 10000, 208, 0),
(582, 518, 'SunPower', 'SPR-10000f', 10000, 240, 0),
(583, 519, 'SunPower', 'SPR-10000f', 10000, 277, 0),
(584, 844, 'SunPower', 'SPR-10000K-TL-3-EU', 10000, 400, 0),
(585, 822, 'SunPower', 'SPR-10000M-TL-3', 10000, 400, 0),
(586, 854, 'SunPower', 'SPR-10000P-TL3-EU', 10000, 400, 0),
(587, 498, 'SunPower', 'SPR-10001F', 10000, 230, 0),
(588, 560, 'SunPower', 'SPR-10001f-1 UNI', 9995, 208, 0),
(589, 561, 'SunPower', 'SPR-10001f-1 UNI', 9995, 240, 0),
(590, 562, 'SunPower', 'SPR-10001f-1 UNI', 9995, 277, 0),
(591, 861, 'SunPower', 'SPR-10001F-3-EU', 10000, 400, 0),
(592, 520, 'SunPower', 'SPR-11400f', 11400, 208, 0),
(593, 521, 'SunPower', 'SPR-11400f', 11400, 240, 0),
(594, 585, 'SunPower', 'SPR-11400f-3', 11400, 208, 0),
(595, 586, 'SunPower', 'SPR-11400f-3', 11400, 240, 0),
(596, 563, 'SunPower', 'SPR-11401f-1 UNI', 11400, 208, 0),
(597, 564, 'SunPower', 'SPR-11401f-1 UNI', 11400, 240, 0),
(598, 565, 'SunPower', 'SPR-11401f-1 UNI', 11400, 277, 0),
(599, 566, 'SunPower', 'SPR-11401f-3 Delta', 11400, 208, 0),
(600, 567, 'SunPower', 'SPR-11401f-3 Delta', 11400, 240, 0),
(601, 522, 'SunPower', 'SPR-12000f', 12000, 277, 0),
(602, 823, 'SunPower', 'SPR-12000M-TL-3', 12000, 400, 0),
(603, 499, 'SunPower', 'SPR-12001F', 12000, 230, 0),
(604, 568, 'SunPower', 'SPR-12001f-3 WYE', 12000, 277, 0),
(605, 862, 'SunPower', 'SPR-12001F-3-EU', 12000, 400, 0),
(606, 845, 'SunPower', 'SPR-12500K-TL-3-EU', 12500, 400, 0),
(607, 855, 'SunPower', 'SPR-12500P-TL3-EU', 12500, 400, 0),
(608, 824, 'SunPower', 'SPR-15000M-TL-3', 15000, 400, 0),
(609, 825, 'SunPower', 'SPR-17000M-TL-3', 17000, 400, 0),
(610, 30, 'SunPower', 'SPR-2000', 2000, 120, 0),
(611, 847, 'SunPower', 'SPR-20000M-TL-3', 20000, 400, 0),
(612, 456, 'SunPower', 'SPR-2500', 2500, 240, 0),
(613, 816, 'SunPower', 'SPR-2500M', 2700, 230, 0),
(614, 505, 'SunPower', 'SPR-2500M', 2300, 240, 0),
(615, 840, 'SunPower', 'SPR-2600K-TL-1-EU', 2600, 230, 0),
(616, 315, 'SunPower', 'SPR-2800x', 2700, 208, 0),
(617, 316, 'SunPower', 'SPR-2800x', 2800, 240, 0),
(618, 31, 'SunPower', 'SPR-2900', 2900, 208, 0),
(619, 622, 'SunPower', 'SPR-3000F-TL-1', 3000, 240, 0),
(620, 187, 'SunPower', 'SPR-3000m', 3000, 208, 0),
(621, 188, 'SunPower', 'SPR-3000m', 3000, 240, 0),
(622, 819, 'SunPower', 'SPR-3000M-TL-1', 3000, 230, 0),
(623, 849, 'SunPower', 'SPR-3000P-TL1-EU', 3000, 230, 0),
(624, 32, 'SunPower', 'SPR-3200', 3200, 240, 0),
(625, 170, 'SunPower', 'SPR-3300f', 3300, 208, 0),
(626, 171, 'SunPower', 'SPR-3300f', 3300, 240, 0),
(627, 172, 'SunPower', 'SPR-3300f', 3300, 277, 0),
(628, 506, 'SunPower', 'SPR-3300M', 3300, 240, 0),
(629, 317, 'SunPower', 'SPR-3300x', 3300, 208, 0),
(630, 318, 'SunPower', 'SPR-3300x', 3300, 240, 0),
(631, 548, 'SunPower', 'SPR-3301f-1 UNI', 3300, 208, 0),
(632, 549, 'SunPower', 'SPR-3301f-1 UNI', 3300, 240, 0),
(633, 550, 'SunPower', 'SPR-3301f-1 UNI', 3300, 277, 0),
(634, 494, 'SunPower', 'SPR-3501F', 3500, 230, 0),
(635, 856, 'SunPower', 'SPR-3501F-1-EU', 3500, 230, 0),
(636, 841, 'SunPower', 'SPR-3600K-TL-1-EU', 3600, 230, 0),
(637, 850, 'SunPower', 'SPR-3600P-TL1-EU', 3600, 230, 0),
(638, 623, 'SunPower', 'SPR-3680F-TL-1', 3680, 240, 0),
(639, 507, 'SunPower', 'SPR-3800M', 3820, 240, 0),
(640, 551, 'SunPower', 'SPR-3801f-1 UNI', 3800, 208, 0),
(641, 552, 'SunPower', 'SPR-3801f-1 UNI', 3800, 240, 0),
(642, 553, 'SunPower', 'SPR-3801f-1 UNI', 3800, 277, 0),
(643, 173, 'SunPower', 'SPR-4000f', 3800, 208, 0),
(644, 174, 'SunPower', 'SPR-4000f', 4000, 240, 0),
(645, 175, 'SunPower', 'SPR-4000f', 4000, 277, 0),
(646, 624, 'SunPower', 'SPR-4000F-TL-1', 4000, 240, 0),
(647, 189, 'SunPower', 'SPR-4000m', 3500, 208, 0),
(648, 190, 'SunPower', 'SPR-4000m', 4000, 240, 0),
(649, 820, 'SunPower', 'SPR-4000M-TL-1', 4200, 230, 0),
(650, 319, 'SunPower', 'SPR-4000x', 3800, 208, 0),
(651, 320, 'SunPower', 'SPR-4000x', 4000, 240, 0),
(652, 495, 'SunPower', 'SPR-4001F', 4000, 230, 0),
(653, 857, 'SunPower', 'SPR-4001F-1-EU', 4000, 230, 0),
(654, 851, 'SunPower', 'SPR-4200P-TL1-EU', 4200, 230, 0),
(655, 848, 'SunPower', 'SPR-4600K-TL-1-EU', 4600, 230, 0),
(656, 508, 'SunPower', 'SPR-4600M', 4600, 240, 0),
(657, 817, 'SunPower', 'SPR-5000-11M', 5000, 230, 0),
(658, 625, 'SunPower', 'SPR-5000F-TL-1', 5000, 240, 0),
(659, 191, 'SunPower', 'SPR-5000m', 5000, 208, 0),
(660, 192, 'SunPower', 'SPR-5000m', 5000, 240, 0),
(661, 193, 'SunPower', 'SPR-5000m', 5000, 277, 0),
(662, 846, 'SunPower', 'SPR-5000M-TL-1-21', 4600, 230, 0),
(663, 852, 'SunPower', 'SPR-5000P-TL1-EU', 5000, 230, 0),
(664, 322, 'SunPower', 'SPR-5000x', 5000, 240, 0),
(665, 842, 'SunPower', 'SPR-5500K-TL-1-EU', 5500, 230, 0),
(666, 194, 'SunPower', 'SPR-6000m', 6000, 208, 0),
(667, 195, 'SunPower', 'SPR-6000m', 6000, 240, 0),
(668, 196, 'SunPower', 'SPR-6000m', 6000, 277, 0),
(669, 853, 'SunPower', 'SPR-6000P-TL1-EU', 6000, 230, 0),
(670, 176, 'SunPower', 'SPR-6500f', 6500, 208, 0),
(671, 177, 'SunPower', 'SPR-6500f', 6500, 240, 0),
(672, 178, 'SunPower', 'SPR-6500f', 6500, 277, 0),
(673, 496, 'SunPower', 'SPR-6501F', 6500, 230, 0),
(674, 554, 'SunPower', 'SPR-6501f-1 UNI', 6500, 208, 0),
(675, 555, 'SunPower', 'SPR-6501f-1 UNI', 6500, 240, 0),
(676, 556, 'SunPower', 'SPR-6501f-1 UNI', 6500, 277, 0),
(677, 858, 'SunPower', 'SPR-6501F-2-EU', 6500, 230, 0),
(678, 509, 'SunPower', 'SPR-7000-11M', 6650, 230, 0),
(679, 818, 'SunPower', 'SPR-7000-11M', 6650, 230, 0),
(680, 197, 'SunPower', 'SPR-7000m', 7000, 208, 0),
(681, 198, 'SunPower', 'SPR-7000m', 7000, 240, 0),
(682, 199, 'SunPower', 'SPR-7000m', 7000, 277, 0),
(683, 557, 'SunPower', 'SPR-7501f-1 UNI', 7500, 208, 0),
(684, 558, 'SunPower', 'SPR-7501f-1 UNI', 7500, 240, 0),
(685, 559, 'SunPower', 'SPR-7501f-1 UNI', 7500, 277, 0),
(686, 179, 'SunPower', 'SPR-8000f', 7600, 208, 0),
(687, 180, 'SunPower', 'SPR-8000f', 8000, 240, 0),
(688, 181, 'SunPower', 'SPR-8000f', 8000, 277, 0),
(689, 587, 'SunPower', 'SPR-8000m', 7600, 240, 0),
(690, 588, 'SunPower', 'SPR-8000m', 8000, 277, 0),
(691, 821, 'SunPower', 'SPR-8000M-TL-3', 8000, 400, 0),
(692, 497, 'SunPower', 'SPR-8001F', 8000, 230, 0),
(693, 859, 'SunPower', 'SPR-8001F-2-EU', 8000, 230, 0),
(694, 860, 'SunPower', 'SPR-8001F-3-EU', 8000, 400, 0),
(695, 843, 'SunPower', 'SPR-9000K-TL-3-EU', 9000, 400, 0),
(696, 476, 'SunPower', 'SPR-Generic-1MW-96%', 1000000, 265, 0),
(697, 477, 'SunPower', 'SPR-Generic-1MW-97%', 1000000, 265, 0),
(698, 478, 'SunPower', 'SPR-Generic-1MW-98%', 1000000, 265, 0),
(699, 457, 'Sunset', 'SUNstring 4000', 2860, 240, 0),
(700, 458, 'Sunset', 'SUNstring 5000', 3600, 240, 0),
(701, 810, 'Sustainable Energy Technologies', 'SUNERGY 5000 LV', 5000, 208, 0),
(702, 811, 'Sustainable Energy Technologies', 'SUNERGY 5000 TENK-D', 5000, 240, 0),
(703, 459, 'Sysgration', 'Soleil 2000', 2000, 120, 0),
(704, 882, 'TMEIC', 'PVL-L0500', 500000, 210, 0),
(705, 893, 'TMEIC', 'PVL-L0500E', 500000, 300, 0),
(706, 812, 'TMEIC', 'PVL-L0500U', 500000, 300, 0),
(707, 813, 'Toshiba', 'PVL-L0500U', 500000, 300, 0),
(708, 460, 'Xantrex', 'GT100', 100000, 208, 0),
(709, 331, 'Xantrex', 'GT100', 100000, 480, 0),
(710, 33, 'Xantrex', 'GT2.5-NA-DS', 2500, 240, 0),
(711, 308, 'Xantrex', 'GT2.8-NA-DS', 2700, 208, 0),
(712, 309, 'Xantrex', 'GT2.8-NA-DS', 2800, 240, 0),
(713, 329, 'Xantrex', 'GT250', 250000, 480, 0),
(714, 34, 'Xantrex', 'GT3.0-NA-DS', 3000, 240, 0),
(715, 36, 'Xantrex', 'GT3.3-NA-DS', 3300, 208, 0),
(716, 35, 'Xantrex', 'GT3.3-NA-DS', 3300, 240, 0),
(717, 310, 'Xantrex', 'GT3.8-NA-DS', 3500, 208, 0),
(718, 37, 'Xantrex', 'GT3.8-NA-DS', 3800, 240, 0),
(719, 461, 'Xantrex', 'GT3.8-NA-UL-05', 3800, 240, 0),
(720, 462, 'Xantrex', 'GT30', 28000, 208, 0),
(721, 311, 'Xantrex', 'GT4.0-NA-DS', 3800, 208, 0),
(722, 312, 'Xantrex', 'GT4.0-NA-DS', 4000, 240, 0),
(723, 314, 'Xantrex', 'GT5.0-NA-DS', 5000, 240, 0),
(724, 463, 'Xantrex', 'GT500-MVX', 500000, 208, 0),
(725, 473, 'Xantrex', 'GT630E', 630000, 375, 0),
(726, 39, 'Xantrex', 'PV10', 10190, 208, 0),
(727, 333, 'Xantrex', 'PV100S', 101040, 208, 0),
(728, 334, 'Xantrex', 'PV100S', 100290, 480, 0),
(729, 40, 'Xantrex', 'PV15', 15310, 208, 0),
(730, 41, 'Xantrex', 'PV20', 20490, 208, 0),
(731, 335, 'Xantrex', 'PV225S', 227300, 480, 0),
(732, 336, 'Xantrex', 'PV225S-P', 225270, 480, 0),
(733, 42, 'Xantrex', 'PV30', 30290, 208, 0),
(734, 332, 'Xantrex', 'PV45', 45350, 208, 0),
(735, 475, 'Xantrex', 'SW4048+GTI', 3211, 120, 0),
(736, 814, 'Xantrex', 'XW4024', 4000, 120, 0),
(737, 815, 'Xantrex', 'XW4548', 4500, 120, 0),
(738, 464, 'XSLent Energy', 'XPX-A1000', 180, 120, 0),
(739, 465, 'Yes! Solar', 'ES3000', 2700, 208, 0),
(740, 466, 'Yes! Solar', 'ES3000', 2900, 240, 0),
(741, 467, 'Yes! Solar', 'ES4000', 3400, 208, 0),
(742, 468, 'Yes! Solar', 'ES4000', 3900, 240, 0),
(743, 469, 'Yes! Solar', 'ES5000', 4300, 208, 0),
(744, 470, 'Yes! Solar', 'ES5000', 4900, 240, 0),
(745, 471, 'Yes! Solar', 'ES5300', 4600, 208, 0),
(746, 472, 'Yes! Solar', 'ES5300', 5300, 240, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pv_pvSimModules`
--

CREATE TABLE `pv_pvSimModules` (
  `pmo_id` double NOT NULL,
  `pmo_simEngId` int(11) NOT NULL,
  `pmo_manufacturer` varchar(64) NOT NULL,
  `pmo_model` varchar(64) NOT NULL,
  `pmo_power` int(11) NOT NULL,
  `pmo_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_pvSimModules`
--

INSERT INTO `pv_pvSimModules` (`pmo_id`, `pmo_simEngId`, `pmo_manufacturer`, `pmo_model`, `pmo_power`, `pmo_active`) VALUES
(1, 0, 'Manufacturer', 'Model', 0, 0),
(2, 1, 'Advent', 'AS160', 160, 0),
(3, 2, 'Aleo', 'S03 160', 160, 0),
(4, 3, 'Aleo', 'S03 165', 165, 0),
(5, 4, 'Aleo', 'S16 165', 165, 0),
(6, 5, 'Aleo', 'S16 170', 170, 0),
(7, 6, 'Aleo', 'S16 175', 175, 0),
(8, 7, 'Aleo', 'S16 180', 180, 0),
(9, 8, 'Aleo', 'S16 185', 185, 0),
(10, 601, 'Aleo', 'S18-ULR-240', 240, 0),
(11, 9, 'AstroPower', 'AP-100', 100, 0),
(12, 10, 'AstroPower', 'AP-100', 100, 0),
(13, 11, 'AstroPower', 'AP-110', 110, 0),
(14, 12, 'AstroPower', 'AP-110', 110, 0),
(15, 13, 'AstroPower', 'AP-120', 120, 0),
(16, 14, 'AstroPower', 'AP-120', 120, 0),
(17, 15, 'AstroPower', 'AP-1206', 120, 0),
(18, 16, 'AstroPower', 'AP-130', 130, 0),
(19, 17, 'AstroPower', 'AP-130', 130, 0),
(20, 18, 'AstroPower', 'AP-50', 50, 0),
(21, 19, 'AstroPower', 'AP-50', 50, 0),
(22, 20, 'AstroPower', 'AP-65', 65, 0),
(23, 21, 'AstroPower', 'AP-75', 75, 0),
(24, 22, 'AstroPower', 'AP-75', 75, 0),
(25, 23, 'AstroPower', 'AP-75', 75, 0),
(26, 24, 'AstroPower', 'AP-8225', 80, 0),
(27, 25, 'AstroPower', 'APX-110-SL', 110, 0),
(28, 26, 'AstroPower', 'APX-110-SL', 110, 0),
(29, 27, 'AstroPower', 'APX-120', 120, 0),
(30, 28, 'AstroPower', 'APX-120', 120, 0),
(31, 29, 'AstroPower', 'APX-130', 130, 0),
(32, 30, 'AstroPower', 'APX-130', 130, 0),
(33, 31, 'AstroPower', 'APX-140', 140, 0),
(34, 32, 'AstroPower', 'APX-40', 40, 0),
(35, 33, 'AstroPower', 'APX-45', 45, 0),
(36, 34, 'AstroPower', 'APX-45', 45, 0),
(37, 35, 'AstroPower', 'APX-45', 45, 0),
(38, 36, 'AstroPower', 'APX-50', 50, 0),
(39, 37, 'AstroPower', 'APX-65', 65, 0),
(40, 38, 'AstroPower', 'APX-65', 65, 0),
(41, 39, 'AstroPower', 'APX-75', 75, 0),
(42, 40, 'AstroPower', 'APX-75-SC', 75, 0),
(43, 41, 'AstroPower', 'APX-90', 90, 0),
(44, 510, 'BP Solar', 'BP 3180N', 180, 0),
(45, 511, 'BP Solar', 'BP 3220N', 220, 0),
(46, 42, 'BP Solar', 'BP2140S', 140, 0),
(47, 43, 'BP Solar', 'BP2150S', 150, 0),
(48, 44, 'BP Solar', 'BP270', 70, 0),
(49, 45, 'BP Solar', 'BP275', 75, 0),
(50, 46, 'BP Solar', 'BP3110', 110, 0),
(51, 47, 'BP Solar', 'BP3115', 115, 0),
(52, 48, 'BP Solar', 'BP3120', 120, 0),
(53, 49, 'BP Solar', 'BP3125', 125, 0),
(54, 50, 'BP Solar', 'BP3125', 125, 0),
(55, 51, 'BP Solar', 'BP3135', 135, 0),
(56, 52, 'BP Solar', 'BP3150', 150, 0),
(57, 53, 'BP Solar', 'BP3160', 160, 0),
(58, 54, 'BP Solar', 'BP340', 40, 0),
(59, 55, 'BP Solar', 'BP350', 50, 0),
(60, 56, 'BP Solar', 'BP365', 65, 0),
(61, 57, 'BP Solar', 'BP365TS', 65, 0),
(62, 58, 'BP Solar', 'BP380', 80, 0),
(63, 59, 'BP Solar', 'BP380', 80, 0),
(64, 60, 'BP Solar', 'BP380', 80, 0),
(65, 61, 'BP Solar', 'BP4150', 150, 0),
(66, 62, 'BP Solar', 'BP4160', 160, 0),
(67, 63, 'BP Solar', 'BP4170', 170, 0),
(68, 64, 'BP Solar', 'BP4175', 175, 0),
(69, 65, 'BP Solar', 'BP485', 85, 0),
(70, 66, 'BP Solar', 'BP5130', 130, 0),
(71, 67, 'BP Solar', 'BP580', 80, 0),
(72, 68, 'BP Solar', 'BP580', 80, 0),
(73, 69, 'BP Solar', 'BP585', 85, 0),
(74, 70, 'BP Solar', 'BP585', 85, 0),
(75, 71, 'BP Solar', 'BP585', 85, 0),
(76, 72, 'BP Solar', 'BP980', 80, 0),
(77, 73, 'BP Solar', 'BP990', 90, 0),
(78, 74, 'BP Solar', 'MSX110', 110, 0),
(79, 75, 'BP Solar', 'MSX120', 120, 0),
(80, 76, 'BP Solar', 'MSX60', 60, 0),
(81, 77, 'BP Solar', 'MSX64', 64, 0),
(82, 78, 'BP Solar', 'SX110', 110, 0),
(83, 79, 'BP Solar', 'SX110S', 110, 0),
(84, 80, 'BP Solar', 'SX120', 120, 0),
(85, 81, 'BP Solar', 'SX120S', 120, 0),
(86, 82, 'BP Solar', 'SX140', 140, 0),
(87, 83, 'BP Solar', 'SX150', 150, 0),
(88, 84, 'BP Solar', 'SX160', 160, 0),
(89, 85, 'BP Solar', 'SX160B', 160, 0),
(90, 86, 'BP Solar', 'SX170B', 170, 0),
(91, 87, 'BP Solar', 'SX305', 4, 0),
(92, 88, 'BP Solar', 'SX310', 10, 0),
(93, 89, 'BP Solar', 'SX3130', 130, 0),
(94, 90, 'BP Solar', 'SX3140', 140, 0),
(95, 91, 'BP Solar', 'SX3150', 150, 0),
(96, 92, 'BP Solar', 'SX3160', 160, 0),
(97, 93, 'BP Solar', 'SX3190', 190, 0),
(98, 94, 'BP Solar', 'SX3195', 195, 0),
(99, 95, 'BP Solar', 'SX320', 20, 0),
(100, 96, 'BP Solar', 'SX3200', 200, 0),
(101, 97, 'BP Solar', 'SX330', 30, 0),
(102, 98, 'BP Solar', 'SX340', 40, 0),
(103, 99, 'BP Solar', 'SX350', 50, 0),
(104, 100, 'BP Solar', 'SX365', 65, 0),
(105, 101, 'BP Solar', 'SX375', 75, 0),
(106, 102, 'BP Solar', 'SX380', 80, 0),
(107, 103, 'BP Solar', 'SX55', 55, 0),
(108, 104, 'BP Solar', 'SX60', 60, 0),
(109, 105, 'BP Solar', 'SX70', 70, 0),
(110, 106, 'BP Solar', 'SX75', 75, 0),
(111, 512, 'Canadian Solar', 'CS5P-220M', 220, 0),
(112, 536, 'Canadian Solar', 'CS6P-235P', 235, 0),
(113, 603, 'Canadian Solar', 'CS6P-240P', 240, 0),
(114, 534, 'Canadian Solar', 'CS6P-250P', 250, 0),
(115, 597, 'Canadian Solar', 'CS6P-255P', 255, 0),
(116, 535, 'Canadian Solar', 'CS6X-280P', 280, 0),
(117, 537, 'Canadian Solar', 'CS6X-285P', 285, 0),
(118, 602, 'Canadian Solar', 'CS6X-290P', 290, 0),
(119, 107, 'Entech', '22X Concentrator', 444, 0),
(120, 108, 'EPV', 'EPV-40', 40, 0),
(121, 413, 'Evergreen', 'ES-180', 180, 0),
(122, 509, 'Evergreen', 'ES-180-RL-T', 180, 0),
(123, 414, 'Evergreen', 'ES-190', 190, 0),
(124, 456, 'Evergreen', 'ES-195', 195, 0),
(125, 478, 'First Solar', 'FS-265', 65, 0),
(126, 479, 'First Solar', 'FS-267', 67, 0),
(127, 480, 'First Solar', 'FS-270', 70, 0),
(128, 417, 'First Solar', 'FS-272', 72, 0),
(129, 481, 'First Solar', 'FS-275', 75, 0),
(130, 502, 'First Solar', 'FS-375', 75, 0),
(131, 109, 'First Solar', 'FS-45', 45, 0),
(132, 110, 'First Solar', 'FS-45', 45, 0),
(133, 111, 'First Solar', 'FS-50', 50, 0),
(134, 112, 'First Solar', 'FS-50', 50, 0),
(135, 113, 'First Solar', 'FS-50', 50, 0),
(136, 114, 'First Solar', 'FS-55', 55, 0),
(137, 115, 'First Solar', 'FS-55', 55, 0),
(138, 554, 'Generic', '200W Polysilicon Module', 200, 0),
(139, 555, 'Generic', '205W Polysilicon Module', 205, 0),
(140, 556, 'Generic', '210W Polysilicon Module', 210, 0),
(141, 557, 'Generic', '215W Polysilicon Module', 215, 0),
(142, 558, 'Generic', '220W Polysilicon Module', 220, 0),
(143, 559, 'Generic', '225W Polysilicon Module', 225, 0),
(144, 560, 'Generic', '230W Polysilicon Module', 230, 0),
(145, 561, 'Generic', '235W Polysilicon Module', 235, 0),
(146, 562, 'Generic', '240W Polysilicon Module', 240, 0),
(147, 563, 'Generic', '245W Polysilicon Module', 245, 0),
(148, 567, 'Generic', '250W Monosilicon Module', 250, 0),
(149, 564, 'Generic', '250W Polysilicon Module', 250, 0),
(150, 568, 'Generic', '255W Monosilicon Module', 255, 0),
(151, 565, 'Generic', '255W Polysilicon Module', 255, 0),
(152, 569, 'Generic', '260W Monosilicon Module', 260, 0),
(153, 566, 'Generic', '260W Polysilicon Module', 260, 0),
(154, 570, 'Generic', '265W Monosilicon Module', 265, 0),
(155, 571, 'Generic', '270W Monosilicon Module', 270, 0),
(156, 572, 'Generic', '275W Monosilicon Module', 275, 0),
(157, 573, 'Generic', '280W Monosilicon Module', 280, 0),
(158, 574, 'Generic', '285W Monosilicon Module', 285, 0),
(159, 575, 'Generic', '290W Monosilicon Module', 290, 0),
(160, 576, 'Generic', '295W Monosilicon Module', 295, 0),
(161, 577, 'Generic', '300W Monosilicon Module', 300, 0),
(162, 116, 'Kyocera Solar', 'KC120-1', 120, 0),
(163, 117, 'Kyocera Solar', 'KC120-1', 120, 0),
(164, 118, 'Kyocera Solar', 'KC125G', 125, 0),
(165, 119, 'Kyocera Solar', 'KC130TM', 130, 0),
(166, 120, 'Kyocera Solar', 'KC150', 150, 0),
(167, 121, 'Kyocera Solar', 'KC150', 150, 0),
(168, 122, 'Kyocera Solar', 'KC158G', 158, 0),
(169, 123, 'Kyocera Solar', 'KC167G', 167, 0),
(170, 124, 'Kyocera Solar', 'KC35', 35, 0),
(171, 125, 'Kyocera Solar', 'KC40', 40, 0),
(172, 126, 'Kyocera Solar', 'KC40T', 40, 0),
(173, 127, 'Kyocera Solar', 'KC45', 45, 0),
(174, 128, 'Kyocera Solar', 'KC50', 50, 0),
(175, 129, 'Kyocera Solar', 'KC50T', 50, 0),
(176, 130, 'Kyocera Solar', 'KC60', 60, 0),
(177, 131, 'Kyocera Solar', 'KC60', 60, 0),
(178, 132, 'Kyocera Solar', 'KC65T', 65, 0),
(179, 133, 'Kyocera Solar', 'KC70', 70, 0),
(180, 134, 'Kyocera Solar', 'KC80', 80, 0),
(181, 135, 'Kyocera Solar', 'KC80', 80, 0),
(182, 136, 'Kyocera Solar', 'KC80', 80, 0),
(183, 137, 'Kyocera Solar', 'KC85T', 85, 0),
(184, 138, 'Kyocera Solar', 'KD135GX-LP', 135, 0),
(185, 139, 'Kyocera Solar', 'KD180GX-LP', 180, 0),
(186, 140, 'Kyocera Solar', 'KD205GX-LP', 205, 0),
(187, 539, 'Kyocera Solar', 'KD240GX-LFB', 240, 0),
(188, 540, 'Kyocera Solar', 'KD245GX-LFB', 245, 0),
(189, 538, 'Kyocera Solar', 'KD315GX-LPB', 315, 0),
(190, 605, 'Kyocera Solar', 'KJ195P-3CRCE', 195, 0),
(191, 604, 'Kyocera Solar', 'KJ195P-3CUCE', 195, 0),
(192, 141, 'Kyocera Solar', 'KS10', 10, 0),
(193, 142, 'Kyocera Solar', 'KS10', 10, 0),
(194, 143, 'Kyocera Solar', 'KS12', 12, 0),
(195, 144, 'Kyocera Solar', 'KS16', 16, 0),
(196, 145, 'Kyocera Solar', 'KS20', 20, 0),
(197, 146, 'Kyocera Solar', 'KS20', 20, 0),
(198, 147, 'Kyocera Solar', 'KS5', 5, 0),
(199, 148, 'Kyocera Solar', 'KS5', 5, 0),
(200, 149, 'Kyocera Solar', 'PV110', 110, 0),
(201, 150, 'Kyocera Solar', 'PV120', 120, 0),
(202, 151, 'Kyocera Solar', 'PV65', 65, 0),
(203, 152, 'Kyocera Solar', 'PV75', 75, 0),
(204, 491, 'LDK Solar', 'LDK-235P', 235, 0),
(205, 647, 'LG Electronics Inc.', 'LG240M1C', 240, 0),
(206, 648, 'LG Electronics Inc.', 'LG250M1C', 250, 0),
(207, 649, 'LG Electronics Inc.', 'LG260M1C', 260, 0),
(208, 507, 'Masdar Masdar', 'MPV140-M', 140, 0),
(209, 508, 'Masdar Masdar', 'MPV580-M', 580, 0),
(210, 153, 'Mitsubishi', 'PV-MF115UE4N', 115, 0),
(211, 154, 'Mitsubishi', 'PV-MF120UE4N', 120, 0),
(212, 155, 'Mitsubishi', 'PV-MF125UE4N', 125, 0),
(213, 156, 'Mitsubishi', 'PV-MF130UE4N', 130, 0),
(214, 162, 'Mitsubishi', 'PV-MF165EB3', 165, 0),
(215, 163, 'Mitsubishi', 'PV-MF170EB4', 170, 0),
(216, 164, 'Mitsubishi', 'PV-MF170UD4', 170, 0),
(217, 165, 'Mitsubishi', 'PV-MF175UD4', 175, 0),
(218, 166, 'Mitsubishi', 'PV-MF180UD4', 180, 0),
(219, 167, 'Mitsubishi', 'PV-MF185UD4', 185, 0),
(220, 168, 'Mitsubishi', 'PV-UD175MF5', 175, 0),
(221, 169, 'Mitsubishi', 'PV-UD180MF5', 180, 0),
(222, 170, 'Mitsubishi', 'PV-UD185MF5', 185, 0),
(223, 171, 'Mitsubishi', 'PV-UD190MF5', 190, 0),
(224, 157, 'Mitsubishi', 'PV-UE115MF5N', 115, 0),
(225, 158, 'Mitsubishi', 'PV-UE120MF5N', 120, 0),
(226, 159, 'Mitsubishi', 'PV-UE125MF5N', 125, 0),
(227, 160, 'Mitsubishi', 'PV-UE130MF5N', 130, 0),
(228, 513, 'Moser Baer', 'MBPV 220', 220, 0),
(229, 172, 'Photowatt', 'PW100', 100, 0),
(230, 173, 'Photowatt', 'PW1000 (100W/12V)', 100, 0),
(231, 174, 'Photowatt', 'PW1000 (100W/24V)', 100, 0),
(232, 175, 'Photowatt', 'PW1000 (105W/12V)', 105, 0),
(233, 176, 'Photowatt', 'PW1000 (105W/24V)', 105, 0),
(234, 177, 'Photowatt', 'PW1000 (24V)', 100, 0),
(235, 178, 'Photowatt', 'PW1000 (90W/12V)', 90, 0),
(236, 179, 'Photowatt', 'PW1000 (90W/24V)', 90, 0),
(237, 180, 'Photowatt', 'PW1000 (95W/12V)', 95, 0),
(238, 181, 'Photowatt', 'PW1000 (95W/24V)', 95, 0),
(239, 182, 'Photowatt', 'PW1000-12V', 100, 0),
(240, 183, 'Photowatt', 'PW1000-24V', 100, 0),
(241, 184, 'Photowatt', 'PW1250', 125, 0),
(242, 185, 'Photowatt', 'PW1650-12', 165, 0),
(243, 186, 'Photowatt', 'PW1650-24', 165, 0),
(244, 187, 'Photowatt', 'PW200-12V', 200, 0),
(245, 188, 'Photowatt', 'PW500-12V', 55, 0),
(246, 189, 'Photowatt', 'PW6-110', 110, 0),
(247, 190, 'Photowatt', 'PW6-123', 123, 0),
(248, 191, 'Photowatt', 'PW6-230-12V', 230, 0),
(249, 192, 'Photowatt', 'PW6-230-24', 230, 0),
(250, 193, 'Photowatt', 'PW750', 75, 0),
(251, 194, 'Photowatt', 'PW850-12V', 85, 0),
(252, 195, 'Photowatt', 'PWX100', 10, 0),
(253, 196, 'Photowatt', 'PWX200', 20, 0),
(254, 197, 'Photowatt', 'PWX500', 50, 0),
(255, 198, 'Photowatt', 'PWX500 (42W)', 42, 0),
(256, 199, 'Photowatt', 'PWX500 (47W)', 47, 0),
(257, 200, 'Photowatt', 'PWX500 (52W)', 52, 0),
(258, 201, 'Photowatt', 'PWX750 (70W)', 70, 0),
(259, 202, 'Photowatt', 'PWX750 (75W)', 75, 0),
(260, 203, 'Photowatt', 'PWX750 (80W)', 80, 0),
(261, 420, 'Qcells', 'Aleo PL-220-QP', 220, 0),
(262, 418, 'Qcells', 'Aleo PL-225-QM', 225, 0),
(263, 606, 'Qcells', 'Q.BASE-G2-245', 245, 0),
(264, 421, 'Qcells', 'SSI-M6-220', 220, 0),
(265, 419, 'Qcells', 'SSI-S6-220', 220, 0),
(266, 204, 'Sanyo', 'H168', 168, 0),
(267, 205, 'Sanyo', 'HIP-180BA3', 180, 0),
(268, 206, 'Sanyo', 'HIP-180DA3 Bifacial', 180, 0),
(269, 207, 'Sanyo', 'HIP-186BA3', 186, 0),
(270, 208, 'Sanyo', 'HIP-186DA1 Bifacial', 186, 0),
(271, 209, 'Sanyo', 'HIP-186DA3 Bifacial', 186, 0),
(272, 210, 'Sanyo', 'HIP-190BA2', 190, 0),
(273, 211, 'Sanyo', 'HIP-190BA2', 190, 0),
(274, 212, 'Sanyo', 'HIP-190BA3', 190, 0),
(275, 213, 'Sanyo', 'HIP-190BE11', 190, 0),
(276, 438, 'Sanyo', 'HIP-190CA9', 190, 0),
(277, 214, 'Sanyo', 'HIP-190DA1 Bifacial', 190, 0),
(278, 215, 'Sanyo', 'HIP-190DA3 Bifacial', 190, 0),
(279, 216, 'Sanyo', 'HIP-195BA3', 195, 0),
(280, 217, 'Sanyo', 'HIP-195BE11', 195, 0),
(281, 218, 'Sanyo', 'HIP-195DA3 Bifacial', 195, 0),
(282, 530, 'Sanyo', 'HIP-200BA19', 200, 0),
(283, 219, 'Sanyo', 'HIP-200BA3', 200, 0),
(284, 220, 'Sanyo', 'HIP-200BE11', 200, 0),
(285, 221, 'Sanyo', 'HIP-200DA3 Bifacial', 200, 0),
(286, 222, 'Sanyo', 'HIP-205BA3', 205, 0),
(287, 223, 'Sanyo', 'HIP-205NKHE1', 205, 0),
(288, 224, 'Sanyo', 'HIP-210NKHE1', 210, 0),
(289, 225, 'Sanyo', 'HIP-215HDE1', 215, 0),
(290, 226, 'Sanyo', 'HIP-215NKHE1', 215, 0),
(291, 227, 'Sanyo', 'HIP-220HDE1', 220, 0),
(292, 228, 'Sanyo', 'HIP-225HDE1', 225, 0),
(293, 521, 'Sanyo', 'HIP-225HDE1 (proxy)', 225, 0),
(294, 523, 'Sanyo', 'HIP-270NJE1 (proxy)', 270, 0),
(295, 229, 'Sanyo', 'HIP-2717', 27, 0),
(296, 230, 'Sanyo', 'HIP-55172', 55, 0),
(297, 231, 'Sanyo', 'HIP-6219', 62, 0),
(298, 232, 'Sanyo', 'HIP-63S1', 63, 0),
(299, 233, 'Sanyo', 'HIP-6751B', 180, 0),
(300, 234, 'Sanyo', 'HIP-6751B', 180, 0),
(301, 235, 'Sanyo', 'HIP-Bifacial Prototype', 180, 0),
(302, 236, 'Sanyo', 'HIP-H552BA2', 180, 0),
(303, 237, 'Sanyo', 'HIP-HO97', 180, 0),
(304, 238, 'Sanyo', 'HIP-HO97', 180, 0),
(305, 239, 'Sanyo', 'HIP-J54BA2', 180, 0),
(306, 522, 'Sanyo', 'HIT-H245E01 (proxy)', 245, 0),
(307, 240, 'Schott Solar', 'ASE-100-ATF/17 (100)', 100, 0),
(308, 241, 'Schott Solar', 'ASE-100-ATF/17 (85)', 85, 0),
(309, 242, 'Schott Solar', 'ASE-100-ATF/17 (92)', 82, 0),
(310, 243, 'Schott Solar', 'ASE-100-ATF/34 (100)', 100, 0),
(311, 244, 'Schott Solar', 'ASE-100-ATF/34 (85)', 85, 0),
(312, 245, 'Schott Solar', 'ASE-100-ATF/34 (92)', 92, 0),
(313, 246, 'Schott Solar', 'ASE-250-DGF/50 (250)', 250, 0),
(314, 247, 'Schott Solar', 'ASE-270-DGF/50 (260)', 260, 0),
(315, 248, 'Schott Solar', 'ASE-270-DGF/50 (270)', 270, 0),
(316, 249, 'Schott Solar', 'ASE-300-DGF/17 (265)', 265, 0),
(317, 250, 'Schott Solar', 'ASE-300-DGF/17 (285)', 285, 0),
(318, 251, 'Schott Solar', 'ASE-300-DGF/17 (300)', 300, 0),
(319, 252, 'Schott Solar', 'ASE-300-DGF/50', 250, 0),
(320, 253, 'Schott Solar', 'ASE-300-DGF/50 (265)', 265, 0),
(321, 254, 'Schott Solar', 'ASE-300-DGF/50 (280)', 280, 0),
(322, 255, 'Schott Solar', 'ASE-300-DGF/50 (285)', 285, 0),
(323, 256, 'Schott Solar', 'ASE-300-DGF/50 (290)', 290, 0),
(324, 257, 'Schott Solar', 'ASE-300-DGF/50 (300)', 300, 0),
(325, 258, 'Schott Solar', 'ASE-300-DGF/50 (300)', 300, 0),
(326, 259, 'Schott Solar', 'ASE-300-DGF/50 (310)', 310, 0),
(327, 260, 'Schott Solar', 'ASE-300-DGF/50 (320)', 320, 0),
(328, 261, 'Schott Solar', 'ASE-50-ALF/17', 45, 0),
(329, 262, 'Schott Solar', 'ASE-50-ATF/17 (45)', 45, 0),
(330, 263, 'Schott Solar', 'ASE-50-ATF/17 (50)', 50, 0),
(331, 264, 'Schott Solar', 'SAPC 165', 165, 0),
(332, 265, 'Schott Solar', 'SAPC 165', 165, 0),
(333, 266, 'Schott Solar', 'SAPC 170', 170, 0),
(334, 267, 'Schott Solar', 'SAPC 175', 175, 0),
(335, 268, 'Sharp', 'ND-070ERU/LU', 70, 0),
(336, 269, 'Sharp', 'ND-123U1', 123, 0),
(337, 270, 'Sharp', 'ND-160E1', 160, 0),
(338, 271, 'Sharp', 'ND-167U1', 167, 0),
(339, 272, 'Sharp', 'ND-167U1F', 167, 0),
(340, 273, 'Sharp', 'ND-167U1F', 167, 0),
(341, 607, 'Sharp', 'ND-170AA', 170, 0),
(342, 274, 'Sharp', 'ND-187U1F', 187, 0),
(343, 275, 'Sharp', 'ND-208U1', 208, 0),
(344, 276, 'Sharp', 'ND-208U1F', 208, 0),
(345, 277, 'Sharp', 'ND-216U1F', 216, 0),
(346, 278, 'Sharp', 'ND-216U2', 216, 0),
(347, 279, 'Sharp', 'ND-L3E1U', 123, 0),
(348, 280, 'Sharp', 'ND-L3E6E', 123, 0),
(349, 281, 'Sharp', 'ND-NOECU', 140, 0),
(350, 282, 'Sharp', 'ND-Q0E2U', 160, 0),
(351, 283, 'Sharp', 'NE-165U1', 165, 0),
(352, 284, 'Sharp', 'NE-170U1', 170, 0),
(353, 285, 'Sharp', 'NE-80E1U', 80, 0),
(354, 286, 'Sharp', 'NE-H120E1', 120, 0),
(355, 287, 'Sharp', 'NE-H120E1', 120, 0),
(356, 288, 'Sharp', 'NE-K125U2', 125, 0),
(357, 289, 'Sharp', 'NE-Q5E2U', 165, 0),
(358, 290, 'Sharp', 'NT-175U1', 175, 0),
(359, 291, 'Sharp', 'NT-185U1', 185, 0),
(360, 292, 'Sharp', 'NT-5AE3D', 175, 0),
(361, 293, 'Sharp', 'NT-R5E1U', 175, 0),
(362, 294, 'Sharp', 'NT-S5E1U', 175, 0),
(363, 529, 'Sharp', 'NU-R250J5 (proxy)', 250, 0),
(364, 527, 'Sharp', 'NU-U235F2 (proxy)', 235, 0),
(365, 528, 'Sharp', 'NU-U240F2 (proxy)', 240, 0),
(366, 295, 'Shell Solar', 'S10', 9, 0),
(367, 296, 'Shell Solar', 'S105', 105, 0),
(368, 297, 'Shell Solar', 'S115', 115, 0),
(369, 298, 'Shell Solar', 'S165', 165, 0),
(370, 299, 'Shell Solar', 'S25', 25, 0),
(371, 300, 'Shell Solar', 'S36', 36, 0),
(372, 301, 'Shell Solar', 'S65', 65, 0),
(373, 302, 'Shell Solar', 'S70-C', 70, 0),
(374, 303, 'Shell Solar', 'S75-C', 75, 0),
(375, 304, 'Shell Solar', 'S80', 80, 0),
(376, 305, 'Shell Solar', 'SM100-12', 100, 0),
(377, 306, 'Shell Solar', 'SM100-24', 100, 0),
(378, 307, 'Shell Solar', 'SM110-12', 110, 0),
(379, 308, 'Shell Solar', 'SM110-24', 110, 0),
(380, 492, 'Shell Solar', 'Solar Eclipse 80-C', 80, 0),
(381, 309, 'Shell Solar', 'SQ140-PC', 140, 0),
(382, 310, 'Shell Solar', 'SQ150-PC', 150, 0),
(383, 311, 'Shell Solar', 'SQ160-PC', 160, 0),
(384, 312, 'Shell Solar', 'SQ70 (12V)', 70, 0),
(385, 313, 'Shell Solar', 'SQ70 (6V)', 70, 0),
(386, 315, 'Shell Solar', 'SQ75 (6V)', 75, 0),
(387, 316, 'Shell Solar', 'SQ80 (12V)', 80, 0),
(388, 317, 'Shell Solar', 'SQ80 (6V)', 80, 0),
(389, 318, 'Shell Solar', 'ST36', 36, 0),
(390, 319, 'Siemens', 'SM10', 10, 0),
(391, 320, 'Siemens', 'SM20', 20, 0),
(392, 321, 'Siemens', 'SM46', 46, 0),
(393, 322, 'Siemens', 'SM50', 50, 0),
(394, 323, 'Siemens', 'SM50-H', 50, 0),
(395, 324, 'Siemens', 'SM55', 55, 0),
(396, 325, 'Siemens', 'SM55', 55, 0),
(397, 326, 'Siemens', 'SM6', 6, 0),
(398, 327, 'Siemens', 'SM6', 6, 0),
(399, 328, 'Siemens', 'SP130', 130, 0),
(400, 329, 'Siemens', 'SP130', 130, 0),
(401, 330, 'Siemens', 'SP140', 140, 0),
(402, 331, 'Siemens', 'SP140', 140, 0),
(403, 332, 'Siemens', 'SP150', 150, 0),
(404, 333, 'Siemens', 'SP150', 150, 0),
(405, 334, 'Siemens', 'SP18 (12V)', 18, 0),
(406, 335, 'Siemens', 'SP18 (6V)', 18, 0),
(407, 336, 'Siemens', 'SP36 (12V)', 36, 0),
(408, 337, 'Siemens', 'SP36 (6V)', 36, 0),
(409, 338, 'Siemens', 'SP65 (12V)', 65, 0),
(410, 339, 'Siemens', 'SP70 (12V)', 70, 0),
(411, 340, 'Siemens', 'SP70 (6V)', 70, 0),
(412, 341, 'Siemens', 'SP75', 75, 0),
(413, 343, 'Siemens', 'SP75 (6V)', 75, 0),
(414, 344, 'Siemens', 'SR100 (12V)', 99, 0),
(415, 345, 'Siemens', 'SR100 (6V)', 99, 0),
(416, 346, 'Siemens', 'SR50 (12V)', 50, 0),
(417, 347, 'Siemens', 'SR50 (6V)', 50, 0),
(418, 348, 'Siemens', 'SR90 (12V)', 90, 0),
(419, 349, 'Siemens', 'SR90 (12V)', 90, 0),
(420, 350, 'Siemens', 'SR90 (6V)', 90, 0),
(421, 351, 'Siemens', 'ST10', 10, 0),
(422, 352, 'Siemens', 'ST10', 10, 0),
(423, 353, 'Siemens', 'ST20', 20, 0),
(424, 354, 'Siemens', 'ST40', 40, 0),
(425, 355, 'Siemens', 'ST5', 5, 0),
(426, 356, 'Siemens', 'ST5', 5, 0),
(427, 514, 'Solar World', 'SW175', 175, 0),
(428, 541, 'Solar World', 'SW245 mono', 245, 0),
(429, 609, 'Solar World', 'SW250', 250, 0),
(430, 608, 'Solar World', 'SW255', 255, 0),
(431, 610, 'Solar World', 'SW260', 260, 0),
(432, 598, 'Solar World', 'SW260 mono', 260, 0),
(433, 357, 'Solar-Fabrik', 'SF-100', 102, 0),
(434, 358, 'Solar-Fabrik', 'SF-115', 115, 0),
(435, 359, 'Solarex', 'MST-43LV', 43, 0),
(436, 360, 'Solarex', 'MST-43LV', 43, 0),
(437, 361, 'Solarex', 'MST-43MV', 43, 0),
(438, 362, 'Solarex', 'MST-43MV', 43, 0),
(439, 363, 'Solarex', 'MSX-110', 110, 0),
(440, 364, 'Solarex', 'MSX-120', 120, 0),
(441, 365, 'Solarex', 'MSX-120', 120, 0),
(442, 366, 'Solarex', 'MSX-240', 240, 0),
(443, 367, 'Solarex', 'MSX-60', 60, 0),
(444, 368, 'Solarex', 'MSX-64', 64, 0),
(445, 369, 'Solarex', 'MSX-64', 64, 0),
(446, 370, 'Solarex', 'MSX-64 (SiNx Proto)', 64, 0),
(447, 371, 'Solarex', 'MSX-77', 77, 0),
(448, 372, 'Solarex', 'MSX-83', 83, 0),
(449, 515, 'SolarFun', 'SF220-30-P220', 220, 0),
(450, 542, 'Suniva', 'MVP235-60-5-401', 235, 0),
(451, 543, 'Suniva', 'MVP240-60-5-401', 240, 0),
(452, 544, 'Suniva', 'MVP245-60-5-401', 245, 0),
(453, 578, 'Suniva', 'MVP285-72-5-401', 285, 0),
(454, 611, 'Suniva', 'OPT250-60-4-100', 250, 0),
(455, 612, 'Suniva', 'OPT255-60-4-100', 255, 0),
(456, 613, 'Suniva', 'OPT260-60-4-100', 260, 0),
(457, 615, 'Suniva', 'OPT295-72-4-100', 295, 0),
(458, 616, 'Suniva', 'OPT300-72-4-100', 300, 0),
(459, 614, 'Suniva', 'OPT305-72-4-100', 305, 0),
(460, 600, 'Suniva', 'OPT315-72-4-100', 315, 0),
(461, 483, 'Suniva', 'Titan 230', 230, 0),
(462, 484, 'Suniva', 'Titan 240', 240, 0),
(463, 373, 'SunPower', '72 Cell prototype [Archived]', 0, 0),
(464, 652, 'SunPower', 'C7_TUV_8499', 112, 0),
(465, 434, 'SunPower', 'FullSun [Archived]', 290, 0),
(466, 639, 'SunPower', 'NB-245-AB (Sharp)', 245, 0),
(467, 436, 'SunPower', 'SER-220 (IEC/UL) [Archived]', 220, 0),
(468, 435, 'SunPower', 'SER-228 (IEC/UL) [Archived]', 228, 0),
(469, 494, 'SunPower', 'SER-235 [Archived]', 235, 0),
(470, 495, 'SunPower', 'SER-280 [Archived]', 280, 0),
(471, 374, 'SunPower', 'SPR-200-BLK-I [Archived]', 200, 0),
(472, 458, 'SunPower', 'SPR-200N-WHT-I [Archived]', 200, 0),
(473, 375, 'SunPower', 'SPR-205-BLK [Archived]', 205, 0),
(474, 459, 'SunPower', 'SPR-208-BLK-I [Archived]', 208, 0),
(475, 376, 'SunPower', 'SPR-210-BLK-U [Archived]', 210, 0),
(476, 378, 'SunPower', 'SPR-210-WHT [Archived]', 210, 0),
(477, 377, 'SunPower', 'SPR-210-WHT-I [Archived]', 210, 0),
(478, 428, 'SunPower', 'SPR-215-BLK [Archived]', 215, 0),
(479, 380, 'SunPower', 'SPR-215-WHT-U [Archived]', 215, 0),
(480, 461, 'SunPower', 'SPR-217-WHT-I [Archived]', 217, 0),
(481, 460, 'SunPower', 'SPR-217E-BLK-D [Archived]', 217, 0),
(482, 422, 'SunPower', 'SPR-220-BLK-I [Archived]', 220, 0),
(483, 429, 'SunPower', 'SPR-220-WHT [Archived]', 220, 0),
(484, 430, 'SunPower', 'SPR-225-BLK-U [Archived]', 225, 0),
(485, 423, 'SunPower', 'SPR-225-WHT-I [Archived]', 225, 0),
(486, 462, 'SunPower', 'SPR-225E-BLK-D [Archived]', 225, 0),
(487, 463, 'SunPower', 'SPR-225E-WHT-D AR [Archived]', 225, 0),
(488, 516, 'SunPower', 'SPR-225NE-BLK-D [Archived]', 225, 0),
(489, 464, 'SunPower', 'SPR-230E-WHT-D [Archived]', 230, 0),
(490, 517, 'SunPower', 'SPR-230NE-BLK-D [Archived]', 230, 0),
(491, 451, 'SunPower', 'SPR-238E-WHT-D AR [Archived]', 238, 0),
(492, 496, 'SunPower', 'SPR-240E-WHT-D AR [Archived]', 240, 0),
(493, 506, 'SunPower', 'SPR-245NE-WHT-D AR-A [Archived]', 245, 0),
(494, 638, 'SunPower', 'SPR-250NE-WHT-J (Toshiba)', 250, 0),
(495, 501, 'SunPower', 'SPR-280E-WHT-I [Archived]', 280, 0),
(496, 432, 'SunPower', 'SPR-290-WHT-D [Archived]', 290, 0),
(497, 465, 'SunPower', 'SPR-290E-BLK-D [Archived]', 290, 0),
(498, 467, 'SunPower', 'SPR-295-WHT-D AR [Archived]', 295, 0),
(499, 466, 'SunPower', 'SPR-295E-WHT-D [Archived]', 295, 0),
(500, 416, 'SunPower', 'SPR-300-WHT-I [Archived]', 300, 0),
(501, 468, 'SunPower', 'SPR-300E-BLK-D [Archived]', 300, 0),
(502, 469, 'SunPower', 'SPR-300E-WHT-D [Archived]', 300, 0),
(503, 505, 'SunPower', 'SPR-300NE-BLK-D [Archived]', 300, 0),
(504, 470, 'SunPower', 'SPR-305E-WHT-D [Archived]', 305, 0),
(505, 471, 'SunPower', 'SPR-305E-WHT-D AR [Archived]', 305, 0),
(506, 497, 'SunPower', 'SPR-308E-WHT-D [Archived]', 308, 0),
(507, 472, 'SunPower', 'SPR-310-WHT-D AR [Archived]', 310, 0),
(508, 433, 'SunPower', 'SPR-310E-WHT-D [Archived]', 310, 0),
(509, 385, 'SunPower', 'SPR-315-WHT [Archived]', 315, 0),
(510, 453, 'SunPower', 'SPR-315E-WHT-D AR [Archived]', 315, 0),
(511, 504, 'SunPower', 'SPR-315NE-WHT-D [Archived]', 315, 0),
(512, 454, 'SunPower', 'SPR-318E-WHT-D AR [Archived]', 318, 0),
(513, 493, 'SunPower', 'SPR-320E-WHT-D AR [Archived]', 320, 0),
(514, 498, 'SunPower', 'SPR-327NE-WHT-D AR [Archived]', 327, 0),
(515, 503, 'SunPower', 'SPR-333NE-WHT-D AR [Archived]', 333, 0),
(516, 474, 'SunPower', 'SPR-375-WHT-D [Archived]', 375, 0),
(517, 475, 'SunPower', 'SPR-390E-WHT-D [Archived]', 390, 0),
(518, 425, 'SunPower', 'SPR-400-WHT-D [Archived]', 400, 0),
(519, 476, 'SunPower', 'SPR-400E-WHT-D AR [Archived]', 400, 0),
(520, 449, 'SunPower', 'SPR-415E-WHT-D [Archived]', 415, 0),
(521, 579, 'SunPower', 'SPR-425 (PSEL 2959)', 425, 0),
(522, 580, 'SunPower', 'SPR-425 (PSEL 2960)', 425, 0),
(523, 581, 'SunPower', 'SPR-425 (PSEL 2961)', 425, 0),
(524, 450, 'SunPower', 'SPR-425E-WHT-D AR [Archived]', 425, 0),
(525, 499, 'SunPower', 'SPR-435NE-WHT-D AR [Archived]', 435, 0),
(526, 387, 'SunPower', 'SPR-63W-BLK-U (SunTile 1A) [Archived]', 63, 0),
(527, 457, 'SunPower', 'SPR-71ER-BLK-U [Archived]', 70, 0),
(528, 431, 'SunPower', 'SPR-76RE-BLK-U (SunTile 1B) [Archived]', 76, 0),
(529, 386, 'SunPower', 'SPR-90 [Archived]', 90, 0),
(530, 589, 'SunPower', 'SPR-C7 - GEN1', 115, 0),
(531, 590, 'SunPower', 'SPR-C7 - GEN2A', 122, 0),
(532, 645, 'SunPower', 'SPR-C7 - GEN2B', 122, 0),
(533, 596, 'SunPower', 'SPR-C7 - GEN2B+', 125, 0),
(534, 622, 'SunPower', 'SPR-E20-245', 245, 0),
(535, 646, 'SunPower', 'SPR-E20-440', 440, 0),
(536, 642, 'SunPower ', 'SPR-E18-295-COM', 295, 0),
(537, 582, 'SunPower ', 'SPR-E18-300', 300, 0),
(538, 583, 'SunPower ', 'SPR-E18-305', 305, 0),
(539, 641, 'SunPower ', 'SPR-E19-310-COM', 310, 0),
(540, 584, 'SunPower ', 'SPR-E19-315', 315, 0),
(541, 585, 'SunPower ', 'SPR-E19-320', 320, 0),
(542, 644, 'SunPower ', 'SPR-E19-410-COM', 410, 0),
(543, 586, 'SunPower ', 'SPR-E20-245', 245, 0),
(544, 587, 'SunPower ', 'SPR-E20-327', 327, 1),
(545, 640, 'SunPower ', 'SPR-E20-327-COM', 327, 1),
(546, 588, 'SunPower ', 'SPR-E20-435', 435, 0),
(547, 634, 'SunPower ', 'SPR-X19-240-BLK', 240, 0),
(548, 635, 'SunPower ', 'SPR-X20-245', 245, 0),
(549, 591, 'SunPower ', 'SPR-X20-250-BLK', 250, 0),
(550, 636, 'SunPower ', 'SPR-X20-327-BLK', 327, 0),
(551, 643, 'SunPower ', 'SPR-X20-327-COM', 327, 0),
(552, 599, 'SunPower ', 'SPR-X21-255', 255, 0),
(553, 637, 'SunPower ', 'SPR-X21-335', 335, 0),
(554, 592, 'SunPower ', 'SPR-X21-335-BLK', 335, 0),
(555, 593, 'SunPower ', 'SPR-X21-345', 345, 0),
(556, 594, 'SunPower ', 'SPR-X21-345-COM', 345, 1),
(557, 426, 'SunTech', '270', 270, 0),
(558, 526, 'SunTech', 'Blackpearl 285-24/Vd (proxy)', 285, 0),
(559, 485, 'SunTech', 'STP170S-24/Ac', 170, 0),
(560, 486, 'SunTech', 'STP175S-24/Ac', 175, 0),
(561, 487, 'SunTech', 'STP180S-24/Ac', 180, 0),
(562, 531, 'SunTech', 'STP200S-18/ub-1', 200, 0),
(563, 524, 'SunTech', 'STP245S-20/Wd (proxy)', 245, 0),
(564, 488, 'SunTech', 'STP260S-24/Vb', 260, 0),
(565, 532, 'SunTech', 'STP270S-24/Vb', 270, 0),
(566, 500, 'SunTech', 'STP275S-24/Vb', 275, 0),
(567, 525, 'SunTech', 'STP280-24/Vb-1 (proxy)', 280, 0),
(568, 489, 'SunTech', 'STP280S-24/Vb', 280, 0),
(569, 617, 'SunTech', 'STP290-24/Vd', 290, 0),
(570, 618, 'SunTech', 'STP295-24/Vd', 295, 0),
(571, 619, 'SunTech', 'STP300-24/Vd', 300, 0),
(572, 620, 'SunTech', 'STP305-24/Vd', 305, 0),
(573, 388, 'Uni-Solar', 'PVL-116', 116, 0),
(574, 389, 'Uni-Solar', 'PVL-124', 124, 0),
(575, 390, 'Uni-Solar', 'PVL-128', 128, 0),
(576, 391, 'Uni-Solar', 'PVL-136', 136, 0),
(577, 392, 'Uni-Solar', 'PVL-29', 29, 0),
(578, 393, 'Uni-Solar', 'PVL-58', 58, 0),
(579, 394, 'Uni-Solar', 'PVL-64', 64, 0),
(580, 395, 'Uni-Solar', 'PVL-68', 68, 0),
(581, 396, 'Uni-Solar', 'PVL-87', 87, 0),
(582, 397, 'Uni-Solar', 'SHR-17', 17, 0),
(583, 398, 'Uni-Solar', 'US-11', 10, 0),
(584, 399, 'Uni-Solar', 'US-116', 116, 0),
(585, 400, 'Uni-Solar', 'US-21', 21, 0),
(586, 401, 'Uni-Solar', 'US-3', 3, 0),
(587, 402, 'Uni-Solar', 'US-32', 32, 0),
(588, 403, 'Uni-Solar', 'US-32', 32, 0),
(589, 404, 'Uni-Solar', 'US-32', 32, 0),
(590, 405, 'Uni-Solar', 'US-42', 42, 0),
(591, 406, 'Uni-Solar', 'US-5', 5, 0),
(592, 407, 'Uni-Solar', 'US-64', 64, 0),
(593, 408, 'Uni-Solar', 'US-64', 64, 0),
(594, 409, 'Uni-Solar', 'US-64', 64, 0),
(595, 410, 'Uni-Solar', 'USF-11', 11, 0),
(596, 411, 'Uni-Solar', 'USF-32', 32, 0),
(597, 412, 'Uni-Solar', 'USF-5', 5, 0),
(598, 427, 'Yingli', '220', 220, 0),
(599, 447, 'Yingli', '230', 230, 0),
(600, 448, 'Yingli', '235', 235, 0),
(601, 490, 'Yingli', 'YL210', 210, 0),
(602, 518, 'Yingli', 'YL225-29b (proxy)', 225, 0),
(603, 533, 'Yingli', 'YL230-29b', 230, 0),
(604, 519, 'Yingli', 'YL235-29b (proxy)', 235, 0),
(605, 553, 'Yingli', 'YL235P-29b', 235, 0),
(606, 545, 'Yingli', 'YL240P-29b', 240, 0),
(607, 546, 'Yingli', 'YL245P-29b', 245, 0),
(608, 547, 'Yingli', 'YL250P-29b', 250, 0),
(609, 520, 'Yingli', 'YL280-35b (proxy)', 280, 0),
(610, 548, 'Yingli', 'YL280P-35b', 280, 0),
(611, 549, 'Yingli', 'YL285P-35b', 285, 0),
(612, 550, 'Yingli', 'YL290P-35b', 290, 0),
(613, 551, 'Yingli', 'YL295P-35b', 295, 0),
(614, 552, 'Yingli', 'YL300P-35b', 300, 0),
(615, 650, '', 'Green Triplex PM250M01', 275, 0),
(616, 651, '', 'Green Triplex PM330M01', 330, 0),
(617, 342, '', 'SP75 (12V)', 75, 0),
(618, 314, '', 'SQ75 (12V)', 75, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pv_pvwatts`
--

CREATE TABLE `pv_pvwatts` (
  `pvw_id` double NOT NULL,
  `pvw_address1` varchar(64) NOT NULL,
  `pvw_address2` varchar(64) NOT NULL,
  `pvw_city` varchar(64) NOT NULL,
  `pvw_state` varchar(32) NOT NULL,
  `pvw_zip` varchar(16) NOT NULL,
  `pvw_country` varchar(132) NOT NULL,
  `pvw_county` varchar(64) NOT NULL,
  `pvw_moduleId` double NOT NULL,
  `pvw_tilt` decimal(5,2) NOT NULL,
  `pwv_azimuth` decimal(5,2) NOT NULL,
  `pvw_azimuth` decimal(5,2) NOT NULL,
  `pvw_lat` varchar(32) NOT NULL,
  `pvw_lon` varchar(32) NOT NULL,
  `pvw_trackMode` varchar(32) NOT NULL,
  `pvw_derate` decimal(5,4) NOT NULL,
  `pvw_dataSet` varchar(32) NOT NULL,
  `pvw_inoct` int(11) NOT NULL,
  `pvw_gamma` varchar(8) NOT NULL,
  `pvw_feetBetweenRows` decimal(6,2) NOT NULL,
  `pvw_annualHistoricalKwh` decimal(12,2) NOT NULL,
  `pvw_forecastKwh` decimal(12,2) NOT NULL,
  `pvw_forecastMonthlyKwh` blob NOT NULL,
  `pvw_forecastHourlyKwh` blob NOT NULL,
  `pvw_moduleCount` int(11) NOT NULL,
  `pvw_capacityKwp` decimal(12,2) NOT NULL,
  `pvw_squarefootage` decimal(12,2) NOT NULL,
  `pvw_forecastDate` date NOT NULL,
  `pvw_repId` double NOT NULL,
  `pvw_targetKwhPercent` decimal(5,2) NOT NULL,
  `pvw_projectName` varchar(132) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_pvwatts`
--

INSERT INTO `pv_pvwatts` (`pvw_id`, `pvw_address1`, `pvw_address2`, `pvw_city`, `pvw_state`, `pvw_zip`, `pvw_country`, `pvw_county`, `pvw_moduleId`, `pvw_tilt`, `pwv_azimuth`, `pvw_azimuth`, `pvw_lat`, `pvw_lon`, `pvw_trackMode`, `pvw_derate`, `pvw_dataSet`, `pvw_inoct`, `pvw_gamma`, `pvw_feetBetweenRows`, `pvw_annualHistoricalKwh`, `pvw_forecastKwh`, `pvw_forecastMonthlyKwh`, `pvw_forecastHourlyKwh`, `pvw_moduleCount`, `pvw_capacityKwp`, `pvw_squarefootage`, `pvw_forecastDate`, `pvw_repId`, `pvw_targetKwhPercent`, `pvw_projectName`) VALUES
(1, '3321', 'Cameron Park Dr', 'Cameron Park', 'CA', '95682', 'United States', '', 2, '15.00', '180.00', '0.00', '', '', '0', '0.8600', '', 30, '0', '0.00', '1500000.00', '0.00', '', '', 0, '0.00', '0.00', '0000-00-00', 0, '0.00', 'Farmer Joe'),
(2, '3322', 'Oxford Rd', 'Cameron Park', 'CA', '95682', 'United States', '', 11, '35.00', '90.00', '0.00', '38.678335', '-120.983358', '0', '0.8300', 'tmy3', 30, '-0.01', '0.00', '1200000.00', '0.00', '', '', 0, '0.00', '0.00', '0000-00-00', 0, '85.00', 'xxxx'),
(3, '3321', 'Cameron Park Dr', 'Cameron Park', 'CA', '95682', 'United States', '', 2, '20.00', '185.00', '0.00', '38.679749', '-120.9810344', '0', '0.8600', 'tmy3', 30, '', '0.00', '1200000.00', '0.00', '', '', 0, '0.00', '0.00', '0000-00-00', 0, '90.00', 'Fred\'s Warehouse'),
(4, '3332', 'Sage Dr', 'Cameron Park', 'CA', '95682', 'United States', '', 1, '15.00', '90.00', '0.00', '38.672839', '-120.982292', '1', '0.0000', 'tmy2', 30, '', '0.00', '12000.00', '0.00', '', '', 0, '0.00', '0.00', '0000-00-00', 0, '15.00', 'Wine by the Gallon'),
(5, '3332', 'Sage Dr', 'Cameron Park', 'CA', '95682', 'United States', '', 1, '15.00', '90.00', '0.00', '38.672839', '-120.982292', '1', '0.0000', 'tmy2', 30, '', '0.00', '12000.00', '0.00', '', '', 0, '0.00', '0.00', '0000-00-00', 0, '15.00', 'Farmer John\'s Ranch'),
(6, '3322', 'Oxford Rd', 'Cameron Park', 'CA', '95682', 'United States', '', 11, '35.00', '90.00', '0.00', '38.678335', '-120.983358', '0', '0.8300', 'tmy3', 30, '-2', '0.00', '1200000.00', '0.00', '', '', 0, '0.00', '0.00', '0000-00-00', 0, '85.00', 'xxxx');

-- --------------------------------------------------------

--
-- Table structure for table `pv_racking`
--

CREATE TABLE `pv_racking` (
  `pra_id` int(11) NOT NULL,
  `pra_brand` varchar(64) NOT NULL,
  `pra_logoLink` varchar(255) NOT NULL,
  `pra_model` varchar(64) NOT NULL,
  `pra_warranty` blob NOT NULL,
  `pra_warrantyOther` blob NOT NULL,
  `pra_notes` blob NOT NULL,
  `pra_sellingPoints` varchar(255) NOT NULL,
  `pra_specSheetLink` varchar(255) NOT NULL,
  `pra_active` tinyint(1) NOT NULL,
  `pra_warrantyLink` varchar(255) NOT NULL,
  `pra_photoLink` varchar(255) NOT NULL,
  `pra_price` decimal(10,2) NOT NULL,
  `pra_pricePer` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_racking`
--

INSERT INTO `pv_racking` (`pra_id`, `pra_brand`, `pra_logoLink`, `pra_model`, `pra_warranty`, `pra_warrantyOther`, `pra_notes`, `pra_sellingPoints`, `pra_specSheetLink`, `pra_active`, `pra_warrantyLink`, `pra_photoLink`, `pra_price`, `pra_pricePer`) VALUES
(1, 'Nuance Energy Group', 'http://www.nuanceenergy.com/wp-content/uploads/2013/11/240x130NEGLogo.png', 'Sunpods', 0x6e6f7420617661696c61626c65, 0x6e6f7420617661696c61626c65, 0x5468652053756e506f6473ae20506f776572506c6174666f726d20697320636f6e736964657265642062616e6b61626c652070726f64756374206279206d616e79206c656164696e6720736f6c61722066696e616e636520636f6d70616e6965732e20556e6974732072617069646c79206465706c6f7920616e6420696e7374616c6c20656173696c7920616e642065636f6e6f6d6963616c6c7920666f72207669727475616c6c7920616e792073697a652067726f756e64206d6f756e7420736f6c617220696e7374616c6c6174696f6e2e2053756e506f6473ae20506f776572506c6174666f726d20697320636f6d70657469746976656c792070726963656420616e64206769766573206f75722043657274696669656420506172746e6572732061206875676520636f6d706574697469766520616476616e746167652e205479706963616c2070726f6a65637420636f737420736176696e677320696e636c7564653a20526564756365642073797374656d2064657369676e20616e6420656e67696e656572696e6720726571756972656d656e74732c2070726f637572656d656e742c2070726f6a656374206d616e6167656d656e742c206261636b206f66666963652061646d696e697374726174696f6e20616e6420757020746f20383525206c657373206f6e7369746520636f6e737472756374696f6e2074696d6520616e6420636f7374732e, 'SunPods® PowerPlatform units are ballasted ground-based solar racking systems for on grid and off grid solar applications. Nuance Energy Group, Inc. manufactures the functional solar arrays in California regional facilities. Units are made of a heavy gaug', 'http://www.nuanceenergy.com/sunpods-powerplatform/', 1, 'not available', 'http://www.nuanceenergy.com/wp-content/uploads/2014/05/SunPods-Process-1024x226.gif', '0.70', 'Wp'),
(2, 'SnapNrack', 'http://www.snapnrack.com/sites/default/files/SnapNrack_logo_blue_ds_web_0.png', 'Series 350 Commercial Ground Mount System', '', '', '', 'SnapNrack Series 350 is a cost-optimized PV mounting system for medium to large commercial and utility ground mount installations.\r\n\r\nA completely engineered system that is simple, robust and efficient with the lowest possible total installed cost. The sy', 'http://www.snapnrack.com/series-350-commercial-ground-mount-system', 1, '', 'http://www.snapnrack.com/sites/default/files/SnapNRack-Series-350-Commercial-Ground%20Mount_a.jpg', '0.35', 'Wp'),
(3, 'Schletter', 'http://www.schletter.us/images/schletter-logo.png', 'FS System™', 0x31302079656172732c203230206f7074696f6e616c, '', '', 'The FS System is designed to be the most cost-competitive solution for large-scale solar mounting systems, with proprietary aluminum extrusions to reduce material usage and the highest level of in-house pre-assembly on the market. The result is an attract', 'http://www.schletter.us/support/FS-System-Product-Sheet.pdf', 1, '', 'http://www.schletter.us/images/fs-system.jpg', '0.25', 'Wp'),
(4, 'ProSolar', 'http://www.prosolar.com/prosolar-new/graphics/psp%20logo-smller-b.jpg', 'GroundTrac', 0x4e41, '', '', 'Benefits of GroundTrac®   Patent#6,360,491 \r\n-Contractor price starting at $0.12 / WDC   including all ProSolar Aluminum and Stainless Steel hardware\r\n-The most cost effective and easy to install ground mount system\r\n-Used for kW (residential) to MW (comm', '', 1, '', '', '0.21', 'Wp'),
(5, 'UNIRAC', 'http://www.bannistersolarandenergy.com/images/logos/unirac.png', 'SolarMount', 0x313020796561722070726f647563742c203520796561722066696e697368, '', '', 'SOLARMOUNT is compatible with many attachment options, including Unirac made standoffs for installation on comp shingle, tile roofs and various flat roof surfaces.', '', 1, '', '', '0.02', 'Wp');

-- --------------------------------------------------------

--
-- Table structure for table `pv_rateCharges`
--

CREATE TABLE `pv_rateCharges` (
  `prc_id` double NOT NULL,
  `prc_name` varchar(132) NOT NULL,
  `prc_price` decimal(12,6) NOT NULL,
  `prc_pricePer` varchar(64) NOT NULL,
  `prc_rateId` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_rateCharges`
--

INSERT INTO `pv_rateCharges` (`prc_id`, `prc_name`, `prc_price`, `prc_pricePer`, `prc_rateId`) VALUES
(1, 'Standby ', '134.000000', 'Day', 10),
(2, 'Meter charge', '5.000000', 'Day', 10),
(3, 'Customer/Meter Charge Mandatory', '4.777000', 'Day', 3),
(5, 'Customer Charge', '0.985620', 'Day', 6),
(9, 'Customer Charge', '0.985620', 'Day', 5),
(10, 'Customer/Meter Charge Poly-phase', '0.985620', 'Day', 1),
(11, 'Customer Charge', '4.599590', 'Day', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pv_rates`
--

CREATE TABLE `pv_rates` (
  `pvr_id` double NOT NULL,
  `pvr_name` varchar(64) NOT NULL,
  `pvr_utilityId` double NOT NULL,
  `pvr_type` varchar(64) NOT NULL,
  `pvr_demandChargesApply` tinyint(1) NOT NULL,
  `pvr_rules` blob NOT NULL,
  `pvr_scheduleSheetLink` varchar(255) NOT NULL,
  `pvr_janFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_febFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_marFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_aprFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_mayFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_junFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_julFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_augFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_sepFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_octFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_novFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_decFlatKwhPrice` decimal(7,5) NOT NULL,
  `pvr_janBaseline` int(11) NOT NULL,
  `pvr_febBaseline` int(11) NOT NULL,
  `pvr_marBaseline` int(11) NOT NULL,
  `pvr_aprBaseline` int(11) NOT NULL,
  `pvr_mayBaseline` int(11) NOT NULL,
  `pvr_junBaseline` int(11) NOT NULL,
  `pvr_julBaseline` int(11) NOT NULL,
  `pvr_augBaseline` int(11) NOT NULL,
  `pvr_sepBaseline` int(11) NOT NULL,
  `pvr_octBaseline` int(11) NOT NULL,
  `pvr_novBaseline` int(11) NOT NULL,
  `pvr_decBaseline` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_rates`
--

INSERT INTO `pv_rates` (`pvr_id`, `pvr_name`, `pvr_utilityId`, `pvr_type`, `pvr_demandChargesApply`, `pvr_rules`, `pvr_scheduleSheetLink`, `pvr_janFlatKwhPrice`, `pvr_febFlatKwhPrice`, `pvr_marFlatKwhPrice`, `pvr_aprFlatKwhPrice`, `pvr_mayFlatKwhPrice`, `pvr_junFlatKwhPrice`, `pvr_julFlatKwhPrice`, `pvr_augFlatKwhPrice`, `pvr_sepFlatKwhPrice`, `pvr_octFlatKwhPrice`, `pvr_novFlatKwhPrice`, `pvr_decFlatKwhPrice`, `pvr_janBaseline`, `pvr_febBaseline`, `pvr_marBaseline`, `pvr_aprBaseline`, `pvr_mayBaseline`, `pvr_junBaseline`, `pvr_julBaseline`, `pvr_augBaseline`, `pvr_sepBaseline`, `pvr_octBaseline`, `pvr_novBaseline`, `pvr_decBaseline`) VALUES
(1, 'A6', 1, 'TOU', 0, 0x437573746f6d6572732077686f2065786365656420343939206b5720666f72206174206c6561737420746872656520636f6e7365637574697665206d6f6e74687320647572696e6720746865206d6f7374200d0a726563656e742031322d6d6f6e746820706572696f6420616e64206d757374206f74686572776973652074616b652073657276696365206f6e206d616e6461746f7279205363686564756c6520452d313920, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_A-6.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'A10 Non TOU', 1, 'Flat', 1, 0x556e6465722052617465205363686564756c6520412d31302c2074686572652069732061206c696d6974206f6e207468652064656d616e642028746865206e756d626572206f66206b696c6f776174747320286b57292920746865200d0a637573746f6d6572206d617920726571756972652066726f6d2074686520504726452073797374656d2e2049662074686520637573746f6d657227732064656d616e64206578636565647320343939206b5720666f72200d0a746872656520636f6e7365637574697665206d6f6e7468732c2074686520637573746f6d65722773206163636f756e742077696c6c206265207472616e7366657272656420746f205363686564756c6520452d3139206f72200d0a452d32302e2054686973207363686564756c65206973206e6f7420617661696c61626c6520746f207265736964656e7469616c206f72206167726963756c747572616c207365727669636520666f722077686963682061207265736964656e7469616c206f72206167726963756c747572616c207363686564756c65206973206170706c696361626c652c2065786365707420666f72200d0a73696e676c652d706861736520616e6420706f6c797068617365207365727669636520696e20636f6d6d6f6e20617265617320696e2061206d756c746966616d696c7920636f6d706c65782028736565200d0a436f6d6d6f6e2d41726561204163636f756e74732073656374696f6e292e20, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_A-10.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'E19', 1, 'TOU', 1, 0x5472616e7366657273204f6666206f66205363686564756c6520452d31393a204966206120637573746f6d65729273206d6178696d756d2064656d616e6420686173206661696c656420746f2065786365656420343939206b696c6f776174747320666f7220313220636f6e7365637574697665206d6f6e7468732c20504726452077696c6c207472616e73666572207468617420637573746f6d65729273206163636f756e7420746f20766f6c756e7461727920452d31392073657276696365206f7220746f206120646966666572656e74206170706c696361626c652072617465207363686564756c652e204166746572200d0a6265696e6720706c61636564206f6e2074686973207363686564756c652064756520746f2074686520323030206b57206f7220677265617465722070726f766973696f6e73206f662074686973207363686564756c652c20637573746f6d6572732077686f206661696c20746f2065786365656420313939206b696c6f776174747320666f7220313220636f6e7365637574697665206d6f6e746873206d617920656c65637420746f2073746179206f6e207468652074696d652d6f662d7573652070726f766973696f6e73206f66207468697320, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_E-19.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'E20', 1, 'TOU', 1, 0x496e697469616c2041737369676e6d656e743a204120637573746f6d657220697320656c696769626c6520666f72207365727669636520756e646572205363686564756c6520452d323020696620746865200d0a637573746f6d65729273206d6178696d756d2064656d616e642028617320646566696e65642062656c6f77292068617320657863656564656420393939206b696c6f776174747320666f72206174206c65617374200d0a746872656520636f6e7365637574697665206d6f6e74687320647572696e6720746865206d6f737420726563656e742031322d6d6f6e746820706572696f642e2049662037302070657263656e74206f72206d6f7265200d0a6f662074686520637573746f6d6572927320656e657267792075736520697320666f72206167726963756c747572616c20656e642d757365732c2074686520637573746f6d65722077696c6c20626520736572766564200d0a756e64657220616e206167726963756c747572616c207363686564756c652e205472616e7366657273204f6666206f66205363686564756c6520452d32303a20504726452077696c6c2072657669657720697473205363686564756c6520452d3230206163636f756e747320616e6e75616c6c792e204120637573746f6d65722077696c6c20626520656c696769626c6520666f7220636f6e74696e7565642073657276696365206f6e205363686564756c6520452d323020696620697473206d6178696d756d2064656d616e6420686173206569746865723a2028312920457863656564656420393939206b696c6f776174747320666f72206174206c656173742035206f66207468652070726576696f75732031322062696c6c696e67206d6f6e7468733b206f72200d0a28322920457863656564656420393939206b696c6f776174747320666f7220616e79203320636f6e73656375746976652062696c6c696e67206d6f6e746873206f66207468652070726576696f75732031342062696c6c696e67206d6f6e7468732e204966206120637573746f6d657292732064656d616e6420686973746f7279206661696c7320626f7468206f662074686573652074657374732c20504726452077696c6c207472616e73666572207468617420637573746f6d65729273206163636f756e7420746f207365727669636520756e646572206120646966666572656e74206170706c696361626c652072617465207363686564756c65, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_E-20.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'A1 TOU', 1, 'TOU', 0, 0x54494d45204f4620555345206973206d616e6461746f727920666f722043264920637573746f6d6572732077697468206174206c656173742031322062696c6c696e67206d6f6e746873206f6620686f75726c79206461746120617661696c61626c652e2e205363686564756c6520412d3120697320636c6f73656420746f20637573746f6d65727320776974682061206d6178696d756d2064656d616e64206f66203735206b57206f72206772656174657220666f7220746872656520636f6e7365637574697665206d6f6e74687320696e20746865206d6f737420726563656e74207477656c7665206d6f6e7468732c206f722077697468200d0a7573616765206f66203135302c303030206b5768207065722079656172206f7220677265617465722c20616e642077686f2068617665206174206c65617374207477656c76652028313229206d6f6e746873206f6620686f75726c79207573616765206461746120617661696c61626c652e20, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_A-1.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'A1 NON TOU', 1, 'Flat', 0, 0x54494d45204f4620555345206973206d616e6461746f727920666f722043264920637573746f6d6572732077697468206174206c656173742031322062696c6c696e67206d6f6e746873206f6620686f75726c79206461746120617661696c61626c652e2e205363686564756c6520412d3120697320636c6f73656420746f20637573746f6d65727320776974682061206d6178696d756d2064656d616e64206f66203735206b57206f72206772656174657220666f7220746872656520636f6e7365637574697665206d6f6e74687320696e20746865206d6f737420726563656e74207477656c7665206d6f6e7468732c206f722077697468200d0a7573616765206f66203135302c303030206b5768207065722079656172206f7220677265617465722c20616e642077686f2068617665206174206c65617374207477656c76652028313229206d6f6e746873206f6620686f75726c79207573616765206461746120617661696c61626c652e20, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_A-1.pdf', '0.16341', '0.16341', '0.16341', '0.16341', '0.23403', '0.23403', '0.23403', '0.23403', '0.23403', '0.23403', '0.16341', '0.16341', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'TOU-GS-3 Option A', 3, 'TOU', 1, 0x47532d33206973206170706c696361626c6520746f206d656469756d2d73697a656420636f6d6d65726369616c20616e6420696e647573747269616c20637573746f6d657273207769746820726567697374657265642064656d616e6473206f6620323030206b57207468726f756768203530302e0d0a0d0a4f7074696f6e20412e20686173206e6f2054696d652d52656c617465642044656d616e64204368617267652c20696e200d0a65786368616e676520666f72207369676e69666963616e746c7920686967686572206f6e2d7065616b20656e65726779200d0a636861726765732e204f7074696f6e2041206d61792062656e65666974206c6f772d6c6f616420666163746f72200d0a637573746f6d6572732077686f2075736520612072656c61746976656c7920736d616c6c20616d6f756e74206f66200d0a656e657267792c2062757420726567697374657220686967682064656d616e64732e0d0a0d0a68747470733a2f2f7777772e7363652e636f6d2f7770732f77636d2f636f6e6e6563742f31353832326263302d646135652d346665612d613534322d6531616365626533376638622f4e522d3539362d56332d303231335f544f552d47532d335f466163, 'https://www.sce.com/NR/sc3/tm2/pdf/CE281.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'TOU-GS-3 Option B', 3, 'TOU', 1, 0x47532d33206973206170706c696361626c6520746f206d656469756d2d73697a656420636f6d6d65726369616c20616e64200d0a696e647573747269616c20637573746f6d657273207769746820726567697374657265642064656d616e6473206f6620323030206b57207468726f75676820353030206b572e0d0a0d0a4f7074696f6e20422e2048617320626f74682054696d652d52656c6174656420616e6420466163696c6974792052656c617465642044656d616e6420436861726765732e20496e2065786368616e676520666f7220706179696e672074686573652064656d616e6420636861726765732c20796f752077696c6c20706179206c6f77657220656e65726779206368617267657320706572206b57682e0d0a0d0a68747470733a2f2f7777772e7363652e636f6d2f7770732f77636d2f636f6e6e6563742f31353832326263302d646135652d346665612d613534322d6531616365626533376638622f4e522d3539362d56332d303231335f544f552d47532d335f466163, 'https://www.sce.com/NR/sc3/tm2/pdf/CE281.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'TOU-GS-3 Option R', 3, 'TOU', 1, 0x47532d33206973206170706c696361626c6520746f206d656469756d2d73697a656420636f6d6d65726369616c20616e64200d0a696e647573747269616c20637573746f6d657273207769746820726567697374657265642064656d616e6473206f6620323030206b57207468726f75676820353030206b572e0d0a0d0a4f7074696f6e20522e2020697320666f7220637573746f6d6572732077697468200d0a696e7374616c6c65642c20656c696769626c652072656e657761626c6520656e657267792067656e65726174696f6e200d0a73797374656d732e204f7074696f6e205220697320617661696c61626c6520746f20627573696e657373200d0a637573746f6d65727320776974682064656d616e64732067726561746572207468616e203230206b572028627574200d0a6e6f7420657863656564696e6720666f7572206d6567617761747473292077686f20696e7374616c6c2c206f776e2c200d0a6f72206f70657261746520656c696769626c65206f6e2d736974652072656e657761626c6520656e65726779200d0a67656e65726174696f6e2073797374656d732c2077697468206e65742063617061636974696573206f66203135200d0a70657263656e74206f722067726561746572207468616e20746865697220616e6e75616c207065616b2064656d616e64200d0a7265636f72646564206f766572207468652070726576696f7573203132206d6f6e7468732e204f7074696f6e2052200d0a686173206e6f206f6e2d7065616b206f72206d69642d7065616b2064656d616e6420636861726765732c2061200d0a7265647563656420466163696c69746965732d52656c617465642044656d616e64204368617267652c20616e64200d0a686967686572206f6e2d7065616b20616e64206d69642d7065616b20656e657267792063686172676573207468616e200d0a4f7074696f6e732041206f7220422e2054686572652069732061204361706163697479204c696d697420666f72200d0a4f7074696f6e20522077686963682c206f6e636520726561636865642c2077696c6c20636c6f7365207468652072617465200d0a746f206e657720637573746f6d657220656e726f6c6c6d656e740d0a0d0a68747470733a2f2f7777772e7363652e636f6d2f7770732f77636d2f636f6e6e6563742f31353832326263302d646135652d346665612d613534322d6531616365626533376638622f4e522d3539362d56332d303231335f544f552d47532d335f4661630d0a, 'https://www.sce.com/NR/sc3/tm2/pdf/CE281.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'E1-S-H All Electric', 1, 'Tiered', 0, 0x5265736964656e7469616c20746965726564207261746520666f7220616c6c20656c65637472696320686f6d65732e2054686973207363686564756c65206973206170706c696361626c6520746f2073696e676c652d706861736520616e6420706f6c797068617365207265736964656e7469616c207365727669636520696e2073696e676c652d66616d696c79206477656c6c696e677320616e6420696e20666c61747320616e642061706172746d656e74732073657061726174656c79206d65746572656420627920504726453b20746f2073696e676c652d706861736520616e6420706f6c797068617365207365727669636520696e20636f6d6d6f6e20617265617320696e2061206d756c746966616d696c7920636f6d706c65782028736565205370656369616c20436f6e646974696f6e2038293b20616e6420746f20616c6c2073696e676c652d706861736520616e6420706f6c797068617365206661726d2073657276696365206f6e20746865207072656d69736573206f706572617465642062792074686520706572736f6e2077686f7365207265736964656e636520697320737570706c696564207468726f756768207468652073616d65206d65746572, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_E-1.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 250, 250, 250, 250, 100, 100, 100, 100, 100, 100, 250, 250),
(11, 'E1-S-C', 1, 'Tiered', 0, 0x5265736964656e7469616c20746965726564207261746520666f72204e4f5420616c6c20656c65637472696320686f6d65732e2054686973207363686564756c65206973206170706c696361626c6520746f2073696e676c652d706861736520616e6420706f6c797068617365207265736964656e7469616c207365727669636520696e2073696e676c652d66616d696c79206477656c6c696e677320616e6420696e20666c61747320616e642061706172746d656e74732073657061726174656c79206d65746572656420627920504726453b20746f2073696e676c652d706861736520616e6420706f6c797068617365207365727669636520696e20636f6d6d6f6e20617265617320696e2061206d756c746966616d696c7920636f6d706c65782028736565205370656369616c20436f6e646974696f6e2038293b20616e6420746f20616c6c2073696e676c652d706861736520616e6420706f6c797068617365206661726d2073657276696365206f6e20746865207072656d69736573206f706572617465642062792074686520706572736f6e2077686f7365207265736964656e636520697320737570706c696564207468726f756768207468652073616d65206d65746572, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_E-1.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 150, 150, 150, 150, 100, 100, 100, 100, 100, 100, 150, 150),
(12, 'A10 TOU', 1, 'TOU', 1, 0x5363686564756c6520412d313020697320612064656d616e64206d6574657265642072617465207363686564756c6520666f722067656e6572616c207365727669636520637573746f6d6572732e205363686564756c65200d0a412d3130206170706c69657320746f2073696e676c652d706861736520616e6420706f6c79706861736520616c7465726e6174696e672d63757272656e7420736572766963652e20556e6465722052617465205363686564756c6520412d31302c2074686572652069732061206c696d6974206f6e207468652064656d616e642028746865206e756d626572206f66206b696c6f776174747320286b5729292074686520637573746f6d6572206d617920726571756972652066726f6d2074686520504726452073797374656d2e2049662074686520637573746f6d657227732064656d616e64206578636565647320343939206b5720666f7220746872656520636f6e7365637574697665206d6f6e7468732c2074686520637573746f6d65722773206163636f756e742077696c6c206265207472616e7366657272656420746f205363686564756c6520452d3139206f7220452d32302e20556e6465722052617465205363686564756c6520412d31302c20612062756e646c6564207365727669636520637573746f6d657220776974682061206d6178696d756d2064656d616e64206f6620323030206b57206f72206772656174657220666f7220746872656520636f6e7365637574697665206d6f6e746873206d757374206861766520616e20696e74657276616c2064617461206d6574657220746861742063616e20626520726561642072656d6f74656c79206279205047264520616e6420706179207468652074696d652d6f662d7573652028544f55292063686172676573, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_A-10.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'AG-4B', 1, 'TOU', 1, 0x4f6e6c79206167726963756c747572616c20656e642d7573657320706572666f726d6564207072696f7220746f207468652046697273742053616c65206f6620746865206167726963756c747572616c2070726f647563740d0a617265206167726963756c747572616c20656e642d7573657320756e64657220746869732063726974657269612c2065786365707420666f722074686520666f6c6c6f77696e6720616374697669746965732c2077686963680d0a61726520616c736f206167726963756c747572616c20656e642d7573657320756e64657220746869732063726974657269613a20286129207061636b696e6720616e64207061636b6167696e67206f66207468650d0a6167726963756c747572616c2070726f647563747320666f6c6c6f77696e67207468652046697273742053616c6520616e64206265666f726520616e792073756273657175656e742073616c652c20616e640d0a286229206167726963756c747572616c20656e642d75736573206279206e6f6e70726f66697420636f6f7065726174697665732e204170706c69657320746f2073696e676c652d6d6f746f7220696e7374616c6c6174696f6e7320726174656420333520686f727365706f776572206f72206d6f72652c20746f206d756c74692d6c6f616420696e7374616c6c6174696f6e73206167677265676174696e6720313520686f727365706f776572206f72206b696c6f7761747473206f72206d6f72652c20616e6420746f206f7665726c6f61646564206d6f746f72732e2054686520637573746f6d6572277320656e642d7573652069732064657465726d696e656420746f206265206f7665726c6f61646564207768656e20746865206d6561737572656420696e70757420746f20616e79206d6f746f7220726174656420313520686f727365706f776572206f72206d6f72652069732064657465726d696e6564206279205047264520746f20657863656564206f6e65206b696c6f776174742070657220686f727365706f776572206f66206e616d65706c617465207261746564206f75747075740d0a, 'http://www.pge.com/tariffs/tm2/pdf/ELEC_SCHEDS_AG-4.pdf', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pv_rateTiers`
--

CREATE TABLE `pv_rateTiers` (
  `pvt_id` double NOT NULL,
  `pvt_rateId` double NOT NULL,
  `pvt_tierName` varchar(64) NOT NULL,
  `pvt_percentOfBaseline` decimal(6,4) NOT NULL,
  `pvt_pricePerKwh` decimal(7,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_rateTiers`
--

INSERT INTO `pv_rateTiers` (`pvt_id`, `pvt_rateId`, `pvt_tierName`, `pvt_percentOfBaseline`, `pvt_pricePerKwh`) VALUES
(1, 10, 'Tier 1 (baseline)', '1.0000', '0.12350'),
(2, 10, 'Tier 2', '1.3000', '0.17890'),
(3, 10, 'Tier 3', '1.4000', '0.25350'),
(4, 10, 'Tier 4', '1.8000', '0.35547'),
(5, 10, 'Tier 5', '2.0000', '0.35568');

-- --------------------------------------------------------

--
-- Table structure for table `pv_rateTimeOfUse`
--

CREATE TABLE `pv_rateTimeOfUse` (
  `ptb_id` double NOT NULL,
  `ptb_rateId` double NOT NULL,
  `ptb_name` varchar(132) NOT NULL,
  `ptb_lastUpdate` datetime NOT NULL,
  `ptb_lastUpdateBy` double NOT NULL,
  `ptv_notes` blob NOT NULL,
  `ptb_numberOfWeekDays` int(11) NOT NULL,
  `ptb_months` varchar(64) NOT NULL,
  `ptb_hours` varchar(64) NOT NULL,
  `ptb_pricePerKwh` decimal(7,5) NOT NULL,
  `ptb_pricePerKw` decimal(7,5) NOT NULL,
  `ptb_appliesDemand` tinyint(1) NOT NULL,
  `ptb_appliesEnergy` tinyint(1) NOT NULL,
  `ptb_appliesAllDayWeekendHolidays` tinyint(1) NOT NULL,
  `ptb_type` varchar(64) NOT NULL,
  `ptb_season` varchar(132) NOT NULL,
  `ptb_sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_rateTimeOfUse`
--

INSERT INTO `pv_rateTimeOfUse` (`ptb_id`, `ptb_rateId`, `ptb_name`, `ptb_lastUpdate`, `ptb_lastUpdateBy`, `ptv_notes`, `ptb_numberOfWeekDays`, `ptb_months`, `ptb_hours`, `ptb_pricePerKwh`, `ptb_pricePerKw`, `ptb_appliesDemand`, `ptb_appliesEnergy`, `ptb_appliesAllDayWeekendHolidays`, `ptb_type`, `ptb_season`, `ptb_sequence`) VALUES
(1, 1, 'Summer Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,,,,,1,1,1,1,1,1,,,,,,,', '0.58648', '0.00001', 1, 1, 0, 'On-Peak', 'Summer', 20),
(2, 1, 'Summer Part Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,1,1,1,1,,,,,,,1,1,1,,,,', '0.27230', '0.00001', 1, 1, 0, 'Part-Peak', 'Summer', 30),
(3, 1, 'Summer Off Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.15207', '0.00001', 1, 1, 1, 'Off-Peak', 'Summer', 50),
(4, 1, 'Winter Part Peak', '0000-00-00 00:00:00', 0, '', 5, '1,1,1,1,,,,,,,1,1', ',,,,,,,,1,1,1,1,1,1,1,1,1,1,1,1,1,,,,', '0.17408', '0.00001', 1, 1, 0, 'Part-Peak', 'Winter', 30),
(5, 1, 'Winter Off Peak', '0000-00-00 00:00:00', 0, '', 5, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.14207', '0.00001', 1, 1, 1, 'Off-Peak', 'Winter', 50),
(6, 3, 'Summer Off Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.07818', '0.00000', 0, 1, 1, 'Off-Peak', 'Summer', 50),
(7, 3, 'Summer Part Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,1,1,1,1,,,,,,,1,1,1,,,,', '0.11156', '4.07000', 1, 1, 0, 'Part-Peak', 'Summer', 30),
(8, 3, 'Summer Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,,,,,1,1,1,1,1,1,,,,,,,', '0.16253', '17.65000', 1, 1, 0, 'On-Peak', 'Winter', 20),
(9, 3, 'Winter Off Peak', '0000-00-00 00:00:00', 0, '', 5, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.08200', '0.00000', 0, 1, 1, 'Off-Peak', 'Winter', 50),
(10, 3, 'Winter Part Peak', '0000-00-00 00:00:00', 0, '', 5, '1,1,1,1,,,,,,,1,1', ',,,,,,,,1,1,1,1,1,1,1,1,1,1,1,1,1,,,,', '0.10479', '0.21000', 1, 1, 0, 'Part-Peak', 'Winter', 30),
(11, 3, 'Maximum Demand Winter', '0000-00-00 00:00:00', 0, '', 7, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0.00000', '12.56000', 1, 0, 1, 'Max', 'Winter', 10),
(12, 3, 'Maximum Demand Summer', '0000-00-00 00:00:00', 0, '', 7, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0.00000', '12.56000', 1, 0, 1, 'Max', 'Summer', 10),
(13, 12, 'Summer Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,,,,,1,1,1,1,1,1,,,,,,,', '0.19789', '0.00000', 0, 1, 0, 'On-Peak', 'Summer', 20),
(14, 12, 'Summer Part Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,1,1,1,1,,,,,,,1,1,1,,,,', '0.17198', '0.00000', 0, 1, 0, 'Part-Peak', 'Summer', 30),
(15, 12, 'Winter Off Peak', '0000-00-00 00:00:00', 0, '', 5, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.11017', '0.00000', 0, 1, 1, 'Off-Peak', 'Winter', 50),
(16, 12, 'Winter Part Peak', '0000-00-00 00:00:00', 0, '', 5, '1,1,1,1,,,,,,,1,1', ',,,,,,,,1,1,1,1,1,1,1,1,1,1,1,1,1,,,,', '0.13080', '0.00000', 0, 1, 0, 'Part-Peak', 'Winter', 30),
(17, 12, 'Summer Off Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.14792', '0.00000', 0, 1, 1, 'Off-Peak', 'Summer', 50),
(18, 12, 'Summer Demand', '2014-12-05 11:00:08', 1, '', 5, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0.00000', '14.28000', 1, 0, 1, 'Off-Peak', 'Summer', 50),
(19, 12, 'Winter Demand', '2014-12-05 11:01:00', 1, '', 5, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0.00000', '6.47000', 1, 0, 1, 'Off-Peak', 'Winter', 50),
(20, 5, 'Summer Peak', '2014-12-08 16:14:08', 1, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,,,,,1,1,1,1,1,1,,,,,,,', '0.25470', '0.00000', 0, 1, 0, 'On-Peak', 'Summer', 20),
(21, 5, 'Summer Part Peak', '0000-00-00 00:00:00', 0, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,1,1,1,1,,,,,,,1,1,1,,,,', '0.24562', '0.00000', 0, 1, 0, 'Part-Peak', 'Summer', 30),
(22, 5, 'Summer Off Peak', '2014-12-08 16:16:19', 1, '', 7, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.21801', '0.00000', 0, 1, 1, 'Off-Peak', 'Summer', 50),
(23, 5, 'Winter Part Peak', '0000-00-00 00:00:00', 0, '', 5, '1,1,1,1,,,,,,,1,1', ',,,,,,,,1,1,1,1,1,1,1,1,1,1,1,1,1,,,,', '0.17359', '0.00000', 0, 1, 0, 'Part-Peak', 'Winter', 30),
(24, 5, 'Winter Off Peak', '2014-12-08 16:20:41', 1, '', 7, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,1,1,1,1', '0.15381', '0.00000', 0, 1, 1, 'Off-Peak', 'Winter', 50),
(25, 13, 'On Peak', '2015-02-18 08:50:47', 1, '', 5, ',,,,1,1,1,1,1,1,,', ',,,,,,,,,,,,1,1,1,1,1,1,,,,,,,', '0.26055', '4.84000', 1, 1, 0, 'On-Peak', 'Summer', 20),
(26, 13, 'Part Peak', '2015-02-18 08:55:26', 1, '', 5, '1,1,1,1,,,,,,,1,1', ',,,,,,,,1,1,1,1,1,1,1,1,1,1,1,1,1,1,,,', '0.13894', '0.00001', 1, 1, 0, 'Part-Peak', 'Winter', 30),
(27, 13, 'Off-Peak Winter', '0000-00-00 00:00:00', 0, '', 7, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,,,,,,,,,,,,,,,1,1,1', '0.11630', '0.00001', 0, 1, 1, 'Off-Peak', 'Winter', 50),
(28, 13, 'Off-Peak Summer', '0000-00-00 00:00:00', 0, '', 7, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,1,1,1,1,,,,,,,1,1,1,1,1,1,1', '0.13900', '0.00001', 0, 1, 1, 'Off-Peak', 'Summer', 50),
(29, 13, 'Max Peak Winter', '0000-00-00 00:00:00', 0, '', 0, '1,1,1,1,,,,,,,1,1', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0.00000', '1.93000', 1, 0, 1, 'Max', 'Winter', 10),
(30, 13, 'Max Peak Summer', '2015-02-18 09:10:07', 1, '', 0, ',,,,1,1,1,1,1,1,,', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0.00000', '8.74000', 1, 0, 1, 'Max', 'Summer', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pv_stringSizes`
--

CREATE TABLE `pv_stringSizes` (
  `pvs_id` int(11) NOT NULL,
  `pvs_moduleId` double NOT NULL,
  `pvs_inverterId` double NOT NULL,
  `pvs_stringSizes` varchar(64) NOT NULL,
  `pvs_region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_stringSizes`
--

INSERT INTO `pv_stringSizes` (`pvs_id`, `pvs_moduleId`, `pvs_inverterId`, `pvs_stringSizes`, `pvs_region`) VALUES
(1, 12, 2, '12,13', 'Calilfornia Sierra foothills Min temp 25F'),
(2, 12, 2, '13,14', 'California Central Valley Min temp 30F');

-- --------------------------------------------------------

--
-- Table structure for table `pv_utilities`
--

CREATE TABLE `pv_utilities` (
  `pvu_id` double NOT NULL,
  `pvu_name` varchar(132) NOT NULL,
  `pvu_phones` varchar(132) NOT NULL,
  `pvu_active` tinyint(1) NOT NULL,
  `pvu_logoLink` varchar(255) NOT NULL,
  `pvu_serviceMapImageLink` varchar(255) NOT NULL,
  `pvu_website` varchar(255) NOT NULL,
  `pvu_holidaysPerMonth` varchar(64) NOT NULL,
  `pvu_interconnectionNotes` blob NOT NULL,
  `pvu_incentivesNotes` blob NOT NULL,
  `pvu_mainContact` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pv_utilities`
--

INSERT INTO `pv_utilities` (`pvu_id`, `pvu_name`, `pvu_phones`, `pvu_active`, `pvu_logoLink`, `pvu_serviceMapImageLink`, `pvu_website`, `pvu_holidaysPerMonth`, `pvu_interconnectionNotes`, `pvu_incentivesNotes`, `pvu_mainContact`) VALUES
(1, 'PG&E', '1-800-CALL-PGAE', 1, 'http://assets.bizjournals.com/sacramento/news/pge_logo_315*304.jpg?v=1', 'http://www.pge.com/nots/rates/PGECZ_90Rev.pdf', 'http://www.pge.com/', '1,1,0,0,1,0,1,0,1,0,2,1', 0x5374616e64617264204e454d0d0a952041677265656d656e7420466f726d2037392d31313031202853657074656d62657220323031322076657273696f6e290d0a457870616e646564204e454d0d0a95203320466f726d733a204170706c69636174696f6e2037392d3937342c20537570706c656d656e74616c204170706c69636174696f6e2037392d39393820616e64200d0a496e746572636f6e6e656374696f6e2041677265656d656e7420466f726d2037392d3937380d0a526571756972656420646f63756d656e746174696f6e3a0d0a952053696e676c65204c696e65204469616772616d0d0a95205369676e6564206f6666204275696c64696e67205065726d69740d0a9520436f7079206f6620726563656e7420656c6563747269632062696c6c20666f722070726f6a65637420736974650d0a9520466f7220457870616e646564204e454d206f6e6c793a2096204465636c61726174696f6e732050616765206f6620486f6d65204f776e657220496e737572616e63650d0a9620546869726420506172747920417574686f72697a6174696f6e20466f726d, 0x4e6f20696e63656e7469766573206c65667420666f7220736f6c6172, 0x4a6f652050472645203931362d3931362d3939393920666f7220696e746572636f6e6e656374696f6e2c20666f7220636f6d6d65726369616c20637573746f6d657220736572766963652063616c6c203830302d3838382d38383838),
(2, 'Redding Electric Utility', '530.339.7300 (tel) 530.339.7389 (fax)', 1, 'http://www.enalasys.com/newimages/partners/reu_BannerTop.png', 'http://www.reupower.com/pdf/service-planning-map-2013-11.pdf', 'http://www.reupower.com/index.asp', '0,0,0,0,0,0,0,0,0,0,0,0,0', 0x4e6f20696e666f20617661696c61626c65, 0x5245552070726f766964657320736f6c6172207265626174657320616e642068617320696e76657374656420696e20736f6c61722064656d6f6e7374726174696f6e2070726f6a65637473206f6e206e6577206275696c64696e6773207468726f7567686f7574207468652052656464696e6720636f6d6d756e6974792e205965742c20676976656e20746865206869676820636f7374206f6620736f6c61722070616e656c732c2074686520696e7374616c6c65642073797374656d73206f6e6c7920726570726573656e74206c657373207468616e203125206f66205245552773207265736f75726365732e, 0x502e4f2e20426f78203439363037310d0a3737372043797072657373204176656e75650d0a52656464696e672043412039363034392d363037310d0a3533302e3333392e37333030202874656c290d0a3533302e3333392e37333839202866617829),
(3, 'SCE ', '', 1, 'https://www.sce.com/wps/scethemes/static/themes/SCETheme/images/logo.png', '', 'http://www.sce.com', '0,0,0,0,0,0,0,0,0,0,0,0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `q_id` double NOT NULL,
  `q_title` varchar(132) NOT NULL,
  `q_sql` blob NOT NULL,
  `q_description` blob NOT NULL,
  `q_lastUpdate` datetime NOT NULL,
  `q_lastUpdateBy` double NOT NULL,
  `q_filter1Column` varchar(132) NOT NULL,
  `q_filter2Colum` varchar(132) NOT NULL,
  `q_filter3Column` varchar(132) NOT NULL,
  `q_dateRangeFilterColumn` varchar(132) NOT NULL,
  `q_dateRangeFilterType` varchar(64) NOT NULL,
  `q_filter1DropDownSql` varchar(255) NOT NULL,
  `q_filter2DropDownSql` varchar(255) NOT NULL,
  `q_filter3DropDownSql` varchar(255) NOT NULL,
  `q_filter1Description` varchar(132) NOT NULL,
  `q_filter2Description` varchar(132) NOT NULL,
  `q_filter3Description` varchar(132) NOT NULL,
  `q_dateRangeFilterDescription` varchar(132) NOT NULL,
  `q_idColumn` int(132) NOT NULL,
  `q_editDataPage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`q_id`, `q_title`, `q_sql`, `q_description`, `q_lastUpdate`, `q_lastUpdateBy`, `q_filter1Column`, `q_filter2Colum`, `q_filter3Column`, `q_dateRangeFilterColumn`, `q_dateRangeFilterType`, `q_filter1DropDownSql`, `q_filter2DropDownSql`, `q_filter3DropDownSql`, `q_filter1Description`, `q_filter2Description`, `q_filter3Description`, `q_dateRangeFilterDescription`, `q_idColumn`, `q_editDataPage`) VALUES
(1, 'Sold Opportunities Year to Date', 0x73656c65637420636f705f6e616d65206173204e616d652c20636f705f706970656c696e65537461676520617320506970656c696e652c20636f705f736f6c64446174652061732027536f6c642044617465272c20636f705f657374696d61746564526576656e756520617320526576656e7565202046524f4d2063726d5f6f70706f7274756e697469657320, 0x4c697374206f6620616c6c20736f6c6172206f70706f7274756e6974696573, '2015-02-11 08:39:32', 1, 'cop_owner', '', '', 'cop_soldDate', '', 'userdropdown', '', '', 'Sale Rep', '', '', 'Sold Date', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tasksTemplate`
--

CREATE TABLE `tasksTemplate` (
  `t_id` double NOT NULL,
  `t_tm_id` double NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_type` double NOT NULL,
  `t_estDuration` int(11) NOT NULL,
  `t_predecesor` double NOT NULL,
  `t_resourceId` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasksTemplate`
--

INSERT INTO `tasksTemplate` (`t_id`, `t_tm_id`, `t_name`, `t_type`, `t_estDuration`, `t_predecesor`, `t_resourceId`) VALUES
(3, 1, 'Prepare Plans', 1, 5, 0, 11),
(4, 1, 'Leasing package', 2, 5, 3, 12),
(5, 1, 'Utility application', 3, 5, 3, 11),
(6, 1, 'HOA approvals', 4, 10, 3, 8),
(7, 1, 'Building permit', 5, 10, 6, 8),
(8, 1, 'Installation', 6, 5, 7, 8),
(9, 1, 'AHJ Inspection', 7, 5, 8, 8),
(10, 1, 'Interconnection', 8, 20, 9, 8),
(11, 2, 'Agreement Signing', 0, 5, 0, 0),
(12, 2, 'Permission to Operate', 0, 10, 17, 0),
(14, 2, 'Permitting', 0, 20, 11, 0),
(15, 2, 'Installation', 0, 20, 14, 0),
(16, 2, 'Inspection & Testing', 0, 20, 15, 0),
(17, 2, 'Interconnection', 8, 10, 16, 11),
(18, 3, 'Drawing set', 1, 5, 0, 8),
(19, 3, 'Utility App', 3, 5, 18, 8),
(20, 3, 'HOA approvals', 4, 10, 18, 8),
(21, 3, 'Building permit', 5, 10, 20, 8),
(22, 3, 'Installation', 6, 5, 21, 8),
(23, 3, 'AHJ Inspection', 7, 5, 22, 8),
(24, 3, 'Interconnection', 8, 20, 23, 8),
(25, 4, 'Drawing Set', 1, 5, 0, 16),
(26, 4, 'Leasing Package', 2, 5, 25, 0),
(27, 4, 'Utility App ', 3, 2, 25, 16),
(28, 4, 'Building Permit', 5, 14, 25, 0),
(29, 4, 'Installation', 6, 14, 28, 8),
(30, 4, 'Inspection', 7, 3, 29, 8),
(31, 4, 'Permission to Operate', 8, 15, 30, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  ADD PRIMARY KEY (`cac_id`);

--
-- Indexes for table `crm_contacts`
--
ALTER TABLE `crm_contacts`
  ADD PRIMARY KEY (`cco_id`);

--
-- Indexes for table `crm_followers`
--
ALTER TABLE `crm_followers`
  ADD PRIMARY KEY (`cfo_id`);

--
-- Indexes for table `crm_opportunities`
--
ALTER TABLE `crm_opportunities`
  ADD PRIMARY KEY (`cop_id`);

--
-- Indexes for table `crm_opportunity_notes`
--
ALTER TABLE `crm_opportunity_notes`
  ADD PRIMARY KEY (`cno_id`);

--
-- Indexes for table `dashboardfunctions`
--
ALTER TABLE `dashboardfunctions`
  ADD PRIMARY KEY (`functionid`);

--
-- Indexes for table `dashboardgroups`
--
ALTER TABLE `dashboardgroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `dashboardtabs`
--
ALTER TABLE `dashboardtabs`
  ADD PRIMARY KEY (`tab_id`);

--
-- Indexes for table `dashboard_functions`
--
ALTER TABLE `dashboard_functions`
  ADD PRIMARY KEY (`dad_id`),
  ADD UNIQUE KEY `dad_page` (`dad_page`);

--
-- Indexes for table `masterTemplate`
--
ALTER TABLE `masterTemplate`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `pv_arrays`
--
ALTER TABLE `pv_arrays`
  ADD PRIMARY KEY (`pva_id`);

--
-- Indexes for table `pv_defaultValues`
--
ALTER TABLE `pv_defaultValues`
  ADD PRIMARY KEY (`dft_id`);

--
-- Indexes for table `pv_dropdowns`
--
ALTER TABLE `pv_dropdowns`
  ADD PRIMARY KEY (`pvd_id`);

--
-- Indexes for table `pv_financing`
--
ALTER TABLE `pv_financing`
  ADD PRIMARY KEY (`pvf_id`);

--
-- Indexes for table `pv_inverters`
--
ALTER TABLE `pv_inverters`
  ADD PRIMARY KEY (`pin_id`);

--
-- Indexes for table `pv_leads`
--
ALTER TABLE `pv_leads`
  ADD PRIMARY KEY (`pvl_id`);

--
-- Indexes for table `pv_meters`
--
ALTER TABLE `pv_meters`
  ADD PRIMARY KEY (`pvb_id`);

--
-- Indexes for table `pv_metersTimeOfUseConsumption`
--
ALTER TABLE `pv_metersTimeOfUseConsumption`
  ADD PRIMARY KEY (`pto_id`);

--
-- Indexes for table `pv_meterTimeOfUseProfile`
--
ALTER TABLE `pv_meterTimeOfUseProfile`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `pv_meterTimeOfUseProfileHeader`
--
ALTER TABLE `pv_meterTimeOfUseProfileHeader`
  ADD PRIMARY KEY (`prf_id`);

--
-- Indexes for table `pv_modules`
--
ALTER TABLE `pv_modules`
  ADD PRIMARY KEY (`modid`);

--
-- Indexes for table `pv_monitoring`
--
ALTER TABLE `pv_monitoring`
  ADD PRIMARY KEY (`pmo_id`);

--
-- Indexes for table `pv_products`
--
ALTER TABLE `pv_products`
  ADD PRIMARY KEY (`pvo_id`);

--
-- Indexes for table `pv_proposalAttachments`
--
ALTER TABLE `pv_proposalAttachments`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `pv_proposals`
--
ALTER TABLE `pv_proposals`
  ADD PRIMARY KEY (`pvp_id`);

--
-- Indexes for table `pv_pvsim`
--
ALTER TABLE `pv_pvsim`
  ADD PRIMARY KEY (`sim_id`);

--
-- Indexes for table `pv_pvSimInverters`
--
ALTER TABLE `pv_pvSimInverters`
  ADD PRIMARY KEY (`pin_id`);

--
-- Indexes for table `pv_pvSimModules`
--
ALTER TABLE `pv_pvSimModules`
  ADD PRIMARY KEY (`pmo_id`);

--
-- Indexes for table `pv_pvwatts`
--
ALTER TABLE `pv_pvwatts`
  ADD PRIMARY KEY (`pvw_id`);

--
-- Indexes for table `pv_racking`
--
ALTER TABLE `pv_racking`
  ADD PRIMARY KEY (`pra_id`);

--
-- Indexes for table `pv_rateCharges`
--
ALTER TABLE `pv_rateCharges`
  ADD PRIMARY KEY (`prc_id`);

--
-- Indexes for table `pv_rates`
--
ALTER TABLE `pv_rates`
  ADD PRIMARY KEY (`pvr_id`);

--
-- Indexes for table `pv_rateTiers`
--
ALTER TABLE `pv_rateTiers`
  ADD PRIMARY KEY (`pvt_id`);

--
-- Indexes for table `pv_rateTimeOfUse`
--
ALTER TABLE `pv_rateTimeOfUse`
  ADD PRIMARY KEY (`ptb_id`);

--
-- Indexes for table `pv_stringSizes`
--
ALTER TABLE `pv_stringSizes`
  ADD PRIMARY KEY (`pvs_id`);

--
-- Indexes for table `pv_utilities`
--
ALTER TABLE `pv_utilities`
  ADD PRIMARY KEY (`pvu_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `tasksTemplate`
--
ALTER TABLE `tasksTemplate`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `c_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  MODIFY `cac_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `crm_contacts`
--
ALTER TABLE `crm_contacts`
  MODIFY `cco_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `crm_followers`
--
ALTER TABLE `crm_followers`
  MODIFY `cfo_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `crm_opportunities`
--
ALTER TABLE `crm_opportunities`
  MODIFY `cop_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `crm_opportunity_notes`
--
ALTER TABLE `crm_opportunity_notes`
  MODIFY `cno_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `dashboardfunctions`
--
ALTER TABLE `dashboardfunctions`
  MODIFY `functionid` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `dashboardgroups`
--
ALTER TABLE `dashboardgroups`
  MODIFY `groupid` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dashboardtabs`
--
ALTER TABLE `dashboardtabs`
  MODIFY `tab_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dashboard_functions`
--
ALTER TABLE `dashboard_functions`
  MODIFY `dad_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `masterTemplate`
--
ALTER TABLE `masterTemplate`
  MODIFY `tm_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pv_arrays`
--
ALTER TABLE `pv_arrays`
  MODIFY `pva_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pv_defaultValues`
--
ALTER TABLE `pv_defaultValues`
  MODIFY `dft_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pv_dropdowns`
--
ALTER TABLE `pv_dropdowns`
  MODIFY `pvd_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `pv_financing`
--
ALTER TABLE `pv_financing`
  MODIFY `pvf_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pv_inverters`
--
ALTER TABLE `pv_inverters`
  MODIFY `pin_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pv_leads`
--
ALTER TABLE `pv_leads`
  MODIFY `pvl_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pv_meters`
--
ALTER TABLE `pv_meters`
  MODIFY `pvb_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pv_metersTimeOfUseConsumption`
--
ALTER TABLE `pv_metersTimeOfUseConsumption`
  MODIFY `pto_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `pv_meterTimeOfUseProfile`
--
ALTER TABLE `pv_meterTimeOfUseProfile`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pv_meterTimeOfUseProfileHeader`
--
ALTER TABLE `pv_meterTimeOfUseProfileHeader`
  MODIFY `prf_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pv_modules`
--
ALTER TABLE `pv_modules`
  MODIFY `modid` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pv_monitoring`
--
ALTER TABLE `pv_monitoring`
  MODIFY `pmo_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pv_products`
--
ALTER TABLE `pv_products`
  MODIFY `pvo_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `pv_proposalAttachments`
--
ALTER TABLE `pv_proposalAttachments`
  MODIFY `pat_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pv_proposals`
--
ALTER TABLE `pv_proposals`
  MODIFY `pvp_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pv_pvsim`
--
ALTER TABLE `pv_pvsim`
  MODIFY `sim_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pv_pvSimInverters`
--
ALTER TABLE `pv_pvSimInverters`
  MODIFY `pin_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=747;
--
-- AUTO_INCREMENT for table `pv_pvSimModules`
--
ALTER TABLE `pv_pvSimModules`
  MODIFY `pmo_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;
--
-- AUTO_INCREMENT for table `pv_pvwatts`
--
ALTER TABLE `pv_pvwatts`
  MODIFY `pvw_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pv_racking`
--
ALTER TABLE `pv_racking`
  MODIFY `pra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pv_rateCharges`
--
ALTER TABLE `pv_rateCharges`
  MODIFY `prc_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pv_rates`
--
ALTER TABLE `pv_rates`
  MODIFY `pvr_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pv_rateTiers`
--
ALTER TABLE `pv_rateTiers`
  MODIFY `pvt_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pv_rateTimeOfUse`
--
ALTER TABLE `pv_rateTimeOfUse`
  MODIFY `ptb_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `pv_stringSizes`
--
ALTER TABLE `pv_stringSizes`
  MODIFY `pvs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pv_utilities`
--
ALTER TABLE `pv_utilities`
  MODIFY `pvu_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `q_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tasksTemplate`
--
ALTER TABLE `tasksTemplate`
  MODIFY `t_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
