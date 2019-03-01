-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 11:23 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `open`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `idnum` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `birth` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `idnum`, `password`, `fname`, `lname`, `mname`, `birth`, `status`, `gender`) VALUES
(1, 'admin', '1234', 'MG', 'Feb', 'wala', 'March 13 1992', 'single', 'Female'),
(2, 'p', 'argie', 'p', 'p', 'p', 'march 19, 1991', 'Single', 'Male'),
(5, '123456', 'Okpani', 'Okpani', 'Juliet', 'Ezenma', '12/12/1993', 'Single', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `reg` varchar(15) NOT NULL,
  `session` varchar(15) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `course` varchar(30) NOT NULL,
  `cc1` varchar(10) NOT NULL,
  `ctitle1` varchar(30) NOT NULL,
  `grade1` varchar(5) NOT NULL,
  `cc2` varchar(10) NOT NULL,
  `ctitle2` varchar(30) NOT NULL,
  `grade2` varchar(5) NOT NULL,
  `cc3` varchar(10) NOT NULL,
  `ctitle3` varchar(30) NOT NULL,
  `grade3` varchar(5) NOT NULL,
  `cc4` varchar(10) NOT NULL,
  `ctitle4` varchar(30) NOT NULL,
  `grade4` varchar(5) NOT NULL,
  `cc5` varchar(10) NOT NULL,
  `ctitle5` varchar(30) NOT NULL,
  `grade5` varchar(5) NOT NULL,
  `resultgpa` varchar(10) NOT NULL,
  `studremark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `reg`, `session`, `semester`, `course`, `cc1`, `ctitle1`, `grade1`, `cc2`, `ctitle2`, `grade2`, `cc3`, `ctitle3`, `grade3`, `cc4`, `ctitle4`, `grade4`, `cc5`, `ctitle5`, `grade5`, `resultgpa`, `studremark`) VALUES
(19, 'Okoro Dandy Junior', '10750', '2018/2019', 'First', 'Computer Science', 'GNS 101', 'English Language', 'A', 'COM 123', 'Introduction to Programming', 'A', 'COM 102', 'Software Development', 'A', 'COM 104', 'Data Structure', 'A', 'STA 113', 'Descriptive Statistics', 'A', '4', 'Distinction'),
(20, 'Anwara John Eze', '2018/HND/16543/', '2018/2019', 'First', 'Computer Science', 'GNS 101', 'English Language', 'A', 'COM 123', 'Introduction to Programming', 'A', 'COM 102', 'Software Development', 'A', 'COM 104', 'Data Structure', 'A', 'STA 113', 'Descriptive Statistics', 'A', '4', 'Distinction');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `idnumber` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `yearlevel` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `bday` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`, `mname`, `idnumber`, `password`, `course`, `yearlevel`, `section`, `gender`, `status`, `bday`) VALUES
(1, 'Rosemae', 'Jalandoni', 'Pansoy', '09-0001', '0001', '', '1', 'A', 'Female', 'Single', 'November 20, 1992'),
(2, 'July Ann', 'Alingasa', 'Layco', '09-0002', '', 'BSIS', '1', 'A', 'Female', 'Single', 'January 01, 2013'),
(4, 'Okoro', 'Dandy', 'Junior', '10750', 'chisimdinugo', 'Computer S', '2018/2019', '1', 'Male', 'Single', '09/07/2000'),
(5, 'Okpani', 'Juliet', 'Ezenma', '12345', 'Okpani', 'Computer S', '2018/2019', 'Second', 'Female', 'Single', '12/12/1993');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `idnumber` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `work` varchar(10) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `bday` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `fname`, `lname`, `mname`, `idnumber`, `password`, `work`, `gender`, `status`, `bday`) VALUES
(1, 'Mary Grace', 'Febrio', 'Bjor', '00-1111', '1111', 'Full Time', 'Female', 'Single', 'March 13, 1992'),
(2, 'Cherie', 'Mistas', 'Pakingking', '00-2222', '2222', 'Full Time', 'Female', 'Single', 'March 07, 1992'),
(3, 'Argie', 'Policarpio', 'none', 'TID-RXK0RUM0', 'argie', 'Full Time', 'Male', 'Single', 'march 19, 1991'),
(4, 'huhuhu', 'huhuhuh', 'uhuhuhu', 'TID-IHS3ZDS5', '', 'Full Time', 'Male', 'Single', 'kojkjk');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `idnumber` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `idnumber`, `password`, `position`) VALUES
(1, '00-1111', '1111', 'teacher'),
(2, '00-2222', '2222', 'teacher'),
(3, '09-0001', '0001', 'student'),
(4, '09-0002', '', 'student'),
(5, 'p', '', 'student'),
(6, 'admin', '1234', 'admin'),
(7, 'p', 'argie', 'admin'),
(8, 'TID-RXK0RUM0', 'argie', 'teacher'),
(9, 'TID-IHS3ZDS5', '', 'teacher'),
(10, '10750', 'chisimdinugo', 'student'),
(11, '12345', 'Okpani', 'student'),
(13, '123456', 'Okpani', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
