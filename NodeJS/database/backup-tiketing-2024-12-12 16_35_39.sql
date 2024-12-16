-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.4.3-MariaDB-ubu2404 - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table tiketing.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` char(36) NOT NULL,
  `nama` varchar(250) NOT NULL DEFAULT '',
  `username` varchar(250) NOT NULL,
  `passphrase` varchar(3500) NOT NULL DEFAULT '',
  `token` varchar(3250) NOT NULL DEFAULT '',
  `status_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table tiketing.admin: ~0 rows (approximately)
DELETE FROM `admin`;
INSERT INTO `admin` (`id_admin`, `nama`, `username`, `passphrase`, `token`, `status_delete`, `created_at`, `updated_at`) VALUES
	('1cdd3d45-f797-43d1-87bd-1c32af1f35c5', 'Jhon Andrea', 'admin', '$2b$10$myoI8E0UuARZU6/6/E8wXO1d1b0Ci3JkIGGEWkFAoL5apXUj2I4Ia', '', 0, '2024-12-10 04:00:02', '2024-12-10 04:00:02');

-- Dumping structure for table tiketing.event
CREATE TABLE IF NOT EXISTS `event` (
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
  `prioritas` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table tiketing.event: ~5 rows (approximately)
DELETE FROM `event`;
INSERT INTO `event` (`id_event`, `nama`, `tempat_acara`, `waktu_mulai`, `waktu_selesai`, `created_at`, `updated_at`, `status_delete`, `deskripsi`, `banner`, `prioritas`) VALUES
	('060fc866-973a-439d-b3bb-48b60f8c2d76', 'Festival Budaya Nusantara', 'Lapangan Supardi', '2024-12-30 06:00:00', '2024-12-30 20:00:00', '2024-12-11 15:57:41', '2024-12-11 15:57:41', 0, '2024-12-30 20:00:00', '', 0),
	('1f89282a-1baa-4c36-8219-898387d28e67', 'Ceremonial', 'Gedung Graha', '2024-12-12 01:00:00', '2024-12-12 02:00:00', '2024-12-11 03:44:28', '2024-12-11 03:57:26', 0, '2024-12-12 02:00:00', '0193b3d1-73fa-7470-92a8-803964a5137b.jpeg', 1),
	('2fbee329-d3c2-40fc-8075-8318f850d1c4', 'sdfs', 'sdfdsfs', '2024-12-11 11:00:00', '2024-12-11 12:00:00', '2024-12-11 03:41:21', '2024-12-11 03:57:19', 1, '2024-12-11 12:00:00', '0193b3ce-9781-756c-9982-eb6260a64a2b.jpeg', 0),
	('8210b8c5-df63-4653-8d8b-91d7677f8b9d', 'ini', 'ini', '2024-12-11 18:00:00', '2024-12-11 19:00:00', '2024-12-11 03:51:40', '2024-12-11 03:56:49', 1, '2024-12-11 19:00:00', '', 1),
	('93f1079d-3483-48d2-8a46-f20462793474', 'sdfs', 'sdfdsfs', '2024-12-12 01:00:00', '2024-12-12 02:00:00', '2024-12-11 03:54:19', '2024-12-11 03:56:42', 1, '2024-12-12 02:00:00', '', 0);

-- Dumping structure for table tiketing.peserta
CREATE TABLE IF NOT EXISTS `peserta` (
  `id_peserta` char(36) NOT NULL,
  `id_user` char(36) NOT NULL,
  `id_event` char(36) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status_delete` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_peserta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table tiketing.peserta: ~4 rows (approximately)
DELETE FROM `peserta`;
INSERT INTO `peserta` (`id_peserta`, `id_user`, `id_event`, `created_at`, `updated_at`, `status_delete`) VALUES
	('03c07987-34b8-4a66-906b-6813d5af73fd', '69982320-35ea-42ea-bb6c-eb19cab601ff', '060fc866-973a-439d-b3bb-48b60f8c2d76', '2024-12-11 15:58:39', '2024-12-11 15:58:39', 0),
	('85d9c9c4-f80b-4338-a648-1092fcea6852', '178ace87-187e-4c56-afaf-cd0e7b2881c0', '060fc866-973a-439d-b3bb-48b60f8c2d76', '2024-12-11 15:58:31', '2024-12-11 15:58:31', 0),
	('c8445fd1-51b7-44f0-bc09-ec6717d3e904', 'aeb52774-74d2-4bcf-8a9a-6000f7131238', '060fc866-973a-439d-b3bb-48b60f8c2d76', '2024-12-11 15:58:46', '2024-12-11 15:58:46', 0),
	('e685deff-18e1-4147-a014-9f3b8fa08f17', 'aeb52774-74d2-4bcf-8a9a-6000f7131238', '1f89282a-1baa-4c36-8219-898387d28e67', '2024-12-11 07:02:33', '2024-12-11 07:04:42', 0),
	('eea8ee07-0f03-4c5c-af6a-b55bd86db215', '69982320-35ea-42ea-bb6c-eb19cab601ff', '1f89282a-1baa-4c36-8219-898387d28e67', '2024-12-11 07:14:17', '2024-12-11 07:14:17', 0);

-- Dumping structure for table tiketing.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` char(36) NOT NULL,
  `nama` varchar(250) NOT NULL DEFAULT '',
  `no_hp` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL,
  `passphrase` varchar(3500) NOT NULL DEFAULT '',
  `token` varchar(3250) NOT NULL DEFAULT '',
  `status_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table tiketing.user: ~3 rows (approximately)
DELETE FROM `user`;
INSERT INTO `user` (`id_user`, `nama`, `no_hp`, `email`, `passphrase`, `token`, `status_delete`, `created_at`, `updated_at`) VALUES
	('178ace87-187e-4c56-afaf-cd0e7b2881c0', 'Carlo Weiss', '08933118324343', 'weiss@mail.com', '$2b$10$vCxCjlopVAxCPQ/MuTFsIexOYRoIR1aT//1j11vSE6AIjG1pZURyq', '', 0, '2024-12-11 07:11:27', '2024-12-11 07:11:27'),
	('69982320-35ea-42ea-bb6c-eb19cab601ff', 'Edie Harris', '08933628324343', 'harris@mail.com', '$2b$10$XpoXm6e69jpek6nDVjnZwez9dYyMowwf/KE5YueKzuQ1dof/gKmDe', '', 0, '2024-12-11 07:11:33', '2024-12-11 07:11:33'),
	('aeb52774-74d2-4bcf-8a9a-6000f7131238', 'Richard Carlos', '08933628973', 'richard@mail.com', '$2b$10$UoYOVFq9Wr7QG7RG6qY.KuyXyqTrZbKi0BjMVp1UHBnzQTOyySywe', '', 0, '2024-12-10 13:53:06', '2024-12-10 13:53:06');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
