-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2021 pada 15.53
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_Pembeli` varchar(4) NOT NULL,
  `cs_merkMobil` varchar(50) NOT NULL,
  `cs_typeMobil` varchar(50) NOT NULL,
  `cs_namaMobil` varchar(50) NOT NULL,
  `cs_warnaMobil` varchar(50) NOT NULL,
  `cs_Transmisi` varchar(50) NOT NULL,
  `cs_Mesin` varchar(50) NOT NULL,
  `cs_TahunProduksi` int(4) NOT NULL,
  `cs_Harga` int(50) NOT NULL,
  `cs_Nama` varchar(50) NOT NULL,
  `cs_tlpn` int(50) NOT NULL,
  `cs_ktp` int(50) NOT NULL,
  `cs_alamat` varchar(50) NOT NULL,
  `cs_jumlahBarang` int(11) NOT NULL,
  `cs_totalBayar` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_Pembeli`, `cs_merkMobil`, `cs_typeMobil`, `cs_namaMobil`, `cs_warnaMobil`, `cs_Transmisi`, `cs_Mesin`, `cs_TahunProduksi`, `cs_Harga`, `cs_Nama`, `cs_tlpn`, `cs_ktp`, `cs_alamat`, `cs_jumlahBarang`, `cs_totalBayar`) VALUES
('AA01', 'Honda', 'Sedan', 'Accord', 'Hitam', 'Otomatis', '2400cc', 2019, 729000000, 'Muhammad Kelana', 1234567890, 317101234, 'JL. Mars', 2, 1458000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamobil`
--

CREATE TABLE `datamobil` (
  `kodeMobil` varchar(8) NOT NULL,
  `merekMobil` varchar(25) NOT NULL,
  `typeMobil` varchar(25) NOT NULL,
  `namaMobil` varchar(30) NOT NULL,
  `warna` varchar(15) NOT NULL,
  `transmisi` varchar(25) NOT NULL,
  `mesin` varchar(8) NOT NULL,
  `tahunProduksi` varchar(4) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlahStok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datamobil`
--

INSERT INTO `datamobil` (`kodeMobil`, `merekMobil`, `typeMobil`, `namaMobil`, `warna`, `transmisi`, `mesin`, `tahunProduksi`, `harga`, `jumlahStok`) VALUES
('HD01', 'Honda', 'Sedan', 'Accord', 'Hitam', 'Otomatis', '2400cc', '2019', '729000000', '7'),
('HD02', 'Honda', 'SUV', 'BR-V', 'Merah', 'Otomatis, Manual', '1497cc', '2015', '248900000', '5'),
('TY01', 'Toyota', 'Coupe', '86', 'Merah', 'Otomatis, Manual', '1998cc', '2012', '775750000', '5'),
('TY02', 'Toyota', 'LCGC', 'Agya', 'Silver', 'Otomatis, Manual', '1200cc', '2013', '14380000', '5');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_Pembeli`);

--
-- Indeks untuk tabel `datamobil`
--
ALTER TABLE `datamobil`
  ADD PRIMARY KEY (`kodeMobil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
