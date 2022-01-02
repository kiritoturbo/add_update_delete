-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 03:07 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `70dcht23`
--

-- --------------------------------------------------------

--
-- Table structure for table `btts`
--

CREATE TABLE `btts` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `GioiTinh` varchar(50) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `Avatar` varchar(100) NOT NULL,
  `SoThich` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `btts`
--

INSERT INTO `btts` (`id`, `Name`, `Password`, `GioiTinh`, `NgaySinh`, `DiaChi`, `Avatar`, `SoThich`) VALUES
(5, 'admin', '123', 'Nam', '2021-10-29', 'hn', 'http://localhost:8080/my-web/BTTS/uploads/cool.jpg', '-Xem phim-Thể thao'),
(8, 'kien', '123', 'Nam', '2021-10-29', 'hn', 'http://localhost:8080/my-web/BTTS/uploads/tải xuống.jpg', '-Xem phim-Thể thao-Web'),
(9, 'av', '123', 'Nữ', '2021-10-29', 'hn', 'http://localhost:8080/my-web/BTTS/uploads/ảnhđạidiện.jpg', '-Xem phim-Thể thao-Web'),
(10, 'trung kiên', '123', 'Nam', '2021-10-29', 'hn', 'http://localhost:8080/my-web/BTTS/uploads/', '-Xem phim-Thể thao-Web');

-- --------------------------------------------------------

--
-- Table structure for table `qlttdonvi`
--

CREATE TABLE `qlttdonvi` (
  `MaDonVi` varchar(50) NOT NULL,
  `TenDonVi` varchar(50) NOT NULL,
  `NgayThanhLap` date NOT NULL,
  `MoTa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qlttdonvi`
--

INSERT INTO `qlttdonvi` (`MaDonVi`, `TenDonVi`, `NgayThanhLap`, `MoTa`) VALUES
('006', 'abc', '2021-10-01', 'abc'),
('123', 'kien', '2021-10-29', 'abc'),
('kien12', 'Nguyễn Văn A', '2021-11-24', 'nd'),
('kien123', 'Nguyễn Kim Anh', '2021-11-26', 'nd'),
('kien12365', 'Đỗ trung kiên', '2021-11-23', 'rg');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE `tblaccount` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `BrithDay` date NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `Gmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`ID`, `Name`, `BrithDay`, `PassWord`, `Gmail`) VALUES
(1, 'Đỗ Trung Kiên', '2021-08-20', 'trungkien', 'kienlap@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbllop`
--

CREATE TABLE `tbllop` (
  `MaLop` varchar(50) NOT NULL,
  `TenLop` varchar(50) NOT NULL,
  `MoTa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllop`
--

INSERT INTO `tbllop` (`MaLop`, `TenLop`, `MoTa`) VALUES
('ML001', '	70DCTM21', '	Truyền thông và mạng máy tính'),
('ML002', '	70DCTT21', '	Công nghệ thông tin'),
('ML003', '	70DCTT23', '	Công nghệ thông tin'),
('ML004', '	70DCHT23', '	Hệ thống thông tin'),
('ML005', '	70DCTT22', '	Công nghệ thông tin'),
('ML006', '	70DCHT21', '	Hệ thống thông tin');

-- --------------------------------------------------------

--
-- Table structure for table `tblsinhvien`
--

CREATE TABLE `tblsinhvien` (
  `MaSinhVien` varchar(50) NOT NULL,
  `TenSinhVien` varchar(50) NOT NULL,
  `QueQuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsinhvien`
--

INSERT INTO `tblsinhvien` (`MaSinhVien`, `TenSinhVien`, `QueQuan`) VALUES
('SV001', 'kien', 'nam Định'),
('SV002', 'abc', 'Hà Nội'),
('SV003', 'a', 'hd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `btts`
--
ALTER TABLE `btts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qlttdonvi`
--
ALTER TABLE `qlttdonvi`
  ADD PRIMARY KEY (`MaDonVi`);

--
-- Indexes for table `tblaccount`
--
ALTER TABLE `tblaccount`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllop`
--
ALTER TABLE `tbllop`
  ADD PRIMARY KEY (`MaLop`);

--
-- Indexes for table `tblsinhvien`
--
ALTER TABLE `tblsinhvien`
  ADD PRIMARY KEY (`MaSinhVien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `btts`
--
ALTER TABLE `btts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
