-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 16, 2021 at 11:39 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet',
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_to`, `file`, `status`) VALUES
(61, 'c++ notes', 'how to create class', 'docx', 'Vihaan', 'BJMC', '611973.docx', 'approved'),
(62, 'c++ notes', 'how to create class in c++', 'docx', 'harsh', 'BCA', '847547.docx', 'approved'),
(60, 'assingment', 'solve this assignment', 'docx', 'shelly', 'BCA', '636894.docx', 'not approved yet'),
(59, 'sample', 'this is a sample file', 'txt', 'Prerna', 'BCA', '908284.txt', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(28, 'Prerna', 'Prerna Maheshwari', 'N/A', 'student', 'mprerna109@gmail.com', '', 'Female', '$2y$10$v/lCY9xZqFw2X83.rIHUa.xUljkkAHhWgnHQSAbWskdE3PKQRa1jW', 'BCA', 'profile.jpg', 'June 12, 2021'),
(29, 'Shelly', 'Shelly Maheshwari', 'N/A', 'teacher', 'shell@gmail.com', '', 'Female', '$2y$10$Akrh7tw4tKiHZyTOIi/sZeaCEvDseVrKgY/SVYDek90CbfJ/rsY.m', 'BCA', 'profile.jpg', 'June 12, 2021'),
(30, 'Vihaan', 'Vihaan', 'N/A', 'student', 'vihaan@gmail.com', '', 'Male', '$2y$10$mwG7TzKY5GHtdB4AGAWHB.Mie7Cpryb1UC19LhxqHCzP08uPI.7Ji', 'BJMC', 'profile.jpg', 'June 12, 2021'),
(12, 'root', 'admin', 'N/A', 'admin', 'adminroot@gmail.com', '', 'N/A', '$2y$10$qtiNeBbJAX4wz1RPi.j1De3enlb/7kAMcX9zgsLa7WdMm8kxhuAju', 'BCA', 'profile.jpg', '2020-01-01'),
(31, 'Harsh', 'Harsh', 'N/A', 'student', 'harsh@gmail.com', '', 'Male', '$2y$10$pHCjweEAIGoW/NVFscBPle4E7xG142/JOhPShCDf5xBf4w39lRkZq', 'BCA', 'profile.jpg', 'June 12, 2021');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
