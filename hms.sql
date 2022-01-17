-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 10:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '123456', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `Sid` varchar(200) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `Sid`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Dentist', 1, 1, '', 500, '2019-04-03', '5:00 PM', '2019-04-03 11:08:52', 1, 1, ''),
(4, 'Medicine', 3, 2, '', 500, '2020-07-27', '10:00 PM', '2020-07-28 15:53:31', 1, 1, ''),
(5, 'Neurologist', 5, 2, '', 1000, '2020-07-28', '10:00 PM', '2020-07-28 15:53:58', 1, 1, ''),
(6, 'Gynecologist', 4, 2, '', 500, '2020-07-29', '10:00 PM', '2020-07-28 15:54:13', 1, 1, ''),
(7, 'Medicine', 3, 6, '', 500, '2020-07-29', '10:45 PM', '2020-07-29 07:35:59', 0, 1, ''),
(8, 'Surgery', 6, 6, '', 1200, '2020-07-30', '8:30 PM', '2020-07-29 14:26:45', 0, 1, ''),
(31, 'sergery', 7, 29, '', 500, '2020-09-12', '4:00 AM', '2020-09-15 21:51:22', 1, 1, ''),
(32, 'Gynecologist', 4, 42, '', 500, '2020-10-22', '5:45 PM', '2020-10-25 23:26:35', 1, 1, ''),
(33, 'Surgery', 6, 35, '', 1200, '29-10-2020', '4:30 AM', '2020-10-28 22:19:09', 0, 1, ''),
(34, 'Surgery', 6, 35, '', 1200, '30-10-2020', '4:30 AM', '2020-10-28 22:26:13', 0, 1, ''),
(35, 'Surgery', 6, 35, '', 1200, '29-10-2020', '4:30 AM', '2020-10-28 22:27:21', 0, 1, ''),
(36, 'Surgery', 6, 35, '', 1200, '30-10-2020', '4:30 AM', '2020-10-28 22:27:44', 0, 1, ''),
(37, 'Neurologist', 5, 35, '', 1000, '30-10-2020', '7:00 AM', '2020-10-29 00:49:17', 0, 1, ''),
(38, 'dentist', 1, 35, '', 500, '29-10-2020', '7:00 AM', '2020-10-29 00:53:01', 1, 1, ''),
(39, 'Gynecologist', 4, 35, '', 500, '29-10-2020', '11:00 PM', '2020-10-29 16:48:35', 1, 1, ''),
(40, 'Gynecologist', 4, 35, '', 500, '31-10-2020', '11:00 PM', '2020-10-29 16:50:27', 1, 1, ''),
(41, 'Surgery', 6, 44, '', 1200, '26-11-2020', '1:00 AM', '2020-11-02 18:48:04', 1, 1, ''),
(42, 'Gynecologist', 4, 35, '2', 500, '2020/12/27', '', '0000-00-00 00:00:00', 1, 1, ''),
(43, 'Gynecologist', 4, 35, '1', 500, '2020/12/27', '', '0000-00-00 00:00:00', 0, 1, ''),
(44, 'Gynecologist', 4, 35, '5', 500, '2020/12/27', '', '0000-00-00 00:00:00', 1, 1, ''),
(62, 'Gynecologist', 4, 35, '19', 500, '2020-12-31 ', '3:40-4:00', '2020-12-27 22:39:15', 1, 1, ''),
(63, 'Gynecologist', 4, 35, '16', 500, '2020-12-31 ', '2:40-3:00', '2020-12-27 23:14:00', 0, 1, ''),
(65, 'Gynecologist', 4, 35, '16', 500, '2020-12-31 ', '2:40-3:00', '2020-12-27 23:33:43', 0, 1, ''),
(70, 'Gynecologist', 4, 35, '17', 500, '2020-12-31 ', '3:00-3:20', '2020-12-27 23:41:30', 0, 1, ''),
(71, 'Gynecologist', 4, 35, '16', 500, '2020-12-31 ', '2:40-3:00', '2020-12-27 23:45:04', 0, 1, ''),
(72, 'Gynecologist', 4, 35, '17', 500, '2020-12-31 ', '3:00-3:20', '2020-12-28 17:32:24', 1, 1, ''),
(73, 'Dentist', 11, 35, '9', 0, '2020-12-31 ', '12:00-12:20', '2020-12-29 13:03:00', 0, 1, ''),
(74, 'Gynecologist', 4, 35, '16', 500, '2020-12-31 ', '2:40-3:00', '2020-12-29 14:33:32', 0, 1, ''),
(75, 'Gynecologist', 4, 35, '18', 500, '2020-12-31 ', '3:20-3:40', '2020-12-30 19:31:56', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `bid` int(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `blood_group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`bid`, `Name`, `Address`, `Phone`, `blood_group`) VALUES
(1, 'Nazia', 'mirpur', '01748161027', 'B+'),
(2, 'Shadesh Ram Gour', 'dhaka', '01523000000', 'B+'),
(3, 'ruba', 'mirpur', '01705829945', 'B+'),
(4, 'Nazia Nuzhat Runa', 'dhaka', '01705829945', 'B+'),
(5, 'Shadesh', 'Jatrabari', '01545632110', 'B+'),
(10, 'Alif', 'Saddam Market', '01565499873', 'AB+'),
(12, 'Dilruba Nusrat', 'Mazar Road, Mirpur-1', '01964732001', 'O+'),
(16, 'Nuzhat', 'Ishwardi, Pabna', '01796400001', 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `number` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`number`, `name`, `email`, `mobile`, `subject`, `time`) VALUES
(1, '', 'wdvqgwv@hdh', '', ' wdhwghd', '2020-11-22 16:17:14'),
(2, 'dvevd', 'bvcha@nvbn', '65672452', ' dvhegfhd', '2020-11-22 16:18:21'),
(3, 'sdvgwfgd', 'whdghwd@bh', '24634314', ' dghegdyhfegI am runa', '2020-11-22 16:21:58'),
(4, 'bvb', 'gfg@bvbv', '', ' ggyty', '2020-11-22 16:31:08'),
(5, 'nbn', 'nbn@hgfhdf.gfg', '7656', ' ', '2020-12-26 14:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `doclicence`
--

CREATE TABLE `doclicence` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `licence` varchar(50) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doclicence`
--

INSERT INTO `doclicence` (`id`, `email`, `licence`, `add_date`) VALUES
(1, 'nazia.nuzhat24@gmail.com', 'nuzhat24', '2020-12-10 22:17:35'),
(2, 'nazia15-8973@diu.edu.bd', 'nazia15', '2020-12-10 22:17:35'),
(3, 'abc@gmail.com', '123456', '2020-12-25 19:57:03'),
(4, 'shadesh15-8973@diu.edu.bd', 'shadesh15', '2020-12-30 22:30:26'),
(5, 'shwadeshsaha408@gmail.com', 'swa8599', '2020-12-30 22:30:26'),
(6, 'songbid15-8591@diu.edu.bd', 'songbid15', '2020-12-30 22:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `licence_number` varchar(50) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `hospital_name` varchar(300) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'inactive',
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL,
  `sat` varchar(15) NOT NULL,
  `sun` varchar(15) NOT NULL,
  `mon` varchar(15) NOT NULL,
  `tue` varchar(15) NOT NULL,
  `wed` varchar(15) NOT NULL,
  `thu` varchar(15) NOT NULL,
  `fri` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `licence_number`, `doctorname`, `gender`, `hospital_name`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `token`, `status`, `creationDate`, `updationDate`, `sat`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`) VALUES
(1, 'dentist', '', 'sangbid', '', 'fdfdr', 'dhaka', '500', '1622160714', 'abc@gmail.com', '078563f337ec6d6fedf131ddc857db19', 'sfdsgf1', 'active', '2019-03-05 14:49:29', '14-09-2020 01:45:11 PM', '00:00:00', '', '', '', '', '', ''),
(2, 'Therapist', '', 'Sangbid zaman', '', 'fdtrer', 'bhughar', '500', '112423542', 'dsf@gmail.com', '123467', '67ytgjh', 'active', '2019-03-13 07:05:53', '123467', '00:00:00', '', '', '', '', '', ''),
(3, 'Medicine', '', 'Sangbid Zaman', '', 'fdre', 'Delpara,Kutubpur,Fatulla,Naraynganj', '500', '1783729544', 'sangbid12@gmail.com', '123456', 'bvcgfght', 'active', '2020-07-28 12:05:03', '', '00:00:00', '', '', '', '', '', ''),
(4, 'Gynecologist', '', 'Nazia', 'female', 'mirpur dental', 'mirpur', '500', '1234567', 'runa12@gmail.com', '1234567', 'hgdyte', 'inactive', '2020-07-28 12:06:19', '', '1. 2.', '1.22:47 2.10:47', '', '', '', '', '1.14:51 2.02:52'),
(5, 'Neurologist', '', 'Shadesh Saha', 'male', 'ngfhgf', 'signboard', '1000', '18373492', 'shadesh@gmail.com', '123456', 'y7678', 'active', '2020-07-28 12:07:25', '', '00:00:00', '', '', '', '', '', ''),
(6, 'Surgery', '', 'Nazia', 'female', 'mirpur dental', 'mirpur', '1200', '01001341414', 'nazia@gmail.com', '123456', 'fghfy6', 'active', '2020-07-29 07:48:35', '', '00:00:00', '', '', '', '', '', ''),
(7, 'sergery', 'hfer', 'Nazia', 'female', 'kollanpur dental', 'kollanpur', '500', '18373492', 'nazia12@gmail.com', '123456', 'vcfgseq35', 'active', '2020-09-10 14:45:13', '', '00:00:00', '', '', '', '', '', ''),
(11, 'Dentist', 'nuzhat24', 'Nazia Nuzhat', 'female', 'IBNA Sina, Kallyanpur', 'Mirpur-10', '1000', '01776876796', 'nazia.nuzhat24@gmail.com', '123456', '220fdd2b56c06eabfce0dee327834b', 'active', '2020-12-13 19:39:06', '', '', '', '', '', '', '', ''),
(12, 'Gynecologist', '123456', 'Shadesh Ram Gour', 'male', 'signboard', 'Signboard', '700', '2453', 'abc12@gmail.com', '123456', '997ced8624c93ab581cd935b87ca36', 'active', '2020-12-25 19:57:41', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(4, 1, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-13 06:20:44', '', 1),
(5, 1, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-30 14:30:14', '', 1),
(26, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 08:14:38', '', 1),
(27, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 08:18:18', '', 1),
(28, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 08:35:15', '28-07-2020 02:07:27 PM', 1),
(29, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 08:49:33', '28-07-2020 02:24:24 PM', 1),
(30, 0, 'abx@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 10:06:58', '', 0),
(31, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-07-28 10:07:00', '', 0),
(32, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-07-28 13:19:54', '', 0),
(33, 0, 'sangbid12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 15:47:17', '', 0),
(34, 3, 'sangbid12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 15:50:28', '28-07-2020 09:22:07 PM', 1),
(35, 3, 'sangbid12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 15:55:14', '28-07-2020 09:26:31 PM', 1),
(36, 3, 'sangbid12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 19:36:45', '', 1),
(37, 0, 'dfs@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 07:39:30', '', 0),
(38, 0, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 07:39:45', '', 0),
(39, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 07:40:47', '', 1),
(40, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 07:41:35', '', 1),
(41, 0, 'Shadesh Saha', 0x3a3a3100000000000000000000000000, '2020-09-05 18:25:13', '', 0),
(42, 5, 'shadesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-05 18:26:54', '', 1),
(43, 0, 'Sangbid Zaman', 0x3a3a3100000000000000000000000000, '2020-09-09 20:29:45', '', 0),
(44, 3, 'sangbid12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-09 20:30:21', '', 1),
(45, 6, 'nazia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-10 15:43:33', '10-09-2020 09:13:45 PM', 1),
(46, 6, 'nazia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-10 15:44:27', '', 1),
(47, 1, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-14 08:06:03', '14-09-2020 01:46:49 PM', 1),
(48, 7, 'nazia12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-07 22:50:19', '08-10-2020 04:21:58 AM', 1),
(49, 0, 'Nazia', 0x3a3a3100000000000000000000000000, '2020-11-21 04:07:20', '', 0),
(50, 7, 'nazia12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-21 04:07:39', '21-11-2020 09:43:22 AM', 1),
(51, 0, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 14:29:12', '', 0),
(52, 0, 'Nazia Runa', 0x3a3a3100000000000000000000000000, '2020-11-26 14:29:55', '', 0),
(53, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 14:30:23', '27-11-2020 01:46:37 PM', 1),
(54, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-27 10:01:04', '29-11-2020 11:12:03 PM', 1),
(55, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 18:00:00', '29-11-2020 11:33:57 PM', 1),
(56, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-02 15:20:55', '02-12-2020 09:46:48 PM', 1),
(57, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-02 16:17:20', '02-12-2020 09:50:27 PM', 1),
(58, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-02 16:21:00', '02-12-2020 09:53:03 PM', 1),
(59, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-02 16:32:54', '', 1),
(60, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-02 16:34:41', '02-12-2020 10:08:11 PM', 1),
(61, 6, 'nazia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-02 16:39:03', '03-12-2020 12:41:27 AM', 1),
(62, 3, 'sangbid12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 12:10:59', '04-12-2020 03:01:57 PM', 1),
(63, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-04 12:30:28', '04-12-2020 11:04:57 PM', 1),
(64, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-11 19:19:41', '12-12-2020 01:00:12 AM', 1),
(65, 4, 'runa12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-11 20:57:42', '', 1),
(66, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 19:25:42', '27-12-2020 02:00:13 AM', 1),
(67, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-27 12:05:54', '27-12-2020 06:26:58 PM', 1),
(68, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-29 06:31:10', '29-12-2020 12:17:59 PM', 1),
(69, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-29 11:13:06', '29-12-2020 06:32:10 PM', 1),
(70, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 13:55:52', '30-12-2020 07:39:36 PM', 1),
(71, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 15:59:23', '', 1),
(72, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 16:07:57', '30-12-2020 09:58:46 PM', 1),
(73, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 16:29:04', '', 1),
(74, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:18:17', '', 0),
(75, 1, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:18:40', '31-12-2020 03:13:18 AM', 1),
(76, 0, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:43:28', '', 0),
(77, 2, 'dsf@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:43:49', '31-12-2020 03:14:51 AM', 1),
(78, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:45:46', '31-12-2020 03:16:47 AM', 1),
(79, 12, 'abc12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:47:26', '31-12-2020 03:19:24 AM', 1),
(80, 7, 'nazia12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:49:47', '31-12-2020 03:21:37 AM', 1),
(81, 6, 'nazia@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:52:05', '31-12-2020 03:29:26 AM', 1),
(82, 5, 'shadesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 21:59:34', '31-12-2020 03:35:45 AM', 1),
(83, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-31 09:03:21', '', 1),
(84, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-31 09:47:24', '01-01-2021 12:00:16 AM', 1),
(85, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-01 22:54:28', '02-01-2021 04:24:56 AM', 1),
(86, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-03 19:36:37', '04-01-2021 01:45:38 AM', 1),
(87, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-03 20:50:02', '04-01-2021 02:20:06 AM', 1),
(88, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-03 20:56:25', '04-01-2021 02:26:27 AM', 1),
(89, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-05 09:45:36', '05-01-2021 03:41:35 PM', 1),
(90, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-05 10:11:42', '05-01-2021 04:00:28 PM', 1),
(91, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-05 10:31:11', '05-01-2021 04:03:02 PM', 1),
(92, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-05 15:04:41', '05-01-2021 08:34:47 PM', 1),
(93, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-05 21:06:22', '06-01-2021 04:36:30 AM', 1),
(94, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 09:43:16', '06-01-2021 03:13:22 PM', 1),
(95, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 09:43:47', '06-01-2021 03:23:29 PM', 1),
(96, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 10:29:13', '07-01-2021 12:01:43 AM', 1),
(97, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 18:38:14', '', 1),
(98, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 18:44:01', '07-01-2021 12:29:00 AM', 1),
(99, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 19:01:07', '07-01-2021 12:31:22 AM', 1),
(100, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 19:01:28', '07-01-2021 12:31:50 AM', 1),
(101, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 19:02:58', '07-01-2021 12:33:26 AM', 1),
(102, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 20:17:47', '07-01-2021 02:00:49 AM', 1),
(103, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 21:30:35', '07-01-2021 03:09:30 AM', 1),
(104, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-06 21:39:38', '07-01-2021 03:12:30 AM', 1),
(105, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-07 10:05:37', '07-01-2021 04:04:43 PM', 1),
(106, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-08 23:14:31', '09-01-2021 04:46:53 AM', 1),
(107, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 18:39:12', '10-01-2021 12:25:42 AM', 1),
(108, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 18:56:02', '10-01-2021 12:26:56 AM', 1),
(109, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 19:04:03', '10-01-2021 12:42:32 AM', 1),
(110, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 19:17:37', '', 1),
(111, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 19:31:25', '10-01-2021 01:01:28 AM', 1),
(112, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 19:33:53', '10-01-2021 01:03:55 AM', 1),
(113, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 19:34:39', '10-01-2021 01:04:42 AM', 1),
(114, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 19:37:16', '10-01-2021 01:07:18 AM', 1),
(115, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 20:05:48', '10-01-2021 01:35:53 AM', 1),
(116, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 20:07:42', '10-01-2021 01:37:46 AM', 1),
(117, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-09 20:15:35', '10-01-2021 01:47:23 AM', 1),
(118, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-11 16:41:43', '11-01-2021 10:12:49 PM', 1),
(119, 11, 'nazia.nuzhat24@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-12 19:58:17', '13-01-2021 01:29:03 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specialization`, `creationDate`, `updationDate`) VALUES
(1, 'Medicine', '2020-07-28 09:41:11', ''),
(2, 'Neurologist', '2020-07-28 09:41:24', ''),
(3, 'Gynecologist', '2020-07-28 12:03:25', ''),
(4, 'Surgery', '2020-07-28 12:03:45', ''),
(5, 'Cardiologist', '2020-07-29 07:49:30', ''),
(6, 'Therapist', '2020-12-30 22:07:30', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctortime`
--

CREATE TABLE `doctortime` (
  `id` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `d_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `book` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctortime`
--

INSERT INTO `doctortime` (`id`, `s_id`, `d_id`, `date`, `book`) VALUES
(1, '1', '1', '2020-12-31', '0'),
(2, '1', '1', '2021-01-01', '0'),
(4, '2', '1', '2021-01-01', '0'),
(5, '2', '1', '2020-12-31', '0'),
(6, '3', '1', '2020-12-31', '0'),
(7, '4', '1', '2020-12-31', '0'),
(8, '5', '1', '2020-12-31', '0'),
(9, '1', '2', '2020-12-31', '0'),
(10, '2', '2', '2020-12-31', '0'),
(11, '6', '2', '2020-12-31', '0'),
(12, '7', '2', '2020-12-31', '0'),
(13, '8', '2', '2020-12-31', '0'),
(14, '9', '2', '2020-12-31', '0'),
(15, '10', '2', '2020-12-31', '0'),
(16, '11', '2', '2020-12-31', '0'),
(17, '12', '3', '2020-12-31', '0'),
(18, '13', '3', '2020-12-31', '0'),
(19, '14', '3', '2020-12-31', '0'),
(20, '15', '3', '2020-12-31', '0'),
(21, '16', '4', '2020-12-31', '0'),
(22, '17', '4', '2020-12-31', '0'),
(23, '18', '4', '2020-12-31', '1'),
(24, '19', '4', '2020-12-31', '0'),
(25, '16', '4', '2020-12-30', '0'),
(51, '38', '11', '2020-12-31', '0'),
(52, '38', '11', '2020-12-31', '0'),
(56, '1', '11', '2020-12-31 ', '0'),
(58, '2', '11', '2020-12-30 ', '0'),
(63, '3', '11', '2021-01-01', '0'),
(71, '2', '11', '2020-12-31', '0'),
(72, '9', '11', '2020-12-31', '0'),
(73, '7', '1', '2020-12-31', '0'),
(74, '7', '1', '2021-01-01', '0'),
(75, '3', '1', '2021-01-01', '0'),
(76, '6', '1', '2020-12-31', '0'),
(77, '1', '2', '2021-01-01', '0'),
(78, '2', '2', '2021-01-01', '0'),
(79, '3', '2', '2021-01-01', '0'),
(80, '3', '11', '2020-12-31', '0'),
(81, '4', '11', '2020-12-31', '0'),
(82, '2', '11', '2021-01-01', '0'),
(83, '4', '11', '2021-01-01', '0'),
(84, '4', '12', '2020-12-31', '0'),
(85, '5', '12', '2020-12-31', '0'),
(86, '6', '12', '2020-12-31', '0'),
(87, '7', '12', '2020-12-31', '0'),
(88, '1', '12', '2021-01-01', '0'),
(89, '2', '12', '2021-01-01', '0'),
(90, '3', '12', '2021-01-01', '0'),
(91, '4', '12', '2021-01-01', '0'),
(92, '1', '7', '2021-01-01', '0'),
(93, '2', '7', '2021-01-01', '0'),
(94, '3', '7', '2021-01-01', '0'),
(95, '6', '7', '2020-12-31', '0'),
(96, '7', '7', '2020-12-31', '0'),
(97, '8', '7', '2020-12-31', '0'),
(98, '9', '7', '2020-12-31', '0'),
(99, '4', '7', '2021-01-01', '0'),
(100, '5', '6', '2020-12-31', '0'),
(101, '6', '6', '2020-12-31', '0'),
(102, '7', '6', '2020-12-31', '0'),
(103, '8', '6', '2020-12-31', '0'),
(104, '2', '6', '2021-01-01', '0'),
(105, '3', '6', '2021-01-01', '0'),
(106, '4', '6', '2021-01-01', '0'),
(107, '5', '6', '2021-01-01', '0'),
(108, '1', '5', '2021-01-01', '0'),
(109, '2', '5', '2021-01-01', '0'),
(110, '3', '5', '2021-01-01', '0'),
(111, '4', '5', '2021-01-01', '0'),
(112, '38', '5', '2020-12-31', '0'),
(113, '37', '5', '2020-12-31', '0'),
(114, '36', '5', '2020-12-31', '0'),
(115, '35', '5', '2020-12-31', '0');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `id`, `date`) VALUES
(1, 2, '2019-04-05'),
(2, 1, '2019-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `facilty` varchar(300) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `invoiceID`, `facilty`, `fee`) VALUES
(1, 2, 'Food fee', 500),
(3, 1, 'Operation fee', 25000),
(13, 1, 'Medicine fee', 400);

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `name`, `email`, `password`, `contact`, `gender`, `regdate`, `updationDate`) VALUES
(1, 'sangbid', 'san@gmail.com', '123456', 0, '', '2019-04-04 23:54:34', '0000-00-00'),
(2, 'Runa', 'runa@gmail.com', '123456', 1020602410, 'female', '2020-07-29 08:09:52', '0000-00-00'),
(3, 'shadesh', 'shadesh@gmail.com', '123456', 175266246, 'male', '2020-07-29 09:18:12', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `llog`
--

CREATE TABLE `llog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `userip` int(50) NOT NULL,
  `logintime` date NOT NULL,
  `logout` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llog`
--

INSERT INTO `llog` (`id`, `uid`, `username`, `userip`, `logintime`, `logout`, `status`) VALUES
(1, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(2, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(3, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(4, 0, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 0),
(5, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(6, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(7, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(8, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(9, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(10, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(11, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(12, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(13, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(14, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(15, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(16, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(17, 0, '', 0, '0000-00-00', '0000-00-00', 0),
(18, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(19, 1, 'san@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(20, 2, 'runa@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(21, 2, 'runa@gmail.com', 0, '0000-00-00', '0000-00-00', 1),
(22, 3, 'shadesh@gmail.com', 0, '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `CompanyName` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `p_id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `CompanyName`, `status`, `description`, `p_id`) VALUES
(20, 'rupadin 10', 'tablet', 100, '', 2),
(26, 'insulin', 'liquid', 4200, '', 1),
(100, 'rupadin', 'square', 100, 'shordi kashi', 1),
(102, 'insulin', 'square', 130, 'liquid. which is used for diabetics', 1),
(106, 'napa extra', 'hedu', 105, '', 1),
(107, 'napa extra', 'square', 124, '', 1),
(108, 'insulin', 'gswfsg', 1888, 'nxbh', 1),
(109, 'insulin', 'square', 123, '', 1),
(110, 'insulin', 'square', 123, '', 1),
(111, 'insulin', 'square', 123, '', 1),
(112, 'filmate', 'hedu', 10, '', 1),
(113, 'filmate', 'hedu', 545645, '', 1),
(115, 'dilruba nusrat', 'apu', 123, '', 27),
(116, 'rupin', 'square', 10, '', 27);

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `Issue` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `cost` int(11) NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`id`, `p_id`, `Issue`, `date`, `cost`, `d_id`) VALUES
(3, 2, 'Heart Surgery', '2019-04-05', 50000, 2),
(4, 2, 'Heart Surgery', '2019-04-05', 50000, 2),
(5, 2, 'Heart Surgery', '2019-04-05', 50000, 2),
(6, 1, 'Breast Surgery', '2019-04-05', 25000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patientcode`
--

CREATE TABLE `patientcode` (
  `id` int(255) NOT NULL,
  `pat_uid` varchar(255) NOT NULL,
  `ph_id` varchar(255) NOT NULL,
  `ph_email` varchar(255) NOT NULL,
  `ucode` varchar(11) NOT NULL,
  `value` int(10) NOT NULL DEFAULT 0,
  `accessdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientcode`
--

INSERT INTO `patientcode` (`id`, `pat_uid`, `ph_id`, `ph_email`, `ucode`, `value`, `accessdate`) VALUES
(1, 'PID_35', '1', 'shadesh12@gmail.com', ' ', 0, '2020-10-30 15:29:11'),
(7, 'a_3415', '', '', ' ', 0, '2020-11-01 18:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `method` varchar(300) NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(300) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `id`, `method`, `amount`, `status`, `DATE`) VALUES
(1, 2, 'cash', 0, 'paid', '2019-04-05 03:43:25'),
(2, 2, 'cash', 125500, 'paid', '2019-04-05 03:43:25'),
(5, 2, 'cash', 125500, 'paid', '2019-04-05 03:57:06'),
(6, 1, 'cash', 27000, 'paid', '2019-04-05 03:57:25'),
(7, 2, 'cash', 125500, 'paid', '2019-04-05 03:58:05'),
(8, 2, 'cash', 125500, 'paid', '2019-04-05 03:58:45'),
(9, 2, 'cash', 125500, 'paid', '2019-04-05 04:00:37'),
(10, 2, 'cash', 125500, 'paid', '2019-04-05 04:01:05'),
(11, 2, 'cash', 125500, 'paid', '2019-04-05 04:07:47'),
(12, 2, 'cash', 125500, 'paid', '2019-04-05 04:10:01'),
(13, 2, 'cash', 125500, 'paid', '2019-04-05 04:11:07'),
(14, 2, 'cash', 125500, 'paid', '2019-04-05 04:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `licence_number` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `shop_address` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `birthdate` varchar(10) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `password` varchar(300) NOT NULL,
  `token` varchar(150) NOT NULL,
  `status` varchar(80) NOT NULL DEFAULT 'inactive',
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `name`, `licence_number`, `email`, `contact`, `address`, `shop_address`, `shop_name`, `gender`, `birthdate`, `blood_group`, `password`, `token`, `status`, `regdate`, `updationDate`) VALUES
(1, 'shadesh saha', 'shadesh123456', 'shadesh12@gmail.com', '01523408765', 'Matuail, Dhaka', 'Matuail Medical', 'Khan Pharmacy', 'male', '08/08/2020', 'B+', '123456', '', '', '2019-04-04 17:32:31', '0000-00-00'),
(2, 'nazia', '', 'nazia@gmail.com', '615514140', 'Dhaka', '', '', 'female', '', '', '1234567', '', '', '2020-07-29 07:53:29', '0000-00-00'),
(4, 'nazia nuzhat', '1234', 'nazia15-8973@diu.edu.bd', '01705829945', 'mirpur, dhaka', '', '', 'female', '', '', '1234567', '', '', '2020-09-06 11:05:46', '0000-00-00'),
(5, 'nazia', '123asv', 'nazia@gmail.com', '01705829945', 'dhaka', '', '', 'female', '', '', '1234567', '', '', '2020-09-12 18:28:45', '0000-00-00'),
(8, 'sss', 'sss', 'nazia15-8973@diu.edu.bd', '01705829945', 'sss', '', '', 'female', '', '', '1234567', '', '', '2020-10-19 11:34:59', '0000-00-00'),
(9, 'runa', '1234r52', 'nazia.nuzhat@gmail.com', '01705829945', 'mirpur', '', '', 'female', '', '', '123456', '48a15f95fcb15454458c05c929694d', 'active', '2020-10-21 18:21:28', '0000-00-00'),
(11, 'nazia nuzhat', '1234r52', 'nazia.nuzhat25@gmail.com', '01705829945', 'mirpur', '', '', 'female', '', '', '123456', '0061ce8fcae842a1807ed9811435ad', 'active', '2020-10-21 19:02:01', '0000-00-00'),
(13, 'f', '1234r52', 'nazia.nuzhat26@gmail.com', '5443234', 'dhaka', '', '', 'female', '', '', '123456', '0f6bbb714b012f1bb76723e961fe92', 'active', '2020-10-21 19:45:58', '0000-00-00'),
(14, ' hgh', 'rdydytf', 'fgfy@gd.tt', '364364', 'mirpur', '', '', 'male', '', '', '123456', '78bf6135d818d6a0dfb64674a6b734', 'active', '2020-10-21 19:50:44', '0000-00-00'),
(15, ' hgh', 'rdydytf', 'fgfy@gd.tth', '364364', 'mirpur', '', '', 'male', '', '', '123456', 'b82ceb64203af98b0cb68ef2abd0e6', 'active', '2020-10-21 19:51:44', '0000-00-00'),
(18, 'a', '1234r52', 'sfdga@vcdvc.chgh', '01876276721', 'wwds', '', '', 'male', '', '', '123456', '4d5f4caed796b6cd2e5ffc7c72f2b1', 'inactive', '2020-10-21 20:01:47', '0000-00-00'),
(19, 'f', '1234r52', 'nazia.nuzhat27@gmail.com', '567878', 'mirpur', '', '', 'male', '', '', '123456', '02594b6891d52a003c84867c37474b', 'inactive', '2020-10-21 22:44:13', '0000-00-00'),
(20, 'f', '1234r52', 'nazia.nuzhat27@gmail.com', '567878', 'mirpur', '', '', 'male', '', '', '123456', 'b19621155788bd66c1edd35145eba9', 'inactive', '2020-10-21 22:44:41', '0000-00-00'),
(21, 'nazia nuzhat', '1234r52', 'nazia.nuzhat28@gmail.com', '55', 'mirpur', '', '', 'male', '', '', '12345678', '4ba9fe5d57cca990d1821cd0e5cbe2', 'inactive', '2020-10-21 22:55:47', '0000-00-00'),
(22, 'nazia nuzhat', '1234r52', 'nazia.nuzhat28@gmail.com', '55', 'mirpur', '', '', 'male', '', '', '123456', '1885c78b567ae416b24d2c70b4ea21', 'inactive', '2020-10-21 22:59:20', '0000-00-00'),
(23, 'nazia nuzhat', '1234r52', 'nazia.nuzhat29@gmail.com', '55', 'mirpur', '', '', 'male', '', '', '123456', '0dfb349ccabdf62447f3df362c42b8', 'inactive', '2020-10-21 23:08:05', '0000-00-00'),
(28, 'nazia', '1234r52', 'shadesh15-8599@diu.edu.bd', '322121', 'mirpur', 'hdr', '', 'female', '', '', '123456', '0eb49de5650909fc93eeefc2063120', 'active', '2020-11-30 19:24:51', '0000-00-00'),
(30, 'nazia nuzhat', 'nuzhat24', 'nazia.nuzhat24@gmail.com', '01705829945', 'mirpur', 'kjgh', '', 'female', '', '', '123456', 'ffaa0cea341bbaffd66272b1696183', 'active', '2020-12-13 16:07:52', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `phlicence`
--

CREATE TABLE `phlicence` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `licence` varchar(50) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phlicence`
--

INSERT INTO `phlicence` (`id`, `email`, `licence`, `add_date`) VALUES
(1, 'shadesh12@gmail.com', 'shadesh123456', '2020-12-10 21:02:53'),
(2, 'shadesh15-8599@diu.edu.bd', '1234r52', '2020-12-10 21:05:41'),
(3, 'nazia15-8973@diu.edu.bd', '1234', '2020-12-10 21:05:41'),
(4, 'nazia.nuzhat24@gmail.com', 'nuzhat24', '2020-12-10 21:07:27'),
(5, 'asanoor100@gmail.com', '123456', '2020-12-10 21:10:25'),
(6, 'nazianuzhat45@gmail.com', '1234567', '2020-12-10 21:10:25'),
(7, 'songbid15-8591@diu.edu.bd', '1234s', '2020-12-10 21:12:02'),
(8, 'dilruba.nusrat09@gmail.com', 'd123456', '2020-12-10 21:13:31'),
(9, 'shwadeshsaha408@gmail.com', 'shadesh68', '2020-12-30 22:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `plog`
--

CREATE TABLE `plog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `userip` int(50) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plog`
--

INSERT INTO `plog` (`id`, `uid`, `username`, `userip`, `logintime`, `logout`, `status`) VALUES
(1, 1, 'rahatsaqib78@gmail.com', 0, '2019-04-04 17:37:28', '2019-04-04 17:37:28', '1'),
(2, 0, 'rahat', 0, '2020-07-28 11:27:01', '0000-00-00 00:00:00', '0'),
(3, 1, 'rahatsaqib78@gmail.com', 0, '2020-07-28 11:27:25', '0000-00-00 00:00:00', '1'),
(4, 1, 'rahatsaqib78@gmail.com', 0, '2020-07-28 15:35:45', '0000-00-00 00:00:00', '1'),
(5, 1, 'shadesh12@gmail.com', 0, '2020-07-28 20:27:49', '2020-07-28 20:27:49', '1'),
(6, 1, 'shadesh12@gmail.com', 0, '2020-07-28 20:28:41', '2020-07-28 20:28:41', '1'),
(7, 1, 'shadesh12@gmail.com', 0, '2020-07-28 20:33:02', '2020-07-28 20:33:02', '1'),
(8, 1, 'shadesh12@gmail.com', 0, '2020-07-28 20:43:58', '2020-07-28 20:43:58', '1'),
(9, 2, 'nazia@gmail.com', 0, '2020-07-29 07:56:08', '2020-07-29 07:56:08', '1'),
(10, 2, 'nazia@gmail.com', 0, '2020-07-29 14:27:47', '2020-07-29 14:27:47', '1'),
(11, 2, 'nazia@gmail.com', 0, '2020-09-05 18:28:51', '2020-09-05 18:28:51', '1'),
(12, 2, 'nazia@gmail.com', 0, '2020-09-05 19:52:35', '2020-09-05 19:52:35', '1'),
(13, 3, 'nazia15-8973@diu.edu.bd', 0, '2020-09-06 11:23:00', '2020-09-06 11:23:00', '1'),
(14, 1, 'shadesh12@gmail.com', 0, '2020-09-06 11:41:22', '2020-09-06 11:41:22', '1'),
(15, 1, 'shadesh12@gmail.com', 0, '2020-09-06 11:43:22', '2020-09-06 11:43:22', '1'),
(16, 3, 'nazia15-8973@diu.edu.bd', 0, '2020-09-06 11:44:27', '2020-09-06 11:44:27', '1'),
(17, 4, 'nazia15-8973@diu.edu.bd', 0, '2020-09-06 11:45:17', '2020-09-06 11:45:17', '1'),
(18, 1, 'shadesh12@gmail.com', 0, '2020-09-06 11:51:09', '2020-09-06 11:51:09', '1'),
(19, 1, 'shadesh12@gmail.com', 0, '2020-09-06 19:30:46', '2020-09-06 19:30:46', '1'),
(20, 1, 'shadesh12@gmail.com', 0, '2020-09-07 08:31:52', '2020-09-07 08:31:52', '1'),
(21, 1, 'shadesh12@gmail.com', 0, '2020-09-07 09:25:27', '0000-00-00 00:00:00', '1'),
(22, 1, 'shadesh12@gmail.com', 0, '2020-09-07 11:16:45', '0000-00-00 00:00:00', '1'),
(23, 1, 'shadesh12@gmail.com', 0, '2020-09-07 11:17:05', '0000-00-00 00:00:00', '1'),
(24, 1, 'shadesh12@gmail.com', 0, '2020-09-07 11:39:29', '0000-00-00 00:00:00', '1'),
(25, 1, 'shadesh12@gmail.com', 0, '2020-09-07 11:43:55', '0000-00-00 00:00:00', '1'),
(26, 1, 'shadesh12@gmail.com', 0, '2020-09-07 11:45:41', '0000-00-00 00:00:00', '1'),
(27, 1, 'shadesh12@gmail.com', 0, '2020-09-07 11:50:48', '0000-00-00 00:00:00', '1'),
(28, 1, 'shadesh12@gmail.com', 0, '2020-09-07 11:52:54', '0000-00-00 00:00:00', '1'),
(29, 1, 'shadesh12@gmail.com', 0, '2020-09-07 12:01:30', '0000-00-00 00:00:00', '1'),
(30, 1, 'shadesh12@gmail.com', 0, '2020-09-07 12:24:15', '0000-00-00 00:00:00', '1'),
(31, 1, 'shadesh12@gmail.com', 0, '2020-09-07 15:03:07', '2020-09-07 15:03:07', '1'),
(32, 1, 'shadesh12@gmail.com', 0, '2020-09-07 15:48:34', '2020-09-07 15:48:34', '1'),
(33, 1, 'shadesh12@gmail.com', 0, '2020-09-07 15:55:05', '2020-09-07 15:55:05', '1'),
(34, 1, 'shadesh12@gmail.com', 0, '2020-09-07 15:57:43', '0000-00-00 00:00:00', '1'),
(35, 2, 'nazia@gmail.com', 0, '2020-09-08 18:32:17', '2020-09-08 18:32:17', '1'),
(36, 2, 'nazia@gmail.com', 0, '2020-09-08 18:35:16', '0000-00-00 00:00:00', '1'),
(37, 1, 'shadesh12@gmail.com', 0, '2020-09-08 18:36:15', '2020-09-08 18:36:15', '1'),
(38, 1, 'shadesh12@gmail.com', 0, '2020-09-08 19:01:11', '0000-00-00 00:00:00', '1'),
(39, 1, 'shadesh12@gmail.com', 0, '2020-09-09 09:14:01', '2020-09-09 09:14:01', '1'),
(40, 1, 'shadesh12@gmail.com', 0, '2020-09-09 09:36:03', '0000-00-00 00:00:00', '1'),
(41, 1, 'shadesh12@gmail.com', 0, '2020-09-09 13:46:51', '0000-00-00 00:00:00', '1'),
(42, 1, 'shadesh12@gmail.com', 0, '2020-09-09 18:48:25', '2020-09-09 18:48:25', '1'),
(43, 1, 'shadesh12@gmail.com', 0, '2020-09-12 18:04:29', '0000-00-00 00:00:00', '1'),
(44, 1, 'shadesh12@gmail.com', 0, '2020-09-13 20:56:20', '0000-00-00 00:00:00', '1'),
(45, 1, 'shadesh12@gmail.com', 0, '2020-09-16 09:34:27', '2020-09-16 09:34:27', '1'),
(46, 1, 'shadesh12@gmail.com', 0, '2020-09-26 19:11:01', '2020-09-26 19:11:01', '1'),
(47, 1, 'shadesh12@gmail.com', 0, '2020-10-07 15:53:13', '2020-10-07 15:53:13', '1'),
(48, 1, 'shadesh12@gmail.com', 0, '2020-10-07 22:53:20', '2020-10-07 22:53:20', '1'),
(49, 1, 'shadesh12@gmail.com', 0, '2020-10-08 16:09:29', '0000-00-00 00:00:00', '1'),
(50, 0, '', 0, '2020-10-19 11:10:59', '2020-10-19 11:10:59', '0'),
(51, 3, 'nazia15-8973@diu.edu.bd', 0, '2020-10-19 12:24:12', '2020-10-19 12:24:12', '1'),
(52, 0, '', 0, '2020-10-19 12:25:27', '2020-10-19 12:25:27', '0'),
(53, 3, 'nazia15-8973@diu.edu.bd', 0, '2020-10-19 12:27:44', '2020-10-19 12:27:44', '1'),
(54, 0, 'cxfsf@ghgj.fyg', 0, '2020-10-19 12:28:02', '2020-10-19 12:28:02', '0'),
(55, 0, 'cxfsf@ghgj.fyg', 0, '2020-10-19 17:51:24', '2020-10-19 17:51:24', '0'),
(56, 1, 'shadesh12@gmail.com', 0, '2020-10-19 17:52:01', '0000-00-00 00:00:00', '1'),
(57, 3, 'nazia15-8973@diu.edu.bd', 0, '2020-10-19 21:11:30', '0000-00-00 00:00:00', '1'),
(58, 3, 'nazia15-8973@diu.edu.bd', 0, '2020-10-19 23:37:39', '0000-00-00 00:00:00', '1'),
(59, 6, 'nazia15-8973@diu.edu.bd', 0, '2020-10-20 01:06:32', '0000-00-00 00:00:00', '1'),
(60, 7, 'nazia15-8973@diu.edu.bd', 0, '2020-10-20 01:44:33', '0000-00-00 00:00:00', '1'),
(61, 8, 'nazia15-8973@diu.edu.bd', 0, '2020-10-21 16:20:33', '0000-00-00 00:00:00', '1'),
(62, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-10-21 20:06:37', '2020-10-21 20:06:37', '0'),
(63, 17, 'nazia.nuzhat24@gmail.com', 0, '2020-10-21 20:11:48', '0000-00-00 00:00:00', '1'),
(64, 0, 'nazi973@diu.edu.bd', 0, '2020-10-21 23:44:21', '2020-10-21 23:44:21', '0'),
(65, 17, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 00:00:39', '0000-00-00 00:00:00', '1'),
(66, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 00:01:14', '2020-10-22 00:01:14', '0'),
(67, 0, 'nazia.nuzhat28@gmail.com', 0, '2020-10-22 00:01:54', '2020-10-22 00:01:54', '0'),
(68, 0, 'nazia.nuzhat29@gmail.com', 0, '2020-10-22 00:03:53', '2020-10-22 00:03:53', '0'),
(69, 22, 'nazia.nuzhat28@gmail.com', 0, '2020-10-22 00:04:05', '0000-00-00 00:00:00', '1'),
(70, 17, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 00:27:23', '0000-00-00 00:00:00', '1'),
(71, 23, 'nazia.nuzhat29@gmail.com', 0, '2020-10-22 00:27:54', '0000-00-00 00:00:00', '1'),
(72, 23, 'nazia.nuzhat29@gmail.com', 0, '2020-10-22 00:29:31', '0000-00-00 00:00:00', '1'),
(73, 17, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 00:30:13', '0000-00-00 00:00:00', '1'),
(74, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 00:31:18', '2020-10-22 00:31:18', '0'),
(75, 17, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 00:32:15', '0000-00-00 00:00:00', '1'),
(76, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 00:32:24', '2020-10-22 00:32:24', '0'),
(77, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 02:19:00', '2020-10-22 02:19:00', '0'),
(78, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 02:25:58', '2020-10-22 02:25:58', '0'),
(79, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 02:59:38', '2020-10-22 02:59:38', '0'),
(80, 26, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 06:01:10', '0000-00-00 00:00:00', '1'),
(81, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 19:21:04', '0000-00-00 00:00:00', '1'),
(82, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-22 19:23:47', '0000-00-00 00:00:00', '1'),
(83, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-23 21:41:46', '0000-00-00 00:00:00', '1'),
(84, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-25 00:11:41', '0000-00-00 00:00:00', '1'),
(85, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-26 00:36:30', '0000-00-00 00:00:00', '1'),
(86, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-26 01:04:18', '0000-00-00 00:00:00', '1'),
(87, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-26 01:28:59', '0000-00-00 00:00:00', '1'),
(88, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-26 01:48:53', '0000-00-00 00:00:00', '1'),
(89, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-26 01:57:02', '0000-00-00 00:00:00', '1'),
(90, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-26 20:01:22', '0000-00-00 00:00:00', '1'),
(91, 0, 'shadesh12@gmail.com', 0, '2020-10-26 21:19:31', '2020-10-26 21:19:31', '0'),
(92, 0, 'shadesh12@gmail.com', 0, '2020-10-26 21:19:46', '2020-10-26 21:19:46', '0'),
(93, 0, 'shadesh12@gmail.com', 0, '2020-10-26 21:21:26', '2020-10-26 21:21:26', '0'),
(94, 1, 'shadesh12@gmail.com', 0, '2020-10-26 21:22:01', '0000-00-00 00:00:00', '1'),
(95, 0, 'shadesh12@gmail.com', 0, '2020-10-27 02:58:55', '2020-10-27 02:58:55', '0'),
(96, 1, 'shadesh12@gmail.com', 0, '2020-10-27 02:59:03', '0000-00-00 00:00:00', '1'),
(97, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-27 21:42:29', '0000-00-00 00:00:00', '1'),
(98, 24, 'ghrg@fcfcf.gh', 0, '2020-10-27 22:06:08', '0000-00-00 00:00:00', '1'),
(99, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-10-28 00:13:43', '0000-00-00 00:00:00', '1'),
(100, 0, 'shadesh12@gmail.com', 0, '2020-10-29 16:52:51', '2020-10-29 16:52:51', '0'),
(101, 1, 'shadesh12@gmail.com', 0, '2020-10-29 16:53:12', '0000-00-00 00:00:00', '1'),
(102, 1, 'shadesh12@gmail.com', 0, '2020-10-30 19:40:18', '0000-00-00 00:00:00', '1'),
(103, 1, 'shadesh12@gmail.com', 0, '2020-11-01 06:03:46', '0000-00-00 00:00:00', '1'),
(104, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-11-01 17:28:02', '0000-00-00 00:00:00', '1'),
(105, 1, 'shadesh12@gmail.com', 0, '2020-11-01 17:33:19', '0000-00-00 00:00:00', '1'),
(106, 1, 'shadesh12@gmail.com', 0, '2020-11-02 18:52:02', '0000-00-00 00:00:00', '1'),
(107, 1, 'shadesh12@gmail.com', 0, '2020-11-19 14:48:36', '2020-11-19 14:48:36', '1'),
(108, 1, 'shadesh12@gmail.com', 0, '2020-11-23 18:44:20', '0000-00-00 00:00:00', '1'),
(109, 28, 'shadesh15-8599@diu.edu.bd', 0, '2020-11-30 19:29:28', '0000-00-00 00:00:00', '1'),
(110, 28, 'shadesh15-8599@diu.edu.bd', 0, '2020-11-30 19:30:29', '0000-00-00 00:00:00', '1'),
(111, 27, 'nazia.nuzhat24@gmail.com', 0, '2020-12-02 20:04:12', '0000-00-00 00:00:00', '1'),
(112, 1, 'shadesh12@gmail.com', 0, '2020-12-04 09:55:38', '0000-00-00 00:00:00', '1'),
(113, 1, 'shadesh12@gmail.com', 0, '2020-12-07 18:04:52', '0000-00-00 00:00:00', '1'),
(114, 1, 'shadesh12@gmail.com', 0, '2020-12-11 19:13:47', '0000-00-00 00:00:00', '1'),
(115, 1, 'shadesh12@gmail.com', 0, '2020-12-11 19:30:57', '0000-00-00 00:00:00', '1'),
(116, 1, 'shadesh12@gmail.com', 0, '2020-12-11 20:17:15', '0000-00-00 00:00:00', '1'),
(117, 1, 'shadesh12@gmail.com', 0, '2020-12-16 15:57:55', '0000-00-00 00:00:00', '1'),
(118, 1, 'shadesh12@gmail.com', 0, '2020-12-16 17:33:41', '0000-00-00 00:00:00', '1'),
(119, 1, 'shadesh12@gmail.com', 0, '2020-12-27 11:27:27', '0000-00-00 00:00:00', '1'),
(120, 1, 'shadesh12@gmail.com', 0, '2020-12-27 12:04:14', '0000-00-00 00:00:00', '1'),
(121, 1, 'shadesh12@gmail.com', 0, '2020-12-28 11:53:17', '0000-00-00 00:00:00', '1'),
(122, 1, 'shadesh12@gmail.com', 0, '2020-12-29 06:48:28', '0000-00-00 00:00:00', '1'),
(123, 1, 'shadesh12@gmail.com', 0, '2020-12-29 18:05:23', '0000-00-00 00:00:00', '1'),
(124, 1, 'shadesh12@gmail.com', 0, '2020-12-29 20:10:26', '0000-00-00 00:00:00', '1'),
(125, 0, 'nazia.nuzhat24@gmail.com', 0, '2020-12-29 22:41:27', '2020-12-29 22:41:27', '0'),
(126, 0, 'shadesh12@gmail.com', 0, '2020-12-29 22:41:33', '2020-12-29 22:41:33', '0'),
(127, 1, 'shadesh12@gmail.com', 0, '2020-12-30 12:47:13', '0000-00-00 00:00:00', '1'),
(128, 1, 'shadesh12@gmail.com', 0, '2020-12-30 14:10:21', '2020-12-30 14:10:21', '1'),
(129, 30, 'nazia.nuzhat24@gmail.com', 0, '2020-12-31 21:02:01', '0000-00-00 00:00:00', '1'),
(130, 30, 'nazia.nuzhat24@gmail.com', 0, '2020-12-31 22:11:34', '0000-00-00 00:00:00', '1'),
(131, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-01 18:39:23', '0000-00-00 00:00:00', '1'),
(132, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-01 18:39:36', '0000-00-00 00:00:00', '1'),
(133, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-01 19:29:28', '0000-00-00 00:00:00', '1'),
(134, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-01 22:29:09', '0000-00-00 00:00:00', '1'),
(135, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-02 16:46:19', '0000-00-00 00:00:00', '1'),
(136, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-03 19:04:54', '0000-00-00 00:00:00', '1'),
(137, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-03 20:58:41', '0000-00-00 00:00:00', '1'),
(138, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-05 15:02:34', '0000-00-00 00:00:00', '1'),
(139, 1, 'shadesh12@gmail.com', 0, '2021-01-05 15:10:26', '0000-00-00 00:00:00', '1'),
(140, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-05 20:44:32', '0000-00-00 00:00:00', '1'),
(141, 1, 'shadesh12@gmail.com', 0, '2021-01-05 21:03:30', '0000-00-00 00:00:00', '1'),
(142, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-05 21:26:04', '0000-00-00 00:00:00', '1'),
(143, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-05 22:47:34', '0000-00-00 00:00:00', '1'),
(144, 1, 'shadesh12@gmail.com', 0, '2021-01-06 08:25:02', '0000-00-00 00:00:00', '1'),
(145, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-06 08:30:45', '0000-00-00 00:00:00', '1'),
(146, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-06 09:37:49', '0000-00-00 00:00:00', '1'),
(147, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-06 10:27:47', '0000-00-00 00:00:00', '1'),
(148, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-06 18:31:53', '0000-00-00 00:00:00', '1'),
(149, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-06 21:18:45', '0000-00-00 00:00:00', '1'),
(150, 1, 'shadesh12@gmail.com', 0, '2021-01-07 09:55:53', '0000-00-00 00:00:00', '1'),
(151, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-07 10:42:36', '0000-00-00 00:00:00', '1'),
(152, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-07 19:14:46', '0000-00-00 00:00:00', '1'),
(153, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-08 09:33:37', '0000-00-00 00:00:00', '1'),
(154, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:24:33', '2021-01-09 19:24:33', '1'),
(155, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:31:38', '0000-00-00 00:00:00', '1'),
(156, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:32:17', '0000-00-00 00:00:00', '1'),
(157, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:32:57', '2021-01-09 19:32:57', '1'),
(158, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:34:04', '2021-01-09 19:34:04', '1'),
(159, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:34:51', '2021-01-09 19:34:51', '1'),
(160, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:37:29', '0000-00-00 00:00:00', '1'),
(161, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:42:09', '0000-00-00 00:00:00', '1'),
(162, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 19:55:22', '0000-00-00 00:00:00', '1'),
(163, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 20:07:55', '0000-00-00 00:00:00', '1'),
(164, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-09 21:54:18', '0000-00-00 00:00:00', '1'),
(165, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-11 16:45:18', '0000-00-00 00:00:00', '1'),
(166, 30, 'nazia.nuzhat24@gmail.com', 0, '2021-01-12 20:26:05', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `upload_date` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `description`, `upload_date`, `image`, `deleted`) VALUES
(1, 'sangbid', 'asd', 'asdas', '2020-11-04 17:07:58', 'assets/5fa2d1de8ae22africa-17344_640.jpg', 'no'),
(2, 'sangbid', 'asd', 'asdas', '2020-11-04 17:08:31', 'assets/5fa2d1ff6cc04africa-17344_640.jpg', 'no'),
(3, 'sangbid', 'asd', 'asdas', '2020-11-04 17:08:34', 'assets/5fa2d2029edeaafrica-17344_640.jpg', 'no'),
(4, 'sangbid', 'asd', 'asd', '2020-11-04 17:08:42', 'assets/5fa2d20a3cdc1africa-17344_640.jpg', 'no'),
(5, 'sangbid', 'asd', 'asd', '2020-11-04 17:08:54', 'assets/5fa2d2167c336africa-17344_640.jpg', 'no'),
(6, 'sangbid', 'asd', 'asd', '2020-11-04 17:10:10', 'assets/5fa2d26295a69africa-17344_640.jpg', 'no'),
(7, 'sangbid', 'asd', 'asd', '2020-11-04 17:11:00', 'assets/5fa2d294a0c03africa-17344_640.jpg', 'no'),
(9, 'Nazia Nuzhat', '111', 'ggggggggggggggggggggggggggggggggggggg', '2021-01-05 11:15:34', 'assets/5ff43c460ded8img1.jpg', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `birth_date` datetime NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `Problem` varchar(300) NOT NULL,
  `Weight` varchar(25) NOT NULL,
  `Pressure` varchar(6) NOT NULL,
  `temperature` varchar(5) NOT NULL,
  `history` varchar(300) NOT NULL,
  `oex` varchar(200) NOT NULL,
  `pd` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `md_name` varchar(200) NOT NULL,
  `mg` varchar(10) NOT NULL,
  `dose` varchar(10) NOT NULL,
  `day` varchar(15) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `prescription_comment` varchar(300) NOT NULL,
  `te_name` varchar(500) NOT NULL,
  `test_description` varchar(500) NOT NULL,
  `adv` varchar(300) NOT NULL,
  `doctorsauthor` varchar(300) NOT NULL,
  `current_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `pid`, `name`, `phone`, `birth_date`, `age`, `gender`, `Problem`, `Weight`, `Pressure`, `temperature`, `history`, `oex`, `pd`, `type`, `md_name`, `mg`, `dose`, `day`, `comments`, `prescription_comment`, `te_name`, `test_description`, `adv`, `doctorsauthor`, `current_date`) VALUES
(97, 'pid_35', ' Dilruba nusrat', ' 01748161028', '0000-00-00 00:00:00', 26, ' female', 'Fever', '50-60', '120/80', '101', 'n/a', '', '', '', '1.Paracitamol 2.Paracitamol', '1.10 2.10', '1.1+1+0 2.', '1.7 2.7', '1.After Eat 2.0', '', '1.Serum Creatinine', '1.Check', '1. Take rest', '11', '2021-01-09 19:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Sid` int(200) NOT NULL,
  `starttime` varchar(500) NOT NULL,
  `Endtime` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Sid`, `starttime`, `Endtime`) VALUES
(1, '9:00', '9:20'),
(2, '9:20', '9:40'),
(3, '9:40', '10:20'),
(4, '10:20', '10:40'),
(5, '10:40', '11:00'),
(6, '11:00', '11:20'),
(7, '11:20', '11:40'),
(8, '11:40', '12:00'),
(9, '12:00', '12:20'),
(10, '12:40', '1:00'),
(11, '1:00', '1:20'),
(12, '1:20', '1:40'),
(13, '1:40', '2:00'),
(14, '2:00', '2:20'),
(15, '2:20', '2:40'),
(16, '2:40', '3:00'),
(17, '3:00', '3:20'),
(18, '3:20', '3:40'),
(19, '3:40', '4:00'),
(20, '4:00', '4:20'),
(21, '4:20', '4:40'),
(22, '4:40', '5:00'),
(23, '5:20', '5:40'),
(24, '5:40', '6:00'),
(25, '6:00', '6:20'),
(26, '6:40', '7:00'),
(27, '7:00', '7:20'),
(28, '7:20', '7:40'),
(29, '7:40', '8:00'),
(30, '8:00', '8:20'),
(31, '8:20', '8:40'),
(32, '8:40', '9:00'),
(33, '9:00', '9:20'),
(34, '9:20', '9:40'),
(35, '9:40', '10:00'),
(36, '10:00', '10:20'),
(37, '10:20', '10:40'),
(38, '10:40', '11:00');

-- --------------------------------------------------------

--
-- Table structure for table `scheduled`
--

CREATE TABLE `scheduled` (
  `id` int(11) NOT NULL,
  `venue` varchar(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `time` time NOT NULL,
  `visibility` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scheduled`
--

INSERT INTO `scheduled` (`id`, `venue`, `start_time`, `end_time`, `time`, `visibility`) VALUES
(1, '3', '00:00:00', '00:00:00', '00:00:10', '1'),
(2, '3', '00:00:00', '00:00:00', '00:00:10', '1'),
(3, '4', '00:00:00', '00:00:00', '00:00:10', '1'),
(4, '4', '21:38:00', '12:38:00', '00:00:10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `ID` int(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Subscribe_Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`ID`, `Email`, `Subscribe_Time`) VALUES
(1, 'shadeshsaha45@gmail.com', '2021-01-08 21:14:48'),
(3, 'shadesh12@gmail.com', '2021-01-12 20:54:27'),
(4, 'swadeshsaha408@gmail.com', '2021-01-12 21:13:37');

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
(26, 0, 'sangbid', 0x3a3a3100000000000000000000000000, '2020-07-28 09:44:41', '', 0),
(27, 0, 'asd@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 09:56:48', '', 0),
(28, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-07-28 09:56:51', '', 0),
(29, 2, 'abx@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 10:08:47', '28-07-2020 03:42:00 PM', 1),
(30, 0, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 10:13:57', '', 0),
(31, 6, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 10:15:06', '', 1),
(32, 6, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 11:21:28', '28-07-2020 04:52:04 PM', 1),
(33, 6, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 11:22:15', '28-07-2020 04:54:35 PM', 1),
(34, 2, 'abx@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 15:52:57', '28-07-2020 09:24:50 PM', 1),
(35, 2, 'abx@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 19:34:44', '', 1),
(36, 2, 'abx@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 19:35:35', '', 1),
(37, 0, 'sangbidshadesh12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 20:28:19', '', 0),
(38, 0, 'shadesh12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 20:28:29', '', 0),
(39, 1, 'sang@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-28 20:43:05', '09-09-2020 12:54:34 AM', 1),
(40, 6, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 07:34:38', '', 1),
(41, 0, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 07:44:10', '', 0),
(42, 6, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 07:44:38', '', 1),
(43, 6, 'runa@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-29 11:53:19', '', 1),
(44, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-07-31 13:12:05', '', 0),
(45, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-07-31 13:14:28', '', 0),
(46, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-07-31 13:40:08', '', 0),
(47, 12, '01748161027', 0x3a3a3100000000000000000000000000, '2020-07-31 13:42:10', '', 1),
(48, 0, '01777777777', 0x3a3a3100000000000000000000000000, '2020-07-31 14:56:36', '', 0),
(51, 14, '01999999999', 0x3a3a3100000000000000000000000000, '2020-07-31 15:37:53', '', 1),
(52, 22, '1748161027', 0x3a3a3100000000000000000000000000, '2020-07-31 19:31:11', '', 1),
(53, 22, '01748161027', 0x3a3a3100000000000000000000000000, '2020-07-31 19:31:35', '', 1),
(54, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-07-31 19:31:41', '', 0),
(55, 26, '01748161027', 0x3a3a3100000000000000000000000000, '2020-08-02 15:09:57', '02-08-2020 09:10:04 PM', 1),
(56, 25, '01748161027', 0x3a3a3100000000000000000000000000, '2020-08-02 15:10:18', '', 1),
(57, 31, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-05 18:15:33', '', 1),
(58, 31, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-05 18:17:35', '', 1),
(59, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-06 11:31:09', '', 1),
(60, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-07 11:53:58', '07-09-2020 05:56:23 PM', 1),
(61, 31, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-07 15:43:43', '07-09-2020 09:48:02 PM', 1),
(62, 31, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-07 15:48:54', '', 1),
(63, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-07 15:55:48', '07-09-2020 09:56:26 PM', 1),
(64, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-08 18:27:11', '', 1),
(65, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-08 18:34:24', '', 1),
(66, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-08 18:36:01', '', 1),
(67, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 13:09:41', '09-09-2020 07:46:34 PM', 1),
(68, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 18:28:14', '', 1),
(69, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 18:51:31', '', 1),
(70, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 18:52:50', '', 1),
(71, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 18:53:31', '', 1),
(72, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 18:54:37', '', 1),
(73, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 18:56:02', '10-09-2020 02:28:33 AM', 1),
(74, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 20:32:28', '', 1),
(75, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-09 20:34:21', '13-09-2020 12:03:33 AM', 1),
(76, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-13 15:41:18', '', 1),
(77, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-13 17:33:48', '', 1),
(78, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-13 17:36:11', '', 1),
(79, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-14 08:17:22', '16-09-2020 03:55:12 AM', 1),
(80, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-16 09:07:39', '', 0),
(81, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-16 09:07:59', '16-09-2020 08:24:39 PM', 1),
(82, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-16 14:24:55', '', 0),
(83, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-16 14:25:14', '17-09-2020 12:20:29 AM', 1),
(84, 32, '01705829945', 0x3a3a3100000000000000000000000000, '2020-09-16 18:52:57', '', 1),
(85, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-18 14:38:19', '', 0),
(86, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-18 14:38:28', '21-09-2020 09:53:02 PM', 1),
(87, 0, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-26 20:35:56', '', 0),
(88, 29, '01748161027', 0x3a3a3100000000000000000000000000, '2020-09-26 20:36:04', '', 1),
(89, 0, '', 0x3a3a3100000000000000000000000000, '2020-10-23 14:11:55', '', 0),
(90, 36, '', 0x3a3a3100000000000000000000000000, '2020-10-23 14:12:41', '', 1),
(91, 36, 'nazia nuzhat', 0x3a3a3100000000000000000000000000, '2020-10-23 14:27:09', '23-10-2020 08:27:17 PM', 1),
(92, 0, '', 0x3a3a3100000000000000000000000000, '2020-10-23 14:27:26', '', 0),
(93, 36, 'nazia nuzhat', 0x3a3a3100000000000000000000000000, '2020-10-23 15:39:25', '23-10-2020 10:35:19 PM', 1),
(94, 38, 'a', 0x3a3a3100000000000000000000000000, '2020-10-23 16:40:24', '', 1),
(95, 38, 'a', 0x3a3a3100000000000000000000000000, '2020-10-23 16:40:36', '23-10-2020 10:40:41 PM', 1),
(96, 0, '', 0x3a3a3100000000000000000000000000, '2020-10-23 16:51:57', '', 0),
(97, 36, 'nazia nuzhat', 0x3a3a3100000000000000000000000000, '2020-10-23 16:52:05', '0', 1),
(98, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 17:51:03', '23-10-2020 11:51:38 PM', 0),
(99, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 17:52:05', '23-10-2020 11:55:27 PM', 0),
(100, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 17:58:33', '', 1),
(101, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 18:05:09', '', 1),
(102, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 18:38:29', '24-10-2020 12:38:59 AM', 0),
(103, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 18:39:59', '24-10-2020 12:40:04 AM', 0),
(104, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 18:41:08', '24-10-2020 12:41:27 AM', 0),
(105, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 18:42:37', '24-10-2020 12:42:56 AM', 1),
(106, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 19:15:07', '', 1),
(107, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 19:35:33', '24-10-2020 01:52:30 AM', 1),
(108, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 20:41:34', '', 1),
(109, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-23 20:47:21', '', 1),
(110, 43, 'ruba noor', 0x3a3a3100000000000000000000000000, '2020-10-25 02:46:32', '25-10-2020 08:48:34 AM', 1),
(111, 43, 'ruba noor', 0x3a3a3100000000000000000000000000, '2020-10-25 02:48:43', '', 1),
(112, 43, 'ruba noor', 0x3a3a3100000000000000000000000000, '2020-10-25 02:57:06', '25-10-2020 09:10:40 AM', 1),
(113, 42, 'a', 0x3a3a3100000000000000000000000000, '2020-10-25 23:23:39', '', 1),
(114, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:34:52', '26-10-2020 06:34:55 AM', 1),
(115, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:38:22', '', 1),
(116, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:40:05', '', 1),
(117, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:43:47', '', 1),
(118, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:47:05', '', 1),
(119, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:47:17', '', 1),
(120, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:48:17', '', 1),
(121, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:51:42', '', 1),
(122, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:56:24', '', 1),
(123, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:56:44', '', 1),
(124, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:57:40', '', 1),
(125, 0, '', 0x3a3a3100000000000000000000000000, '2020-10-26 00:58:40', '', 0),
(126, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 00:58:48', '', 1),
(127, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:03:35', '', 1),
(128, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:04:02', '26-10-2020 07:04:08 AM', 1),
(129, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:09:44', '', 1),
(130, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:12:37', '', 1),
(131, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:22:27', '', 1),
(132, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:27:32', '', 1),
(133, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:28:44', '26-10-2020 07:28:50 AM', 1),
(134, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:38:03', '', 1),
(135, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:39:22', '', 1),
(136, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:39:36', '', 1),
(137, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:46:58', '', 1),
(138, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:48:19', '', 1),
(139, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:48:35', '26-10-2020 07:48:42 AM', 1),
(140, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:50:40', '', 1),
(141, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:50:50', '', 1),
(142, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:55:28', '', 1),
(143, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 01:56:10', '26-10-2020 07:56:51 AM', 1),
(144, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 02:00:30', '', 1),
(145, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-26 02:10:34', '26-10-2020 08:10:38 AM', 1),
(146, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-27 19:24:46', '28-10-2020 01:25:16 AM', 1),
(147, 42, 'a', 0x3a3a3100000000000000000000000000, '2020-10-27 19:25:55', '28-10-2020 03:41:54 AM', 1),
(148, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-27 22:52:43', '28-10-2020 06:13:27 AM', 1),
(149, 35, 'f', 0x3a3a3100000000000000000000000000, '2020-10-28 22:16:02', '29-10-2020 10:52:24 PM', 1),
(150, 44, 'nazia nuzhat', 0x3a3a3100000000000000000000000000, '2020-11-02 18:42:16', '03-11-2020 12:50:03 AM', 1),
(151, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-11-27 08:47:27', '27-11-2020 02:47:46 PM', 1),
(152, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-11-27 08:49:21', '27-11-2020 02:49:26 PM', 1),
(153, 0, '', 0x3a3a3100000000000000000000000000, '2020-11-27 08:49:53', '', 0),
(154, 0, '', 0x3a3a3100000000000000000000000000, '2020-11-27 08:50:50', '', 0),
(155, 0, '', 0x3a3a3100000000000000000000000000, '2020-11-27 08:52:17', '', 0),
(156, 0, '', 0x3a3a3100000000000000000000000000, '2020-11-27 09:06:42', '', 0),
(157, 0, '', 0x3a3a3100000000000000000000000000, '2020-11-27 09:11:05', '', 0),
(158, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-11-29 17:42:18', '29-11-2020 11:59:25 PM', 1),
(159, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-11-29 18:04:32', '30-11-2020 08:20:57 PM', 1),
(160, 47, 'gft', 0x3a3a3100000000000000000000000000, '2020-11-30 19:05:58', '01-12-2020 01:06:06 AM', 1),
(161, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-02 16:23:18', '02-12-2020 10:23:22 PM', 1),
(162, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-02 19:11:45', '03-12-2020 02:03:49 AM', 1),
(163, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-04 17:35:21', '', 1),
(164, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-06 14:39:17', '', 1),
(165, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-07 13:37:55', '', 1),
(166, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-07 13:45:15', '08-12-2020 12:00:46 AM', 1),
(167, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-07 18:26:24', '', 1),
(168, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-27 13:53:47', '28-12-2020 12:09:58 AM', 1),
(169, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-27 19:15:57', '28-12-2020 05:52:42 PM', 1),
(170, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-28 17:19:51', '29-12-2020 12:30:04 PM', 1),
(171, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-29 13:02:29', '30-12-2020 12:03:21 AM', 1),
(172, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-29 20:03:24', '30-12-2020 02:10:10 AM', 1),
(173, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-30 19:31:00', '', 1),
(174, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-30 22:06:03', '', 1),
(175, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-31 08:36:36', '31-12-2020 02:37:37 PM', 1),
(176, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2020-12-31 18:30:30', '01-01-2021 02:56:09 AM', 1),
(177, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-03 18:11:45', '04-01-2021 01:04:41 AM', 1),
(178, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-03 20:22:36', '04-01-2021 02:56:16 AM', 1),
(179, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-03 20:58:18', '04-01-2021 02:58:30 AM', 1),
(180, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 10:35:51', '05-01-2021 09:02:09 PM', 1),
(181, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 15:04:56', '', 1),
(182, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 19:59:02', '06-01-2021 03:03:19 AM', 1),
(183, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 21:21:05', '06-01-2021 03:25:52 AM', 1),
(184, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 21:40:27', '06-01-2021 04:01:59 AM', 1),
(185, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 22:06:19', '', 1),
(186, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 22:47:04', '06-01-2021 04:47:26 AM', 1),
(187, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-05 23:07:13', '06-01-2021 05:09:03 AM', 1),
(188, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 08:31:06', '', 1),
(189, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 09:35:33', '06-01-2021 03:43:06 PM', 1),
(190, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 09:43:32', '06-01-2021 03:43:37 PM', 1),
(191, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 10:27:24', '06-01-2021 04:27:39 PM', 1),
(192, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 20:31:00', '07-01-2021 02:46:07 AM', 1),
(193, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 21:02:33', '07-01-2021 03:03:06 AM', 1),
(194, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 21:05:43', '07-01-2021 03:05:51 AM', 1),
(195, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-06 21:07:41', '07-01-2021 03:15:40 AM', 1),
(196, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-07 09:36:31', '07-01-2021 03:36:34 PM', 1),
(197, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-07 09:37:12', '07-01-2021 03:37:25 PM', 1),
(198, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-07 09:37:37', '07-01-2021 03:55:25 PM', 1),
(199, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-07 10:11:31', '', 1),
(200, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-07 10:34:59', '08-01-2021 09:57:32 PM', 1),
(201, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 18:57:48', '10-01-2021 01:03:51 AM', 1),
(202, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 19:13:15', '10-01-2021 01:23:56 AM', 1),
(203, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 19:59:50', '', 1),
(204, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 20:06:12', '', 1),
(205, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 20:08:57', '', 1),
(206, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 20:11:08', '', 1),
(207, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 20:11:41', '', 1),
(208, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 20:13:33', '', 1),
(209, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 20:14:24', '', 1),
(210, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-09 20:15:00', '10-01-2021 02:15:22 AM', 1),
(211, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-10 22:42:41', '', 1),
(212, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-12 20:24:50', '13-01-2021 02:25:17 AM', 1),
(213, 35, 'Dilruba nusrat', 0x3a3a3100000000000000000000000000, '2021-01-12 20:25:32', '13-01-2021 02:25:55 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `activation` varchar(100) NOT NULL DEFAULT 'inactive',
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL,
  `occupation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `address`, `city`, `gender`, `email`, `blood_group`, `phone`, `password`, `birthdate`, `uniqueid`, `activation`, `regDate`, `updationDate`, `occupation`) VALUES
(1, 'sangbid', 'dhaka', 'Dhaka, Bangladesh', 'male', 'sang@gmail.com', '', NULL, '123456', '', '', '', '2019-03-05 14:53:13', '04-03-2019', ''),
(2, 'Sangbid', 'sdfasdfs', 'Dhaka, Bangladesh', 'male', 'abx@gmail.com', '', NULL, '123456', '', '', '', '2019-04-03 09:10:07', '', ''),
(6, 'Runa', 'mirpur', 'dhaka', 'female', 'runa@gmail.com', '', NULL, '123456', '', '', '', '2020-07-28 10:13:32', '', ''),
(7, 'Shadesh Ram Gour', '', 'Dhaka', 'male', 'shadesh@gmail.com', '', NULL, '123456', '', '', '', '2020-07-29 07:29:50', '29-07-2020', ''),
(8, 'nazia nuzhat', 'mirpur', 'Dhaka', 'female', 'nazia15-8973@diu.edu.bd', '', NULL, 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '2020-07-31 08:25:08', '', ''),
(9, 'rohim', 'dhaka', 'Dhaka', 'male', 'rohim@gmail.com', '', NULL, 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '2020-07-31 08:30:11', '', ''),
(29, 'Nazia nuzhat runa  ', 'dhaka', 'Dhaka', 'female', 'nazia15-8973@diu.edu.bd', 'B+', '01748161027', '1234567', '', '', '', '2020-08-02 19:06:39', '16-09-2020 03:13:15 AM', ''),
(30, 'f', 'dhaka', 'Dhaka', 'female', 'abc@gmail.com', '', '017000000000', '123456', '', '', '', '2020-08-02 19:08:33', '', ''),
(31, 'f', 'mirpur', 'Dhaka', 'male', 'nazia15-8973@diu.edu.bd', '', '01748161027', '1234567', '', '', '', '2020-09-05 18:14:32', '', ''),
(32, 'janina dgywfyuew hdvgwedf gevdge ', 'dgdh', 'dvgdf', 'male', 'abc12@gmail.com', 'B+', '01705829945', '123450', '', '', '', '2020-09-16 18:52:30', '', ''),
(33, 'f', 'mirpur', 'Dhaka', 'female', 'nazia.nuzhat24@gmail.com', 'B+', '01748161027', '123456', '', '', 'inactive', '2020-10-23 04:19:57', '', ''),
(34, 'f', 'mirpur', 'Dhaka', 'female', 'nazia.nuzhat24@gmail.com', 'B+', '01748161027', '123456', '', '', 'inactive', '2020-10-23 04:24:04', '', ''),
(35, 'Dilruba nusrat', 'Mirpur-1', 'Dhaka', 'female', 'nazia.nuzhat24@gmail.com', 'AB+', '01748161028', '123456', '09-01-1995', 'PID_35', 'on', '2020-10-23 04:36:21', '29-10-2020 04:56:35 AM', 'Teacher'),
(36, 'nazia nuzhat', 'dhaka', 'Dhaka', 'female', 'nazia.nuzhat24@gmail.com', 'B+', '01748161027', '123456789', '24-02-1998', 'PID_36', 'inactive', '2020-10-23 13:31:05', '', ''),
(37, 'a', 'mirpur', 'Dhaka', 'female', 'nazia15-8973@diu.edu.bd', 'B+', '01748161027', '123456', '19-10-2020', 'PID_37', 'inactive', '2020-10-23 13:35:32', '', ''),
(38, 'a', 'mirpur', 'Dhaka', 'female', 'nazia15-8973@diu.edu.bd', 'B+', '017000000000', '123123', '20-10-2020', 'PID_38', 'inactive', '2020-10-23 13:50:52', '', ''),
(39, 'nazia nuzhat', 'dhaka', 'Dhaka', 'female', 'nazia15-8973@diu.edu.bd', 'B+', '01748161027', '123456', '24-02-1998', 'PID_39', 'inactive', '2020-10-23 16:42:48', '', ''),
(40, 'nazia nuzhat', 'mirpur', 'Dhaka', 'female', 'nazia15-8973@diu.edu.bd', 'B+', '01748161027', '123456', '07-10-2020', 'PID_9982e9fc36', 'inactive', '2020-10-23 21:12:56', '', ''),
(41, 'a', 'mirpur', 'Dhaka', 'female', 'nazia15-8973@diu.edu.bd', 'B+', '01748161027', '123456', '21-10-2020', 'a_3415', 'inactive', '2020-10-23 21:33:29', '', ''),
(42, 'a', 'mirpur', 'Dhaka', '', 'nazia.nuzhat24@gmail.com', 'B+', '01999999999', '123456', '26-10-2020', 'a_4413', 'on', '2020-10-25 02:38:38', '', ''),
(43, 'ruba noor', 'mirpur', 'Dhaka', 'female', 'nazia.nuzhat24@gmail.com', 'B+', '0908989711', '123456', '07-10-2020', 'ruba_5701', 'on', '2020-10-25 02:41:48', '', ''),
(44, 'nazia nuzhat', 'dhanmondi', 'Dhaka', 'female', 'nazia.nuzhat24@gmail.com', 'B+', '01748161027', '1234567', '18-11-2020', 'nazia_2066', 'on', '2020-11-02 18:40:02', '', ''),
(45, 'nazia', 'mirpur', '', 'female', '', 'b+', '', '123456', '24-02-1998', 'nazia_9903', 'inactive', '2020-11-30 18:53:16', '', ''),
(46, 'shadesh', 'signboard', '', 'male', '', 'b+', '', '123456', '08-08-1997', 'shadesh_2114', 'inactive', '2020-11-30 19:01:12', '', ''),
(47, 'gft', 'hfuy', '', 'Other', 'shadesh15-8599@diu.edu.bd', 'jg', '6575434', '123456', '23-12-2020', 'gft_1082', 'on', '2020-11-30 19:04:14', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `total_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`id`, `total_count`) VALUES
(1, 4);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `doclicence`
--
ALTER TABLE `doclicence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctortime`
--
ALTER TABLE `doctortime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceID` (`invoiceID`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `llog`
--
ALTER TABLE `llog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `patientcode`
--
ALTER TABLE `patientcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phlicence`
--
ALTER TABLE `phlicence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plog`
--
ALTER TABLE `plog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `scheduled`
--
ALTER TABLE `scheduled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `bid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `number` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doclicence`
--
ALTER TABLE `doclicence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctortime`
--
ALTER TABLE `doctortime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `llog`
--
ALTER TABLE `llog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patientcode`
--
ALTER TABLE `patientcode`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `phlicence`
--
ALTER TABLE `phlicence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `plog`
--
ALTER TABLE `plog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `scheduled`
--
ALTER TABLE `scheduled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`);

--
-- Constraints for table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `invoice` (`invoiceID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
