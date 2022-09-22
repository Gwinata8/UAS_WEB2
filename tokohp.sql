-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 08:43 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokohp`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksesoris`
--

CREATE TABLE `aksesoris` (
  `id` varchar(3) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aksesoris`
--

INSERT INTO `aksesoris` (`id`, `nama`, `merk`, `harga`) VALUES
('301', 'Earphone', 'Xiaomi', 'Rp 199.000'),
('302', 'Tempered Glass', 'Rhyno', 'Rp 80.000'),
('303', 'Casing', 'Rhyno', 'Rp 100.000'),
('304', 'Power Bank', 'Miniso', 'Rp 150.000'),
('305', 'Airpods', 'Apple', 'Rp 1.050.000'),
('306', 'Kabel Charger', 'Samsung', 'Rp 51.000');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `artikel` mediumtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `sumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `artikel`, `gambar`, `sumber`) VALUES
(1, 'Xiaomi Mi 11 Bakal Dirilis pada Januari 2021', 'Liputan6.com, Jakarta - Xiaomi disebutkan bakal mengungkap lini smartphone terbarunya pada Januari 2021. Jelang peluncuran, sejumlah informasi soal ponsel baru milik perusahaan itu pun makin marak beredar.\r\n\r\nBersamaan dengan acara Samsung dan CES 2021, perusahaan asal Tiongkok tersebut akan mengungkap kehadiran flagship teranyarnya, yaitu Mi 11 (nama masih tentatif).\r\n\r\nDikutip dari akun Twitter leaker Digital Chat Station, Selasa (1/12/2020), Xiaomi Mi 11 saat ini sudah didaftarkan, dan diprediksi akan melakukan debut pada bulan pertama 2021.\r\n\r\nBila memang kabar ini benar, berarti pengumuman seri Mi 11 akan terjadi 1 bulan lebih awal dari biasanya Xiaomi mengungkap lini flagship-nya. Informasi, Xiaomi Mi 10 dan Mi 9 diungkap pada Februari 2020 dan 2019.\r\n\r\nSelain Xiaomi, Januari 2021 akan dipakai oleh sejumlah vendor smartphone lainnya untuk mengungkap ponsel baru mereka. Salah satunya adalah Samsung dengan Galaxy S21.\r\n\r\nXiaomi disebut akan menjadi salah satu perusahaan pertama yang akan menggunakan chipset Snapdragon 875. Menurut bocoran, chipset ini akan digunakan pada Mi 11 dan Mi 11 Pro.\r\n\r\nNamun dari bocoran terbaru, informasi lain seputar smartphone ini mulai terungkap, terutama untuk varian Mi 11 Pro. Dikutip dari GSM Arena, Selasa (17/11/2020), varian Pro akan hadir dengan resolusi QHD Plus dan memiliki refresh rate 120Hz.\r\n\r\nApabila bocoran ini benar, layar Xiaomi dipastikan mengusung peningkatan yang cukup signifikan di Mi 11 Pro dibandingkan Mi 10 Pro. Sebab, Mi 10 Pro hanya memiliki resolusi 1080 piksel dan refresh rate 90Hz.\r\n\r\nSelain itu, dari bocoran baru ini juga disebutkan kamera selfie Mi 11 Pro akan berada di pojok kiri atas layar dan memiliki layar dengan panel melengkung. Desain ini ini sebenarnya masih mirip dengan Mi 10 Pro.\r\n\r\nBerdasarkan bocoran dari Digital Chat Station, varian Mi 11 Pro memiliki kamera utama 50MP dan 12MP untuk telephoto. Namun untuk resolusi 12MP, ia tidak begitu yakin.\r\n\r\nDari sisi software, MIUI 12 sudah mendukung MEMC dan peningkatan AI HDR. Hal ini diketahui berdasarkan screenshot dari firmware beta internal.\r\n\r\nAdapun Xiaomi dilaporkan sedang menyiapkan sejumlah fitur yang akan meningkatkan kualitas foto dan video. Berkat AI, kamera ponsel Xiaomi disebut akan mampu mendeteksi obyek dan memberikan efek HDR yang dibutuhkan.', 'mi11.png', 'liputan6.com'),
(2, 'Mengawali Tahun, Ini 7 HP Terbaru Rilis Januari 2021', '2021 sudah hadir. Ini waktunya move-on dari mereka yang sudah hadir di masa lalu dan menyambut mereka yang baru. Dalam isu ini, yang dimaksud adalah smartphone. Umumnya jika memasuki Januari, banyak produsen yang berlomba memperebutkan gelar smartphone pertama di tahun tersebut.\r\n\r\nNamun di tahun ini sepertinya tidak terlalu banyak. Ada beberapa nama yang diperkirakan akan hadir di bulan yang mengawali 2021 ini. Berikut adalah beberapa produknya.\r\n\r\n1. OPPO Reno5\r\n\r\nSebagai seri andalan, OPPO tidak main-main dalam memberikan spesifikasi pada smartphone ini. Desain dan warna Reno5 masih dibalut dengan warna-warna terang yang indah dan memukau. Seharusnya secara keseluruhan spesifikasi, Reno5 tidak akan jauh dari Reno4 yang berarti harganya diperkirakan jatuh di angka Rp5 juta.\r\n\r\n2. Samsung Galaxy A02s\r\n\r\nIni tidak salah tulis. Bukan A20s, tetapi A02s. Smarphone Samsung ini baru meluncur per 4 Januari dengan harga di bawah Rp2 juta mengingat situs resminya sendiri baru meluncurkan A02s beberapa jam sebelum tulisan ini keluar.\r\n\r\nBaterainya cukup besar untuk barang di kelasnya, yaitu 5.000mAh. Tetapi untuk prosesornya sendiri masih belum diketahui akan menggunakan apa.\r\n\r\n3. Xiaomi Mi 11\r\n\r\nPeluncuran Mi 10T menyita banyak perhatian mengingat harganya yang sangat jauh di bawah harga pasar. Tetapi banyak orang tidak peka bahwa kehadiran Mi 10T juga menunjukkan Xiaomi sedang bersiap-siap untuk meluncurkan produk terbarunya. Jika benar-benar terwujud, besar kemungkinan Mi 11 akan diumumkan pada penghujung Januari.\r\n\r\n\r\n4. vivo X60\r\n\r\nSudah banyak rumor yang keluar terkait smartphone ini mengingat produk tersebut sudah diumumkan untuk pasar Tiongkok. Pre-order di sana bakal dibuka per 8 Januari mendatang.\r\n\r\nMelihat dari tanggalnya tersebut, bisa jadi vivo X60 akan hadir di Indonesia menggantikan X50 pada pertengahan atau akhir Januari ini. Harganya? Diperkirakan Rp8 juta sampai Rp10 juta.\r\n\r\n5. realme X7\r\n\r\nrealme X7 sudah diperkenalkan sejak Q3 2020 di Tiongkok, tepatnya pada September lalu. Perlahan-lahan produk ini menyebar dan baru pada Desember tiba di Thailand.\r\n\r\nBerita ini bisa menjadi rujukan realme X7 juga bakal hadir di Indonesia pada Januari ini. Menilik dari pasar di sana yang berharga Rp8 jutaan, X7 bisa datang dengan harga lebih rendah di sini.\r\n\r\n6. realme 8\r\n\r\nBukan hanya X7 saja, rumor-rumor mengatakan realme mempersiapkan realme 8-nya. Jika bukan X7 yang keluar, maka realme 8-lah yang menggantikannya. Mengingat seri realme ini dipercaya sebagai seri terbaik yang paling sering ditawarkan dengan harga yang cocok untuk pasar Indonesia di rentan Rp5 juta, kamu perlu memperhatikan kehadiran smartphone satu ini.\r\n\r\n\r\n7. Samsung Galaxy A22\r\n\r\nSamsung sedang gila-gilanya memproduksi seri A mengingat seri ini memang banyak diminati orang. Selain A02s, Samsung berencana mengeluarkan A22 yang mana diakui akan menjadi smartphone 5G paling terjangkau pertama yang pernah ada.\r\n\r\nPaling terjangkau mengingat harga yang diberikan diperkirakan di rentan Rp2 jutaan. Banyak yang mengharapkan Januari, tapi bisa jadi di bulan-bulan ke depannya.\r\n\r\nBeberapa smartphone di daftar ini sudah dipastikan bakal masuk di Januari. Lainnya masih berupa rumor dan hanya bisa ditunggu kabarnya saja. Santai saja. Umumnya ketika masuk pertengahan, akan hadir pula smartphone yang tidak terperkirakan. Jadi tunggu saja dengan tenang.', '2.jpg', 'idntimes.com'),
(3, 'Spesifikasi dan Fitur Airpods Max, Headphone Apple Terbaru', 'tirto.id - Apple merilis produk headphone terbarunya, AirPods Max. Headphone dengan desain over-ear itu resmi diperkenalkan oleh Apple pada 9 Desember 2020. Produk ini bisa dipesan mulai pertengahan bulan ini, dengan harga 549 dolar AS (sekitar Rp7,7 juta) \r\n\r\n\"Dengan AirPods Max, kami membawa pengalaman ajaib AirPods ke desain menakjubkan over-ear dengan kualitas suara tinggi,\" kata wakil direktur senior pemasaran internasional Apple, Greg Joswiak, dalam siaran pers di blog resmi Apple. \r\n\r\nSeri AirPods yang sebelumnya beredar di pasaran memiliki desain kecil sehingga bisa diselipkan di cuping telinga. Sementara AirPods Max menutupi seluruh telinga, dengan pengait yang melingkari kepala. \r\n\r\nAirPods Max dilengkapi bantalan telinga (ear cushion), menggunakan busa khusus yang dirancang untuk mendukung kualitas suara dan meredamnya di sekitar telinga. \r\n\r\nKontrol untuk suara, termasuk volume, menyalakan dan mematikan, serta tombol untuk menjawab telepon, dan asisten virtual Siri disematkan di headphone ini. Apple menyebut kontrol itu sebagai Digital Crown, yang terinspirasi dari Apple Watch.\r\n\r\nAirPods Max menggunakan chip H1 di masing-masing pengeras suara, dilengkapi dengan teknologi komputasi untuk menghasilkan audio berkualitas. \r\n\r\nFitur-fitur yang disematkan di AirPods Max antara lain berupa Active Noise Cancellation, Adaptive EQ dan mode transparan.\r\n\r\nHeadphone Apple terbaru ini juga mempunyai fitur ganti otomatis (automatic switching) yang bisa digunakan saat pengguna berganti perangkat antara iPhone, Mac dan iPad. \r\n\r\nSementara asisten virtual Siri pada perangkat ini bisa digunakan untuk memutar musik, mengatur volume, dan membaca pesan masuk dengan fitur Announce Message with Siri.\r\n\r\nDaya AirPods Max diklaim mampu bertahan hingga 20 jam dalam sekali pengisian penuh, meski dipakai untuk mendengarkan musik selama itu. \r\n\r\nAirPods Max pun hadir dengan Smart Case, bungkusan pelindung headphone yang bisa membantu penghematan daya baterai saat tidak digunakan. Selain itu, ada lima varian warna AirPods Max, yakni space gray, silver, sky blue, hijau, dan merah muda. \r\n\r\nPerangkat ini bisa disambungkan ke iPhone dengan iOS minimal 14.3, iPad dengan iPad OS 14.3 ke atas, MacBook sistem macOS Big Sur 11.1, Apple TV tvOS 14.3, dan Apple Watch watchOS 7.2, atau sistem iOS yang lebih baru.\r\n\r\nPenulis: Putri Avi Nursasi \r\nEditor: Addi M Idhom\r\n\r\n\r\nBaca selengkapnya di artikel \"Spesifikasi dan Fitur Airpods Max, Headphone Apple Terbaru\", https://tirto.id/f71K', 'airpodsmax.jpg', 'tirto.id'),
(4, 'Samsung Galaxy S21 Meluncur 14 Januari 2021? ', 'KOMPAS.com - Ponsel flagship terbaru Samsung, Galaxy S21, dipastikan akan meluncur pada 14 Januari 2021. Kabar ini datang dari Samsung Mobile di India. \r\n\r\nKantor Samsung di India juga telah mengonfirmasi kepada situs SamMobile, bahwa Galaxy S21 akan meluncur pada tanggal tersebut. Samsung Experience Store di India bahkan sudah membuka keran blind pre-order (mendaftar untuk memesan) lini Galaxy S21. \r\n\r\nSebagaimana dihimpun, Jumat (11/12/2020), tanggal 14 Januari 2021 berlaku untuk kehadiran Galaxy S21 di India, namun kemungkinan besar juga berlaku untuk negara-negara lain secara global karena seri ponsel ini biasanya diluncurkan serentak. \r\n\r\nBerbeda dari Samsung India, pihak Samsung global belum mengonfirmasi tanggal tersebut sebagai jadwal peluncuran Galaxy S1 dan tak bersedia berkomentar ketika dikontak oleh The Verge. \r\n\r\nDi India, begitu pre-order dibuka pada 14 Januari mendatang, peminat yang telah melakukan blind pre-order nantinya mendapat prioritas untuk mendapat pesanan, dan bebas memilih model Galaxy S21 mana pun.\r\n\r\n\r\nPenjualan perdana (offline) Samsung Galaxy S21 di India sendiri rencananya dijadwalkan pada 29 Januari. Hal ini juga sesuai dengan informasi yang diungkap oleh pebocor ulung John Posser melalui akun Twitter miliknya \r\n\r\nSamsung India juga mengonfirmasi bahwa Galaxy S21 akan tersedia dalam pilihan warna putih, abu-abu, pink, dan ungu. \r\n\r\nGalaxy S21+ tersedia dalam warna hitam, silver, ungu, dan pink, sedangkan Galaxy S21 Ultra hanya akan tersedia dalam pilihan warna hitam dan silver.\r\n\r\n\r\nBocoran spesifikasi dan harga Seperti seri Galaxy S sebelum-sebelumnya, Galaxy S21 Ultra diduga akan ditenagai dua chip berbeda tergantung wilayah penjualan, yakni Snapdragon 888 atau Exynos 2100. \r\n\r\nDari gambar rekaan yang muncul, Galaxy S21 Ultra kemungkinan akan memiliki modul kamera berukuran besar di punggungnya. Modul tersebut disinyalir memuat empat buah kamera, bersama dengan LED flash. \r\n\r\nKeempat kamera tersebut konon terdiri dari kamera utama 108 MP, kamera wide 16 MP, serta dua kamera 10 MP yang belum diketahui fungsinya. Kemungkinan, salah satu dari dua kamera 10 MP tersebut merupakan kamera telefoto.\r\n\r\nGalaxy S21 Ultra agaknya juga akan masih mengusung layar berdesain Infinity-O, dengan panel display AMOLED berdiagonal 6,9 inci yang memiliki lubang punch hole di bagian atasnya untuk memuat kamera depan. \r\n\r\nRumor yang beredar juga menyebut Galaxy S21 akan dijual tanpa charger, mengikuti tren yang diawali oleh Apple lewat iPhone 12. \r\n\r\n\r\nHarga lebih murah? \r\n\r\nSoal harga, Galaxy S21 diduga bakal memiliki harga yang lebih murah dibandingkan pendahulunya, Galaxy S20, dengan memangkas biaya komponen tertentu seperti yang berkaitan dengan frekuensi radio dan modul layar. \r\n\r\nProses penyesuaian harga komponen perangkat merupakan hal yang lumrah dilakukan oleh pabrikan smartphone.\r\n\r\nUmumnya, vendor smartphone hanya akan memangkas harga suatu komponen sebesar 3 hingga 5 persen dari banderol yang ditawarkan oleh pemasok (supplier). Namun, kali ini perusahaan asal Korea Selatan tersebut diprediksi akan memotong biaya komponen RF hingga mencapai 9 persen.\r\n', 'Galaxys21.jpg', 'kompas.com'),
(5, '6 Pilihan HP Vivo harga 1 jutaan terbaik tahun 2021', 'KONTAN.CO.ID - JAKARTA. Memasuki bulan Januari 2021, sejumlah pilihan HP Vivo harga 1 jutaan berikut ini masih tersedia di pasaran. Saat ini setidaknya ada 6 HP Vivo harga 1 jutaan terbaik yang bisa Anda bawa pulang.\r\n\r\nSederet pilihan produk HP Vivo harga 1 jutaan berikut ini mungkin jadi yang paling banyak dicari di pasaran, terutama untuk pembeli dengan budget terbatas dan kebutuhan yang sederhana.\r\n\r\nJelang tutup tahun 2020, Vivo Indonesia menambahkan beberapa varian baru untuk lini HP murah mereka. Kali ini ada nama baru, yakni Vivo Y12s dan Vivo Y1s yang masuk dalam daftar HP Vivo harga 1 jutaan bulan Desember.\r\n\r\nVivo, sudah tidak diragukan lagi, sudah menjadi salah satu merek HP Android terbaik di Indonesia. Produk resminya pun bisa dengan mudah didapatkan di pasaran. HP Vivo harga 1 jutaan juga masih menjadi yang terlaris dari merek ini.\r\n\r\nHP Vivo cepat dikenal karena memiliki spesifikasi yang menarik serta harga yang relatif murah, termasuk HP Vivo harga 1 jutaan berikut ini. HP Vivo harga 1 jutaan bisa menjadi pilihan bagi Anda yang membutuhkan HP kualitas sederhana untuk kebutuhan belajar online anak.\r\n\r\nBaru-baru ini Vivo memperkenalkan Vivo Y12s dan Vivo Y1s untuk mengisi lini HP murah mereka. Masing-masih memiliki kapasitas memori serta resolusi kamera yang cukup sederhana. Dua HP Vivo harga 1 jutaan ini tentunya bisa menjadi pilihan tepat bagi Anda yang membutuhkan HP untuk kebutuhan darurat.\r\n\r\nVivo Y91C, Vivo Y11, hingga lini Vivo Y12 juga masuk dalam daftar HP Vivo harga 1 jutaan yang bisa Anda pilih. Kapasitas RAM, kualitas kamera, hingga daya tahan baterainya dijamin akan cukup untuk aktivitas sehari-hari.\r\n\r\nLangsung saja, berikut ini daftar HP Vivo harga 1 jutaan terbaru.\r\n\r\nHP Vivo harga 1 jutaan\r\n1. Vivo Y91C - Rp 1.599.000\r\n\r\nMemori : RAM 2GB + 32GB\r\nKamera utama : 13MP\r\nKamera depan : 5MP\r\nBaterai : 4.030 mAh\r\n\r\n2. Vivo Y11 - Rp 1.799.000\r\n\r\nMemori : RAM 2GB + 32GB\r\nKamera utama : 13 MP\r\nKamera depan : 8 MP\r\nBaterai : 5.000 mAh\r\n\r\n3. Vivo Y12i - Rp 1.899.000\r\n\r\nMemori : RAM 3GB + 32GB\r\nKamera utama : 13 MP + 2 MP\r\nKamera depan : 8 MP\r\nBaterai : 5.000 mAh\r\n\r\n4. Vivo Y12 - Rp 1.999.000\r\n\r\nMemori : RAM 3GB + 32GB\r\nKamera utama : 13 MP + 8 MP + 2 MP\r\nKamera depan : 8 MP\r\nBaterai : 5.000 mAh\r\n\r\n5. Vivo Y12s - Rp 1.999.000\r\n\r\nMemori : RAM 3GB + 32GB\r\nKamera utama : 13 MP + 8 MP\r\nKamera depan : 8 MP\r\nBaterai : 5.000 mAh\r\n\r\n6. Vivo Y1s - Rp 1.699.000\r\n\r\nMemori : RAM 2GB + 32GB\r\nKamera utama : 13 MP \r\nKamera depan : 5 MP\r\nBaterai : 4.030 mAh \r\n\r\n\r\n', 'vivo.jpg', 'lifestyle.kontan.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_in`
--

INSERT INTO `log_in` (`id`, `email`, `password`) VALUES
('1', 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `kd_merk` int(3) NOT NULL,
  `nm_merk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`kd_merk`, `nm_merk`) VALUES
(101, 'Xiaomi'),
(102, 'Samsung'),
(103, 'Oppo'),
(104, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(3) NOT NULL,
  `nm_produk` varchar(255) NOT NULL,
  `ram` int(3) NOT NULL,
  `rom` int(3) NOT NULL,
  `id_merk` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nm_produk`, `ram`, `rom`, `id_merk`) VALUES
(201, 'A2 Lite', 4, 64, 101),
(202, 'Blackshark 2', 6, 128, 101),
(203, 'A01', 4, 64, 102),
(204, 'A15s', 4, 64, 103),
(205, 'Redmi note 9', 6, 128, 101),
(206, 'Iphone 7', 2, 128, 104),
(207, 'Iphone 11', 4, 256, 104);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksesoris`
--
ALTER TABLE `aksesoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`kd_merk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `kd_merk` (`id_merk`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_merk`) REFERENCES `merk` (`kd_merk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
