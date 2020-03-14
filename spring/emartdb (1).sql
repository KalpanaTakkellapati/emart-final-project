-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2020 at 09:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_details_table`
--

CREATE TABLE `bill_details_table` (
  `bill_details_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details_table`
--

INSERT INTO `bill_details_table` (`bill_details_id`, `bill_id`, `item_id`) VALUES
(71, 61, 21),
(72, 62, 22),
(166, 147, 22),
(167, 147, 21),
(168, 148, 21),
(169, 148, 21),
(170, 149, 21),
(171, 149, 21),
(172, 149, 22),
(173, 150, 21),
(174, 151, 21),
(175, 152, 21),
(176, 153, 22),
(177, 154, 21),
(178, 155, 22),
(179, 156, 22),
(180, 157, 21),
(181, 157, 21),
(182, 157, 22),
(183, 157, 21),
(184, 158, 22),
(185, 159, 22),
(186, 160, 22);

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE `bill_table` (
  `bill_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `bill_type` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_remarks` varchar(50) NOT NULL,
  `bill_amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`bill_id`, `buyer_id`, `bill_type`, `bill_date`, `bill_remarks`, `bill_amount`) VALUES
(61, 41, 'credit card', '2020-03-04', 'good', 50000),
(62, 42, 'debit card', '2020-03-02', 'good', 400000),
(147, 41, 'Debit', '2020-03-05', 'good', 821100),
(148, 41, 'Debit', '2020-03-05', 'good', 1600000),
(149, 41, 'Debit', '2020-03-05', 'good', 1621100),
(150, 41, 'Debit', '2020-03-06', 'good', 800000),
(151, 42, 'Debit', '2020-03-06', 'good', 800000),
(152, 41, 'Debit', '2020-03-06', 'good', 800000),
(153, 41, 'Debit', '2020-03-06', 'good', 21100),
(154, 41, 'Debit', '2020-03-06', 'good', 800000),
(155, 41, 'debit card', '2020-02-29', 'no', 20000),
(156, 41, 'debit card', '2020-02-29', 'no', 20000),
(157, 41, 'Debit', '2020-03-07', 'good', 2421100),
(158, 41, 'Debit', '2020-03-07', 'good', 21100),
(159, 41, 'Debit', '2020-03-07', 'good', 21100),
(160, 41, 'Debit', '2020-03-12', 'good', 21100);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_signup_table`
--

CREATE TABLE `buyer_signup_table` (
  `buyer_id` int(11) NOT NULL,
  `buyer_username` varchar(20) NOT NULL,
  `buyer_password` varchar(20) NOT NULL,
  `buyer_email` varchar(50) NOT NULL,
  `buyer_mobile` bigint(11) NOT NULL,
  `buyer_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_signup_table`
--

INSERT INTO `buyer_signup_table` (`buyer_id`, `buyer_username`, `buyer_password`, `buyer_email`, `buyer_mobile`, `buyer_date`) VALUES
(41, 'ashritha', '12345', 'abc@gmail.com', 98989898, '2020-03-02'),
(42, 'naveen', '123', 'xyz@gmail.com', 97989798, '2020-03-05'),
(43, 'ramesh', '345', 'pqr@gmail.com', 0, '2020-09-07'),
(44, 'ramesh', '345', 'pqr@gmail.com', 23456, '2020-09-07'),
(45, 'rajesh', '345', 'pqrs@gmail.com', 234565, '2020-07-07'),
(46, 'karthi', '34567', 'pqrst@gmail.com', 234567, '2020-08-07'),
(47, 'ramesh', '345', 'pqr@gmail.com', 0, '2020-09-07'),
(48, 'ramesh', '345', 'pqr@gmail.com', 23456, '2020-09-07'),
(49, 'ramesh', '345', 'pqr@gmail.com', 23456, '2020-09-07'),
(50, 'guyguj', '46547587', 'gjhgbjhb', 7868687676, '2020-03-12'),
(51, 'dfgch', '343546', 'vbnbv', 5467576879, '2020-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `category_brief` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`, `category_brief`) VALUES
(1, 'Electonics', 'mobiles,refrigerators,tvs,ac,etc'),
(2, 'FootWear', 'sandles,cheppals,flipflops,shoes,etc..'),
(3, 'Clothing', 'sarees,tops,jeans,kurthis,etc');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_image` varchar(200) NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_stock` int(20) NOT NULL,
  `item_description` varchar(50) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `item_remarks` varchar(50) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`item_id`, `item_name`, `item_image`, `item_price`, `item_stock`, `item_description`, `subcategory_id`, `item_remarks`, `seller_id`) VALUES
