-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 02:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelatihan_flutter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` char(36) NOT NULL,
  `nama` varchar(250) NOT NULL DEFAULT '',
  `username` varchar(250) NOT NULL,
  `passphrase` varchar(3500) NOT NULL DEFAULT '',
  `token` varchar(3250) NOT NULL DEFAULT '',
  `status_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `passphrase`, `token`, `status_delete`, `created_at`, `updated_at`) VALUES
('1cdd3d45-f797-43d1-87bd-1c32af1f35c5', 'Jhon Andrea', 'admin', '$2b$10$myoI8E0UuARZU6/6/E8wXO1d1b0Ci3JkIGGEWkFAoL5apXUj2I4Ia', '', 0, '2024-12-10 04:00:02', '2024-12-10 04:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` char(36) NOT NULL,
  `nama` varchar(1500) NOT NULL DEFAULT '',
  `tempat_acara` varchar(1500) NOT NULL DEFAULT '',
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status_delete` tinyint(4) NOT NULL DEFAULT 0,
  `deskripsi` varchar(1500) NOT NULL DEFAULT '',
  `banner` varchar(1500) NOT NULL DEFAULT '',
  `prioritas` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nama`, `tempat_acara`, `waktu_mulai`, `waktu_selesai`, `created_at`, `updated_at`, `status_delete`, `deskripsi`, `banner`, `prioritas`) VALUES
('060fc866-973a-439d-b3bb-48b60f8c2d76', 'Festival Budaya Nusantara', 'Lapangan Supardi', '2024-12-30 06:00:00', '2024-12-30 20:00:00', '2024-12-11 15:57:41', '2024-12-11 15:57:41', 0, '2024-12-30 20:00:00', '', 0),
('1f89282a-1baa-4c36-8219-898387d28e67', 'Ceremonial', 'Gedung Graha', '2024-12-12 01:00:00', '2024-12-12 02:00:00', '2024-12-11 03:44:28', '2024-12-11 03:57:26', 0, '2024-12-12 02:00:00', '0193b3d1-73fa-7470-92a8-803964a5137b.jpeg', 1),
('2fbee329-d3c2-40fc-8075-8318f850d1c4', 'sdfs', 'sdfdsfs', '2024-12-11 11:00:00', '2024-12-11 12:00:00', '2024-12-11 03:41:21', '2024-12-11 03:57:19', 1, '2024-12-11 12:00:00', '0193b3ce-9781-756c-9982-eb6260a64a2b.jpeg', 0),
('8210b8c5-df63-4653-8d8b-91d7677f8b9d', 'ini', 'ini', '2024-12-11 18:00:00', '2024-12-11 19:00:00', '2024-12-11 03:51:40', '2024-12-11 03:56:49', 1, '2024-12-11 19:00:00', '', 1),
('93f1079d-3483-48d2-8a46-f20462793474', 'sdfs', 'sdfdsfs', '2024-12-12 01:00:00', '2024-12-12 02:00:00', '2024-12-11 03:54:19', '2024-12-11 03:56:42', 1, '2024-12-12 02:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` char(36) NOT NULL,
  `id_user` char(36) NOT NULL,
  `id_event` char(36) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `id_user`, `id_event`, `created_at`, `updated_at`, `status_delete`) VALUES
('03c07987-34b8-4a66-906b-6813d5af73fd', '69982320-35ea-42ea-bb6c-eb19cab601ff', '060fc866-973a-439d-b3bb-48b60f8c2d76', '2024-12-11 15:58:39', '2024-12-11 15:58:39', 0),
('85d9c9c4-f80b-4338-a648-1092fcea6852', '178ace87-187e-4c56-afaf-cd0e7b2881c0', '060fc866-973a-439d-b3bb-48b60f8c2d76', '2024-12-11 15:58:31', '2024-12-11 15:58:31', 0),
('c8445fd1-51b7-44f0-bc09-ec6717d3e904', 'aeb52774-74d2-4bcf-8a9a-6000f7131238', '060fc866-973a-439d-b3bb-48b60f8c2d76', '2024-12-11 15:58:46', '2024-12-11 15:58:46', 0),
('e685deff-18e1-4147-a014-9f3b8fa08f17', 'aeb52774-74d2-4bcf-8a9a-6000f7131238', '1f89282a-1baa-4c36-8219-898387d28e67', '2024-12-11 07:02:33', '2024-12-11 07:04:42', 0),
('eea8ee07-0f03-4c5c-af6a-b55bd86db215', '69982320-35ea-42ea-bb6c-eb19cab601ff', '1f89282a-1baa-4c36-8219-898387d28e67', '2024-12-11 07:14:17', '2024-12-11 07:14:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` char(36) NOT NULL,
  `nama` varchar(250) NOT NULL DEFAULT '',
  `no_hp` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL,
  `passphrase` varchar(3500) NOT NULL DEFAULT '',
  `token` varchar(3250) NOT NULL DEFAULT '',
  `status_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `no_hp`, `email`, `passphrase`, `token`, `status_delete`, `created_at`, `updated_at`) VALUES
('178ace87-187e-4c56-afaf-cd0e7b2881c0', 'Carlo Weiss', '08933118324343', 'weiss@mail.com', '$2b$10$vCxCjlopVAxCPQ/MuTFsIexOYRoIR1aT//1j11vSE6AIjG1pZURyq', '', 0, '2024-12-11 07:11:27', '2024-12-11 07:11:27'),
('69982320-35ea-42ea-bb6c-eb19cab601ff', 'Edie Harris', '08933628324343', 'harris@mail.com', '$2b$10$XpoXm6e69jpek6nDVjnZwez9dYyMowwf/KE5YueKzuQ1dof/gKmDe', '', 0, '2024-12-11 07:11:33', '2024-12-11 07:11:33'),
('aeb52774-74d2-4bcf-8a9a-6000f7131238', 'Richard Carlos', '08933628973', 'richard@mail.com', '$2b$10$UoYOVFq9Wr7QG7RG6qY.KuyXyqTrZbKi0BjMVp1UHBnzQTOyySywe', '', 0, '2024-12-10 13:53:06', '2024-12-10 13:53:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
