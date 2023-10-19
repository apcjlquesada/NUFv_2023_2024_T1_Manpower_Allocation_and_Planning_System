-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2023 at 04:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Supervisor', 'svisor', 8979555558, 'svisor@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-09-11 04:36:52'),
(3, 'Coordinator', 'cdnator', 8979555558, 'cdnator@gmail.com', '01cfcd4f6b8770febfb40cb906715822', '2023-09-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `ID` int(5) NOT NULL,
  `DepartmentName` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`ID`, `DepartmentName`, `CreationDate`) VALUES
(10, 'Technician', '2023-09-29 01:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `ID` int(5) NOT NULL,
  `DepartmentID` int(5) DEFAULT NULL,
  `EmpId` varchar(100) DEFAULT NULL,
  `EmpName` varchar(200) DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpContactNumber` bigint(10) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `EmpDateofbirth` date DEFAULT NULL,
  `EmpAddress` varchar(250) DEFAULT NULL,
  `EmpDateofjoining` date DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`ID`, `DepartmentID`, `EmpId`, `EmpName`, `EmpEmail`, `EmpContactNumber`, `Designation`, `EmpDateofbirth`, `EmpAddress`, `EmpDateofjoining`, `Description`, `Password`, `ProfilePic`, `CreationDate`, `UpdationDate`) VALUES
(6, 10, '02', 'Jerico ', 'jerico@gmail.com', 9494774463, NULL, '2000-06-13', 'QC', '2023-09-29', 'New Technician', 'e10adc3949ba59abbe56e057f20f883e', '3ff0571ef46ab4cb58f51e1f8b82fad61695952569.jpg', '2023-09-29 01:56:09', NULL),
(7, 10, '01', 'Spongebob', 'spongebob@gmail.com', 912321435, NULL, '2004-06-03', 'Tondo', '2023-10-03', 'Sponge', 'e10adc3949ba59abbe56e057f20f883e', '3ff0571ef46ab4cb58f51e1f8b82fad61696336296.jpg', '2023-10-03 12:31:36', NULL),
(8, 10, '03', 'Patrick', 'patrick@gmail.com', 9123465789, NULL, '2008-06-18', 'dffgdg', '2023-10-19', 'sasa', 'e10adc3949ba59abbe56e057f20f883e', 'cf1f1dd69c7f5344379abd05bb3cf4381696384506.png', '2023-10-04 01:55:06', NULL),
(9, 10, '05', 'Sandy', 'sandy@gmail.com', 9999999999, NULL, '2003-01-15', 'Tondo', '2023-10-11', 'qwewqew', 'fcea920f7412b5da7be0cf42b8c93759', 'cf1f1dd69c7f5344379abd05bb3cf4381696990911.png', '2023-10-11 02:21:51', NULL),
(10, 10, '09', 'Luffy', 'gumgum@gmail.com', 9999999566, NULL, '2000-06-15', 'Tondo', '2023-10-14', 'Pirate King', 'a549ac9549b6c3c2182b743d6e553fb6', 'fd8fa9acfddf6a112889429f07cd32dc1697251342.png', '2023-10-14 02:42:22', NULL),
(11, 10, '06', 'Krabs', 'krabs@gmail.com', 9087687687, NULL, '2003-10-14', 'QC', '2023-10-18', 'New Technician', 'e10adc3949ba59abbe56e057f20f883e', 'dbe6b5a8b59d3b41ad7a1f029854e2551697591825.jpg', '2023-10-18 01:17:06', NULL),
(12, 10, '07', 'Lary', 'lary@gmail.com', 921463165, NULL, '2003-06-19', 'Manila', '2023-10-18', 'New Technician', 'e10adc3949ba59abbe56e057f20f883e', 'dcc5deffb925b389cf3db6ab3e71f9941697591991.png', '2023-10-18 01:19:51', NULL),
(13, 10, '08', 'Dexter', 'dexter@gmail.com', 923847632, NULL, '2002-07-24', 'Malabon', '2023-10-18', 'New Technician', 'e10adc3949ba59abbe56e057f20f883e', '6ef85eb9fff218ac79f0429c4aa1b3821697592137.jpg', '2023-10-18 01:22:17', NULL),
(14, 10, '10', 'Larry', 'larry@gmail.com', 921342143, NULL, '2007-05-21', 'QC', '2023-10-18', 'New Technician', 'e10adc3949ba59abbe56e057f20f883e', 'dcc5deffb925b389cf3db6ab3e71f9941697597124.png', '2023-10-18 02:45:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '                                                                                 Employee Task Management System\r\nWelcome to about Us page', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'NU FAIRVIEW - QC', 'maps@gmail.com', 7896541239, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblreport`
--

CREATE TABLE `tblreport` (
  `SR` varchar(256) NOT NULL,
  `ServiceReport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreport`
--

INSERT INTO `tblreport` (`SR`, `ServiceReport`) VALUES
('', 'sss.png'),
('', 'sss.png'),
('', '384552463_865080405049143_5037442527406967175_n.jpg'),
('', 'Service Report.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbltask`
--

CREATE TABLE `tbltask` (
  `ID` int(5) NOT NULL,
  `DeptID` int(5) DEFAULT NULL,
  `AssignTaskto` int(5) DEFAULT NULL,
  `TaskPriority` varchar(100) DEFAULT NULL,
  `TaskTitle` varchar(250) DEFAULT NULL,
  `TaskDescription` mediumtext DEFAULT NULL,
  `TaskEnddate` date DEFAULT NULL,
  `TaskAssigndate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `WorkCompleted` varchar(250) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `ClientName` varchar(255) DEFAULT NULL,
  `ProjectLoc` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `TeamSize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltask`
--

INSERT INTO `tbltask` (`ID`, `DeptID`, `AssignTaskto`, `TaskPriority`, `TaskTitle`, `TaskDescription`, `TaskEnddate`, `TaskAssigndate`, `Status`, `WorkCompleted`, `Remark`, `UpdationDate`, `ClientName`, `ProjectLoc`, `StartDate`, `TeamSize`) VALUES
(6, 10, 6, 'Repair, Maintenance, and Installation', 'JB SM MANILA Project	', 'Project Description', '2023-10-05', '2023-09-29 02:45:08', 'Completed', '100', 'Finished', NULL, 'Mcdo', 'Manila', '2023-09-30', 2),
(7, 10, 6, 'Maintenance and Installation', 'CK CHINABANK	Project', 'Project Description', '2023-10-11', '2023-10-02 05:13:25', 'Inprogress', '99', 'One more day to finish', NULL, 'Mcdo', 'Manila', '2023-10-02', 2),
(8, 10, 8, 'Installation', 'CK BSO	Project', 'Project Description', '2023-10-07', '2023-10-04 02:01:04', NULL, NULL, NULL, NULL, 'Mr Krabs', 'Bikini Bottom', '2023-10-04', 1),
(9, 10, 13, 'Repair, Maintenance, and Installation', 'PX WALTER MART	Project', 'Project Description', '2023-10-18', '2023-10-09 16:31:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 9, 'Maintenance and Installation', 'CK MARKET MARKET	Project', 'Project Description', '2023-10-20', '2023-10-11 02:22:56', 'Inprogress', '70', 'Almost Done', NULL, NULL, NULL, NULL, NULL),
(11, 10, NULL, 'Repair and Maintenance', 'JB SVC ENGG	Project', 'Project Description', '2023-10-26', '2023-10-18 01:26:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 10, NULL, 'Maintenance and Installation', 'GLOBAL PAYMENTS	Project', 'Project Description', '2023-10-21', '2023-10-18 01:26:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 10, NULL, 'Repair', 'JB E. RODRIGUEZ	Project', 'Project Description', '2023-10-23', '2023-10-18 01:27:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 10, NULL, 'Repair, Maintenance, and Installation', 'GW PCU TAFT	Project', 'NA', '2023-10-26', '2023-10-18 01:32:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 10, 10, 'Maintenance', 'GW KANLAON	Project', 'NA', '2023-10-26', '2023-10-18 01:33:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-18 02:12:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 10, 6, 'Installation', 'R.MAGSAYSAY BLVD CORNER PUREZA ST.BRGY 626 MANILA CITY	', 'Installation', '2023-10-25', '2023-10-18 02:47:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltasktracking`
--

CREATE TABLE `tbltasktracking` (
  `ID` int(10) NOT NULL,
  `TaskID` int(10) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `WorkCompleted` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltasktracking`
--

INSERT INTO `tbltasktracking` (`ID`, `TaskID`, `Remark`, `Status`, `WorkCompleted`, `UpdationDate`) VALUES
(8, 6, 'sadasdas', 'Completed', '100', '2023-09-29 07:38:26'),
(10, 7, 'lLLALALLALA', 'Inprogress', '85', '2023-10-03 08:58:01'),
(11, 7, 'ewaN', 'Inprogress', '95', '2023-10-03 09:29:31'),
(13, 7, 'sasasas', 'Inprogress', '99', '2023-10-03 10:41:41'),
(68, 10, 'gffdg', 'Inprogress', '70', '2023-10-18 00:44:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltask`
--
ALTER TABLE `tbltask`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltasktracking`
--
ALTER TABLE `tbltasktracking`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltask`
--
ALTER TABLE `tbltask`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbltasktracking`
--
ALTER TABLE `tbltasktracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
