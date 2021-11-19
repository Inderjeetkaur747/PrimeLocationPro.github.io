-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 07:23 AM
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
-- Database: `prime_location`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_property`
--

CREATE TABLE `add_property` (
  `id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `bed` varchar(100) NOT NULL,
  `price` bigint(255) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_property`
--

INSERT INTO `add_property` (`id`, `city`, `area`, `type`, `status`, `title`, `address`, `description`, `bed`, `price`, `image`) VALUES
(1, 'Ambala', 'Sec-3', 'Flat', 'Sale', 'Sale', ' Near Railway Station, Ambala.', ' It is a well furnished flat at reasonable cost.', '3', 150000, ''),
(2, 'Kurukshetra', 'Sec-5', 'Flat', 'Let', 'to-let', ' near old bus stand, Kurukshetra.', ' It is a 3-bhk flat including all furniture. ', '3', 40000, ''),
(4, 'Karnal', 'Sec-4', 'Flat', 'Sale', 'sale', ' H.no-305/4. Near grain market, Karnal.', 'This flat is a good option for single family.', '4', 195000, ''),
(5, 'Sonipat', 'Sec-1', '3-bhk', 'Sale', 'Sale', 'H.no-786/8. Near cloth market, Sonipat.', 'A big flat at low cost. ', '3', 215000, ''),
(6, 'Karnal', 'Sec-1', '2-bhk', 'Sale', 'Sale', ' New cloth market, Karnal.', 'abc', '2', 120000, ''),
(9, 'Kurukshetra', 'Sec-3', '3-bhk', 'Let', 'let', 'Near Kurukshetra University, Kurukshetra. ', ' House for rent.', '3', 8000, '');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `city`, `area`, `slug`) VALUES
(1, '1', 'Sector-7', 'flat'),
(2, '3', 'Sector-13', 'Apartments');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `description`, `slug`, `image`) VALUES
(1, 'Kurukshetra', 'Need A well furnished house.', 'Kurukshetra', 'upload/pro3.jfif'),
(2, 'Chandigarh', 'Hi, we are looking for a separate flat at reasonable cost.', 'Flat', 'upload/pro1.jfif'),
(3, 'Karnal', 'I am looking for a double story building. ', 'Building', 'upload/pro2.jfif'),
(4, 'Ambala', 'abc', 'flat', 'upload/pro3.jfif'),
(5, 'Kaithal', 'abc', 'abc', 'upload/pro3.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `city` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `description`, `city`, `area`, `type`, `status`, `title`, `address`, `bed`, `price`, `name`, `created_at`) VALUES
(4, ' It is a 3-bhk flat including all furniture. ', 'Kurukshetra', 'Sec-5', 'Flat', 'Let', 'to-let', ' near old bus stand, Kurukshetra.', '3', '40000', 'Agent', '2021-09-02 04:41:39'),
(5, ' It is a well furnished flat at reasonable cost.', 'Ambala', 'Sec-3', 'Flat', 'Sale', 'Sale', ' Near Railway Station, Ambala.', '3', '150000', 'Agent', '2021-09-02 04:42:56'),
(6, 'This flat is a good option for single family.', 'Karnal', 'Sec-4', 'Flat', 'Sale', 'sale', ' H.no-305/4. Near grain market, Karnal.', '4', '195000', 'User', '2021-09-03 04:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'himani.nagpal.batra@gmail.com', '100200300');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `property_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `image`, `description`, `property_id`) VALUES
(1, 'upload/pro2.jfif', 'Well furnished flat including all facilities.', '2'),
(2, 'upload/pro1.jfif', 'A beautiful flat with all facilities.', '4'),
(3, 'upload/pro3.jfif', 'A beautiful flat.', '1'),
(5, 'upload/pro1.jfif', 'nice home', '2'),
(6, 'upload/pro2.jfif', 'All furnished flat', '4'),
(7, 'upload/pro3.jfif', 'All furnished flat', '5'),
(8, 'upload/pic5.jfif', 'Outside view of flat.', '9');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `agent`, `name`, `number`, `address`, `image`) VALUES
(1, 'EAgent', 'Real estate', '1234567890', 'H.no-466, Sector-7, Near New Bus Stand, Kurukshetra.', 'upload/pro1.jfif'),
(2, 'LAgent', 'Property Dealing', '9876543210', '320/5, Siwan Gate, Kaithal.', 'upload/pro3.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `property_request`
--

CREATE TABLE `property_request` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `requestedtby` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `person` varchar(100) NOT NULL,
  `email` varchar(110) NOT NULL,
  `password` varchar(110) NOT NULL,
  `cpassword` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `person`, `email`, `password`, `cpassword`) VALUES
