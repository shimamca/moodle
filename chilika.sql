-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2018 at 07:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chilika`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `login_id` int(11) NOT NULL,
  `login_uid` varchar(100) NOT NULL,
  `login_date_time` varchar(100) NOT NULL,
  `login_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `site_controller`
--

CREATE TABLE `site_controller` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_phone` varchar(100) NOT NULL,
  `admin_type` int(1) NOT NULL DEFAULT '0',
  `admin_status` char(1) NOT NULL DEFAULT '0',
  `admin_regdate` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_controller`
--

INSERT INTO `site_controller` (`admin_id`, `admin_user`, `admin_pass`, `admin_name`, `admin_email`, `admin_phone`, `admin_type`, `admin_status`, `admin_regdate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'chilika', 'shimamca@gmail.com', '999999999', 1, '1', '2018-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(250) DEFAULT NULL,
  `photo_file` varchar(250) DEFAULT NULL,
  `photo_date` varchar(200) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`photo_id`, `photo_caption`, `photo_file`, `photo_date`, `sort_order`, `status`) VALUES
(6, 'The Sanctuary of Birds', 'banner_1383923338.jpg', '08-11-2013', 5, 1),
(7, 'The Sanctuary of Birds', 'banner_1383923300.jpg', '08-11-2013', 3, 1),
(8, 'The Sanctuary of Birds', 'banner_1383923283.jpg', '26-12-2013', 2, 1),
(9, 'The story of Nature', 'banner_1383923256.jpg', '08-11-2013', 1, 1),
(10, 'Chilika Lagoon', 'banner_1383923240.jpg', '08-11-2013', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_category`
--

CREATE TABLE `tbl_home_category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_home_category`
--

INSERT INTO `tbl_home_category` (`category_id`, `category_name`, `category_status`, `sort_order`) VALUES
(1, 'The story of Nature', 1, 1),
(2, 'The Sanctuary of Birds', 1, 2),
(5, 'The Untold Story', 1, 3),
(6, 'The Tourist Destination', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_gallery`
--

CREATE TABLE `tbl_home_gallery` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) NOT NULL,
  `photo_file` varchar(255) NOT NULL,
  `photo_date` varchar(255) NOT NULL,
  `photo_category` varchar(250) NOT NULL,
  `photo_status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `catagory_pic` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_home_gallery`
--

INSERT INTO `tbl_home_gallery` (`photo_id`, `photo_caption`, `photo_file`, `photo_date`, `photo_category`, `photo_status`, `sort_order`, `catagory_pic`) VALUES
(1, 'The Sanctuary of Birds', 'home_211113044906.jpg', '28-Nov-2013', '2', 1, 1, 0),
(3, 'The story of Nature', 'home_211113044807.jpg', '17-Jan-2014', '1', 1, 1, 0),
(4, 'The story of Nature', 'home_211113044746.jpg', '17-Jan-2014', '1', 1, 2, 0),
(5, 'The story of Nature', 'home_211113044714.jpg', '17-Jan-2014', '1', 1, 3, 1),
(6, 'The Sanctuary of Birds', 'home_211113044921.jpg', '28-Nov-2013', '2', 1, 2, 1),
(13, 'The Tourist Destination', 'home_2111130454270.jpg', '28-Nov-2013', '6', 1, 3, 1),
(8, 'The Untold Story', 'home_211113045034.jpg', '28-Nov-2013', '5', 1, 1, 1),
(9, 'The Untold Story', 'home_211113045051.jpg', '28-Nov-2013', '5', 1, 2, 0),
(10, 'The Tourist Destination', 'home_211113045144.jpg', '28-Nov-2013', '6', 1, 1, 0),
(11, 'The Tourist Destination', 'home_211113045226.jpg', '28-Nov-2013', '6', 1, 2, 0),
(15, 'The Untold Story', 'home_2811130514200.jpg', '28-Nov-2013', '5', 1, 3, 0),
(14, 'The Tourist Destination', 'home_2111130454271.jpg', '28-Nov-2013', '6', 1, 4, 0),
(22, 'The story of Nature', 'home_2811130557080.jpg', '17-Jan-2014', '1', 1, 4, 0),
(16, 'The Sanctuary of Birds', 'home_2811130522000.jpg', '28-Nov-2013', '2', 1, 3, 0),
(17, 'The Sanctuary of Birds', 'home_2811130522001.jpg', '28-Nov-2013', '2', 1, 4, 0),
(18, 'The Sanctuary of Birds', 'home_2811130522002.jpg', '28-Nov-2013', '2', 1, 5, 0),
(19, 'The Untold Story', 'home_2811130525020.jpg', '28-Nov-2013', '5', 1, 4, 0),
(20, 'The Untold Story', 'home_2811130525021.jpg', '28-Nov-2013', '5', 1, 5, 0),
(21, 'The Tourist Destination', 'home_2811130532510.jpg', '28-Nov-2013', '6', 1, 5, 0),
(23, 'The story of Nature', 'home_2811130557081.jpg', '17-Jan-2014', '1', 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `c_id`, `photo`) VALUES
(1, 1, 'image_1384914326.jpg'),
(2, 2, 'image_1384914401.jpg'),
(3, 3, 'image_1384914630.jpg'),
(4, 4, 'image_1384914936.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `title` text,
  `category` varchar(20) DEFAULT NULL,
  `publish_date` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `description` text,
  `status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `title`, `category`, `publish_date`, `file_name`, `description`, `status`, `sort_order`) VALUES
(26, 'Ramsar Wetland Conservation Award -2002', NULL, '06-11-2013', '', '<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div><img src=\\\"images/wpe1E.gif\\\" width=\\\"242\\\" height=\\\"178\\\" align=\\\"right\\\" alt=\\\"\\\" />The Chilika Development Authority <br />\r\n            Att. Mr Ajit Pattnaik <br />\r\n            C-5, BJB Nagar <br />\r\n            Bhubaneswar <br />\r\n            Odisha <br />\r\n            INDIA 751014<br />\r\n            Gland, 10 June 2002<br />\r\n            &nbsp;</div>\r\n            <div>Dear Mr Pattnaik,</div>\r\n            <div>It is my great pleasure to inform you that the Jury to the Ramsar Wetland Conservation Award has decided to present one of the three Awards for 2002 to the Chilika Development Authority in view of its outstanding achievements in the field of restoration and wise use of wetlands, as well as the impressive way in which local communities have been included in these activities. To give you more detailed information about the Award, a copy of the call for nominations with the rules for the Award as established by the Convention is being sent by post. Information about the Ramsar Convention will be attached. More details can also be found on our web site at www.ramsar.org<br />\r\n            <br />\r\n            <strong>For your information, the other Award winners are:</strong><br />\r\n            <img src=\\\"images/bullet.png\\\" width=\\\"7\\\" height=\\\"7\\\" alt=\\\"\\\" /> A consortium of NGOs working in the Morava-Dyje Floodplain transboundary region in Europe (Austria, Czech Republic and Slovak Republic). The four organisations are Distelverein (Austria), Daphne (Slovak Republic), Veronika (Slovak Republic), and the WWF International-Danube Carpathian Programme (based in Austria): and<br />\r\n            <img src=\\\"images/bullet.png\\\" width=\\\"7\\\" height=\\\"7\\\" alt=\\\"\\\" /> The Banrock Station Initiative of the BRL Hardy Wine Company, an Australian compan, for its outstanding achievements in the fields of restoration and wise use of wetlands on its property, public awareness and sponsorship of wetland conservation in Australia and other countries.<br />\r\n            <br />\r\n            In addition, the Jury has decided to award a &amp;ldquo:Recognition of Excellence&amp;rdquo: to two further nominees: Dr Max Finlayson, an Australian scientist, and Dr Monique Coulet, a French scientist. Both are being recognised for their outstanding contribution to wetland science and for their commitment to wetland conservation and wise use on the ground.<br />\r\n            &nbsp;</div>\r\n            <div>I would be grateful if you would let me know at your earliest convenience whether the Chilika Development Authority accepts the Award, which includes the Evian Special Prize consisting of US$ 10,000.00, generously donated by the Danone Group as part of a collaborative project with the Ramsar Convention.</div>\r\n            <div>The Ramsar Award will be presented to the winners at the opening ceremony of the 8th Meeting of the Conference of the Parties to the Convention, which will take place in Valencia, Spain, on 18 November 2002 at 10 a.m. Hopefully, the ceremony will be presided over by the Crown Prince of Spain, H.R.H. Pr&iacute;:ncipe Felipe de Borb&oacute;:n y Grecia.<br />\r\n            &nbsp;</div>\r\n            <div>The Conference of the Parties will bring together the delegates of the 131 countries that so far have joined the Convention, plus many representatives of international organisations and NGOs.<br />\r\n            &nbsp;</div>\r\n            <div>We would be grateful if, between now and the ceremony, you would consider and let us know to what use the Evian Special Prize could best be put. In this way, your intentions can be announced at the latest at the time of the Award ceremony.</div>\r\n            <div>After an initial announcement of the laureates on our web site and to our Contracting Parties, it is our intention to prepare a longer article, maybe also with a short video footage for showing at the ceremony on 18 November, and we will be in touch with you in this respect.</div>\r\n            <div>I look forward to hearing from you.</div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\\\"right\\\">Yours sincerely,<br />\r\n            <img src=\\\"images/ramsar3.gif\\\" width=\\\"100\\\" height=\\\"50\\\" alt=\\\"\\\" /> <br />\r\n            Delmar Blasco,&nbsp;Secretary General</td>\r\n        </tr>\r\n        <tr>\r\n            <td>For further information about the Ramsar Convention on Wetlands, please contact the Ramsar Convention Bureau, Rue Mauverney 28, CH-1196 Gland, Switzerland (tel +41 22 999 0170, fax +41 22 999 0169, e-mail: <a href=\\\"mailto:ramsar@ramsar.org\\\" class=\\\"topmenu\\\"><strong>ramsar@ramsar.org</strong></a>. Posted 19 April 2000, updated 2 November 2006, Dwight Peck, Ramsar.: <a href=\\\"www.ramsar.org\\\" target=\\\"_blank\\\" class=\\\"topmenu\\\"><strong>www.ramsar.org</strong></a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;:</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div><strong>The Ramsar Wetland Conservation Award and Evian Special Prize - 2002- Citation</strong></div>\r\n            <div><img src=\\\"images/wca.jpg\\\" width=\\\"160\\\" height=\\\"170\\\" align=\\\"right\\\" alt=\\\"\\\" />The Chilika Development Authority (CDA) receives the Ramsar Award for its impressive work and outstanding achievements in restoring the Chilika Lake Ramsar Site. This restoration has been carried out based on the principles of wise use and integrated management, and with a major emphasis on the participation of the local population and their shared decision-making, as well as capacity building. Chilika Lake is a striking example of how restoration of the ecological characteristics of a site can result not only in increased biodiversity (plant and animal species, notably birds), but also in a spectacular increase in fish catches (including the reappearance of some economic species) and other socio-economic benefits to the local population.<br />\r\n            &nbsp;</div>\r\n            <div>Chilika Lake (Odisha, India), the largest lagoon on the east coast of India, was added to the Ramsar List of Wetlands of International Importance in 1981. It is a 116,500 hectare brackish lagoon separated from the Bay of Bengal by a long sandy ridge. Because of serious degradation brought about mainly by siltation and choking of the seawater inlet channel, resulting inter alia in the proliferation of invasive freshwater species, the decrease in fish productivity,and an overall loss of biodiversity, Chilika Lake was added to the List of Ramsar sites in danger (the Montreux Record) in 1993. In addition to its importance for water birds (over one million migratory birds winter there) and biodiversity in general, significant numbers of people are dependent upon the lake\\\'s resources. Created in 1992 to address these problems, the Chilika Development Authority has implemented a bold programme of action to restore the ecosystem action to restore the ecosystem and to improve the socio-economic conditions of the communities living around the lagoon and on its islands. One of the major interventions was the desiltation of the channel connecting the lagoon to the sea and opening of a new mouth to restore the natural flows of water and salinity levels. This resulted notably, in only a couple of years, in a substantial increase in the lagoon\\\'s fish yield and a reduction of freshwater weeds. Other measures include catchments management in a participatory manner: protection of bird habitat and of bird species: economic incentives to the local population to stop poaching of birds: measures to improve the socio-economic conditions, such as training programmes to develop eco-tourism, provision of solar streetlight systems to island villages, development of a ferry service for isolated villages, construction of landing facilities for fisher folk, as well as education and environmental awareness activities.<br />\r\n            &nbsp;</div>\r\n            <div><img src=\\\"images/award-ramsarr.jpg\\\" width=\\\"280\\\" height=\\\"200\\\" align=\\\"right\\\" alt=\\\"\\\" />The above-mentioned activities were carried out based on the scientific studies and recommendations of the premier institutes of the country, with the involvement of the local population and the support of Wetlands International and local NGOs, as well as grass-root and community-based organisations, under the guidance of the CDA Chief Executive Officer, Ajit Pattnaik, a native of the region who devoted himself wholeheartedly to the task. The restoration of Chilika lagoon derives its uniqueness from the strong participation by local communities, linkage with various national and international institutions, and intensive monitoring and assessment systems. In 2001, a Ramsar Advisory Mission was carried out at the Chilika Lake Ramsar site, which concluded with the recommendation that the site should be removed from the Montreux Record, provided that the management measures are continued and monitored. The case of Chilika Lake is a perfect example of how the listing of a site on the Montreux Record can be used to promote measures to correct change in ecological character of a site, and also to improve the socio-economic conditions of the population living in and around the site.<br />\r\n            &nbsp;</div>\r\n            <div>The Ramsar Award is being given to the Chilika Development Authority in recognition of the exemplary restoration work carried out with the active involvement of all stakeholders.<br />\r\n            &nbsp;</div>\r\n            <div>From left: Chaman Trisal, Wetlands International, South Asia Programme: Najam Khurshid, Ramsar Bureau: A. J. Pattnaik, Chilika Development Authority: Max Finlayson, Ramsar expert consultant: Sidharth Kaul, Ministry of Environment and Forests, on the occasion of the Ramsar Advisory Mission to Chilika Lake, 2001.</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1, 1),
(32, 'test', 'Article', '11-03-2018 10:59PM', 'newsevents_1520747089.jpg', '<div>&nbsp;dghfdhdh</div>', 1, 2),
(33, 'test one', 'Events', '11-03-2018 10:59PM', 'newsevents_1520747681.jpg', '<div>&nbsp;dghfdhdh hdfghgf</div>', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo_category`
--

CREATE TABLE `tbl_photo_category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(150) DEFAULT NULL,
  `category_status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_photo_category`
--

INSERT INTO `tbl_photo_category` (`category_id`, `category_name`, `category_url`, `category_status`, `sort_order`) VALUES
(67, 'Activities', 'activities', 1, 7),
(62, 'Kalijai', 'kalijai', 1, 5),
(63, 'The story of Nature', 'the-story-of-nature', 1, 4),
(64, 'The Untold Story', 'the-untold-story', 1, 3),
(65, 'The Tourist Destination', 'the-tourist-destination', 1, 2),
(66, 'The Sanctuary of Birds', 'the-sanctuary-of-birds', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo_gallery`
--

CREATE TABLE `tbl_photo_gallery` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) NOT NULL,
  `photo_file` varchar(255) NOT NULL,
  `photo_date` varchar(255) NOT NULL,
  `photo_category` varchar(250) NOT NULL,
  `photo_status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo_gallery`
--

INSERT INTO `tbl_photo_gallery` (`photo_id`, `photo_caption`, `photo_file`, `photo_date`, `photo_category`, `photo_status`, `sort_order`) VALUES
(114, 'Kalijai', 'photo_0612132126080.jpg', '06-Dec-2013', '62', 1, 2),
(108, 'The Tourist Destination', 'photo_0612132122400.jpg', '06-Dec-2013', '65', 1, 4),
(90, 'Kalijai', 'photo_0511130928222.jpg', '06-Dec-2013', '62', 1, 1),
(107, 'The Tourist Destination', 'photo_0612132121140.jpg', '06-Dec-2013', '65', 1, 2),
(106, 'The Tourist Destination', 'photo_0612132120530.jpg', '06-Dec-2013', '65', 1, 1),
(115, 'The Sanctuary of Birds', 'photo_2412130320470.jpg', '24-Dec-2013', '66', 1, 3),
(116, 'The Sanctuary of Birds', 'photo_2412130320481.jpg', '24-Dec-2013', '66', 1, 4),
(111, 'The story of Nature', 'photo_0612132124530.jpg', '06-Dec-2013', '63', 1, 1),
(96, 'The Untold Story', 'photo_0511131105450.jpg', '05-Nov-2013', '64', 1, 2),
(97, 'The Untold Story', 'photo_0511131105451.jpg', '05-Nov-2013', '64', 1, 1),
(98, 'The Sanctuary of Birds', 'photo_0511131109000.jpg', '06-Dec-2013', '66', 1, 14),
(99, 'The Tourist Destination', 'photo_0511131109530.jpg', '06-Dec-2013', '65', 1, 3),
(125, 'The Sanctuary of Birds', 'photo_2412130327070.jpg', '24-Dec-2013', '66', 1, 15),
(126, 'The Sanctuary of Birds', 'photo_2412130327081.jpg', '24-Dec-2013', '66', 1, 13),
(127, 'The Sanctuary of Birds', 'photo_2412130327082.jpg', '24-Dec-2013', '66', 1, 1),
(105, 'The Sanctuary of Birds', 'photo_241213032549.jpg', '24-Dec-2013', '66', 1, 2),
(109, 'The Untold Story', 'photo_0612132123290.jpg', '06-Dec-2013', '64', 1, 3),
(110, 'The Untold Story', 'photo_0612132123570.jpg', '06-Dec-2013', '64', 1, 4),
(112, 'The story of Nature', 'photo_0612132125170.jpg', '06-Dec-2013', '63', 1, 2),
(113, 'The story of Nature', 'photo_261213040701.jpg', '26-Dec-2013', '63', 1, 3),
(117, 'The Sanctuary of Birds', 'photo_2412130320482.jpg', '24-Dec-2013', '66', 1, 5),
(118, 'The Sanctuary of Birds', 'photo_2412130320483.jpg', '24-Dec-2013', '66', 1, 6),
(119, 'The Sanctuary of Birds', 'photo_2412130320494.jpg', '24-Dec-2013', '66', 1, 7),
(120, 'The Sanctuary of Birds', 'photo_2412130321360.jpg', '24-Dec-2013', '66', 1, 8),
(121, 'The Sanctuary of Birds', 'photo_2412130321361.jpg', '24-Dec-2013', '66', 1, 9),
(122, 'The Sanctuary of Birds', 'photo_2412130321372.jpg', '24-Dec-2013', '66', 1, 10),
(123, 'The Sanctuary of Birds', 'photo_2412130321373.jpg', '24-Dec-2013', '66', 1, 11),
(124, 'The Sanctuary of Birds', 'photo_2412130321374.jpg', '24-Dec-2013', '66', 1, 12),
(128, 'The story of Nature', 'photo_2612130416440.jpg', '26-Dec-2013', '63', 1, 4),
(129, 'The story of Nature', 'photo_2612130416441.jpg', '26-Dec-2013', '63', 1, 5),
(130, 'The story of Nature', 'photo_2612130416442.jpg', '26-Dec-2013', '63', 1, 6),
(131, 'The story of Nature', 'photo_2612130416443.jpg', '26-Dec-2013', '63', 1, 7),
(132, 'The story of Nature', 'photo_2612130416444.jpg', '26-Dec-2013', '63', 1, 8),
(133, 'The story of Nature', 'photo_2612130416445.jpg', '26-Dec-2013', '63', 1, 9),
(134, 'The story of Nature', 'photo_2612130416446.jpg', '26-Dec-2013', '63', 1, 10),
(135, 'The story of Nature', 'photo_2612130416447.jpg', '26-Dec-2013', '63', 1, 11),
(136, 'The story of Nature', 'photo_2612130416448.jpg', '26-Dec-2013', '63', 1, 12),
(137, 'The story of Nature', 'photo_2612130416449.jpg', '26-Dec-2013', '63', 1, 13),
(138, 'The story of Nature', 'photo_2612130417150.jpg', '26-Dec-2013', '63', 1, 14),
(139, 'The story of Nature', 'photo_2612130417151.jpg', '26-Dec-2013', '63', 1, 15),
(140, 'Activities', 'photo_2612130426460.jpg', '26-Dec-2013', '67', 1, 1),
(141, 'Activities', 'photo_2612130426461.jpg', '26-Dec-2013', '67', 1, 2),
(142, 'Activities', 'photo_2612130426462.jpg', '26-Dec-2013', '67', 1, 3),
(143, 'Activities', 'photo_2612130426463.jpg', '26-Dec-2013', '67', 1, 4),
(144, 'Activities', 'photo_2612130426464.jpg', '26-Dec-2013', '67', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visit_chilika`
--

CREATE TABLE `tbl_visit_chilika` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `title` text,
  `url` varchar(200) DEFAULT NULL,
  `publish_date` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `description` text,
  `status` int(11) DEFAULT '1',
  `new` int(10) DEFAULT '0',
  `sort_order` int(11) DEFAULT '0',
  `new_window` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_visit_chilika`
--

INSERT INTO `tbl_visit_chilika` (`id`, `type`, `title`, `url`, `publish_date`, `file_name`, `link`, `description`, `status`, `new`, `sort_order`, `new_window`) VALUES
(29, 2, 'The largest wintering ground for migratory birds in India', NULL, '08-11-2013', '', 'chilika-at-a-glance.php', '', 1, 0, 0, 0),
(30, 0, 'Best time to visit Chilika', NULL, '12-11-2013', '', '', '<div>Chilika is the largest brackish water lagoon in the East-coast of India. It is an unique assemblege of fresh water ,brackish and marine ecosytem and a hot-spot of biodiversity which support the Socio-economic mileau of about 0.2 million fishermen living in and around the lagoon. The Lagon is a wetland of International importance and designated as a &quot;Ramsar Site&quot; in the year 1981. The lagoon is the wintering ground for more than one million migratory birds.  <br />\r\n<br />\r\nThe Lagoon had been facing the problems like &ndash; siltation, shrinkage of area, choking of the inlet channel as well as shifting of the mouth connecting the sea, decrease in salinity, proliferation of invasive fresh water species, decrease in fish productivity and an over-all loss of biodiversity. Due to the change in the ecological characters of the lagoon, it was placed in the montreux record in the year1993. While comparing the data of the pioneering studies on Chilika done during the year 1915 to 1924, with the data generated by way of extensive survey carried out by Zoological Survey of India after 60 years i.e during 1985-87, opined that the lagoon ecosystem is tending towards a fresh water ecosystem and warrants urgent restoration measures.  <br />\r\n<br />\r\nConsidering the sensitive lagoon eco-system, extensive hydrological studies were carried out by commissioning the services of the pioneer institutes of the countries to find out the best options to restore its ecosystem. Based on the findings of the extensive studies a number of ameliorating measures were recommended by these institutes and the Chilika Development Authority took steps to execute them to restore it&rsquo;s ecosystem.<br />\r\n<br />\r\nOne of the major interventions was the desiltation of the outer-channel, which connects the Lagoon to the sea, near Magarmukh by dredging, and opening of an artificial mouth along the sand spit at a distance of 11 kilometers from the lake proper, which is considered as a historical and most successful hydrological intervention to save the eco-system of the lagoon. Due to desiltation of the outer channel and opening of the new mouth the following positive impacts are observed, a) There is improvement of salinity flux resulting in the restoration of the salinity gradient of the lagoon, b) There is better exchange of the water between the lagoon and the sea, c) It is also helping in flushing-out of the sediment from the lagoon, d) Reduction of the water-logging in the paddy field of northern sector during monsoon, e)There is a substantial improvement of the fishery resources due to the auto-recruitment of the juvenile from the sea and the free migration of the fish and other economic species from the lagoon to the sea and vice versa, f) Due to increase in the salinity regime there is reduction of the fresh water weed in the northern sector. g) The dredge spoil is deposited on an existing island and is planted with suitable species to provide the perching facility to the migratory birds, this will further add to the species diversity.Other important interventions were &ndash; i) Treatment of the catchment in a participatory manner on a micro watershed basis: With an objective to facilitate a community based co-management strategy for an integrated terrestrial and aquatic resource management programme, with a major emphasis on the capacity building at the community level at the out set through series of training and exposure visit, to pave the way for preparation of the micro plan blended with indigenous knowledge at the community level for optimum utilization of the natural resources to increase the productivity . The watershed community also shares the part of the cost of the treatment. This is also creating an enabling situation for the local community to take decision and to understand the problem in a better manner. The result are encouraging and the participation of the stake holders is also remarkable. ii) Restoration of Nalabana bird Sanctuary and the protection of the habitat of the avian fauna of the lagoon: Nalabana island was notified as a bird sanctuary under Wild life (Protection) Act in the year 1987. This is an avian grandeur and a wintering ground for more than one million birds. To augment the habitat management of the sanctuary and restoration of its ecosystem, fund from special problem grant was provided to the wildlife division. The major break through in the conservation of the avian fauna was weaning away the villagers who had adopted poaching of the birds as their principal source of livelihood, by arrangement of the soft term loan by CDA in collaboration with a Nationalized bank for the villagers to adopt alternate source of livelihood. In the process the villagers not only abandoned the poaching but also formed the birds protection committee at village level, the youth of the above villages are acting as nature guide to conduct the tourists around the birds habitat. For the first time in the history of the Chilika thousands of the nest and the eggs of a number of rails and coots could be saved during the year 2001. To encourage the community initiative &ldquo; Friends of the Birds&rdquo; award is instituted by CDA and first set of awards were given during the celebration of the wild life week to the two birds protection committees in 2001.iii) Weed management: Due to siltation, and decrease in salinity, the lagoon was infested with the fresh water invasive species. The weed-spread area of the lagoon proliferated from 20 sq.km in 1972, to 684.70 sq.km in 2000. Due to this, the weed free area available for fishing was considerably reducing, it was also posing problem for navigation. After opening of the mouth the fresh water invasive species, particularly the area infested with water hyacinth decreased and 508.56 Sq kilometers area was observed to be weed free, thus 157.05 Sq kilometers more area became weed free in comparison to the year 2000, which is being monitored through the in-house image-processing unit of CDA. Seventy-two numbers of weed-based biogas plants were installed in three fishermen villages based on the Chilika weed. iv) Improvement of fishery resources: After the opening of the mouth there was a remarkable improvement of the fishery resources. As against the average annual fish landing of 1600 metric tons, recorded during the past six years, the fish landing during the year 2000-2001 improved to 4889.21 tons and the seven months landing after the opening of the new mouth i.e., from October 2000 to March 2001 alone was 3718.44 metric tons. From April 2001 to October, 2001 the fish landing is recorded to be 6737.88 metric tons, which indicates a significant improvement over the previous years. It is expected that the fish landing may touch 10,000 metric tons during 2001-2002, which will be all time high record for the lagoon . This improvement is due to the auto recruitment of the fish prawn and crab juvenile freely from sea to the lagoon and the free movement of the species who maintain a phased life cycle. Paeneous indicus an important species of prawn, which was thought to have extinct from the system, reappeared after opening of the mouth. The crab landing which had dwindled to 10 metric tons improved to 90 metric tons after the opening of the mouth in 2000-2001. v) Awareness and environmental education : The Chilika Development Authority in collaboration with the grass root level NGOs and Community based organization as well as the women organizations working in and around the lagoon carried out a number of programme on the environmental awareness and education including the celebration of the World Wetland day, meeting at the village level, development of the environmental education materials, brochures on environmental themes, wall paintings, publication of a quarterly news letter in local language (Oriya) highlighting the issues of the lagoon and the stake holders, environmental education programme for the school children and development of a visitor center at Satapada which is considered as the gate way to Chilika. The visitor center will be the first of it&rsquo;s kind in India. The vast diversity of Chilika lagoon offers ample scope for eco-tourism. It has got vast potentiality to generate employment for the unemployed villagers, living in and around the lagoon. Orientation training programme are also organized for the boatmen who conduct the tourists within the lagoon, and act as nature guide. vi) Improvement of the communication network: A number of thickly populated island villages do not have proper communication facility which is the major bottle neck for the economic development of the area. As a major step to address this problem particularly for the island villages, a ferry service is developed by the Chilika Development Authority, this will benefit more than 70,000 people .vii) Socio economic improvement : A socio-economic survey was conducted to identify the socio economic issues of the villages and the community. Based on the findings a number of measures were taken to improve the socio economic condition of the community. Solar streetlight systems are provided in the island villages. Jetties are constructed to provide the landing facility to the villagers in and around Chilika. Two numbers of waiting-cum-auction halls are constructed at Kalupada Ghat and Sorana, which are the two prime fish landing centres of Chilika. Solar lighting is also provided at Kalijai island of the lagoon under this component. viii) Research centre on wetland management at Balugaon : Chilika provides an excellent and unique opportunity for research on a tropical lagoon eco system, to facilitate this a wetland research center is developed on the shore of the lagoon. The building is constructed by the engineering wing of the CDA, within a record time.  <br />\r\n<br />\r\n<strong>Other activities:</strong> Hydro-biological monitoring of the Lagoon is being carried out in collaboration with the Wetlands International &ndash; South Asia (WISA) on a long term basis for four years which commenced from the year 1999, to identify and document the key hydrological and biological parameters of the lagoon. The close monitoring of the physico-chemical parameters of the lagoon is also carried out from the thirty monitoring locations spread over all the four ecological sectors. The study of the irrawady dolphin a key stone species is carried out by commissioning the services of a cetacean expert. A collaborative environmental education and awareness programme is carried out with the Pallishree a grass root level NGO with the support from the Japan Fund for Global Environment. A net working of the NGOs and CBOs working in and around the lagoon at the grass root level is developed by CDA. A federation of these organizations is constituted as the &ldquo; Campaign for Conservation of the Chilika lagoon&rdquo; (CCCL), with the ten founder organizations. The CDA is organizing the capacity building by way of training programme and exposure visit for the members of the organisations for their capacity building. A mechanism for information dissemination to all the member organizations is also devised by the CDA. Now there are 15 NGO&rsquo;s and equal number of CBOs in the network. A quarterly news letter on the environmental and issues relating to the stakeholders is published in in local language, in collaboration with the Pallishree a NGO. A technical newsletter is published high lighting the management issues the research findings and the studies, biannually in collaboration with the Wetlands International South Asia.  The restoration measures taken so far are considered as holistic, comprehensive and most effective. It is considered in many National and International forum as a most appropriate eco-restoration model, which can be replicated in other parts of the globe. The Ramsar Adsvisory Mission based on their assessment of the restoration measures taken by the Chilika Development Authority have recommended for removal of Chilika from the Montreux record.</div>', 1, 1, 1, 0),
(32, 1, 'JICA-Chilika Development Authority Project Pamphlet', NULL, '27-11-2013', 'visit_1385543186.pdf', '', '', 1, 0, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `site_controller`
--
ALTER TABLE `site_controller`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_home_category`
--
ALTER TABLE `tbl_home_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_home_gallery`
--
ALTER TABLE `tbl_home_gallery`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo_category`
--
ALTER TABLE `tbl_photo_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_photo_gallery`
--
ALTER TABLE `tbl_photo_gallery`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_visit_chilika`
--
ALTER TABLE `tbl_visit_chilika`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_controller`
--
ALTER TABLE `site_controller`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_home_category`
--
ALTER TABLE `tbl_home_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_home_gallery`
--
ALTER TABLE `tbl_home_gallery`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_photo_category`
--
ALTER TABLE `tbl_photo_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_photo_gallery`
--
ALTER TABLE `tbl_photo_gallery`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tbl_visit_chilika`
--
ALTER TABLE `tbl_visit_chilika`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
