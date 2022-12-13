-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 03:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltw03_kt2_de2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loai_phim`
--

CREATE TABLE `tbl_loai_phim` (
  `loai_phim_id` int(11) NOT NULL,
  `ten_loai_phim` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_loai_phim`
--

INSERT INTO `tbl_loai_phim` (`loai_phim_id`, `ten_loai_phim`) VALUES
(1, 'Hành động'),
(2, 'Tình cảm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phim`
--

CREATE TABLE `tbl_phim` (
  `phim_id` int(11) NOT NULL,
  `ten_phim` varchar(200) NOT NULL,
  `loai_phim_id` int(11) NOT NULL,
  `hinh_anh` varchar(200) NOT NULL,
  `imdb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_phim`
--

INSERT INTO `tbl_phim` (`phim_id`, `ten_phim`, `loai_phim_id`, `hinh_anh`, `imdb`) VALUES
(1, 'Fast & Furious 7', 1, 'fast7.jpg', 7),
(2, 'Crash landing on you', 2, 'crashlanding.jpg', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_loai_phim`
--
ALTER TABLE `tbl_loai_phim`
  ADD PRIMARY KEY (`loai_phim_id`);

--
-- Indexes for table `tbl_phim`
--
ALTER TABLE `tbl_phim`
  ADD PRIMARY KEY (`phim_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_loai_phim`
--
ALTER TABLE `tbl_loai_phim`
  MODIFY `loai_phim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_phim`
--
ALTER TABLE `tbl_phim`
  MODIFY `phim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
