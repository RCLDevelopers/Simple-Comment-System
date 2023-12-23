-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 08:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comm`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `views` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `created_at`, `views`, `likes`) VALUES
(1, 'Rashid', 'rashid', 'Attitudes and Behaviors Towards Drug Use\n\nAttitudes towards drug use: Youths who express positive attitudes to drug use and/or associate with peers who engage in alcohol or substance abuse are more likely to engage in the same behavior. \nPrior drug use: Onset of drug use prior to the age of 15 is a consistent predictor of later drug abuse .Footnote \nDelinquent behavior and drug consumption: The prevalence of self-reported delinquent behavior among high school students was highest among those who had reported drug consumption.', '2023-12-22 06:12:32', 20, 45),
(2, 'Rashid', 'rashid', 'Attitudes and Behaviors Towards Drug Use\n\nAttitudes towards drug use: Youths who express positive attitudes to drug use and/or associate with peers who engage in alcohol or substance abuse are more likely to engage in the same behavior. \nPrior drug use: Onset of drug use prior to the age of 15 is a consistent predictor of later drug abuse .Footnote \nDelinquent behavior and drug consumption: The prevalence of self-reported delinquent behavior among high school students was highest among those who had reported drug consumption.', '2023-12-22 06:20:05', 0, 0),
(3, 'Musa', 'musa@gmail.com', 'who express positive attitudes to drug use and/or associate with peers who engage in alcohol or substance abuse are more likely to engage in the same behavior. Prior drug use: Onset of drug use prior to the age of 15 is a consistent predictor of later drug abuse .Footnote Delinquent behavior and drug consumption: The prevalence of self-reported delinquent behavior among high school students was highest among those who had reported drug consumption.', '2023-12-22 06:58:12', 0, 0),
(4, 'Joy', 'joy@gmail.com', 'g use and/or associate with peers who engage in alcohol or substance abuse are more likely to engage in the same behavior. Prior drug use: Onset of drug use prior to the age of 15 is a consistent predictor of later drug abuse .Footnote Delinquent behavior and drug consumption: The prevalence of self-reported delinquent behavior among high school students was highest among those who had reported drug consumpti', '2023-12-22 07:19:11', 0, 0),
(5, '', '', '', '2023-12-22 07:27:13', 0, 0),
(6, 'Subira', 'Subira@gmail.com', 'who express positive attitudes to drug use and/or associate with peers who engage in alcohol or substance abuse are more likely to engage in the same behavior. Prior drug use: Onset of drug use prior to the age of 15 is a consistent predictor of later drug abuse .Footnote Delinquent behavior and drug consumption: The prevalence of self-reported delinquent behavior among high school students was highest among those who had reported drug consumption.\nViews: 0 Likes: 0', '2023-12-22 07:32:05', 0, 0),
(7, 'Rashid', 'rashid', 'and/or associate with peers who engage in alcohol or substance abuse are more likely to engage in the same behavior. Prior drug use: Onset of drug use prior to the age of 15 is a consistent predictor of later drug abuse .Footnote Delinquent behavior and drug consumption: The prevalence of self-reported delinquent behavior among high school students was highest among those who had reported drug consumption.', '2023-12-22 07:33:48', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
