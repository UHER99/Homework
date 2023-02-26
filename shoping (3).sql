-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 09:01 AM
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
-- Database: `shoping`
--

-- --------------------------------------------------------

--
-- Table structure for table `sp_product`
--

CREATE TABLE `sp_product` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_product`
--

INSERT INTO `sp_product` (`id`, `name`, `img`, `price`, `description`, `type`) VALUES
(1, 'Blak soccer boots', '1665053624881.jpg', 2500000, 'Blak soccer boots Cheap Soccer Shoe design Breather Cleats Professional Shoes Football Soccer Boots Men oem sports shoe', 'shoe'),
(2, 'Chelsea Home Vapor Match Shirt 2022-23', '1665054223129.jpg', 600000, 'Chelsea Home Vapor Match Shirt 2022-23 This product is made with 100% recycled polyester fibres.', 'shirt'),
(3, 'Shoe X-football CF', '1665054170739.jpg', 2000000, 'Shoe X-football CF Cheap Soccer Shoe design Breather Cleats Professional Shoes Football Soccer Boots Men oem sports shoe', 'shoe'),
(4, 'Shoe N-football CF', '1665054268615.jpg', 1500000, 'Shoe N-football CF Cheap Soccer Shoe design Breather Cleats Professional Shoes Football Soccer Boots Men oem sports shoe', 'shoe'),
(5, 'Chelsea Cup Away Vapor Match Shirt 2022-23', '1665054053194.jpg', 500000, 'Chelsea Cup Away Vapor Match Shirt 2022-23 This product is made with 100% recycled polyester fibres.', 'shirt'),
(6, 'Chelsea Third Stadium Shirt 2022-23', '1665054087145.jpg', 500000, 'Chelsea Third Stadium Shirt 2022-23 This product is made with 100% recycled polyester fibres.', 'shirt'),
(7, 'Low price football', '1665054147390.jpg', 1900000, 'Low price football Cheap Soccer Shoe design Breather Cleats Professional Shoes Football Soccer Boots Men oem sports shoe', 'shoe'),
(8, 'Nyntra-football', '1665054112168.jpg', 2400000, 'Nyntra-football Cheap Soccer Shoe design Breather Cleats Professional Shoes Football Soccer Boots Men oem sports shoe', 'shoe'),
(9, 'Mens-football', '1665054196017.jpg', 1800000, 'Mens-football Cheap Soccer Shoe design Breather Cleats Professional Shoes Football Soccer Boots Men oem sports shoe', 'shoe'),
(10, 'Manchester City Home Jersey 2022/23', '1665054291432.jpg', 600000, 'Manchester City Home Jersey 2022/23 This product is made with 100% recycled polyester fibres.', 'shirt'),
(11, 'Manchester City Away Jersey 2022/23\r\n', '1665054245093.jpg', 500000, 'Manchester City Away Jersey 2022/23 This product is made with 100% recycled polyester fibres.', 'shirt');

-- --------------------------------------------------------

--
-- Table structure for table `sp_transaction`
--

CREATE TABLE `sp_transaction` (
  `id` int(11) NOT NULL,
  `transid` text DEFAULT NULL,
  `orderlist` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `netamount` int(11) DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `mil` bigint(20) DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_transaction`
--

