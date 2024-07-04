-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 08:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_eraport_rombel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ekstra`
--

CREATE TABLE `ekstra` (
  `id_ekstra` int(50) NOT NULL,
  `nama_ekstra` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `nik` bigint(50) DEFAULT NULL,
  `id_tahun` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ekstra`
--

INSERT INTO `ekstra` (`id_ekstra`, `nama_ekstra`, `deskripsi`, `nik`, `id_tahun`) VALUES
(4, 'Futsal', 'Setiap Sabtu Jam Setengah 4 Sore', 2020051074023, 6),
(7, 'Musik', 'Test', 2020051074022, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ekstra_siswa`
--

CREATE TABLE `ekstra_siswa` (
  `id_ekstra_siswa` int(11) NOT NULL,
  `nis` bigint(50) NOT NULL,
  `id_ekstra` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ekstra_siswa`
--

INSERT INTO `ekstra_siswa` (`id_ekstra_siswa`, `nis`, `id_ekstra`) VALUES
(1, 2020051074021, 4),
(3, 2020051074023, 4);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nik` bigint(50) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(120) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `idu` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nik`, `nama_guru`, `alamat`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `email`, `no_telp`, `foto`, `idu`) VALUES
(2020051074021, 'RAIHAN RAMADHAN', 'abe', 'Laki-laki', 'ambroben', '2020-11-30', 'Kristen', 'raadwjaj@gmail.com', '55667476', 'guru.jpeg', 2020051074021),
(2020051074022, 'abel', 'abepante', 'Laki-laki', 'abe', '2002-02-20', 'Islam', 'abel@cukimai', '6543543545668', 'admin-logo.jpg', 2020051074022),
(2020051074023, 'kirana', 'abe', 'Perempuan', 'abe', '2002-02-20', 'Kristen', 'qdkqldqlkd@gmail.com', '6543543545668', '', 2020051074023),
(2020051074080, 'Test Guru Rombel', 'Test Guru Rombel', 'Perempuan', 'Test Guru Rombel', '2024-07-04', 'Hindu', 'test@gmail.com', '08219782', 'Guru-2020051074080.jpg', 2020051074080);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` bigint(50) NOT NULL,
  `kode_kelas` varchar(3) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL,
  `id_tahun` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kode_kelas`, `nama_kelas`, `id_tahun`) VALUES
(1, '7A', 'KELAS 7A', 6),
(2, '8A', 'KELAS 8A', 6),
(3, '9A', 'KELAS 9A', 6);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `nik` bigint(50) DEFAULT NULL,
  `nis` bigint(50) DEFAULT NULL,
  `id_kelas` int(50) DEFAULT NULL,
  `id_tahun` bigint(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_nilai` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `nik`, `nis`, `id_kelas`, `id_tahun`, `id_mapel`, `id_nilai`) VALUES
(3, NULL, NULL, 3, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(50) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `kode_mapel` varchar(15) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `kode_mapel`, `deskripsi`) VALUES
(2, 'IPA', 'IPA', 'IPA adiktif'),
(11, 'OLAHRAGA', 'OL 1', ''),
(12, 'BAHASA ARAB ', 'BARAB 1', 'BAHASA ARAB '),
(13, 'MATEMATIKA', 'MAT1', 'MATEMATIKA KELAS 7'),
(14, 'Bahasa Inggris2', 'BI2', 'Bahasa Asing 2');

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `id_mengajar` int(50) NOT NULL,
  `id_kelas` bigint(50) DEFAULT NULL,
  `nik` bigint(50) DEFAULT NULL,
  `id_tahun` bigint(10) DEFAULT NULL,
  `id_mapel` int(50) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `kkm` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`id_mengajar`, `id_kelas`, `nik`, `id_tahun`, `id_mapel`, `semester`, `kkm`) VALUES
(1, 1, 2020051074021, 3, 11, 'ganjil', 75),
(14, 1, 2020051074023, 6, 14, 'genap', 85),
(20, 2, 2020051074023, 6, 11, 'genap', 76),
(22, 2, 2020051074021, 6, 2, 'genap', 75),
(23, 2, 2020051074021, 6, 2, 'ganjil', 75),
(24, 2, 2020051074021, 6, 11, 'genap', 75),
(25, 3, 2020051074021, 3, 2, 'genap', 75),
(32, 3, 2020051074021, 6, 13, 'ganjil', 80),
(36, 1, 2020051074021, 3, 13, 'ganjil', 80);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(50) NOT NULL,
  `nis` bigint(50) DEFAULT NULL,
  `ns1` int(4) DEFAULT NULL,
  `ns2` int(4) DEFAULT NULL,
  `ns3` int(4) DEFAULT NULL,
  `ns4` int(4) DEFAULT NULL,
  `rata1` int(4) DEFAULT NULL,
  `predikat` varchar(1) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `total` int(4) DEFAULT NULL,
  `nilai_akhir` int(4) DEFAULT NULL,
  `kkm` int(4) DEFAULT NULL,
  `id_mengajar` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nis`, `ns1`, `ns2`, `ns3`, `ns4`, `rata1`, `predikat`, `deskripsi`, `total`, `nilai_akhir`, `kkm`, `id_mengajar`) VALUES
