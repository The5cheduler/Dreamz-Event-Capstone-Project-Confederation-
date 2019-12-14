-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 05:47 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamzeventsdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1),
(166, 84, '::1', 30, 1),
(167, 85, '::1', 30, 1),
(168, 86, '::1', 30, 1),
(169, 84, '::1', 31, 1),
(170, 87, '::1', 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Halls'),
(2, 'Caterer'),
(3, 'Decorator'),
(4, 'Musicians'),
(5, 'Dancers'),
(6, 'Planners');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(6, 'pkpatel9414@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 27, 'hasdkjsahdkj', 'abhullar@gmail.com', '1450 nakina drive', 'thunder bay', 'ontario', 558101, 'hsajkdhasjkdh', '12345678912', '12/23', 2, 17500, 451),
(2, 27, 'Aman Bhullar', 'abhullar@gmail.com', '9330 W Skyline Pkwy', 'duluth', 'MINNESOTA', 558105, 'A bhullar', '12345678901124', '12/23', 3, 25000, 145),
(3, 26, 'Parth Patel', 'parthpatel9414@gmail.com', '9330 W Skyline Pkwy', 'duluth', 'MINNESOTA', 558105, 'abc', '000000000000000000', '12/22', 1, 10000, 123),
(4, 28, 'PARTHKUMAR', 'pkpatel9414@gmail.com', '177, LIMBRICK STREET', 'THUNDER BAY', 'Ontario', 123456, 'mancnc', '0000000000000000', '12/22', 2, 15000, 123),
(5, 29, 'Nick Kolobutin', 'nkolobut@confederationcollege.ca', '2400 Nipigon Road', 'Thunder Bay', 'ONtario', 123456, 'Nicholas Kolobutin', '4242 4242 4242 4242', '01/23', 3, 22500, 123),
(6, 32, 'Nick Kolobutin', 'nick.kolobutin@confederationcollege.ca', '1450 nakina drive', 'Thunder Bay', 'Ontario', 19104, 'Nick Kolobutin', '4242 4242 4242 4242', '01/23', 2, 17500, 123),
(7, 33, 'Parth Patel', 'ppatel13@confederationcollege.ca', '177, LIMBRICK STREET', 'Thunder Bay', 'Ontario', 123456, 'pk patel', '4242 4242 4242 4242', '12/22', 1, 10000, 456),
(8, 33, 'Parth Patel', 'ppatel13@confederationcollege.ca', '177, LIMBRICK STREET', 'Thunder Bay', 'Ontario', 789561, 'parthkumar patel', '4242 4242 4242 4242', '12/22', 2, 20000, 456);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(91, 1, 89, 1, 7500),
(92, 1, 85, 1, 10000),
(93, 2, 85, 1, 10000),
(94, 2, 84, 1, 10000),
(95, 2, 86, 1, 5000),
(96, 3, 85, 1, 10000),
(97, 4, 85, 1, 10000),
(98, 4, 86, 1, 5000),
(99, 5, 88, 1, 5000),
(100, 5, 87, 1, 7500),
(101, 5, 85, 1, 10000),
(102, 6, 84, 1, 10000),
(103, 6, 89, 1, 7500),
(104, 7, 84, 1, 10000),
(105, 8, 84, 1, 10000),
(106, 8, 85, 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(84, 1, 'Corporate Hall', 10000, 'Great Place for corporate and business events\r\ngreat ambience\r\nprize on point\r\nsize : 1000 sq.ft x 1000 sqft', '1572212407_corporate-hall.jpg', 'Corporate Hall, Hall'),
(85, 1, 'Wedding Hall', 10000, 'Great Place for weddings and personal events\r\ngreat ambience\r\nprize on point\r\nsize : 1000 sq.ft x 1000 sqft', '1572212532_wedding-hall.jpg', 'Wedding Hall, Hall'),
(86, 2, 'Regular Caterar', 5000, 'all in one food package at budget prize', '1572212682_regular-catering.jpg', 'caterer, regular caterer'),
(87, 2, 'Gold Caterer', 7500, 'premium catering service with all food safety standards', '1572212817_gold-catering.jpg', 'caterer, Gold caterer'),
(88, 4, 'Music band', 5000, 'on price range music band to perform at your event', '1572212923_musician.jpg', 'Music, band, Singers'),
(89, 4, 'live concert', 7500, 'live singing performance at your event.', '1572212998_musician1.jpg', 'Music, band, Singers');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(26, 'Parth', 'Patel', 'parthpatel9414@gmail.com', '123456789', '1234567980', '177, LIMBRICK STREET', 'kaka'),
(27, 'Aman', 'Bhullar', 'abhullar@gmail.com', '123456789', '7845985741', '9330 W Skyline Pkwy', 'Tbay'),
(28, 'PARTHKUMAR', 'PATEL', 'pkpatel9414@gmail.com', '123456789', '8073565945', '177, LIMBRICK STREET', 'Thunder Bay'),
(29, 'Nick', 'Kolobutin', 'nkolobut@confederationcollege.ca', 'TESTING123', '1231231234', '2400 Nipigon Road', 'Thunder Bay'),
(30, 'yash', 'Shah', 'yshah@gmail.com', '123456789', '8073565945', '1450 nakina drive', 'Tbay'),
(31, 'yash', 'shah', 'yashshah@gmail.com', '123456789', '8073565945', '177, limbrick st', 'Thunder Bay'),
(32, 'Nick', 'Kolobutin', 'nick.kolobutin@confederationcollege.ca', 'C0nfederation1', '8074756110', '1450 nakina drive', 'Thunder Bay'),
(33, 'Parth', 'Patel', 'ppatel13@confederationcollege.ca', '123456789', '3069303886', '177, LIMBRICK STREET', 'Thunder Bay');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(26, 'Parth', 'Patel', 'parthpatel9414@gmail.com', '123456789', '1234567980', '177, LIMBRICK STREET', 'kaka'),
(27, 'Aman', 'Bhullar', 'abhullar@gmail.com', '123456789', '7845985741', '9330 W Skyline Pkwy', 'Tbay'),
(28, 'PARTHKUMAR', 'PATEL', 'pkpatel9414@gmail.com', '123456789', '8073565945', '177, LIMBRICK STREET', 'Thunder Bay'),
(29, 'Nick', 'Kolobutin', 'nkolobut@confederationcollege.ca', 'TESTING123', '1231231234', '2400 Nipigon Road', 'Thunder Bay'),
(30, 'yash', 'Shah', 'yshah@gmail.com', '123456789', '8073565945', '1450 nakina drive', 'Tbay'),
(31, 'yash', 'shah', 'yashshah@gmail.com', '123456789', '8073565945', '177, limbrick st', 'Thunder Bay'),
(32, 'Nick', 'Kolobutin', 'nick.kolobutin@confederationcollege.ca', 'C0nfederation1', '8074756110', '1450 nakina drive', 'Thunder Bay'),
(33, 'Parth', 'Patel', 'ppatel13@confederationcollege.ca', '123456789', '3069303886', '177, LIMBRICK STREET', 'Thunder Bay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
