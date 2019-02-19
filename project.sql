-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2014 at 07:03 AM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_task`
--

CREATE TABLE IF NOT EXISTS `assign_task` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `pro_id` int(4) DEFAULT NULL,
  `leader_id` int(4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `assign_task`
--

INSERT INTO `assign_task` (`aid`, `pro_id`, `leader_id`, `start_date`, `end_date`) VALUES
(29, 5, 5, '2014-03-04', '2014-03-31'),
(30, 6, 6, '2014-04-01', '2014-03-31'),
(31, 8, 8, '2014-03-22', '2014-03-31'),
(32, 10, 10, '2014-03-29', '2014-04-14'),
(33, 8, 8, '2014-03-22', '2014-03-31'),
(34, 10, 14, '2014-03-29', '2014-04-14'),
(35, 8, 15, '2014-03-22', '2014-03-31'),
(36, 12, 14, '2014-03-10', '2014-03-25'),
(38, 11, 14, '2014-03-03', '2014-03-28'),
(40, 8, 15, '2014-03-22', '2014-03-31'),
(41, 12, 14, '2014-03-10', '2014-03-25'),
(42, 10, 14, '2014-03-29', '2014-04-14'),
(43, 10, 14, '2014-03-29', '2014-04-14'),
(44, 18, 15, '2014-04-01', '2014-04-30'),
(45, 13, 15, '2014-03-03', '2014-03-31'),
(46, 19, 14, '2014-02-01', '2014-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `assign_task_transaction`
--

CREATE TABLE IF NOT EXISTS `assign_task_transaction` (
  `at_id` int(4) NOT NULL AUTO_INCREMENT,
  `aid` int(4) DEFAULT NULL,
  `emp_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `assign_task_transaction`
--

INSERT INTO `assign_task_transaction` (`at_id`, `aid`, `emp_id`) VALUES
(5, 29, 12),
(6, 30, 12),
(7, 30, 12),
(8, 31, 12),
(9, 32, 13),
(10, 33, 13),
(11, 34, 13),
(12, 35, 12),
(13, 36, 12),
(14, 37, 12),
(15, 38, 13),
(16, 39, 13),
(17, 40, 13),
(18, 41, 12),
(19, 43, 12),
(20, 44, 12),
(21, 45, 13),
(22, 46, 13);

-- --------------------------------------------------------

--
-- Stand-in structure for view `city_details`
--
CREATE TABLE IF NOT EXISTS `city_details` (
`city_id` int(4)
,`city_name` varchar(40)
,`state_name` varchar(40)
);
-- --------------------------------------------------------

--
-- Table structure for table `city_info`
--

