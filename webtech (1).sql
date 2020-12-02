-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 08:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admittedpatient`
--

CREATE TABLE `admittedpatient` (
  `name` varchar(32) NOT NULL,
  `problem` text NOT NULL,
  `department` varchar(32) NOT NULL,
  `referredddoc` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admittedpatient`
--

INSERT INTO `admittedpatient` (`name`, `problem`, `department`, `referredddoc`) VALUES
('Maruf', 'Heart disease', 'Cardiology', 'N. A. M Momenuzzaman'),
('Maruf', 'Habijabi', 'Cardiology', 'Mizanur Rahman'),
('Maruf', 'fthbdtf', 'Cardiology', 'N. A. M Momenuzzaman'),
('Maruf', 'fdgdrvcesfxwsesr  er', 'Cardiology', 'N. A. M Momenuzzaman'),
('Maruf', 'gg', 'Cardiology', 'Mizanur Rahman'),
('Maruf', '!!!!!!!!!!!!!', 'Surgeon', 'DR. Ajit Kumar Guhu'),
('Maruf', '!!', 'Cardiology', 'Mizanur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `appointmentlist`
--

CREATE TABLE `appointmentlist` (
  `date` date NOT NULL,
  `time` time NOT NULL,
  `docname` varchar(32) NOT NULL,
  `patientname` varchar(32) NOT NULL,
  `visitreason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointmentlist`
--

INSERT INTO `appointmentlist` (`date`, `time`, `docname`, `patientname`, `visitreason`) VALUES
('2020-05-11', '08:15:26', 'momenuzzaman', 'Maruf', 'k cghunucsdhkjdfnkdfkbndvbknvkvcxn kdfolsdfigdfkvnkcvnkldffgnlkdfsvnkdsfn vndifshcindfhi kgncsidsoifcj sdfkm hgdfiucvhnkdf kdsfjcvnihfiu hdkjshcgnudfcv8i');

-- --------------------------------------------------------

--
-- Table structure for table `assignednurse`
--

CREATE TABLE `assignednurse` (
  `nursename` varchar(32) NOT NULL,
  `dept` varchar(32) NOT NULL,
  `docname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignednurse`
--

INSERT INTO `assignednurse` (`nursename`, `dept`, `docname`) VALUES
('Nishat', 'Cardiology', 'N. A. M Momenuzzaman'),
('Nishat', 'Cardiology', 'N. A. M Momenuzzaman'),
('Nishat', 'Cardiology', 'Mizanur Rahman'),
('Nishat', 'Cardiology', 'N. A. M Momenuzzaman'),
('Nishat', 'Cardiology', 'N. A. M Momenuzzaman');

-- --------------------------------------------------------

--
-- Table structure for table `circularlist`
--

CREATE TABLE `circularlist` (
  `pos` text NOT NULL,
  `dept` text NOT NULL,
  `func` text NOT NULL,
  `emtype` text NOT NULL,
  `officetime` text NOT NULL,
  `joblevel` text NOT NULL,
  `reports` text NOT NULL,
  `officeloc` text NOT NULL,
  `salary` text NOT NULL,
  `agelimit` text NOT NULL,
  `edureq` text NOT NULL,
  `expreq` text NOT NULL,
  `jobrep1` text NOT NULL,
  `jobrep2` text NOT NULL,
  `jobrep3` text NOT NULL,
  `jobrep4` text NOT NULL,
  `adddjobrep` text NOT NULL,
  `adddjobrep2` text NOT NULL,
  `adddjobrep3` text NOT NULL,
  `adddjobrep4` text NOT NULL,
  `techcom` text NOT NULL,
  `techcom2` text NOT NULL,
  `techcom3` text NOT NULL,
  `behavecom` text NOT NULL,
  `behavecom2` text NOT NULL,
  `behavecom3` text NOT NULL,
  `benefits` text NOT NULL,
  `councilreq` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `circularlist`
--

INSERT INTO `circularlist` (`pos`, `dept`, `func`, `emtype`, `officetime`, `joblevel`, `reports`, `officeloc`, `salary`, `agelimit`, `edureq`, `expreq`, `jobrep1`, `jobrep2`, `jobrep3`, `jobrep4`, `adddjobrep`, `adddjobrep2`, `adddjobrep3`, `adddjobrep4`, `techcom`, `techcom2`, `techcom3`, `behavecom`, `behavecom2`, `behavecom3`, `benefits`, `councilreq`) VALUES
('Staff Nurse', 'Nursing Services', 'Nursing', 'Full Time Staff (Permanent/Contractual)', 'Roster Hour', 'Entry Level', 'Head Nurse', 'Evercare Hospital Dhaka', 'Negotiable', '18-22', 'Diploma / B.Sc in Nursing.', '0-1 year experience.', 'Aware of and understand the nursing policies and procedures of the hospital and ensure that they are adhered to.', 'Ensure that nursing care plans are written and up to date. Always taking the patients individual needs into account.', 'Ensure that the nursing section of the patient`s progress notes are maintained and that each entry reflects accurately on the patientâ€™s physical/mental state and response to treatments.', 'Maintain ward records as indicated by nursing policy.', 'Reports to the head nurse or charge nurse.', 'Identifies patient`s needs. Plans and implements care accordingly.', 'Evaluates goals and objectives of care plans.', 'Attends and participates in all meetings as required.', 'Training in IV Cannulation', 'Basic Computer Skill.', 'BLS/CPR training', 'Commitment', 'Participative', 'Caring', 'As per company policy. (PF, Gratuity, Festival bonus, Accommodation, Dinning & Medical)', 'The Staff Nurse must be licensed as a Registered Nurse.');

-- --------------------------------------------------------

--
-- Table structure for table `complaintlist`
--

CREATE TABLE `complaintlist` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `complaint` text NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaintlist`
--

INSERT INTO `complaintlist` (`id`, `date`, `complaint`, `userid`) VALUES
(1, '2020-05-12', 'dfscsfgsdfc', 123),
(4, '2020-05-18', 'Ac was not working', 17337791);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Obstetrician'),
(2, 'Pediatrician'),
(3, 'Surgeon'),
(4, 'Cardiology');

-- --------------------------------------------------------

--
-- Table structure for table `doctorlist`
--

CREATE TABLE `doctorlist` (
  `id` int(11) NOT NULL,
  `dept` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorlist`
--

INSERT INTO `doctorlist` (`id`, `dept`, `name`) VALUES
(12345, 'Surgeon', 'DR. Ajit Kumar Guhu'),
(123456, 'Medicine', 'Mizanur Rahman'),
(172584, 'Cardiology', 'N. A. M Momenuzzaman'),
(1234568, 'Obstetrician', 'Dr. Mijan'),
(17336991, 'Pediatrician', 'DR. Ajit Kumar Guhu'),
(123456789, 'Cardiology', 'Mizanur Rahman'),
(963852789, 'Obstetrician', 'Moshiur');

-- --------------------------------------------------------

--
-- Table structure for table `dutylist`
--

CREATE TABLE `dutylist` (
  `day` varchar(32) NOT NULL,
  `12am` text NOT NULL,
  `8am` text NOT NULL,
  `4am` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `dept` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `name`, `dept`) VALUES
(8529, 'Fariha', 'Pediatrician'),
(17337681, 'Fariha', 'Surgeon'),
(17337861, 'Nishat', 'Cardiology'),
(2147483647, 'Moshiur', 'Cardiology');

-- --------------------------------------------------------

--
-- Table structure for table `solvedcomplaintlist`
--

CREATE TABLE `solvedcomplaintlist` (
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` date NOT NULL,
  `complaint` text NOT NULL,
  `action` varchar(32) NOT NULL,
  `report` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solvedcomplaintlist`
--

INSERT INTO `solvedcomplaintlist` (`cid`, `uid`, `date`, `complaint`, `action`, `report`) VALUES
(1, 123, '2020-05-12', 'dfscsfgsdfc', 'No', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(1, 123, '2020-05-12', 'dfscsfgsdfc', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'No', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'No', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'No', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(4, 17337791, '2020-05-18', 'Ac was not working', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(1, 123, '2020-05-12', 'dfscsfgsdfc', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that'),
(1, 123, '2020-05-12', 'dfscsfgsdfc', 'Yes', 'We are extremely sorry for what you have experienced from our hospital.We have investigated your complaint and we want to inform you that sfdvasdfv');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `Staff Name` varchar(20) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Date of Employment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`Staff Name`, `Designation`, `Date of Employment`) VALUES
('Fahmida Zaman', 'Nurse Practitioner', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `gender` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `bg` text NOT NULL,
  `marstatus` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `contactnum` text NOT NULL,
  `address` text NOT NULL,
  `ecp` varchar(32) NOT NULL,
  `ecn` text NOT NULL,
  `relwadmin` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `imgname` varchar(32) NOT NULL,
  `type` text NOT NULL,
  `usertype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `dob`, `bg`, `marstatus`, `email`, `contactnum`, `address`, `ecp`, `ecn`, `relwadmin`, `password`, `imgname`, `type`, `usertype`) VALUES
(12345, 'DR. Ajit Kumar Guhu', 'Male', '2020-05-05', 'B+', 'Married', 'ajit@ymail.com', '01711111111', '			Dhaka					\r\n							', 'United Hospital', '01711-000000', 'Hospital', '123', 'DR. Ajit Kumar Guhu', 'doctor', 'Surgeon'),
(123456, 'Masum', 'Male', '2020-08-31', 'O+', 'Single', 'Mithunchowdhury411@gmail.com', '01622-78241', 'Dhaka\r\n							', 'XYZ', '01714-049024', 'xyz', '123', 'Mithun', 'admin', 'operations'),
(963852, 'Niloy', 'Female', '2020-08-30', 'O+', 'Married', 'niloy@x.com', '01622782418', '\r\nNoakhali							', 'XYZ', '01714-049024', 'xyz', '123', 'Niloy', 'patient', 'Normal'),
(1234567, 'Mithun', 'Male', '2020-08-31', 'O+', 'Single', 'Mithunchowdhury411@gmail.com', '01622-78241', 'Dhaka\r\n							', 'XYZ', '01714-049024', 'xyz', '123456789', 'Mithun', 'admin', 'operations'),
(1234568, 'Dr. Mijan', 'Male', '2020-04-28', 'O-', 'Married', 'momenuzamman@gmail.com', '01711111111', '			Dhaka					\r\n							', 'United Hospital', '01711-000000', 'Hospital', '123', 'Dr. Mijan', 'doctor', 'Obstetrician'),
(123456789, 'DR. N. A. M. Momenuzzaman', 'Male', '2020-04-28', 'O-', 'Married', 'momenuzamman@gmail.com', '01711111111', '			dhaka					\r\n							', 'United Hospital', '01711-000000', 'Hospital', '123', 'DR. N. A. M. Momenuzzaman', 'doctor', 'Cardiologist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaintlist`
--
ALTER TABLE `complaintlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorlist`
--
ALTER TABLE `doctorlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaintlist`
--
ALTER TABLE `complaintlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
