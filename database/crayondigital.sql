-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 11:22 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` bigint(50) NOT NULL,
  `c_author_id` bigint(11) NOT NULL,
  `c_post_id` bigint(11) NOT NULL,
  `c_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `c_edited` int(11) NOT NULL DEFAULT '0',
  `c_time_edited` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `c_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `c_author_id`, `c_post_id`, `c_content`, `c_edited`, `c_time_edited`, `c_time`) VALUES
(1557458665, -583492834, 1554064435, 'booma', 0, '', 1553675168),
(1557786332, -1243637936, 1554064435, 'super', 0, '', 1553674689);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` bigint(11) NOT NULL,
  `uf_one` bigint(11) NOT NULL,
  `uf_two` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `uf_one`, `uf_two`) VALUES
(4, -1243637936, -227135624);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(11) NOT NULL,
  `liker` bigint(11) NOT NULL,
  `post_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `liker`, `post_id`) VALUES
(1, -1243637936, 1554064435),
(2, -583492834, 1554064435);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `m_id` bigint(11) NOT NULL,
  `message` varchar(1538) CHARACTER SET utf8mb4 NOT NULL,
  `m_from` bigint(11) NOT NULL,
  `m_to` bigint(11) NOT NULL,
  `m_time` int(11) NOT NULL,
  `m_seen` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mynotepad`
--

CREATE TABLE `mynotepad` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `note_title` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `note_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `note_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `n_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `notifyType_id` bigint(11) NOT NULL,
  `notifyType` varchar(100) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `n_id`, `from_id`, `for_id`, `notifyType_id`, `notifyType`, `seen`, `time`) VALUES
(5, 1875998453, -1243637936, -227135624, -1243637936, 'follow', 1, 1553674673),
(6, -1784864752, -1243637936, -227135624, -1243637936, 'star', 1, 1553674674),
(7, 1580928252, -1243637936, -227135624, 1554064435, 'like', 1, 1553674680),
(8, 1625700071, -1243637936, -227135624, 1554064435, 'comment', 1, 1553674689),
(9, -2019624996, -583492834, -227135624, 1554064435, 'like', 1, 1553675163),
(10, -2021595402, -583492834, -227135624, 1554064435, 'comment', 1, 1553675168);

-- --------------------------------------------------------

--
-- Table structure for table `r_star`
--

CREATE TABLE `r_star` (
  `id` bigint(11) NOT NULL,
  `u_id` bigint(11) NOT NULL,
  `p_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_star`
--

INSERT INTO `r_star` (`id`, `u_id`, `p_id`) VALUES
(2, -1243637936, -227135624);

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `user_saved_id` bigint(11) NOT NULL,
  `saved_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `main_id` int(11) NOT NULL,
  `id` bigint(50) NOT NULL,
  `Fullname` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Username` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Email` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Password` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `followers` int(100) NOT NULL DEFAULT '0',
  `Userphoto` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `user_cover_photo` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `school` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `work` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `work0` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `country` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `birthday` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `verify` int(11) NOT NULL,
  `website` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `bio` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `admin` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `gender` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `language` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `aSetup` int(11) NOT NULL DEFAULT '0',
  `online` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`main_id`, `id`, `Fullname`, `Username`, `Email`, `Password`, `followers`, `Userphoto`, `user_cover_photo`, `school`, `work`, `work0`, `country`, `birthday`, `verify`, `website`, `bio`, `admin`, `gender`, `login_attempts`, `language`, `aSetup`, `online`) VALUES
(12, -227135624, 'muki', 'muki', 'muki@f.om', '$2y$12$d.TzSGlBJoRgdTNcDyoPGu0KeFcEzz.1e13v3Xzak7s0vYmfx6KKa', 1, 'user-female.png', '', '', '', '', '', '', 0, '', '', '1', 'Female', 0, 'English', 0, 0),
(13, -1243637936, 'rama', 'rama', 'rama@g.com', '$2y$12$87Gpkt1rZuk81eMn/OlD3eM3s07bv/l0A.V0YPZfinuuNA0Dg9Sca', 0, 'user-male.png', '', '', '', '', '', '', 1, '', '', '', 'Male', 0, 'English', 0, 0),
(14, -583492834, 'booma', 'booma', 'booma@g.com', '$2y$12$TsWdJCLGBYA7zVDrM0SMPuyIwzV5.v14KLCZghruPckpRgGeB6l/i', 0, 'user-female.png', '', '', '', '', '', '', 0, '', '', '', 'Female', 0, 'English', 0, 0),
(15, -1531980686, 'dine', 'dine', 'dine@gmail.com', '$2y$12$mCxOIp7zgmomZxMsLuPDquG/4c7D556JEZwsPwy2A0BP7ZnyAofeS', 0, 'user-male.png', '', '', '', '', '', '', 0, '', '', '', 'Male', 0, 'English', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supportbox`
--

CREATE TABLE `supportbox` (
  `id` int(11) NOT NULL,
  `r_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `r_type` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `subject` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `report` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `r_time` int(11) NOT NULL,
  `r_replay` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `r_replay_time` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `typing_m`
--

CREATE TABLE `typing_m` (
  `id` bigint(11) NOT NULL,
  `t_from` bigint(11) NOT NULL,
  `t_to` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wpost`
--

CREATE TABLE `wpost` (
  `post_id` bigint(50) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `post_img` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `post_time` int(11) NOT NULL,
  `post_content` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `p_title` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `p_likes` int(100) NOT NULL DEFAULT '0',
  `p_privacy` int(11) NOT NULL DEFAULT '0',
  `shared` varchar(1000) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wpost`
--

INSERT INTO `wpost` (`post_id`, `author_id`, `post_img`, `post_time`, `post_content`, `p_title`, `p_likes`, `p_privacy`, `shared`) VALUES
(1554064435, -227135624, 'user_post_img/1553674644507993112.png', 1553674643, 'ramar', '', 2, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mynotepad`
--
ALTER TABLE `mynotepad`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_star`
--
ALTER TABLE `r_star`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `supportbox`
--
ALTER TABLE `supportbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typing_m`
--
ALTER TABLE `typing_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpost`
--
ALTER TABLE `wpost`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1557786333;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mynotepad`
--
ALTER TABLE `mynotepad`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `r_star`
--
ALTER TABLE `r_star`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `supportbox`
--
ALTER TABLE `supportbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typing_m`
--
ALTER TABLE `typing_m`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
