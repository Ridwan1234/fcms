-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2020 at 04:57 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmss`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `post` text NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `post`, `password`, `updationDate`) VALUES
(1, 'admin', 'doctor', '21232f297a57a5a743894a0e4a801fc3', '10-08-2019 09:32:58 AM'),
(2, 'Ridwan', 'director', 'dc647eb65e6711e155375218212b3964', ''),
(3, 'Janet', 'receptionist', '21232f297a57a5a743894a0e4a801fc3', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `doctorspecilization` int(11) DEFAULT NULL,
  `doctors` varchar(255) DEFAULT NULL,
  `appointmentType` varchar(255) DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `appointmentDetails` mediumtext DEFAULT NULL,
  `appointmentFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentNumber`, `userId`, `doctorspecilization`, `doctors`, `appointmentType`, `campus`, `noc`, `appointmentDetails`, `appointmentFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(37, 1, 1, 'Dr Fawole', 'General Query', 'Bosso', 'dttuyi', 'ctyyuvjbkinlo;', '', '2020-03-05 14:49:06', 'closed', '2020-03-05 14:59:19'),
(40, 1, 2, 'Dr Daniel', 'General Query', 'GK', 'Cold', 'Have been feeling a bit cold since morning', '75371278_152351825991304_3968583999170676974_n.jpg', '2020-03-06 09:12:25', 'in process', '2020-03-06 09:15:01'),
(41, 1, 1, 'Dr Ridwan', 'General Query', 'Bosso', 'Eye', 'vyg', '', '2020-03-17 00:56:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointmentremark`
--

CREATE TABLE `appointmentremark` (
  `id` int(11) NOT NULL,
  `appointmentNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmentremark`
--

INSERT INTO `appointmentremark` (`id`, `appointmentNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 2, 'in process', 'in progress', '2019-08-10 04:04:31'),
(10, 2, 'closed', 'fixed', '2019-08-10 04:05:05'),
(11, 6, 'in process', ' , mn', '2019-08-10 04:05:47'),
(12, 24, 'in process', 'working on it', '2019-08-10 04:12:58'),
(13, 24, 'closed', 'Fixed', '2019-08-10 04:16:33'),
(14, 9, 'in process', 'trtrtr', '2019-08-12 16:15:58'),
(15, 9, 'in process', 'roofing done', '2019-08-12 16:16:59'),
(16, 9, 'closed', 'comppleted', '2019-08-12 16:17:31'),
(17, 7, 'closed', 'gfiuyfg ilggiil', '2019-08-15 02:47:19'),
(18, 8, 'in process', 'bjvmvnm.knb.', '2019-08-18 06:15:26'),
(19, 10, 'in process', 'workingfjgfhfl', '2019-08-18 07:14:23'),
(20, 11, 'closed', 'jjltuytivtu,', '2019-08-18 07:15:13'),
(21, 26, 'in process', 'IN PROGRESS', '2019-09-15 13:52:28'),
(22, 26, 'in process', 'HGHHI', '2019-09-15 13:52:37'),
(23, 26, 'in process', '...............', '2019-09-15 13:52:54'),
(24, 27, 'in process', 'IN PRO GRESS', '2019-09-15 13:53:44'),
(25, 27, 'in process', 'INPROGRESS 2', '2019-09-15 13:53:55'),
(26, 27, 'closed', 'DONE', '2019-09-15 13:55:04'),
(27, 12, 'in process', 'dd', '2019-09-19 22:23:12'),
(28, 13, 'in process', 'hfhfhfhfh', '2019-10-28 21:54:55'),
(29, 13, 'in process', 'hdshsdshdshdsh', '2019-10-28 21:55:12'),
(30, 13, 'closed', 'done', '2019-10-28 22:11:38'),
(31, 29, 'closed', 'We are very sorry about it... Drastic Action will be taken', '2019-12-12 11:11:45'),
(32, 30, 'in process', 'THanks for ur review', '2020-02-05 21:27:24'),
(33, 14, 'in process', 'Still working on it', '2020-02-27 15:08:23'),
(34, 37, 'closed', 'ygb', '2020-03-05 14:59:19'),
(35, 40, 'in process', 'You can come by 4:00pm', '2020-03-06 09:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `id` int(11) NOT NULL,
  `campusName` varchar(255) DEFAULT NULL,
  `campusDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`id`, `campusName`, `campusDescription`, `postingDate`, `updationDate`) VALUES
(1, 'GK', 'Gidan Kwano', '2016-10-18 11:35:02', '2020-03-06 01:14:16'),
(2, 'Bosso', 'pbPB', '2016-10-18 11:35:58', '2020-03-05 14:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilizationid` int(11) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `contactno` int(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilizationid`, `doctorName`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Dr Ridwan', 0, '', '', '2017-03-28 07:11:07', '2020-03-16 23:22:28'),
(2, 1, 'Dr Fawole', 0, '', '', '2017-03-28 07:11:20', '2020-02-14 17:16:16'),
(3, 2, 'Dr Daniel', 0, '', '', '2019-06-24 07:06:44', '2020-02-14 17:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `description`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'They deal with the teeth', '2017-03-28 07:10:55', '2020-03-16 23:49:05'),
(2, 'Surgeon', 'This are the surgeon', '2017-06-11 10:54:06', '2020-03-06 01:08:09'),
(3, 'Physician', 'They are the physician', '2019-08-10 21:07:29', '2020-03-06 01:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `quantity`) VALUES
(1, 'Panadol', 10),
(2, 'Tutolin', 5);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(101, 0, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:09:22', '', 0),
(102, 0, 'arinze@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:09:34', '', 0),
(103, 3, 'arinze@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:10:24', '06-03-2020 02:40:27 PM', 1),
(104, 0, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:10:45', '', 0),
(105, 1, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:10:51', '', 1),
(106, 0, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:15:38', '', 0),
(107, 0, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:15:47', '', 0),
(108, 0, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:15:53', '', 0),
(109, 0, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:15:59', '', 0),
(110, 1, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 09:16:04', '06-03-2020 02:47:07 PM', 1),
(111, 1, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 21:01:17', '', 1),
(112, 2, 'fawole@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 21:40:22', '07-03-2020 03:10:46 AM', 1),
(113, 0, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 21:41:55', '', 0),
(114, 0, 'odunlamiridwan@gmail.com	', 0x3a3a3100000000000000000000000000, '2020-03-06 21:43:02', '', 0),
(115, 0, 'odunlamiridwan@gmail.com	', 0x3a3a3100000000000000000000000000, '2020-03-06 21:43:07', '', 0),
(116, 0, 'odunlamiridwan@gmail.com	', 0x3a3a3100000000000000000000000000, '2020-03-06 21:43:14', '', 0),
(117, 0, 'odunlamiridwan@gmail.com	', 0x3a3a3100000000000000000000000000, '2020-03-06 21:43:27', '', 0),
(118, 1, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 21:43:53', '07-03-2020 03:14:15 AM', 1),
(119, 4, 'adisa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 21:58:07', '', 1),
(120, 1, 'A10056', 0x3a3a3100000000000000000000000000, '2020-03-07 00:32:51', '07-03-2020 06:03:14 AM', 1),
(121, 1, '2016/1/60949CI', 0x3a3a3100000000000000000000000000, '2020-03-07 00:33:35', '07-03-2020 06:06:07 AM', 1),
(122, 1, 'A10056', 0x3a3a3100000000000000000000000000, '2020-03-07 00:42:33', '', 1),
(123, 1, 'A10056', 0x3a3a3100000000000000000000000000, '2020-03-15 01:18:42', '15-03-2020 06:49:07 AM', 1),
(124, 1, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-16 15:59:59', '', 1),
(125, 1, 'odunlamiridwan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-17 00:35:20', '17-03-2020 06:34:57 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `matric_no` varchar(255) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `matric_no`, `card_id`, `userEmail`, `password`, `contactNo`, `address`, `campus`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Ridwan Odunlami', '2016/1/60949CI', 'A10056', 'odunlamiridwan@gmail.com', 'dc647eb65e6711e155375218212b3964', 9074323006, 'yf77dfkyudfgu', 'GK', '5963682c980b63921fdb8d4047dee6d6.jpg', '2019-12-12 11:01:22', '2020-03-05 15:41:08', 1),
(2, 'Teenode', '2016/1/66563CT', 'A10067', 'fawole@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 9080, NULL, NULL, NULL, '2020-03-06 00:55:40', '2020-03-06 00:59:52', 1),
(3, 'Arinze', '2016/1/67678CP', '', 'arinze@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 907080, NULL, NULL, NULL, '2020-03-06 09:06:12', '2020-03-06 09:07:49', 1),
(4, 'Abubakr', '2016/1/67453CI', '', 'adisa@gmail.com', '56d9ba4ec637e6b48278c3a7837db9e9', 9080, NULL, NULL, NULL, '2020-03-06 21:57:53', '0000-00-00 00:00:00', 1),
(5, 'Nurudeen', '2010', 'A1005', 'ola@gmail.com', '56d9ba4ec637e6b48278c3a7837db9e9', 90, NULL, NULL, NULL, '2020-03-06 22:49:25', '0000-00-00 00:00:00', 1),
(6, 'Timothy', '2016/1/56733CI', '', 'timo@gmail.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:00:28', '0000-00-00 00:00:00', 1),
(7, 'Teslim', '2019', '', 'tes@gmail.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:01:11', '0000-00-00 00:00:00', 1),
(8, 'Maruf', '2016/1/8784CT', '', 'maruf@gmail.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:03:22', '0000-00-00 00:00:00', 1),
(9, 'Maruf', '2016/1/8784CT', '', 'maruf@gmail.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:04:15', '0000-00-00 00:00:00', 1),
(10, 'Gaphy', '2018/1/68793CT', 'A100010', 'paxxy@yahoo.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:07:51', '0000-00-00 00:00:00', 1),
(11, 'Gaphy', '2018/1/68793CT', 'A10011', 'paxxy@yahoo.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:08:39', '2020-03-07 00:09:53', 1),
(12, 'Gaphy', '2018/1/68793CT', 'A10012', 'paxxy@yahoo.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:08:52', '0000-00-00 00:00:00', 1),
(13, 'Gaphy', '2018/1/68793CT', 'A10102', 'paxxy@yahoo.com', '56d9ba4ec637e6b48278c3a7837db9e9', 908, NULL, NULL, NULL, '2020-03-07 00:09:23', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentNumber`);

--
-- Indexes for table `appointmentremark`
--
ALTER TABLE `appointmentremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `appointmentremark`
--
ALTER TABLE `appointmentremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
