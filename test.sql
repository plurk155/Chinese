-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 06:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

CREATE TABLE `foodorder` (
  `or_id` int(11) NOT NULL,
  `u_id` int(10) UNSIGNED NOT NULL,
  `total_price` int(11) NOT NULL,
  `promo_id` int(10) UNSIGNED NOT NULL,
  `or_date` datetime NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`or_id`, `u_id`, `total_price`, `promo_id`, `or_date`, `status_id`) VALUES
(9, 5, 60, 0, '2024-11-11 09:44:16', 3),
(10, 6, 60, 0, '2024-11-11 11:34:24', 3);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `log_username` varchar(50) NOT NULL,
  `log_password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `log_username`, `log_password`, `role_id`) VALUES
(4, 'Mr.pp', '$2b$10$vnoX7K3iifkvFEGGjVTOEet6Ae3tkAd.8ZbZ4vGtP5UdLtdypFd1W', 2),
(5, 'gg', '$2b$10$/8loqARM3O7jCnmOTjg1wOi24NbOYTzfoexCcecpfJ/HySCjVnUEK', 2),
(6, 'user1', '$2b$10$lPwV8WCDntF52ArTFgq4GOXzLO3gZEirKPJzHu6AkN11Elcf0UNM2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `ori_id` int(11) NOT NULL,
  `or_id` int(11) UNSIGNED NOT NULL,
  `pro_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `ori_detail` text DEFAULT NULL,
  `ori_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`ori_id`, `or_id`, `pro_id`, `quantity`, `price`, `ori_detail`, `ori_quantity`) VALUES
(3, 6, 11, 0, 0, 'ครีม', 1),
(4, 6, 9, 0, 0, '', 1),
(5, 6, 8, 0, 0, '', 1),
(6, 7, 2, 0, 0, '', 1),
(7, 8, 6, 0, 0, '', 1),
(8, 9, 11, 0, 0, 'ครีม', 1),
(9, 10, 11, 0, 0, 'หมูแดง', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_img` varchar(255) NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pt_id` int(11) NOT NULL,
  `pro_date` datetime NOT NULL,
  `pro_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_img`, `pro_price`, `pt_id`, `pro_date`, `pro_description`) VALUES
(2, 'มาโปโทฟู', '1731046547375.jpg', 180, 1, '2024-11-08 13:15:47', 'เต้าหู้ปรุงในน้ำซอสพริกหมาล่า มีความมันและสีแดงเข้มจากส่วนผสมของโต้วป้าน (เครื่องปรุงที่ทำจากถั่วปากอ้าหมักดองกับพริก) เต้าซี่ (ถั่วดำหมักดอง) รสเผ็ดชาของพริกและพริกไทยเสฉวน พร้อมกับเนื้อสับ'),
(3, 'หมูทอดซอสเปรี้ยวหวาน', '1731050507123.jpg', 150, 1, '2024-11-08 14:21:47', ''),
(4, 'ปูผัดพริก', '1731050541962.jpg', 140, 1, '2024-11-08 14:22:21', ''),
(5, 'เป็ดปักกิ่ง', '1731050588560.jpg', 300, 1, '2024-11-08 14:23:08', ''),
(6, 'ยำแมงกะพรุนน้ำมันงา', '1731050633328.jpg', 150, 2, '2024-11-08 14:23:53', ''),
(7, 'ไก่ผัดถั่วลิสง', '1731050682408.jpg', 140, 1, '2024-11-08 14:24:42', ''),
(8, 'เสี่ยวหลงเปา', '1731050733440.jpg', 150, 2, '2024-11-08 14:25:33', ''),
(9, 'น้ำเก๊กฮวย', '1731050833408.jpg', 60, 3, '2024-11-08 14:27:13', ''),
(10, 'ชาอู่หลง', '1731050933361.jpg', 70, 3, '2024-11-08 14:28:53', ''),
(11, 'ซาลาเปา(ระบุใส้ ครีม,หมูสับเห็ดหอม,หมูแดง)', '1731051048208.jpg', 60, 2, '2024-11-08 14:30:48', ''),
(12, 'โบ๊กเกี้ย', '1731051237480.jpg', 80, 4, '2024-11-08 14:33:57', ''),
(13, ' หอยจ้อ', '1731299742943.jpg', 150, 2, '2024-11-11 11:35:42', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pt_id` int(11) NOT NULL,
  `pt_name_eng` varchar(255) NOT NULL,
  `pt_name_th` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`pt_id`, `pt_name_eng`, `pt_name_th`) VALUES
(1, 'Main dish', 'จานหลัก'),
(2, 'Appetizer', 'อาหารเรียกน้ำย่อย'),
(3, 'Drink', 'เครื่องดื่ม'),
(4, 'Dessert', 'ของหวาน');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promo_id` int(11) NOT NULL,
  `promo_name` varchar(100) NOT NULL,
  `promo_discount` int(11) NOT NULL,
  `promo_minimum` int(11) NOT NULL,
  `promo_maximum` int(11) NOT NULL,
  `promo_type` tinyint(4) NOT NULL,
  `promo_date_start` timestamp NOT NULL DEFAULT current_timestamp(),
  `promo_date_end` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Pending'),
(2, 'Order confirm'),
(3, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `titlename`
--

CREATE TABLE `titlename` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titlename`
--

INSERT INTO `titlename` (`title_id`, `title_name`) VALUES
(1, 'Mr.'),
(2, 'Ms.'),
(3, 'Mrs.'),
(4, 'Dr.'),
(5, 'Prof.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `log_id` int(10) UNSIGNED NOT NULL,
  `title_id` int(10) UNSIGNED NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_surname` varchar(50) NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `u_tel` varchar(15) DEFAULT NULL,
  `u_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_point` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `log_id`, `title_id`, `u_name`, `u_surname`, `gender_id`, `u_tel`, `u_date`, `u_point`, `role_id`) VALUES
(4, 4, 1, 'pp', 'pp', 1, '12345', '2024-11-07 09:18:25', NULL, 1),
(5, 5, 1, 'gg', 'gg', 1, '1234567', '2024-11-08 05:58:22', NULL, 2),
(6, 6, 1, 'Math', 'Thing', 1, '12345', '2024-11-11 04:33:29', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodorder`
--
ALTER TABLE `foodorder`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`ori_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `titlename`
--
ALTER TABLE `titlename`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foodorder`
--
ALTER TABLE `foodorder`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `ori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titlename`
--
ALTER TABLE `titlename`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
