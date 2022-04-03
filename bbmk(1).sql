-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Okt 2018 pada 19.28
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbmk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(3) NOT NULL,
  `fakultas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id`, `fakultas`) VALUES
(1, 'Ekonomi'),
(2, 'Teknik'),
(3, 'Farmasi'),
(4, 'Matematika dan Ilmu Pengetahuan Alam'),
(5, 'Pertanian'),
(6, 'Peternakan'),
(7, 'Teknologi Informasi'),
(8, 'Teknologi Pertanian'),
(9, 'Kedokteran'),
(10, 'Keperawatan'),
(11, 'Ilmu Budaya'),
(12, 'Ilmu Sosial Ilmu Politik'),
(13, 'Hukum'),
(14, 'Kedokteran Gigi'),
(15, 'Kesehatan Masyarakat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(3) NOT NULL,
  `id_fakultas` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `id_fakultas`, `nama`) VALUES
(1, 5, 'Ilmu Tanah'),
(2, 5, 'Proteksi Tanaman'),
(3, 5, 'Agroteknologi'),
(4, 5, 'Agribisnis / Sosial Ekonomi'),
(5, 5, 'Penyuluhan Pertanian'),
(6, 7, 'Sistem Komputer'),
(7, 7, 'Sistem Informasi'),
(8, 2, 'Teknik Mesin'),
(9, 2, 'Teknik Elektro'),
(10, 2, 'Teknik Industri'),
(11, 2, 'Teknik Lingkungan'),
(12, 2, 'Teknik Sipil'),
(13, 3, 'Farmasi'),
(14, 4, 'Matematika'),
(15, 4, 'Kimia'),
(16, 4, 'Fisika'),
(17, 4, 'Biologi'),
(19, 6, 'Peternakan'),
(20, 8, 'Teknik Pertanian'),
(21, 8, 'Teknologi Hasil Pertanian'),
(22, 9, 'Pendidikan Dokter'),
(23, 9, 'Psikologi'),
(24, 9, 'Kebidanan'),
(25, 10, 'Keperawatan'),
(26, 11, 'Sastra Indonesia'),
(27, 11, 'Sastra Inggris'),
(28, 11, 'Ilmu Sejarah'),
(29, 11, 'Sastra Daerah Minangkabau'),
(30, 11, 'Sastra Jepang'),
(31, 12, 'Ilmu Komunikasi'),
(32, 12, 'Ilmu Politik'),
(33, 12, 'Sosiologi'),
(34, 12, 'Ilmu Administrasi Negara'),
(35, 12, 'Antropologi Sosial'),
(37, 13, 'Ilmu Hukum'),
(38, 14, 'Pendidikan Dokter Gigi'),
(39, 15, 'Kesehatan Masyarakat'),
(40, 15, 'Gizi'),
(41, 1, 'D3 Akuntansi'),
(42, 1, 'D3 Keuangan'),
(43, 1, 'D3 Kesekretariatan / Manajemen Perkantoran'),
(44, 1, 'D3 Pemasaran'),
(45, 1, 'Ilmu Ekonomi'),
(46, 1, 'Akuntansi'),
(47, 1, 'Manajemen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemberitahuan`
--

CREATE TABLE `pemberitahuan` (
  `id` int(7) NOT NULL,
  `id_ukm` int(3) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` text NOT NULL,
  `waktu` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemberitahuan`
--

INSERT INTO `pemberitahuan` (`id`, `id_ukm`, `judul`, `isi`, `waktu`) VALUES
(1, 1, 'Mulai BBMK', '', '2018-10-13 01:21:58'),
(2, 1, 'Mulai BBMK', '', '2018-10-13 01:23:49'),
(3, 1, 'Mulai BBMK', '', '2018-10-13 01:24:30'),
(4, 1, 'Mulai BBMK', 'BBMK dilaksanakan mulai hari senin', '2018-10-13 01:25:34'),
(5, 1, 'Testing', 'nasjf safhajs fakjsfh askjfh asjfha sfkjhas fkajshf ajskfh asjfh asjfh asjkfh aksjfh aksjfh aksjfh akjsfh ajskhf as sdfsdgsdg fsadg', '2018-10-13 02:17:27'),
(6, 2, 'Testing Pemberitahuan', 'Ini adalah pemberitahuan untuk UKM PHP', '2018-10-13 02:27:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukm`
--

CREATE TABLE `ukm` (
  `id` int(3) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `deskripsi` text,
  `berdiri` date DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `visi` text,
  `misi` text,
  `kuota` varchar(40) DEFAULT '0',
  `logo` varchar(40) DEFAULT NULL,
  `motto` varchar(150) DEFAULT NULL,
  `nama_cp` varchar(40) DEFAULT NULL,
  `kontak_cp` varchar(14) DEFAULT NULL,
  `website` varchar(40) DEFAULT NULL,
  `facebook` varchar(40) DEFAULT NULL,
  `instagram` varchar(40) DEFAULT NULL,
  `gantiPassword` int(1) NOT NULL DEFAULT '0',
  `gantiKuota` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ukm`
--

INSERT INTO `ukm` (`id`, `nama`, `deskripsi`, `berdiri`, `username`, `password`, `visi`, `misi`, `kuota`, `logo`, `motto`, `nama_cp`, `kontak_cp`, `website`, `facebook`, `instagram`, `gantiPassword`, `gantiKuota`) VALUES
(1, 'Neo Telemetri', '<p>Neo Telemetri adalah ukm yang bergerak di bidang IT</p>', '0000-00-00', 'neo', '$2y$10$1k4PQnoIjDVYRR2y2TOdmO.j9owAFW/lDcd2bGdH78Eh5RsXBDc16', '', '', '0', '004623-neo.jpg', 'IT for the future', '', '', '', '', '', 0, 0),
(2, 'Pengenalan Hukum dan Politik', '', '0000-00-00', 'php', '$2y$10$XfZHp3lQEwJAk3QyoMNDV.9PEuybD3y8Cqc/aY.ILC9k/k6GdReAO', '', '', '0', NULL, '', '', '', '', '', '', 0, 0),
(3, 'Penalaran', 'Testing penalaran', '0000-00-00', 'penalaran', '$2y$10$xs5ODmpxRizIzcLoUF9scObjvXRkWzZeUWFHefbtkNH6XtG15SmsC', '', '', '100', NULL, '', '', '', '', '', '', 0, 0),
(5, 'KSR', '', '0000-00-00', 'ksr', '$2y$10$ta2efFQfy2wskh4yRWKkveLjaNQivTQfY5zwMugYkqlMB2ga71pRm', '', '', '', NULL, '', 'nama_cp', '', '', '', '', 0, 0),
(6, 'Pandekar', '<p>Bela diri</p>', '0000-00-00', 'pandekar', '$2y$10$PvLcVEMN/XRmiPI0ctjR4erXhCqppS1rqTGv7hvo4czdX3DVx23uW', '', '', '', '044428-pandekar.png', '', 'nama_cp', '', '', '', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ukm`
--
ALTER TABLE `ukm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ukm`
--
ALTER TABLE `ukm`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