INSERT INTO `sp_transaction` (`id`, `transid`, `orderlist`, `amount`, `shipping`, `vat`, `netamount`, `operation`, `mil`, `updated_at`) VALUES
(1, '1665072314485', '[{\"index\":\"1\",\"id\":\"10\",\"name\":\"Manchester City Home Jersey 2022\\/23\",\"price\":\"600000\",\"img\":\"1665054291432.jpg\",\"count\":\"1\"}]', 600000, 600060, 42004, 642064, 'PENDING', 1665072314000, '2022-10-06 11:05:14pm'),
(2, '1665072403551', '[{\"index\":\"0\",\"id\":\"11\",\"name\":\"Manchester City Away Jersey 2022\\/23\",\"price\":\"500000\",\"img\":\"1665054245093.jpg\",\"count\":\"1\"}]', 500000, 500060, 35004, 535064, 'PENDING', 1665072403000, '2022-10-06 11:06:43pm'),
(3, '1665218523931', '[{\"index\":\"0\",\"id\":\"11\",\"name\":\"Manchester City Away Jersey 2022\\/23\",\"price\":\"500000\",\"img\":\"1665054245093.jpg\",\"count\":\"2\"}]', 1000000, 1000060, 70004, 1070064, 'PENDING', 1665218523000, '2022-10-08 03:42:03pm'),
(4, '1665372226639', '[{\"index\":\"0\",\"id\":\"11\",\"name\":\"Manchester City Away Jersey 2022\\/23\",\"price\":\"2400000\",\"img\":\"1665054245093.jpg\",\"count\":\"1\"}]', 2400000, 2400060, 168004, 2568064, 'PENDING', 1665372226000, '2022-10-10 10:23:46am'),
(5, '1665446471717', '[{\"index\":\"0\",\"id\":\"11\",\"name\":\"Manchester City Away Jersey 2022\\/23\",\"price\":\"500000\",\"img\":\"1665054245093.jpg\",\"count\":\"3\"},{\"index\":\"1\",\"id\":\"10\",\"name\":\"Manchester City Home Jersey 2022\\/23\",\"price\":\"600000\",\"img\":\"1665054291432.jpg\",\"count\":\"3\"},{\"index\":\"2\",\"id\":\"9\",\"name\":\"Mens-football\",\"price\":\"1800000\",\"img\":\"1665054196017.jpg\",\"count\":\"3\"}]', 8700000, 8700060, 609004, 9309064, 'PENDING', 1665446471000, '2022-10-11 07:01:11am'),
(6, '1665553671039', '[{\"index\":\"0\",\"id\":\"11\",\"name\":\"Manchester City Away Jersey 2022\\/23\\r\\n\",\"price\":\"500000\",\"img\":\"1665054245093.jpg\",\"count\":\"1\"}]', 500000, 500060, 35004, 535064, 'PENDING', 1665553671000, '2022-10-12 12:47:51pm'),
(7, '1665568482745', '[{\"index\":\"1\",\"id\":\"10\",\"name\":\"Manchester City Home Jersey 2022\\/23\",\"price\":\"600000\",\"img\":\"1665054291432.jpg\",\"count\":\"2\"}]', 1200000, 1200060, 84004, 1284064, 'PENDING', 1665568482000, '2022-10-12 04:54:42pm'),
(8, '1668782142868', '[{\"index\":\"2\",\"id\":\"9\",\"name\":\"Mens-football\",\"price\":\"1800000\",\"img\":\"1665054196017.jpg\",\"count\":\"2\"}]', 3600000, 3600060, 252004, 3852064, 'PENDING', 1668782142000, '2022-11-18 09:35:42pm'),
(9, '1671266318945', '[{\"index\":\"3\",\"id\":\"8\",\"name\":\"Nyntra-football\",\"price\":\"2400000\",\"img\":\"1665054112168.jpg\",\"count\":\"3\"}]', 7200000, 7200060, 504004, 7704064, 'PENDING', 1671266318000, '2022-12-17 03:38:38pm'),
(10, '1677299290011', '[{\"index\":\"0\",\"id\":\"11\",\"name\":\"Manchester City Away Jersey 2022\\/23\\r\\n\",\"price\":\"500000\",\"img\":\"1665054245093.jpg\",\"count\":\"2\"}]', 1000000, 1000060, 70004, 1070064, 'PENDING', 1677299290000, '2023-02-25 11:28:10am'),
(11, '1677299612978', '[{\"index\":\"4\",\"id\":\"7\",\"name\":\"Low price football\",\"price\":\"1900000\",\"img\":\"1665054147390.jpg\",\"count\":\"1\"},{\"index\":\"2\",\"id\":\"9\",\"name\":\"Mens-football\",\"price\":\"1800000\",\"img\":\"1665054196017.jpg\",\"count\":\"1\"},{\"index\":\"1\",\"id\":\"10\",\"name\":\"Manchester City Home Jersey 2022\\/23\",\"price\":\"600000\",\"img\":\"1665054291432.jpg\",\"count\":\"2\"}]', 4900000, 4900060, 343004, 5243064, 'PENDING', 1677299612000, '2023-02-25 11:33:32am'),
(12, '1677392585935', '[{\"index\":\"3\",\"id\":\"8\",\"name\":\"Nyntra-football\",\"price\":\"2400000\",\"img\":\"1665054112168.jpg\",\"count\":\"2\"}]', 4800000, 4800060, 336004, 5136064, 'PENDING', 1677392585000, '2023-02-26 01:23:05pm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `userlevel` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firstname`, `lastname`, `userlevel`) VALUES
(1, 'nou', '123', 'her', 'vue', 'm'),
(2, 'nou', '123', 'efe', 'thg', 'm'),
(3, 'tom2', '123', 'efe', 'thg', 'm'),
(4, 'jason', '123', 'her', 'ha', 'm'),
(5, 'nou', '123', 'efe', 'thg', 'm'),
(6, 'jason', '123', 'her', 'ha', 'm'),
(7, 'sss', '123', 'jason', 'vue', 'm'),
(8, 'jason', '321', 'her', 'ha', 'm'),
(9, 'jason', '321', 'her', 'ha', 'm'),
(10, 'mrb', '789', 'koob', 'psv', 'm'),
(11, 'mrb', '654', 'jason', 'vue', 'm'),
(12, 'tom', '22ac3c5a5bf0b520d281c122d1490650', 'koob', 'psv', 'm'),
(13, 'hhh', '250cf8b51c773f3f8dc8b4be867a9a02', 'jason', 'vue', 'm'),
(14, 'tom', '250cf8b51c773f3f8dc8b4be867a9a02', 'koob', 'psv', 'm'),
(15, 'tom', '250cf8b51c773f3f8dc8b4be867a9a02', 'koob', 'vue', 'm'),
(16, 'fff', '140f6969d5213fd0ece03148e62e461e', 'wef', 'gw', 'm'),
(17, 'gggg', '202cb962ac59075b964b07152d234b70', 'wef', 'gw', 'm'),
(18, 'hhhhh', 'bcbe3365e6ac95ea2c0343a2395834dd', 'efe', 'thg', 'm'),
(19, 'vvvv', '550a141f12de6341fba65b0ad0433500', 'ttt', 'erg', 'm'),
(20, 'qqq', '550a141f12de6341fba65b0ad0433500', 'koob', 'vue', 'm'),
(21, 'ok', '698d51a19d8a121ce581499d7b701668', 'ttt', 'erg', 'a'),
(22, 'poo', '698d51a19d8a121ce581499d7b701668', 'ttt', 'erg', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_product`
--
ALTER TABLE `sp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_product`
--
ALTER TABLE `sp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
