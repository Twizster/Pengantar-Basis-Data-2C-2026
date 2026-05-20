  -- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2026 at 07:00 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `dokter` (
  `id_dokter` int NOT NULL,
  `nama_dokter` varchar(50) DEFAULT NULL,
  `spesialisasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `spesialisasi`) VALUES
(2, 'Dr. Rina', 'Anak');





CREATE TABLE `pasien` (
  `id_pasien` int NOT NULL,
  `nama_pasien` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `tanggal_lahir`, `no_telepon`) VALUES
(1, 'Ilham', '2005-01-01', '0899999999'),
(2, 'Budi', '2004-02-02', '0822222222');



CREATE TABLE `rekam_medis` (
  `id_rekam` int NOT NULL,
  `id_pasien` int DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `tanggal_periksa` date DEFAULT NULL,
  `diagnosis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);


ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);


ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id_rekam`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE RESTRICT,
  ADD CONSTRAINT `rekam_medis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE;
COMMIT;

--1
-- Membuat database
CREATE DATABASE db_klinik;
USE db_klinik;

-- Tabel dokter
CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(50),
    spesialisasi VARCHAR(50)
);

-- Tabel pasien
CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(50),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);

-- Tabel rekam medis
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,

    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(100),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);


--2
-- Insert data dokter
INSERT INTO dokter VALUES 
(1, 'Dr. Siti', 'Umum'),
(2, 'Dr. Rina', 'Anak');

-- Insert data pasien
INSERT INTO pasien VALUES 
(1, 'Ilham', '2005-01-01', '0811111111'),
(2, 'Budi', '2004-02-02', '0822222222');

-- Insert data rekam medis (benar)
INSERT INTO rekam_medis VALUES 
(1, 1, 1, '2025-01-10', 'Flu'),
(2, 2, 2, '2025-01-11', 'Demam');

-- Insert data salah (akan error)
INSERT INTO rekam_medis VALUES 
(3, 1, 99, '2025-01-12', 'Batuk');


--3
-- Menampilkan data sebelum
SELECT * FROM rekam_medis;

-- Update data pasien
UPDATE pasien
SET no_telepon = '0899999999'
WHERE id_pasien = 1;

-- Update data dokter
UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;

-- Menghapus data rekam medis
DELETE FROM rekam_medis
WHERE id_rekam = 1;

-- Menampilkan data setelah
SELECT * FROM rekam_medis;


--4
-- Menghapus tabel lama
DROP TABLE rekam_medis;

-- Membuat ulang dengan CASCADE
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(100),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

-- Insert data
INSERT INTO rekam_medis VALUES 
(1, 1, 1, '2025-01-10', 'Flu'),
(2, 2, 1, '2025-01-11', 'Demam');

-- Menampilkan sebelum
SELECT * FROM rekam_medis;

-- Menghapus dokter
DELETE FROM dokter WHERE id_dokter = 1;

-- Menampilkan setelah
SELECT * FROM rekam_medis;


--5
-- Insert data lagi
INSERT INTO rekam_medis VALUES 
(3, 1, 1, '2025-01-12', 'Batuk'),
(4, 2, 1, '2025-01-13', 'Pusing');

-- Menampilkan sebelum
SELECT * FROM rekam_medis;

-- Menghapus semua data
TRUNCATE TABLE rekam_medis;

-- Menampilkan setelah
SELECT * FROM rekam_medis;












-- Membuat database
CREATE DATABASE db_klinik;
USE db_klinik;

-- Membuat tabel dokter
CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(50),
    spesialisasi VARCHAR(50)
);

-- Membuat tabel pasien
CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(50),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);

-- Membuat tabel rekam_medis dengan relasi (RESTRICT)
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(100),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);