(21, 'Iphone XR', 'https://images.unsplash.com/photo-1510878933023-e2e2e3942fb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 800000, 2000, '8d sound quality', 12, 'excellent', 101),
(22, 'Redmi note 8', 'https://images.unsplash.com/photo-1515864146970-c67dcc7d3cea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 21100, 500, 'good camera ', 12, 'good', 102),
(23, 'LED TV', 'https://images.unsplash.com/photo-1567690187548-f07b1d7bf5a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 40000, 478, '7d pixel quality', 11, 'average', 101),
(24, 'Sony Tv', 'https://images.unsplash.com/photo-1580897275296-87979517bd4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 78654, 2000, 'High Sound Quality', 11, 'best', 102),
(25, 'sneakers', 'https://images.unsplash.com/photo-1512374382149-233c42b6a83b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 5000, 245, 'comfortable ', 13, 'good', 101),
(26, 'formal shoes', 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 4675, 234, 'beautiful ', 13, 'good', 102),
(27, 'sandels', 'https://images.unsplash.com/photo-1562454590-3ca6df2d87d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 500, 456, 'best', 14, 'good', 101),
(28, 'flats', 'https://images.unsplash.com/photo-1548685931-b26a3d28d45d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 543, 1234, 'best and soft', 14, 'excellent', 102);

-- --------------------------------------------------------

--
-- Table structure for table `seller_signup_table`
--

CREATE TABLE `seller_signup_table` (
  `seller_id` int(11) NOT NULL,
  `seller_username` varchar(20) NOT NULL,
  `seller_password` varchar(20) NOT NULL,
  `seller_company` varchar(20) NOT NULL,
  `seller_brief` varchar(20) NOT NULL,
  `seller_gst` int(10) NOT NULL,
  `seller_address` varchar(50) NOT NULL,
  `seller_email` varchar(50) NOT NULL,
  `seller_contact` int(11) NOT NULL,
  `seller_website` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_signup_table`
--

INSERT INTO `seller_signup_table` (`seller_id`, `seller_username`, `seller_password`, `seller_company`, `seller_brief`, `seller_gst`, `seller_address`, `seller_email`, `seller_contact`, `seller_website`) VALUES
(101, 'kalpana', '12345', 'ultra', 'manager', 3, 'chennai', 'abc@gamil.com', 275005, 'www.ultrawide.in'),
(102, 'kavya', '1234', 'sony', 'general sales execut', 5, 'hyderabad', 'xyz@gamil.com', 276543, 'www.sonyworld.com'),
(103, 'rajesh', '345', 'sony', 'goodcompany', 8, 'chennai', 'pqrs@gmail.com', 234565, 'www.abc.com'),
(104, 'rajesh', '345', 'sony', 'goodcompany', 8, 'chennai', 'pqrs@gmail.com', 234565, 'www.abc.com'),
(105, 'ghdbfgh', '32453', 'jhnm', 'gfjh', 5, 'gdhfg', 'fgbfd', 688, 'ghf'),
(106, '', '', '', '', 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_table`
--

CREATE TABLE `subcategory_table` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_brief` varchar(50) NOT NULL,
  `subcategory_gst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory_table`
--

INSERT INTO `subcategory_table` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_brief`, `subcategory_gst`) VALUES
(11, 'TV', 1, 'like samsung,song etc', 5),
(12, 'Mobiles', 1, 'like one plus,redmi,etc', 6),
(13, 'Shoes', 2, 'like sneakers,etc', 4),
(14, 'Sandles', 2, 'like wedges,flats,etc', 2),
(15, 'Sarees', 3, 'like kanchi,uppada,etc', 5),
(16, 'Tops', 3, 'like short tops,kurthis,etc', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `bill_details_table_ibfk_1` (`bill_id`),
  ADD KEY `bill_details_table_ibfk_2` (`item_id`);

--
-- Indexes for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `bill_table_ibfk_1` (`buyer_id`);

--
-- Indexes for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_table_ibfk_1` (`subcategory_id`),
  ADD KEY `item_table_ibfk_2` (`seller_id`);

--
-- Indexes for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `subcategory_table_ibfk_1` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  MODIFY `bill_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `bill_table`
--
ALTER TABLE `bill_table`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  MODIFY `buyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD CONSTRAINT `bill_details_table_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill_table` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_details_table_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item_table` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD CONSTRAINT `bill_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_signup_table` (`buyer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory_table` (`subcategory_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_table_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_signup_table` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD CONSTRAINT `subcategory_table_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
