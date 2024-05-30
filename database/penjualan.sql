-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 07:06 PM
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
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `IdBarang` varchar(10) NOT NULL,
  `namaBarang` varchar(255) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `hargaBeli` bigint(20) DEFAULT NULL,
  `hargaJual` bigint(20) DEFAULT NULL,
  `stok` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`IdBarang`, `namaBarang`, `kategori`, `hargaBeli`, `hargaJual`, `stok`) VALUES
('A001', 'Indomie', 'Makanan', 3000, 3500, 100),
('A002', 'Sarimie', 'Makanan', 2500, 3000, 100),
('A003', 'Biskuit Roma', 'Makanan', 5000, 6000, 200),
('A004', 'Chitato', 'Makanan', 8000, 9500, 150),
('A005', 'SilverQueen', 'Makanan', 15000, 18000, 50),
('A006', 'Taro Net', 'Makanan', 7000, 8500, 100),
('A007', 'Good Time', 'Makanan', 10000, 12000, 75),
('A008', 'Nabati', 'Makanan', 6000, 7500, 90),
('A009', 'Kacang Garuda', 'Makanan', 5000, 6500, 120),
('A010', 'Pocky', 'Makanan', 12000, 15000, 60),
('A011', 'Tango', 'Makanan', 7000, 8500, 110),
('A012', 'Cheetos', 'Makanan', 6000, 7500, 130),
('A013', 'Pringles', 'Makanan', 25000, 30000, 40),
('A014', 'Malkist Crackers', 'Makanan', 4000, 5000, 180),
('A015', 'Cimory Yogurt', 'Makanan', 9000, 11000, 80),
('A016', 'Qtela', 'Makanan', 8000, 10000, 90),
('A017', 'Fitbar', 'Makanan', 7000, 9000, 100),
('A018', 'Oreo', 'Makanan', 8000, 9500, 160),
('A019', 'Marie Regal', 'Makanan', 15000, 18000, 70),
('A020', 'Lays', 'Makanan', 12000, 15000, 55),
('A021', 'Doritos', 'Makanan', 13000, 16000, 65),
('A022', 'Tango Wafer', 'Makanan', 10000, 12500, 95),
('A023', 'Sosis Sapi ABC', 'Makanan', 25000, 30000, 50),
('A024', 'Sosis Ayam Fiesta', 'Makanan', 22000, 27000, 60),
('A025', 'Sosis Frankfurter Champ', 'Makanan', 20000, 25000, 70),
('A026', 'Sosis Sardel Tanamera', 'Makanan', 30000, 35000, 40),
('A027', 'Sosis Bakar Daging Sapi Fiesta', 'Makanan', 28000, 33000, 35),
('A028', 'Nugget Ayam Fiesta', 'Makanan', 25000, 30000, 60),
('A029', 'Nugget Ayam McD', 'Makanan', 30000, 35000, 50),
('A030', 'Nugget Ayam Simpel', 'Makanan', 22000, 27000, 70),
('A031', 'Nugget Ayam Kartika Sari', 'Makanan', 20000, 25000, 80),
('A032', 'Nugget Sayur Greenleaf', 'Makanan', 28000, 33000, 45),
('A033', 'Bakso Sapi Malang Frozen', 'Makanan', 25000, 30000, 55),
('A034', 'Bakso Ayam Fiesta', 'Makanan', 22000, 27000, 65),
('A035', 'Bakso Solo Frozen', 'Makanan', 20000, 25000, 75),
('A036', 'Bakso Ikan ABC', 'Makanan', 28000, 33000, 40),
('A037', 'Bakso Rudal Frozen', 'Makanan', 30000, 35000, 35),
('A038', 'Kornet Sapi ABC', 'Makanan', 20000, 25000, 60),
('A039', 'Kornet Sapi Fiesta', 'Makanan', 18000, 23000, 70),
('A040', 'Kornet Sapi Champ', 'Makanan', 16000, 21000, 80),
('A041', 'Kornet Sapi Tanamera', 'Makanan', 22000, 27000, 50),
('A042', 'Kornet Sapi Sari Bundo', 'Makanan', 25000, 30000, 45),
('B001', 'Aqua', 'Minuman', 3000, 4000, 200),
('B002', 'Pocari Sweat', 'Minuman', 6000, 7500, 150),
('B003', 'Teh Botol Sosro', 'Minuman', 4000, 5000, 180),
('B004', 'Mizone', 'Minuman', 5000, 6500, 120),
('B005', 'Ultra Milk', 'Minuman', 8000, 9500, 100),
('B006', 'Minute Maid', 'Minuman', 7000, 8500, 130),
('B007', 'Fanta', 'Minuman', 6000, 7500, 110),
('B008', 'Coca Cola', 'Minuman', 6000, 7500, 115),
('B009', 'Sprite', 'Minuman', 6000, 7500, 105),
('B010', 'Nu Green Tea', 'Minuman', 5000, 6500, 140),
('B011', 'Fruit Tea', 'Minuman', 5000, 6500, 130),
('B012', 'Buavita', 'Minuman', 10000, 12000, 90),
('B013', 'Yogurt Cimory', 'Minuman', 12000, 15000, 80),
('B014', 'Indomilk', 'Minuman', 7000, 9000, 100),
('B015', 'Good Day', 'Minuman', 3000, 4500, 200),
('B016', 'Bear Brand', 'Minuman', 9000, 11000, 70),
('B017', 'Hemaviton', 'Minuman', 6000, 7500, 90),
('B018', 'Floridina', 'Minuman', 5000, 6500, 150),
('B019', 'Nestle Milo', 'Minuman', 8000, 10000, 60),
('B020', 'Es Teh Pucuk', 'Minuman', 4000, 5500, 170),
('B021', 'Walls Paddle Pop Classic', 'Minuman', 5000, 6000, 100),
('B022', 'Aisu Magnum Classic', 'Minuman', 10000, 12000, 50),
('B023', 'Haagen-Dazs Vanilla', 'Minuman', 25000, 30000, 20),
('B024', 'Cold Moo Mini Choco Chip', 'Minuman', 8000, 9600, 30),
('B025', 'Corona Vla Vanila', 'Minuman', 5000, 6000, 50),
('B026', 'Coca-Cola Classic (350 ml)', 'Minuman', 5000, 6000, 100),
('B027', 'Fanta Orange (350 ml)', 'Minuman', 5000, 6000, 100),
('B028', 'Sprite (350 ml)', 'Minuman', 5000, 6000, 100),
('B029', 'Pepsi Max (350 ml)', 'Minuman', 5000, 6000, 100),
('B030', 'A&W Rootbeer (350 ml)', 'Minuman', 7000, 8400, 50),
('B031', 'Minute Maid Orange Juice (250 ml)', 'Minuman', 10000, 12000, 50),
('B032', 'Tropicana Twister Orange (250 ml)', 'Minuman', 12000, 14400, 40),
('B033', 'Coco Fresh Coconut Water (250 ml)', 'Minuman', 15000, 18000, 30),
('B034', 'Del Monte Pineapple Juice (250 ml)', 'Minuman', 8000, 9600, 50),
('B035', 'ABC Guava Juice (250 ml)', 'Minuman', 9000, 10800, 40),
('B036', 'Bir Bintang (330 ml)', 'Minuman', 25000, 30000, 50),
('B037', 'Bir Anker Stout (330 ml)', 'Minuman', 30000, 36000, 30),
('B038', 'Anggur Merah Chateau Meroux (750 ml)', 'Minuman', 150000, 180000, 10),
('B039', 'Vodka Absolut (750 ml)', 'Minuman', 500000, 600000, 5),
('B040', 'Gin Bombay Sapphire (750 ml)', 'Minuman', 600000, 720000, 4),
('B041', 'Rum Bacardi Carta Blanca (750 ml)', 'Minuman', 700000, 840000, 3),
('B042', 'Tequila Jose Cuervo Gold (750 ml)', 'Minuman', 800000, 960000, 2),
('C001', 'Lifeboy Sabun Mandi', 'Kebutuhan Rumah', 12000, 15000, 100),
('C002', 'Pantene Shampoo', 'Kebutuhan Rumah', 25000, 30000, 80),
('C003', 'Sunlight Sabun Cuci Piring', 'Kebutuhan Rumah', 8000, 10000, 150),
('C004', 'Rinso Deterjen', 'Kebutuhan Rumah', 18000, 22000, 90),
('C005', 'Molto Pewangi', 'Kebutuhan Rumah', 10000, 13000, 120),
('C006', 'Pepsodent Pasta Gigi', 'Kebutuhan Rumah', 7000, 9000, 200),
('C007', 'Garnier Facial Wash', 'Kebutuhan Rumah', 20000, 25000, 60),
('C008', 'Dettol Antiseptik', 'Kebutuhan Rumah', 15000, 19000, 110),
('C009', 'Sunsilk Shampoo', 'Kebutuhan Rumah', 22000, 27000, 85),
('C010', 'Dove Conditioner', 'Kebutuhan Rumah', 23000, 28000, 75),
('C011', 'Bayclin Pemutih', 'Kebutuhan Rumah', 8000, 10000, 140),
('C012', 'Wipol Pembersih Lantai', 'Kebutuhan Rumah', 15000, 19000, 100),
('C013', 'Vaseline Lotion', 'Kebutuhan Rumah', 25000, 30000, 70),
('C014', 'S.O.S Pembersih Kamar Mandi', 'Kebutuhan Rumah', 10000, 13000, 130),
('C015', 'Mitu Baby Wipes', 'Kebutuhan Rumah', 15000, 18000, 95),
('C016', 'Downy Pewangi Pakaian', 'Kebutuhan Rumah', 12000, 15000, 110),
('C017', 'Zinc Shampoo', 'Kebutuhan Rumah', 18000, 22000, 80),
('C018', 'KlinTek Pembersih Kaca', 'Kebutuhan Rumah', 9000, 12000, 90),
('C019', 'Nuvo Sabun Mandi', 'Kebutuhan Rumah', 10000, 13000, 120),
('C020', 'Mama Lemon Sabun Cuci Piring', 'Kebutuhan Rumah', 8000, 10000, 150),
('C021', 'Garam Beryodium Cap Bintan', 'Kebutuhan Rumah', 5000, 6000, 100),
('C022', 'Garam Beryodium Cap Udang', 'Kebutuhan Rumah', 4500, 5500, 90),
('C023', 'Garam Beryodium Cap Bola Dunia', 'Kebutuhan Rumah', 6000, 7000, 80),
('C024', 'Garam Beryodium Cap Segitiga Biru', 'Kebutuhan Rumah', 7000, 8000, 70),
('C025', 'Garam Beryodium Himalaya', 'Kebutuhan Rumah', 10000, 12000, 50),
('C026', 'Gula Pasir Gulaku', 'Kebutuhan Rumah', 8000, 9000, 100),
('C027', 'Gula Pasir Indofood', 'Kebutuhan Rumah', 7500, 8500, 90),
('C028', 'Gula Pasir Sosro', 'Kebutuhan Rumah', 9000, 10000, 80),
('C029', 'Gula Pasir Diamon', 'Kebutuhan Rumah', 10000, 11000, 70),
('C030', 'Gula Pasir Tropicana Slim', 'Kebutuhan Rumah', 12000, 13000, 50),
('C031', 'Kecap Manis ABC', 'Kebutuhan Rumah', 12000, 13000, 100),
('C032', 'Kecap Manis Bango', 'Kebutuhan Rumah', 11000, 12000, 90),
('C033', 'Kecap Manis Indofood', 'Kebutuhan Rumah', 10000, 11000, 80),
('C034', 'Kecap Manis KoK', 'Kebutuhan Rumah', 13000, 14000, 70),
('C035', 'Kecap Manis Soya Joy', 'Kebutuhan Rumah', 15000, 16000, 50),
('C036', 'Saus Tiram ABC', 'Kebutuhan Rumah', 15000, 16000, 100),
('C037', 'Saus Tiram Bango', 'Kebutuhan Rumah', 14000, 15000, 90),
('C038', 'Saus Tiram Indofood', 'Kebutuhan Rumah', 13000, 14000, 80),
('C039', 'Saus Tiram KoK', 'Kebutuhan Rumah', 16000, 17000, 70),
('C040', 'Saus Tiram Soya Joy', 'Kebutuhan Rumah', 18000, 19000, 50),
('C041', 'Minyak Goreng Bimoli', 'Kebutuhan Rumah', 10000, 11000, 100),
('C042', 'Minyak Goreng Sania', 'Kebutuhan Rumah', 9500, 10500, 90),
('C043', 'Minyak Goreng Filma', 'Kebutuhan Rumah', 11000, 12000, 80),
('C044', 'Minyak Goreng Sunco', 'Kebutuhan Rumah', 12000, 13000, 70),
('C045', 'Minyak Goreng Canola Tropicana Slim', 'Kebutuhan Rumah', 15000, 16000, 50),
('C046', 'Beras Pandan Wangi Unifikasi', 'Kebutuhan Rumah', 12000, 13000, 100),
('C047', 'Beras IR64 K分明', 'Kebutuhan Rumah', 10000, 11000, 90),
('C048', 'Beras Benhil Super', 'Kebutuhan Rumah', 13000, 14000, 80),
('C049', 'Beras Aroman Susu', 'Kebutuhan Rumah', 15000, 16000, 70),
('C050', 'Beras Organik Merek Sehat', 'Kebutuhan Rumah', 20000, 21000, 50),
('C051', 'Beras Merah Organik Merek Sehat', 'Kebutuhan Rumah', 18000, 19000, 100),
('C052', 'Beras Merah Pandan Wangi Unifikasi', 'Kebutuhan Rumah', 15000, 16000, 90),
('C053', 'Beras Merah Pulen IR64', 'Kebutuhan Rumah', 13000, 14000, 80),
('C054', 'Beras Merah Hitam Super', 'Kebutuhan Rumah', 16000, 17000, 70),
('C055', 'Beras Merah Campur Merek Sehat', 'Kebutuhan Rumah', 22000, 23000, 50),
('C056', 'Ketan Putih Merek Sehat', 'Kebutuhan Rumah', 12000, 13000, 100),
('C057', 'Ketan Hitam Merek Sehat', 'Kebutuhan Rumah', 15000, 16000, 90),
('C058', 'Ketan Merah Merek Sehat', 'Kebutuhan Rumah', 18000, 19000, 80),
('C059', 'Ketan Gula Merah Merek Sehat', 'Kebutuhan Rumah', 20000, 21000, 70),
('C060', 'Ketan Pandan Merek Sehat', 'Kebutuhan Rumah', 22000, 23000, 50),
('C061', 'Nekon', 'Kebutuhan Rumah', 6000, 18000, 100),
('C062', 'Daia', 'Kebutuhan Rumah', 7000, 19000, 80),
('C063', 'Kleenex Facial Tissue', 'Kebutuhan Rumah', 12000, 35000, 50),
('C064', 'Paseo Facial Tissue', 'Kebutuhan Rumah', 10000, 30000, 60),
('C065', 'Softies Facial Tissue', 'Kebutuhan Rumah', 8000, 25000, 70),
('C066', 'Paseo Tisu Basah', 'Kebutuhan Rumah', 6000, 20000, 40),
('C067', 'Cussons Tisu Basah', 'Kebutuhan Rumah', 7000, 22000, 30),
('C068', 'Lizze Tisu Basah', 'Kebutuhan Rumah', 8000, 25000, 20),
('C069', 'Viva Tisu Dapur', 'Kebutuhan Rumah', 6000, 20000, 100),
('C070', 'Nice Tisu Dapur', 'Kebutuhan Rumah', 7000, 22000, 90),
('C071', 'So Klin Tisu Dapur', 'Kebutuhan Rumah', 8000, 25000, 80),
('C072', 'So Klin Pemutih', 'Kebutuhan Rumah', 8000, 22000, 50),
('C073', 'Clink Pemutih', 'Kebutuhan Rumah', 7000, 20000, 60),
('C074', 'Pino Pembersih Lantai', 'Kebutuhan Rumah', 10000, 28000, 40),
('C075', 'Vim Pembersih Lantai', 'Kebutuhan Rumah', 8000, 24000, 50),
('C076', 'Mr. Muscle Pembersih Lantai', 'Kebutuhan Rumah', 12000, 35000, 30),
('C077', 'Mapol Pembersih Lantai', 'Kebutuhan Rumah', 6000, 20000, 60),
('C078', 'WPC Pembersih Lantai', 'Kebutuhan Rumah', 8000, 22000, 40),
('C079', 'Wajan Teflon', 'Kebutuhan Rumah', 60000, 300000, 50),
('C080', 'Wajan Stainless Steel', 'Kebutuhan Rumah', 150000, 800000, 30),
('C081', 'Wajan Anti Lengket', 'Kebutuhan Rumah', 200000, 1000000, 20),
('C082', 'Pisau Solingen', 'Kebutuhan Rumah', 150000, 700000, 15),
('C083', 'Pisau Tupperware', 'Kebutuhan Rumah', 75000, 350000, 25),
('C084', 'Pisau Nirlon', 'Kebutuhan Rumah', 100000, 500000, 30),
('C085', 'Sendok & Garpu Stainless Steel', 'Kebutuhan Rumah', 30000, 150000, 40),
('C086', 'Sendok & Garpu Plastik', 'Kebutuhan Rumah', 15000, 75000, 60),
('C087', 'Sendok & Garpu Keramik', 'Kebutuhan Rumah', 40000, 200000, 25),
('C088', 'Bantal Kapuk', 'Kebutuhan Rumah', 60000, 300000, 50),
('C089', 'Bantal Memory Foam', 'Kebutuhan Rumah', 300000, 1500000, 20),
('C090', 'Bantal Microfiber', 'Kebutuhan Rumah', 150000, 750000, 35),
('C091', 'Selimut Fleece', 'Kebutuhan Rumah', 60000, 300000, 40),
('C092', 'Selimut Microfiber', 'Kebutuhan Rumah', 120000, 600000, 30),
('C093', 'Selimut Katun', 'Kebutuhan Rumah', 180000, 900000, 25),
('C094', 'Piring Keramik', 'Kebutuhan Rumah', 15000, 75000, 70),
('C095', 'Piring Melamin', 'Kebutuhan Rumah', 10000, 50000, 80),
('C096', 'Piring Kaca', 'Kebutuhan Rumah', 20000, 100000, 50),
('C097', 'Sarung Bantal Katun', 'Kebutuhan Rumah', 30000, 150000, 100),
('C098', 'Sarung Bantal Microfiber', 'Kebutuhan Rumah', 25000, 125000, 50),
('C099', 'Sarung Bantal Satin', 'Kebutuhan Rumah', 40000, 200000, 30),
('C100', 'Seprai Katun', 'Kebutuhan Rumah', 150000, 750000, 40),
('C101', 'Seprai Microfiber', 'Kebutuhan Rumah', 200000, 1000000, 30),
('C102', 'Seprai Tencel', 'Kebutuhan Rumah', 300000, 1500000, 20),
('D001', 'Centrum', 'Obat', 100000, 500000, 50),
('D002', 'Blackmores', 'Obat', 150000, 750000, 30),
('D003', 'Enervon-C', 'Obat', 50000, 250000, 75),
('D004', 'NutriBiotic', 'Obat', 75000, 375000, 40),
('D005', 'A-Z Multivitamin', 'Obat', 30000, 150000, 60),
('D006', 'Fish Oil', 'Obat', 100000, 500000, 35),
('D007', 'Glucosamine Chondroitin', 'Obat', 150000, 750000, 25),
('D008', 'Collagen', 'Obat', 200000, 1000000, 20),
('D009', 'Biotin', 'Obat', 75000, 375000, 45),
('D010', 'Probiotik', 'Obat', 50000, 250000, 55),
('E001', 'Pilot G2', 'Peralatan Sekolah', 15000, 75000, 50),
('E002', 'Pentel Energel', 'Peralatan Sekolah', 20000, 100000, 40),
('E003', 'Uni-ball Signo', 'Peralatan Sekolah', 25000, 125000, 35),
('E004', 'Zebra Sarasa', 'Peralatan Sekolah', 15000, 75000, 55),
('E005', 'Parker Jotter', 'Peralatan Sekolah', 100000, 500000, 20),
('E006', 'Faber-Castell', 'Peralatan Sekolah', 10000, 50000, 60),
('E007', 'Staedtler Mars Lumograph', 'Peralatan Sekolah', 15000, 75000, 50),
('E008', 'Pentel Graphgear', 'Peralatan Sekolah', 20000, 100000, 45),
('E009', 'Rotring Tikka', 'Peralatan Sekolah', 25000, 125000, 35),
('E010', 'Tombow Mono Graph', 'Peralatan Sekolah', 15000, 75000, 55),
('E011', 'HVS A4', 'Peralatan Sekolah', 10000, 50000, 70),
('E012', 'Kertas Foto', 'Peralatan Sekolah', 20000, 100000, 50),
('E013', 'Buku Tulis', 'Peralatan Sekolah', 5000, 25000, 80),
('E014', 'Kertas Karton', 'Peralatan Sekolah', 15000, 75000, 65),
('E015', 'Kertas Origami', 'Peralatan Sekolah', 10000, 50000, 70),
('E026', 'Tas Ransel', 'Peralatan Sekolah', 100000, 500000, 40),
('E027', 'Tas Selempang', 'Peralatan Sekolah', 50000, 250000, 50),
('E028', 'Tas Koper', 'Peralatan Sekolah', 200000, 1000000, 30),
('E029', 'Tas Tote Bag', 'Peralatan Sekolah', 75000, 375000, 55),
('E030', 'Tas Pouch', 'Peralatan Sekolah', 25000, 125000, 60),
('F001', 'Novel', 'Buku', 50000, 250000, 40),
('F002', 'Buku Non-Fiksi', 'Buku', 75000, 375000, 35),
('F003', 'Buku Anak', 'Buku', 30000, 150000, 50),
('F004', 'Buku Komik', 'Buku', 40000, 200000, 45),
('F005', 'Buku Pelajaran', 'Buku', 50000, 250000, 55),
('F006', 'Kamus', 'Buku', 100000, 500000, 30),
('F007', 'Ensiklopedi', 'Buku', 200000, 1000000, 20),
('F008', 'Buku Panduan', 'Buku', 75000, 375000, 40),
('F009', 'Buku Resep', 'Buku', 50000, 250000, 50),
('G001', 'Whiskas', 'Makanan Hewan', 20000, 100000, 50),
('G002', 'Royal Canin', 'Makanan Hewan', 30000, 150000, 40),
('G003', 'Me-O', 'Makanan Hewan', 15000, 75000, 55),
('G004', 'Pro Plan', 'Makanan Hewan', 40000, 200000, 35),
('G005', 'Science Hill', 'Makanan Hewan', 35000, 175000, 50),
('G006', 'Pedigree', 'Makanan Hewan', 25000, 125000, 60),
('G007', 'Smartheart', 'Makanan Hewan', 20000, 100000, 55),
('G008', 'Eukanuba', 'Makanan Hewan', 50000, 250000, 30),
('G009', 'Champion', 'Makanan Hewan', 30000, 150000, 50),
('H001', 'Teddy Bear', 'Mainan', 50000, 250000, 50),
('H002', 'Barbie', 'Mainan', 100000, 500000, 40),
('H003', 'Aksi Figure', 'Mainan', 150000, 750000, 35),
('H004', 'Boneka Bayi', 'Mainan', 75000, 375000, 55),
('H005', 'Boneka Hewan', 'Mainan', 50000, 250000, 60),
('H006', 'Bola Sepak', 'Mainan', 50000, 250000, 50),
('H007', 'Bola Basket', 'Mainan', 100000, 500000, 40),
('H008', 'Bola Voli', 'Mainan', 75000, 375000, 55),
('H009', 'Bola Tenis', 'Mainan', 50000, 250000, 60),
('H010', 'Bola Bekel', 'Mainan', 10000, 50000, 70),
('H011', 'Playdoh', 'Mainan', 72000, 75000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `noFaktur` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `idCustomer` varchar(10) NOT NULL,
  `totalBeli` bigint(20) NOT NULL,
  `namaCustomer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `noFaktur` varchar(20) NOT NULL,
  `idBarang` varchar(20) NOT NULL,
  `namaBarang` varchar(255) DEFAULT NULL,
  `jumlah` bigint(20) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`noFaktur`, `idBarang`, `namaBarang`, `jumlah`, `harga`, `total`) VALUES
('ILM0001', 'E028', 'Tas Koper', 1, 200000, 200000),
('ILM0001', 'F004', 'Buku Komik', 3, 40000, 120000),
('ILM0001', 'C049', 'Beras Aroman Susu', 1, 15000, 15000),
('ILM0002', 'C009', 'Sunsilk Shampoo', 4, 22000, 88000),
('ILM0001', 'A026', 'Sosis Sardel Tanamera', 4, 30000, 120000),
('ILM0001', 'B008', 'Coca Cola', 4, 6000, 24000),
('ILM0001', 'B009', 'Sprite', 6, 6000, 36000),
('ILM0001', 'H002', 'Barbie', 1, 100000, 100000),
('ILM0002', 'B004', 'Mizone', 6, 5000, 30000),
('ILM0003', 'C001', 'Lifeboy Sabun Mandi', 4, 12000, 48000),
('ILM0003', 'G009', 'Champion', 4, 30000, 120000),
('ILM0004', 'F004', 'Buku Komik', 1, 40000, 40000),
('ILM0004', 'H011', 'Playdoh', 3, 72000, 216000),
('ILM0005', 'B008', 'Coca Cola', 10, 6000, 60000),
('ILM0006', 'A007', 'Good Time', 3, 10000, 30000),
('ILM0007', 'G004', 'Pro Plan', 10, 40000, 400000),
('ILM0008', 'A016', 'Qtela', 30, 8000, 240000),
('ILM0009', 'H001', 'Teddy Bear', 3, 50000, 150000),
('ILM0009', 'G007', 'Smartheart', 5, 20000, 100000),
('ILM0009', 'A038', 'Kornet Sapi ABC', 10, 20000, 200000),
('ILM0010', 'C003', 'Sunlight Sabun Cuci Piring', 5, 8000, 40000),
('ILM0010', 'F004', 'Buku Komik', 3, 40000, 120000),
('ILM0010', 'A007', 'Good Time', 10, 10000, 100000),
('ILM0010', 'B011', 'Fruit Tea', 5, 5000, 25000),
('ILM0011', 'G001', 'Whiskas', 10, 20000, 200000),
('ILM0011', 'G003', 'Me-O', 5, 15000, 75000),
('ILM0012', 'A002', 'Sarimie', 3, 2500, 7500),
('ILM0012', 'H010', 'Bola Bekel', 3, 10000, 30000),
('ILM0012', 'B005', 'Ultra Milk', 3, 8000, 24000),
('ILM0012', 'C004', 'Rinso Deterjen', 5, 18000, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin1', '0192023a7bbd73250516f069df18b500', 'admin'),
(7, 'cashier1', 'dbb8c54ee649f8af049357a5f99cede6', 'cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`IdBarang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`noFaktur`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
