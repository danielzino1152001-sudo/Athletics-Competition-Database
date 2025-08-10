-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2025 at 09:38 AM
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
-- Database: `‏‏db_school_sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `contest_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `contest_date` date NOT NULL,
  `start_time` time NOT NULL,
  `finish_time` time NOT NULL,
  `place` varchar(30) DEFAULT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`contest_id`, `sport_id`, `contest_date`, `start_time`, `finish_time`, `place`, `city`) VALUES
(1, 1, '2024-03-01', '09:00:00', '09:10:00', 'Central Park', 'Tel Aviv'),
(2, 1, '2024-03-05', '09:30:00', '09:40:00', 'Green Park', 'Haifa'),
(3, 2, '2024-03-10', '10:00:00', '10:18:00', 'Main Stadium', 'Beer Sheva'),
(4, 2, '2024-03-15', '10:30:00', '10:48:00', 'West Field', 'Jerusalem'),
(5, 3, '2024-04-01', '11:00:00', '11:15:00', 'Cycling Arena', 'Beer Sheva'),
(6, 3, '2024-04-05', '11:45:00', '12:00:00', 'Hill Track', 'Rishon Lezion'),
(7, 4, '2024-04-10', '12:30:00', '12:50:00', 'Road Park', 'Netanya'),
(8, 4, '2024-04-20', '13:15:00', '13:35:00', 'City Loop', 'Tel Aviv'),
(9, 5, '2024-05-01', '14:00:00', '14:10:00', 'Jumping Field', 'Haifa'),
(10, 5, '2024-05-10', '14:30:00', '14:40:00', 'East Track', 'Beer Sheva'),
(11, 6, '2024-05-15', '15:00:00', '15:10:00', 'Olympic Pool', 'Jerusalem'),
(12, 6, '2024-05-20', '15:30:00', '15:40:00', 'National Pool', 'Rishon Lezion'),
(13, 1, '2024-06-01', '09:00:00', '09:10:00', 'Urban Park', 'Netanya'),
(14, 2, '2024-06-05', '09:30:00', '09:48:00', 'Downtown Stadium', 'Tel Aviv'),
(15, 3, '2024-06-10', '10:00:00', '10:15:00', 'Cycle Dome', 'Haifa'),
(16, 4, '2024-06-15', '10:30:00', '10:50:00', 'City Circuit', 'Beer Sheva'),
(17, 5, '2024-06-20', '11:00:00', '11:10:00', 'Jump Zone', 'Jerusalem'),
(18, 6, '2024-06-25', '11:30:00', '11:40:00', 'Aqua Center', 'Rishon Lezion'),
(19, 1, '2024-07-01', '09:00:00', '09:10:00', 'North Park', 'Netanya'),
(20, 2, '2024-07-05', '09:30:00', '09:48:00', 'River Stadium', 'Tel Aviv');

-- --------------------------------------------------------

--
-- Table structure for table `contest_employee`
--

