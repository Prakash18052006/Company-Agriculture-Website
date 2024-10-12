-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 08:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `location_dynamic`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `state_id`, `name`) VALUES
(1, 1, 'Anantapur'),
(2, 1, 'Chittoor'),
(3, 1, 'East Godavari'),
(4, 1, 'Guntur'),
(5, 1, 'Kadapa'),
(6, 2, 'Tawang'),
(7, 2, 'West Kameng'),
(8, 2, 'East Kameng'),
(9, 2, 'Papum Pare'),
(10, 2, 'Lohit'),
(11, 3, 'Baksa'),
(12, 3, 'Barpeta'),
(13, 3, 'Biswanath'),
(14, 3, 'Bongaigaon'),
(15, 3, 'Cachar'),
(16, 4, 'Araria'),
(17, 4, 'Arwal'),
(18, 4, 'Aurangabad'),
(19, 4, 'Banka'),
(20, 4, 'Begusarai'),
(21, 4, 'Bhagalpur'),
(22, 4, 'Bhojpur'),
(23, 4, 'Buxar'),
(24, 4, 'Darbhanga'),
(25, 4, 'East Champaran'),
(26, 4, 'Gaya'),
(27, 4, 'Gopalganj'),
(28, 4, 'Jamui'),
(29, 4, 'Jehanabad'),
(30, 4, 'Kaimur'),
(31, 4, 'Katihar'),
(32, 4, 'Khagaria'),
(33, 4, 'Kishanganj'),
(34, 4, 'Lakhisarai'),
(35, 4, 'Madhepura'),
(36, 4, 'Madhubani'),
(37, 4, 'Munger'),
(38, 4, 'Muzaffarpur'),
(39, 4, 'Nalanda'),
(40, 4, 'Nawada'),
(41, 4, 'Patna'),
(42, 4, 'Purnia'),
(43, 4, 'Rohtas'),
(44, 4, 'Saharsa'),
(45, 4, 'Samastipur'),
(46, 4, 'Saran'),
(47, 4, 'Sheikhpura'),
(48, 4, 'Sheohar'),
(49, 4, 'Sitamarhi'),
(50, 4, 'Siwan'),
(51, 4, 'Supaul'),
(52, 4, 'Vaishali'),
(53, 4, 'West Champaran'),
(54, 5, 'Balod'),
(55, 5, 'Baloda Bazar'),
(56, 5, 'Balrampur'),
(57, 5, 'Bastar'),
(58, 5, 'Bemetara'),
(59, 6, 'North Goa'),
(60, 6, 'South Goa'),
(61, 7, 'Ahmedabad'),
(62, 7, 'Amreli'),
(63, 7, 'Anand'),
(64, 7, 'Aravalli'),
(65, 7, 'Banaskantha'),
(66, 7, 'Bharuch'),
(67, 7, 'Bhavnagar'),
(68, 7, 'Botad'),
(69, 7, 'Chhota Udaipur'),
(70, 7, 'Dahod'),
(71, 7, 'Dang'),
(72, 7, 'Devbhoomi Dwarka'),
(73, 7, 'Gandhinagar'),
(74, 7, 'Gir Somnath'),
(75, 7, 'Jamnagar'),
(76, 7, 'Junagadh'),
(77, 7, 'Kutch'),
(78, 7, 'Mahisagar'),
(79, 7, 'Mehsana'),
(80, 7, 'Morbi'),
(81, 7, 'Narmada'),
(82, 7, 'Navsari'),
(83, 7, 'Panchmahal'),
(84, 7, 'Patan'),
(85, 7, 'Porbandar'),
(86, 7, 'Rajkot'),
(87, 7, 'Sabarkantha'),
(88, 7, 'Surat'),
(89, 7, 'Surendranagar'),
(90, 7, 'Tapi'),
(91, 7, 'Vadodara'),
(92, 7, 'Valsad'),
(93, 8, 'Ambala'),
(94, 8, 'Bhiwani'),
(95, 8, 'Charkhi Dadri'),
(96, 8, 'Faridabad'),
(97, 8, 'Fatehabad'),
(98, 9, 'Bilaspur'),
(99, 9, 'Chamba'),
(100, 9, 'Hamirpur'),
(101, 9, 'Kangra'),
(102, 9, 'Kinnaur'),
(103, 10, 'Bokaro'),
(104, 10, 'Chatra'),
(105, 10, 'Deoghar'),
(106, 10, 'Dhanbad'),
(107, 10, 'Dumka'),
(108, 11, 'Bagalkot'),
(109, 11, 'Ballari'),
(110, 11, 'Belagavi'),
(111, 11, 'Bengaluru Rural'),
(112, 11, 'Bengaluru Urban'),
(113, 12, 'Alappuzha'),
(114, 12, 'Ernakulam'),
(115, 12, 'Idukki'),
(116, 12, 'Kannur'),
(117, 12, 'Kasaragod'),
(118, 13, 'Alirajpur'),
(119, 13, 'Anuppur'),
(120, 13, 'Ashoknagar'),
(121, 13, 'Balaghat'),
(122, 13, 'Barwani'),
(123, 14, 'Ahmednagar'),
(124, 14, 'Akola'),
(125, 14, 'Amravati'),
(126, 14, 'Aurangabad'),
(127, 14, 'Beed'),
(128, 14, 'Bhandara'),
(129, 14, 'Buldhana'),
(130, 14, 'Chandrapur'),
(131, 14, 'Dhule'),
(132, 14, 'Gadchiroli'),
(133, 14, 'Gondia'),
(134, 14, 'Hingoli'),
(135, 14, 'Jalgaon'),
(136, 14, 'Jalna'),
(137, 14, 'Kolhapur'),
(138, 14, 'Latur'),
(139, 14, 'Mumbai City'),
(140, 14, 'Mumbai Suburban'),
(141, 14, 'Nagpur'),
(142, 14, 'Nanded'),
(143, 14, 'Nandurbar'),
(144, 14, 'Nashik'),
(145, 14, 'Osmanabad'),
(146, 14, 'Palghar'),
(147, 14, 'Parbhani'),
(148, 14, 'Pune'),
(149, 14, 'Raigad'),
(150, 14, 'Ratnagiri'),
(151, 14, 'Sangli'),
(152, 14, 'Satara'),
(153, 14, 'Sindhudurg'),
(154, 14, 'Solapur'),
(155, 14, 'Thane'),
(156, 14, 'Wardha'),
(157, 14, 'Washim'),
(158, 14, 'Yavatmal'),
(159, 15, 'Bishnupur'),
(160, 15, 'Chandel'),
(161, 15, 'Churachandpur'),
(162, 15, 'Imphal East'),
(163, 15, 'Imphal West'),
(164, 16, 'East Garo Hills'),
(165, 16, 'East Khasi Hills'),
(166, 16, 'Jaintia Hills'),
(167, 16, 'North Garo Hills'),
(168, 16, 'Ri Bhoi'),
(169, 17, 'Aizawl'),
(170, 17, 'Champhai'),
(171, 17, 'Kolasib'),
(172, 17, 'Lawngtlai'),
(173, 17, 'Lunglei'),
(174, 18, 'Dimapur'),
(175, 18, 'Kiphire'),
(176, 18, 'Kohima'),
(177, 18, 'Longleng'),
(178, 18, 'Mokokchung'),
(179, 19, 'Angul'),
(180, 19, 'Balangir'),
(181, 19, 'Balasore'),
(182, 19, 'Bargarh'),
(183, 19, 'Bhadrak'),
(184, 20, 'Amritsar'),
(185, 20, 'Barnala'),
(186, 20, 'Bathinda'),
(187, 20, 'Faridkot'),
(188, 20, 'Fatehgarh Sahib'),
(189, 21, 'Ajmer'),
(190, 21, 'Alwar'),
(191, 21, 'Banswara'),
(192, 21, 'Barmer'),
(193, 21, 'Bharatpur'),
(194, 21, 'Bhilwara'),
(195, 21, 'Bikaner'),
(196, 21, 'Bundi'),
(197, 21, 'Chittorgarh'),
(198, 21, 'Churu'),
(199, 21, 'Dausa'),
(200, 21, 'Dholpur'),
(201, 21, 'Dungarpur'),
(202, 21, 'Ganganagar'),
(203, 21, 'Hanumangarh'),
(204, 21, 'Jaipur'),
(205, 21, 'Jaisalmer'),
(206, 21, 'Jalore'),
(207, 21, 'Jhalawar'),
(208, 21, 'Jhunjhunu'),
(209, 21, 'Jodhpur'),
(210, 21, 'Karauli'),
(211, 21, 'Kota'),
(212, 21, 'Nagaur'),
(213, 21, 'Pali'),
(214, 21, 'Pratapgarh'),
(215, 21, 'Rajsamand'),
(216, 21, 'Sawai Madhopur'),
(217, 21, 'Sikar'),
(218, 21, 'Sirohi'),
(219, 21, 'Tonk'),
(220, 21, 'Udaipur'),
(221, 22, 'East Sikkim'),
(222, 22, 'North Sikkim'),
(223, 22, 'South Sikkim'),
(224, 22, 'West Sikkim'),
(225, 23, 'Chennai'),
(226, 23, 'Coimbatore'),
(227, 23, 'Cuddalore'),
(228, 23, 'Dharmapuri'),
(229, 23, 'Dindigul'),
(230, 24, 'Adilabad'),
(231, 24, 'Bhadradri Kothagudem'),
(232, 24, 'Hyderabad'),
(233, 24, 'Jagtial'),
(234, 24, 'Jangaon'),
(235, 25, 'Dhalai'),
(236, 25, 'Khowai'),
(237, 25, 'North Tripura'),
(238, 25, 'South Tripura'),
(239, 25, 'West Tripura'),
(240, 26, 'Agra'),
(241, 26, 'Aligarh'),
(242, 26, 'Ambedkar Nagar'),
(243, 26, 'Ayodhya'),
(244, 26, 'Baghpat'),
(245, 27, 'Almora'),
(246, 27, 'Bageshwar'),
(247, 27, 'Chamoli'),
(248, 27, 'Champawat'),
(249, 27, 'Dehradun'),
(250, 28, 'Bankura'),
(251, 28, 'Birbhum'),
(252, 28, 'Burdwan'),
(253, 28, 'Howrah'),
(254, 28, 'Kolkata'),
(255, 29, 'Andaman'),
(256, 29, 'Nicobar'),
(257, 30, 'Chandigarh'),
(258, 31, 'Dadra and Nagar Haveli'),
(259, 31, 'Daman'),
(260, 32, 'Lakshadweep'),
(261, 33, 'Delhi'),
(262, 34, 'Puducherry'),
(263, 35, 'Leh'),
(264, 35, 'Kargil'),
(265, 36, 'Jammu'),
(266, 36, 'Srinagar'),
(267, 36, 'Pulwama'),
(268, 36, 'Rajouri'),
(269, 36, 'Udhampur');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chhattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jharkhand'),
(11, 'Karnataka'),
(12, 'Kerala'),
(13, 'Madhya Pradesh'),
(14, 'Maharashtra'),
(15, 'Manipur'),
(16, 'Meghalaya'),
(17, 'Mizoram'),
(18, 'Nagaland'),
(19, 'Odisha'),
(20, 'Punjab'),
(21, 'Rajasthan'),
(22, 'Sikkim'),
(23, 'Tamil Nadu'),
(24, 'Telangana'),
(25, 'Tripura'),
(26, 'Uttar Pradesh'),
(27, 'Uttarakhand'),
(28, 'West Bengal'),
(29, 'Andaman and Nicobar Islands'),
(30, 'Chandigarh'),
(31, 'Dadra and Nagar Haveli and Daman and Diu'),
(32, 'Lakshadweep'),
(33, 'Delhi'),
(34, 'Puducherry'),
(35, 'Ladakh'),
(36, 'Jammu and Kashmir');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `district_id`, `name`) VALUES
(1, 209, 'Agolai'),
(2, 209, 'Balesar'),
(3, 209, 'Balesar Durgawatan'),
(4, 209, 'Balesar Sattan'),
(5, 209, 'Barnau'),
(6, 209, 'Bastawa'),
(7, 209, 'Bawarli'),
(8, 209, 'Belwa'),
(9, 209, 'Belwa Ranaji'),
(10, 209, 'Bhaloo Anoopgarh'),
(11, 209, 'Bhaloo Rajwa'),
(12, 209, 'Bhatelai Purohitan'),
(13, 209, 'Badi Sid'),
(14, 209, 'Bap'),
(15, 209, 'Baroo'),
(16, 209, 'Bawari Kallan'),
(17, 209, 'Boogadi'),
(18, 209, 'Chakhu'),
(19, 209, 'Champasar'),
(20, 209, 'Charnai'),
(21, 209, 'Cheemana'),
(22, 209, 'Dedasari'),
(23, 209, 'Ghantiyali'),
(24, 209, 'Ghator'),
(25, 209, 'Artiya Kalla'),
(26, 209, 'Asop'),
(27, 209, 'Bagoria'),
(28, 209, 'Bara Kalla'),
(29, 209, 'Barni Khurd'),
(30, 209, 'Basni Hari Singh'),
(31, 209, 'Bhopalgarh'),
(32, 209, 'Bhundana'),
(33, 209, 'Birani'),
(34, 209, 'Burkia'),
(35, 209, 'Chowkari Kalla'),
(36, 209, 'Dewatra'),
(37, 209, 'Bala'),
(38, 209, 'Barna'),
(39, 209, 'Bhavi'),
(40, 209, 'Bilara'),
(41, 209, 'Binjwadia'),
(42, 209, 'Borunda'),
(43, 209, 'Boyal'),
(44, 209, 'Buchkalla'),
(45, 209, 'Chandelao'),
(46, 209, 'Chirdhani'),
(47, 209, 'Choda'),
(48, 209, 'Ghana Magra'),
(49, 209, 'Barliya'),
(50, 209, 'Bhacharna'),
(51, 209, 'Bhandu Kallan'),
(52, 209, 'Bhatinda'),
(53, 209, 'Birami'),
(54, 209, 'Boranada'),
(55, 209, 'Chak Barliya'),
(56, 209, 'Chicharli'),
(57, 209, 'Dhawa'),
(58, 209, 'Dhawa-i'),
(59, 209, 'Dhundhara'),
(60, 209, 'Doli'),
(61, 209, '80 Feet Road D-kirtinagar'),
(62, 209, '80 Feet Road Gandhinagar'),
(63, 209, '80 Feet Road Vidhya Nagar'),
(64, 209, 'Adhiwakta Colony Road'),
(65, 209, 'Alakhdara'),
(66, 209, 'Bada Bera'),
(67, 209, 'Badla Road Mahaveer Nagar'),
(68, 209, 'Badwasia Road Behind Government Hospital'),
(69, 209, 'Badwasia Road Jeera Mandi,mandore Mandi'),
(70, 209, 'Badwasia Road Opp. Shri Kishore Sweets Corner, Rup'),
(71, 209, 'Bakta Bera Road'),
(72, 209, 'Balsamand Link Road'),
(73, 209, 'Bhandu Jati'),
(74, 209, 'Bhomsagar'),
(75, 209, 'Bhoongra'),
(76, 209, 'Chaba'),
(77, 209, 'Chandsama'),
(78, 209, 'Chordiya'),
(79, 209, 'Chutarpura'),
(80, 209, 'Dasaniya'),
(81, 209, 'Dechu'),
(82, 209, 'Devrajgarh'),
(83, 209, 'Gada'),
(84, 209, 'Guman Singh Pura');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
  ADD CONSTRAINT `villages_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
