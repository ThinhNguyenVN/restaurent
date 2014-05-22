-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2014 at 11:02 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookparty`
--

CREATE TABLE IF NOT EXISTS `bookparty` (
  `id` int(40) DEFAULT NULL,
  `selectditem` varchar(400) DEFAULT NULL,
  `btime` varchar(400) DEFAULT NULL,
  `bdate` varchar(400) DEFAULT NULL,
  `nofpeople` varchar(400) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `status` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookparty`
--

INSERT INTO `bookparty` (`id`, `selectditem`, `btime`, `bdate`, `nofpeople`, `name`, `status`) VALUES
(1, 'biryani, barffi, Vivamus hendreri, chicken 65, nudulsss, polo, ', '20:02', '17/February/2031', '50', 'hari', 'complete'),
(2, 'biryani, barffi, Vivamus hendreri, chicken 65, ', '10:00', '10/April/2014', '100', 'mouni', 'complete'),
(3, 'biryani, barffi, ', '1:', '9/June/2014', '50', 'lkj', 'pending'),
(4, 'biryani, barffi, ', '1:33', '8/July/2014', '50', 'mmm', 'pending'),
(5, 'biryani, barffi, ', '20:02', '16/May/2014', '50', 'mmm', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `carryouts`
--

CREATE TABLE IF NOT EXISTS `carryouts` (
  `id` int(40) DEFAULT NULL,
  `selecteditems` varchar(4000) DEFAULT NULL,
  `count` int(40) DEFAULT NULL,
  `ctime` varchar(400) DEFAULT NULL,
  `cdate` varchar(400) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `statuss` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carryouts`
--

INSERT INTO `carryouts` (`id`, `selecteditems`, `count`, `ctime`, `cdate`, `name`, `statuss`) VALUES
(1, 'biryani, chicken 65, nudulsss, polo', 45, '20:39', '03-05-2014', 'hari', 'complete'),
(2, 'biryani, barffi, nudulsss, polo', 100, '20:10', '03-05-2014', 'hari', 'complete'),
(3, 'biryani, barffi, nudulsss, polo', 30, '20:10', '03-05-2014', 'hari', 'complete'),
(4, 'Vivamus hendreri, chicken 65, nudulsss, polo', 30, '20:20', '03-05-2014', 'hari', 'complete'),
(5, 'biryani, barffi, nudulsss', 44, '10:10', '03-05-2014', 'hari', 'complete'),
(6, 'biryani, barffi, chicken 65, nudulsss', 20, '20:10', '03-05-2014', 'sudha', 'complete'),
(7, 'biryani, barffi, Vivamus hendreri, chicken 65, nudulsss, polo', 100, '20:10', '03-05-2014', 'sudha', 'complete'),
(8, 'biryani, barffi, nudulsss, polo', 340, '5:20', '03-05-2014', 'hari', 'complete'),
(9, 'biryani', 33, '10:9', '03-25-2014', 'sudha', 'complete'),
(10, 'biryani, barffi, Vivamus hendreri, chicken 65', 20, '16:24', '03-26-2014', 'hari', 'complete'),
(11, 'Vivamus hendreri, chicken 65, nudulsss, polo', 204, '14:15', '04-02-2014', 'sudha', 'complete'),
(12, 'biryani', 2, '5:0', '04-09-2014', 'hari', 'complete'),
(13, 'biryani, barffi, Vivamus hendreri', 23, '6:25', '04-09-2014', 'mouni', 'complete'),
(14, 'biryani, barffi', 12, '21:0', '04-09-2014', 'mouni', 'complete'),
(15, 'biryani, barffi, Vivamus hendreri', 3, '20:0', '04-09-2014', 'mouni', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE IF NOT EXISTS `catering` (
  `id` int(40) DEFAULT NULL,
  `selecteditem` varchar(400) DEFAULT NULL,
  `ctime` varchar(400) DEFAULT NULL,
  `cdate` varchar(400) DEFAULT NULL,
  `cplace` varchar(400) DEFAULT NULL,
  `countofp` varchar(400) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `status` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering`
--

INSERT INTO `catering` (`id`, `selecteditem`, `ctime`, `cdate`, `cplace`, `countofp`, `name`, `status`) VALUES
(1, 'biryani, chicken 65, nudulsss, ', '22:11', '14/December/2014', 'hyd', '200', 'hari', 'complete'),
(2, 'barffi, Vivamus hendreri, chicken 65, nudulsss, ', '23:19', '4/May/2014', 'hyderabad', '66', 'hari', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE IF NOT EXISTS `customerdetails` (
  `customer_id` int(30) NOT NULL DEFAULT '0',
  `cname` varchar(400) DEFAULT NULL,
  `cpassword` varchar(400) DEFAULT NULL,
  `cemailid` varchar(400) DEFAULT NULL,
  `mobile_no` varchar(400) DEFAULT NULL,
  `gender` varchar(400) DEFAULT NULL,
  `address` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`customer_id`, `cname`, `cpassword`, `cemailid`, `mobile_no`, `gender`, `address`) VALUES
(1, 'hari', 'hari', 'hari@gmail.com', '9090989898', 'male', 'hyd'),
(2, 'sudha', 'sudha', 'sudha@gmail.com', '8989890909', 'male', 'hyd'),
(3, 'mouni', 'mouni', 'maunica.t@gmail.com', '2595223651', 'female', '1700 E 13th street apt 18P'),
(4, 'lkj', 'lkj', 'ffgfgg@frfgtfghfgh', '0123456789', 'male', 'f'),
(5, 'mmm', 'mmm', 'weff@gmn', '0988889905', 'female', 'fgfg'),
(6, 'bindu', 'binss', 'peddibindu82@gmail.com', '2163928680', 'female', 'hjfjkhfjkhf');

-- --------------------------------------------------------

--
-- Table structure for table `delivary`
--

CREATE TABLE IF NOT EXISTS `delivary` (
  `id` int(11) NOT NULL,
  `selecteditems` varchar(400) DEFAULT NULL,
  `count` int(40) DEFAULT NULL,
  `dtime` varchar(400) DEFAULT NULL,
  `ddate` varchar(400) DEFAULT NULL,
  `dplace` varchar(400) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `status` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivary`
--

INSERT INTO `delivary` (`id`, `selecteditems`, `count`, `dtime`, `ddate`, `dplace`, `name`, `status`) VALUES
(1, 'chicken 65, nudulsss, polo', 20, '20:10', '16/April/2017', 'hyderabad', 'hari', 'complete'),
(2, 'biryani, barffi', 2, '3:0', '6/September/2023', 'hgbhjb', 'mouni', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE IF NOT EXISTS `discounts` (
  `discount_name` varchar(400) DEFAULT NULL,
  `disper` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emphistory`
--

CREATE TABLE IF NOT EXISTS `emphistory` (
  `emp_id` int(40) DEFAULT NULL,
  `ename` varchar(400) DEFAULT NULL,
  `logindat` varchar(400) DEFAULT NULL,
  `logoutdat` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emphistory`
--

INSERT INTO `emphistory` (`emp_id`, `ename`, `logindat`, `logoutdat`) VALUES
(1, 'sudharshan', 'Date : 25/Mar/2014 Time : 23:52:28', 'Date : 25/Mar/2014 Time : 23:52:43'),
(2, 'sss', 'Date : 02/Apr/2014 Time : 19:07:46', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 02/Apr/2014 Time : 19:28:40', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 08/Apr/2014 Time : 22:42:52', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 09/Apr/2014 Time : 01:35:50', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 09/Apr/2014 Time : 01:36:56', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 09/Apr/2014 Time : 02:52:56', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 20/Apr/2014 Time : 14:00:51', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 20/Apr/2014 Time : 14:04:45', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 20/Apr/2014 Time : 14:11:37', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 20/Apr/2014 Time : 14:13:30', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 20/Apr/2014 Time : 14:15:22', 'Date : 20/Apr/2014 Time : 14:51:55'),
(2, 'sss', 'Date : 20/Apr/2014 Time : 14:50:58', 'Date : 20/Apr/2014 Time : 14:51:55'),
(3, 'harshada', 'Date : 23/Apr/2014 Time : 14:33:56', 'Date : 07/May/2014 Time : 16:18:47'),
(3, 'harshada', 'Date : 23/Apr/2014 Time : 17:55:48', 'Date : 07/May/2014 Time : 16:18:47'),
(3, 'harshada', 'Date : 23/Apr/2014 Time : 18:06:32', 'Date : 07/May/2014 Time : 16:18:47'),
(3, 'harshada', 'Date : 06/May/2014 Time : 21:11:43', 'Date : 07/May/2014 Time : 16:18:47'),
(3, 'harshada', 'Date : 07/May/2014 Time : 16:17:37', 'Date : 07/May/2014 Time : 16:18:47'),
(3, 'harshada', 'Date : 07/May/2014 Time : 16:18:41', 'Date : 07/May/2014 Time : 16:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `employeedetails`
--

CREATE TABLE IF NOT EXISTS `employeedetails` (
  `emp_id` int(40) NOT NULL,
  `name` varchar(4000) NOT NULL,
  `password` varchar(4000) NOT NULL,
  `emailid` varchar(4000) NOT NULL,
  `mobile` varchar(4000) NOT NULL,
  `gender` varchar(4000) NOT NULL,
  `dept` varchar(4000) NOT NULL,
  `date` varchar(4000) NOT NULL,
  `address` varchar(4000) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedetails`
--

INSERT INTO `employeedetails` (`emp_id`, `name`, `password`, `emailid`, `mobile`, `gender`, `dept`, `date`, `address`) VALUES
(1, 'sudharshan', 'sudha', 'sudharsanreddy23@gmail.com', '8125216204', 'male', 'Chef de Cuisine ', '17/January/1989', 'Hyderabad'),
(2, 'sss', 'ssss', 'ss@AA.com', '9909998873', 'male', 'Chef de Cuisine ', '3/April/1992', 'hyd'),
(3, 'harshada', 'harshada', 'harshada.nilangekar@gmail.com', '2165332380', 'female', 'Quality assurance', '8/April/2014', '1700 E 13th st suit 9v');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(40) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `message` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `customer_id` int(40) DEFAULT NULL,
  `cname` varchar(400) DEFAULT NULL,
  `ms_id` int(40) DEFAULT NULL,
  `status` varchar(400) DEFAULT NULL,
  `disscountt` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`customer_id`, `cname`, `ms_id`, `status`, `disscountt`) VALUES
(1, 'hari', 1, 'active', 'Discount 40% '),
(2, 'sudha', 2, 'active', 'Discount 40% '),
(3, 'mouni', 3, 'active', 'Discount 30% '),
(4, 'lkj', 4, 'active', ' Discount 10% '),
(5, 'mmm', 5, 'active', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `itemid` int(40) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `price` int(40) DEFAULT NULL,
  `Image` varchar(400) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  UNIQUE KEY `itemid` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`itemid`, `name`, `price`, `Image`, `description`) VALUES
(1, 'biryani', 100, 'images//images (3).jpg', 'polopolo'),
(2, 'barffi', 90, 'images//page2-img9.jpg', 'baeffii'),
(3, 'Vivamus hendreri', 104, 'images//page2-img4.jpg', 'Vivamus hendreri Vivamus hendreri'),
(4, 'chicken 65', 240, 'images//page4-img3.jpg', 'chicken 65 chicken 65 chicken 65'),
(5, 'nudulsss', 50, 'images//page4-img4.jpg', 'nudulsss nudulsss nudulsss '),
(6, 'polo', 200, 'images//page4-img2.jpg', 'kkkkkk');

-- --------------------------------------------------------

--
-- Table structure for table `testmessage`
--

CREATE TABLE IF NOT EXISTS `testmessage` (
  `id` int(40) DEFAULT NULL,
  `message` varchar(400) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `desig` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testmessage`
--

INSERT INTO `testmessage` (`id`, `message`, `name`, `desig`) VALUES
(1, 'pppsppspspp pp p p p pp p p pp p pp pp p ', 'sudha', 'manager');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
