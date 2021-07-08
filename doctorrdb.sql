-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 04:15 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorrdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Ampara'),
(2, 'Anuradhapura'),
(3, 'Badulla'),
(4, 'Batticaloa'),
(5, 'Colombo'),
(6, 'Galle'),
(7, 'Gampaha'),
(8, 'Hambantota'),
(9, 'Jaffna'),
(10, 'Kalutara'),
(11, 'Kandy'),
(12, 'Kegalle'),
(13, 'Kilinochchi'),
(14, 'Kurunegala'),
(15, 'Mannar'),
(16, 'Matale'),
(17, 'Matara'),
(18, 'Monaragala'),
(19, 'Mullaitivu'),
(20, 'Nuwara Eliya'),
(21, 'Polonnaruwa'),
(22, 'Puttalam'),
(23, 'Ratnapura'),
(24, 'Trincomalee'),
(25, 'Vavuniya');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `doctor_gender` char(1) NOT NULL,
  `doctor_email` varchar(50) NOT NULL,
  `doctor_password` varchar(50) NOT NULL,
  `doctor_specialization_id` int(11) NOT NULL,
  `doctor_short_description` text DEFAULT NULL,
  `doctor_long_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_name`, `doctor_gender`, `doctor_email`, `doctor_password`, `doctor_specialization_id`, `doctor_short_description`, `doctor_long_description`) VALUES
