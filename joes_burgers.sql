-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 04:03 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joes_burgers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(3) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bun`
--

CREATE TABLE `bun` (
  `bunid` int(3) NOT NULL,
  `bunname` varchar(15) NOT NULL,
  `buncost` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bun`
--

INSERT INTO `bun` (`bunid`, `bunname`, `buncost`) VALUES
(1, 'None', '0.00'),
(2, 'Sesame', '0.20'),
(3, 'Brioche', '0.25'),
(4, 'Pretzel', '0.30');

-- --------------------------------------------------------

--
-- Table structure for table `cheese`
--

CREATE TABLE `cheese` (
  `cheeseid` int(3) NOT NULL,
  `cheesename` varchar(15) NOT NULL,
  `cheesecost` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cheese`
--

INSERT INTO `cheese` (`cheeseid`, `cheesename`, `cheesecost`) VALUES
(1, 'None', '0.00'),
(2, 'Cheese', '0.45'),
(3, 'DoubleCheese', '0.90'),
(4, 'TripleCheese', '1.35');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(3) NOT NULL,
  `userid` int(3) NOT NULL,
  `points` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `userid`, `points`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 4, 0),
(7, 8, 0),
(8, 9, 0),
(9, 10, 0),
(10, 11, 0),
(11, 12, 0),
(12, 13, 0),
(13, 14, 0),
(14, 15, 0),
(15, 16, 0),
(16, 17, 0),
(17, 18, 0),
(18, 19, 0),
(19, 20, 0),
(20, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

CREATE TABLE `foodorder` (
  `foodorderid` int(5) NOT NULL,
  `customerID` int(3) DEFAULT NULL,
  `staffid` int(3) NOT NULL,
  `Paid` varchar(5) NOT NULL,
  `Total` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`foodorderid`, `customerID`, `staffid`, `Paid`, `Total`) VALUES
(1, 1, 1, '', ''),
(2, 1, 1, '', ''),
(3, 1, 1, '', ''),
(4, 1, 1, '', '$300'),
(5, 1, 1, '', ''),
(6, 1, 1, '', ''),
(7, 1, 1, '', ''),
(8, 1, 1, '', ''),
(9, 1, 1, '', ''),
(10, 1, 1, '', ''),
(11, 1, 1, '', ''),
(12, 1, 1, '', ''),
(13, 1, 1, '', ''),
(14, 1, 1, '', ''),
(15, 1, 1, '', ''),
(16, 1, 1, 'NO', '0.00'),
(17, 1, 1, 'NO', '4.4'),
(18, 1, 1, 'NO', '9.5'),
(19, 1, 1, 'NO', '2.1'),
(20, 1, 1, 'NO', '5.1'),
(21, 1, 1, 'NO', '0.00'),
(22, 1, 1, 'NO', '0.00'),
(23, 1, 1, 'NO', '0.00'),
(24, 1, 1, 'NO', '4.6'),
(25, 1, 1, 'YES', '11.5'),
(26, 1, 1, 'YES', '3.9'),
(27, 1, 1, 'YES', '9.15'),
(28, 1, 1, 'YES', '9.25');

-- --------------------------------------------------------

--
-- Table structure for table `foodorderitems`
--

CREATE TABLE `foodorderitems` (
  `foodorderitemsid` int(3) NOT NULL,
  `foodorderid` int(3) NOT NULL,
  `itemid` int(3) NOT NULL,
  `itemCost` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodorderitems`
--

INSERT INTO `foodorderitems` (`foodorderitemsid`, `foodorderid`, `itemid`, `itemCost`, `Status`) VALUES
(1, 1, 1, '$3.15', ''),
(2, 1, 2, '$6.35', ''),
(3, 2, 3, '$3.90', ''),
(4, 3, 4, '$5.20', ''),
(5, 4, 5, '$5.40', ''),
(6, 5, 6, '$5.50', ''),
(7, 6, 7, '$5.95', ''),
(8, 6, 8, '$4.60', ''),
(9, 7, 9, '$3.15', ''),
(10, 8, 10, '$4.80', ''),
(11, 9, 11, '$5.40', ''),
(12, 10, 12, '$4.15', ''),
(13, 11, 13, '$5.35', ''),
(14, 11, 14, '$7.55', ''),
(15, 12, 15, '$5.25', ''),
(16, 12, 16, '$3.10', ''),
(17, 13, 17, '$5.95', ''),
(18, 13, 18, '$4.85', ''),
(19, 14, 19, '$3.35', ''),
(20, 14, 20, '$6.20', ''),
(21, 15, 21, '$4.70', ''),
(22, 15, 22, '$4.10', ''),
(23, 16, 23, '$2.40', ''),
(24, 16, 24, '$5.45', ''),
(25, 17, 25, '$4.40', 'Pending'),
(26, 18, 26, '$4.35', 'Ordered'),
(27, 18, 27, '$5.15', 'Ordered'),
(28, 19, 28, '$2.10', 'Ordered'),
(29, 20, 29, '$5.10', 'Ordered'),
(30, 24, 33, '$4.60', 'Ordered'),
(31, 25, 34, '$4.70', 'Ordered'),
(32, 25, 35, '$6.80', 'Ordered'),
(33, 26, 36, '$3.90', 'Ordered'),
(34, 27, 37, '$6.50', 'Ordered'),
(35, 27, 38, '$2.65', 'Ordered'),
(36, 28, 39, '$5.15', 'Ordered'),
(37, 28, 40, '$4.10', 'Ordered');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemId` int(3) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `bunid` int(3) NOT NULL,
  `sauceid` int(3) NOT NULL,
  `cheeseid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemId`, `itemname`, `bunid`, `sauceid`, `cheeseid`) VALUES
(1, 'Bacon CheeseBurger', 3, 1, 2),
(2, 'Bacon Double CheeseChicken Sandwich', 4, 1, 4),
(3, 'Bacon CheeseBurger', 3, 1, 2),
(4, 'Triple CheeseBurger', 4, 1, 3),
(5, 'Bacon Triple CheeseBurger', 4, 1, 2),
(6, 'Bacon Triple CheeseBurger', 3, 1, 2),
(7, 'Bacon Triple CheeseBurger', 3, 1, 3),
(8, 'Bacon Double CheeseChicken Sandwich', 2, 1, 2),
(9, 'Bacon CheeseBurger', 3, 1, 2),
(10, 'Bacon Double CheeseBurger', 3, 1, 3),
(11, 'Bacon Double CheeseBurger', 4, 1, 4),
(12, 'Bacon Double CheeseBurger', 3, 1, 2),
(13, 'Bacon CheeseBurger', 4, 1, 4),
(14, 'Bacon Triple CheeseBurger', 4, 1, 4),
(15, 'Bacon Double CheeseBurger', 3, 1, 4),
(16, 'Bacon CheeseChicken Sandwich', 2, 1, 2),
(17, 'Bacon Double CheeseBurger', 3, 1, 4),
(18, 'Bacon Double CheeseBurger', 3, 1, 3),
(19, 'Bacon CheeseBurger', 3, 1, 2),
(20, 'Bacon Triple CheeseBurger', 4, 1, 2),
(21, 'Bacon Double CheeseBurger', 2, 1, 3),
(22, 'Bacon Double CheeseBurger', 2, 1, 2),
(23, 'CheeseBurger', 3, 1, 2),
(24, 'Bacon Double CheeseBurger', 4, 1, 2),
(25, 'Bacon Double CheeseBurger', 3, 1, 2),
(26, 'Bacon CheeseBurger', 4, 1, 2),
(27, 'Bacon Double CheeseBurger', 2, 1, 4),
(28, 'Bacon Burger', 2, 1, 1),
(29, 'Bacon Double CheeseBurger', 3, 1, 3),
(30, 'Bacon Double CheeseBurger', 3, 1, 2),
(31, 'Bacon CheeseBurger', 3, 1, 2),
(32, 'Bacon Double CheeseBurger', 3, 1, 3),
(33, 'Bacon Double CheeseBurger', 3, 1, 3),
(34, 'Bacon CheeseChicken Sandwich', 4, 1, 4),
(35, 'Bacon Triple CheeseBurger', 3, 1, 4),
(36, 'Bacon CheeseBurger', 3, 1, 2),
(37, 'Bacon Double CheeseBurger', 3, 1, 4),
(38, 'Bacon CheeseChicken Sandwich', 4, 1, 2),
(39, 'Bacon Triple CheeseBurger', 3, 1, 2),
(40, 'Bacon CheeseBurger', 4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `itemmeats`
--

CREATE TABLE `itemmeats` (
  `itemmeatsid` int(3) NOT NULL,
  `itemid` int(3) NOT NULL,
  `meatid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemmeats`
--

INSERT INTO `itemmeats` (`itemmeatsid`, `itemid`, `meatid`) VALUES
(1, 1, 2),
(2, 1, 8),
(3, 2, 6),
(4, 2, 9),
(5, 3, 2),
(6, 3, 9),
(7, 4, 4),
(8, 4, 1),
(9, 5, 4),
(10, 5, 8),
(11, 6, 4),
(12, 6, 8),
(13, 7, 4),
(14, 7, 8),
(15, 8, 6),
(16, 8, 9),
(17, 9, 2),
(18, 9, 8),
(19, 10, 3),
(20, 10, 8),
(21, 11, 3),
(22, 11, 8),
(23, 12, 3),
(24, 12, 8),
(25, 13, 2),
(26, 13, 9),
(27, 14, 4),
(28, 14, 9),
(29, 15, 3),
(30, 15, 8),
(31, 16, 5),
(32, 16, 8),
(33, 17, 3),
(34, 17, 9),
(35, 18, 3),
(36, 18, 8),
(37, 19, 2),
(38, 19, 8),
(39, 20, 4),
(40, 20, 9),
(41, 21, 3),
(42, 21, 8),
(43, 22, 3),
(44, 22, 8),
(45, 23, 2),
(46, 23, 1),
(47, 24, 3),
(48, 24, 9),
(49, 25, 3),
(50, 25, 8),
(51, 26, 2),
(52, 26, 9),
(53, 27, 3),
(54, 27, 8),
(55, 28, 2),
(56, 28, 8),
(57, 29, 3),
(58, 29, 8),
(59, 30, 3),
(60, 30, 8),
(61, 31, 2),
(62, 31, 9),
(63, 32, 3),
(64, 32, 8),
(65, 33, 3),
(66, 33, 8),
(67, 34, 5),
(68, 34, 8),
(69, 35, 4),
(70, 35, 9),
(71, 36, 2),
(72, 36, 9),
(73, 37, 3),
(74, 37, 9),
(75, 38, 5),
(76, 38, 8),
(77, 39, 4),
(78, 39, 8),
(79, 40, 2),
(80, 40, 9);

-- --------------------------------------------------------

--
-- Table structure for table `itemveggies`
--

CREATE TABLE `itemveggies` (
  `itemveggiesid` int(4) NOT NULL,
  `itemid` int(3) NOT NULL,
  `veggieid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemveggies`
--

INSERT INTO `itemveggies` (`itemveggiesid`, `itemid`, `veggieid`) VALUES
(1, 1, 8),
(2, 1, 6),
(3, 1, 4),
(4, 1, 2),
(5, 2, 9),
(6, 2, 7),
(7, 2, 5),
(8, 2, 3),
(9, 3, 8),
(10, 3, 6),
(11, 3, 4),
(12, 3, 2),
(13, 4, 8),
(14, 4, 7),
(15, 4, 4),
(16, 4, 3),
(17, 5, 8),
(18, 5, 7),
(19, 5, 4),
(20, 5, 2),
(21, 6, 9),
(22, 6, 6),
(23, 6, 4),
(24, 6, 3),
(25, 7, 9),
(26, 7, 6),
(27, 7, 4),
(28, 7, 3),
(29, 8, 8),
(30, 8, 7),
(31, 8, 1),
(32, 8, 1),
(33, 9, 8),
(34, 9, 6),
(35, 9, 4),
(36, 9, 2),
(37, 10, 8),
(38, 10, 7),
(39, 10, 4),
(40, 10, 2),
(41, 11, 8),
(42, 11, 7),
(43, 11, 4),
(44, 11, 3),
(45, 12, 8),
(46, 12, 6),
(47, 12, 4),
(48, 12, 2),
(49, 13, 9),
(50, 13, 7),
(51, 13, 5),
(52, 13, 1),
(53, 14, 9),
(54, 14, 7),
(55, 14, 5),
(56, 14, 3),
(57, 15, 8),
(58, 15, 7),
(59, 15, 4),
(60, 15, 2),
(61, 16, 8),
(62, 16, 6),
(63, 16, 4),
(64, 16, 3),
(65, 17, 8),
(66, 17, 6),
(67, 17, 5),
(68, 17, 2),
(69, 18, 8),
(70, 18, 6),
(71, 18, 5),
(72, 18, 3),
(73, 19, 8),
(74, 19, 7),
(75, 19, 4),
(76, 19, 2),
(77, 20, 9),
(78, 20, 6),
(79, 20, 4),
(80, 20, 2),
(81, 21, 8),
(82, 21, 6),
(83, 21, 5),
(84, 21, 2),
(85, 22, 8),
(86, 22, 6),
(87, 22, 4),
(88, 22, 2),
(89, 23, 8),
(90, 23, 6),
(91, 23, 4),
(92, 23, 2),
(93, 24, 9),
(94, 24, 6),
(95, 24, 5),
(96, 24, 3),
(97, 25, 9),
(98, 25, 6),
(99, 25, 4),
(100, 25, 2),
(101, 26, 9),
(102, 26, 6),
(103, 26, 5),
(104, 26, 2),
(105, 27, 8),
(106, 27, 7),
(107, 27, 1),
(108, 27, 3),
(109, 28, 1),
(110, 28, 1),
(111, 28, 4),
(112, 28, 1),
(113, 29, 9),
(114, 29, 6),
(115, 29, 5),
(116, 29, 3),
(117, 30, 1),
(118, 30, 1),
(119, 30, 1),
(120, 30, 1),
(121, 31, 9),
(122, 31, 1),
(123, 31, 1),
(124, 31, 2),
(125, 32, 8),
(126, 32, 6),
(127, 32, 4),
(128, 32, 2),
(129, 33, 8),
(130, 33, 6),
(131, 33, 4),
(132, 33, 2),
(133, 34, 9),
(134, 34, 7),
(135, 34, 5),
(136, 34, 3),
(137, 35, 9),
(138, 35, 6),
(139, 35, 1),
(140, 35, 1),
(141, 36, 8),
(142, 36, 6),
(143, 36, 4),
(144, 36, 2),
(145, 37, 9),
(146, 37, 7),
(147, 37, 5),
(148, 37, 3),
(149, 38, 8),
(150, 38, 1),
(151, 38, 1),
(152, 38, 1),
(153, 39, 8),
(154, 39, 6),
(155, 39, 4),
(156, 39, 2),
(157, 40, 8),
(158, 40, 1),
(159, 40, 4),
(160, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meat`
--

CREATE TABLE `meat` (
  `meatid` int(3) NOT NULL,
  `meatName` varchar(15) NOT NULL,
  `meatcost` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meat`
--

INSERT INTO `meat` (`meatid`, `meatName`, `meatcost`) VALUES
(1, 'None', '0.00'),
(2, 'SingleBeef', '1.00'),
(3, 'DoubleBeef', '2.00'),
(4, 'TripleBeef', '3.00'),
(5, 'SingleChicken', '0.90'),
(6, 'DoubleChicken', '1.80'),
(7, 'TripleChicken', '2.70'),
(8, 'Bacon', '0.75'),
(9, 'ExtraBacon', '1.50');

-- --------------------------------------------------------

--
-- Table structure for table `sauce`
--

CREATE TABLE `sauce` (
  `sauceid` int(3) NOT NULL,
  `saucename` varchar(15) NOT NULL,
  `saucecost` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sauce`
--

INSERT INTO `sauce` (`sauceid`, `saucename`, `saucecost`) VALUES
(1, 'None', '$0.00'),
(2, 'BBQ', '$0.25'),
(3, 'Ranch', '$0.25');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(3) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `userid`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(3) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `rank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `firstname`, `lastname`, `email`, `password`, `rank`) VALUES
(1, 'Joseph', 'Rand', 'jr@emails.com', 'Ss!1qqqq', 'customer'),
(2, 'Liz', 'Rand', 'LR@emails.com', 'Dd!1qqqq', 'customer'),
(3, 'Edd', 'Edder', 'EE@emails.com', 'sS1!ee', 'staff'),
(4, 'Bob', 'Robert', 'BR@emails.com', 'Br!1brbr', 'customer'),
(8, 'stef', 'steffer', 'ss@emails.com', 'wwwwwwww', 'customer'),
(9, 'greg', 'greger', 'gg@emails.com', 'gggggggg', 'customer'),
(10, 'frank', 'franker', 'ff@emails.com', 'eeeeeeee', 'customer'),
(11, 'bill', 'biller', 'bb@emails.com', 'rrrrrrrr', 'customer'),
(12, 'zack', 'zacker', 'zz@emails.com', 'zzzzzzzz', 'customer'),
(13, 'cathy', 'cather', 'cc@emails.com', 'cccccccc', 'customer'),
(14, 'dan', 'danner', 'dd@emails.com', 'dddddddd', 'customer'),
(15, 'john', 'johnner', 'jj@emails.com', 'jjjjjjjj', 'customer'),
(16, 'kathy', 'kathers', 'kk@emails.com', 'kkkkkkkk', 'customer'),
(17, 'lenny', 'lenner', 'll@emails.com', 'Llllllll1', 'customer'),
(18, 'mark', 'marker', 'mm@emails.com', 'Mmmmmmmm1', 'customer'),
(19, 'nate', 'nater', 'nn@emails.com', 'Nnnnnnn1', 'customer'),
(20, 'otter', 'otters', 'oo@emails.com', 'Ooooooo1', 'customer'),
(21, 'penny', 'penner', 'pp@emails.com', 'Ppppppp3', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `veggie`
--

CREATE TABLE `veggie` (
  `veggieid` int(3) NOT NULL,
  `veggiename` varchar(15) NOT NULL,
  `veggiecost` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `veggie`
--

INSERT INTO `veggie` (`veggieid`, `veggiename`, `veggiecost`) VALUES
(1, 'None', '0.00'),
(2, 'Pickles', '0.10'),
(3, 'ExtraPickles', '0.20'),
(4, 'Onions', '0.15'),
(5, 'ExtraOnions', '0.30'),
(6, 'Tomatoes', '0.20'),
(7, 'ExtraTomatoes', '0.40'),
(8, 'Lettuce', '0.25'),
(9, 'ExtraLettuce', '0.50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `bun`
--
ALTER TABLE `bun`
  ADD PRIMARY KEY (`bunid`);

--
-- Indexes for table `cheese`
--
ALTER TABLE `cheese`
  ADD PRIMARY KEY (`cheeseid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foodorder`
--
ALTER TABLE `foodorder`
  ADD PRIMARY KEY (`foodorderid`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `foodorderitems`
--
ALTER TABLE `foodorderitems`
  ADD PRIMARY KEY (`foodorderitemsid`),
  ADD KEY `foodorderid` (`foodorderid`),
  ADD KEY `itemid` (`itemid`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemId`),
  ADD KEY `bunid` (`bunid`),
  ADD KEY `sauceid` (`sauceid`),
  ADD KEY `cheeseid` (`cheeseid`);

--
-- Indexes for table `itemmeats`
--
ALTER TABLE `itemmeats`
  ADD PRIMARY KEY (`itemmeatsid`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `meatid` (`meatid`);

--
-- Indexes for table `itemveggies`
--
ALTER TABLE `itemveggies`
  ADD PRIMARY KEY (`itemveggiesid`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `veggieid` (`veggieid`);

--
-- Indexes for table `meat`
--
ALTER TABLE `meat`
  ADD PRIMARY KEY (`meatid`);

--
-- Indexes for table `sauce`
--
ALTER TABLE `sauce`
  ADD PRIMARY KEY (`sauceid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `veggie`
--
ALTER TABLE `veggie`
  ADD PRIMARY KEY (`veggieid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bun`
--
ALTER TABLE `bun`
  MODIFY `bunid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cheese`
--
ALTER TABLE `cheese`
  MODIFY `cheeseid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `foodorder`
--
ALTER TABLE `foodorder`
  MODIFY `foodorderid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `foodorderitems`
--
ALTER TABLE `foodorderitems`
  MODIFY `foodorderitemsid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `itemmeats`
--
ALTER TABLE `itemmeats`
  MODIFY `itemmeatsid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `itemveggies`
--
ALTER TABLE `itemveggies`
  MODIFY `itemveggiesid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `meat`
--
ALTER TABLE `meat`
  MODIFY `meatid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sauce`
--
ALTER TABLE `sauce`
  MODIFY `sauceid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `veggie`
--
ALTER TABLE `veggie`
  MODIFY `veggieid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `foodorder`
--
ALTER TABLE `foodorder`
  ADD CONSTRAINT `foodorder_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `foodorder_ibfk_2` FOREIGN KEY (`staffid`) REFERENCES `staff` (`staffid`);

--
-- Constraints for table `foodorderitems`
--
ALTER TABLE `foodorderitems`
  ADD CONSTRAINT `foodorderitems_ibfk_1` FOREIGN KEY (`foodorderid`) REFERENCES `foodorder` (`foodorderid`),
  ADD CONSTRAINT `foodorderitems_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemId`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`bunid`) REFERENCES `bun` (`bunid`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`sauceid`) REFERENCES `sauce` (`sauceid`),
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`cheeseid`) REFERENCES `cheese` (`cheeseid`);

--
-- Constraints for table `itemmeats`
--
ALTER TABLE `itemmeats`
  ADD CONSTRAINT `itemmeats_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemId`),
  ADD CONSTRAINT `itemmeats_ibfk_2` FOREIGN KEY (`meatid`) REFERENCES `meat` (`meatid`);

--
-- Constraints for table `itemveggies`
--
ALTER TABLE `itemveggies`
  ADD CONSTRAINT `itemveggies_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemId`),
  ADD CONSTRAINT `itemveggies_ibfk_2` FOREIGN KEY (`veggieid`) REFERENCES `veggie` (`veggieid`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
