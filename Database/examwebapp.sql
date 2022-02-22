-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 03:23 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examwebapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `date`) VALUES
(28, 'BBA(Comp. App.)', '2021-11-06 06:58:06'),
(29, 'BCA Sci.', '2021-11-06 06:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(30) NOT NULL,
  `tid` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `ttime` varchar(10) NOT NULL,
  `ins` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `tid`, `name`, `subject`, `class`, `ttime`, `ins`) VALUES
(23, 4, 'QUIZ1', 'Visual', 'MCS', '5', 'cajdbvlab'),
(24, 4, 'QUIZ X', 'OOP', 'MCS', '20', 'hkfkwefb'),
(25, 9, 'Python Test', 'Python', 'BBA(Comp.', '10', 'You Have to complete all the question in the given'),
(26, 9, 'Python', 'Python', 'BCA', '10', 'Nothing'),
(39, 1, 'sads', 'Python', 'BBA(Comp.', '10', 'dfsdvv');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `marks` int(30) NOT NULL,
  `question` varchar(200) NOT NULL,
  `opt1` varchar(50) NOT NULL,
  `opt2` varchar(50) NOT NULL,
  `opt3` varchar(50) NOT NULL,
  `opt4` varchar(50) NOT NULL,
  `ans` varchar(30) NOT NULL,
  `hint` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject`, `marks`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `hint`) VALUES
(10, 'OOP', 5, 'OOP Stands For?', 'Object Oriented Programming', 'Object Oriented Program', 'Orient Object Program', 'Orient Object Programming', 'Object Oriented Programming', 'NA'),
(21, 'Python', 1, 'What is Python', 'Scripting Language', 'Designing Language', 'Assembly Language', 'OOP Language', 'OOP Language', ''),
(22, 'Core', 1, 'Is Java is pure Object Oriented Language', 'Yes', 'No', 'Not an OOP Language nor  Programming Language', 'None of Above', 'No', ''),
(23, 'Python', 1, 'This is the test', '1', '2', '3', '4', '1', ''),
(24, 'Python', 1, 'How to declare Function in Python?', '$', 'func', 'fun', 'def', 'def', '');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `tname` varchar(30) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `marks` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `per` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `tid`, `tname`, `sid`, `marks`, `class`, `subject`, `per`, `status`) VALUES
(376, 23, 'QUIZ1', 'student', 3, 'MCS', 'Visual', '100', 'Pass'),
(377, 24, 'QUIZ X', 'student', 0, 'MCS', 'OOP', '0', 'Fail'),
(378, 25, 'Python Test', '01', 1, 'BBA(Comp.', 'Python', '100', 'Pass'),
(379, 26, 'Python', '02', 2, 'BCA', 'Python', '100', 'Pass'),
(380, 27, 'test1', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(381, 28, 'dffghfdhd', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(382, 29, 'yyoyoy', '01', 1, 'BBA(Comp.', 'Python', '100', 'Pass'),
(383, 30, 'dffsdf', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(384, 31, 'gadg', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(385, 32, 'dfasf', '01', 1, 'BBA(Comp.', 'Python', '50', 'Pass'),
(386, 33, 'dfsdvvz', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(387, 34, 'sgg', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(388, 35, 'fdsg ', '01', 1, 'BBA(Comp.', 'Python', '100', 'Pass'),
(389, 36, 'gasdg', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(390, 37, 'sdf', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(391, 38, 'gag', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail'),
(392, 39, 'sads', '01', 0, 'BBA(Comp.', 'Python', '0', 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `squestions`
--

CREATE TABLE `squestions` (
  `id` int(30) NOT NULL,
  `eid` int(30) NOT NULL,
  `qid` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `squestions`
--

INSERT INTO `squestions` (`id`, `eid`, `qid`) VALUES
(7, 10, 7),
(8, 11, 7),
(9, 11, 8),
(10, 12, 7),
(11, 12, 8),
(12, 12, 9),
(13, 13, 7),
(14, 13, 8),
(15, 13, 9),
(16, 15, 7),
(17, 15, 8),
(18, 15, 9),
(19, 16, 7),
(20, 16, 8),
(21, 17, 7),
(22, 17, 8),
(23, 17, 9),
(24, 18, 10),
(25, 18, 11),
(26, 18, 12),
(27, 18, 13),
(28, 18, 14),
(29, 18, 15),
(30, 18, 16),
(31, 18, 17),
(32, 18, 18),
(33, 18, 19),
(34, 21, 20),
(35, 21, 20),
(36, 23, 20),
(37, 24, 10),
(38, 24, 11),
(39, 24, 12),
(40, 24, 13),
(41, 24, 14),
(42, 24, 15),
(43, 25, 21),
(44, 26, 21),
(45, 26, 23),
(46, 27, 21),
(47, 27, 23),
(48, 28, 21),
(49, 28, 23),
(50, 29, 21),
(51, 30, 21),
(52, 30, 23),
(53, 31, 21),
(54, 31, 23),
(55, 32, 21),
(56, 32, 23),
(57, 33, 21),
(58, 33, 23),
(59, 34, 21),
(60, 34, 23),
(61, 35, 21),
(62, 36, 21),
(63, 36, 23),
(64, 37, 21),
(65, 37, 23),
(66, 38, 21),
(67, 38, 23),
(68, 39, 21),
(69, 39, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ssubject`
--

CREATE TABLE `ssubject` (
  `id` int(11) NOT NULL,
  `student` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssubject`
--

INSERT INTO `ssubject` (`id`, `student`, `subject`) VALUES
(8, 'mcs1220016', 'DSA'),
(9, 'mcs1220016', 'cc'),
(10, 'mxcs213', 'DSA'),
(14, 'jhvjh', 'SE'),
(15, 'student', 'DSA'),
(16, 'student', 'DLD'),
(17, 'it151023', 'DSA'),
(18, 'it151023', 'DLD'),
(19, 'student', 'Python'),
(20, 'student', 'Core'),
(21, 'student', 'OOSE'),
(22, 'student', 'Cyber'),
(23, 'student', 'HTML,'),
(24, 'student2', 'OOSE'),
(25, 'student2', 'C'),
(26, 'student2', 'RDBMS'),
(27, 'student2', 'PHP'),
(28, 'student2', 'OOP');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `regno` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `regno`, `pass`, `course`) VALUES
(14, '01', 'student', 'student', 'BBA(Comp.'),
(15, '02', 'student2', 'student', 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `date`) VALUES
(10, 'Python', '2021-11-06 06:58:38'),
(11, 'Core Java', '2021-11-06 06:58:46'),
(12, 'OOSE', '2021-11-06 06:58:51'),
(13, 'Cyber Security', '2021-11-06 06:59:01'),
(14, 'C Programming', '2021-11-06 06:59:25'),
(15, 'RDBMS', '2021-11-06 06:59:36'),
(16, 'Mongo DB', '2021-11-06 06:59:46'),
(17, 'PHP', '2021-11-06 06:59:55'),
(18, 'HTML, CSS, JS', '2021-11-06 07:00:06'),
(20, 'OOP', '2021-11-06 07:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `regno` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `regno`, `pass`, `role`) VALUES
(8, '101', 'Admin', 'Admin', 'admin'),
(9, '1001', 'teacher', 'teacher', 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `squestions`
--
ALTER TABLE `squestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssubject`
--
ALTER TABLE `ssubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `squestions`
--
ALTER TABLE `squestions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ssubject`
--
ALTER TABLE `ssubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