CREATE TABLE `contest_employee` (
  `employee_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `payment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contest_employee`
--

INSERT INTO `contest_employee` (`employee_id`, `contest_id`, `payment`) VALUES
(111111111, 1, 800),
(222222222, 1, 400),
(333333333, 1, 300),
(444444444, 2, 500),
(555555555, 2, 400),
(666666666, 2, 300),
(111111111, 3, 1000),
(222222222, 3, 400),
(333333333, 3, 300),
(444444444, 4, 500),
(555555555, 4, 400),
(666666666, 4, 300),
(111111111, 5, 500),
(222222222, 5, 350),
(333333333, 5, 1500),
(444444444, 6, 500),
(555555555, 6, 400),
(666666666, 6, 300),
(111111111, 7, 500),
(222222222, 7, 400),
(333333333, 7, 300),
(444444444, 8, 500),
(555555555, 8, 400),
(666666666, 8, 300),
(111111111, 9, 1005),
(222222222, 9, 400),
(333333333, 9, 300),
(444444444, 10, 500),
(555555555, 10, 400),
(666666666, 10, 300),
(111111111, 11, 500),
(222222222, 11, 520),
(333333333, 11, 300),
(111111111, 12, 500),
(555555555, 12, 400),
(666666666, 12, 720),
(111111111, 13, 500),
(222222222, 13, 700),
(666666666, 13, 300),
(111111111, 14, 100),
(555555555, 14, 400),
(666666666, 14, 300),
(111111111, 15, 500),
(222222222, 15, 530),
(666666666, 15, 300),
(444444444, 16, 500),
(555555555, 16, 400),
(666666666, 16, 300),
(111111111, 17, 500),
(222222222, 17, 200),
(666666666, 17, 800),
(444444444, 18, 310),
(555555555, 18, 400),
(666666666, 18, 300),
(111111111, 19, 500),
(222222222, 19, 400),
(666666666, 19, 300),
(444444444, 20, 250),
(555555555, 20, 230),
(666666666, 20, 650);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `phone`, `role`, `start_date`) VALUES
(111111111, 'Emily', 'Brown', '054-1234567', 'Judge', '2022-01-10'),
(222222222, 'Michael', 'Green', '054-2345678', 'Medic', '2021-02-15'),
(333333333, 'Sarah', 'White', '054-3456789', 'Maintenance', '2020-03-01'),
(444444444, 'David', 'Blue', '054-4567890', 'Coach', '2019-04-20'),
(555555555, 'Anna', 'Gray', '054-5678901', 'Judge', '2023-05-15'),
(666666666, 'Robert', 'Black', '054-6789012', 'Medic', '2020-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `student_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `result` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`student_id`, `contest_id`, `result`) VALUES
(123456780, 1, 14.01),
(123456789, 1, 12.34),
(234567890, 1, 11.87),
(234567891, 1, 12.55),
(345678902, 1, 11.99),
(456789012, 1, 12.11),
(567890124, 1, 13.22),
(123456789, 2, 360.22),
(234567891, 2, 360.12),
(345678901, 2, 359.87),
(345678902, 2, 359.33),
(678901234, 2, 358.45),
(789012345, 2, 357.88),
(123456789, 3, 720.5),
(234567890, 3, 715.34),
(345678902, 3, 719.67),
(567890124, 3, 718.88),
(789012345, 3, 710.88),
(890123456, 3, 718.76),
(123456780, 4, 18.22),
(234567891, 4, 18.11),
(345678901, 4, 18.45),
(567890125, 4, 18.55),
(678901234, 4, 17.88),
(890123456, 4, 18.67),
(901234567, 4, 17.99),
(123456781, 5, 81.55),
(234567890, 5, 80.99),
(345678901, 5, 81.22),
(678901236, 5, 82.34),
(789012346, 5, 82.1),
(890123457, 5, 79.45),
(901234568, 5, 80.88),
(123456781, 6, 16.55),
(234567892, 6, 15.67),
(345678903, 6, 15.88),
(456789014, 6, 15.77),
(567890125, 6, 16.22),
(678901234, 6, 15.99),
(123456789, 7, 12.22),
(234567891, 7, 11.45),
(567890125, 7, 12.55),
(678901234, 7, 10.88),
(890123456, 7, 12.67),
(901234567, 7, 11.99),
(123456780, 8, 351),
(345678901, 8, 350.12),
(345678902, 8, 350.77),
(678901235, 8, 351.23),
(789012345, 8, 348.88),
(890123457, 8, 349.67),
(123456780, 9, 70.77),
(123456789, 9, 71.34),
(234567890, 9, 70.88),
(234567891, 9, 71.12),
(345678901, 9, 71.45),
(456789012, 9, 71.55),
(567890124, 9, 71.22),
(123456781, 10, 60.22),
(234567891, 10, 60.45),
(345678902, 10, 59.88),
(678901234, 10, 60.34),
(789012345, 10, 59.67),
(890123457, 10, 60),
(123456780, 11, 15.55),
(123456789, 11, 16.34),
(234567890, 11, 15.87),
(345678902, 11, 15.67),
(789012345, 11, 15.88),
(890123456, 11, 15.76),
(234567891, 12, 100.12),
(234567892, 12, 100.33),
(567890125, 12, 101.22),
(678901234, 12, 101.88),
(890123456, 12, 99.67),
(901234567, 12, 100.45),
(345678901, 13, 720.11),
(345678902, 13, 718.22),
(678901236, 13, 719.67),
(789012346, 13, 718.88),
(890123457, 13, 717.99),
(901234568, 13, 718.45),
(123456781, 14, 15.34),
(234567892, 14, 15.22),
(345678903, 14, 14.88),
(456789014, 14, 15.67),
(567890125, 14, 15.89),
(890123457, 14, 15.77),
(123456789, 15, 120.99),
(234567891, 15, 120.12),
(567890125, 15, 121.22),
(678901234, 15, 121.33),
(890123456, 15, 119.88),
(901234567, 15, 120.45),
(123456780, 16, 150.77),
(345678901, 16, 150.12),
(678901234, 16, 150.33),
(678901235, 16, 149.88),
(789012345, 16, 150),
(890123457, 16, 150.45),
(123456780, 17, 170.55),
(123456789, 17, 170.22),
(234567890, 17, 171.11),
(345678901, 17, 171),
(456789012, 17, 169.88),
(567890124, 17, 170.77),
(123456781, 18, 200.22),
(234567891, 18, 200.67),
(345678902, 18, 201.33),
(456789014, 18, 200.88),
(678901234, 18, 199.88),
(789012345, 18, 200.45),
(123456789, 19, 16.34),
(234567890, 19, 15.87),
(345678902, 19, 15.67),
(678901234, 19, 15.77),
(789012345, 19, 15.88),
(890123456, 19, 15.76),
(123456780, 20, 300.67),
(234567891, 20, 300.34),
(567890125, 20, 301.22),
(678901234, 20, 301.33),
(890123456, 20, 299.88),
(901234567, 20, 300.45);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `street` varchar(20) DEFAULT NULL,
  `street_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`, `city`, `street`, `street_number`) VALUES