(1, 'Agent', 'himani@gmail.com', '$2y$10$m6.Xn7.TP2EAuQV/nJaWMu9mJOf8g7uqWUwxd7J9ira5B8w6QQE1W', '$2y$10$gb1Qeive70tIX9LWclvA.uXLc7rjAgbvT7gblNRvTQvHdCnW1uTB6'),
(2, 'Agent', 'himani@gmail.com', '$2y$10$m6.Xn7.TP2EAuQV/nJaWMu9mJOf8g7uqWUwxd7J9ira5B8w6QQE1W', '$2y$10$gb1Qeive70tIX9LWclvA.uXLc7rjAgbvT7gblNRvTQvHdCnW1uTB6'),
(3, 'User', 'himani.nagpal.batra@gmail.com', '$2y$10$BXK2BXrqkDesrBF7z/PMr./nSaFQ0ML6OhFPKBoh6CdMzUEMWI6K6', '$2y$10$2MMpM3ULBnrNTPF8V.RNOeCp/05/6Qb9IAPhQ826622g3mBh/mtfS'),
(4, 'User', 'himani.nagpal.batra@gmail.com', '$2y$10$BXK2BXrqkDesrBF7z/PMr./nSaFQ0ML6OhFPKBoh6CdMzUEMWI6K6', '$2y$10$2MMpM3ULBnrNTPF8V.RNOeCp/05/6Qb9IAPhQ826622g3mBh/mtfS'),
(5, 'Agent', 'abc123456@gmail.com', '$2y$10$JJTg7QHTS9HmPpW.ZsOBbuTqNuhjxN0OmShoUPwI4DG00C0QOR79.', '$2y$10$KZ4fm5UtCYcCRaHYwAoAPeBusv0Gfw.Z3HTvxS8AHt2EO9pgloq5.'),
(6, 'Agent', 'abcD@gmail.com', '$2y$10$701DS2HnrAv3OZhDX4kYpuWfdOA4aX5GOs/QI0/71phgMAM8Pf3wG', '$2y$10$OPoEPJFFQbhEQZfd8.U1YOKxI6LBMPr3hzvX8hLqeocSG8OY0da0y'),
(7, 'Agent', 'himani@gmail.com', '$2y$10$sk8XXGbsZ9MWysBWEkax2enPICYvl9Ks5.4s3qR8VueVAYf/wRdb.', '$2y$10$/aR5OPLDcXkrTavtbA30jOpEJp2hl4jdXHURTuB/TrfPIoJd9hWgS'),
(8, 'Agent', 'anu@gmail.com', '$2y$10$9jh40Tom0Za6mKhVoIXQA..Tkz7sWHiqe28Tueh3kIQ3hV5Tu/F9i', '$2y$10$45VTIhO7o0w1A97OfrV5TefpHKgQa.Qk/PBVFVFYXjCI6mjhQoRhG'),
(9, 'Agent', 'abc123456@gmail.com', '$2y$10$MY2zwJiZCCX94L0YmJ9uduyrxiyRvZHYwtWOAK2ZnezQZy59.A4zW', '$2y$10$UbHrWGdAdiSASrKN.Gaxl.MaUd3hxebEpdL6B4IJ1b1QRq2qhSod6'),
(10, 'Agent', 'abc123456@gmail.com', '$2y$10$Wc35KNJm7aMDymBlXt8Vf.hq/rw1QJ05A0ZgL7IxVHjmugYjznsoS', '$2y$10$kndZ1jLQSJH/qTliVeA.4.nJLV7XnXZEE.J8M6aApwwGJxPtP7p6W'),
(11, 'Agent', 'ahana@gmail.com', '$2y$10$7QfA9cxoJB8weVttxTwKcu8Hg6lEDZ7GX0UKWH.uzESHai8kR035q', '$2y$10$RQKNEiHF/D/8Vgj3L8Z9FOHrJWgzKCBp88qIHwYVxNOjySKZR9NGi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_property`
--
ALTER TABLE `add_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_request`
--
ALTER TABLE `property_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_property`
--
ALTER TABLE `add_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `property_request`
--
ALTER TABLE `property_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
