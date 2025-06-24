-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 03:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaann`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(12) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT 0,
  `tahun_terbit` date DEFAULT NULL,
  `halaman` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul_buku`, `kategori`, `pengarang`, `penerbit`, `stok`, `tahun_terbit`, `halaman`, `deskripsi`) VALUES
('NVL-01', 'Bumi', 'Novel', 'Tere Liye', ' PT Gramedia Pustaka Utama', 5, '2014-02-06', 440, 'Novel ini adalah awal dari series novel Bumi yang nantinya akan dilanjutkan dengan novel Bulan hingga Aldebaran. '),
('NVL-02', 'Matahari', 'Novel', 'Tere Liye', 'Gramedia', 5, '2016-06-16', 400, 'Matahari merupakan buku ketiga setelah Bumi dan Bulan yang menceritakan petualangan ketiga tokoh utama yaitu Raib, Seli, dan Ali.'),
('PMN-01', 'Belajar Otodidak MySQL', 'Pemrograman', 'AD', 'AD', 5, '2025-06-04', 31, 'ADA');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` varchar(12) NOT NULL,
  `id_staff` varchar(12) NOT NULL,
  `kode_buku` varchar(12) NOT NULL,
  `id_pengembalian` varchar(12) NOT NULL,
  `id_member` varchar(12) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `keterlambatan` varchar(10) DEFAULT NULL,
  `total_denda` int(11) DEFAULT NULL,
  `status_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id_denda`, `id_staff`, `kode_buku`, `id_pengembalian`, `id_member`, `status`, `keterlambatan`, `total_denda`, `status_bayar`) VALUES
('D0001', 'S0001', 'NVL-02', 'K0001', 'M0001', 'Terlambat', '1', 1000, 'Lunas'),
('D0002', 'S0002', 'NVL-02', 'K0001', 'M0001', 'Terlambat', '1', 1000, 'Lunas'),
('D0003', 'S0002', 'NVL-02', 'K0003', 'M0001', 'Rusak', '0', 15000, 'Lunas'),
('D0004', 'S0001', 'NVL-01', 'K0004', 'M0002', 'Hilang', '0', 100000, 'Belum Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `nisn`, `jurusan`, `alamat`, `no_telepon`, `tanggal_daftar`, `status`) VALUES
('M0001', 'Ananda', '20212012', 'IPA', 'Jakarta', '0813223123', '2025-06-12', 'Aktif'),
('M0002', 'Alex', '20221212', 'Multimedia', 'Depok', '08123123414', '2025-06-13', 'Aktif'),
('M0003', 'Yama', '2121314', 'DKV', 'Bogor', '0816362114', '2019-06-13', 'Non Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` varchar(12) NOT NULL,
  `id_staff` varchar(12) NOT NULL,
  `id_member` varchar(12) NOT NULL,
  `kode_buku` varchar(12) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_staff`, `id_member`, `kode_buku`, `judul_buku`, `kategori`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
('P0001', 'S0001', 'M0001', 'NVL-02', 'Matahari', 'Novel', '2025-06-13', '2025-06-17'),
('P0002', 'S0002', 'M0002', 'NVL-02', 'Matahari', 'Novel', '2025-06-13', '2025-06-16'),
('P0003', 'S0002', 'M0001', 'NVL-02', 'Matahari', 'Novel', '2025-06-13', '2025-06-16'),
('P0004', 'S0001', 'M0002', 'NVL-01', 'Bumi', 'Novel', '2025-06-14', '2025-06-17'),
('P0005', 'S0002', 'M0003', 'PMN-01', 'Belajar Otodidak MySQL', 'Pemrograman', '2025-06-14', '2025-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` varchar(12) NOT NULL,
  `id_staff` varchar(12) NOT NULL,
  `id_peminjaman` varchar(12) NOT NULL,
  `id_member` varchar(12) NOT NULL,
  `kode_buku` varchar(12) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `keterlambatan` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_staff`, `id_peminjaman`, `id_member`, `kode_buku`, `judul_buku`, `tanggal_kembali`, `tgl_kembali`, `keterlambatan`, `status`) VALUES
('K0001', 'S0002', 'P0001', 'M0001', 'NVL-02', 'Matahari', '2025-06-17', '2025-06-18', '1', 'Terlambat'),
('K0002', 'S0002', 'P0002', 'M0002', 'NVL-02', 'Matahari', '2025-06-16', '2025-06-16', '0', 'Tepat Waktu'),
('K0003', 'S0002', 'P0003', 'M0001', 'NVL-02', 'Matahari', '2025-06-16', '2025-06-13', '0', 'Rusak'),
('K0004', 'S0001', 'P0004', 'M0002', 'NVL-01', 'Bumi', '2025-06-17', '2025-06-17', '0', 'Hilang');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` varchar(12) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `username`, `password`, `no_telp`, `jenis_kelamin`, `alamat`) VALUES
('S0001', 'Ismit', 'ismit', '081312312345', 'Laki-Laki', 'Jakarta'),
('S0002', 'Lathifah', '1212', '081232342141', 'Perempuan', 'Depok'),
('S0003', 'COBA', '1313', '081312323', 'Perempuan', 'JAKARTA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`),
  ADD KEY `id_staff` (`id_staff`),
  ADD KEY `kode_buku` (`kode_buku`),
  ADD KEY `id_pengembalian` (`id_pengembalian`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `peminjaman_staff` (`id_member`),
  ADD KEY `peminjaman_buku` (`kode_buku`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_staff`),
  ADD KEY `id_staff` (`id_peminjaman`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `kode_buku` (`kode_buku`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
