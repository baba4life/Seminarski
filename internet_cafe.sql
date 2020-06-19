-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 04:13 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internet_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `clan`
--

CREATE TABLE `clan` (
  `ID` int(11) UNSIGNED NOT NULL,
  `korisnicko_ime` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clan`
--

INSERT INTO `clan` (`ID`, `korisnicko_ime`, `email`) VALUES
(1, 'Dada', 'dada@dada'),
(3, 'cone', 'cone@nemanja'),
(4, 'boki', 'boki@com');

-- --------------------------------------------------------

--
-- Table structure for table `racunar`
--

CREATE TABLE `racunar` (
  `ID` int(10) UNSIGNED NOT NULL,
  `stanje` enum('slobodan','zauzet') NOT NULL,
  `vrsta` enum('pc','ps') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sesija`
--

CREATE TABLE `sesija` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID clana` int(10) UNSIGNED NOT NULL,
  `ID racunara` int(10) UNSIGNED NOT NULL,
  `vreme logovanja` datetime NOT NULL,
  `vreme odjave` datetime NOT NULL,
  `cena sesije` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `racunar`
--
ALTER TABLE `racunar`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sesija`
--
ALTER TABLE `sesija`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sesijaclan` (`ID clana`),
  ADD KEY `sesijaracunar` (`ID racunara`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clan`
--
ALTER TABLE `clan`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `racunar`
--
ALTER TABLE `racunar`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sesija`
--
ALTER TABLE `sesija`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sesija`
--
ALTER TABLE `sesija`
  ADD CONSTRAINT `sesijaclan` FOREIGN KEY (`ID clana`) REFERENCES `clan` (`ID`),
  ADD CONSTRAINT `sesijaracunar` FOREIGN KEY (`ID racunara`) REFERENCES `racunar` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
