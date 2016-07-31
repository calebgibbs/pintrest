-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2016 at 11:00 pm
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pinterest`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) unsigned NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'good post, job done', 2, 8, '2016-07-04 21:47:14', '2016-07-04 21:47:14'),
(5, 'this is a test comment', 2, 10, '2016-07-04 21:49:48', '2016-07-04 21:49:48'),
(9, 'test', 1, 9, '2016-07-04 23:04:43', '2016-07-04 23:04:43'),
(18, 'feggwagwag', 2, 10, '2016-07-04 23:59:08', '2016-07-04 23:59:08'),
(19, 'fsgsgsge', 16, 10, '2016-07-04 23:59:15', '2016-07-04 23:59:15'),
(20, 'this is another test\r\n', 16, 9, '2016-07-04 23:59:31', '2016-07-04 23:59:31'),
(21, 'test', 16, 16, '2016-07-18 20:42:41', '2016-07-18 20:42:41'),
(22, '<h1>test</h1>', 16, 16, '2016-07-18 20:59:36', '2016-07-18 20:59:36'),
(23, 'test', 16, 15, '2016-07-18 21:04:40', '2016-07-18 21:04:40'),
(24, 'another test', 16, 15, '2016-07-18 21:04:46', '2016-07-18 21:04:46'),
(25, 'great comment mate', 16, 15, '2016-07-18 21:04:52', '2016-07-18 21:04:52'),
(26, 'job done', 16, 15, '2016-07-18 21:04:57', '2016-07-18 21:04:57'),
(27, 'job done', 16, 15, '2016-07-18 21:08:13', '2016-07-18 21:08:13'),
(28, 'job done test', 16, 15, '2016-07-18 21:16:51', '2016-07-25 20:45:38'),
(29, 'noice', 17, 15, '2016-07-28 21:38:00', '2016-07-28 21:38:00'),
(30, 'pretty good ye', 17, 15, '2016-07-28 21:38:06', '2016-07-28 21:43:01'),
(31, 'nice', 16, 17, '2016-07-28 22:25:12', '2016-07-28 22:25:12'),
(32, 'noice', 16, 17, '2016-07-28 22:25:18', '2016-07-28 22:25:18'),
(33, 'pretty nice', 16, 17, '2016-07-28 22:25:22', '2016-07-28 22:25:22'),
(34, 'good', 16, 17, '2016-07-28 22:25:27', '2016-07-28 22:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(50) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'Post Title', 'Post Description', '', 2, '2016-06-28 22:38:37', '2016-06-28 22:38:37'),
(9, 'test 2', 'test 2', '', 1, '2016-06-28 23:07:08', '2016-06-28 23:07:08'),
(10, 'test 3', 'test 3', '', 16, '2016-06-28 23:11:41', '2016-06-28 23:11:41'),
(11, 'test title', 'test image', '', 16, '2016-07-05 21:22:54', '2016-07-05 21:22:54'),
(12, 'this is a test title', 'this is a test description', '', 16, '2016-07-05 21:26:27', '2016-07-05 21:26:27'),
(13, 'look at dat', 'look at dis', '', 16, '2016-07-05 21:47:40', '2016-07-05 21:47:40'),
(14, 'Nice image', 'test description', '.jpg', 16, '2016-07-05 22:01:14', '2016-07-05 22:01:14'),
(15, 'Nice image test', 'test description test', '5797ee8e2213b.jpg', 16, '2016-07-05 23:27:06', '2016-07-05 23:27:06'),
(16, 'great title', 'best description', '577c4276dae6b.jpg', 16, '2016-07-05 23:27:51', '2016-07-05 23:27:51'),
(17, 'test 2 admin change', 'estgsgsgs admin change', '579a9396795d1.jpg', 17, '2016-07-28 21:47:51', '2016-07-28 21:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `privilege` enum('user','admin') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `privilege`) VALUES
(1, '', '', 'bob.o''niell@test.co.nz', '$2y$10$FNcriGGQJO1WVD2Rs1jFd.M8vz9pAC/texiJ0y3ogpBRnu7NcmzJ2', 'user'),
(2, 'joe', 'smith', 'test@test.co.nz', '$2y$10$xeQaAeeuT7OnqzfzB9QEdurd1w0lLOUUfLXZs2f24Bdq05g0MqOR6', 'user'),
(16, 'testfirstname', 'testlastname', 'testemail@test.test', '$2y$10$VTgtfhQ0GZSukUd/IOR7HuNAJ3yxaje/1ji3cWhfI3oK63cvdnG0a', 'admin'),
(17, '', '', 'testuser@user.test', '$2y$10$DTyYv5qWfbdNmBL1DS0S7uA/rV4PNEE1SYc14.H5dVswTim4ZLcnm', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
