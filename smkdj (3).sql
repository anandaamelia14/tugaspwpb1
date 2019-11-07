-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 01:38 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkdj`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_create`) VALUES
(13, 'Ananda', 'nanda@gmail.com', 'default.jpg', '$2y$10$yShAoQZ5FcGbmJGFZTmzy.vKEdBfGEcW3GxRRnlJ49s3LmrwLHfpC', 2, 1, 1569287695),
(14, 'Ananda', 'nanda123@gmail.com', 'IMG-20181012-WA0008.jpg', '$2y$10$mJVf.RtAEXOEacxpqRTq3OfHtgmkAB.oVEPW5Ltn83CK0347PYPe6', 1, 1, 1569287764),
(29, 'putri nanda', 'pu89307@gmail.com', 'IMG-20181105-WA00071.jpg', '$2y$10$6SVZo9V4Jj56ZOsqVywc3eY8QboPfi6WXyX2x0p5GyJLAGIlxN.z.', 2, 1, 1571881578),
(31, 'putriananda', 'putriananda123@gmail.com', 'default.jpg', '$2y$10$wrGd1/MjSO/ZiSl.zZwDdeKeTogcgeM1FGN5xHbvVoxaVxjL9WR3y', 2, 1, 1571886235),
(33, 'Ananda', 'putrianandaamelia@gmail.com', 'default.jpg', '$2y$10$s45exYcti7ZqCPb2glyTFeHhP8cDbODABitxVypB4bZ9b/tlEc4NS', 2, 1, 1572485845);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(6, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(2, 'pu89307@gmail.com', 'Ly0kvzwmAkqsHbmPeioINbYvM8y11EkjsRaHDk6NmyE=', 1571881661),
(5, 'pu89307@gmail.com', '0g5tlcjmbobUP6wXm8yckI1L12vxfaiEjacPq+LxZF0=', 1571882777),
(6, 'putriananda@gmail.com', 'SNZt74h2dwbLE01ZPQ/QdbQm/SdAUH1pzwobuTbD+7Y=', 1571885163),
(7, 'putriananda@gmail.com', 'Q7rUAMDNsU7my5zhsxdWr3Tq0TwwLHKm41TGNZk3tq8=', 1571885964),
(8, 'putriananda@gmail.com', 'nCwGH506SaECfnHkO1EVo8G5I2EL07OaqNsayXkdrNo=', 1571885969),
(9, 'putriananda@gmail.com', '5ANxwybyuZbEXm2lZ21bc5RtQdoRCjaNSYhJYg88uyU=', 1571886203),
(10, 'putriananda123@gmail.com', 'w388Qy2HFgYGuOKPrIr85TZovVssk6A78TdhxwosZ8Q=', 1571886235),
(11, 'amelia@gmail.com', 'nZXCDA/jG6WOEWyl7JobnJMrubE5mFjBRIUs9/LXoH4=', 1571886330),
(12, 'putrianandaamelia@gmail.com', '8HZelAaczG+7Hf9HbVE1j9aESNfkyDUhbFKIDTvr3sA=', 1572485845),
(13, 'nanda1234@gmail.com', 'uplbWO8/zvt4p08VJoAqNoUfI4XC493fZ0zeATtOtcE=', 1572485912),
(14, 'putriananda@gmail.com', '15wj8QdKUwjBg1QcExyrahSBzhInflWTPL1r5bifyCU=', 1572918693),
(15, 'nanda123@gmail.com', 'MdiMFQER+XTmEv++D7q8JbM1HK+MTpoMKrIjY/9sRlE=', 1573085277);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
