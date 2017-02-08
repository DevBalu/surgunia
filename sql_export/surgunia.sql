-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2017 at 02:41 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surgunia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('username', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bg_href` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `bg_href`) VALUES
(1, 'sigma', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg'),
(3, 'internationals', '/surgunia/folder_images/hcrbfsjzmms-annie-spratt.jpg'),
(4, 'incognito', '/surgunia/folder_images/Lioness-Howl-Close-Up-4K-Wallpaper_Jrn63eg.jpg'),
(7, 'vasea', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg'),
(8, 'neamneam', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg'),
(9, 'Trahtemburg', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg'),
(10, 'ga ga ga ', 'http://localhost/surgunia/images/above-adventure-aerial-air.jpg'),
(11, 'hrum hrum', 'http://localhost/surgunia/images/eiffel-tower-wallpaper-18_fRZLW4V.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_href` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `folder_id`, `name`, `img_href`) VALUES
(3, 1, 'old people', '/surgunia/folder_images/Lioness-Howl-Close-Up-4K-Wallpaper_Jrn63eg.jpg'),
(4, 1, 'fast food', '/surgunia/folder_images/Lioness-Howl-Close-Up-4K-Wallpaper_Jrn63eg.jpg'),
(5, 1, 'sdgsdgfsd', ''),
(6, 1, 'sdgsdgfsd', ''),
(7, 3, 'sdgsdgfsd', 'http://localhost/surgunia/images/hcrbfsjzmms-annie-spratt.jpg'),
(8, 3, 'sdgsdgfsd', 'http://localhost/surgunia/images/hcrbfsjzmms-annie-spratt.jpg'),
(9, 3, 'sdgsdgfsd', 'http://localhost/surgunia/images/hcrbfsjzmms-annie-spratt.jpg'),
(10, 1, 'dfgdfgdfg', 'http://localhost/surgunia/images/_dst3yrbkwe-scott-webb.jpg'),
(11, 1, 'dfgdfgdfg', 'http://localhost/surgunia/images/_dst3yrbkwe-scott-webb.jpg'),
(12, 1, 'dsfsd', 'http://localhost/surgunia/images/hcrbfsjzmms-annie-spratt.jpg'),
(13, 1, 'dsafsdfsd', 'http://localhost/surgunia/images/_dst3yrbkwe-scott-webb.jpg'),
(14, 10, 'asdfas', 'http://localhost/surgunia/images/above-adventure-aerial-air.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