(6, 'Niseka Pathiraja', 'F', 'nisekapathiraja@gmail.com', 'pass_niseka', 22, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(7, 'Isiwara Kumarage', 'M', 'isiwarakumarage@gmail.com', 'pass_isiwara', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(8, 'Tishara Basnayake', 'M', 'tisharabasnayake@gmail.com', 'pass_tishara', 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_gender` char(1) NOT NULL,
  `patient_email` varchar(50) NOT NULL,
  `patient_address1` varchar(50) NOT NULL,
  `patient_address2` varchar(50) DEFAULT NULL,
  `patient_city_id` int(11) NOT NULL,
  `patient_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_name`, `patient_gender`, `patient_email`, `patient_address1`, `patient_address2`, `patient_city_id`, `patient_password`) VALUES
(11, 'Isira Ratnayake', 'M', 'isiraratnayake@gmail.com', '7B/5L', 'Raddolugama', 7, 'pass_isira');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `specialization_id` int(11) NOT NULL,
  `specialization_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`specialization_id`, `specialization_name`) VALUES
(1, 'Family Physician'),
(2, 'Neuro Consultant'),
(3, 'ENT Consultant'),
(4, 'Ophthalmologist'),
(5, 'Dentist'),
(6, 'Dermatologist'),
(7, 'Oncologist'),
(8, 'Hematologist'),
(9, 'Cardiologist'),
(10, 'Endocrinologist'),
(11, 'Gastroenterologist Consultant'),
(12, 'Colon and Rectal Surgeon'),
(13, 'Nephrologist'),
(14, 'Urologoist'),
(15, 'Obstetrician and Gynecologist'),
(16, 'Allergist/Immunologist'),
(17, 'Anesthesiologist'),
(18, 'Pathologist'),
(19, 'Pediatrician'),
(20, 'Plastic Surgeon'),
(21, 'Radiologist'),
(22, 'Sports Medicine Specialist'),
(23, 'Venereologist'),
(24, 'Virologist');

-- --------------------------------------------------------

--
-- Table structure for table `workplace`
--

CREATE TABLE `workplace` (
  `workplace_id` int(11) NOT NULL,
  `workplace_name` varchar(50) NOT NULL,
  `workplace_type_id` int(11) NOT NULL,
  `workplace_address1` varchar(50) DEFAULT NULL,
  `workplace_address2` varchar(50) DEFAULT NULL,
  `workplace_city_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workplace`
--

INSERT INTO `workplace` (`workplace_id`, `workplace_name`, `workplace_type_id`, `workplace_address1`, `workplace_address2`, `workplace_city_id`, `doctor_id`) VALUES
(13, 'Nawaloka Hospital', 7, 'Negombo Rd', '', 5, 6),
(14, 'The Hope Clinic', 9, '123/A', 'Temple Rd', 7, 6),
(15, 'District General Hospital', 3, 'Rathnavali Road', '', 7, 7),
(16, 'Holy Cross Children\'s Hospital', 8, 'Negombo Rd', '', 5, 7),
(17, 'Sirimavo Bandaranayake Hospital', 2, '', '', 7, 8),
(18, 'Nawaloka Hospital', 7, 'Chilaw Road', '', 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `workplace_type`
--

CREATE TABLE `workplace_type` (
  `workplace_type_id` int(11) NOT NULL,
  `workplace_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workplace_type`
--

INSERT INTO `workplace_type` (`workplace_type_id`, `workplace_type_name`) VALUES
(1, 'National Hospital'),
(2, 'Teaching Hospital'),
(3, 'General Hospital'),
(4, 'Base Hospital'),
(5, 'Divisional Hospital'),
(6, 'Primary Medical Care Unit'),
(7, 'Private Hospital'),
(8, 'Semi-government Hospital'),
(9, 'Outpatient Clinic');

-- --------------------------------------------------------

--
-- Table structure for table `worktime`
--

CREATE TABLE `worktime` (
  `worktime_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `worktime_start` time NOT NULL,
  `worktime_end` time NOT NULL,
  `workplace_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worktime`
--

INSERT INTO `worktime` (`worktime_id`, `day_id`, `worktime_start`, `worktime_end`, `workplace_id`) VALUES
(12, 1, '08:00:00', '16:00:00', 13),
(13, 3, '08:30:00', '15:00:00', 13),
(14, 3, '16:30:00', '21:30:00', 14),
(15, 2, '21:00:00', '00:00:00', 15),
(16, 3, '00:00:00', '04:15:00', 15),
(17, 7, '08:30:00', '17:30:00', 16),
(18, 4, '07:45:00', '11:25:00', 17),
(19, 4, '15:30:00', '19:25:00', 18),
(20, 6, '17:00:00', '23:15:00', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`),
  ADD UNIQUE KEY `doctor_email` (`doctor_email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `patient_email` (`patient_email`),
  ADD KEY `patient_city_id` (`patient_city_id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`specialization_id`);

--
-- Indexes for table `workplace`
--
ALTER TABLE `workplace`
  ADD PRIMARY KEY (`workplace_id`),
  ADD KEY `workplace_type_id` (`workplace_type_id`),
  ADD KEY `workplace_city_id` (`workplace_city_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `workplace_type`
--
ALTER TABLE `workplace_type`
  ADD PRIMARY KEY (`workplace_type_id`);

--
-- Indexes for table `worktime`
--
ALTER TABLE `worktime`
  ADD PRIMARY KEY (`worktime_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `workplace_id` (`workplace_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `specialization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `workplace`
--
ALTER TABLE `workplace`
  MODIFY `workplace_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `workplace_type`
--
ALTER TABLE `workplace_type`
  MODIFY `workplace_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `worktime`
--
ALTER TABLE `worktime`
  MODIFY `worktime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`patient_city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `workplace`
--
ALTER TABLE `workplace`
  ADD CONSTRAINT `workplace_ibfk_1` FOREIGN KEY (`workplace_type_id`) REFERENCES `workplace_type` (`workplace_type_id`),
  ADD CONSTRAINT `workplace_ibfk_2` FOREIGN KEY (`workplace_city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `workplace_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`) ON DELETE CASCADE;

--
-- Constraints for table `worktime`
--
ALTER TABLE `worktime`
  ADD CONSTRAINT `worktime_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`),
  ADD CONSTRAINT `worktime_ibfk_2` FOREIGN KEY (`workplace_id`) REFERENCES `workplace` (`workplace_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
