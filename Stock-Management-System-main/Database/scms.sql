-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 09:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(0, 'Keyboard'),
(1, 'Mouse'),
(2, 'Monitor'),
(3, 'Motherboard'),
(4, 'Processor'),
(5, 'Power Supply'),
(6, 'Headset'),
(7, 'CPU'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(9, 'Hailee', 'Steinfield', '09394566543'),
(11, 'A Walk in Customer', NULL, NULL),
(14, 'Chuchay', 'Jusay', '09781633451'),
(15, 'Kimbert', 'Duyag', '09956288467'),
(16, 'Dieqcohr', 'Rufino', '09891344576'),
(17, 'Albert', 'Dunk', '12234'),
(18, 'Yasuo', 'Dum', '00000000000'),
(19, 'Zed', 'Mid', '8787897'),
(20, 'Irelia', 'stone', '91234455235'),
(21, 'Garen', 'Might', '1231234412');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'Erick', 'Cesar', 'Male', 'admin@gmail.com', '0123456789', 1, '0000-00-00', 113),
(2, 'Josuey', 'Mag-asos', 'Male', 'jmagaso@yahoo.com', '09091245761', 2, '2019-01-28', 156),
(4, 'Monica', 'Empinado', 'Female', 'monicapadernal@gmail.com', '09123357105', 1, '2019-03-06', 158),
(5, 'David', 'Keen', 'Male', 'user@user.com', '1234', 1, '2023-02-01', 159),
(6, 'Elizabeth', 'Keen', 'Female', 'user@user.com', '12345', 2, '2023-11-21', 160),
(7, 'Riven', 'Flynn', 'Female', 'user@user.com', '12334', 2, '2023-12-09', 161),
(8, 'Teemo', 'Jungle', 'Male', 'teemobad@gmail.com', '123456678', 2, '2023-12-01', 162),
(9, 'Arnold', 'Small', 'Male', 'Arnoldlegit@user.com', '123124', 1, '2023-12-09', 164);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Uttara', 'Dhaka'),
(112, 'Motijheel', 'Dhaka'),
(113, 'Rampura', 'Dhaka'),
(114, 'Dhanmondi', 'Dhaka'),
(115, 'Banani', 'Dhaka'),
(116, 'Gulshan', 'Dhaka'),
(126, 'Mirpur', 'Dhaka'),
(130, 'Bonosree', 'Dhaka'),
(131, 'Mohakhali', 'Dhaka'),
(132, 'Mohammadpur', 'Dhaka'),
(133, 'Khilgaon', 'Dhaka'),
(134, 'Peelkhana', 'Dhaka'),
(135, 'Azimpur', 'Dhaka'),
(136, 'Shaymoli', 'Dhaka'),
(137, 'Demra', 'Dhaka'),
(138, 'Kolabagan', 'Dhaka'),
(139, 'Boshundhara', 'Dhaka'),
(140, 'Badda', 'Dhaka'),
(141, 'Zhigatola', 'Dhaka'),
(142, 'Kamalapur', 'Dhaka'),
(143, 'Notunbazar', 'Dhaka'),
(144, 'Gabtoli', 'Dhaka'),
(145, 'Gulisthan', 'Dhaka'),
(146, 'Abdullahpur', 'Dhaka'),
(147, 'Khilkhet', 'Dhaka'),
(148, 'Gazipur', 'Dhaka'),
(149, 'Tongi', 'Dhaka'),
(150, 'Savar', 'Dhaka'),
(151, 'Dokhinkhan', 'Dhaka'),
(152, 'Agrabad', 'Chittagong'),
(153, 'Khulshi', 'Chittagong'),
(154, 'Bahaddarhat', 'Chittagong'),
(155, 'Halishahar', 'Chittagong'),
(156, 'Cox\'s Bazar', 'Chittagong'),
(157, 'Hathazari', 'Chittagong'),
(158, 'Kumira', 'Chittagong'),
(159, 'Uttara', 'Dhaka'),
(160, 'Mirpur', 'Dhaka'),
(161, 'Uttara', 'Dhaka'),
(162, 'Mirpur', 'Dhaka'),
(163, 'Demra', 'Dhaka'),
(164, 'Uttara', 'Dhaka'),
(165, 'Mirpur', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Erick', 'Cesar', 113, 'admin@gmail.com', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(1, '20191001', 'Lenovo ideapad 20059', 'Windows 8', 1, 1, 32999, 7, 15, '2019-03-02'),
(3, '20191003', 'Predator Helios 300 Gaming Laptop', 'Windows 10 Home\r\nIntelÂ® Coreâ„¢ i7-8750H processor Hexa-core 2.20 GHz\r\n15.6\" Full HD (1920 x 1080) ', 1, 1, 77850, 7, 15, '2019-03-02'),
(4, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 0, 11, '2019-03-02'),
(5, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 0, 15, '2019-03-03'),
(6, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 0, 11, '2019-03-04'),
(8, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 0, 11, '2019-03-05'),
(9, '20191002', 'Newmen E120', 'hehe', 1, 1, 550, 0, 11, '2019-03-04'),
(10, '20191004', 'Fantech EG1', 'BEST FOR MOBILE PHONE GAMERS\r\nSPEAKER:10mm\r\nIMPEDANCE: 18+-15%\r\nFREQUENCY RESPONSE: 20 TO 20khz\r\nMICROPHONE : OMNI DIRECTIONAL\r\nJACK: AUDIO+MICROPHONE\r\nCOMBINED JACK 3.5 WIRE\r\nWIRE LENGTH: 1.3M\r\nWhat in inside:-1 pcs Female 3.5mm to Audio and\r\nmicrop', 11, 11, 859, 6, 13, '2019-03-06'),
(11, '20191004', 'Fantech EG1', 'a', 1, 1, 895, 6, 13, '2019-03-01'),
(12, '20191004', 'Fantech EG1', 'a', 1, 1, 895, 6, 13, '2019-03-01'),
(13, '20191004', 'Fantech EG1', 'a', 1, 1, 895, 6, 13, '2019-03-01'),
(14, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(15, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(16, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(17, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(18, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(19, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(20, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(21, '20191002', 'Newmen E120', 'haha', 1, 1, 550, 0, 15, '2019-03-06'),
(22, '20191001', 'Lenovo ideapad 20059', 'hehe', 10, 1, 32999, 7, 12, '2019-03-11'),
(23, '20191001', 'Lenovo ideapad 20059', 'hehe', 1, 1, 32999, 7, 12, '2019-03-11'),
(24, '20191001', 'Lenovo ideapad 20059', 'hehe', 1, 1, 32999, 7, 12, '2019-03-11'),
(25, '20191001', 'Lenovo ideapad 20059', 'hehe', 1, 1, 32999, 7, 12, '2019-03-11'),
(26, '20191001', 'Lenovo ideapad 20059', 'hehe', 1, 1, 32999, 7, 12, '2019-03-11'),
(27, '20191005', 'A4tech OP-720', 'normal mouse', 10, 10, 289, 1, 16, '2019-03-13'),
(28, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(29, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(30, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(31, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(32, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(33, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(34, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(35, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(36, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(37, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(38, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(39, '20191001', 'Asus Prime B40m', 'Best Motherboard', 1, 1, 765, 7, 12, '2023-12-09'),
(40, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(41, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(42, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(43, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(44, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(45, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(46, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(47, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(48, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(49, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(50, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(51, '123456', 'Asus Prime B40m', 'Best mobo', 1, 1, 500, 7, 12, '2023-12-09'),
(52, '20191007', 'Razer kraker Blue', 'Bad Headset', 1, 1, 200, 6, 13, '2023-12-09'),
(53, '20191007', 'Razer kraker Blue', 'Bad Headset', 1, 1, 200, 6, 13, '2023-12-09'),
(54, '20191007', 'Razer kraker Blue', 'Bad Headset', 1, 1, 200, 6, 13, '2023-12-09'),
(55, '20191007', 'Razer kraker Blue', 'Bad Headset', 1, 1, 200, 6, 13, '2023-12-09'),
(56, '20191007', 'Razer kraker Blue', 'Bad Headset', 1, 1, 200, 6, 13, '2023-12-09'),
(57, '20191008', 'Gamdias Mouse', 'Bad', 1, 1, 199, 1, 15, '2023-12-15'),
(58, '20191008', 'Gamdias Mouse', 'Bad', 1, 1, 199, 1, 15, '2023-12-15'),
(59, '20191008', 'Gamdias Mouse', 'Bad', 1, 1, 199, 1, 15, '2023-12-15'),
(60, '20191008', 'Gamdias Mouse', 'Bad', 1, 1, 199, 1, 15, '2023-12-15'),
(61, '20191008', 'Gamdias Mouse', 'Bad', 1, 1, 199, 1, 15, '2023-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(11, 'InGame Tech', 114, '09457488521'),
(12, 'Asus', 115, '09635877412'),
(13, 'Razer Co.', 111, '09587855685'),
(15, 'Strategic Technology Co.', 116, '09124033805'),
(16, 'A4tech', 155, '09775673257'),
(17, 'Dell', 163, '09231231234'),
(18, 'Gamdias', 165, '0912321344');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(3, 16, '3', '456,982.00', '48,962.36', '408,019.64', '48,962.36', '456,982.00', '500000', '2019-03-18', '0318160336'),
(4, 11, '2', '1,967.00', '210.75', '1,756.25', '210.75', '1,967.00', '2000', '2019-03-18', '0318160622'),
(5, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2019-03-18', '0318170309'),
(6, 15, '1', '77,850.00', '8,341.07', '69,508.93', '8,341.07', '77,850.00', '80000', '2019-03-18', '0318170352'),
(7, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170511'),
(8, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170524'),
(9, 14, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170551'),
(10, 11, '1', '289.00', '30.96', '258.04', '30.96', '289.00', '500', '2019-03-18', '0318170624'),
(11, 9, '2', '1,148.00', '123.00', '1,025.00', '123.00', '1,148.00', '2000', '2019-03-18', '0318170825'),
(12, 9, '1', '5,500.00', '589.29', '4,910.71', '589.29', '5,500.00', '6000', '2019-03-18 19:40 pm', '0318194016'),
(13, 11, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2022-07-14 14:12 pm', '0714141333'),
(14, 16, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '1000', '2022-07-14 15:54 pm', '0714155515'),
(15, 11, '2', '1,128.00', '120.86', '1,007.14', '120.86', '1,128.00', '1128', '2022-07-14 16:08 pm', '0714160904'),
(16, 9, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2022-07-14 16:10 pm', '0714161034'),
(17, 11, '1', '32,999.00', '3,535.61', '29,463.39', '3,535.61', '32,999.00', '40000', '2023-12-08 18:17 pm', '1208181733'),
(18, 17, '1', '859.00', '92.04', '766.96', '92.04', '859.00', '1000', '2023-12-08 20:30 pm', '1208203045'),
(19, 18, '2', '489.00', '52.39', '436.61', '52.39', '489.00', '500', '2023-12-08 20:50 pm', '1208205048'),
(20, 20, '3', '989.00', '105.96', '883.04', '105.96', '989.00', '1000', '2023-12-08 20:52 pm', '1208205314'),
(21, 20, '2', '1,697.00', '181.82', '1,515.18', '181.82', '1,697.00', '2000', '2023-12-08 21:07 pm', '1208210811'),
(22, 11, '3', '1,039.00', '111.32', '927.68', '111.32', '1,039.00', '2000', '2023-12-08 21:09 pm', '1208210917'),
(23, 11, '1', '859.00', '92.04', '766.96', '92.04', '859.00', '800', '2023-12-08 21:10 pm', '1208211035');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Lenovo ideapad 20059', '2', '32999', 'Prince Ly', 'Manager'),
(8, '0318160336', 'Predator Helios 300 Gaming Laptop', '5', '77850', 'Prince Ly', 'Manager'),
(9, '0318160336', 'A4tech OP-720', '6', '289', 'Prince Ly', 'Manager'),
(10, '0318160622', 'Newmen E120', '2', '550', 'Prince Ly', 'Manager'),
(11, '0318160622', 'A4tech OP-720', '3', '289', 'Prince Ly', 'Manager'),
(12, '0318170309', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(13, '0318170352', 'Predator Helios 300 Gaming Laptop', '1', '77850', 'Prince Ly', 'Manager'),
(14, '0318170511', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(15, '0318170524', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(16, '0318170551', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(17, '0318170624', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(18, '0318170825', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(19, '0318170825', 'Fantech EG1', '1', '859', 'Prince Ly', 'Manager'),
(20, '0318194016', 'Newmen E120', '10', '550', 'Josuey', 'Cashier'),
(21, '0714141333', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(22, '0714155515', 'Newmen E120', '1', '550', 'Erick', 'Manager'),
(23, '0714160904', 'Newmen E120', '1', '550', 'Erick', 'Manager'),
(24, '0714160904', 'A4tech OP-720', '2', '289', 'Erick', 'Manager'),
(25, '0714161034', 'Newmen E120', '1', '550', 'Josuey', 'Cashier'),
(26, '1208181733', 'Lenovo ideapad 20059', '1', '32999', 'Erick', 'Manager'),
(27, '1208203045', 'Fantech EG1', '1', '859', 'Erick', 'Manager'),
(28, '1208205048', 'A4tech OP-720', '1', '289', 'Erick', 'Manager'),
(29, '1208205048', 'Razer kraker Blue', '1', '200', 'Erick', 'Manager'),
(30, '1208205314', 'A4tech OP-720', '1', '289', 'Riven', 'Employee'),
(31, '1208205314', 'Razer kraker Blue', '1', '200', 'Riven', 'Employee'),
(32, '1208205314', 'Asus Prime B40m', '1', '500', 'Riven', 'Employee'),
(33, '1208210811', 'Newmen E120', '2', '550', 'Erick', 'Manager'),
(34, '1208210811', 'Gamdias Mouse', '3', '199', 'Erick', 'Manager'),
(35, '1208210917', 'Newmen E120', '1', '550', 'Riven', 'Employee'),
(36, '1208210917', 'A4tech OP-720', '1', '289', 'Riven', 'Employee'),
(37, '1208210917', 'Razer kraker Blue', '1', '200', 'Riven', 'Employee'),
(38, '1208211035', 'Fantech EG1', '1', '859', 'Riven', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(7, 2, 'user', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 2),
(9, 4, 'monica', '12dea96fec20593566ab75692c9949596833adc9', 2),
(10, 5, 'keen', '12dea96fec20593566ab75692c9949596833adc9', 2),
(11, 6, 'Elizabeth', '12dea96fec20593566ab75692c9949596833adc9', 2),
(12, 7, 'Riven', '12dea96fec20593566ab75692c9949596833adc9', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`TRANS_D_ID`) REFERENCES `transaction_details` (`TRANS_D_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;