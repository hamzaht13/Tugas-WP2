-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2018 at 07:48 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamzahcorp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(111, 'admin1', 'admin123', 'Admin Ganteng'),
(222, 'hamzah', 'hamzah123', 'Taufik Hamzah');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` int(25) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `gol_darah` enum('A','AB','B','O') NOT NULL,
  `no_hp` int(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` enum('Belum_Menikah','Menikah','','') NOT NULL,
  `agama` enum('Islam','Kristen','Hindu','Budha') NOT NULL,
  `divisi` enum('Logistik','Humas','Akuntansi','Marketing') NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `gol_darah`, `no_hp`, `email`, `status`, `agama`, `divisi`, `foto`) VALUES
(123456, 'Raisa Andriana', 'P', 'Jakarta', 'A', 87878787, 'raisa@gmail.com', 'Menikah', 'Islam', 'Humas', '07052018073255raisa.jpg'),
(123457, 'Isyana Sarasvati', 'P', 'Bandung', 'A', 896878787, 'isyana@gmail.com', 'Belum_Menikah', 'Islam', 'Akuntansi', '07052018080411isyana.jpg'),
(123459, 'Fahri', 'L', 'Surabaya', 'O', 856565656, 'fahri@gmail.com', 'Menikah', 'Islam', 'Logistik', '07052018091328fahri.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