CREATE TABLE IF NOT EXISTS `city_info` (
  `city_id` int(4) NOT NULL AUTO_INCREMENT,
  `state_id` int(4) DEFAULT NULL,
  `city_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `state_id` (`city_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=30 ;

--
-- Dumping data for table `city_info`
--

INSERT INTO `city_info` (`city_id`, `state_id`, `city_name`) VALUES
(11, 2, 'chandigdh'),
(12, 4, 'pune'),
(14, 1, 'Ahmedabad'),
(15, 5, 'panji'),
(16, 6, 'munar'),
(17, 15, 'banglore'),
(19, 7, 'jaipur'),
(21, 8, 'gulmarg'),
(22, 12, 'dishpur'),
(23, 6, 'mahe'),
(24, 13, 'kolkata'),
(25, 15, 'chennai'),
(26, 1, 'surat'),
(27, 1, 'surat'),
(29, 5, 'madgao');

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE IF NOT EXISTS `emp_details` (
  `emp_id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `passward` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city_id` int(4) DEFAULT NULL,
  `pincode` bigint(6) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_no` bigint(10) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `salary` bigint(10) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`emp_id`, `username`, `passward`, `address`, `city_id`, `pincode`, `dob`, `phone_no`, `qualification`, `salary`, `type`) VALUES
(12, 'pri', 'p123', 'cg road', 12, 385674, '1990-01-28', 9899812312, 'msc', 7000, 'Trainy'),
(13, 'nidhi', 'n123', 'ring road', 19, 789451, '1985-04-08', 9878457812, 'bca', 10000, 'Trainy'),
(14, 'neha', 'n123', 'jl road', 12, 1968, '0000-00-00', 985623, 'msc(IT)', 8000, 'leader_staff'),
(15, 'hina', 'h123', 'rp road', 15, 789654, '1977-07-18', 9898562314, 'bca', 9000, 'leader_staff');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `f_id` int(4) NOT NULL AUTO_INCREMENT,
  `emp_id` int(4) DEFAULT NULL,
  `pro_id` int(4) DEFAULT NULL,
  `leader_id` int(4) DEFAULT NULL,
  `query` varchar(40) DEFAULT NULL,
  `query_date` date DEFAULT NULL,
  `reply` varchar(40) DEFAULT NULL,
  `reply_date` date DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`f_id`, `emp_id`, `pro_id`, `leader_id`, `query`, `query_date`, `reply`, `reply_date`, `status`) VALUES
(6, 30, 30, 6, 'rtrtrt', '2014-03-22', NULL, NULL, 'Pending'),
(7, 34, 34, 14, 'explain the modules\r\n', '2014-03-22', NULL, NULL, 'Pending'),
(8, 35, 35, 15, 'RWEWREWRfdgd', '2014-03-22', 'hghghghgh', '2014-03-29', 'Replied'),
(9, 34, 34, 15, 'fdfd', '2014-03-22', NULL, NULL, 'Pending'),
(10, 34, 34, 15, 'uuuu', '2014-03-22', NULL, NULL, 'Pending'),
(11, 12, 35, 15, 'jhjhjhj', '2014-03-29', NULL, NULL, 'Pending'),
(12, 13, 34, 15, 'uyuyuyuy??', '2014-03-29', NULL, NULL, 'Pending'),
(13, 13, 36, 15, 'yuyuyuy', '2014-03-29', NULL, NULL, 'Pending'),
(14, 13, 40, 15, 'uyuyuy', '2014-03-29', NULL, NULL, 'Pending'),
(15, 34, 34, 15, 'fdfdfd', '2014-03-29', NULL, NULL, 'Pending'),
(16, 12, 35, 14, 'rererere', '2014-03-29', NULL, NULL, 'Pending'),
(17, 12, 41, 14, 'ghghg', '2014-03-29', NULL, NULL, 'Pending'),
(18, 12, 8, 14, 'ytytyty', '2014-03-29', NULL, NULL, 'Pending'),
(19, 13, 12, 14, 'ererer', '2014-03-29', 'hghghghgh', '2014-03-29', 'Replied'),
(20, 13, 10, 14, 'discription', '2014-04-24', 'sol\r\nve\r\n', '2014-04-24', 'Replied'),
(21, 12, 10, 14, 'what is in admin module', '2014-04-24', NULL, NULL, 'Pending'),
(22, 13, 10, 14, 'user module', '2014-04-24', NULL, NULL, 'Pending'),
(23, 12, 18, 15, 'what is in voter module', '2014-04-24', 'caste vote', '2014-04-24', 'Replied'),
(24, 12, 13, 15, 'how to order food', '2014-04-24', NULL, NULL, 'Pending'),
(25, 13, 18, 14, 'what is in voter module', '2014-04-24', 'voting system', '2014-04-25', 'Replied');

-- --------------------------------------------------------

--
-- Table structure for table `leave_master`
--

CREATE TABLE IF NOT EXISTS `leave_master` (
  `leave_id` int(4) NOT NULL AUTO_INCREMENT,
  `emp_id` int(4) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=36 ;

--
-- Dumping data for table `leave_master`
--

INSERT INTO `leave_master` (`leave_id`, `emp_id`, `leave_type`, `reason`, `from_date`, `to_date`, `status`) VALUES
(25, 15, 'sick', 'fever', '2014-03-03', '2014-03-13', 'Approved'),
(26, 14, 'casual', 'occasion', '2014-03-12', '2014-03-16', 'Disapprove'),
(28, 12, 'casual', 'merrage\r\n', '2014-03-03', '2014-03-06', 'Pending'),
(31, 14, 'sick', 'Fever', '2014-04-07', '2014-05-11', 'Approved'),
(32, 14, 'sick', 'cold', '2014-05-01', '2014-04-05', 'Pending'),
(33, 14, 'casual', 'marriage', '2014-04-01', '2014-04-16', 'Approved'),
(35, 13, 'casual', 'social function', '2014-04-02', '2014-04-09', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `lfaq`
--

CREATE TABLE IF NOT EXISTS `lfaq` (
  `f_id` int(4) NOT NULL AUTO_INCREMENT,
  `leader_id` int(4) DEFAULT NULL,
  `pro_id` int(4) DEFAULT NULL,
  `query` varchar(50) DEFAULT NULL,
  `query_date` date DEFAULT NULL,
  `reply` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lfaq`
--

INSERT INTO `lfaq` (`f_id`, `leader_id`, `pro_id`, `query`, `query_date`, `reply`, `status`) VALUES
(1, 14, 19, 'trt', '2014-04-25', 'dfgdsz', 'Replied'),
(2, 14, 19, 'sdards', '2014-04-25', 'dfgdsz', 'Replied'),
(3, 15, 18, 'wertryy', '2014-04-25', 'abcd', 'Replied'),
(4, 14, 19, 'explain payment module\r\n', '2014-04-25', 'through credit card\r\n', 'Replied');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(4) NOT NULL AUTO_INCREMENT,
  `id` int(4) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `passward` varchar(50) DEFAULT NULL,
  `seq_id` int(4) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=63 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `id`, `username`, `passward`, `seq_id`, `answer`, `type`) VALUES
(54, 38, 'kajal', 'k123', 1, 'kaju', 'user'),
(55, 12, 'pri', 'p123', 2, 'reading', 'Trainy'),
(56, 40, 'yum', 'y123', 3, 'panipuri', 'admin'),
(57, 41, 'him', 'h123', 4, 'nidhi', 'admin'),
(58, 13, 'nidhi', 'n123', 2, 'dancing', 'Trainy'),
(59, 43, 'khushi', 'k123', 2, 'singing', 'user'),
(60, 44, 'sam', 's123', 4, 'pinki', 'user'),
(61, 14, 'neha', 'n123', 1, 'neh', 'leader_staff'),
(62, 15, 'hina', 'h123', 4, 'monika', 'leader_staff');

-- --------------------------------------------------------

--
-- Table structure for table `paperset`
--

CREATE TABLE IF NOT EXISTS `paperset` (
  `paper_id` int(4) NOT NULL AUTO_INCREMENT,
  `paper_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `paperset`
--

INSERT INTO `paperset` (`paper_id`, `paper_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `pro_info`
--

CREATE TABLE IF NOT EXISTS `pro_info` (
  `pro_id` int(4) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(15) NOT NULL,
  `pro_desc` varchar(55) NOT NULL,
  `pro_leads` varchar(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `pro_info`
--

INSERT INTO `pro_info` (`pro_id`, `pro_name`, `pro_desc`, `pro_leads`, `start_date`, `end_date`) VALUES
(5, 'inventory manag', 'three modules purchasing,selling,billing', 'neha', '2014-03-04', '2014-03-31'),
(6, 'hr management', 'three modules leave,performance,salary', 'hina', '2014-04-01', '2014-03-31'),
(7, 'travell agency', 'two modules places,restaurant', 'neha', '2014-03-03', '2014-03-25'),
(13, 'hotel managemen', '3 modulesfood,customer,manager', '15', '2014-03-03', '2014-03-31'),
(16, ' tours  and tra', '3 modules hotel,place,food', '15', '2014-03-03', '2014-03-26'),
(18, 'voting system', 'voter,admin', '15', '2014-04-01', '2014-04-30'),
(19, 'online shoping', 'order,purchase,payment', '14', '2014-02-01', '2014-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `que_ans_master`
--

CREATE TABLE IF NOT EXISTS `que_ans_master` (
  `option_id` int(4) NOT NULL AUTO_INCREMENT,
  `que_id` int(4) DEFAULT NULL,
  `que_option` varchar(40) DEFAULT NULL,
  `ans` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `que_ans_master`
--

INSERT INTO `que_ans_master` (`option_id`, `que_id`, `que_option`, `ans`) VALUES
(33, 10, 'pre processer ', 'hyper text pre processer'),
(34, 10, 'hyper text pre processer', 'hyper text pre processer'),
(35, 10, 'processer hyper text', 'hyper text pre processer'),
(36, 10, 'none', 'hyper text pre processer'),
(37, 11, 'prome minister', 'governer'),
(38, 11, 'chief mininster', 'governer'),
(39, 11, 'governer', 'governer'),
(40, 11, 'home mininster', 'governer'),
(41, 12, 'prtibha patil', 'pranav mukharjee'),
(42, 12, 'A.P.J Abdul kalam', 'pranav mukharjee'),
(43, 12, 'pranav mukharjee', 'pranav mukharjee'),
(44, 12, 'manmohan singh', 'pranav mukharjee'),
(45, 13, 'orange', 'patola'),
(46, 13, 'silk saree', 'patola'),
(47, 13, 'mango', 'patola'),
(48, 13, 'patola', 'patola'),
(49, 14, '26/11/1951', 'chetak'),
(50, 14, '26/11/1945', 'chetak'),
(51, 14, '26/11/1949', 'chetak'),
(52, 14, '26/11/1849', 'chetak'),
(53, 14, 'chetak', 'chetak'),
(54, 14, 'tom', 'chetak'),
(55, 14, 'jerry', 'chetak'),
(56, 14, 'none', 'chetak'),
(57, 15, 'Rajendra prasad', 'Rajendra prasad'),
(58, 15, 'Mahatma Gandhi', 'Rajendra prasad'),
(59, 15, 'Javahar lal nehru', 'Rajendra prasad'),
(60, 15, 'Sardar vallabhbhai patel', 'Rajendra prasad'),
(61, 16, 'java system pages', 'java server pages'),
(62, 16, 'java software process', 'java server pages'),
(63, 16, 'java server pager', 'java server pages'),
(64, 16, 'java server pages', 'java server pages'),
(97, 25, 'hyper text markup language', 'hyper text markup language'),
(98, 25, 'hyper text pre processer', 'hyper text markup language'),
(99, 25, 'hyper text language', 'hyper text markup language'),
(100, 25, 'none', 'hyper text markup language'),
(101, 26, '.html', '.doc'),
(102, 26, '.doc', '.doc'),
(103, 26, '.ppt', '.doc'),
(104, 26, '.xml', '.doc'),
(105, 27, '', ''),
(106, 27, '', ''),
(107, 27, '', ''),
(108, 27, '', ''),
(109, 28, 'temporary storage', 'temporary storage'),
(110, 28, 'printer', 'temporary storage'),
(111, 28, 'browser', 'temporary storage'),
(112, 28, 'operating system', 'temporary storage'),
(113, 29, 'inkjet printer', 'none'),
(114, 29, 'dotmatrix', 'none'),
(115, 29, 'laser', 'none'),
(116, 29, 'none', 'none'),
(117, 30, 'windows xp', 'linux'),
(118, 30, 'linux', 'linux'),
(119, 30, 'windows7', 'linux'),
(120, 30, 'android', 'linux'),
(121, 31, 'charles babage', 'charles babage'),
(122, 31, 'bill gates', 'charles babage'),
(123, 31, 'george', 'charles babage'),
(124, 31, 'none', 'charles babage'),
(125, 32, 'mark zukarburg', 'mark zukarburg'),
(126, 32, 'bill gates', 'mark zukarburg'),
(127, 32, 'george', 'mark zukarburg'),
(128, 32, 'none', 'mark zukarburg'),
(129, 33, 'integration of componant', 'integration of componant'),
(130, 33, 'type of os ', 'integration of componant'),
(131, 33, 'type of memory', 'integration of componant'),
(132, 33, 'all', 'integration of componant'),
(133, 34, 'bill gates', 'bill gates'),
(134, 34, 'mark zukerberg', 'bill gates'),
(135, 34, 'bratelee', 'bill gates'),
(136, 34, 'steve jobes', 'bill gates'),
(137, 35, 'system board', 'system board'),
(138, 35, 'clip board', 'system board'),
(139, 35, 'system device', 'system board'),
(140, 35, 'none', 'system board'),
(141, 36, '', ''),
(142, 36, '', ''),
(143, 36, '', ''),
(144, 36, '', ''),
(145, 37, 'arithmatic logical unit', 'arithmatic logical unit'),
(146, 37, 'algorithm', 'arithmatic logical unit'),
(147, 37, 'american line unit', 'arithmatic logical unit'),
(148, 37, 'none', 'arithmatic logical unit'),
(149, 38, 'google chrome', 'mozila firefox'),
(150, 38, 'internet explorer', 'mozila firefox'),
(151, 38, 'mozila firefox', 'mozila firefox'),
(152, 38, 'none', 'mozila firefox'),
(153, 39, 'data flow diagram', 'data flow diagram'),
(154, 39, 'data  flow disc', 'data flow diagram'),
(155, 39, 'data file disc', 'data flow diagram'),
(156, 39, 'none', 'data flow diagram'),
(157, 40, 'abc*+', ''),
(158, 40, 'ab*+c', ''),
(159, 40, '', ''),
(160, 40, '', ''),
(161, 41, 'abc*+', 'abc*+'),
(162, 41, 'ab*+c', 'abc*+'),
(163, 41, 'ac+*b', 'abc*+'),
(164, 41, 'abc+*', 'abc*+'),
(165, 42, '', ''),
(166, 42, '', ''),
(167, 42, '', ''),
(168, 42, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `que_master`
--

CREATE TABLE IF NOT EXISTS `que_master` (
  `que_id` int(4) NOT NULL AUTO_INCREMENT,
  `que_name` varchar(40) DEFAULT NULL,
  `marks` int(4) DEFAULT NULL,
  `ans` varchar(40) DEFAULT NULL,
  `paper_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `que_master`
--

INSERT INTO `que_master` (`que_id`, `que_name`, `marks`, `ans`, `paper_id`) VALUES
(10, 'what is full form of php?', 1, 'hyper text pre processer', 1),
(11, 'which person manage the reserve bank of ', 1, 'governer', 1),
(12, 'who is our current president', 1, 'pranav mukharjee', 1),
(13, 'what is the famous thing about patan?', 1, 'patola', 1),
(14, 'what is name of the maharana pratap', 1, 'chetak', 1),
(15, 'who is the first presedent of India?', 1, 'Rajendra prasad', 2),
(16, 'what is full form of jsp?', 1, 'java server pages', 2),
(25, 'what is full form of html?', 1, 'hyper text markup language', 2),
(26, 'what is extention of word document?', 1, '.doc', 2),
(27, 'what is buffer?', 0, '', 2),
(28, 'what is buffer?', 1, 'temporary storage', 2),
(29, 'which one of the following is not  print', 1, 'none', 3),
(30, 'which operating system is open source?', 1, 'linux', 3),
(31, 'who is the founder of computer? ', 1, 'charles babage', 3),
(32, 'who is the founder of facebook?', 1, 'mark zukarburg', 3),
(33, 'what is coupling?', 1, 'integration of componant', 3),
(34, 'who is founder of microsoft?', 1, 'bill gates', 4),
(35, 'what is other name of motherboard?', 1, 'system board', 4),
(36, 'what is fullform of A.L.U?', 0, '', 4),
(37, 'what is fullform of A.L.U?', 1, 'arithmatic logical unit', 4),
(38, 'which is opensource browser?', 1, 'mozila firefox', 4),
(39, 'what is dfd?', 1, 'data flow diagram', 1),
(40, 'postfix of a*b+c', 0, '', 1),
(41, 'postfix of a*b+c', 0, '', 1),
(42, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `que_view`
--
CREATE TABLE IF NOT EXISTS `que_view` (
`que_id` int(4)
,`que_name` varchar(40)
,`marks` int(4)
,`ans` varchar(40)
,`paper_name` varchar(10)
);
-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state_id` int(4) DEFAULT NULL,
  `city_id` int(4) DEFAULT NULL,
  `pincode` bigint(10) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `phone_no` bigint(10) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `expected_salary` bigint(6) DEFAULT NULL,
  `first_call` varchar(20) DEFAULT NULL,
  `second_call` varchar(20) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `fname`, `lname`, `address`, `state_id`, `city_id`, `pincode`, `dob`, `phone_no`, `qualification`, `expected_salary`, `first_call`, `second_call`, `status`) VALUES
(38, 'kajal', 'shah', 'paldi', 1, 14, 380001, '1984-03-05 00:00:00', 9898457891, 'bsc', 10000, 'True', 'True', 'False'),
(39, 'priya', 'patel', 'cg road', 4, 12, 385674, '1990-01-28 00:00:00', 9899812312, 'msc', 40000, 'True', 'True', 'True'),
(40, 'yumna', 'pathan', 'dariyapur', 6, 16, 789456, '1992-05-04 00:00:00', 9889784561, 'msc(IT)', 20000, 'False', 'False', 'False'),
(41, 'himani', 'doshi', 'paldi', 8, 21, 382546, '1986-02-03 00:00:00', 9878456521, 'mca', 9000, 'False', 'False', 'False'),
(42, 'nidhi', 'patel', 'ring road', 7, 19, 789451, '1985-04-08 00:00:00', 9878457812, 'bca', 6000, 'True', 'True', 'True'),
(43, 'khushbu', 'shah', 'mg road', 2, 11, 785496, '1978-01-02 00:00:00', 9898745612, 'bca', 7000, 'False', 'False', 'False'),
(44, 'sam', 'patel', 'hk road', 5, 15, 568923, '1981-09-07 00:00:00', 9878985236, 'bsc', 9000, 'False', 'False', 'False'),
(45, 'neha', 'patel', 'jl road', 4, 12, 985623, '1987-12-07 00:00:00', 9856231478, 'msc(IT)', 9000, 'True', 'True', 'True'),
(46, 'hina', 'shah', 'rp road', 5, 15, 789654, '1977-07-18 00:00:00', 9898562314, 'bca', 9000, 'True', 'True', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE IF NOT EXISTS `security_question` (
  `seq_id` int(4) NOT NULL AUTO_INCREMENT,
  `seq_que` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`seq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=11 ;

--
-- Dumping data for table `security_question`
--

INSERT INTO `security_question` (`seq_id`, `seq_que`) VALUES
(1, 'What is ur  nick name??'),
(2, 'what is ur hobby ???'),
(3, 'what is your favourite drink?'),
(4, 'who is your best friend?'),
(5, 'who is your favourite player?'),
(6, 'what is favourite colour?'),
(7, 'who is your uncle?'),
(10, 'what is ur birthplace??');

-- --------------------------------------------------------

--
-- Table structure for table ` sresult`
--

CREATE TABLE IF NOT EXISTS ` sresult` (
  `rid` int(4) NOT NULL AUTO_INCREMENT,
  `id` int(4) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `score` int(4) DEFAULT NULL,
  `totalscore` int(4) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table ` sresult`
--


-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(4) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Gujarat'),
(2, 'Punjab'),
(6, 'kerala'),
(7, 'rajasthan'),
(8, 'jammu&kashmir'),
(9, 'orissa'),
(10, 'hariyana'),
(11, 'karnataka'),
(12, 'assam'),
(13, 'west bengal'),
(14, 'tamilnadu'),
(16, 'bihar'),
(17, 'orissa'),
(18, 'mizoram'),
(19, 'manipur'),
(20, 'telagana'),
(21, 'meghalaya');

-- --------------------------------------------------------

--
-- Table structure for table `user_ans_master`
--

CREATE TABLE IF NOT EXISTS `user_ans_master` (
  `ans_id` int(4) NOT NULL AUTO_INCREMENT,
  `que_id` int(4) DEFAULT NULL,
  `options` varchar(40) DEFAULT NULL,
  `sess_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=298 ;

--
-- Dumping data for table `user_ans_master`
--

INSERT INTO `user_ans_master` (`ans_id`, `que_id`, `options`, `sess_id`) VALUES
(61, 2, 'gfgf', 'fbgvfql9u3r1kvtio83he6b2c7'),
(62, 3, 'VCV', 'fbgvfql9u3r1kvtio83he6b2c7'),
(69, 4, 'dsdsd', 'i6isniuhh4hkd9hac58mp213k2'),
(70, 5, 'tyt', 'i6isniuhh4hkd9hac58mp213k2'),
(71, 7, '5gb', 'i6isniuhh4hkd9hac58mp213k2'),
(72, 4, 'dsds', 'i6isniuhh4hkd9hac58mp213k2'),
(73, 5, 'ytyt', 'i6isniuhh4hkd9hac58mp213k2'),
(74, 7, '2gb', 'i6isniuhh4hkd9hac58mp213k2'),
(75, 4, 'dsdsds', 'i6isniuhh4hkd9hac58mp213k2'),
(76, 5, 'undefined', 'i6isniuhh4hkd9hac58mp213k2'),
(77, 5, 'ytyty', 'i6isniuhh4hkd9hac58mp213k2'),
(78, 7, '9gb', 'i6isniuhh4hkd9hac58mp213k2'),
(79, 2, 'gfgf', 'i6isniuhh4hkd9hac58mp213k2'),
(80, 3, 'VCV', 'i6isniuhh4hkd9hac58mp213k2'),
(81, 8, 'sdsd', 'i6isniuhh4hkd9hac58mp213k2'),
(228, 10, 'hyper text pre processer', '2dk6je3po60v89q4o3dum9pm51'),
(229, 11, 'governer', '2dk6je3po60v89q4o3dum9pm51'),
(230, 12, 'A.P.J Abdul kalam', '2dk6je3po60v89q4o3dum9pm51'),
(231, 13, 'patola', '2dk6je3po60v89q4o3dum9pm51'),
(232, 14, '26/11/1951', '2dk6je3po60v89q4o3dum9pm51'),
(233, 39, 'data flow diagram', '2dk6je3po60v89q4o3dum9pm51'),
(282, 11, 'home mininster', 'gtko639rg9fefr33arg1sgvdi7'),
(283, 12, 'A.P.J Abdul kalam', 'gtko639rg9fefr33arg1sgvdi7'),
(284, 13, 'orange', 'gtko639rg9fefr33arg1sgvdi7'),
(285, 14, 'chetak', 'gtko639rg9fefr33arg1sgvdi7'),
(286, 14, '26/11/1945', 'gtko639rg9fefr33arg1sgvdi7'),
(287, 39, 'data flow diagram', 'gtko639rg9fefr33arg1sgvdi7'),
(288, 40, 'abc* ', 'gtko639rg9fefr33arg1sgvdi7'),
(289, 41, 'abc* ', 'gtko639rg9fefr33arg1sgvdi7'),
(290, 10, 'undefined', 'gtko639rg9fefr33arg1sgvdi7'),
(291, 11, 'home mininster', 'gtko639rg9fefr33arg1sgvdi7'),
(292, 12, 'pranav mukharjee', 'gtko639rg9fefr33arg1sgvdi7'),
(293, 13, 'patola', 'gtko639rg9fefr33arg1sgvdi7'),
(294, 14, '26/11/1849', 'gtko639rg9fefr33arg1sgvdi7'),
(295, 39, 'data flow diagram', 'gtko639rg9fefr33arg1sgvdi7'),
(296, 40, 'abc* ', 'gtko639rg9fefr33arg1sgvdi7'),
(297, 41, 'abc *', 'gtko639rg9fefr33arg1sgvdi7');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_detail_view`
--
CREATE TABLE IF NOT EXISTS `user_detail_view` (
`id` int(4)
,`fname` varchar(40)
,`lname` varchar(40)
,`address` varchar(100)
,`state_name` varchar(40)
,`city_name` varchar(40)
,`pincode` bigint(10)
,`dob` datetime
,`phone_no` bigint(10)
);
-- --------------------------------------------------------

--
-- Structure for view `city_details`
--
DROP TABLE IF EXISTS `city_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `city_details` AS select `city_info`.`city_id` AS `city_id`,`city_info`.`city_name` AS `city_name`,`state`.`state_name` AS `state_name` from (`city_info` join `state` on((`city_info`.`state_id` = `state`.`state_id`)));

-- --------------------------------------------------------

--
-- Structure for view `que_view`
--
DROP TABLE IF EXISTS `que_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `que_view` AS select `que_master`.`que_id` AS `que_id`,`que_master`.`que_name` AS `que_name`,`que_master`.`marks` AS `marks`,`que_master`.`ans` AS `ans`,`paperset`.`paper_name` AS `paper_name` from (`que_master` join `paperset` on((`paperset`.`paper_id` = `que_master`.`paper_id`)));

-- --------------------------------------------------------

--
-- Structure for view `user_detail_view`
--
DROP TABLE IF EXISTS `user_detail_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_detail_view` AS select `registration`.`id` AS `id`,`registration`.`fname` AS `fname`,`registration`.`lname` AS `lname`,`registration`.`address` AS `address`,`state`.`state_name` AS `state_name`,`city_info`.`city_name` AS `city_name`,`registration`.`pincode` AS `pincode`,`registration`.`dob` AS `dob`,`registration`.`phone_no` AS `phone_no` from ((`registration` join `state` on((`registration`.`state_id` = `state`.`state_id`))) join `city_info` on((`registration`.`city_id` = `city_info`.`city_id`)));
