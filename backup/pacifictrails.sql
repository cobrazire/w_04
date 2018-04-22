-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 01:43 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pacifictrails`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activityid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activityid`, `description`) VALUES
(1, 'hiking'),
(2, 'kayaking'),
(3, 'birdwatching');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `resid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientid`, `fname`, `lname`, `address`, `phone`, `email`, `resid`, `activityid`) VALUES
(25, 'Akshya', 'Raghavan', '', '6825525292', 'sakshyaraghavan@gmail.com', 28, 2),
(26, 'Sushmitha', 'Krishna', '', '6825525262', 'nvkumar06@gmail.com', 29, 2),
(27, 'vijayakumar', 'natarajan', '', '9444442029', 'nvkumar06@gmail.com', 30, 1),
(28, 'miras', 'schoolS', '', '8172726287', 'nvkumar06@gmail.com', 31, 1),
(29, 'miras', 'school', '', '1122334554', 'nvkumar06@gmail.com', 32, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `cc` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(100) NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `cc` int(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `orderid` int(100) NOT NULL,
  `cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`name`, `email`, `address`, `city`, `state`, `zip`, `cc`, `month`, `year`, `orderid`, `cost`) VALUES
('Akshya Raghavan', 'sakshyaraghavan@gmail.com', '513, Summit Ave Apt 279', 'ARLINGTON', 'TX', '76010', 2147483647, '2018-01', '2018', 1, 0),
('Akshya Raghavan', 'sakshyaraghavan@gmail.com', '513, Summit Ave Apt 279', 'ARLINGTON', 'TX', '76010', 2147483647, '2016-01', '2018', 2, 0),
('vijayakumar natarajan', 'nvkumar06@gmail.com', 'no 71 b new no 9 ramanathan street, krishnapuram ambattur', 'chennai', 'tamil nadu', '600053', 2147483647, '2018-01', '2019', 3, 0),
('vijayakumar natarajan', 'nvkumar06@gmail.com', 'no 71 b new no 9 ramanathan street, krishnapuram ambattur', 'chennai', 'tamil nadu', '600053', 2147483647, '2019-01', '', 4, 0),
('the university of texas at arlington', 'sakshyaraghavan@gmail.com', 'c/o office of international education, 1022 uta blvd', 'arlington', 'TEXAS', '76019', 2147483647, '2019-02', '', 5, 0),
('sowmya satyanarayana', 'ssowmiyas1963@gmail.com', 'plot no 17 aringnar anna 2nd street, perumatunallur guduvancheri', 'kanchipuram', 'tamil nadu', '603202', 2147483647, '2021-01', '', 6, 0),
('Akshya Raghavan', 'sakshyaraghavan@gmail.com', '513, Summit Ave Apt 279', 'ARLINGTON', 'TX', '76010', 2147483647, '2020-10', '', 7, 0),
('st miras high school', 'nvkumar06@gmail.com', 'outer ring road btm layout', 'bengaluru', 'karnataka', '560068', 2147483647, '2016-04', '', 8, 0),
('Akshya Raghavan', 'sakshyaraghavan@gmail.com', '513, Summit Ave Apt 279', 'ARLINGTON', 'TX', '76010', 2147483647, '2019-01', '', 9, 0),
('vijayakumar natarajan', 'nvkumar06@gmail.com', 'no 71 b new no 9 ramanathan street, krishnapuram ambattur', 'chennai', 'tamil nadu', '600053', 2147483647, '2018-01', '', 10, 0),
('sowmya satyanarayana', 'ssowmiyas1963@gmail.com', 'plot no 17 aringnar anna 2nd street, perumatunallur guduvancheri', 'kanchipuram', 'tamil nadu', '603202', 2147483647, '2020-04', '', 11, 0),
('Akshya Raghavan', 'sakshyaraghavan@gmail.com', '513, Summit Ave Apt 279', 'ARLINGTON', 'TX', '76010', 2147483647, '2020-03', '', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `packageid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `noofnights` int(11) NOT NULL,
  `cost` double NOT NULL,
  `summary` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`packageid`, `description`, `noofnights`, `cost`, `summary`, `name`) VALUES
(1, 'weekendescape', 2, 450, 'Two breakfasts, a trail map, and a picnic snack', 'Weekend Escape'),
(2, 'zenretreat', 4, 600, 'Four breakfasts, a trail map, a picnic snack, and a pass for the daily sunrise Yoga session', 'Zen Retreat'),
(3, 'kayakaway', 2, 500, 'Two breakfasts, two hours of kayak rental daily, and a trail map ', 'Kayak Away');

-- --------------------------------------------------------

--
-- Table structure for table `reservationyurt`
--

CREATE TABLE `reservationyurt` (
  `resid` int(11) NOT NULL,
  `arrivalDate` date NOT NULL,
  `noofnights` int(11) NOT NULL,
  `packageid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservationyurt`
--

INSERT INTO `reservationyurt` (`resid`, `arrivalDate`, `noofnights`, `packageid`) VALUES
(28, '1996-12-01', 5, 3),
(29, '2018-02-01', 5, 3),
(30, '2019-10-31', 5, 3),
(31, '1996-01-09', 5, 1),
(32, '2019-03-01', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `quantity` int(11) NOT NULL,
  `cost` double NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`fname`, `lname`) VALUES
('Akshya', 'Raghavan'),
('A', 'R');

-- --------------------------------------------------------

--
-- Table structure for table `whenres`
--

CREATE TABLE `whenres` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `activityid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whenres`
--

INSERT INTO `whenres` (`id`, `date`, `activityid`, `clientid`) VALUES
(23, '1996-12-01', 1, 25),
(24, '2018-02-01', 2, 26),
(25, '2019-10-31', 1, 27),
(26, '1996-01-09', 1, 28),
(27, '2019-03-01', 2, 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activityid`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientid`),
  ADD KEY `activityid` (`activityid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `reservationyurt`
--
ALTER TABLE `reservationyurt`
  ADD PRIMARY KEY (`resid`),
  ADD KEY `packageid` (`packageid`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`description`);

--
-- Indexes for table `whenres`
--
ALTER TABLE `whenres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activityid` (`activityid`),
  ADD KEY `clientid` (`clientid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `orderid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `packageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservationyurt`
--
ALTER TABLE `reservationyurt`
  MODIFY `resid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `whenres`
--
ALTER TABLE `whenres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`activityid`) REFERENCES `activity` (`activityid`);

--
-- Constraints for table `reservationyurt`
--
ALTER TABLE `reservationyurt`
  ADD CONSTRAINT `reservationyurt_ibfk_1` FOREIGN KEY (`packageid`) REFERENCES `package` (`packageid`);

--
-- Constraints for table `whenres`
--
ALTER TABLE `whenres`
  ADD CONSTRAINT `whenres_ibfk_1` FOREIGN KEY (`activityid`) REFERENCES `activity` (`activityid`),
  ADD CONSTRAINT `whenres_ibfk_2` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