(1, 'Herzliya High School', 'Tel Aviv', 'Dizengoff Street', 100),
(2, 'Rabin High School', 'Haifa', 'Carmel Street', 20),
(3, 'Begin High School', 'Beer Sheva', 'Negev Street', 50),
(4, 'Weizmann High School', 'Jerusalem', 'King David Street', 15),
(5, 'Rothschild High School', 'Rishon Lezion', 'Rothschild Street', 25),
(6, 'Arlozorov High School', 'Netanya', 'Shapira Street', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL,
  `sport_type` enum('Running','Cycling','Swimming') NOT NULL,
  `sport_name` varchar(30) NOT NULL,
  `record` float DEFAULT NULL,
  `record_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sport_id`, `sport_type`, `sport_name`, `record`, `record_type`) VALUES
(1, 'Running', '100m Dash', 9.58, 'Seconds'),
(2, 'Running', '2000m Run', 330.5, 'Seconds'),
(3, 'Running', '5000m Run', 750, 'Seconds'),
(4, 'Cycling', 'Track Sprint', 17.5, 'Seconds'),
(5, 'Cycling', 'Road Race 1000m', 80, 'Seconds'),
(6, 'Swimming', '50m Freestyle', 15.91, 'Seconds');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_birth` date NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `street` varchar(20) DEFAULT NULL,
  `street_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `school_id`, `first_name`, `last_name`, `date_birth`, `phone`, `city`, `street`, `street_number`) VALUES
