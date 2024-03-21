-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 07:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aptutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_title` varchar(200) NOT NULL,
  `pro_details` text NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_imagepath` varchar(200) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `is_delete` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_title`, `pro_details`, `pro_price`, `pro_imagepath`, `sub_category_id`, `qty`, `is_active`, `is_delete`) VALUES
(1, 'iphone', 'Blck colour,8GB RAM', 85000, 'iphone-15.jpg', 1, 12, '1', '0'),
(2, 'Samsung', 'Samsung M12,8GB RAM,Black colour', 12000, 'samsungm12.jpg', 2, 10, '1', '0'),
(3, 'Oneplus smart tv', 'One plus smart tv,Blck colour,8GB RAM,32inch screen', 22000, 'Oneplus.jpg', 3, 25, '1', '0'),
(4, 'SmartWatch', 'SKG V7 Smart Watch | Fitness Tracker with 5ATM Waterproof, Health Monitor, 1.7\'\' Touch Screen, Bluetooth Smartwatch for Android-iPhone', 6250, 'smartwatch.jpg', 4, 28, '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`sub_category_id`, `sub_category_name`, `is_active`, `insert_date`) VALUES
(1, 'Iphone15', 1, '2024-03-19 18:30:00'),
(2, 'SamsungM12', 1, '2024-03-19 18:30:00'),
(3, 'Oneplus Smart Tv', 1, '2024-03-19 18:30:00'),
(4, 'SmartWatch', 1, '2024-03-19 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
