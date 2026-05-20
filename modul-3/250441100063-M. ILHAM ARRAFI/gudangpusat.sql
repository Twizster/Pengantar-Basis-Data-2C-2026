-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2026 at 01:25 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudangpusat`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventaris_gudang_pusat`
--

CREATE TABLE `inventaris_gudang_pusat` (
  `id_barang` int NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kode_sku` varchar(50) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga_satuan` decimal(15,2) DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `lokasi_rak` varchar(20) DEFAULT NULL,
  `status_qc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventaris_gudang_pusat`
--

INSERT INTO `inventaris_gudang_pusat` (`id_barang`, `nama_barang`, `kode_sku`, `kategori`, `harga_satuan`, `stok`, `lokasi_rak`, `status_qc`) VALUES
(101, 'Laptop Gaming G5', 'ELEC-442-X', 'Laptop', '15500000.00', 12, 'A-12', 'Lulus'),
(102, 'Wireless Mouse', 'ACC-101-Y', 'Aksesoris', '250000.00', 45, 'B-01', 'Lulus'),
(103, 'Ultra Wide Monitor', 'ELEC-881-X', 'Monitor', '7200000.00', 8, NULL, 'Pending'),
(104, 'Mechanical Keyboard', 'ACC-202-Z', 'Aksesoris', '1200000.00', 20, 'B-05', 'Lulus'),
(105, 'Smartphone X1', 'MOB-111-A', 'Smartphone', '8500000.00', 5, 'A-05', 'Lulus'),
(106, 'Ergo Chair', 'FURN-001-B', 'Furniture', '3200000.00', 15, 'C-10', 'Gagal'),
(107, 'USB-C Hub', 'ACC-303-W', 'Aksesoris', '450000.00', 0, 'B-02', 'Lulus'),
(108, 'Standing Desk', 'FURN-002-C', 'Furniture', '5500000.00', 10, 'C-11', 'Lulus'),
(109, 'Headset Gaming', 'ACC-404-X', 'Aksesoris', '950000.00', 25, 'B-03', 'Lulus'),
(110, 'Office Tablet', 'ELEC-222-Y', 'Tablet', '4800000.00', 12, NULL, 'Lulus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventaris_gudang_pusat`
--
ALTER TABLE `inventaris_gudang_pusat`
  ADD PRIMARY KEY (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
