-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 03:39 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_keys`
--

CREATE TABLE `tbl_api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime NOT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api_keys`
--

INSERT INTO `tbl_api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `last_update`) VALUES
(1, 1, 'MEDPLUS@123', 1, 0, 0, NULL, '2017-10-12 13:34:33', '2019-01-25 15:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `channel_id` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`id`, `date`, `description`, `hospital_id`, `doctor_id`, `account_id`, `status_id`, `start_time`, `end_time`, `channel_id`, `last_update`) VALUES
(1, '2019-03-18', '', 1000, 10001, 1000, 1, '24:15:25', '00:00:00', 0, '2019-02-28 19:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_status`
--

CREATE TABLE `tbl_appointment_status` (
  `id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth`
--

CREATE TABLE `tbl_auth` (
  `auth_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_role` char(1) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_auth`
--

INSERT INTO `tbl_auth` (`auth_id`, `email`, `phone`, `password`, `user_role`, `last_update`, `is_active`, `created`) VALUES
(1000, 'admin@medplus.com', '', '123456', '1', '2019-03-22 13:11:04', 1, '2019-01-26 04:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_channel`
--

CREATE TABLE `tbl_booking_channel` (
  `channel_id` int(11) NOT NULL,
  `channel_name` varchar(100) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `state_id` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`city_id`, `city_name`, `state_id`, `last_update`) VALUES
(1, 'Adilabad', 32, '2019-01-24 08:26:07'),
(2, 'Agra', 34, '2019-01-24 08:26:07'),
(3, 'Ahmed Nagar', 21, '2019-01-24 08:26:07'),
(4, 'Ahmedabad City', 12, '2019-01-24 08:26:07'),
(5, 'Aizawl', 24, '2019-01-24 08:26:07'),
(6, 'Ajmer', 29, '2019-01-24 08:26:07'),
(7, 'Akola', 21, '2019-01-24 08:26:07'),
(8, 'Aligarh', 34, '2019-01-24 08:26:07'),
(9, 'Allahabad', 34, '2019-01-24 08:26:07'),
(10, 'Alleppey', 18, '2019-01-24 08:26:07'),
(11, 'Almora', 35, '2019-01-24 08:26:07'),
(12, 'Alwar', 29, '2019-01-24 08:26:07'),
(13, 'Alwaye', 18, '2019-01-24 08:26:07'),
(14, 'Amalapuram', 2, '2019-01-24 08:26:07'),
(15, 'Ambala', 13, '2019-01-24 08:26:07'),
(16, 'Ambedkar Nagar', 34, '2019-01-24 08:26:07'),
(17, 'Amravati', 21, '2019-01-24 08:26:07'),
(18, 'Amreli', 12, '2019-01-24 08:26:07'),
(19, 'Amritsar', 28, '2019-01-24 08:26:07'),
(20, 'Anakapalle', 2, '2019-01-24 08:26:07'),
(21, 'Anand', 12, '2019-01-24 08:26:07'),
(22, 'Anantapur', 2, '2019-01-24 08:26:07'),
(23, 'Ananthnag', 15, '2019-01-24 08:26:07'),
(24, 'Anna Road H.O', 31, '2019-01-24 08:26:07'),
(25, 'Arakkonam', 31, '2019-01-24 08:26:07'),
(26, 'Asansol', 36, '2019-01-24 08:26:07'),
(27, 'Aska', 26, '2019-01-24 08:26:07'),
(28, 'Auraiya', 34, '2019-01-24 08:26:07'),
(29, 'Aurangabad', 21, '2019-01-24 08:26:07'),
(30, 'Aurangabad(Bihar)', 5, '2019-01-24 08:26:07'),
(31, 'Azamgarh', 34, '2019-01-24 08:26:07'),
(32, 'Bagalkot', 17, '2019-01-24 08:26:07'),
(33, 'Bageshwar', 35, '2019-01-24 08:26:07'),
(34, 'Bagpat', 34, '2019-01-24 08:26:07'),
(35, 'Bahraich', 34, '2019-01-24 08:26:07'),
(36, 'Balaghat', 20, '2019-01-24 08:26:07'),
(37, 'Balangir', 26, '2019-01-24 08:26:07'),
(38, 'Balasore', 26, '2019-01-24 08:26:07'),
(39, 'Ballia', 34, '2019-01-24 08:26:07'),
(40, 'Balrampur', 34, '2019-01-24 08:26:07'),
(41, 'Banasanktha', 12, '2019-01-24 08:26:07'),
(42, 'Banda', 34, '2019-01-24 08:26:07'),
(43, 'Bandipur', 15, '2019-01-24 08:26:07'),
(44, 'Bankura', 36, '2019-01-24 08:26:07'),
(45, 'Banswara', 29, '2019-01-24 08:26:07'),
(46, 'Barabanki', 34, '2019-01-24 08:26:07'),
(47, 'Baramulla', 15, '2019-01-24 08:26:07'),
(48, 'Baran', 29, '2019-01-24 08:26:07'),
(49, 'Bardoli', 12, '2019-01-24 08:26:07'),
(50, 'Bareilly', 34, '2019-01-24 08:26:07'),
(51, 'Barmer', 29, '2019-01-24 08:26:07'),
(52, 'Barnala', 28, '2019-01-24 08:26:07'),
(53, 'Barpeta', 4, '2019-01-24 08:26:07'),
(54, 'Bastar', 7, '2019-01-24 08:26:07'),
(55, 'Basti', 34, '2019-01-24 08:26:07'),
(56, 'Bathinda', 28, '2019-01-24 08:26:07'),
(57, 'Beed', 21, '2019-01-24 08:26:07'),
(58, 'Begusarai', 5, '2019-01-24 08:26:07'),
(59, 'Belgaum', 17, '2019-01-24 08:26:07'),
(60, 'Bellary', 17, '2019-01-24 08:26:07'),
(61, 'Bengaluru East', 17, '2019-01-24 08:26:07'),
(62, 'Bengaluru South', 17, '2019-01-24 08:26:07'),
(63, 'Bengaluru West', 17, '2019-01-24 08:26:07'),
(64, 'Berhampur', 26, '2019-01-24 08:26:07'),
(65, 'Bhadrak', 26, '2019-01-24 08:26:07'),
(66, 'Bhagalpur', 5, '2019-01-24 08:26:07'),
(67, 'Bhandara', 21, '2019-01-24 08:26:07'),
(68, 'Bharatpur', 29, '2019-01-24 08:26:07'),
(69, 'Bharuch', 12, '2019-01-24 08:26:07'),
(70, 'Bhavnagar', 12, '2019-01-24 08:26:07'),
(71, 'Bhilwara', 29, '2019-01-24 08:26:07'),
(72, 'Bhimavaram', 2, '2019-01-24 08:26:07'),
(73, 'Bhiwani', 13, '2019-01-24 08:26:07'),
(74, 'Bhojpur', 5, '2019-01-24 08:26:07'),
(75, 'Bhopal', 20, '2019-01-24 08:26:07'),
(76, 'Bhubaneswar', 26, '2019-01-24 08:26:07'),
(77, 'Bidar', 17, '2019-01-24 08:26:07'),
(78, 'Bijapur', 17, '2019-01-24 08:26:07'),
(79, 'Bijnor', 34, '2019-01-24 08:26:07'),
(80, 'Bikaner', 29, '2019-01-24 08:26:07'),
(81, 'Bilaspur', 7, '2019-01-24 08:26:07'),
(82, 'Birbhum', 36, '2019-01-24 08:26:07'),
(83, 'Bishnupur', 22, '2019-01-24 08:26:07'),
(84, 'Bongaigaon', 4, '2019-01-24 08:26:07'),
(85, 'Budaun', 34, '2019-01-24 08:26:07'),
(86, 'Budgam', 15, '2019-01-24 08:26:07'),
(87, 'Bulandshahr', 34, '2019-01-24 08:26:07'),
(88, 'Buldhana', 21, '2019-01-24 08:26:07'),
(89, 'Bundi', 29, '2019-01-24 08:26:07'),
(90, 'Burdwan', 36, '2019-01-24 08:26:07'),
(91, 'Cachar', 4, '2019-01-24 08:26:07'),
(92, 'Calicut', 18, '2019-01-24 08:26:07'),
(93, 'Carnicobar', 1, '2019-01-24 08:26:07'),
(94, 'Chamba', 14, '2019-01-24 08:26:07'),
(95, 'Chamoli', 35, '2019-01-24 08:26:07'),
(96, 'Champawat', 35, '2019-01-24 08:26:07'),
(97, 'Champhai', 24, '2019-01-24 08:26:07'),
(98, 'Chandauli', 34, '2019-01-24 08:26:07'),
(99, 'Chandel', 22, '2019-01-24 08:26:07'),
(100, 'Chandigarh', 6, '2019-01-24 08:26:07'),
(101, 'Chandrapur', 21, '2019-01-24 08:26:07'),
(102, 'Changanacherry', 18, '2019-01-24 08:26:07'),
(103, 'Changlang', 3, '2019-01-24 08:26:07'),
(104, 'Channapatna', 17, '2019-01-24 08:26:07'),
(105, 'Chengalpattu', 31, '2019-01-24 08:26:07'),
(106, 'Chennai City Central', 31, '2019-01-24 08:26:07'),
(107, 'Chennai City North', 31, '2019-01-24 08:26:07'),
(108, 'Chennai City South', 31, '2019-01-24 08:26:07'),
(109, 'Chhatarpur', 20, '2019-01-24 08:26:07'),
(110, 'Chhindwara', 20, '2019-01-24 08:26:07'),
(111, 'Chikmagalur', 17, '2019-01-24 08:26:07'),
(112, 'Chikodi', 17, '2019-01-24 08:26:07'),
(113, 'Chitradurga', 17, '2019-01-24 08:26:07'),
(114, 'Chitrakoot', 34, '2019-01-24 08:26:07'),
(115, 'Chittoor', 2, '2019-01-24 08:26:07'),
(116, 'Chittorgarh', 29, '2019-01-24 08:26:07'),
(117, 'Churachandpur', 22, '2019-01-24 08:26:07'),
(118, 'Churu', 29, '2019-01-24 08:26:07'),
(119, 'Coimbatore', 31, '2019-01-24 08:26:07'),
(120, 'Contai', 36, '2019-01-24 08:26:07'),
(121, 'Cooch Behar', 36, '2019-01-24 08:26:07'),
(122, 'Cuddalore', 31, '2019-01-24 08:26:07'),
(123, 'Cuddapah', 2, '2019-01-24 08:26:07'),
(124, 'Cuttack City', 26, '2019-01-24 08:26:07'),
(125, 'Cuttack North', 26, '2019-01-24 08:26:07'),
(126, 'Cuttack South', 26, '2019-01-24 08:26:07'),
(127, 'Dadra & Nagar Haveli', 8, '2019-01-24 08:26:07'),
(128, 'Daman', 9, '2019-01-24 08:26:07'),
(129, 'Darbhanga', 5, '2019-01-24 08:26:07'),
(130, 'Darjiling', 36, '2019-01-24 08:26:07'),
(131, 'Darrang', 4, '2019-01-24 08:26:07'),
(132, 'Dausa', 29, '2019-01-24 08:26:07'),
(133, 'Dehra Gopipur', 14, '2019-01-24 08:26:07'),
(134, 'Dehradun', 35, '2019-01-24 08:26:07'),
(135, 'Delhi', 10, '2019-01-24 08:26:07'),
(136, 'Deoria', 34, '2019-01-24 08:26:07'),
(137, 'Dhalai', 33, '2019-01-24 08:26:07'),
(138, 'Dhanbad', 16, '2019-01-24 08:26:07'),
(139, 'Dharamsala', 14, '2019-01-24 08:26:07'),
(140, 'Dharmapuri', 31, '2019-01-24 08:26:07'),
(141, 'Dharwad', 17, '2019-01-24 08:26:07'),
(142, 'Dhemaji', 4, '2019-01-24 08:26:07'),
(143, 'Dhenkanal', 26, '2019-01-24 08:26:07'),
(144, 'Dholpur', 29, '2019-01-24 08:26:07'),
(145, 'Dhubri', 4, '2019-01-24 08:26:07'),
(146, 'Dhule', 21, '2019-01-24 08:26:07'),
(147, 'Dibang Valley', 3, '2019-01-24 08:26:07'),
(148, 'Dibrugarh', 4, '2019-01-24 08:26:07'),
(149, 'Diglipur', 1, '2019-01-24 08:26:07'),
(150, 'Dimapur', 25, '2019-01-24 08:26:07'),
(151, 'Dindigul', 31, '2019-01-24 08:26:07'),
(152, 'Diu', 9, '2019-01-24 08:26:07'),
(153, 'Doda', 15, '2019-01-24 08:26:07'),
(154, 'Dungarpur', 29, '2019-01-24 08:26:07'),
(155, 'Durg', 7, '2019-01-24 08:26:07'),
(156, 'East Champaran', 5, '2019-01-24 08:26:07'),
(157, 'East Garo Hills', 23, '2019-01-24 08:26:07'),
(158, 'East Kameng', 3, '2019-01-24 08:26:07'),
(159, 'East Khasi Hills', 23, '2019-01-24 08:26:07'),
(160, 'East Siang', 3, '2019-01-24 08:26:07'),
(161, 'East Sikkim', 30, '2019-01-24 08:26:07'),
(162, 'Eluru', 2, '2019-01-24 08:26:07'),
(163, 'Ernakulam', 18, '2019-01-24 08:26:07'),
(164, 'Erode', 31, '2019-01-24 08:26:07'),
(165, 'Etah', 34, '2019-01-24 08:26:07'),
(166, 'Etawah', 34, '2019-01-24 08:26:07'),
(167, 'Faizabad', 34, '2019-01-24 08:26:07'),
(168, 'Faridabad', 13, '2019-01-24 08:26:07'),
(169, 'Faridkot', 28, '2019-01-24 08:26:07'),
(170, 'Farrukhabad', 34, '2019-01-24 08:26:07'),
(171, 'Fatehgarh Sahib', 28, '2019-01-24 08:26:07'),
(172, 'Fatehpur', 34, '2019-01-24 08:26:07'),
(173, 'Fazilka', 28, '2019-01-24 08:26:07'),
(174, 'Ferrargunj', 1, '2019-01-24 08:26:07'),
(175, 'Firozabad', 34, '2019-01-24 08:26:07'),
(176, 'Firozpur', 28, '2019-01-24 08:26:07'),
(177, 'Gadag', 17, '2019-01-24 08:26:07'),
(178, 'Gadchiroli', 21, '2019-01-24 08:26:07'),
(179, 'Gandhinagar', 12, '2019-01-24 08:26:07'),
(180, 'Ganganagar', 29, '2019-01-24 08:26:07'),
(181, 'Gautam Buddha Nagar', 34, '2019-01-24 08:26:07'),
(182, 'Gaya', 5, '2019-01-24 08:26:07'),
(183, 'Ghaziabad', 34, '2019-01-24 08:26:07'),
(184, 'Ghazipur', 34, '2019-01-24 08:26:07'),
(185, 'Giridih', 16, '2019-01-24 08:26:07'),
(186, 'Goa', 11, '2019-01-24 08:26:07'),
(187, 'Goalpara', 4, '2019-01-24 08:26:07'),
(188, 'Gokak', 17, '2019-01-24 08:26:07'),
(189, 'Golaghat', 4, '2019-01-24 08:26:07'),
(190, 'Gonda', 34, '2019-01-24 08:26:07'),
(191, 'Gondal', 12, '2019-01-24 08:26:07'),
(192, 'Gondia', 21, '2019-01-24 08:26:07'),
(193, 'Gorakhpur', 34, '2019-01-24 08:26:07'),
(194, 'Gudivada', 2, '2019-01-24 08:26:07'),
(195, 'Gudur', 2, '2019-01-24 08:26:07'),
(196, 'Gulbarga', 17, '2019-01-24 08:26:07'),
(197, 'Guna', 20, '2019-01-24 08:26:07'),
(198, 'Guntur', 2, '2019-01-24 08:26:07'),
(199, 'Gurdaspur', 28, '2019-01-24 08:26:07'),
(200, 'Gurugram', 13, '2019-01-24 08:26:07'),
(201, 'Gwalior', 20, '2019-01-24 08:26:07'),
(202, 'Hailakandi', 4, '2019-01-24 08:26:07'),
(203, 'Hamirpur (HP)', 14, '2019-01-24 08:26:07'),
(204, 'Hamirpur (UP)', 34, '2019-01-24 08:26:07'),
(205, 'Hanamkonda', 32, '2019-01-24 08:26:07'),
(206, 'Hanumangarh', 29, '2019-01-24 08:26:07'),
(207, 'Hardoi', 34, '2019-01-24 08:26:07'),
(208, 'Haridwar', 35, '2019-01-24 08:26:07'),
(209, 'Hassan', 17, '2019-01-24 08:26:07'),
(210, 'Hathras', 34, '2019-01-24 08:26:07'),
(211, 'Haveri', 17, '2019-01-24 08:26:07'),
(212, 'Hazaribagh', 16, '2019-01-24 08:26:07'),
(213, 'Hindupur', 2, '2019-01-24 08:26:07'),
(214, 'Hingoli', 21, '2019-01-24 08:26:07'),
(215, 'Hissar', 13, '2019-01-24 08:26:07'),
(216, 'Hooghly', 36, '2019-01-24 08:26:07'),
(217, 'Hoshangabad', 20, '2019-01-24 08:26:07'),
(218, 'Hoshiarpur', 28, '2019-01-24 08:26:07'),
(219, 'Howrah', 36, '2019-01-24 08:26:07'),
(220, 'Hut Bay', 1, '2019-01-24 08:26:07'),
(221, 'Hyderabad City', 32, '2019-01-24 08:26:07'),
(222, 'Hyderabad South East', 32, '2019-01-24 08:26:07'),
(223, 'Idukki', 18, '2019-01-24 08:26:07'),
(224, 'Imphal East', 22, '2019-01-24 08:26:07'),
(225, 'Imphal West', 22, '2019-01-24 08:26:07'),
(226, 'Indore City', 20, '2019-01-24 08:26:07'),
(227, 'Indore Moffusil', 20, '2019-01-24 08:26:07'),
(228, 'Irinjalakuda', 18, '2019-01-24 08:26:07'),
(229, 'Jabalpur', 20, '2019-01-24 08:26:07'),
(230, 'Jaintia Hills', 23, '2019-01-24 08:26:07'),
(231, 'Jaipur', 29, '2019-01-24 08:26:07'),
(232, 'Jaisalmer', 29, '2019-01-24 08:26:07'),
(233, 'Jalandhar', 28, '2019-01-24 08:26:07'),
(234, 'Jalaun', 34, '2019-01-24 08:26:07'),
(235, 'Jalgaon', 21, '2019-01-24 08:26:07'),
(236, 'Jalna', 21, '2019-01-24 08:26:07'),
(237, 'Jalor', 29, '2019-01-24 08:26:07'),
(238, 'Jalpaiguri', 36, '2019-01-24 08:26:07'),
(239, 'Jammu', 15, '2019-01-24 08:26:07'),
(240, 'Jamnagar', 12, '2019-01-24 08:26:07'),
(241, 'Jaunpur', 34, '2019-01-24 08:26:07'),
(242, 'Jhalawar', 29, '2019-01-24 08:26:07'),
(243, 'Jhansi', 34, '2019-01-24 08:26:07'),
(244, 'Jhujhunu', 29, '2019-01-24 08:26:07'),
(245, 'Jodhpur', 29, '2019-01-24 08:26:07'),
(246, 'Jorhat', 4, '2019-01-24 08:26:07'),
(247, 'Junagadh', 12, '2019-01-24 08:26:07'),
(248, 'Jyotiba Phule Nagar', 34, '2019-01-24 08:26:07'),
(249, 'Kakinada', 2, '2019-01-24 08:26:07'),
(250, 'Kalahandi', 26, '2019-01-24 08:26:07'),
(251, 'Kamrup', 4, '2019-01-24 08:26:07'),
(252, 'Kanchipuram', 31, '2019-01-24 08:26:07'),
(253, 'Kannauj', 34, '2019-01-24 08:26:07'),
(254, 'Kanniyakumari', 31, '2019-01-24 08:26:07'),
(255, 'Kannur', 18, '2019-01-24 08:26:07'),
(256, 'Kanpur Dehat', 34, '2019-01-24 08:26:07'),
(257, 'Kanpur Nagar', 34, '2019-01-24 08:26:07'),
(258, 'Kapurthala', 28, '2019-01-24 08:26:07'),
(259, 'Karaikal', 27, '2019-01-24 08:26:07'),
(260, 'Karaikudi', 31, '2019-01-24 08:26:07'),
(261, 'Karauli', 29, '2019-01-24 08:26:07'),
(262, 'Karbi Anglong', 4, '2019-01-24 08:26:07'),
(263, 'Kargil', 15, '2019-01-24 08:26:07'),
(264, 'Karimganj', 4, '2019-01-24 08:26:07'),
(265, 'Karimnagar', 32, '2019-01-24 08:26:07'),
(266, 'Karnal', 13, '2019-01-24 08:26:07'),
(267, 'Karur', 31, '2019-01-24 08:26:07'),
(268, 'Karwar', 17, '2019-01-24 08:26:07'),
(269, 'Kasaragod', 18, '2019-01-24 08:26:07'),
(270, 'Kathua', 15, '2019-01-24 08:26:07'),
(271, 'Kaushambi', 34, '2019-01-24 08:26:07'),
(272, 'Keonjhar', 26, '2019-01-24 08:26:07'),
(273, 'Khammam (AP)', 2, '2019-01-24 08:26:07'),
(274, 'Khammam (TL)', 32, '2019-01-24 08:26:07'),
(275, 'Khandwa', 20, '2019-01-24 08:26:07'),
(276, 'Kheda', 12, '2019-01-24 08:26:07'),
(277, 'Kheri', 34, '2019-01-24 08:26:07'),
(278, 'Kiphire', 25, '2019-01-24 08:26:07'),
(279, 'Kodagu', 17, '2019-01-24 08:26:07'),
(280, 'Kohima', 25, '2019-01-24 08:26:07'),
(281, 'Kokrajhar', 4, '2019-01-24 08:26:07'),
(282, 'Kolar', 17, '2019-01-24 08:26:07'),
(283, 'Kolasib', 24, '2019-01-24 08:26:07'),
(284, 'Kolhapur', 21, '2019-01-24 08:26:07'),
(285, 'Kolkata', 36, '2019-01-24 08:26:07'),
(286, 'Koraput', 26, '2019-01-24 08:26:07'),
(287, 'Kota', 29, '2019-01-24 08:26:07'),
(288, 'Kottayam', 18, '2019-01-24 08:26:07'),
(289, 'Kovilpatti', 31, '2019-01-24 08:26:07'),
(290, 'Krishnagiri', 31, '2019-01-24 08:26:07'),
(291, 'Kulgam', 15, '2019-01-24 08:26:07'),
(292, 'Kumbakonam', 31, '2019-01-24 08:26:07'),
(293, 'Kupwara', 15, '2019-01-24 08:26:07'),
(294, 'Kurnool', 2, '2019-01-24 08:26:07'),
(295, 'Kurukshetra', 13, '2019-01-24 08:26:07'),
(296, 'Kurung Kumey', 3, '2019-01-24 08:26:07'),
(297, 'Kushinagar', 34, '2019-01-24 08:26:07'),
(298, 'Kutch', 12, '2019-01-24 08:26:07'),
(299, 'Lakhimpur', 4, '2019-01-24 08:26:07'),
(300, 'Lakshadweep', 19, '2019-01-24 08:26:07'),
(301, 'Lalitpur', 34, '2019-01-24 08:26:07'),
(302, 'Latur', 21, '2019-01-24 08:26:07'),
(303, 'Lawngtlai', 24, '2019-01-24 08:26:07'),
(304, 'Leh', 15, '2019-01-24 08:26:07'),
(305, 'Lohit', 3, '2019-01-24 08:26:07'),
(306, 'Longleng', 25, '2019-01-24 08:26:07'),
(307, 'Lower Subansiri', 3, '2019-01-24 08:26:07'),
(308, 'Lucknow', 34, '2019-01-24 08:26:07'),
(309, 'Ludhiana', 28, '2019-01-24 08:26:07'),
(310, 'Lunglei', 24, '2019-01-24 08:26:07'),
(311, 'Machilipatnam', 2, '2019-01-24 08:26:07'),
(312, 'Madhubani', 5, '2019-01-24 08:26:07'),
(313, 'Madurai', 31, '2019-01-24 08:26:07'),
(314, 'Mahabubnagar', 32, '2019-01-24 08:26:07'),
(315, 'Maharajganj', 34, '2019-01-24 08:26:07'),
(316, 'Mahesana', 12, '2019-01-24 08:26:07'),
(317, 'Mahoba', 34, '2019-01-24 08:26:07'),
(318, 'Mainpuri', 34, '2019-01-24 08:26:07'),
(319, 'Malda', 36, '2019-01-24 08:26:07'),
(320, 'Mammit', 24, '2019-01-24 08:26:07'),
(321, 'Mandi', 14, '2019-01-24 08:26:07'),
(322, 'Mandsaur', 20, '2019-01-24 08:26:07'),
(323, 'Mandya', 17, '2019-01-24 08:26:07'),
(324, 'Mangalore', 17, '2019-01-24 08:26:07'),
(325, 'Manjeri', 18, '2019-01-24 08:26:07'),
(326, 'Mansa', 28, '2019-01-24 08:26:07'),
(327, 'Marigaon', 4, '2019-01-24 08:26:07'),
(328, 'Mathura', 34, '2019-01-24 08:26:07'),
(329, 'Mau', 34, '2019-01-24 08:26:07'),
(330, 'Mavelikara', 18, '2019-01-24 08:26:07'),
(331, 'Mayabander', 1, '2019-01-24 08:26:07'),
(332, 'Mayiladuthurai', 31, '2019-01-24 08:26:07'),
(333, 'Mayurbhanj', 26, '2019-01-24 08:26:07'),
(334, 'Medak', 32, '2019-01-24 08:26:07'),
(335, 'Meerut', 34, '2019-01-24 08:26:07'),
(336, 'Meghalaya', 23, '2019-01-24 08:26:07'),
(337, 'Midnapore', 36, '2019-01-24 08:26:07'),
(338, 'Mirzapur', 34, '2019-01-24 08:26:07'),
(339, 'Moga', 28, '2019-01-24 08:26:07'),
(340, 'Mohali', 28, '2019-01-24 08:26:07'),
(341, 'Mokokchung', 25, '2019-01-24 08:26:07'),
(342, 'Mon', 25, '2019-01-24 08:26:07'),
(343, 'Monghyr', 5, '2019-01-24 08:26:07'),
(344, 'Moradabad', 34, '2019-01-24 08:26:07'),
(345, 'Morena', 20, '2019-01-24 08:26:07'),
(346, 'Muktsar', 28, '2019-01-24 08:26:07'),
(347, 'Mumbai', 21, '2019-01-24 08:26:07'),
(348, 'Murshidabad', 36, '2019-01-24 08:26:07'),
(349, 'Muzaffarnagar', 34, '2019-01-24 08:26:07'),
(350, 'Muzaffarpur', 5, '2019-01-24 08:26:07'),
(351, 'Mysore', 17, '2019-01-24 08:26:07'),
(352, 'Nadia', 36, '2019-01-24 08:26:07'),
(353, 'Nagaon', 4, '2019-01-24 08:26:07'),
(354, 'Nagapattinam', 31, '2019-01-24 08:26:07'),
(355, 'Nagaur', 29, '2019-01-24 08:26:07'),
(356, 'Nagpur', 21, '2019-01-24 08:26:07'),
(357, 'Nainital', 35, '2019-01-24 08:26:07'),
(358, 'Nalanda', 5, '2019-01-24 08:26:07'),
(359, 'Nalbari', 4, '2019-01-24 08:26:07'),
(360, 'Nalgonda', 32, '2019-01-24 08:26:07'),
(361, 'Namakkal', 31, '2019-01-24 08:26:07'),
(362, 'Nancorie', 1, '2019-01-24 08:26:07'),
(363, 'Nancowrie', 1, '2019-01-24 08:26:07'),
(364, 'Nanded', 21, '2019-01-24 08:26:07'),
(365, 'Nandurbar', 21, '2019-01-24 08:26:07'),
(366, 'Nandyal', 2, '2019-01-24 08:26:07'),
(367, 'Nanjangud', 17, '2019-01-24 08:26:07'),
(368, 'Narasaraopet', 2, '2019-01-24 08:26:07'),
(369, 'Nashik', 21, '2019-01-24 08:26:07'),
(370, 'Navsari', 12, '2019-01-24 08:26:07'),
(371, 'Nawadha', 5, '2019-01-24 08:26:07'),
(372, 'Nawanshahr', 28, '2019-01-24 08:26:07'),
(373, 'Nellore', 2, '2019-01-24 08:26:07'),
(374, 'Nilgiris', 31, '2019-01-24 08:26:07'),
(375, 'Nizamabad', 32, '2019-01-24 08:26:07'),
(376, 'North 24 Parganas', 36, '2019-01-24 08:26:07'),
(377, 'North Cachar Hills', 4, '2019-01-24 08:26:07'),
(378, 'North Dinajpur', 36, '2019-01-24 08:26:07'),
(379, 'North Sikkim', 30, '2019-01-24 08:26:07'),
(380, 'North Tripura', 33, '2019-01-24 08:26:07'),
(381, 'Osmanabad', 21, '2019-01-24 08:26:07'),
(382, 'Ottapalam', 18, '2019-01-24 08:26:07'),
(383, 'Palamau', 16, '2019-01-24 08:26:07'),
(384, 'Palghat', 18, '2019-01-24 08:26:07'),
(385, 'Pali', 29, '2019-01-24 08:26:07'),
(386, 'Panchmahals', 12, '2019-01-24 08:26:07'),
(387, 'Papum Pare', 3, '2019-01-24 08:26:07'),
(388, 'Parbhani', 21, '2019-01-24 08:26:07'),
(389, 'Parvathipuram', 2, '2019-01-24 08:26:07'),
(390, 'Patan', 12, '2019-01-24 08:26:07'),
(391, 'Pathanamthitta', 18, '2019-01-24 08:26:07'),
(392, 'Patiala', 28, '2019-01-24 08:26:07'),
(393, 'Patna', 5, '2019-01-24 08:26:07'),
(394, 'Pattukottai', 31, '2019-01-24 08:26:07'),
(395, 'Pauri Garhwal', 35, '2019-01-24 08:26:07'),
(396, 'Peddapalli', 32, '2019-01-24 08:26:07'),
(397, 'Peren', 25, '2019-01-24 08:26:07'),
(398, 'Phek', 25, '2019-01-24 08:26:07'),
(399, 'Phulbani', 26, '2019-01-24 08:26:07'),
(400, 'Pilibhit', 34, '2019-01-24 08:26:07'),
(401, 'Pithoragarh', 35, '2019-01-24 08:26:07'),
(402, 'Poducherry (PD)', 27, '2019-01-24 08:26:07'),
(403, 'Poducherry (TN)', 31, '2019-01-24 08:26:07'),
(404, 'Pollachi', 31, '2019-01-24 08:26:07'),
(405, 'Poonch', 15, '2019-01-24 08:26:07'),
(406, 'Porbandar', 12, '2019-01-24 08:26:07'),
(407, 'Port Blair', 1, '2019-01-24 08:26:07'),
(408, 'Prakasam', 2, '2019-01-24 08:26:07'),
(409, 'Pratapgarh', 34, '2019-01-24 08:26:07'),
(410, 'Proddatur', 2, '2019-01-24 08:26:07'),
(411, 'Pudukkottai', 31, '2019-01-24 08:26:07'),
(412, 'Pulwama', 15, '2019-01-24 08:26:07'),
(413, 'Pune', 21, '2019-01-24 08:26:07'),
(414, 'Puri', 26, '2019-01-24 08:26:07'),
(415, 'Purnea', 5, '2019-01-24 08:26:07'),
(416, 'Purulia', 36, '2019-01-24 08:26:07'),
(417, 'Puttur', 17, '2019-01-24 08:26:07'),
(418, 'Quilon', 18, '2019-01-24 08:26:07'),
(419, 'Raebareli', 34, '2019-01-24 08:26:07'),
(420, 'Raichur', 17, '2019-01-24 08:26:07'),
(421, 'Raigarh (CT)', 7, '2019-01-24 08:26:07'),
(422, 'Raigarh (MH)', 21, '2019-01-24 08:26:07'),
(423, 'Raipur', 7, '2019-01-24 08:26:07'),
(424, 'Rajahmundry', 2, '2019-01-24 08:26:07'),
(425, 'Rajauri', 15, '2019-01-24 08:26:07'),
(426, 'Rajkot', 12, '2019-01-24 08:26:07'),
(427, 'Rajsamand', 29, '2019-01-24 08:26:07'),
(428, 'Ramanathapuram', 31, '2019-01-24 08:26:07'),
(429, 'Rampur', 34, '2019-01-24 08:26:07'),
(430, 'Rampur Bushahr', 14, '2019-01-24 08:26:07'),
(431, 'Ranchi', 16, '2019-01-24 08:26:07'),
(432, 'Rangat', 1, '2019-01-24 08:26:07'),
(433, 'Ratlam', 20, '2019-01-24 08:26:07'),
(434, 'Ratnagiri', 21, '2019-01-24 08:26:07'),
(435, 'Reasi', 15, '2019-01-24 08:26:07'),
(436, 'Rewa', 20, '2019-01-24 08:26:07'),
(437, 'Ri Bhoi', 23, '2019-01-24 08:26:07'),
(438, 'Rohtak', 13, '2019-01-24 08:26:07'),
(439, 'Rohtas', 5, '2019-01-24 08:26:07'),
(440, 'Ropar', 28, '2019-01-24 08:26:07'),
(441, 'Rudraprayag', 35, '2019-01-24 08:26:07'),
(442, 'Rupnagar', 28, '2019-01-24 08:26:07'),
(443, 'Sabarkantha', 12, '2019-01-24 08:26:07'),
(444, 'Sagar', 20, '2019-01-24 08:26:07'),
(445, 'Saharanpur', 34, '2019-01-24 08:26:07'),
(446, 'Saharsa', 5, '2019-01-24 08:26:07'),
(447, 'Salem East', 31, '2019-01-24 08:26:07'),
(448, 'Salem West', 31, '2019-01-24 08:26:07'),
(449, 'Samastipur', 5, '2019-01-24 08:26:07'),
(450, 'Sambalpur', 26, '2019-01-24 08:26:07'),
(451, 'Sangareddy', 32, '2019-01-24 08:26:07'),
(452, 'Sangli', 21, '2019-01-24 08:26:07'),
(453, 'Sangrur', 28, '2019-01-24 08:26:07'),
(454, 'Sant Kabir Nagar', 34, '2019-01-24 08:26:07'),
(455, 'Sant Ravidas Nagar', 34, '2019-01-24 08:26:07'),
(456, 'Santhal Parganas', 16, '2019-01-24 08:26:07'),
(457, 'Saran', 5, '2019-01-24 08:26:07'),
(458, 'Satara', 21, '2019-01-24 08:26:07'),
(459, 'Sawai Madhopur', 29, '2019-01-24 08:26:07'),
(460, 'Secunderabad', 32, '2019-01-24 08:26:07'),
(461, 'Sehore', 20, '2019-01-24 08:26:07'),
(462, 'Senapati', 22, '2019-01-24 08:26:07'),
(463, 'Serchhip', 24, '2019-01-24 08:26:07'),
(464, 'Shahdol', 20, '2019-01-24 08:26:07'),
(465, 'Shahjahanpur', 34, '2019-01-24 08:26:07'),
(466, 'Shimla', 14, '2019-01-24 08:26:07'),
(467, 'Shimoga', 17, '2019-01-24 08:26:07'),
(468, 'Shrawasti', 34, '2019-01-24 08:26:07'),
(469, 'Sibsagar', 4, '2019-01-24 08:26:07'),
(470, 'Siddharthnagar', 34, '2019-01-24 08:26:07'),
(471, 'Sikar', 29, '2019-01-24 08:26:07'),
(472, 'Sindhudurg', 21, '2019-01-24 08:26:07'),
(473, 'Singhbhum', 16, '2019-01-24 08:26:07'),
(474, 'Sirohi', 29, '2019-01-24 08:26:07'),
(475, 'Sirsi', 17, '2019-01-24 08:26:07'),
(476, 'Sitamarhi', 5, '2019-01-24 08:26:07'),
(477, 'Sitapur', 34, '2019-01-24 08:26:07'),
(478, 'Sivaganga', 31, '2019-01-24 08:26:07'),
(479, 'Siwan', 5, '2019-01-24 08:26:07'),
(480, 'Solan', 14, '2019-01-24 08:26:07'),
(481, 'Solapur', 21, '2019-01-24 08:26:07'),
(482, 'Sonbhadra', 34, '2019-01-24 08:26:07'),
(483, 'Sonepat', 13, '2019-01-24 08:26:07'),
(484, 'Sonitpur', 4, '2019-01-24 08:26:07'),
(485, 'South 24 Parganas', 36, '2019-01-24 08:26:07'),
(486, 'South Dinajpur', 36, '2019-01-24 08:26:07'),
(487, 'South Garo Hills', 23, '2019-01-24 08:26:07'),
(488, 'South Sikkim', 30, '2019-01-24 08:26:07'),
(489, 'South Tripura', 33, '2019-01-24 08:26:07'),
(490, 'Srikakulam', 2, '2019-01-24 08:26:07'),
(491, 'Srinagar', 15, '2019-01-24 08:26:07'),
(492, 'Srirangam', 31, '2019-01-24 08:26:07'),
(493, 'Sultanpur', 34, '2019-01-24 08:26:07'),
(494, 'Sundargarh', 26, '2019-01-24 08:26:07'),
(495, 'Surat', 12, '2019-01-24 08:26:07'),
(496, 'Surendranagar', 12, '2019-01-24 08:26:07'),
(497, 'Suryapet', 32, '2019-01-24 08:26:07'),
(498, 'Tadepalligudem', 2, '2019-01-24 08:26:07'),
(499, 'Tambaram', 31, '2019-01-24 08:26:07'),
(500, 'Tamenglong', 22, '2019-01-24 08:26:07'),
(501, 'Tamluk', 36, '2019-01-24 08:26:07'),
(502, 'Tarn Taran', 28, '2019-01-24 08:26:07'),
(503, 'Tawang', 3, '2019-01-24 08:26:07'),
(504, 'Tehri Garhwal', 35, '2019-01-24 08:26:07'),
(505, 'Tenali', 2, '2019-01-24 08:26:07'),
(506, 'Thalassery', 18, '2019-01-24 08:26:07'),
(507, 'Thane', 21, '2019-01-24 08:26:07'),
(508, 'Thanjavur', 31, '2019-01-24 08:26:07'),
(509, 'Theni', 31, '2019-01-24 08:26:07'),
(510, 'Thoubal', 22, '2019-01-24 08:26:07'),
(511, 'Tinsukia', 4, '2019-01-24 08:26:07'),
(512, 'Tirap', 3, '2019-01-24 08:26:07'),
(513, 'Tiruchirapalli', 31, '2019-01-24 08:26:07'),
(514, 'Tirunelveli', 31, '2019-01-24 08:26:07'),
(515, 'Tirupati', 2, '2019-01-24 08:26:07'),
(516, 'Tirupattur', 31, '2019-01-24 08:26:07'),
(517, 'Tirupur', 31, '2019-01-24 08:26:07'),
(518, 'Tirur', 18, '2019-01-24 08:26:07'),
(519, 'Tiruvalla', 18, '2019-01-24 08:26:07'),
(520, 'Tiruvannamalai', 31, '2019-01-24 08:26:07'),
(521, 'Tonk', 29, '2019-01-24 08:26:07'),
(522, 'Trichur', 18, '2019-01-24 08:26:07'),
(523, 'Trivandrum North', 18, '2019-01-24 08:26:07'),
(524, 'Trivandrum South', 18, '2019-01-24 08:26:07'),
(525, 'Tuensang', 25, '2019-01-24 08:26:07'),
(526, 'Tumkur', 17, '2019-01-24 08:26:07'),
(527, 'Tuticorin', 31, '2019-01-24 08:26:07'),
(528, 'Udaipur', 29, '2019-01-24 08:26:07'),
(529, 'Udham Singh Nagar', 35, '2019-01-24 08:26:07'),
(530, 'Udhampur', 15, '2019-01-24 08:26:07'),
(531, 'Udupi', 17, '2019-01-24 08:26:07'),
(532, 'Ujjain', 20, '2019-01-24 08:26:07'),
(533, 'Ukhrul', 22, '2019-01-24 08:26:07'),
(534, 'Una', 14, '2019-01-24 08:26:07'),
(535, 'Unnao', 34, '2019-01-24 08:26:07'),
(536, 'Upper Siang', 3, '2019-01-24 08:26:07'),
(537, 'Upper Subansiri', 3, '2019-01-24 08:26:07'),
(538, 'Uttarkashi', 35, '2019-01-24 08:26:07'),
(539, 'Vadakara', 18, '2019-01-24 08:26:07'),
(540, 'Vadodara East', 12, '2019-01-24 08:26:07'),
(541, 'Vadodara West', 12, '2019-01-24 08:26:07'),
(542, 'Vaishali', 5, '2019-01-24 08:26:07'),
(543, 'Valsad', 12, '2019-01-24 08:26:07'),
(544, 'Varanasi', 34, '2019-01-24 08:26:07'),
(545, 'Vellore', 31, '2019-01-24 08:26:07'),
(546, 'Vidisha', 20, '2019-01-24 08:26:07'),
(547, 'Vijayawada', 2, '2019-01-24 08:26:07'),
(548, 'Virudhunagar', 31, '2019-01-24 08:26:07'),
(549, 'Visakhapatnam', 2, '2019-01-24 08:26:07'),
(550, 'Vizianagaram', 2, '2019-01-24 08:26:07'),
(551, 'Vriddhachalam', 31, '2019-01-24 08:26:07'),
(552, 'Wanaparthy', 32, '2019-01-24 08:26:07'),
(553, 'Warangal', 32, '2019-01-24 08:26:07'),
(554, 'Wardha', 21, '2019-01-24 08:26:07'),
(555, 'Washim', 21, '2019-01-24 08:26:07'),
(556, 'West Champaran', 5, '2019-01-24 08:26:07'),
(557, 'West Garo Hills', 23, '2019-01-24 08:26:07'),
(558, 'West Kameng', 3, '2019-01-24 08:26:07'),
(559, 'West Khasi Hills', 23, '2019-01-24 08:26:07'),
(560, 'West Siang', 3, '2019-01-24 08:26:07'),
(561, 'West Sikkim', 30, '2019-01-24 08:26:07'),
(562, 'West Tripura', 33, '2019-01-24 08:26:07'),
(563, 'Wokha', 25, '2019-01-24 08:26:07'),
(564, 'Yavatmal', 21, '2019-01-24 08:26:07'),
(565, 'Zunhebotto', 25, '2019-01-24 08:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `country_id` int(11) NOT NULL,
  `country_code` varchar(15) DEFAULT NULL,
  `country_name` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`country_id`, `country_code`, `country_name`, `is_active`, `last_update`) VALUES
(1, '+91', 'India', 1, '2019-01-24 08:26:36'),
(2, '93', 'Sri Lanka', 1, '2019-01-25 06:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `doctor_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(25) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `consultation_fee` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`doctor_id`, `first_name`, `last_name`, `email`, `phone`, `experience`, `consultation_fee`, `specialization_id`, `dob`, `gender`, `address1`, `address2`, `city`, `state`, `zip`, `last_update`, `is_active`) VALUES
(1000, 'Jhon', 'Milton', 'milton@gmail.org', 0, '5', 150, 3, '2019-01-10', 'M', '', NULL, '', '', 0, '2019-01-26 04:41:59', 1),
(1002, 'Test', '', 'test@test.com', 0, '5', 200, 3, '2019-01-17', '', '', NULL, '', '', 0, '2019-01-26 04:43:10', 1),
(1003, 'wfferfs', 'test', 'test@gmail.com', 2147483647, '1 Years and 1 Months', 4235, 0, '2019-03-22', 'option1', 'dwegtrthhr', 'gehgrhrh', 'ergrshrhs', '...', 4567687, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_cloud`
--

CREATE TABLE `tbl_fcm_cloud` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gcm_id` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forgot_password`
--

CREATE TABLE `tbl_forgot_password` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `random_key` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forgot_password`
--

INSERT INTO `tbl_forgot_password` (`id`, `email`, `random_key`, `expires`, `last_update`) VALUES
(11, 'admin@medplus.com', 'ax4Mu6', '2019-03-23 01:25:51', '2019-03-22 19:45:51'),
(12, 'admin@medplus.com', 'ECTpqB', '2019-03-23 01:31:41', '2019-03-22 19:51:41'),
(13, 'admin@medplus.com', 'qcDzMi', '2019-03-23 01:36:20', '2019-03-22 19:56:20'),
(14, 'admin@medplus.com', 'xqrn97', '2019-03-23 01:38:52', '2019-03-22 19:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital`
--

CREATE TABLE `tbl_hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pin` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `last_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hospital`
--

INSERT INTO `tbl_hospital` (`hospital_id`, `hospital_name`, `hospital_address`, `phone`, `email`, `pin`, `state_id`, `city_id`, `last_updated_date`, `is_active`) VALUES
(1, 'Aster Mims', 'Kottakkal, Malappuram', '576786879809', 'mims.ktkl@aster.com', 676506, 0, 0, '2019-01-24 06:54:24', 1),
(2, 'Test Hospital', 'Test Test Test', '3456789788', 'test@hospital.com', 754876, 2, 5, '2019-01-24 06:54:55', 1),
(3, 'rgtgfhfjjj', 'esgrdthfyjkghilj\nsdsgdhfgukhj', '35687909', 'test@gmail.com', 4567687, 0, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_affilliation`
--

CREATE TABLE `tbl_hospital_affilliation` (
  `hospital_affilliation_id` int(11) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient`
--

CREATE TABLE `tbl_patient` (
  `patient_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_patient`
--

INSERT INTO `tbl_patient` (`patient_id`, `first_name`, `last_name`, `gender`, `dob`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `zip`, `last_update`) VALUES
(1, 'John', 'Doe', 'Male', '2019-01-16', 'hohndoe@mail.com', '6577078765', '', '', '', '', 0, '2019-01-24 07:17:51'),
(2, 'JP', 'Morgan', 'Male', '2019-01-03', 'JPM@gmail.com', '78645356456', '', '', '', '', 0, '2019-01-24 07:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `is_review_anonymous` varchar(10) NOT NULL,
  `wait_time_rating` int(11) NOT NULL,
  `bedside_manner_rating` int(11) NOT NULL,
  `overall_rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `is_doctor_recommended` varchar(10) NOT NULL,
  `account_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `review_date` date NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specialization`
--

CREATE TABLE `tbl_specialization` (
  `specialization_id` int(11) NOT NULL,
  `specialization_name` varchar(100) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE `tbl_states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`state_id`, `state_name`, `country_id`, `is_active`, `last_update`) VALUES
(1, 'Andaman & Nicobar Islands', 1, 1, '2019-01-27 17:58:47'),
(2, 'Andhra Pradesh', 1, 1, '2019-01-27 17:58:47'),
(3, 'Arunachal Pradesh', 1, 1, '2019-01-27 17:58:47'),
(4, 'Assam', 1, 1, '2019-01-27 17:58:47'),
(5, 'Bihar', 1, 1, '2019-01-27 17:58:47'),
(6, 'Chandigarh', 1, 1, '2019-01-27 17:58:47'),
(7, 'Chattisgarh', 1, 1, '2019-01-27 17:58:47'),
(8, 'Dadra & Nagar Haveli', 1, 1, '2019-01-27 17:58:47'),
(9, 'Daman & Diu', 1, 1, '2019-01-27 17:58:47'),
(10, 'Delhi', 1, 1, '2019-01-27 17:58:47'),
(11, 'Goa', 1, 1, '2019-01-27 17:58:47'),
(12, 'Gujarat', 1, 1, '2019-01-27 17:58:47'),
(13, 'Haryana', 1, 1, '2019-01-27 17:58:47'),
(14, 'Himachal Pradesh', 1, 1, '2019-01-27 17:58:47'),
(15, 'Jammu & Kashmir', 1, 1, '2019-01-27 17:58:47'),
(16, 'Jharkhand', 1, 1, '2019-01-27 17:58:47'),
(17, 'Karnataka', 1, 1, '2019-01-27 17:58:47'),
(18, 'Kerala', 1, 1, '2019-01-27 17:58:47'),
(19, 'Lakshadweep', 1, 1, '2019-01-27 17:58:47'),
(20, 'Madhya Pradesh', 1, 1, '2019-01-27 17:58:47'),
(21, 'Maharashtra', 1, 1, '2019-01-27 17:58:47'),
(22, 'Manipur', 1, 1, '2019-01-27 17:58:47'),
(23, 'Meghalaya', 1, 1, '2019-01-27 17:58:47'),
(24, 'Mizoram', 1, 1, '2019-01-27 17:58:47'),
(25, 'Nagaland', 1, 1, '2019-01-27 17:58:47'),
(26, 'Odisha', 1, 1, '2019-01-27 17:58:47'),
(27, 'Poducherry', 1, 1, '2019-01-27 17:58:47'),
(28, 'Punjab', 1, 1, '2019-01-27 17:58:47'),
(29, 'Rajasthan', 1, 1, '2019-01-27 17:58:47'),
(30, 'Sikkim', 1, 1, '2019-01-27 17:58:47'),
(31, 'Tamil Nadu', 1, 1, '2019-01-27 17:58:47'),
(32, 'Telangana', 1, 1, '2019-01-27 17:58:47'),
(33, 'Tripura', 1, 1, '2019-01-27 17:58:47'),
(34, 'Uttar Pradesh', 1, 1, '2019-01-27 17:58:47'),
(35, 'Uttarakhand', 1, 1, '2019-01-27 17:58:47'),
(36, 'West Bengal', 1, 1, '2019-01-27 17:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_roles`
--

CREATE TABLE `tbl_user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_roles`
--

INSERT INTO `tbl_user_roles` (`role_id`, `role_name`, `is_active`, `last_update`) VALUES
(1, 'Admin', 1, '2019-01-24 08:31:34'),
(2, 'Hospital', 1, '2019-01-24 08:31:34'),
(3, 'Doctor', 1, '2019-01-24 08:31:34'),
(4, 'Patient', 1, '2019-01-24 08:31:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_api_keys`
--
ALTER TABLE `tbl_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment_status`
--
ALTER TABLE `tbl_appointment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indexes for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `tbl_fcm_cloud`
--
ALTER TABLE `tbl_fcm_cloud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_forgot_password`
--
ALTER TABLE `tbl_forgot_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `tbl_hospital_affilliation`
--
ALTER TABLE `tbl_hospital_affilliation`
  ADD PRIMARY KEY (`hospital_affilliation_id`);

--
-- Indexes for table `tbl_patient`
--
ALTER TABLE `tbl_patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_specialization`
--
ALTER TABLE `tbl_specialization`
  ADD PRIMARY KEY (`specialization_id`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_api_keys`
--
ALTER TABLE `tbl_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_appointment_status`
--
ALTER TABLE `tbl_appointment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  MODIFY `auth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT for table `tbl_fcm_cloud`
--
ALTER TABLE `tbl_fcm_cloud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_forgot_password`
--
ALTER TABLE `tbl_forgot_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_hospital_affilliation`
--
ALTER TABLE `tbl_hospital_affilliation`
  MODIFY `hospital_affilliation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_patient`
--
ALTER TABLE `tbl_patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_specialization`
--
ALTER TABLE `tbl_specialization`
  MODIFY `specialization_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_states`
--
ALTER TABLE `tbl_states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
