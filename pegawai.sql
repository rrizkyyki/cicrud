-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2022 at 10:31 PM
-- Server version: 8.0.30-0ubuntu0.22.04.1
-- PHP Version: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`) VALUES
(1, 'RPL');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jurusan_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jurusan_id`) VALUES
(1, 'XII-RPL2', 1),
(2, 'XII-RPL1', 1),
(3, 'XI-RPL3', 1),
(4, 'XI-RPL4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','petugas','siswa','') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'siswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `level`) VALUES
(1, 'RAHMAT', '4af9a002ba1a5f0f6a66d202ba82a3b4', 'siswa'),
(5, 'PETUGAS', '4af9a002ba1a5f0f6a66d202ba82a3b4', 'petugas'),
(6, 'vedimuxe', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'petugas'),
(7, 'cadycaxono', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'petugas'),
(8, 'XXXXXX', '4af9a002ba1a5f0f6a66d202ba82a3b4', 'admin'),
(9, 'SSSS', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'siswa'),
(10, 'SSSS', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'siswa'),
(11, 'JONOOO', '4af9a002ba1a5f0f6a66d202ba82a3b4', 'admin'),
(12, 'dipaqe', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'admin'),
(13, 'todojebi', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'siswa'),
(14, 'SISWAKU', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'siswa'),
(15, 'SISWAME', '827ccb0eea8a706c4c34a16891f84e7b', 'siswa'),
(16, 'SADASD', 'f9ea827850ae6457edfade5b696c206c', ''),
(17, 'nevizi', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int NOT NULL,
  `nip` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `password`, `role`) VALUES
(1, 123456, 'Mansyur', '4af9a002ba1a5f0f6a66d202ba82a3b4', '2'),
(2, 1234455, 'Tun Abdul RazaqS', '4af9a002ba1a5f0f6a66d202ba82a3b4', '1'),
(3, 1234567, 'Gus Samsudin', '4af9a002ba1a5f0f6a66d202ba82a3b4', '1'),
(4, 123477, 'Pesulap Merah', '4af9a002ba1a5f0f6a66d202ba82a3b4', '1'),
(7, 0, 'Voluptatibus illum ', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(8, 0, 'Consequatur consecte', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(9, 0, 'Ut voluptatibus et q', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(10, 0, 'Et aut dolore tenetu', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(11, 0, 'Fugiat eveniet dol', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(12, 0, 'Ut minima quis repre', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(13, 0, 'Id amet perferendis', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(14, 0, 'Saepe labore laboris', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(15, 0, 'Nulla voluptates mol', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(16, 0, 'Perspiciatis nostru', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(17, 0, 'Libero tempora nostr', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(18, 0, 'Voluptatem corrupti', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(19, 0, 'Aliquid ut odio quia', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(20, 0, 'Sed harum nulla prae', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1'),
(21, 0, 'Voluptatibus sint q', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint UNSIGNED NOT NULL,
  `petugas_id` bigint UNSIGNED NOT NULL,
  `tgl_bayar` date NOT NULL,
  `spp_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `petugas_id`, `tgl_bayar`, `spp_id`) VALUES
(1, 2, '2022-09-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` int NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `login_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `nama_petugas`, `login_id`, `image`) VALUES
(1, 'RAHMAT SANG PETUGAS', 5, NULL),
(2, 'sss', 7, NULL),
(3, 'XXXXXX', 8, NULL),
(4, 'JONOOO', 11, 'WhatsApp_Image_2022-09-19_at_9_32_13_PM4.jpeg'),
(5, 'lyporiz', 12, NULL),
(6, 'SADASD', 16, 'WhatsApp_Image_2022-09-19_at_9_32_13_PM5.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` bigint UNSIGNED DEFAULT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` bigint UNSIGNED DEFAULT NULL,
  `id_login` bigint UNSIGNED DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`, `id_login`, `image`) VALUES
(8, '111', '111111', 'ssswihaxevu', NULL, 'SDADBSAJHDGASYD', '333222', NULL, 10, ''),
(10, '222222', '222222', 'SISWAKU', 3, 'fiwiju', 'wudez', NULL, 14, ''),
(11, '12345', '12345', 'SISWAMESD', 4, 'kosygykom', 'hybusos', NULL, 15, ''),
(12, 'rezaq', 'qucupyfy', 'quqeqykeko', 3, 'xovipu', 'mixeqa', NULL, 17, '');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` bigint UNSIGNED NOT NULL,
  `no_spp` varchar(255) NOT NULL,
  `tahun` date NOT NULL,
  `nominal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `no_spp`, `tahun`, `nominal`) VALUES
(1, 'KSPP/22/01/XXI', '2022-09-12', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('0','1','2') NOT NULL DEFAULT '2' COMMENT '0 : ADMIN , 1 : PETUGAS , 2 : USER',
  `password` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `kelas_id` bigint UNSIGNED DEFAULT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `spp_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `role`, `password`, `nis`, `nisn`, `kelas_id`, `alamat`, `no_telp`, `spp_id`) VALUES
(1, 'JAMILAH', 'JAMILAH RAHMAT', '2', 'SSS', '123', '12345', 1, 'KP PONDOK INDAH', '0895331493506', 1),
(2, 'PETPAS', 'PETUGAS ATLAS', '1', 'SSS', '1235', '123555', NULL, 'XXXN', '0899999999', NULL),
(3, 'ADMIN', 'ADMIN GODWAR', '0', 'SSS', '12356', '1235556', NULL, 'XXXNXX', '0899999999', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `petugas_id` (`petugas_id`),
  ADD KEY `spp_id` (`spp_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD UNIQUE KEY `no_telp` (`no_telp`),
  ADD KEY `id_kelas` (`id_kelas`,`id_spp`),
  ADD KEY `id_spp` (`id_spp`),
  ADD KEY `id_login` (`id_login`) USING BTREE;

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`,`nisn`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `spp_id` (`spp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`petugas_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`spp_id`) REFERENCES `spp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `petugas_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_3` FOREIGN KEY (`id_login`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`spp_id`) REFERENCES `spp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
