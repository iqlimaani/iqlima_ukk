-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2023 pada 09.30
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengadu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `username`, `password`, `no_telp`, `level`) VALUES
(10, 'Iqlima Ani Yusuf', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '082338990881', 1),
(17, 'pirda', 'petugas3', '827ccb0eea8a706c4c34a16891f84e7b', '0812345678964', 2),
(21, 'wahyu', 'petugas2', '827ccb0eea8a706c4c34a16891f84e7b', '0852341237890', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_masyarakat`
--

CREATE TABLE `tbl_masyarakat` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_masyarakat`
--

INSERT INTO `tbl_masyarakat` (`nik`, `nama`, `username`, `password`, `no_telp`, `aktif`) VALUES
('1923456789876565', 'iqlima', 'wahyu', '827ccb0eea8a706c4c34a16891f84e7b', '098989878765', 1),
('2765195650825125', 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '083410834197', 1),
('5676543212345654', 'iqlima', 'iqlima', '827ccb0eea8a706c4c34a16891f84e7b', '087876543443', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengaduan`
--

CREATE TABLE `tbl_pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(20) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tanggapan`
--

CREATE TABLE `tbl_tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_masyarakat`
--
ALTER TABLE `tbl_masyarakat`
  ADD PRIMARY KEY (`nik`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indeks untuk tabel `tbl_tanggapan`
--
ALTER TABLE `tbl_tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pengaduan` (`id_pengaduan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  ADD CONSTRAINT `tbl_pengaduan_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `tbl_masyarakat` (`nik`);

--
-- Ketidakleluasaan untuk tabel `tbl_tanggapan`
--
ALTER TABLE `tbl_tanggapan`
  ADD CONSTRAINT `tbl_tanggapan_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
