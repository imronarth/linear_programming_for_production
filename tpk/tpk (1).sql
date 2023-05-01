-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 03:43 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Nomor User` int(3) NOT NULL,
  `Username` varchar(12) NOT NULL,
  `Password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Nomor User`, `Username`, `Password`) VALUES
(1, 'aldo', '123456'),
(2, 'ikram', '123456'),
(3, 'imron', '123456'),
(4, 'rea', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `forecast`
--

CREATE TABLE `forecast` (
  `Kode Forecast` varchar(12) NOT NULL,
  `Periode F` int(2) NOT NULL,
  `Tahun F` int(4) NOT NULL,
  `Forecast Sales` float NOT NULL,
  `Kode Produk` varchar(12) DEFAULT NULL,
  `MSE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forecast`
--

INSERT INTO `forecast` (`Kode Forecast`, `Periode F`, `Tahun F`, `Forecast Sales`, `Kode Produk`, `MSE`) VALUES
('111', 5, 2000, 41.745, 'kkn23', 15.2244);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `Kode Penjualan` varchar(6) NOT NULL,
  `Periode` int(2) NOT NULL,
  `Tahun` int(4) NOT NULL,
  `Actual Sales` int(6) NOT NULL,
  `Kode Produk` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`Kode Penjualan`, `Periode`, `Tahun`, `Actual Sales`, `Kode Produk`) VALUES
('111', 1, 2000, 39, 'kkn23'),
('112', 2, 2000, 44, 'kkn23'),
('113', 3, 2000, 40, 'kkn23'),
('114', 4, 2000, 45, 'kkn23'),
('115', 5, 2000, 38, 'kkn23'),
('116', 6, 2000, 43, 'kkn23'),
('117', 7, 2000, 39, 'kkn23'),
('118', 8, 2000, 48, 'kkn23'),
('119', 9, 2000, 37, 'kkn23'),
('120', 10, 2000, 38, 'kkn23'),
('121', 11, 2000, 40, 'kkn23'),
('122', 12, 2000, 48, 'kkn23');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Kode Produk` varchar(12) NOT NULL,
  `Nama Produk` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Kode Produk`, `Nama Produk`) VALUES
('kkn23', 'lampu'),
('kkn24', 'ban');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Nomor User`);

--
-- Indexes for table `forecast`
--
ALTER TABLE `forecast`
  ADD PRIMARY KEY (`Kode Forecast`),
  ADD UNIQUE KEY `Kode Produk` (`Kode Produk`) USING BTREE;

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`Kode Penjualan`),
  ADD KEY `Kode Produk_2` (`Kode Produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Kode Produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Nomor User` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forecast`
--
ALTER TABLE `forecast`
  ADD CONSTRAINT `kp1` FOREIGN KEY (`Kode Produk`) REFERENCES `produk` (`Kode Produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `kp2` FOREIGN KEY (`Kode Produk`) REFERENCES `produk` (`Kode Produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
