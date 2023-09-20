-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 02:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tea_d`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerId` char(5) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `CustomerEmail` varchar(100) NOT NULL,
  `CustomerGender` varchar(10) NOT NULL,
  `CustomerAddress` varchar(100) NOT NULL,
  `CustomerDOB` date NOT NULL
) ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerId`, `CustomerName`, `CustomerEmail`, `CustomerGender`, `CustomerAddress`, `CustomerDOB`) VALUES
('CU001', 'Ryan Min', 'ryan_min@yahoo.co.id', 'Male', '52 Apus Street, Jakarta Barat', '2000-04-28'),
('CU002', 'Riko Christian', 'riko_christian@yahoo.co.id', 'Male', '2 Lungga Street, Jakarta Timur', '2002-01-01'),
('CU003', 'Livy Lim', 'livy_lim@gmail.com', 'Female', '5 Duta Street, Jakarta Pusat', '1998-11-22'),
('CU004', 'Rey', 'rey@gmail.com', 'Male', '15 Rakun Street, Jakarta Selatan', '2001-06-15'),
('CU005', 'Raya Simanjuntak', 'raya_simanjuntak@yahoo.co.id', 'Male', '10 Rambutan Street, Jakarta Utara', '1999-12-11'),
('CU006', 'Michellia', 'michellia@yahoo.co.id', 'Female', '1 Nada Street, Jakarta Barat', '2002-10-02'),
('CU007', 'Olivia', 'olivia@gmail.com', 'Female', '60 Bawang Street, Jakarta Barat', '2000-01-08'),
('CU008', 'Natalia Elisabeth', 'natalia_elisabeth@yahoo.co.id', 'Female', '80 Ubi Street, Jakarta Barat', '2001-05-02'),
('CU009', 'Andra Setiadi', 'andra_setiadi@gmail.com', 'Male', '55 Jamal Street, Jakarta Pusat', '1998-07-18'),
('CU010', 'Marco', 'marco@yahoo.co.id', 'Male', '4 Samudra Street, Jakarta Selatan', '1999-03-20'),
('CU011', 'Leonardo', 'leonardo@gmail.com', 'Male', '3 Persada Street, Jakarta Barat', '1997-10-20'),
('CU012', 'Dito Anggara', 'dito_anggara@yahoo.co.id', 'Male', '59 Linting Street, Jakarta Utara', '2002-04-16'),
('CU013', 'Fera Raffles', 'fera_raffles@gmail.com', 'Female', '9 Pusti Street, Jakarta Utara', '2001-12-14'),
('CU014', 'Budi Yudistira', 'budi_yudistira@gmail.com', 'Male', '11 Pisang Street, Jakarta Barat', '1997-12-30'),
('CU015', 'Margono Selamet', 'margono_selamet@yahoo.co.id', 'Male', '51 Kacang Street, Jakarta Barat', '2000-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffId` char(5) NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `StaffEmail` varchar(100) NOT NULL,
  `StaffGender` varchar(10) NOT NULL,
  `StaffAddress` varchar(100) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffSalary` int(11) NOT NULL
) ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffId`, `StaffName`, `StaffEmail`, `StaffGender`, `StaffAddress`, `StaffDOB`, `StaffSalary`) VALUES
('ST001', 'Maria Eka', 'maria_eka@gmail.com', 'Female', '25 Sapu Street, Jakarta Selatan', '1995-06-09', 5500000),
('ST002', 'Dimas', 'dimas@yahoo.co.id', 'Male', '20 Imba Street, Jakarta Barat', '2000-09-11', 7500000),
('ST003', 'Lukas Andreas', 'lukas_andreas@gmail.com', 'Male', '5 Pisang Street, Jakarta Timur', '1999-02-20', 10000000),
('ST004', 'Frenky Setiady Pardede', 'frenky_setiady_pardede@gmail.com', 'Male', '2 Gilung Street, Jakarta Barat', '1995-01-01', 6500000),
('ST005', 'Shela', 'shela@yahoo.co.id', 'Female', '7 Limau Street, Jakarta Barat', '1996-12-03', 8500000),
('ST006', 'Julio Oscar', 'julio_oscar@gmail.com', 'Male', '12 Apus Street, Jakarta Utara', '1996-07-25', 7000000),
('ST007', 'Natasya', 'natasya@gmail.com', 'Female', '30 Apus Street, Jakarta Pusat', '1998-08-08', 8000000),
('ST008', 'Mega Margareta', 'mega_margareta@gmail.com', 'Female', '41 Sirih Street, Jakarta Pusat', '2000-10-10', 5000000),
('ST009', 'Eko Prasetyo', 'eko_prasetyo@gmail.com', 'Male', '8 Riskun Street, Jakarta Timur', '1997-05-05', 6000000),
('ST010', 'Elle Lim', 'elle_lim@yahoo.co.id', 'Female', '22 Apus Street, Jakarta Selatan', '1998-04-04', 9500000);

