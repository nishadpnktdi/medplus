-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2019 at 12:03 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medplus`
--
CREATE DATABASE IF NOT EXISTS `medplus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `medplus`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_status`
--

CREATE TABLE `appointment_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `auth_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`auth_id`, `email`, `phone`, `password`, `user_role`) VALUES
(1, 'admin@medplus.com', '', '12345', '1');

-- --------------------------------------------------------

--
-- Table structure for table `booking_channel`
--

CREATE TABLE `booking_channel` (
  `channel_id` int(11) NOT NULL,
  `channel_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `state_id`, `state_name`) VALUES
(1, 'Adilabad', 32, 'Telangana'),
(2, 'Agra', 34, 'Uttar Pradesh'),
(3, 'Ahmed Nagar', 21, 'Maharashtra'),
(4, 'Ahmedabad City', 12, 'Gujarat'),
(5, 'Aizawl', 24, 'Mizoram'),
(6, 'Ajmer', 29, 'Rajasthan'),
(7, 'Akola', 21, 'Maharashtra'),
(8, 'Aligarh', 34, 'Uttar Pradesh'),
(9, 'Allahabad', 34, 'Uttar Pradesh'),
(10, 'Alleppey', 18, 'Kerala'),
(11, 'Almora', 35, 'Uttarakhand'),
(12, 'Alwar', 29, 'Rajasthan'),
(13, 'Alwaye', 18, 'Kerala'),
(14, 'Amalapuram', 2, 'Andhra Pradesh'),
(15, 'Ambala', 13, 'Haryana'),
(16, 'Ambedkar Nagar', 34, 'Uttar Pradesh'),
(17, 'Amravati', 21, 'Maharashtra'),
(18, 'Amreli', 12, 'Gujarat'),
(19, 'Amritsar', 28, 'Punjab'),
(20, 'Anakapalle', 2, 'Andhra Pradesh'),
(21, 'Anand', 12, 'Gujarat'),
(22, 'Anantapur', 2, 'Andhra Pradesh'),
(23, 'Ananthnag', 15, 'Jammu & Kashmir'),
(24, 'Anna Road H.O', 31, 'Tamil Nadu'),
(25, 'Arakkonam', 31, 'Tamil Nadu'),
(26, 'Asansol', 36, 'West Bengal'),
(27, 'Aska', 26, 'Odisha'),
(28, 'Auraiya', 34, 'Uttar Pradesh'),
(29, 'Aurangabad', 21, 'Maharashtra'),
(30, 'Aurangabad(Bihar)', 5, 'Bihar'),
(31, 'Azamgarh', 34, 'Uttar Pradesh'),
(32, 'Bagalkot', 17, 'Karnataka'),
(33, 'Bageshwar', 35, 'Uttarakhand'),
(34, 'Bagpat', 34, 'Uttar Pradesh'),
(35, 'Bahraich', 34, 'Uttar Pradesh'),
(36, 'Balaghat', 20, 'Madhya Pradesh'),
(37, 'Balangir', 26, 'Odisha'),
(38, 'Balasore', 26, 'Odisha'),
(39, 'Ballia', 34, 'Uttar Pradesh'),
(40, 'Balrampur', 34, 'Uttar Pradesh'),
(41, 'Banasanktha', 12, 'Gujarat'),
(42, 'Banda', 34, 'Uttar Pradesh'),
(43, 'Bandipur', 15, 'Jammu & Kashmir'),
(44, 'Bankura', 36, 'West Bengal'),
(45, 'Banswara', 29, 'Rajasthan'),
(46, 'Barabanki', 34, 'Uttar Pradesh'),
(47, 'Baramulla', 15, 'Jammu & Kashmir'),
(48, 'Baran', 29, 'Rajasthan'),
(49, 'Bardoli', 12, 'Gujarat'),
(50, 'Bareilly', 34, 'Uttar Pradesh'),
(51, 'Barmer', 29, 'Rajasthan'),
(52, 'Barnala', 28, 'Punjab'),
(53, 'Barpeta', 4, 'Assam'),
(54, 'Bastar', 7, 'Chattisgarh'),
(55, 'Basti', 34, 'Uttar Pradesh'),
(56, 'Bathinda', 28, 'Punjab'),
(57, 'Beed', 21, 'Maharashtra'),
(58, 'Begusarai', 5, 'Bihar'),
(59, 'Belgaum', 17, 'Karnataka'),
(60, 'Bellary', 17, 'Karnataka'),
(61, 'Bengaluru East', 17, 'Karnataka'),
(62, 'Bengaluru South', 17, 'Karnataka'),
(63, 'Bengaluru West', 17, 'Karnataka'),
(64, 'Berhampur', 26, 'Odisha'),
(65, 'Bhadrak', 26, 'Odisha'),
(66, 'Bhagalpur', 5, 'Bihar'),
(67, 'Bhandara', 21, 'Maharashtra'),
(68, 'Bharatpur', 29, 'Rajasthan'),
(69, 'Bharuch', 12, 'Gujarat'),
(70, 'Bhavnagar', 12, 'Gujarat'),
(71, 'Bhilwara', 29, 'Rajasthan'),
(72, 'Bhimavaram', 2, 'Andhra Pradesh'),
(73, 'Bhiwani', 13, 'Haryana'),
(74, 'Bhojpur', 5, 'Bihar'),
(75, 'Bhopal', 20, 'Madhya Pradesh'),
(76, 'Bhubaneswar', 26, 'Odisha'),
(77, 'Bidar', 17, 'Karnataka'),
(78, 'Bijapur', 17, 'Karnataka'),
(79, 'Bijnor', 34, 'Uttar Pradesh'),
(80, 'Bikaner', 29, 'Rajasthan'),
(81, 'Bilaspur', 7, 'Chattisgarh'),
(82, 'Birbhum', 36, 'West Bengal'),
(83, 'Bishnupur', 22, 'Manipur'),
(84, 'Bongaigaon', 4, 'Assam'),
(85, 'Budaun', 34, 'Uttar Pradesh'),
(86, 'Budgam', 15, 'Jammu & Kashmir'),
(87, 'Bulandshahr', 34, 'Uttar Pradesh'),
(88, 'Buldhana', 21, 'Maharashtra'),
(89, 'Bundi', 29, 'Rajasthan'),
(90, 'Burdwan', 36, 'West Bengal'),
(91, 'Cachar', 4, 'Assam'),
(92, 'Calicut', 18, 'Kerala'),
(93, 'Carnicobar', 1, 'Andaman & Nicobar Islands'),
(94, 'Chamba', 14, 'Himachal Pradesh'),
(95, 'Chamoli', 35, 'Uttarakhand'),
(96, 'Champawat', 35, 'Uttarakhand'),
(97, 'Champhai', 24, 'Mizoram'),
(98, 'Chandauli', 34, 'Uttar Pradesh'),
(99, 'Chandel', 22, 'Manipur'),
(100, 'Chandigarh', 6, 'Chandigarh'),
(101, 'Chandrapur', 21, 'Maharashtra'),
(102, 'Changanacherry', 18, 'Kerala'),
(103, 'Changlang', 3, 'Arunachal Pradesh'),
(104, 'Channapatna', 17, 'Karnataka'),
(105, 'Chengalpattu', 31, 'Tamil Nadu'),
(106, 'Chennai City Central', 31, 'Tamil Nadu'),
(107, 'Chennai City North', 31, 'Tamil Nadu'),
(108, 'Chennai City South', 31, 'Tamil Nadu'),
(109, 'Chhatarpur', 20, 'Madhya Pradesh'),
(110, 'Chhindwara', 20, 'Madhya Pradesh'),
(111, 'Chikmagalur', 17, 'Karnataka'),
(112, 'Chikodi', 17, 'Karnataka'),
(113, 'Chitradurga', 17, 'Karnataka'),
(114, 'Chitrakoot', 34, 'Uttar Pradesh'),
(115, 'Chittoor', 2, 'Andhra Pradesh'),
(116, 'Chittorgarh', 29, 'Rajasthan'),
(117, 'Churachandpur', 22, 'Manipur'),
(118, 'Churu', 29, 'Rajasthan'),
(119, 'Coimbatore', 31, 'Tamil Nadu'),
(120, 'Contai', 36, 'West Bengal'),
(121, 'Cooch Behar', 36, 'West Bengal'),
(122, 'Cuddalore', 31, 'Tamil Nadu'),
(123, 'Cuddapah', 2, 'Andhra Pradesh'),
(124, 'Cuttack City', 26, 'Odisha'),
(125, 'Cuttack North', 26, 'Odisha'),
(126, 'Cuttack South', 26, 'Odisha'),
(127, 'Dadra & Nagar Haveli', 8, 'Dadra & Nagar Haveli'),
(128, 'Daman', 9, 'Daman & Diu'),
(129, 'Darbhanga', 5, 'Bihar'),
(130, 'Darjiling', 36, 'West Bengal'),
(131, 'Darrang', 4, 'Assam'),
(132, 'Dausa', 29, 'Rajasthan'),
(133, 'Dehra Gopipur', 14, 'Himachal Pradesh'),
(134, 'Dehradun', 35, 'Uttarakhand'),
(135, 'Delhi', 10, 'Delhi'),
(136, 'Deoria', 34, 'Uttar Pradesh'),
(137, 'Dhalai', 33, 'Tripura'),
(138, 'Dhanbad', 16, 'Jharkhand'),
(139, 'Dharamsala', 14, 'Himachal Pradesh'),
(140, 'Dharmapuri', 31, 'Tamil Nadu'),
(141, 'Dharwad', 17, 'Karnataka'),
(142, 'Dhemaji', 4, 'Assam'),
(143, 'Dhenkanal', 26, 'Odisha'),
(144, 'Dholpur', 29, 'Rajasthan'),
(145, 'Dhubri', 4, 'Assam'),
(146, 'Dhule', 21, 'Maharashtra'),
(147, 'Dibang Valley', 3, 'Arunachal Pradesh'),
(148, 'Dibrugarh', 4, 'Assam'),
(149, 'Diglipur', 1, 'Andaman & Nicobar Islands'),
(150, 'Dimapur', 25, 'Nagaland'),
(151, 'Dindigul', 31, 'Tamil Nadu'),
(152, 'Diu', 9, 'Daman & Diu'),
(153, 'Doda', 15, 'Jammu & Kashmir'),
(154, 'Dungarpur', 29, 'Rajasthan'),
(155, 'Durg', 7, 'Chattisgarh'),
(156, 'East Champaran', 5, 'Bihar'),
(157, 'East Garo Hills', 23, 'Meghalaya'),
(158, 'East Kameng', 3, 'Arunachal Pradesh'),
(159, 'East Khasi Hills', 23, 'Meghalaya'),
(160, 'East Siang', 3, 'Arunachal Pradesh'),
(161, 'East Sikkim', 30, 'Sikkim'),
(162, 'Eluru', 2, 'Andhra Pradesh'),
(163, 'Ernakulam', 18, 'Kerala'),
(164, 'Erode', 31, 'Tamil Nadu'),
(165, 'Etah', 34, 'Uttar Pradesh'),
(166, 'Etawah', 34, 'Uttar Pradesh'),
(167, 'Faizabad', 34, 'Uttar Pradesh'),
(168, 'Faridabad', 13, 'Haryana'),
(169, 'Faridkot', 28, 'Punjab'),
(170, 'Farrukhabad', 34, 'Uttar Pradesh'),
(171, 'Fatehgarh Sahib', 28, 'Punjab'),
(172, 'Fatehpur', 34, 'Uttar Pradesh'),
(173, 'Fazilka', 28, 'Punjab'),
(174, 'Ferrargunj', 1, 'Andaman & Nicobar Islands'),
(175, 'Firozabad', 34, 'Uttar Pradesh'),
(176, 'Firozpur', 28, 'Punjab'),
(177, 'Gadag', 17, 'Karnataka'),
(178, 'Gadchiroli', 21, 'Maharashtra'),
(179, 'Gandhinagar', 12, 'Gujarat'),
(180, 'Ganganagar', 29, 'Rajasthan'),
(181, 'Gautam Buddha Nagar', 34, 'Uttar Pradesh'),
(182, 'Gaya', 5, 'Bihar'),
(183, 'Ghaziabad', 34, 'Uttar Pradesh'),
(184, 'Ghazipur', 34, 'Uttar Pradesh'),
(185, 'Giridih', 16, 'Jharkhand'),
(186, 'Goa', 11, 'Goa'),
(187, 'Goalpara', 4, 'Assam'),
(188, 'Gokak', 17, 'Karnataka'),
(189, 'Golaghat', 4, 'Assam'),
(190, 'Gonda', 34, 'Uttar Pradesh'),
(191, 'Gondal', 12, 'Gujarat'),
(192, 'Gondia', 21, 'Maharashtra'),
(193, 'Gorakhpur', 34, 'Uttar Pradesh'),
(194, 'Gudivada', 2, 'Andhra Pradesh'),
(195, 'Gudur', 2, 'Andhra Pradesh'),
(196, 'Gulbarga', 17, 'Karnataka'),
(197, 'Guna', 20, 'Madhya Pradesh'),
(198, 'Guntur', 2, 'Andhra Pradesh'),
(199, 'Gurdaspur', 28, 'Punjab'),
(200, 'Gurugram', 13, 'Haryana'),
(201, 'Gwalior', 20, 'Madhya Pradesh'),
(202, 'Hailakandi', 4, 'Assam'),
(203, 'Hamirpur (HP)', 14, 'Himachal Pradesh'),
(204, 'Hamirpur (UP)', 34, 'Uttar Pradesh'),
(205, 'Hanamkonda', 32, 'Telangana'),
(206, 'Hanumangarh', 29, 'Rajasthan'),
(207, 'Hardoi', 34, 'Uttar Pradesh'),
(208, 'Haridwar', 35, 'Uttarakhand'),
(209, 'Hassan', 17, 'Karnataka'),
(210, 'Hathras', 34, 'Uttar Pradesh'),
(211, 'Haveri', 17, 'Karnataka'),
(212, 'Hazaribagh', 16, 'Jharkhand'),
(213, 'Hindupur', 2, 'Andhra Pradesh'),
(214, 'Hingoli', 21, 'Maharashtra'),
(215, 'Hissar', 13, 'Haryana'),
(216, 'Hooghly', 36, 'West Bengal'),
(217, 'Hoshangabad', 20, 'Madhya Pradesh'),
(218, 'Hoshiarpur', 28, 'Punjab'),
(219, 'Howrah', 36, 'West Bengal'),
(220, 'Hut Bay', 1, 'Andaman & Nicobar Islands'),
(221, 'Hyderabad City', 32, 'Telangana'),
(222, 'Hyderabad South East', 32, 'Telangana'),
(223, 'Idukki', 18, 'Kerala'),
(224, 'Imphal East', 22, 'Manipur'),
(225, 'Imphal West', 22, 'Manipur'),
(226, 'Indore City', 20, 'Madhya Pradesh'),
(227, 'Indore Moffusil', 20, 'Madhya Pradesh'),
(228, 'Irinjalakuda', 18, 'Kerala'),
(229, 'Jabalpur', 20, 'Madhya Pradesh'),
(230, 'Jaintia Hills', 23, 'Meghalaya'),
(231, 'Jaipur', 29, 'Rajasthan'),
(232, 'Jaisalmer', 29, 'Rajasthan'),
(233, 'Jalandhar', 28, 'Punjab'),
(234, 'Jalaun', 34, 'Uttar Pradesh'),
(235, 'Jalgaon', 21, 'Maharashtra'),
(236, 'Jalna', 21, 'Maharashtra'),
(237, 'Jalor', 29, 'Rajasthan'),
(238, 'Jalpaiguri', 36, 'West Bengal'),
(239, 'Jammu', 15, 'Jammu & Kashmir'),
(240, 'Jamnagar', 12, 'Gujarat'),
(241, 'Jaunpur', 34, 'Uttar Pradesh'),
(242, 'Jhalawar', 29, 'Rajasthan'),
(243, 'Jhansi', 34, 'Uttar Pradesh'),
(244, 'Jhujhunu', 29, 'Rajasthan'),
(245, 'Jodhpur', 29, 'Rajasthan'),
(246, 'Jorhat', 4, 'Assam'),
(247, 'Junagadh', 12, 'Gujarat'),
(248, 'Jyotiba Phule Nagar', 34, 'Uttar Pradesh'),
(249, 'Kakinada', 2, 'Andhra Pradesh'),
(250, 'Kalahandi', 26, 'Odisha'),
(251, 'Kamrup', 4, 'Assam'),
(252, 'Kanchipuram', 31, 'Tamil Nadu'),
(253, 'Kannauj', 34, 'Uttar Pradesh'),
(254, 'Kanniyakumari', 31, 'Tamil Nadu'),
(255, 'Kannur', 18, 'Kerala'),
(256, 'Kanpur Dehat', 34, 'Uttar Pradesh'),
(257, 'Kanpur Nagar', 34, 'Uttar Pradesh'),
(258, 'Kapurthala', 28, 'Punjab'),
(259, 'Karaikal', 27, 'Poducherry'),
(260, 'Karaikudi', 31, 'Tamil Nadu'),
(261, 'Karauli', 29, 'Rajasthan'),
(262, 'Karbi Anglong', 4, 'Assam'),
(263, 'Kargil', 15, 'Jammu & Kashmir'),
(264, 'Karimganj', 4, 'Assam'),
(265, 'Karimnagar', 32, 'Telangana'),
(266, 'Karnal', 13, 'Haryana'),
(267, 'Karur', 31, 'Tamil Nadu'),
(268, 'Karwar', 17, 'Karnataka'),
(269, 'Kasaragod', 18, 'Kerala'),
(270, 'Kathua', 15, 'Jammu & Kashmir'),
(271, 'Kaushambi', 34, 'Uttar Pradesh'),
(272, 'Keonjhar', 26, 'Odisha'),
(273, 'Khammam (AP)', 2, 'Andhra Pradesh'),
(274, 'Khammam (TL)', 32, 'Telangana'),
(275, 'Khandwa', 20, 'Madhya Pradesh'),
(276, 'Kheda', 12, 'Gujarat'),
(277, 'Kheri', 34, 'Uttar Pradesh'),
(278, 'Kiphire', 25, 'Nagaland'),
(279, 'Kodagu', 17, 'Karnataka'),
(280, 'Kohima', 25, 'Nagaland'),
(281, 'Kokrajhar', 4, 'Assam'),
(282, 'Kolar', 17, 'Karnataka'),
(283, 'Kolasib', 24, 'Mizoram'),
(284, 'Kolhapur', 21, 'Maharashtra'),
(285, 'Kolkata', 36, 'West Bengal'),
(286, 'Koraput', 26, 'Odisha'),
(287, 'Kota', 29, 'Rajasthan'),
(288, 'Kottayam', 18, 'Kerala'),
(289, 'Kovilpatti', 31, 'Tamil Nadu'),
(290, 'Krishnagiri', 31, 'Tamil Nadu'),
(291, 'Kulgam', 15, 'Jammu & Kashmir'),
(292, 'Kumbakonam', 31, 'Tamil Nadu'),
(293, 'Kupwara', 15, 'Jammu & Kashmir'),
(294, 'Kurnool', 2, 'Andhra Pradesh'),
(295, 'Kurukshetra', 13, 'Haryana'),
(296, 'Kurung Kumey', 3, 'Arunachal Pradesh'),
(297, 'Kushinagar', 34, 'Uttar Pradesh'),
(298, 'Kutch', 12, 'Gujarat'),
(299, 'Lakhimpur', 4, 'Assam'),
(300, 'Lakshadweep', 19, 'Lakshadweep'),
(301, 'Lalitpur', 34, 'Uttar Pradesh'),
(302, 'Latur', 21, 'Maharashtra'),
(303, 'Lawngtlai', 24, 'Mizoram'),
(304, 'Leh', 15, 'Jammu & Kashmir'),
(305, 'Lohit', 3, 'Arunachal Pradesh'),
(306, 'Longleng', 25, 'Nagaland'),
(307, 'Lower Subansiri', 3, 'Arunachal Pradesh'),
(308, 'Lucknow', 34, 'Uttar Pradesh'),
(309, 'Ludhiana', 28, 'Punjab'),
(310, 'Lunglei', 24, 'Mizoram'),
(311, 'Machilipatnam', 2, 'Andhra Pradesh'),
(312, 'Madhubani', 5, 'Bihar'),
(313, 'Madurai', 31, 'Tamil Nadu'),
(314, 'Mahabubnagar', 32, 'Telangana'),
(315, 'Maharajganj', 34, 'Uttar Pradesh'),
(316, 'Mahesana', 12, 'Gujarat'),
(317, 'Mahoba', 34, 'Uttar Pradesh'),
(318, 'Mainpuri', 34, 'Uttar Pradesh'),
(319, 'Malda', 36, 'West Bengal'),
(320, 'Mammit', 24, 'Mizoram'),
(321, 'Mandi', 14, 'Himachal Pradesh'),
(322, 'Mandsaur', 20, 'Madhya Pradesh'),
(323, 'Mandya', 17, 'Karnataka'),
(324, 'Mangalore', 17, 'Karnataka'),
(325, 'Manjeri', 18, 'Kerala'),
(326, 'Mansa', 28, 'Punjab'),
(327, 'Marigaon', 4, 'Assam'),
(328, 'Mathura', 34, 'Uttar Pradesh'),
(329, 'Mau', 34, 'Uttar Pradesh'),
(330, 'Mavelikara', 18, 'Kerala'),
(331, 'Mayabander', 1, 'Andaman & Nicobar Islands'),
(332, 'Mayiladuthurai', 31, 'Tamil Nadu'),
(333, 'Mayurbhanj', 26, 'Odisha'),
(334, 'Medak', 32, 'Telangana'),
(335, 'Meerut', 34, 'Uttar Pradesh'),
(336, 'Meghalaya', 23, 'Meghalaya'),
(337, 'Midnapore', 36, 'West Bengal'),
(338, 'Mirzapur', 34, 'Uttar Pradesh'),
(339, 'Moga', 28, 'Punjab'),
(340, 'Mohali', 28, 'Punjab'),
(341, 'Mokokchung', 25, 'Nagaland'),
(342, 'Mon', 25, 'Nagaland'),
(343, 'Monghyr', 5, 'Bihar'),
(344, 'Moradabad', 34, 'Uttar Pradesh'),
(345, 'Morena', 20, 'Madhya Pradesh'),
(346, 'Muktsar', 28, 'Punjab'),
(347, 'Mumbai', 21, 'Maharashtra'),
(348, 'Murshidabad', 36, 'West Bengal'),
(349, 'Muzaffarnagar', 34, 'Uttar Pradesh'),
(350, 'Muzaffarpur', 5, 'Bihar'),
(351, 'Mysore', 17, 'Karnataka'),
(352, 'Nadia', 36, 'West Bengal'),
(353, 'Nagaon', 4, 'Assam'),
(354, 'Nagapattinam', 31, 'Tamil Nadu'),
(355, 'Nagaur', 29, 'Rajasthan'),
(356, 'Nagpur', 21, 'Maharashtra'),
(357, 'Nainital', 35, 'Uttarakhand'),
(358, 'Nalanda', 5, 'Bihar'),
(359, 'Nalbari', 4, 'Assam'),
(360, 'Nalgonda', 32, 'Telangana'),
(361, 'Namakkal', 31, 'Tamil Nadu'),
(362, 'Nancorie', 1, 'Andaman & Nicobar Islands'),
(363, 'Nancowrie', 1, 'Andaman & Nicobar Islands'),
(364, 'Nanded', 21, 'Maharashtra'),
(365, 'Nandurbar', 21, 'Maharashtra'),
(366, 'Nandyal', 2, 'Andhra Pradesh'),
(367, 'Nanjangud', 17, 'Karnataka'),
(368, 'Narasaraopet', 2, 'Andhra Pradesh'),
(369, 'Nashik', 21, 'Maharashtra'),
(370, 'Navsari', 12, 'Gujarat'),
(371, 'Nawadha', 5, 'Bihar'),
(372, 'Nawanshahr', 28, 'Punjab'),
(373, 'Nellore', 2, 'Andhra Pradesh'),
(374, 'Nilgiris', 31, 'Tamil Nadu'),
(375, 'Nizamabad', 32, 'Telangana'),
(376, 'North 24 Parganas', 36, 'West Bengal'),
(377, 'North Cachar Hills', 4, 'Assam'),
(378, 'North Dinajpur', 36, 'West Bengal'),
(379, 'North Sikkim', 30, 'Sikkim'),
(380, 'North Tripura', 33, 'Tripura'),
(381, 'Osmanabad', 21, 'Maharashtra'),
(382, 'Ottapalam', 18, 'Kerala'),
(383, 'Palamau', 16, 'Jharkhand'),
(384, 'Palghat', 18, 'Kerala'),
(385, 'Pali', 29, 'Rajasthan'),
(386, 'Panchmahals', 12, 'Gujarat'),
(387, 'Papum Pare', 3, 'Arunachal Pradesh'),
(388, 'Parbhani', 21, 'Maharashtra'),
(389, 'Parvathipuram', 2, 'Andhra Pradesh'),
(390, 'Patan', 12, 'Gujarat'),
(391, 'Pathanamthitta', 18, 'Kerala'),
(392, 'Patiala', 28, 'Punjab'),
(393, 'Patna', 5, 'Bihar'),
(394, 'Pattukottai', 31, 'Tamil Nadu'),
(395, 'Pauri Garhwal', 35, 'Uttarakhand'),
(396, 'Peddapalli', 32, 'Telangana'),
(397, 'Peren', 25, 'Nagaland'),
(398, 'Phek', 25, 'Nagaland'),
(399, 'Phulbani', 26, 'Odisha'),
(400, 'Pilibhit', 34, 'Uttar Pradesh'),
(401, 'Pithoragarh', 35, 'Uttarakhand'),
(402, 'Poducherry (PD)', 27, 'Poducherry'),
(403, 'Poducherry (TN)', 31, 'Tamil Nadu'),
(404, 'Pollachi', 31, 'Tamil Nadu'),
(405, 'Poonch', 15, 'Jammu & Kashmir'),
(406, 'Porbandar', 12, 'Gujarat'),
(407, 'Port Blair', 1, 'Andaman & Nicobar Islands'),
(408, 'Prakasam', 2, 'Andhra Pradesh'),
(409, 'Pratapgarh', 34, 'Uttar Pradesh'),
(410, 'Proddatur', 2, 'Andhra Pradesh'),
(411, 'Pudukkottai', 31, 'Tamil Nadu'),
(412, 'Pulwama', 15, 'Jammu & Kashmir'),
(413, 'Pune', 21, 'Maharashtra'),
(414, 'Puri', 26, 'Odisha'),
(415, 'Purnea', 5, 'Bihar'),
(416, 'Purulia', 36, 'West Bengal'),
(417, 'Puttur', 17, 'Karnataka'),
(418, 'Quilon', 18, 'Kerala'),
(419, 'Raebareli', 34, 'Uttar Pradesh'),
(420, 'Raichur', 17, 'Karnataka'),
(421, 'Raigarh (CT)', 7, 'Chattisgarh'),
(422, 'Raigarh (MH)', 21, 'Maharashtra'),
(423, 'Raipur', 7, 'Chattisgarh'),
(424, 'Rajahmundry', 2, 'Andhra Pradesh'),
(425, 'Rajauri', 15, 'Jammu & Kashmir'),
(426, 'Rajkot', 12, 'Gujarat'),
(427, 'Rajsamand', 29, 'Rajasthan'),
(428, 'Ramanathapuram', 31, 'Tamil Nadu'),
(429, 'Rampur', 34, 'Uttar Pradesh'),
(430, 'Rampur Bushahr', 14, 'Himachal Pradesh'),
(431, 'Ranchi', 16, 'Jharkhand'),
(432, 'Rangat', 1, 'Andaman & Nicobar Islands'),
(433, 'Ratlam', 20, 'Madhya Pradesh'),
(434, 'Ratnagiri', 21, 'Maharashtra'),
(435, 'Reasi', 15, 'Jammu & Kashmir'),
(436, 'Rewa', 20, 'Madhya Pradesh'),
(437, 'Ri Bhoi', 23, 'Meghalaya'),
(438, 'Rohtak', 13, 'Haryana'),
(439, 'Rohtas', 5, 'Bihar'),
(440, 'Ropar', 28, 'Punjab'),
(441, 'Rudraprayag', 35, 'Uttarakhand'),
(442, 'Rupnagar', 28, 'Punjab'),
(443, 'Sabarkantha', 12, 'Gujarat'),
(444, 'Sagar', 20, 'Madhya Pradesh'),
(445, 'Saharanpur', 34, 'Uttar Pradesh'),
(446, 'Saharsa', 5, 'Bihar'),
(447, 'Salem East', 31, 'Tamil Nadu'),
(448, 'Salem West', 31, 'Tamil Nadu'),
(449, 'Samastipur', 5, 'Bihar'),
(450, 'Sambalpur', 26, 'Odisha'),
(451, 'Sangareddy', 32, 'Telangana'),
(452, 'Sangli', 21, 'Maharashtra'),
(453, 'Sangrur', 28, 'Punjab'),
(454, 'Sant Kabir Nagar', 34, 'Uttar Pradesh'),
(455, 'Sant Ravidas Nagar', 34, 'Uttar Pradesh'),
(456, 'Santhal Parganas', 16, 'Jharkhand'),
(457, 'Saran', 5, 'Bihar'),
(458, 'Satara', 21, 'Maharashtra'),
(459, 'Sawai Madhopur', 29, 'Rajasthan'),
(460, 'Secunderabad', 32, 'Telangana'),
(461, 'Sehore', 20, 'Madhya Pradesh'),
(462, 'Senapati', 22, 'Manipur'),
(463, 'Serchhip', 24, 'Mizoram'),
(464, 'Shahdol', 20, 'Madhya Pradesh'),
(465, 'Shahjahanpur', 34, 'Uttar Pradesh'),
(466, 'Shimla', 14, 'Himachal Pradesh'),
(467, 'Shimoga', 17, 'Karnataka'),
(468, 'Shrawasti', 34, 'Uttar Pradesh'),
(469, 'Sibsagar', 4, 'Assam'),
(470, 'Siddharthnagar', 34, 'Uttar Pradesh'),
(471, 'Sikar', 29, 'Rajasthan'),
(472, 'Sindhudurg', 21, 'Maharashtra'),
(473, 'Singhbhum', 16, 'Jharkhand'),
(474, 'Sirohi', 29, 'Rajasthan'),
(475, 'Sirsi', 17, 'Karnataka'),
(476, 'Sitamarhi', 5, 'Bihar'),
(477, 'Sitapur', 34, 'Uttar Pradesh'),
(478, 'Sivaganga', 31, 'Tamil Nadu'),
(479, 'Siwan', 5, 'Bihar'),
(480, 'Solan', 14, 'Himachal Pradesh'),
(481, 'Solapur', 21, 'Maharashtra'),
(482, 'Sonbhadra', 34, 'Uttar Pradesh'),
(483, 'Sonepat', 13, 'Haryana'),
(484, 'Sonitpur', 4, 'Assam'),
(485, 'South 24 Parganas', 36, 'West Bengal'),
(486, 'South Dinajpur', 36, 'West Bengal'),
(487, 'South Garo Hills', 23, 'Meghalaya'),
(488, 'South Sikkim', 30, 'Sikkim'),
(489, 'South Tripura', 33, 'Tripura'),
(490, 'Srikakulam', 2, 'Andhra Pradesh'),
(491, 'Srinagar', 15, 'Jammu & Kashmir'),
(492, 'Srirangam', 31, 'Tamil Nadu'),
(493, 'Sultanpur', 34, 'Uttar Pradesh'),
(494, 'Sundargarh', 26, 'Odisha'),
(495, 'Surat', 12, 'Gujarat'),
(496, 'Surendranagar', 12, 'Gujarat'),
(497, 'Suryapet', 32, 'Telangana'),
(498, 'Tadepalligudem', 2, 'Andhra Pradesh'),
(499, 'Tambaram', 31, 'Tamil Nadu'),
(500, 'Tamenglong', 22, 'Manipur'),
(501, 'Tamluk', 36, 'West Bengal'),
(502, 'Tarn Taran', 28, 'Punjab'),
(503, 'Tawang', 3, 'Arunachal Pradesh'),
(504, 'Tehri Garhwal', 35, 'Uttarakhand'),
(505, 'Tenali', 2, 'Andhra Pradesh'),
(506, 'Thalassery', 18, 'Kerala'),
(507, 'Thane', 21, 'Maharashtra'),
(508, 'Thanjavur', 31, 'Tamil Nadu'),
(509, 'Theni', 31, 'Tamil Nadu'),
(510, 'Thoubal', 22, 'Manipur'),
(511, 'Tinsukia', 4, 'Assam'),
(512, 'Tirap', 3, 'Arunachal Pradesh'),
(513, 'Tiruchirapalli', 31, 'Tamil Nadu'),
(514, 'Tirunelveli', 31, 'Tamil Nadu'),
(515, 'Tirupati', 2, 'Andhra Pradesh'),
(516, 'Tirupattur', 31, 'Tamil Nadu'),
(517, 'Tirupur', 31, 'Tamil Nadu'),
(518, 'Tirur', 18, 'Kerala'),
(519, 'Tiruvalla', 18, 'Kerala'),
(520, 'Tiruvannamalai', 31, 'Tamil Nadu'),
(521, 'Tonk', 29, 'Rajasthan'),
(522, 'Trichur', 18, 'Kerala'),
(523, 'Trivandrum North', 18, 'Kerala'),
(524, 'Trivandrum South', 18, 'Kerala'),
(525, 'Tuensang', 25, 'Nagaland'),
(526, 'Tumkur', 17, 'Karnataka'),
(527, 'Tuticorin', 31, 'Tamil Nadu'),
(528, 'Udaipur', 29, 'Rajasthan'),
(529, 'Udham Singh Nagar', 35, 'Uttarakhand'),
(530, 'Udhampur', 15, 'Jammu & Kashmir'),
(531, 'Udupi', 17, 'Karnataka'),
(532, 'Ujjain', 20, 'Madhya Pradesh'),
(533, 'Ukhrul', 22, 'Manipur'),
(534, 'Una', 14, 'Himachal Pradesh'),
(535, 'Unnao', 34, 'Uttar Pradesh'),
(536, 'Upper Siang', 3, 'Arunachal Pradesh'),
(537, 'Upper Subansiri', 3, 'Arunachal Pradesh'),
(538, 'Uttarkashi', 35, 'Uttarakhand'),
(539, 'Vadakara', 18, 'Kerala'),
(540, 'Vadodara East', 12, 'Gujarat'),
(541, 'Vadodara West', 12, 'Gujarat'),
(542, 'Vaishali', 5, 'Bihar'),
(543, 'Valsad', 12, 'Gujarat'),
(544, 'Varanasi', 34, 'Uttar Pradesh'),
(545, 'Vellore', 31, 'Tamil Nadu'),
(546, 'Vidisha', 20, 'Madhya Pradesh'),
(547, 'Vijayawada', 2, 'Andhra Pradesh'),
(548, 'Virudhunagar', 31, 'Tamil Nadu'),
(549, 'Visakhapatnam', 2, 'Andhra Pradesh'),
(550, 'Vizianagaram', 2, 'Andhra Pradesh'),
(551, 'Vriddhachalam', 31, 'Tamil Nadu'),
(552, 'Wanaparthy', 32, 'Telangana'),
(553, 'Warangal', 32, 'Telangana'),
(554, 'Wardha', 21, 'Maharashtra'),
(555, 'Washim', 21, 'Maharashtra'),
(556, 'West Champaran', 5, 'Bihar'),
(557, 'West Garo Hills', 23, 'Meghalaya'),
(558, 'West Kameng', 3, 'Arunachal Pradesh'),
(559, 'West Khasi Hills', 23, 'Meghalaya'),
(560, 'West Siang', 3, 'Arunachal Pradesh'),
(561, 'West Sikkim', 30, 'Sikkim'),
(562, 'West Tripura', 33, 'Tripura'),
(563, 'Wokha', 25, 'Nagaland'),
(564, 'Yavatmal', 21, 'Maharashtra'),
(565, 'Zunhebotto', 25, 'Nagaland');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
(1, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `first_name` int(100) NOT NULL,
  `last_name` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `experience` int(11) NOT NULL,
  `consultation_fee` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pin` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_affilliation`
--

CREATE TABLE `hospital_affilliation` (
  `hospital_affilliation_id` int(11) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `is_review_anonymous` varchar(10) NOT NULL,
  `wait_time_rating` int(11) NOT NULL,
  `bedside_manner_rating` int(11) NOT NULL,
  `overall_rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `is_doctor_recommended` varchar(10) NOT NULL,
  `account_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `specialization_id` int(11) NOT NULL,
  `specialization_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Hospital'),
(3, 'Doctor'),
(4, 'Patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_status`
--
ALTER TABLE `appointment_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `hospital_affilliation`
--
ALTER TABLE `hospital_affilliation`
  ADD PRIMARY KEY (`hospital_affilliation_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`specialization_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_status`
--
ALTER TABLE `appointment_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `auth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_affilliation`
--
ALTER TABLE `hospital_affilliation`
  MODIFY `hospital_affilliation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `specialization_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'medplus', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"medplus\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"medplus\",\"table\":\"doctor\"},{\"db\":\"medplus\",\"table\":\"user_roles\"},{\"db\":\"medplus\",\"table\":\"cities\"},{\"db\":\"medplus\",\"table\":\"hospital\"},{\"db\":\"medplus\",\"table\":\"auth\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-01-18 11:02:59', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