(12, 2020051074080, 25, 25, 25, 25, 25, 'D', 'Kurang Baik', 100, 25, 75, 1),
(13, 2022051074046, 100, 100, 90, 90, 95, 'A', 'Sangat Baik', 380, 95, 75, 25),
(14, 2022051074047, 75, 75, 75, 75, 75, 'C', 'Cukup Baik', 300, 75, 75, 25);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_sikap`
--

CREATE TABLE `nilai_sikap` (
  `id_nilai_sikap` bigint(50) NOT NULL,
  `nis` bigint(50) NOT NULL,
  `ket` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_sikap`
--

INSERT INTO `nilai_sikap` (`id_nilai_sikap`, `nis`, `ket`) VALUES
(1, 2020051074021, 'asasqq222'),
(2, 2022051074048, 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `idu` bigint(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hak_akses` enum('admin','guru','wali kelas','siswa','') NOT NULL,
  `blokir` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idu`, `username`, `password`, `email`, `hak_akses`, `blokir`) VALUES
(2020, 'alief', '22db6b9d4434177a4abd28b0c5781f15', 'alief', 'guru', 'N'),
(2222, 'kaleb', '7aeef99ff3f55923ab9976a897829ac3', 'adawd12121212', 'admin', 'Y'),
(20220510, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'N'),
(2020051074002, 'abel', 'a6cd39ee5b1d8276f6bc716b3f7881b7', 'admin@example.com', 'admin', 'N'),
(2020051074021, 'tests', 'b61a6d542f9036550ba9c401c80f00ef', 'darmawan3@gmail.com', 'guru', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `rombel`
--

CREATE TABLE `rombel` (
  `id_rombel` bigint(100) NOT NULL,
  `nis` bigint(50) DEFAULT NULL,
  `id_kelas` bigint(50) NOT NULL,
  `id_tahun` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rombel`
--

INSERT INTO `rombel` (`id_rombel`, `nis`, `id_kelas`, `id_tahun`) VALUES
(7, 2020051074021, 2, 3),
(8, 2022051074046, 3, 3),
(9, 2020051074023, 1, 1),
(10, 2020051074080, 1, 3),
(11, 2022051074044, 1, 1),
(12, 2022051074047, 3, 3),
(13, 2022051074048, 2, 1),
(15, 2022051074050, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` bigint(50) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `idu` bigint(100) NOT NULL,
  `status` enum('aktif','nonaktif','keluar','pindah','alumni') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `alamat`, `jenis_kelamin`, `tgl_lahir`, `tempat_lahir`, `email`, `agama`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `foto`, `no_telp`, `idu`, `status`) VALUES
(2020051074021, 'karel', 'btn', 'Laki-laki', '2024-06-22', 'abe', 'karel@gmail', 'Islam', NULL, 'swasta', 'sarminah', 'swasta', NULL, '208203801280382', 2020051074021, 'aktif'),
(2020051074023, 'abelinda putri', 'jembatan ', 'Perempuan', '0000-00-00', 'ABEPURA', 'raadwjaj@gmail.com', 'Islam', NULL, 'swasta', 'sarminah', 'swasta', NULL, '0822389666065', 2020051074023, 'aktif'),
(2020051074080, 'cia', 'abe', 'Laki-laki', '0000-00-00', 'abe', 'abe@gmail', 'Islam', NULL, '', '', '', NULL, '208203801280382', 2020051074080, NULL),
(2022051074044, 'Much Darmawan Syam', 'Ardipura', 'Laki-laki', '0000-00-00', 'Jayapura', 'darmawan@gmail.com', 'Islam', 'test', 'test pek', 'test', 'tes pek', 'admin-logo.jpg', '0822222', 2022051074044, NULL),
(2022051074046, 'Much Darmawan Syam3a', 'Ardipura3a', 'Laki-laki', '2024-06-03', 'Jayapura3a', 'darmawan3a@gmail.com', 'Islam', NULL, 'test peka', 'testa', 'tes pek2a', NULL, '08222221', 2022051074046, NULL),
(2022051074047, 'Much Darmawan Syam3b', 'Ardipura4', 'Laki-laki', '2024-06-16', 'Jayapura4', 'darmawan3a@gmail.com', 'Islam', NULL, 'test pek', 'test2', 'tes pek2a', 'Siswa-2022051074047.jpg', '0822222', 2022051074047, NULL),
(2022051074048, 'Test Rombel3', 'Ardipura3', 'Laki-laki', '2024-07-03', 'Jayapura3', 'test3@gmail.com', 'Islam', NULL, 'test pek', 'test', 'tes pek3', 'Siswa-2022051074048.jpg', '08219782', 2022051074048, NULL),
(2022051074050, 'Test Rombel4', 'Test Rombel4', 'Perempuan', '2024-07-03', 'Test Rombel4', 'darmawan4@gmail.com', 'Islam', 'Test Rombel4', 'Test Rombel4', 'Test Rombel4', 'Test Rombel4', NULL, '0800808080', 2022051074050, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun` bigint(10) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahun`, `tahun_ajaran`, `status`) VALUES
(1, '2023/2024', 'Tidak Aktif'),
(3, '2022/2023', 'Aktif'),
(6, '2024/2025', 'Tidak Aktif'),
(7, '2026/2027', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_wali` int(50) NOT NULL,
  `nik` bigint(50) DEFAULT NULL,
  `id_kelas` bigint(50) DEFAULT NULL,
  `id_tahun` bigint(50) DEFAULT NULL,
  `nis` bigint(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_wali`, `nik`, `id_kelas`, `id_tahun`, `nis`) VALUES
(87, 2020051074022, 1, 3, NULL),
(93, 2020051074021, 2, 3, NULL),
(94, 2020051074023, 3, 3, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ekstra`
--
ALTER TABLE `ekstra`
  ADD PRIMARY KEY (`id_ekstra`),
  ADD KEY `nik` (`nik`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `ekstra_siswa`
--
ALTER TABLE `ekstra_siswa`
  ADD PRIMARY KEY (`id_ekstra_siswa`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_ekstra` (`id_ekstra`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `idu` (`idu`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `fk_kelas_tahun` (`id_tahun`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `fk_krs_guru` (`nik`),
  ADD KEY `fk_krs_siswa` (`nis`),
  ADD KEY `fk_krs_kelas` (`id_kelas`),
  ADD KEY `fk_krs_mapel` (`id_mapel`),
  ADD KEY `fk_krs_nilai` (`id_nilai`),
  ADD KEY `fk_krs_tahun_ajaran` (`id_tahun`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `idx_id_kelas_mengajar` (`id_kelas`),
  ADD KEY `idx_nik_mengajar` (`nik`),
  ADD KEY `idx_id_tahun_mengajar` (`id_tahun`),
  ADD KEY `idx_id_mapel_mengajar` (`id_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `idx_nis_nilai` (`nis`),
  ADD KEY `fk_nilai_mengajar` (`id_mengajar`);

--
-- Indexes for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  ADD PRIMARY KEY (`id_nilai_sikap`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idu`);

--
-- Indexes for table `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`id_rombel`),
  ADD KEY `idx_nis` (`nis`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `idu` (`idu`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_wali`),
  ADD KEY `fk_wali_kelas_guru` (`nik`),
  ADD KEY `idx_id_kelas` (`id_kelas`),
  ADD KEY `idx_wali_kelas_id_tahun` (`id_tahun`),
  ADD KEY `fk_wali_kelas_nis_idx` (`nis`),
  ADD KEY `fk_wali_kelas_id_wali` (`id_wali`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ekstra`
--
ALTER TABLE `ekstra`
  MODIFY `id_ekstra` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ekstra_siswa`
--
ALTER TABLE `ekstra_siswa`
  MODIFY `id_ekstra_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `id_mengajar` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  MODIFY `id_nilai_sikap` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idu` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020051074024;

--
-- AUTO_INCREMENT for table `rombel`
--
ALTER TABLE `rombel`
  MODIFY `id_rombel` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_wali` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ekstra`
--
ALTER TABLE `ekstra`
  ADD CONSTRAINT `ekstra_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `guru` (`nik`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ekstra_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id_tahun`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ekstra_siswa`
--
ALTER TABLE `ekstra_siswa`
  ADD CONSTRAINT `ekstra_siswa_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekstra_siswa_ibfk_2` FOREIGN KEY (`id_ekstra`) REFERENCES `ekstra` (`id_ekstra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `fk_kelas_tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id_tahun`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `fk_krs_guru` FOREIGN KEY (`nik`) REFERENCES `guru` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_krs_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_krs_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_krs_tahun_ajaran` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_nilai`) REFERENCES `nilai` (`id_nilai`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `fk_id_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `fk_id_tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id_tahun`),
  ADD CONSTRAINT `mengajar_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE,
  ADD CONSTRAINT `mengajar_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `guru` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_nilai_mengajar` FOREIGN KEY (`id_mengajar`) REFERENCES `mengajar` (`id_mengajar`),
  ADD CONSTRAINT `fk_nis_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

--
-- Constraints for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  ADD CONSTRAINT `nilai_sikap_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `rombel`
--
ALTER TABLE `rombel`
  ADD CONSTRAINT `fk_nis` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`),
  ADD CONSTRAINT `rombel_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rombel_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `fk_wali_kelas_tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id_tahun`),
  ADD CONSTRAINT `wali_kelas_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `wali_kelas_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `guru` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