-- --------------------------------------------------------

--
-- Table structure for table `tea`
--

CREATE TABLE `tea` (
  `TeaId` char(5) NOT NULL,
  `TeaName` varchar(100) NOT NULL,
  `TeaPrice` int(11) NOT NULL
) ;

--
-- Dumping data for table `tea`
--

INSERT INTO `tea` (`TeaId`, `TeaName`, `TeaPrice`) VALUES
('TE001', 'Jasmine', 74000),
('TE002', 'Matcha', 129600),
('TE003', 'Hojicha', 69000),
('TE004', 'Earl Grey', 124900),
('TE005', 'Golden Tips', 190000),
('TE006', 'Chai', 55000),
('TE007', 'Silver Needle', 98000),
('TE008', 'White Peony', 95000),
('TE009', 'Gong Mei', 520000),
('TE010', 'Da Hong Pao', 990000),
('TE011', 'Shui Jin Gui', 933000),
('TE012', 'Shui Xian', 54000),
('TE013', 'Butterfly Pea Flower', 135000),
('TE014', 'Avocado Leaf', 25000),
('TE015', 'Olive Leaves', 49000),
('TE016', 'Sencha', 69000),
('TE017', 'Scottish Afternoon', 44000),
('TE018', 'Darjeeling White', 66000),
('TE019', 'Li Shan', 480000),
('TE020', 'Chrysanthemum', 93000);

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `TransactionId` char(5) NOT NULL,
  `TeaId` char(5) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`TransactionId`, `TeaId`, `Quantity`) VALUES
('TR001', 'TE015', 2),
('TR001', 'TE019', 1),
('TR002', 'TE013', 5),
('TR003', 'TE002', 3),
('TR004', 'TE010', 6),
('TR004', 'TE018', 1),
('TR004', 'TE020', 10),
('TR005', 'TE001', 15),
('TR005', 'TE014', 1),
('TR006', 'TE003', 2),
('TR006', 'TE005', 7),
('TR006', 'TE008', 1),
('TR007', 'TE006', 2),
('TR007', 'TE011', 6),
('TR009', 'TE001', 8),
('TR009', 'TE006', 3),
('TR010', 'TE007', 1),
('TR010', 'TE016', 9),
('TR012', 'TE017', 3),
('TR013', 'TE010', 2),
('TR013', 'TE015', 3),
('TR014', 'TE001', 10),
('TR014', 'TE003', 5),
('TR015', 'TE015', 4),
('TR015', 'TE019', 4);

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionId` char(5) NOT NULL,
  `CustomerId` char(5) DEFAULT NULL,
  `StaffId` char(5) DEFAULT NULL,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`TransactionId`, `CustomerId`, `StaffId`, `TransactionDate`) VALUES
('TR001', 'CU001', 'ST001', '2022-06-23'),
('TR002', 'CU002', 'ST002', '2022-06-24'),
('TR003', 'CU003', 'ST001', '2022-06-25'),
('TR004', 'CU004', 'ST003', '2022-06-26'),
('TR005', 'CU005', 'ST005', '2022-06-27'),
('TR006', 'CU006', 'ST004', '2022-06-28'),
('TR007', 'CU007', 'ST009', '2022-06-29'),
('TR008', 'CU008', 'ST008', '2022-06-30'),
('TR009', 'CU009', 'ST010', '2022-07-01'),
('TR010', 'CU010', 'ST006', '2022-07-02'),
('TR011', 'CU011', 'ST007', '2022-07-03'),
('TR012', 'CU012', 'ST007', '2022-07-04'),
('TR013', 'CU013', 'ST006', '2022-07-05'),
('TR014', 'CU014', 'ST001', '2022-07-06'),
('TR015', 'CU015', 'ST009', '2022-07-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffId`);

--
-- Indexes for table `tea`
--
ALTER TABLE `tea`
  ADD PRIMARY KEY (`TeaId`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`TransactionId`,`TeaId`),
  ADD KEY `transactiondetail_TeaId` (`TeaId`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionId`),
  ADD KEY `transactionheader_CustomerId` (`CustomerId`),
  ADD KEY `transactionheader_StaffId` (`StaffId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_TeaId` FOREIGN KEY (`TeaId`) REFERENCES `tea` (`TeaId`),
  ADD CONSTRAINT `transactiondetail_TransactionId` FOREIGN KEY (`TransactionId`) REFERENCES `transactionheader` (`TransactionId`);

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_CustomerId` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`),
  ADD CONSTRAINT `transactionheader_StaffId` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`StaffId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
