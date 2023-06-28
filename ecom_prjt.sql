-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 06:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_prjt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passsword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `passsword`) VALUES
(1, 'yash', 'yash');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `image`, `name`, `price`, `qty`, `total`) VALUES
(7, 'Shop-cara129196.jpg', 'Shirt (Blue)', 200, 1, 200),
(8, 'Shop-cara58412.jpg', 'Multi-coloured Shirt', 800, 1, 800);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_image`) VALUES
(1, 'shirts', 'Shop-cara748518.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `u_name` text NOT NULL,
  `order_id` int(100) NOT NULL,
  `order_price` text NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `trx_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `u_name`, `order_id`, `order_price`, `order_date`, `status`, `address`, `trx_id`) VALUES
(1, 'Yash_garg', 32873189, '400', '2023-06-28', 'on_delivery', 'DSEU G/F Sec-9 Dwarka', 'X323h292KID');

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `id` int(11) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp_expiry`
--

INSERT INTO `otp_expiry` (`id`, `otp`, `is_expired`, `create_at`) VALUES
(44, '731103', 1, '2023-06-28 10:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `transaction_id` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(20) NOT NULL,
  `p_image` text NOT NULL,
  `p_price` int(10) NOT NULL,
  `p_disc` text NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_name`, `p_image`, `p_price`, `p_disc`, `category`) VALUES
(1, 'Shirt (Blue)', 'Shop-cara129196.jpg', 200, 'Floral Shirt With Blue Base', 'shirts'),
(3, 'Multi-coloured Shirt', 'Shop-cara58412.jpg', 800, 'Blue And Reddish-Brown Denim Shirt', 'shirts');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passsword` varchar(30) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `passsword`, `email`) VALUES
(1, 'Yash Garg', 'YASH_garg', 'YASH@123#', 'yashgarg1970@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_ship`
--

CREATE TABLE `user_ship` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lstname` varchar(20) NOT NULL,
  `addr` text NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `statee` varchar(20) NOT NULL,
  `noo` int(20) NOT NULL,
  `altno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_ship`
--

INSERT INTO `user_ship` (`id`, `username`, `fname`, `lstname`, `addr`, `zip`, `city`, `statee`, `noo`, `altno`) VALUES
(1, 'Yash_garg', 'yash', 'yash', 'yash', 'yash', 'yash', 'yash', 23982382, 2147483647),
(2, 'Yash_garg', 'Yash', 'Garg', 'c-7a bharat vihar', '110059', 'Delhi', 'Delhi', 2147483647, 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ship`
--
ALTER TABLE `user_ship`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_ship`
--
ALTER TABLE `user_ship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
