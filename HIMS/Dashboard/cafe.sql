-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 01:18 PM
-- Server version: 8.0.32
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `Author` text NOT NULL,
  `pages` int NOT NULL,
  `isIssued` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `Author`, `pages`, `isIssued`, `isDeleted`, `description`) VALUES
(1, 'Cyber Security', 'kamal', 110, 1, 0, 'hii i am jay i am from udaipur'),
(2, 'DSA', 'Rohit', 200, 1, 0, 'hii i am jay i am from udaipur'),
(3, 'C++', 'lokesh', 70, 1, 0, 'hii i am jay i am from ahmedabad'),
(4, 'SE', 'Umesh', 60, 1, 0, 'hii i am jay i am from jaipur'),
(5, 'Compiler Design', 'yash', 80, 1, 0, 'hii i am jay i am from gujrat'),
(6, 'DBMS', 'Milan', 50, 0, 0, 'hii i am jay i am from silver oak');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Role_id` int NOT NULL,
  `Role_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Role_id`, `Role_name`) VALUES
(1, 'Admin'),
(2, 'Staff'),
(3, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `User_id` bigint NOT NULL,
  `question` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `date`, `User_id`, `question`) VALUES
(1, '2023-08-08', 1, '1'),
(2, '2023-08-09', 1, '8'),
(3, '2023-08-10', 1, '1'),
(4, '2023-08-11', 1, '4'),
(6, '2023-08-12', 1, '1'),
(7, '2023-08-13', 1, '1'),
(8, '2023-08-14', 1, '4'),
(9, '2023-08-08', 2, '1'),
(10, '2023-08-09', 2, '8'),
(11, '2023-08-10', 2, '1'),
(12, '2023-08-11', 2, '4'),
(13, '2023-08-12', 2, '1'),
(14, '2023-08-13', 2, '1'),
(15, '2023-08-14', 2, '5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `Role_id` int NOT NULL,
  `isDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `address`, `city`, `country`, `email`, `firstname`, `lastlogin`, `lastname`, `password`, `phoneno`, `username`, `Role_id`, `isDeleted`) VALUES
(1, 'Ahmedabad', 'Ahmedabad', 'Ahmedabad', 'jayparikh7174@gmail.com', 'Ahmedabad', '01-08-2023', 'Ahmedabad', 'Ahmedabad', '1234567890', 'Ahmedabad', 1, 0),
(2, 'Ahmedabad', 'Ahmedabad', 'Ahmedabad', 'parikhdhruv240@gmail.com', 'Ahmedabad', '01-08-2023', 'Ahmedabad', 'Ahmedabad', '1234567890', 'Ahmedabad', 2, 0),
(3, 'Ahmedabad', 'Ahmedabad', 'Ahmedabad', 'Ahmedabad@gmail.com', 'Ahmedabad', '01-08-2023', 'Ahmedabad', 'Ahmedabad', '1234567890', 'Ahmedabad', 3, 1),
(4, 'Ahmedabad', 'Ahmedabad', 'Ahmedabad', 'Ahmedabad@gmail.com', 'Ahmedabad', '01-08-2023', 'Ahmedabad', 'Ahmedabad', '1234567890', 'Ahmedabad', 2, 1),
(5, 'Udaipur', 'Udaipur', 'Udaipur', 'Udaipur@gmail.com', 'Ahmedabad', '01-08-2023', 'Udaipur', 'Udaipur', '1234567890', 'Udaipur', 3, 1),
(6, 'Jaislmer', 'Jaislmer', 'Jaislmer', 'Jaislmer@gmail.com', 'Jaislmer', '01-08-2023', 'Jaislmer', 'Jaislmer', '1234567890', 'Jaislmer', 2, 1),
(7, 'Africa', 'Africa', 'Africa', 'Ahmedabad@gmail.com', 'Africa', '01-08-2023', 'Africa', 'Africa', '1234567890', 'Africa', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_book`
--

CREATE TABLE `user_book` (
  `id` int NOT NULL,
  `Userid` int NOT NULL,
  `Bookid` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_book`
--

INSERT INTO `user_book` (`id`, `Userid`, `Bookid`, `date`) VALUES
(1, 1, 2, '2023-08-03 21:19:39'),
(2, 5, 5, '2023-08-03 21:20:47'),
(3, 4, 1, '2023-08-03 21:20:47'),
(4, 3, 4, '2023-08-03 21:20:47'),
(5, 2, 3, '2023-08-03 21:20:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Role_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users` (`User_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `fkk_role` (`Role_id`);

--
-- Indexes for table `user_book`
--
ALTER TABLE `user_book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Role_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_book`
--
ALTER TABLE `user_book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fkk_role` FOREIGN KEY (`Role_id`) REFERENCES `role` (`Role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
