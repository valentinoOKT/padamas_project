-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 12:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshop_sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bagian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_bagian` varchar(10) NOT NULL,
  `nama_bagian` varchar(255) NOT NULL,
  `status_bagian` enum('Aktif','Non Aktif') NOT NULL,
  `keterangan` text,
  `wilayah` text,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `id_user`, `kode_bagian`, `nama_bagian`, `status_bagian`, `keterangan`, `wilayah`, `tanggal_post`, `tanggal_update`) VALUES
(12, 1, 'MARKETING', 'Bagian Pemasaran', 'Aktif', '', '', '2019-04-13 20:10:33', '2019-04-13 13:10:33'),
(13, 1, 'KEUANGAN', 'Bagian Keuangan', 'Aktif', '', '', '2019-04-13 20:10:46', '2019-04-13 13:10:46'),
(14, 1, 'adada', 'adad', 'Aktif', '', '', '2019-04-14 05:45:14', '2019-04-13 22:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `updater` varchar(32) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urutan` int(11) DEFAULT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `updater`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `hits`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`, `urutan`, `id_kategori`) VALUES
(1, 1, '', 'pembuatan-website-profil', 'Pembuatan Website Profil', '<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>Paket Dasar</h3>\r\n<table class=\"table table-bordered table-stripped table-hover tiny-table\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Website UKM Dasar</td>\r\n<td>Hosting 250MB<br />Bandwidth Unlimited</td>\r\n<td>Rp. 1.500.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td>Website Perusahaan Kecil</td>\r\n<td>Hosting dan bandwidth unlimeted<br />Fully responsive web design</td>\r\n<td>Rp. 3.000.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><span class=\"text-danger\">* Harga dasar dengan syarat tertentu</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Berita', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', 'website-perusahaan-company-profile-web-javawebmedia11.jpg', 3, NULL, NULL, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2022-09-12 08:49:10', 0, 5),
(2, 1, '', 'rental', 'Rental', '<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>', 'Publish', 'Layanan', 'Credibly utcost efective an expertise and web enabled proces that improvements Completely seamless channels', 'rental.jpg', 19, NULL, NULL, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-09-14 09:40:03', 0, 5),
(3, 1, '', 'service', 'Service', '<h2>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n<h2><a name=\"_Toc32320298\"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n<li>Aplikasi pendaftaran online sederhana</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n<h2><a name=\"_Toc32320299\"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Laporan PDF dengan MPDF</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name=\"_Toc32320300\"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>', 'Publish', 'Layanan', 'Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', 'home1.jpg', 11, NULL, NULL, '2019-05-17 04:37:00', '2019-05-17 04:36:19', '2022-09-14 04:42:14', 2, 5),
(4, 1, '', 'company-profile', 'Company Profile', '', 'Publish', 'Profil', '', 'home.jpg', 7, NULL, NULL, '2019-07-26 10:38:15', '2019-07-26 10:36:47', '2022-09-14 08:39:47', 1, 5),
(6, 1, '', 'kursus-android-developer', 'Kursus Android Developer', '<p>Anda akan belajar&nbsp;membuat aplikasi Android dengan menggunakan Android Studio, Genie Motion dan software-software pendukung lainnya. Aplikasi Android yang dibuat nantinya akan support terhadap berbagai ukuran&nbsp;<em>device</em>&nbsp;dan bisa dipublikasikan di Google Play Store.</p>\r\n<p>Kursus ini diselenggarakan bekerjasama dengan&nbsp;<strong>Rumah Coding atau&nbsp;</strong><strong>Fazri Labs (www.<a href=\"https://fazrilabs.com/\">fazrilabs.com</a>)</strong></p>\r\n<h3>Level Kursus (Tingkat Kesulitan)</h3>\r\n<p>Secara umum kursus ini dibagi menjadi dua paket utama, yaitu:</p>\r\n<ul>\r\n<li>Level&nbsp;<strong><em>Beginner Class</em></strong><em><br /></em>Level ini diperuntukkan bagi yang benar-benar pemula atau baru belajar membuat aplikasi Android.</li>\r\n<li>Level&nbsp;<em><strong>Intermediate Class&nbsp;</strong></em><br />Bagi Anda yang telah memiliki dasar-dasar pembuatan aplikasi Android maka Anda dapat mengambil kelas lanjut ini.<strong><br /><br /></strong></li>\r\n</ul>\r\n<h3>Tujuan Kursus</h3>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<em><strong>Kursus Android (Android Developer Course)</strong></em>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat&nbsp;aplikasi Android</li>\r\n<li>Membuat aplikasi Android untuk situs berita</li>\r\n<li>Membuat aplikasi chat realtime</li>\r\n<li>Bekerja sebagai&nbsp;<strong>Junior Mobile Developer/Programmer</strong></li>\r\n</ul>\r\n<h3>Materi untuk&nbsp;<em>Beginner Class</em></h3>\r\n<ol>\r\n<li>Activity dan layout aplikasi</li>\r\n<li>View/tampilan</li>\r\n<li>Resource</li>\r\n<li>Java dan XML</li>\r\n<li>SQLite dan shared preferences</li>\r\n<li>List view</li>\r\n<li>List adapter dan activity lifecycle</li>\r\n<li>Menu dan style</li>\r\n<li>Dialog</li>\r\n<li>Android Volley</li>\r\n</ol>\r\n<h3>Materi untuk&nbsp;<em>Intermediate</em><em>&nbsp;Class</em></h3>\r\n<ol>\r\n<li>Constraint layout</li>\r\n<li>Fragment</li>\r\n<li>Navigation drawer</li>\r\n<li>Custom Drawable</li>\r\n<li>Android Animation</li>\r\n<li>Google Maps</li>\r\n<li>Firebase Cloud Messaging</li>\r\n<li>Service and intent services</li>\r\n<li>Task schedulling</li>\r\n<li>Multil anguage</li>\r\n<li>Google analytic and ad mobs</li>\r\n<li>Unit test framework</li>\r\n</ol>', 'Publish', 'Berita', 'Anda akan belajar membuat aplikasi Android dengan menggunakan Android Studio, Genie Motion dan software-software pendukung lainnya. Aplikasi Android yang dibuat nantinya akan support terhadap berbagai ukuran device dan bisa dipublikasikan di Google Play Store.', 'android-kursus-javawebmedia.png', 3, NULL, NULL, '2020-02-13 07:42:56', '2020-02-13 07:41:51', '2022-09-14 04:20:52', NULL, 0),
(7, 1, '', 'web-based-application', 'Web Based Application', '<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>', 'Publish', 'Berita', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', 'web-application-pendaftaran-online-javawebmedia.jpg', 0, NULL, NULL, '2020-02-13 07:45:07', '2020-02-13 07:44:27', '2022-09-12 08:49:54', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text,
  `gambar` varchar(255) NOT NULL,
  `hits` int(11) DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
(4, 5, 1, 'Kursus di Java Web Media', 'Homepage', '<p>Kursus di Java Web Media</p>', 'home1.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-12 03:22:50'),
(5, 5, 1, 'Kursus Codeigniter di Java Web Media', 'Homepage', '<p>Kursus Codeigniter di Java Web Media</p>', 'home.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-12 03:23:00'),
(6, 5, 1, 'Kursus Statistik di Java Web Media', 'Homepage', '<p>Kursus Statistik di Java Web Media</p>', 'home2.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-12 03:22:21'),
(7, 5, 1, 'Kursus Web Development Java Web Media', 'Galeri', '<p>Kursus Web Development Java Web Media</p>', 'web-development-javawebmedia1.png', NULL, 'Publish', 0, 'Ya', '2020-02-13 00:52:02'),
(8, 5, 1, 'Web Application Java Web Media', 'Galeri', '<p>Web Application Java Web Media</p>', 'web-application-pendaftaran-online-javawebmedia1.jpg', NULL, 'Publish', 0, 'Ya', '2020-02-13 00:52:18'),
(9, 5, 1, 'Kursus Statistik di Java Web Media', 'Galeri', '<p>Kursus Statistik di Java Web Media</p>', 'instagram-kursus-statistik-javawebmedia1.png', NULL, 'Publish', 0, 'Ya', '2020-02-13 00:53:55'),
(10, 5, 1, 'Web Development Java Web Media', 'Galeri', '<p>Web Development Java Web Media</p>', 'home2.jpg', 1, 'Publish', 0, 'Ya', '2022-09-12 06:47:58'),
(11, 5, 1, 'home', 'Homepage', '<p>homepage for slider</p>', 'home43.jpg', 2, 'Publish', 1, 'Ya', '2022-09-14 10:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(4, 1, 'penelitian', 'Penelitian', 4, 0, '2019-03-04 01:31:22'),
(5, 1, 'kegiatan', 'Kegiatan', 5, 0, '2019-03-04 01:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`) VALUES
(4, 'kegiatan', 'Kegiatan', 4),
(5, 'banner-website', 'Banner Website', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`) VALUES
(1, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1),
(2, 'pejabat-struktural', 'Pejabat Struktural', 2);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text,
  `deskripsi` text,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `google_map` text,
  `gambar` varchar(255) DEFAULT NULL,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `nama_direktur` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `footer`, `keywords`, `facebook`, `youtube`, `instagram`, `google_plus`, `google_map`, `gambar`, `gambar_berita`, `nama_direktur`, `jabatan`, `id_user`, `tanggal`) VALUES
(1, 'PT. PANCADAYA MANUNGGAL SENTOSA', 'PADAMAS-Forklift', 'PADAMAS is Always a GOOD Idea', '<p>PADAMAS is Always a GOOD Idea!!</p>', 'Hotel Bumi Wiyata is a three stars hotel that located on Jl. Margonda Raya Depok 16423 West Java.Â \r\n\r\nHotel Bumi Wiyata has 13 ha areas and 91 Rooms which divided into six types of room; Standard Room, Superior Room, Deluxe Superior Room, Suite Room, Deluxe Suite Room & Executive Room.\r\n\r\nHotel Bumi Wiyata is the perfect choice for your business activity, gathering, wedding, outbound and family. With the concept of the greatest hotel for recreational meeting surrounding with traditional nature, various facilities and warm hospitality will makes all your event become a memorable one.', '', 'test@gmail.com', '<p><strong>PT. PANCADAYA MANUNGGAL SENTOSA ( PADAMAS-Forklift )</strong><br />Jl. Bungur Besar No. 53 III-IV Jakarta 10460</p>\r\n<p><strong>Cabang</strong></p>\r\n<ul>\r\n<li>Kawasan Industri JABABEKA 1, Jl. Jababeka 2D Blok C No.14R-S, Phone:+6221 8935190-4</li>\r\n<li>Komp. Pergudangan INDOSERENA Blok C No 5 Jl. Raya Serang KM.12, Phone: +6221 29876203-04</li>\r\n<li>Kws. Ind. &amp; Pergudangan SAFE N LOCK Blok Ai No. 5901 Lingkar Timur Sidoarjo, Phone: +6231 99715009</li>\r\n</ul>', '+6221 4260190', NULL, '', 'forkliftpadamas-removebg-preview.png', 'favicon.png', 'footer1.png', 'PADAMAS\r\n', 'https://www.facebook.com/people/Padamas-Forklift/100078169860936/', 'https://www.youtube.com/channel/UCkJj0zJ55CdIXQD4zzj8c4w', 'https://www.instagram.com/forkliftpadamas/', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.735626308537!2d106.8398753148659!3d-6.1661476621467575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5b7faf3c94d%3A0x3367f283e7520029!2sPadamas%20-%20Forklift!5e0!3m2!1sid!2sid!4v1567502663728!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'istana-yatim.png', 'balairung-budiutomo-01.jpg', 'Sigit Yuwono Wachid', 'Direktur', 0, '2022-09-14 08:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `password_hint` varchar(64) DEFAULT NULL,
  `isi` text,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `status_baca` enum('Sudah','Belum') NOT NULL,
  `status_tutor` enum('Ya','Tidak') NOT NULL,
  `ip_address` varchar(24) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `urutan`, `nama`, `alamat`, `telepon`, `website`, `email`, `password`, `password_hint`, `isi`, `jabatan`, `keahlian`, `gambar`, `status_staff`, `keywords`, `status_baca`, `status_tutor`, `ip_address`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(9, 1, NULL, 0, 'Fitra Raudha', '', '0813 8841 0829', '', '', NULL, NULL, NULL, 'Direktur', '', NULL, '', '', 'Sudah', 'Ya', '', '', '1970-01-01', '2022-09-14 09:28:54'),
(10, 1, NULL, 0, 'Sigit Yuwono Wachid', '', '085715100485', '', '', NULL, NULL, NULL, '', '', NULL, 'No', '', 'Sudah', 'Ya', '', '', '1970-01-01', '2019-04-14 04:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id_sub_menu` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_sub_menu` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` varchar(20) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id_sub_menu`, `id_menu`, `nama_sub_menu`, `link`, `target`, `urutan`) VALUES
(1, 1, 'Menu 1', 'http://localhost', '', 1),
(3, 1, 'Menu 2', 'http://localhost/1', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `up`
--

CREATE TABLE `up` (
  `id_up` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_up` varchar(255) NOT NULL,
  `bagian` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `up`
--

INSERT INTO `up` (`id_up`, `id_client`, `id_user`, `nama_up`, `bagian`, `email`, `telepon`, `keterangan`, `tanggal`) VALUES
(2, 3, 1, 'Rayyan Andoyo', 'Marketing', 'eflita@gmail.com', '(021) 27534579', 'adada', '2019-04-29 21:26:55'),
(3, 3, 1, 'Izra', 'Keuangan', 'contact@nuansabaru.co.id', '0813 8841 0829', 'ok', '2019-04-29 21:19:51'),
(4, 3, 1, 'Ef', 'a', 'surat@javawebmedia.co.id', '', '', '2019-04-29 21:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_bagian` int(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `password_hint` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `id_bagian`, `nama`, `email`, `username`, `password`, `password_hint`, `akses_level`, `kode_rahasia`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(1, 0, 'admin', 'admin@gmail.com', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'Admin', NULL, 'default.jpg', '', '2019-10-12 15:50:21', '2022-09-12 06:28:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id_bagian`),
  ADD UNIQUE KEY `kode_bagian` (`kode_bagian`),
  ADD UNIQUE KEY `nama_bagian` (`nama_bagian`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Indexes for table `up`
--
ALTER TABLE `up`
  ADD PRIMARY KEY (`id_up`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `up`
--
ALTER TABLE `up`
  MODIFY `id_up` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
