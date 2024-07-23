-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 10:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `quantity`, `price`, `notes`) VALUES
(1, 2, 6, 3, 0, 'jbfcyxgqewfygfyfenxurgynxkeqnhwiuxuewi'),
(3, 3, 7, 3, 3, 'jbfcyxgqewfygfyfenxurgynxkeqnhwiuxuewi'),
(4, 4, 8, 4, 8, 'jbfcyxgqewfygfyfenxurgynxkeqnhwiuxuewi'),
(10, 5, 3, 3, 1296, 'jbfcyxgqewfygfyfenxurgynxkeqnhwiuxuewi'),
(21, 3, 9, 2, 60, 'jbfcyxgqewfygfyfenxurgynxkeqnhwiuxuewi'),
(24, 2, 5, 3, 1296, 'phone me on 01314125612354');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `category`, `price`) VALUES
(2, 'jacket', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 323),
(3, 'skirt', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 432),
(5, 'pink blouse', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 432),
(6, 'blazer', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 432),
(7, 'pantalon', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 1),
(8, 'short', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 40),
(9, 'xxl blouse', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 30),
(11, 'green short', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 50),
(12, 'suit', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 50),
(13, 'coat', 'hbuwgqcnygeyfwqntdefwtqdxew', 'vsgxcdycgwqy', 440);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`) VALUES
(1, 1, 3, 'hbjvdnwfycgwqygfyfyuwuf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `address`, `role`, `token`) VALUES
(1, 'mazan ahmed', 'mazen@gamil.com', 1111111111, '$2b$10$/84wzHGf4UBqfjGEc7jasef7paz7DAOYcz1cW.IZgwjXVT9h.qzOy', 'bvhdsag yvudsfgyauewfgbuyrn', 1, 'e86c0210453c916d59b7e453d724cab1'),
(2, '3made ahmed', '3made@gamil.com', 1111111111, '$2b$10$xcEfOnpUGQzlXo6OJiudWuKs.OKTMn7zpHXOomnIRF50wNPqVHcl.', 'bvhdsag yvudsfgyauewfgbuyrn', 0, 'cc66869e6d6c7ed382719b742c2c925a'),
(3, 'alaa ahmed', 'alaa@gamil.com', 1111111111, '$2b$10$vSBsGHE.5E5Gi5i7YYjgWOCzKFkCjwRjnw/7S6VBDHwMiNtFod0uK', 'bvhdsag yvudsfgyauewfgbuyrn', 0, 'b53e7a58e6338fe3dfd03f057a3b934a'),
(4, 'radwa mohamef', 'radwa@gamil.com', 1111111111, '$2b$10$IBJP9DDMCCsqLFi0.ZElXOf9/NL89Vu/SGWkqkyBt5qARHUX6OWRK', 'bvhdsag yvudsfgyauewfgbuyrn', 0, 'd145b517f32f6ad50d39188089ca8e8d'),
(5, 'shaimma mohamef', 'shaimma@gamil.com', 1111111111, '$2b$10$M26cGrS8ZBrmDaxiEEZMAuuUUvGcXD.D6ywy6ObNgX.nG7DlRobsi', 'bvhdsag yvudsfgyauewfgbuyrn', 0, '485fc108ad96334c570d6ed9a33251c7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_constr_id` (`user_id`),
  ADD KEY `product_constr_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userconstrid` (`user_id`),
  ADD KEY `productconstrid` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `product_constr_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_constr_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `productconstrid` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userconstrid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
