-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_emisi_karbon
CREATE DATABASE IF NOT EXISTS `db_emisi_karbon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_emisi_karbon`;

-- Dumping structure for table db_emisi_karbon.carbonfootprint
CREATE TABLE IF NOT EXISTS `carbonfootprint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jenis_kendaraan` enum('bus sedang','kereta listrik','minibus','mobil diesel','mobil gasoline','sepeda motor') NOT NULL,
  `jarak_tempuh_km` float NOT NULL,
  `jumlah_orang` int NOT NULL,
  `frekuensi` varchar(50) NOT NULL,
  `jejak_karbon` enum('Harian','Bulanan','Tahunan') NOT NULL,
  `hasil_emisi_kg` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_emisi_karbon.carbonfootprint: ~4 rows (approximately)
INSERT INTO `carbonfootprint` (`id`, `jenis_kendaraan`, `jarak_tempuh_km`, `jumlah_orang`, `frekuensi`, `jejak_karbon`, `hasil_emisi_kg`) VALUES
	(1, 'mobil gasoline', 5, 5, 'Tahunan', 'Tahunan', 12168),
	(2, 'mobil gasoline', 5, 6, 'Tahunan', 'Tahunan', 14601.6),
	(3, 'mobil diesel', 56, 5, 'Tahunan', 'Harian', 2184),
	(4, 'kereta listrik', 15, 200, 'Mingguan', 'Harian', 354),
	(5, 'kereta listrik', 15, 15, 'Mingguan', 'Harian', 26.55),
	(6, 'bus sedang', 45, 23, 'Bulanan', 'Tahunan', 19375.2),
	(7, 'kereta listrik', 123, 321, '7Hari', 'Bulanan', 130452);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
