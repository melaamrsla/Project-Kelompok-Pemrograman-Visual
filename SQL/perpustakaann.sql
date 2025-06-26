-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 11:00 AM
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
('BNS-01', 'Sistem Informasi Bisnis Dunia Versi 4.0', 'Bisnis', 'Eddy Suprihadi', 'Andi', 5, '2021-02-02', 338, 'Tujuan keseluruhan buku ini adalah untuk menunjukkan mengapa manajemen strategis \"Sistem Informasi\" sangat penting untuk keberhasilan organisasi untuk agar menguasai pasar atau bahkan hanya agar tetap ada, di saat perubahan yang semakin cepat. Pendekatan yang dijelaskan dalam buku ini dimaksudkan untuk memungkinkan pemahaman yang lebih baik tentang apa yang perlu dilakukan dan bagaimana hal itu dapat dilakukan dalam menyiapkan organisasi bisnis yang berbasis sistem informasi.'),
('CPN-01', 'Hiu Sang Predator Lautan', 'Cerpen', 'Annabel Griffin', 'Elex Media Komputindo', 4, '2025-06-10', 64, 'Hiu telah menguasai perairan sejak zaman purba . Makhluk ini memiliki kecepatan, kekuatan, dan insting berburu yang luar biasa. Namun, tahukah kamu? Meski dikenal sebagai predator, tidak semua hiu ganas dan berbahaya! Ada banyak jenis hiu dengan keunikan masing-masing, seperti hiu putih besar legendaris, hiu goblin dengan wajah unik, hingga hiu yang bisa bersinar dalam gelap!Temukan fakta-fakta seru tentang hiu, peran penting hiu dalam menjaga keseimbangan laut, serta alasan mengapa hiu harus dilindungi. Apakah kamu sudah siap menyelam ke dunia sang predator lautan?'),
('MTK-01', 'Pengantar Ilmu Statistika', 'Matematika', 'Bayu Adhi Wibowo, S.Pd., M.Pd. Dan Asyifah Dwi Putri, S.Psi.', ' Anak Hebat Indonesia', 5, '2023-11-15', 294, 'Statistika adalah ilmu yang sangat penting jika kita dihadapkan dengan data atau set data. Metode-metode statistika akan meguji dan menganalisis data tersebut dengan caranya yang unik sesuai dengan kebutuhan data yang akan disajikan. Selain menyajikan data, uji validitas juga sangat penting dalam prespektif ilmu statiska.'),
('NVL-01', 'Bumi', 'Novel', 'Tere Liye', 'Gramedia', 5, '2014-02-06', 440, 'Novel ini adalah awal dari series novel Bumi yang nantinya akan dilanjutkan dengan novel Bulan hingga Aldebaran. '),
('NVL-02', 'Matahari', 'Novel', 'Tere Liye', 'Gramedia', 5, '2016-06-16', 400, 'Matahari merupakan buku ketiga setelah Bumi dan Bulan yang menceritakan petualangan ketiga tokoh utama yaitu Raib, Seli, dan Ali.'),
('NVL-03', 'Harry Potter and the Chamber of Secrets', 'Novel', 'JK.Rowling', 'Gramedia', 5, '2000-02-11', 424, 'Novel ini mengisahkan tahun kedua Harry Potter di Sekolah Sihir Hogwarts'),
('NVL-04', 'Dilan', 'Novel', 'Pidi Baiq', 'Pidi Baiq', 10, '2025-06-11', 359, 'Dilan Milea'),
('PMN-01', 'Belajar Otodidak MySQL', 'Pemrograman', 'Budi Raharjo', 'Informatika', 5, '2025-06-04', 233, 'Belajar Otodidak MySQL adalahTeknik Pengolahan dan pembuatan Database.'),
('PMN-02', 'Menguasai Pemrograman Arduino Dan Robotik', 'Pemrograman', 'Ir. M. Budihardjo ', 'Andi', 5, '2021-01-09', 122, 'Industri 4.0 hadir di Indonesia dan membutuhkan penguasaan teknologi terkini, salah satunya sistem cerdas berbasis mikrokontroler. Arduino adalah board pengembangan mikrokontroler yang sangat terkenal dan ekonomis untuk belajar pemrograman sistem tertanam (embedded systems) dan robot. Buku ini, merupakan buku terkini yang membahas berbagai trik dan contoh pemrograman Arduino yang diterapkan langsung pada kasus nyata seperti kursi roda listrik, sensor, robot tempur, pendeteksi kebocoran gas, drone menggunakan Scratch, teknologi pengenalan ucapan dan text to speech, serta contoh kendali robot berbasis wireless Bluetooth dan Wi-Fi. Setiap pecinta elektronika, pelajar, pendidik, dan akademisi harus memiliki buku ini.'),
('STR-01', 'Sastra dan Pendidikan', 'Sastra', 'Sapardi Djoko Damono', 'Solusi Distribusi Buku Cv', 1, '2022-01-06', 135, 'Kumpulan delapan tulisan Sapardi Djoko Damono yang tentang sastra, khususnya yang berkaitan dengan dunia pendidikan dikumpulkan dalam sebuah buku. Penting dibaca bagi peminat sastra, penulis sastra, dan pendidik sastra.\nSiapa yang tak kenal Sapardi Joko Damono? Seorang pendidik dan sastrawan unggul Indonesia modern. Karya-karyanya bertebaran dan menjadi bahan kajian banyak mahasiswa. Tapi kali ini, dalam buku ini, Sapardi tidak menulis puisi. Buku yang diterbitkan oleh Pabrik Tulisan ini adalah kumpulan 8 (delapan) tulisan Sapardi, khususnya yang berkaitan dengan pendidikan sastra.\nDi alenia terakhir tulisan pertama yang berjudul Kegiatan Sastra di Sekolah, Sapardi menulis: “Dalam hal apresiasi sastra, guru sebaiknya berfungsi sebagai ‘rekan’ yang lebih tua, yang lebih berpengalaman, yang bersama-sama dengan murid-muridnya berusaha memahami karya sastra. Guru sastra adalah ‘sekadar’ pendamping murid-muridnya dalam usaha mengungkapkan penghayatan, tanggapan, dan penilaian pengarang terhadap kehidupan.”'),
('TKN-01', 'SMA Super Master OSN Informatika Bahasa C', 'Teknologi', 'Singgih Satrio Wibowo', 'Yrama Widya', 5, '2023-04-10', 464, 'Olimpiade Komputer Informatika (OKI) merupakan bagian dari Olimpiade Sains Nasional (OSN) untuk tingkat Sekolah Menengah Atas (SMA) di Indonesia. Tujuan tingkat tinggi dari pelaksanaan OKI adalah memperkenalkan sains komputer (computer sains, CS) di kalangan pemuda pelajar. serta mencari dan menumbuhkan bakat-bakat muda dalam CS. persoalan yang diberikan dalam OKI berupa pemecahan masalah algoritma, dimana solusi yang diberikan harus diimplementasikan dalam suatu bahasa pemrograman. Peserta dapat memilih bahasa pemrograman yang diizinkan, antara lain Pascal, Basic, Logo, C dan C++, serta FORTRAN.');

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
('D0004', 'S0001', 'NVL-01', 'K0004', 'M0002', 'Hilang', '0', 100000, 'Belum Lunas'),
('D0005', 'S0002', 'PMN-01', 'K0005', 'M0003', 'Terlambat', '2', 2000, 'Lunas'),
('D0006', 'S0003', 'NVL-01', 'K0006', 'M0002', 'Hilang', '0', 100000, 'Lunas');

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
('M0003', 'Marshela', '2022435-1576', 'IPA', 'kampung', '089324325', '2025-06-01', 'Aktif'),
('M0004', 'Klara', '202243501', 'IPA', 'Bogor', '083891821002', '2025-06-23', 'Aktif');

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
('P0005', 'S0002', 'M0003', 'PMN-01', 'Belajar Otodidak MySQL', 'Pemrograman', '2025-06-14', '2025-06-17'),
('P0006', 'S0002', 'M0001', 'NVL-01', 'Bumi', 'Novel', '2025-06-23', '2025-06-26'),
('P0007', 'S0002', 'M0001', 'MTK-01', 'Pengantar Ilmu Statistika', 'Matematika', '2025-06-23', '2025-06-26'),
('P0008', 'S0002', 'M0001', 'NVL-02', 'Matahari', 'Novel', '2025-06-02', '2025-06-05'),
('P0009', 'S0002', 'M0002', 'NVL-04', 'Dilan', 'Novel', '2025-06-01', '2025-06-04'),
('P0010', 'S0002', 'M0001', 'MTK-01', 'Pengantar Ilmu Statistika', 'Matematika', '2025-06-26', '2025-06-30');

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
('K0004', 'S0001', 'P0004', 'M0002', 'NVL-01', 'Bumi', '2025-06-17', '2025-06-17', '0', 'Hilang'),
('K0005', 'S0002', 'P0005', 'M0003', 'PMN-01', 'Belajar Otodidak MySQL', '2025-06-17', '2025-06-19', '2', 'Terlambat'),
('K0006', 'S0001', 'P0004', 'M0002', 'NVL-01', 'Bumi', '2025-06-17', '2025-06-17', '0', 'Hilang'),
('K0007', 'S0002', 'P0006', 'M0001', 'NVL-01', 'Bumi', '2025-06-26', '2025-06-28', '2', 'Terlambat'),
('K0008', 'S0002', 'P0008', 'M0001', 'NVL-02', 'Matahari', '2025-06-05', '2025-06-06', '0', 'Tepat Waktu'),
('K0009', 'S0002', 'P0009', 'M0002', 'NVL-04', 'Dilan', '2025-06-04', '2025-06-05', '1', 'Terlambat'),
('K0010', 'S0002', 'P0010', 'M0001', 'MTK-01', 'Pengantar Ilmu Statistika', '2025-06-30', '2025-06-30', '0', 'Rusak');

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
('S0001', 'Ismit', 'ismit', '081312312343', 'Laki-Laki', 'Jakarta'),
('S0002', 'Lathifah', '1212', '081232342141', 'Perempuan', 'Depok'),
('S0003', 'Mela', '0505', '081312323123', 'Perempuan', 'Jakarta'),
('S0004', 'Marsa ', '1213', '081313124112', 'Perempuan', 'Jonggol'),
('S0005', 'Marshela ', '1007', '083121284567', 'Perempuan', 'Depok'),
('S0006', 'Klara', '8007', '081289072345', 'Perempuan', 'Bogor'),
('S0007', 'Silfia', '1515', '089712345678', 'Perempuan', 'Depok');

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
  ADD KEY `fk_denda_staff` (`id_staff`),
  ADD KEY `fk_denda_buku` (`kode_buku`),
  ADD KEY `fk_denda_pengembalian` (`id_pengembalian`),
  ADD KEY `fk_denda_member` (`id_member`);

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
  ADD KEY `fk_peminjaman_staff` (`id_staff`),
  ADD KEY `fk_peminjaman_member` (`id_member`),
  ADD KEY `fk_peminjaman_buku` (`kode_buku`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `fk_pengembalian_staff` (`id_staff`),
  ADD KEY `fk_pengembalian_peminjaman` (`id_peminjaman`),
  ADD KEY `fk_pengembalian_member` (`id_member`),
  ADD KEY `fk_pengembalian_buku` (`kode_buku`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `fk_denda_buku` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`),
  ADD CONSTRAINT `fk_denda_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`),
  ADD CONSTRAINT `fk_denda_pengembalian` FOREIGN KEY (`id_pengembalian`) REFERENCES `pengembalian` (`id_pengembalian`),
  ADD CONSTRAINT `fk_denda_staff` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_peminjaman_buku` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_peminjaman_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_peminjaman_staff` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE;

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `fk_pengembalian_buku` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pengembalian_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pengembalian_peminjaman` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pengembalian_staff` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