(123456780, 5, 'Ran', 'Almog', '2010-07-30', '054-0123456', 'Rishon Lezion', 'Rothschild Street', 27),
(123456781, 1, 'Alon', 'Magen', '2010-07-20', '054-0112233', 'Tel Aviv', 'Dizengoff Street', 104),
(123456789, 1, 'Yossi', 'Cohen', '2010-05-10', '054-1234567', 'Tel Aviv', 'Dizengoff Street', 101),
(234567890, 1, 'Michal', 'Levi', '2009-09-15', '054-2345678', 'Tel Aviv', 'Dizengoff Street', 102),
(234567891, 6, 'Eli', 'Geva', '2010-02-25', '054-2233445', 'Netanya', 'Shapira Street', 11),
(234567892, 2, 'Noa', 'Ravid', '2010-08-25', '054-2233446', 'Haifa', 'Carmel Street', 24),
(345678901, 2, 'Dana', 'Barosh', '2010-03-20', '054-3456789', 'Haifa', 'Carmel Street', 21),
(345678902, 6, 'Efrat', 'Ron', '2009-11-15', '054-3344556', 'Netanya', 'Shapira Street', 12),
(345678903, 3, 'Guy', 'Shahar', '2009-09-10', '054-3344557', 'Beer Sheva', 'Negev Street', 54),
(456789012, 2, 'Itay', 'Mizrahi', '2011-06-05', '054-4567890', 'Haifa', 'Carmel Street', 22),
(456789013, 1, 'Yonatan', 'Raz', '2010-01-15', '054-4455667', 'Tel Aviv', 'Dizengoff Street', 103),
(456789014, 4, 'Maya', 'Oz', '2010-10-05', '054-4455668', 'Jerusalem', 'King David Street', 19),
(567890123, 3, 'Oren', 'Cohen', '2010-11-01', '054-5678901', 'Beer Sheva', 'Negev Street', 51),
(567890124, 2, 'Shira', 'Alon', '2010-02-10', '054-5566778', 'Haifa', 'Carmel Street', 23),
(567890125, 5, 'Amir', 'Gold', '2010-11-12', '054-5566779', 'Rishon Lezion', 'Rothschild Street', 29),
(678901234, 3, 'Noa', 'Haim', '2011-08-20', '054-6789012', 'Beer Sheva', 'Negev Street', 52),
(678901235, 3, 'Ofir', 'Lavi', '2010-03-30', '054-6677889', 'Beer Sheva', 'Negev Street', 53),
(678901236, 6, 'Lea', 'Silver', '2010-12-01', '054-6678890', 'Netanya', 'Shapira Street', 14),
(789012345, 4, 'Omer', 'Aviv', '2010-04-10', '054-7890123', 'Jerusalem', 'King David Street', 16),
(789012346, 4, 'Rona', 'Cohen', '2011-04-05', '054-7788990', 'Jerusalem', 'King David Street', 18),
(890123456, 4, 'Yael', 'Shemesh', '2009-12-01', '054-8901234', 'Jerusalem', 'King David Street', 17),
(890123457, 5, 'Liel', 'Bar', '2010-05-12', '054-8899001', 'Rishon Lezion', 'Rothschild Street', 28),
(901234567, 5, 'Tamar', 'Peled', '2009-10-15', '054-9012345', 'Rishon Lezion', 'Rothschild Street', 26),
(901234568, 6, 'Adi', 'Tzur', '2011-06-15', '054-9900112', 'Netanya', 'Shapira Street', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`contest_id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `contest_employee`
--
ALTER TABLE `contest_employee`
  ADD PRIMARY KEY (`contest_id`,`employee_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`contest_id`,`student_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `school_name` (`school_name`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_id`),
  ADD UNIQUE KEY `sport_name` (`sport_name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `contest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contest`
--
ALTER TABLE `contest`
  ADD CONSTRAINT `contest_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`);

--
-- Constraints for table `contest_employee`
--
ALTER TABLE `contest_employee`
  ADD CONSTRAINT `contest_employee_ibfk_1` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`contest_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contest_employee_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`contest_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
