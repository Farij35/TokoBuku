-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 07:42 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookbruh`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `idbuku` int(5) NOT NULL,
  `namabuku` varchar(100) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `harga` int(10) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `link` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`idbuku`, `namabuku`, `sinopsis`, `harga`, `gambar`, `link`) VALUES
(1, 'I Am A Cat', '\"Aku seekor kucing. Sampai saat ini, aku tidak punya nama. Aku tidak ingat tempat lahirku. Namun, aku ingat pertama kali bertemu manusia saat sedang mengeong-ngeong di tempat gelap dan basah. Belakangan kudengar dia manusia ditakuti kucing. Dia seorang shosei; pelajar yang tinggal menumpang di suatu rumah dan membantu pekerjaan rumah tangga di tempat itu. Dia sering menangkap kucing, lalu memasak dan memakannya. Namun, karena saat itu aku belum tahu soal ini, jadi aku tidak takut sama sekali.', 149000, 'https://cdn.gramedia.com/uploads/items/9786237778547.jpg', 'https://www.gramedia.com/products/i-am-a-cat?queryID=cc9737a59a547cd7697adbe7bae32199'),
(2, 'Lukacita', 'Untuk mereka yang berhasil menggapai cita-cita, tetapi masih terluka karenanya. Lukacita bercerita tentang para pemimpi yang dikhianati cita-cita mereka sendiri. Ada seorang pendiri perusahaan startup idealis bernama Javier dan seorang mantan atlet catur penakut bernama Utara. Saat mereka hampir menyerah untuk memperjuangkan apa yang mereka cita-citakan selama ini, mereka bertemu untuk belajar memaafkan keadaan.', 125000, 'https://cdn.gramedia.com/uploads/items/Lukacita_Depan.jpg', 'https://www.gramedia.com/products/lukacita?queryID=0a60d2f35d067fc1c513e79fb7505b3b'),
(3, 'Bedebah Di Ujung Tanduk', 'Di Negeri Para Bedebah, pencuri, perampok, bagai musang berbulu domba. Di depan, wajah mereka tersenyum penuh pencitraan. Di belakang penuh tipu-tipu.', 89000, 'https://cdn.gramedia.com/uploads/items/9786239726218.jpg', 'https://www.gramedia.com/products/bedebah-di-ujung-tanduk?queryID=51da484a07bbdd9563f8d203ada71682'),
(4, 'Lima Sekawan: Di Pulau Harta', '\"Lima Sekawan adalah Julian, Dick, George, Anne, dan—tentu saja—Timmy! Ke mana pun mereka pergi pasti ada petualangan yang seru dan mengasyikkan!', 43000, 'https://cdn.gramedia.com/uploads/items/9786020321295_Lima-Sekawan_Di-Pulau-Harta.jpg', 'https://www.gramedia.com/products/lima-sekawan-di-pulau-harta?queryID=468f2f1b3afb31675bc3c2141da6b4bc'),
(5, 'Erlangga Fokus US 2022 Smp/Mts', 'Halo Pemuda-pemuda pelajar SMP/MTs di seluruh Indonesia, Erlangga Fokus US SMP/MTs 2022 hadir sebagai pendamping unggulan menjelang US 2022. Semakin dini persiapan dilakukan, semakin siap kalian menghadapi US sesungguhnya.', 145000, 'https://cdn.gramedia.com/uploads/items/9786232665347.jpg', 'https://www.gramedia.com/products/erlangga-fokus-us-2022-smpmts?queryID=eb01ae2266e00162c0b1ec60f52ef42b');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `namabuku` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-12-16-012814', 'App\\Database\\Migrations\\Buku', 'default', 'App', 1639618738, 1),
(2, '2021-12-16-013955', 'App\\Database\\Migrations\\Pengguna', 'default', 'App', 1639619065, 2),
(3, '2021-12-17-071724', 'App\\Database\\Migrations\\Keranjang', 'default', 'App', 1639725570, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `namadepan` varchar(100) NOT NULL,
  `namabelakang` varchar(100) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`username`, `email`, `password`, `namadepan`, `namabelakang`, `notelp`, `alamat`, `foto`, `created_at`, `updated_at`) VALUES
('Farij39', 'farijaltafsyah65@gmail.com', '$2y$10$PLirDUK0ZvFeLv39SgWQLOoNVvMNhdTztTD/uGzQNltf9XonAWQFW', 'Farij', 'Altafsyah', '123456', 'Kp. Buaran Gardu RT 003/02', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbPabi5fjBTs2n7KSF-JWRh-fWpw8ce6MWuw&usqp=CAU', '2021-12-16 22:11:16', '2021-12-16 22:11:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
