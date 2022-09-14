-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 11:06 AM
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
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(10) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `jenis_agenda` varchar(50) NOT NULL,
  `panitia` varchar(200) DEFAULT NULL,
  `tempat` varchar(200) DEFAULT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` longtext NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `nama`, `jenis_agenda`, `panitia`, `tempat`, `mulai`, `selesai`, `ringkasan`, `isi`, `tanggal`) VALUES
(1, 'Pelantikan Gubernur DKI Jakarta', 'Internal', 'Pusdatin', 'Balai Kota', '2017-09-08', '2017-09-09', 'adada', '<p>adada</p>\r\n', '2017-09-08 01:18:36');

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
(2, 1, '', 'rental', 'Rental', '<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>', 'Publish', 'Layanan', 'Credibly utcost efective an expertise and web enabled proces that improvements Completely seamless channels', 'rental.jpg', 9, NULL, NULL, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-09-12 08:50:12', 0, 5),
(3, 1, '', 'service', 'Service', '<h2>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n<h2><a name=\"_Toc32320298\"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n<li>Aplikasi pendaftaran online sederhana</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n<h2><a name=\"_Toc32320299\"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Laporan PDF dengan MPDF</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name=\"_Toc32320300\"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>', 'Publish', 'Layanan', 'Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', 'home1.jpg', 9, NULL, NULL, '2019-05-17 04:37:00', '2019-05-17 04:36:19', '2022-09-12 08:49:28', 2, 5),
(4, 1, '', 'company-profile', 'Company Profile', '', 'Publish', 'Profil', '', 'home.jpg', 5, NULL, NULL, '2019-07-26 10:38:15', '2019-07-26 10:36:47', '2022-09-12 08:49:38', 1, 5),
(6, 1, '', 'kursus-android-developer', 'Kursus Android Developer', '<p>Anda akan belajar&nbsp;membuat aplikasi Android dengan menggunakan Android Studio, Genie Motion dan software-software pendukung lainnya. Aplikasi Android yang dibuat nantinya akan support terhadap berbagai ukuran&nbsp;<em>device</em>&nbsp;dan bisa dipublikasikan di Google Play Store.</p>\r\n<p>Kursus ini diselenggarakan bekerjasama dengan&nbsp;<strong>Rumah Coding atau&nbsp;</strong><strong>Fazri Labs (www.<a href=\"https://fazrilabs.com/\">fazrilabs.com</a>)</strong></p>\r\n<h3>Level Kursus (Tingkat Kesulitan)</h3>\r\n<p>Secara umum kursus ini dibagi menjadi dua paket utama, yaitu:</p>\r\n<ul>\r\n<li>Level&nbsp;<strong><em>Beginner Class</em></strong><em><br /></em>Level ini diperuntukkan bagi yang benar-benar pemula atau baru belajar membuat aplikasi Android.</li>\r\n<li>Level&nbsp;<em><strong>Intermediate Class&nbsp;</strong></em><br />Bagi Anda yang telah memiliki dasar-dasar pembuatan aplikasi Android maka Anda dapat mengambil kelas lanjut ini.<strong><br /><br /></strong></li>\r\n</ul>\r\n<h3>Tujuan Kursus</h3>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<em><strong>Kursus Android (Android Developer Course)</strong></em>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat&nbsp;aplikasi Android</li>\r\n<li>Membuat aplikasi Android untuk situs berita</li>\r\n<li>Membuat aplikasi chat realtime</li>\r\n<li>Bekerja sebagai&nbsp;<strong>Junior Mobile Developer/Programmer</strong></li>\r\n</ul>\r\n<h3>Materi untuk&nbsp;<em>Beginner Class</em></h3>\r\n<ol>\r\n<li>Activity dan layout aplikasi</li>\r\n<li>View/tampilan</li>\r\n<li>Resource</li>\r\n<li>Java dan XML</li>\r\n<li>SQLite dan shared preferences</li>\r\n<li>List view</li>\r\n<li>List adapter dan activity lifecycle</li>\r\n<li>Menu dan style</li>\r\n<li>Dialog</li>\r\n<li>Android Volley</li>\r\n</ol>\r\n<h3>Materi untuk&nbsp;<em>Intermediate</em><em>&nbsp;Class</em></h3>\r\n<ol>\r\n<li>Constraint layout</li>\r\n<li>Fragment</li>\r\n<li>Navigation drawer</li>\r\n<li>Custom Drawable</li>\r\n<li>Android Animation</li>\r\n<li>Google Maps</li>\r\n<li>Firebase Cloud Messaging</li>\r\n<li>Service and intent services</li>\r\n<li>Task schedulling</li>\r\n<li>Multil anguage</li>\r\n<li>Google analytic and ad mobs</li>\r\n<li>Unit test framework</li>\r\n</ol>', 'Publish', 'Layanan', 'Anda akan belajar membuat aplikasi Android dengan menggunakan Android Studio, Genie Motion dan software-software pendukung lainnya. Aplikasi Android yang dibuat nantinya akan support terhadap berbagai ukuran device dan bisa dipublikasikan di Google Play Store.', 'android-kursus-javawebmedia.png', 1, NULL, NULL, '2020-02-13 07:42:56', '2020-02-13 07:41:51', '2022-09-12 08:49:46', 0, 5),
(7, 1, '', 'web-based-application', 'Web Based Application', '<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>', 'Publish', 'Berita', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', 'web-application-pendaftaran-online-javawebmedia.jpg', 0, NULL, NULL, '2020-02-13 07:45:07', '2020-02-13 07:44:27', '2022-09-12 08:49:54', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `password_hint` varchar(64) DEFAULT NULL,
  `isi` text,
  `status_testimoni` varchar(20) DEFAULT NULL,
  `isi_testimoni` text,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `status_baca` enum('Sudah','Belum') NOT NULL,
  `status_siswa` enum('Aktif','Calon','Lulus') NOT NULL,
  `ip_address` varchar(24) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `id_user`, `jenis_client`, `nama`, `pimpinan`, `alamat`, `telepon`, `website`, `email`, `password`, `password_hint`, `isi`, `status_testimoni`, `isi_testimoni`, `gambar`, `status_client`, `keywords`, `status_baca`, `status_siswa`, `ip_address`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(2, 1, 'Perorangan', 'PT Java Web Media', 'Bapak Andoyo', 'Jalan Lapangan Banteng Barat No. 3-4\r\nTromol Pos 3500', '', '', 'javawebmedia@gmail.com', '8242de3f241790a591666ac9f6ad6be377c8a43f', 'wrygldyt', NULL, 'No', '', NULL, 'No', '', 'Sudah', 'Aktif', '', 'JAKARTA', '1962-01-02', '2019-04-14 01:08:26'),
(3, 1, 'Perorangan', 'PT Indosat Sukses  Makmur', 'Eflita Meiyetriani', '', '0813 8841 0829', '', 'admin@kabupatenlestari.org', NULL, NULL, NULL, 'No', '', NULL, 'No', '', 'Sudah', 'Aktif', '', '', '1970-01-01', '2019-04-14 03:35:03');

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
(10, 5, 1, 'Web Development Java Web Media', 'Galeri', '<p>Web Development Java Web Media</p>', 'home2.jpg', 1, 'Publish', 0, 'Ya', '2022-09-12 06:47:58');

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
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `google_map` text,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `isi_1` varchar(500) DEFAULT NULL,
  `isi_2` varchar(500) DEFAULT NULL,
  `isi_3` varchar(500) DEFAULT NULL,
  `isi_4` varchar(500) DEFAULT NULL,
  `isi_5` varchar(500) DEFAULT NULL,
  `isi_6` varchar(500) DEFAULT NULL,
  `link_1` varchar(255) DEFAULT NULL,
  `link_2` varchar(255) DEFAULT NULL,
  `link_3` varchar(255) DEFAULT NULL,
  `link_4` varchar(255) DEFAULT NULL,
  `link_5` varchar(255) DEFAULT NULL,
  `link_6` varchar(255) DEFAULT NULL,
  `javawebmedia` text,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `rekening` text,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `status_form_booking` enum('Aktif','Nonaktif') NOT NULL,
  `max_room_booking` int(11) DEFAULT NULL,
  `nama_direktur` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `stempel_tanda_tangan` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `footer`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_plus`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `isi_1`, `isi_2`, `isi_3`, `isi_4`, `isi_5`, `isi_6`, `link_1`, `link_2`, `link_3`, `link_4`, `link_5`, `link_6`, `javawebmedia`, `gambar`, `video`, `rekening`, `gambar_berita`, `status_form_booking`, `max_room_booking`, `nama_direktur`, `jabatan`, `stempel_tanda_tangan`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `id_user`, `tanggal`) VALUES
(1, 'PADAMAS-FORKLIFT', 'PADAMAS-Forklift', 'PADAMAS is Always a GOOD Idea', '<p>Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik</p>', 'Hotel Bumi Wiyata is a three stars hotel that located on Jl. Margonda Raya Depok 16423 West Java.Â \r\n\r\nHotel Bumi Wiyata has 13 ha areas and 91 Rooms which divided into six types of room; Standard Room, Superior Room, Deluxe Superior Room, Suite Room, Deluxe Suite Room & Executive Room.\r\n\r\nHotel Bumi Wiyata is the perfect choice for your business activity, gathering, wedding, outbound and family. With the concept of the greatest hotel for recreational meeting surrounding with traditional nature, various facilities and warm hospitality will makes all your event become a memorable one.', '', '', '', '<p><strong>PT. PANCADAYA MANUNGGAL SENTOSA ( PADAMAS-Forklift )</strong><br />Jl. Bungur Besar No. 53 III-IV Jakarta 10460</p></br><p><strong>Cabang</strong></p><ul><li>Kawasan Industri JABABEKA 1, Jl. Jababeka 2D Blok C No.14R-S, Phone:+6221 8935190-4</li><li>Komp. Pergudangan INDOSERENA Blok C No 5 Jl. Raya Serang KM.12, Phone: +6221 29876203-04</li><li>Kws. Ind. & Pergudangan SAFE N LOCK Blok Ai No. 5901 Lingkar Timur Sidoarjo, Phone: +6231 99715009</li></ul>', '+6221 4260190', '', '', 'text_comp.png', 'icon-javawebmedia-2019.png', 'footer1.png', 'PADAMAS-Forklift\r\n', '', 'https://www.facebook.com/people/Padamas-Forklift/100078169860936/', '', 'https://www.instagram.com/forkliftpadamas/', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.735626308537!2d106.8398753148659!3d-6.1661476621467575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5b7faf3c94d%3A0x3367f283e7520029!2sPadamas%20-%20Forklift!5e0!3m2!1sid!2sid!4v1567502663728!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Bersedekah untuk anak yatim', 'fa-money', 'Pengasuh yang santun', 'fa-thumbs-up', 'Jadwal Flexibel', 'fa-adn', 'Menjaga Amanah', 'fa-check-square-o', 'Tempat belajar nyaman', 'fa-home', 'Online service', 'fa-laptop', 'Berbagi kebahagiaan dengan anak yatim adalah perintah Allah dan rasul', 'Pengasuh yang baik dan santun serta memberikan teladan yang baik bagi anak asuh', 'Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel', 'Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan', 'Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', '', '', '', '', '', '', '<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>', 'istana-yatim.png', 'fsH_KhUWfho', '<table id=\"dataTables-example\" class=\"table table-bordered\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"19%\">Nama Bank</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"21%\">Nomor Rekening</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"7%\">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'balairung-budiutomo-01.jpg', 'Aktif', 3, 'Sigit Yuwono Wachid', 'Direktur', 'tanda-tangan-nba.png', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', 0, '2022-09-12 06:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id_kunjungan` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hari` date DEFAULT NULL,
  `waktu` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`id_kunjungan`, `alamat`, `ip_address`, `hari`, `waktu`, `tanggal`) VALUES
(1, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-23', '2019-02-23 12:38:06', '2019-02-23 05:38:06'),
(2, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-23', '2019-02-23 14:06:56', '2019-02-23 07:06:56'),
(3, 'http://localhost/bkkbn/index.php', '127.0.0.1', '2019-02-23', '2019-02-23 14:15:12', '2019-02-23 07:15:12'),
(4, 'http://localhost/bkkbn/peneliti/anggota/pendidikan/1', '127.0.0.1', '2019-02-23', '2019-02-23 14:38:24', '2019-02-23 07:38:24'),
(5, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-24', '2019-02-24 14:10:08', '2019-02-24 07:10:08'),
(6, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-24', '2019-02-24 16:56:03', '2019-02-24 09:56:03'),
(7, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-24', '2019-02-24 20:00:37', '2019-02-24 13:00:37'),
(8, 'http://localhost/bkkbn/masuk', '::1', '2019-02-24', '2019-02-24 21:18:38', '2019-02-24 14:18:38'),
(9, 'http://localhost/bkkbn/masuk', '::1', '2019-02-24', '2019-02-24 21:41:37', '2019-02-24 14:41:37'),
(10, 'http://localhost/bkkbn/masuk', '::1', '2019-02-26', '2019-02-26 10:53:44', '2019-02-26 03:53:44'),
(11, 'http://localhost/bkkbn/masuk', '::1', '2019-02-26', '2019-02-26 10:58:07', '2019-02-26 03:58:07'),
(12, 'http://localhost/bkkbn/masuk', '::1', '2019-02-26', '2019-02-26 13:06:36', '2019-02-26 06:06:36'),
(13, 'http://localhost/bkkbn/index.php', '::1', '2019-02-26', '2019-02-26 14:52:03', '2019-02-26 07:52:03'),
(14, 'http://localhost/bkkbn/masuk', '::1', '2019-02-27', '2019-02-27 18:48:15', '2019-02-27 11:48:15'),
(15, 'http://localhost/bkkbn/masuk', '::1', '2019-02-28', '2019-02-28 20:30:53', '2019-02-28 13:30:53'),
(16, 'http://localhost/bkkbn/masuk', '::1', '2019-02-28', '2019-02-28 20:34:12', '2019-02-28 13:34:12'),
(17, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 10:29:12', '2019-03-01 03:29:12'),
(18, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-01', '2019-03-01 10:35:23', '2019-03-01 03:35:23'),
(19, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 10:36:32', '2019-03-01 03:36:32'),
(20, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-01', '2019-03-01 10:36:49', '2019-03-01 03:36:49'),
(21, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 10:37:57', '2019-03-01 03:37:57'),
(22, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 10:39:31', '2019-03-01 03:39:31'),
(23, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 10:54:13', '2019-03-01 03:54:13'),
(24, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 10:57:41', '2019-03-01 03:57:41'),
(25, 'http://localhost/bkkbn/kontak', '::1', '2019-03-01', '2019-03-01 11:04:07', '2019-03-01 04:04:07'),
(26, 'http://localhost/bkkbn/kontak', '::1', '2019-03-01', '2019-03-01 11:04:57', '2019-03-01 04:04:57'),
(27, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:05:07', '2019-03-01 04:05:07'),
(28, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:05:14', '2019-03-01 04:05:14'),
(29, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:07:10', '2019-03-01 04:07:10'),
(30, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:07:53', '2019-03-01 04:07:53'),
(31, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:10:09', '2019-03-01 04:10:09'),
(32, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:10:23', '2019-03-01 04:10:23'),
(33, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:11:48', '2019-03-01 04:11:48'),
(34, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:12:17', '2019-03-01 04:12:17'),
(35, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:12:20', '2019-03-01 04:12:20'),
(36, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:12:29', '2019-03-01 04:12:29'),
(37, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:13:15', '2019-03-01 04:13:15'),
(38, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:14:32', '2019-03-01 04:14:32'),
(39, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:16:15', '2019-03-01 04:16:15'),
(40, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:20:09', '2019-03-01 04:20:09'),
(41, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:21:19', '2019-03-01 04:21:19'),
(42, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:22:44', '2019-03-01 04:22:44'),
(43, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:23:08', '2019-03-01 04:23:08'),
(44, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:23:44', '2019-03-01 04:23:44'),
(45, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:23:55', '2019-03-01 04:23:55'),
(46, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:24:06', '2019-03-01 04:24:06'),
(47, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:24:32', '2019-03-01 04:24:32'),
(48, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:25:00', '2019-03-01 04:25:00'),
(49, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:25:18', '2019-03-01 04:25:18'),
(50, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:25:33', '2019-03-01 04:25:33'),
(51, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:26:07', '2019-03-01 04:26:07'),
(52, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:26:58', '2019-03-01 04:26:58'),
(53, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:27:59', '2019-03-01 04:27:59'),
(54, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:28:21', '2019-03-01 04:28:21'),
(55, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:29:18', '2019-03-01 04:29:18'),
(56, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:34:29', '2019-03-01 04:34:29'),
(57, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:34:33', '2019-03-01 04:34:33'),
(58, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:35:51', '2019-03-01 04:35:51'),
(59, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:35:53', '2019-03-01 04:35:53'),
(60, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:36:07', '2019-03-01 04:36:07'),
(61, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:38:01', '2019-03-01 04:38:01'),
(62, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:40:14', '2019-03-01 04:40:14'),
(63, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:40:46', '2019-03-01 04:40:46'),
(64, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:41:14', '2019-03-01 04:41:14'),
(65, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:41:57', '2019-03-01 04:41:57'),
(66, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:42:16', '2019-03-01 04:42:16'),
(67, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:43:34', '2019-03-01 04:43:34'),
(68, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:46:03', '2019-03-01 04:46:03'),
(69, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:46:45', '2019-03-01 04:46:45'),
(70, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:46:53', '2019-03-01 04:46:53'),
(71, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:49:23', '2019-03-01 04:49:23'),
(72, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:50:38', '2019-03-01 04:50:38'),
(73, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:50:58', '2019-03-01 04:50:58'),
(74, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:51:25', '2019-03-01 04:51:25'),
(75, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:51:40', '2019-03-01 04:51:40'),
(76, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:53:15', '2019-03-01 04:53:15'),
(77, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:53:37', '2019-03-01 04:53:37'),
(78, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:54:02', '2019-03-01 04:54:02'),
(79, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:55:03', '2019-03-01 04:55:03'),
(80, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:56:34', '2019-03-01 04:56:34'),
(81, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:57:05', '2019-03-01 04:57:05'),
(82, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 14:04:57', '2019-03-01 07:04:57'),
(83, 'http://localhost/bkkbn/download', '::1', '2019-03-01', '2019-03-01 14:05:19', '2019-03-01 07:05:19'),
(84, 'http://localhost/bkkbn/galeri', '::1', '2019-03-01', '2019-03-01 14:05:30', '2019-03-01 07:05:30'),
(85, 'http://localhost/bkkbn/video', '::1', '2019-03-01', '2019-03-01 14:05:42', '2019-03-01 07:05:42'),
(86, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 14:17:12', '2019-03-01 07:17:12'),
(87, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 14:28:50', '2019-03-01 07:28:50'),
(88, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 14:31:05', '2019-03-01 07:31:05'),
(89, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 14:43:34', '2019-03-01 07:43:34'),
(90, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 15:46:17', '2019-03-01 08:46:17'),
(91, 'http://localhost/bkkbn/index.php', '::1', '2019-03-02', '2019-03-02 13:53:37', '2019-03-02 06:53:37'),
(92, 'http://localhost/bkkbn/index.php', '::1', '2019-03-02', '2019-03-02 14:21:18', '2019-03-02 07:21:18'),
(93, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 06:02:48', '2019-03-03 23:02:48'),
(94, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:38:09', '2019-03-04 00:38:09'),
(95, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:41:19', '2019-03-04 00:41:19'),
(96, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-04', '2019-03-04 07:41:40', '2019-03-04 00:41:40'),
(97, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-04', '2019-03-04 07:42:10', '2019-03-04 00:42:10'),
(98, 'http://localhost/bkkbn/download', '::1', '2019-03-04', '2019-03-04 07:42:29', '2019-03-04 00:42:29'),
(99, 'http://localhost/bkkbn/download', '::1', '2019-03-04', '2019-03-04 07:42:43', '2019-03-04 00:42:43'),
(100, 'http://localhost/bkkbn/galeri', '::1', '2019-03-04', '2019-03-04 07:42:52', '2019-03-04 00:42:52'),
(101, 'http://localhost/bkkbn/video', '::1', '2019-03-04', '2019-03-04 07:42:59', '2019-03-04 00:42:59'),
(102, 'http://localhost/bkkbn/video', '::1', '2019-03-04', '2019-03-04 07:44:00', '2019-03-04 00:44:00'),
(103, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:44:04', '2019-03-04 00:44:04'),
(104, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:44:51', '2019-03-04 00:44:51'),
(105, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:45:06', '2019-03-04 00:45:06'),
(106, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:45:26', '2019-03-04 00:45:26'),
(107, 'http://localhost/bkkbn/berita', '::1', '2019-03-04', '2019-03-04 07:45:36', '2019-03-04 00:45:36'),
(108, 'http://localhost/bkkbn/galeri', '::1', '2019-03-04', '2019-03-04 07:45:44', '2019-03-04 00:45:44'),
(109, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 07:45:49', '2019-03-04 00:45:49'),
(110, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 07:46:30', '2019-03-04 00:46:30'),
(111, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 07:46:44', '2019-03-04 00:46:44'),
(112, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:53:11', '2019-03-04 00:53:11'),
(113, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:53:55', '2019-03-04 00:53:55'),
(114, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:54:27', '2019-03-04 00:54:27'),
(115, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:55:22', '2019-03-04 00:55:22'),
(116, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:24:22', '2019-03-04 01:24:22'),
(117, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:29:55', '2019-03-04 01:29:55'),
(118, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 08:30:43', '2019-03-04 01:30:43'),
(119, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:31:35', '2019-03-04 01:31:35'),
(120, 'http://localhost/bkkbn/berita/kategori/kegiatan', '::1', '2019-03-04', '2019-03-04 08:31:40', '2019-03-04 01:31:40'),
(121, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 08:31:45', '2019-03-04 01:31:45'),
(122, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 08:32:15', '2019-03-04 01:32:15'),
(123, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 08:34:08', '2019-03-04 01:34:08'),
(124, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 08:34:50', '2019-03-04 01:34:50'),
(125, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 08:35:16', '2019-03-04 01:35:16'),
(126, 'http://localhost/bkkbn/berita', '::1', '2019-03-04', '2019-03-04 08:35:29', '2019-03-04 01:35:29'),
(127, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-04', '2019-03-04 08:36:00', '2019-03-04 01:36:00'),
(128, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:36:38', '2019-03-04 01:36:38'),
(129, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:37:26', '2019-03-04 01:37:26'),
(130, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:37:41', '2019-03-04 01:37:41'),
(131, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:37:57', '2019-03-04 01:37:57'),
(132, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:38:16', '2019-03-04 01:38:16'),
(133, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:38:27', '2019-03-04 01:38:27'),
(134, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:39:17', '2019-03-04 01:39:17'),
(135, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:39:30', '2019-03-04 01:39:30'),
(136, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:39:38', '2019-03-04 01:39:38'),
(137, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:40:16', '2019-03-04 01:40:16'),
(138, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:40:33', '2019-03-04 01:40:33'),
(139, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:40:38', '2019-03-04 01:40:38'),
(140, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 08:42:42', '2019-03-04 01:42:42'),
(141, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 10:43:14', '2019-03-04 03:43:14'),
(142, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 11:29:05', '2019-03-04 04:29:05'),
(143, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 11:29:10', '2019-03-04 04:29:10'),
(144, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 11:30:34', '2019-03-04 04:30:34'),
(145, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 12:57:30', '2019-03-04 05:57:30'),
(146, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 12:57:37', '2019-03-04 05:57:37'),
(147, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 12:58:51', '2019-03-04 05:58:51'),
(148, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 12:59:13', '2019-03-04 05:59:13'),
(149, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 13:01:37', '2019-03-04 06:01:37'),
(150, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:03:32', '2019-03-04 06:03:32'),
(151, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:04:11', '2019-03-04 06:04:11'),
(152, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:04:46', '2019-03-04 06:04:46'),
(153, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:05:03', '2019-03-04 06:05:03'),
(154, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:05:16', '2019-03-04 06:05:16'),
(155, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 13:05:23', '2019-03-04 06:05:23'),
(156, 'http://localhost/bkkbn/koss', '::1', '2019-03-04', '2019-03-04 13:05:31', '2019-03-04 06:05:31'),
(157, 'http://localhost/bkkbn/koss', '::1', '2019-03-04', '2019-03-04 13:05:52', '2019-03-04 06:05:52'),
(158, 'http://localhost/bkkbn/koss', '::1', '2019-03-04', '2019-03-04 13:06:10', '2019-03-04 06:06:10'),
(159, 'http://localhost/bkkbn/download', '::1', '2019-03-04', '2019-03-04 13:06:29', '2019-03-04 06:06:29'),
(160, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:28:48', '2019-03-04 07:28:48'),
(161, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:31:21', '2019-03-04 07:31:21'),
(162, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 14:31:33', '2019-03-04 07:31:33'),
(163, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 14:32:20', '2019-03-04 07:32:20'),
(164, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:32:45', '2019-03-04 07:32:45'),
(165, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:32:52', '2019-03-04 07:32:52'),
(166, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:33:05', '2019-03-04 07:33:05'),
(167, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:33:39', '2019-03-04 07:33:39'),
(168, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:33:54', '2019-03-04 07:33:54'),
(169, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:34:27', '2019-03-04 07:34:27'),
(170, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:35:49', '2019-03-04 07:35:49'),
(171, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:36:05', '2019-03-04 07:36:05'),
(172, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:37:42', '2019-03-04 07:37:42'),
(173, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:37:53', '2019-03-04 07:37:53'),
(174, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:38:10', '2019-03-04 07:38:10'),
(175, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:43:00', '2019-03-04 07:43:00'),
(176, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:44:17', '2019-03-04 07:44:17'),
(177, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:45:19', '2019-03-04 07:45:19'),
(178, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:45:56', '2019-03-04 07:45:56'),
(179, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:46:24', '2019-03-04 07:46:24'),
(180, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:46:53', '2019-03-04 07:46:53'),
(181, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:47:08', '2019-03-04 07:47:08'),
(182, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 14:48:43', '2019-03-04 07:48:43'),
(183, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:48:55', '2019-03-04 07:48:55'),
(184, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:49:16', '2019-03-04 07:49:16'),
(185, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:51:48', '2019-03-04 07:51:48'),
(186, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:51:53', '2019-03-04 07:51:53'),
(187, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:59:03', '2019-03-04 07:59:03'),
(188, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:59:20', '2019-03-04 07:59:20'),
(189, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:09:07', '2019-03-04 08:09:07'),
(190, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:10:46', '2019-03-04 08:10:46'),
(191, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 15:33:08', '2019-03-04 08:33:08'),
(192, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:43:13', '2019-03-04 08:43:13'),
(193, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 15:43:18', '2019-03-04 08:43:18'),
(194, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-04', '2019-03-04 15:43:38', '2019-03-04 08:43:38'),
(195, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 15:43:52', '2019-03-04 08:43:52'),
(196, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 15:44:38', '2019-03-04 08:44:38'),
(197, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 15:46:11', '2019-03-04 08:46:11'),
(198, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 15:46:46', '2019-03-04 08:46:46'),
(199, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:48:59', '2019-03-04 08:48:59'),
(200, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 16:23:00', '2019-03-04 09:23:00'),
(201, 'http://localhost/bkkbn/index.php', '::1', '2019-03-07', '2019-03-07 08:36:55', '2019-03-07 01:36:55'),
(202, 'http://localhost/bkkbn/index.php', '::1', '2019-03-07', '2019-03-07 10:22:10', '2019-03-07 03:22:10'),
(203, 'http://localhost/bkkbn/masuk', '::1', '2019-03-07', '2019-03-07 12:12:54', '2019-03-07 05:12:54'),
(204, 'http://localhost/bkkbn/masuk', '::1', '2019-03-07', '2019-03-07 20:14:44', '2019-03-07 13:14:44'),
(205, 'http://localhost/bkkbn/index.php', '::1', '2019-03-07', '2019-03-07 20:46:31', '2019-03-07 13:46:31'),
(206, 'http://localhost/bkkbn/provinsi/Dashboard', '::1', '2019-03-07', '2019-03-07 21:09:42', '2019-03-07 14:09:42'),
(207, 'http://localhost/bkkbn/provinsi/panduan', '::1', '2019-03-08', '2019-03-08 06:14:51', '2019-03-07 23:14:51'),
(208, 'http://localhost/bkkbn/profil/password', '::1', '2019-03-08', '2019-03-08 06:25:58', '2019-03-07 23:25:58'),
(209, 'http://localhost/bkkbn/provinsi/hasil', '::1', '2019-03-08', '2019-03-08 06:41:11', '2019-03-07 23:41:11'),
(210, 'http://localhost/bkkbn/index.php', '::1', '2019-03-10', '2019-03-10 08:49:36', '2019-03-10 01:49:36'),
(211, 'http://localhost/bkkbn/masuk', '::1', '2019-03-11', '2019-03-11 10:59:46', '2019-03-11 03:59:46'),
(212, 'http://localhost/bkkbn/index.php', '::1', '2019-03-13', '2019-03-13 11:31:47', '2019-03-13 04:31:47'),
(213, 'http://localhost/bkkbn/masuk', '::1', '2019-03-13', '2019-03-13 11:31:52', '2019-03-13 04:31:52'),
(214, 'http://localhost/bkkbn/masuk', '::1', '2019-03-13', '2019-03-13 11:31:56', '2019-03-13 04:31:56'),
(215, 'http://localhost/bkkbn/masuk', '::1', '2019-03-13', '2019-03-13 11:34:54', '2019-03-13 04:34:54'),
(216, 'http://localhost/bkkbn/index.php', '::1', '2019-03-13', '2019-03-13 19:00:11', '2019-03-13 12:00:11'),
(217, 'http://localhost/bkkbn/provinsi/penelitian/review/2', '::1', '2019-03-14', '2019-03-14 07:56:24', '2019-03-14 00:56:24'),
(218, 'http://localhost/bkkbn/provinsi/penelitian/review/2', '::1', '2019-03-14', '2019-03-14 08:29:36', '2019-03-14 01:29:36'),
(219, 'http://localhost/bkkbn/index.php', '::1', '2019-03-14', '2019-03-14 08:48:37', '2019-03-14 01:48:37'),
(220, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-14', '2019-03-14 08:48:46', '2019-03-14 01:48:46'),
(221, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:49:48', '2019-03-14 01:49:48'),
(222, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:50:38', '2019-03-14 01:50:38'),
(223, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:51:47', '2019-03-14 01:51:47'),
(224, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:57:20', '2019-03-14 01:57:20'),
(225, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 15:46:38', '2019-03-18 08:46:38'),
(226, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:47:37', '2019-03-18 08:47:37'),
(227, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 15:48:13', '2019-03-18 08:48:13'),
(228, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:49:11', '2019-03-18 08:49:11'),
(229, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 15:49:17', '2019-03-18 08:49:17'),
(230, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:52:15', '2019-03-18 08:52:15'),
(231, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:52:49', '2019-03-18 08:52:49'),
(232, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:53:55', '2019-03-18 08:53:55'),
(233, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:54:03', '2019-03-18 08:54:03'),
(234, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-18', '2019-03-18 15:54:16', '2019-03-18 08:54:16'),
(235, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:54:41', '2019-03-18 08:54:41'),
(236, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:55:13', '2019-03-18 08:55:13'),
(237, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:55:46', '2019-03-18 08:55:46'),
(238, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:56:01', '2019-03-18 08:56:01'),
(239, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:33:37', '2019-03-18 09:33:37'),
(240, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-18', '2019-03-18 16:33:42', '2019-03-18 09:33:42'),
(241, 'http://localhost/bkkbn/gelombang/read/1-gelombang-tes-ukp-2019', '::1', '2019-03-18', '2019-03-18 16:33:46', '2019-03-18 09:33:46'),
(242, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:33:57', '2019-03-18 09:33:57'),
(243, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:34:12', '2019-03-18 09:34:12'),
(244, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 16:35:48', '2019-03-18 09:35:48'),
(245, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:35:52', '2019-03-18 09:35:52'),
(246, 'http://localhost/bkkbn/download', '::1', '2019-03-18', '2019-03-18 16:36:37', '2019-03-18 09:36:37'),
(247, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 16:36:52', '2019-03-18 09:36:52'),
(248, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 16:41:04', '2019-03-18 09:41:04'),
(249, 'http://localhost/bkkbn/kontak', '::1', '2019-03-18', '2019-03-18 16:50:22', '2019-03-18 09:50:22'),
(250, 'http://localhost/bkkbn/index.php', '::1', '2019-03-24', '2019-03-24 05:46:23', '2019-03-23 22:46:23'),
(251, 'http://localhost/bkkbn/sk', '::1', '2019-03-24', '2019-03-24 06:05:11', '2019-03-23 23:05:11'),
(252, 'http://localhost/bkkbn/sk', '::1', '2019-03-25', '2019-03-25 08:23:43', '2019-03-25 01:23:43'),
(253, 'http://localhost/bkkbn/sk', '::1', '2019-03-25', '2019-03-25 08:25:44', '2019-03-25 01:25:44'),
(254, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 10:37:24', '2019-03-25 03:37:24'),
(255, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:13:25', '2019-03-25 04:13:25'),
(256, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:17:10', '2019-03-25 04:17:10'),
(257, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:20:06', '2019-03-25 04:20:06'),
(258, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:21:18', '2019-03-25 04:21:18'),
(259, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:22:04', '2019-03-25 04:22:04'),
(260, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:22:24', '2019-03-25 04:22:24'),
(261, 'http://localhost/bkkbn/berita/kategori/kegiatan', '::1', '2019-03-25', '2019-03-25 11:22:39', '2019-03-25 04:22:39'),
(262, 'http://localhost/bkkbn/download', '::1', '2019-03-25', '2019-03-25 11:22:44', '2019-03-25 04:22:44'),
(263, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 11:32:13', '2019-03-25 04:32:13'),
(264, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:07:27', '2019-03-25 07:07:27'),
(265, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:19:16', '2019-03-25 07:19:16'),
(266, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:19:20', '2019-03-25 07:19:20'),
(267, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:23:40', '2019-03-25 07:23:40'),
(268, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:23:56', '2019-03-25 07:23:56'),
(269, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:40:40', '2019-03-25 07:40:40'),
(270, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 14:41:11', '2019-03-25 07:41:11'),
(271, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 14:42:24', '2019-03-25 07:42:24'),
(272, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:43:51', '2019-03-25 07:43:51'),
(273, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:45:14', '2019-03-25 07:45:14'),
(274, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:07:53', '2019-03-25 08:07:53'),
(275, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:13:42', '2019-03-25 08:13:42'),
(276, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:14:43', '2019-03-25 08:14:43'),
(277, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:15:14', '2019-03-25 08:15:14'),
(278, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:15:40', '2019-03-25 08:15:40'),
(279, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:17:44', '2019-03-25 08:17:44'),
(280, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:20:02', '2019-03-25 08:20:02'),
(281, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-25', '2019-03-25 15:36:18', '2019-03-25 08:36:18'),
(282, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:36:45', '2019-03-25 08:36:45'),
(283, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:48:49', '2019-03-25 08:48:49'),
(284, 'http://localhost/bkkbn/berita/profil/fungsi-pusdu', '::1', '2019-03-25', '2019-03-25 15:52:51', '2019-03-25 08:52:51'),
(285, 'http://localhost/bkkbn/berita/profil/tugas-pokok', '::1', '2019-03-25', '2019-03-25 15:53:00', '2019-03-25 08:53:00'),
(286, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:53:10', '2019-03-25 08:53:10'),
(287, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:14:03', '2019-03-25 09:14:03'),
(288, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:14:26', '2019-03-25 09:14:26'),
(289, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:14:43', '2019-03-25 09:14:43'),
(290, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 16:15:01', '2019-03-25 09:15:01'),
(291, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:16:41', '2019-03-25 09:16:41'),
(292, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:15:07', '2019-03-26 06:15:07'),
(293, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:16:38', '2019-03-26 06:16:38'),
(294, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:17:32', '2019-03-26 06:17:32'),
(295, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:17:57', '2019-03-26 06:17:57'),
(296, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:18:23', '2019-03-26 06:18:23'),
(297, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:18:56', '2019-03-26 06:18:56'),
(298, 'http://localhost/bkkbn/index.php', '::1', '2019-03-26', '2019-03-26 14:45:30', '2019-03-26 07:45:30'),
(299, 'http://localhost/bkkbn/index.php', '::1', '2019-03-26', '2019-03-26 15:23:19', '2019-03-26 08:23:19'),
(300, 'http://localhost/bkkbn/masuk', '::1', '2019-03-26', '2019-03-26 15:23:37', '2019-03-26 08:23:37'),
(301, 'http://localhost/bkkbn/masuk', '::1', '2019-03-27', '2019-03-27 07:54:53', '2019-03-27 00:54:53'),
(302, 'http://localhost/bkkbn/index.php', '::1', '2019-03-27', '2019-03-27 08:54:06', '2019-03-27 01:54:06'),
(303, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-27', '2019-03-27 09:24:47', '2019-03-27 02:24:47'),
(304, 'http://localhost/bkkbn/masuk', '::1', '2019-03-27', '2019-03-27 10:21:39', '2019-03-27 03:21:39'),
(305, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-27', '2019-03-27 10:21:56', '2019-03-27 03:21:56'),
(306, 'http://localhost/bkkbn/index.php', '::1', '2019-03-27', '2019-03-27 10:50:28', '2019-03-27 03:50:28'),
(307, 'http://localhost/bkkbn/index.php', '::1', '2019-04-03', '2019-04-03 14:10:13', '2019-04-03 07:10:13'),
(308, 'http://localhost/bkkbn/index.php', '::1', '2019-04-03', '2019-04-03 14:39:14', '2019-04-03 07:39:14'),
(309, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:32:31', '2019-05-13 08:32:31'),
(310, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:33:08', '2019-05-13 08:33:08'),
(311, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:33:32', '2019-05-13 08:33:32'),
(312, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:34:14', '2019-05-13 08:34:14'),
(313, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:34:21', '2019-05-13 08:34:21'),
(314, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:35:08', '2019-05-13 08:35:08'),
(315, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:36:08', '2019-05-13 08:36:08'),
(316, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:36:13', '2019-05-13 08:36:13'),
(317, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:00', '2019-05-13 08:37:00'),
(318, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:03', '2019-05-13 08:37:03'),
(319, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:29', '2019-05-13 08:37:29'),
(320, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:43', '2019-05-13 08:37:43'),
(321, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:48:01', '2019-05-13 08:48:01'),
(322, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:49:07', '2019-05-13 08:49:07'),
(323, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:50:30', '2019-05-13 08:50:30'),
(324, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:51:01', '2019-05-13 08:51:01'),
(325, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:51:55', '2019-05-13 08:51:55'),
(326, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 03:55:19', '2019-05-16 20:55:19'),
(327, 'http://localhost/sigit/galeri', '::1', '2019-05-17', '2019-05-17 03:56:05', '2019-05-16 20:56:05'),
(328, 'http://localhost/sigit/video', '::1', '2019-05-17', '2019-05-17 03:56:11', '2019-05-16 20:56:11'),
(329, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 03:57:36', '2019-05-16 20:57:36'),
(330, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:01:10', '2019-05-16 21:01:10'),
(331, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:08:10', '2019-05-16 21:08:10'),
(332, 'http://localhost/sigit/download', '::1', '2019-05-17', '2019-05-17 04:08:24', '2019-05-16 21:08:24'),
(333, 'http://localhost/sigit/download', '::1', '2019-05-17', '2019-05-17 04:08:32', '2019-05-16 21:08:32'),
(334, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:08:36', '2019-05-16 21:08:36'),
(335, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:08:53', '2019-05-16 21:08:53'),
(336, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:10:12', '2019-05-16 21:10:12'),
(337, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:10:36', '2019-05-16 21:10:36'),
(338, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:10:49', '2019-05-16 21:10:49'),
(339, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:11:18', '2019-05-16 21:11:18'),
(340, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:11:26', '2019-05-16 21:11:26'),
(341, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:12:08', '2019-05-16 21:12:08'),
(342, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:12:28', '2019-05-16 21:12:28'),
(343, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:14:13', '2019-05-16 21:14:13'),
(344, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:14:56', '2019-05-16 21:14:56'),
(345, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:15:16', '2019-05-16 21:15:16'),
(346, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:15:40', '2019-05-16 21:15:40'),
(347, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:15:56', '2019-05-16 21:15:56'),
(348, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:16:17', '2019-05-16 21:16:17'),
(349, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:16:56', '2019-05-16 21:16:56'),
(350, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:17:29', '2019-05-16 21:17:29'),
(351, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:18:05', '2019-05-16 21:18:05'),
(352, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:18:37', '2019-05-16 21:18:37'),
(353, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:18:42', '2019-05-16 21:18:42'),
(354, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:20:36', '2019-05-16 21:20:36'),
(355, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:21:03', '2019-05-16 21:21:03'),
(356, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:22:17', '2019-05-16 21:22:17'),
(357, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:22:35', '2019-05-16 21:22:35'),
(358, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:31:34', '2019-05-16 21:31:34'),
(359, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:32:06', '2019-05-16 21:32:06'),
(360, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:32:23', '2019-05-16 21:32:23'),
(361, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:32:37', '2019-05-16 21:32:37'),
(362, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:34:48', '2019-05-16 21:34:48'),
(363, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:35:07', '2019-05-16 21:35:07'),
(364, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:35:56', '2019-05-16 21:35:56'),
(365, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:37:07', '2019-05-16 21:37:07'),
(366, 'http://localhost/sigit/berita/layanan/temu-kolaborasi', '::1', '2019-05-17', '2019-05-17 07:35:57', '2019-05-17 00:35:57'),
(367, 'http://localhost/sigit/index.php', '::1', '2019-05-27', '2019-05-27 12:38:33', '2019-05-27 05:38:33'),
(368, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:31:01', '2019-07-15 05:31:01'),
(369, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:39:02', '2019-07-15 05:39:02'),
(370, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:39:03', '2019-07-15 05:39:03'),
(371, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:39:03', '2019-07-15 05:39:03'),
(372, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:39:03', '2019-07-15 05:39:03'),
(373, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:39:50', '2019-07-15 05:39:50'),
(374, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:39:51', '2019-07-15 05:39:51'),
(375, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:39:51', '2019-07-15 05:39:51'),
(376, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:39:51', '2019-07-15 05:39:51'),
(377, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:42:39', '2019-07-15 05:42:39'),
(378, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:42:39', '2019-07-15 05:42:39'),
(379, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:42:40', '2019-07-15 05:42:40'),
(380, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:42:40', '2019-07-15 05:42:40'),
(381, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:45:42', '2019-07-15 05:45:42'),
(382, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:45:43', '2019-07-15 05:45:43'),
(383, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:45:43', '2019-07-15 05:45:43'),
(384, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:45:43', '2019-07-15 05:45:43'),
(385, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:47:13', '2019-07-15 05:47:13'),
(386, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:47:14', '2019-07-15 05:47:14'),
(387, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:47:14', '2019-07-15 05:47:14'),
(388, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:47:14', '2019-07-15 05:47:14'),
(389, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:47:51', '2019-07-15 05:47:51'),
(390, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:47:52', '2019-07-15 05:47:52'),
(391, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:47:52', '2019-07-15 05:47:52'),
(392, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:47:52', '2019-07-15 05:47:52'),
(393, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:48:36', '2019-07-15 05:48:36'),
(394, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:48:37', '2019-07-15 05:48:37'),
(395, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:48:37', '2019-07-15 05:48:37'),
(396, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:48:37', '2019-07-15 05:48:37'),
(397, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:49:16', '2019-07-15 05:49:16'),
(398, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:49:21', '2019-07-15 05:49:21'),
(399, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:49:58', '2019-07-15 05:49:58'),
(400, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:50:09', '2019-07-15 05:50:09'),
(401, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:51:08', '2019-07-15 05:51:08'),
(402, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:51:16', '2019-07-15 05:51:16'),
(403, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:51:46', '2019-07-15 05:51:46'),
(404, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:53:02', '2019-07-15 05:53:02'),
(405, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:55:23', '2019-07-15 05:55:23'),
(406, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:56:38', '2019-07-15 05:56:38'),
(407, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:58:37', '2019-07-15 05:58:37'),
(408, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:58:44', '2019-07-15 05:58:44'),
(409, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:02:32', '2019-07-15 06:02:32'),
(410, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:05:43', '2019-07-15 06:05:43'),
(411, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:06:27', '2019-07-15 06:06:27'),
(412, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:07:11', '2019-07-15 06:07:11'),
(413, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:07:27', '2019-07-15 06:07:27'),
(414, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:08:07', '2019-07-15 06:08:07'),
(415, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:08:31', '2019-07-15 06:08:31'),
(416, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:08:53', '2019-07-15 06:08:53'),
(417, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:10:48', '2019-07-15 06:10:48'),
(418, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:13:14', '2019-07-15 06:13:14'),
(419, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:14:32', '2019-07-15 06:14:32'),
(420, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:19:34', '2019-07-15 06:19:34'),
(421, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:19:44', '2019-07-15 06:19:44'),
(422, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:21:29', '2019-07-15 06:21:29'),
(423, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:22:24', '2019-07-15 06:22:24'),
(424, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:31:30', '2019-07-15 06:31:30'),
(425, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:31:47', '2019-07-15 06:31:47'),
(426, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:31:47', '2019-07-15 06:31:47'),
(427, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:37:36', '2019-07-15 06:37:36'),
(428, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:37:37', '2019-07-15 06:37:37'),
(429, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:38:01', '2019-07-15 06:38:01'),
(430, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:38:02', '2019-07-15 06:38:02'),
(431, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:40:43', '2019-07-15 06:40:43'),
(432, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:40:43', '2019-07-15 06:40:43'),
(433, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:41:15', '2019-07-15 06:41:15'),
(434, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:41:16', '2019-07-15 06:41:16'),
(435, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:41:35', '2019-07-15 06:41:35'),
(436, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:41:36', '2019-07-15 06:41:36'),
(437, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:46:14', '2019-07-15 06:46:14'),
(438, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:46:15', '2019-07-15 06:46:15'),
(439, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:46:41', '2019-07-15 06:46:41'),
(440, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:46:42', '2019-07-15 06:46:42'),
(441, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:46:52', '2019-07-15 06:46:52'),
(442, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:46:52', '2019-07-15 06:46:52'),
(443, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:48:48', '2019-07-15 06:48:48'),
(444, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:48:48', '2019-07-15 06:48:48'),
(445, 'http://localhost/sigit/index.php', '::1', '2019-07-25', '2019-07-25 10:23:31', '2019-07-25 03:23:31'),
(446, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-25', '2019-07-25 10:23:35', '2019-07-25 03:23:35'),
(447, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:26:51', '2019-07-26 02:26:51'),
(448, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:26:58', '2019-07-26 02:26:58'),
(449, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:29:40', '2019-07-26 02:29:40'),
(450, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:29:41', '2019-07-26 02:29:41'),
(451, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:31:36', '2019-07-26 02:31:36'),
(452, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:31:37', '2019-07-26 02:31:37'),
(453, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:38:56', '2019-07-26 02:38:56');
INSERT INTO `kunjungan` (`id_kunjungan`, `alamat`, `ip_address`, `hari`, `waktu`, `tanggal`) VALUES
(454, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:38:58', '2019-07-26 02:38:58'),
(455, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:40:10', '2019-07-26 02:40:10'),
(456, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:40:11', '2019-07-26 02:40:11'),
(457, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:05:16', '2019-07-26 03:05:16'),
(458, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 10:05:19', '2019-07-26 03:05:19'),
(459, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:06:19', '2019-07-26 03:06:19'),
(460, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 10:06:20', '2019-07-26 03:06:20'),
(461, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:07:26', '2019-07-26 03:07:26'),
(462, 'http://localhost/sigit/berita/kategori/kegiatan', '::1', '2019-07-26', '2019-07-26 10:08:13', '2019-07-26 03:08:13'),
(463, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-07-26', '2019-07-26 10:08:20', '2019-07-26 03:08:20'),
(464, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:08:26', '2019-07-26 03:08:26'),
(465, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:11:02', '2019-07-26 03:11:02'),
(466, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:11:49', '2019-07-26 03:11:49'),
(467, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:12:17', '2019-07-26 03:12:17'),
(468, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:14:06', '2019-07-26 03:14:06'),
(469, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:14:49', '2019-07-26 03:14:49'),
(470, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:15:03', '2019-07-26 03:15:03'),
(471, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:16:56', '2019-07-26 03:16:56'),
(472, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:18:39', '2019-07-26 03:18:39'),
(473, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:21:24', '2019-07-26 03:21:24'),
(474, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:22:25', '2019-07-26 03:22:25'),
(475, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:23:07', '2019-07-26 03:23:07'),
(476, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:23:27', '2019-07-26 03:23:27'),
(477, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:24:17', '2019-07-26 03:24:17'),
(478, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:25:03', '2019-07-26 03:25:03'),
(479, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:25:39', '2019-07-26 03:25:39'),
(480, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:26:30', '2019-07-26 03:26:30'),
(481, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:26:44', '2019-07-26 03:26:44'),
(482, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:29:16', '2019-07-26 03:29:16'),
(483, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:30:52', '2019-07-26 03:30:52'),
(484, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:31:52', '2019-07-26 03:31:52'),
(485, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:34:47', '2019-07-26 03:34:47'),
(486, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:35:27', '2019-07-26 03:35:27'),
(487, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:35:29', '2019-07-26 03:35:29'),
(488, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:36:19', '2019-07-26 03:36:19'),
(489, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:38:37', '2019-07-26 03:38:37'),
(490, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:38:58', '2019-07-26 03:38:58'),
(491, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:39:10', '2019-07-26 03:39:10'),
(492, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:39:27', '2019-07-26 03:39:27'),
(493, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:39:36', '2019-07-26 03:39:36'),
(494, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:40:37', '2019-07-26 03:40:37'),
(495, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:52:08', '2019-07-26 03:52:08'),
(496, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:53:30', '2019-07-26 03:53:30'),
(497, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:54:11', '2019-07-26 03:54:11'),
(498, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:54:34', '2019-07-26 03:54:34'),
(499, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:56:33', '2019-07-26 03:56:33'),
(500, 'http://localhost/sigit/berita/layanan/iso-90012015', '::1', '2019-07-26', '2019-07-26 10:56:59', '2019-07-26 03:56:59'),
(501, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:57:18', '2019-07-26 03:57:18'),
(502, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:57:49', '2019-07-26 03:57:49'),
(503, 'http://localhost/sigit/galeri', '::1', '2019-07-26', '2019-07-26 11:01:58', '2019-07-26 04:01:58'),
(504, 'http://localhost/sigit/download', '::1', '2019-07-26', '2019-07-26 11:02:03', '2019-07-26 04:02:03'),
(505, 'http://localhost/sigit/index.php', '::1', '2019-10-11', '2019-10-11 19:30:33', '2019-10-11 12:30:33'),
(506, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:35:59', '2019-10-11 12:35:59'),
(507, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:47:01', '2019-10-11 12:47:01'),
(508, 'http://localhost/compro/kontak', '::1', '2019-10-11', '2019-10-11 19:48:17', '2019-10-11 12:48:17'),
(509, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:48:23', '2019-10-11 12:48:23'),
(510, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:48:57', '2019-10-11 12:48:57'),
(511, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:02:54', '2019-10-11 13:02:54'),
(512, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:04:44', '2019-10-11 13:04:44'),
(513, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:56:49', '2019-10-11 13:56:49'),
(514, 'http://localhost/compro/berita', '::1', '2019-10-11', '2019-10-11 20:57:16', '2019-10-11 13:57:16'),
(515, 'http://localhost/compro/berita/read/integrasi-data-dan-pengetahuan', '::1', '2019-10-11', '2019-10-11 20:57:21', '2019-10-11 13:57:21'),
(516, 'http://localhost/compro/berita/profil/profil-pt-nuansa-abadi', '::1', '2019-10-11', '2019-10-11 20:57:28', '2019-10-11 13:57:28'),
(517, 'http://localhost/compro/download', '::1', '2019-10-11', '2019-10-11 20:57:35', '2019-10-11 13:57:35'),
(518, 'http://localhost/compro/galeri', '::1', '2019-10-11', '2019-10-11 20:57:47', '2019-10-11 13:57:47'),
(519, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:58:44', '2019-10-11 13:58:44'),
(520, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:43:56', '2019-10-12 01:43:56'),
(521, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:44:53', '2019-10-12 01:44:53'),
(522, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:45:46', '2019-10-12 01:45:46'),
(523, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:46:06', '2019-10-12 01:46:06'),
(524, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:48:22', '2019-10-12 01:48:22'),
(525, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:54:49', '2019-10-12 01:54:49'),
(526, 'http://localhost/compro/download', '::1', '2019-10-12', '2019-10-12 09:00:49', '2019-10-12 02:00:49'),
(527, 'http://localhost/compro/kontak', '::1', '2019-10-12', '2019-10-12 09:00:54', '2019-10-12 02:00:54'),
(528, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 09:07:10', '2019-10-12 02:07:10'),
(529, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 09:51:47', '2019-10-12 02:51:47'),
(530, 'http://localhost/compro/index.php', '::1', '2019-10-13', '2019-10-13 09:28:41', '2019-10-13 02:28:41'),
(531, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:16:17', '2019-10-15 10:16:17'),
(532, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:16:18', '2019-10-15 10:16:18'),
(533, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:43:20', '2019-10-15 10:43:20'),
(534, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:43:20', '2019-10-15 10:43:20'),
(535, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:45:12', '2019-10-15 10:45:12'),
(536, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:46:45', '2019-10-15 10:46:45'),
(537, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:57:10', '2019-10-15 10:57:10'),
(538, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:57:31', '2019-10-15 10:57:31'),
(539, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:57:59', '2019-10-15 10:57:59'),
(540, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:58:43', '2019-10-15 10:58:43'),
(541, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:59:40', '2019-10-15 10:59:40'),
(542, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 18:00:01', '2019-10-15 11:00:01'),
(543, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 14:50:40', '2020-01-04 07:50:40'),
(544, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:12:47', '2020-01-04 08:12:47'),
(545, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:13:46', '2020-01-04 08:13:46'),
(546, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:14:04', '2020-01-04 08:14:04'),
(547, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:16:00', '2020-01-04 08:16:00'),
(548, 'http://localhost/compro/video', '::1', '2020-01-04', '2020-01-04 15:16:19', '2020-01-04 08:16:19'),
(549, 'http://localhost/compro/galeri', '::1', '2020-01-04', '2020-01-04 15:16:36', '2020-01-04 08:16:36'),
(550, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 16:07:39', '2020-01-04 09:07:39'),
(551, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 16:07:57', '2020-01-04 09:07:57'),
(552, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 16:10:48', '2020-01-04 09:10:48'),
(553, 'http://localhost/compro/kontak', '::1', '2020-01-04', '2020-01-04 16:10:56', '2020-01-04 09:10:56'),
(554, 'http://localhost/compro/index.php', '::1', '2020-01-14', '2020-01-14 10:40:12', '2020-01-14 03:40:12'),
(555, 'http://localhost/compro/berita/read/integrasi-data-dan-pengetahuan', '::1', '2020-01-14', '2020-01-14 10:40:20', '2020-01-14 03:40:20'),
(556, 'http://localhost/compro/berita/read/integrasi-data-dan-pengetahuan', '::1', '2020-01-14', '2020-01-14 10:41:54', '2020-01-14 03:41:54'),
(557, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:27:54', '2020-02-13 00:27:54'),
(558, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:29:39', '2020-02-13 00:29:39'),
(559, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:34:45', '2020-02-13 00:34:45'),
(560, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:36:55', '2020-02-13 00:36:55'),
(561, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:38:36', '2020-02-13 00:38:36'),
(562, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:40:08', '2020-02-13 00:40:08'),
(563, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:42:31', '2020-02-13 00:42:31'),
(564, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:43:19', '2020-02-13 00:43:19'),
(565, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:45:11', '2020-02-13 00:45:11'),
(566, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:45:28', '2020-02-13 00:45:28'),
(567, 'http://localhost/compro/video', '::1', '2020-02-13', '2020-02-13 07:45:33', '2020-02-13 00:45:33'),
(568, 'http://localhost/compro/video', '::1', '2020-02-13', '2020-02-13 07:47:02', '2020-02-13 00:47:02'),
(569, 'http://localhost/compro/video', '::1', '2020-02-13', '2020-02-13 07:48:37', '2020-02-13 00:48:37'),
(570, 'http://localhost/compro/berita/profil/profil-java-web-media', '::1', '2020-02-13', '2020-02-13 07:48:45', '2020-02-13 00:48:45'),
(571, 'http://localhost/compro/download', '::1', '2020-02-13', '2020-02-13 07:48:49', '2020-02-13 00:48:49'),
(572, 'http://localhost/compro/download', '::1', '2020-02-13', '2020-02-13 07:51:22', '2020-02-13 00:51:22'),
(573, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:51:29', '2020-02-13 00:51:29'),
(574, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:52:22', '2020-02-13 00:52:22'),
(575, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:53:28', '2020-02-13 00:53:28'),
(576, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:53:58', '2020-02-13 00:53:58'),
(577, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:54:31', '2020-02-13 00:54:31'),
(578, 'http://localhost/compro/kontak', '::1', '2020-02-13', '2020-02-13 07:54:40', '2020-02-13 00:54:40'),
(579, 'http://localhost/compro/kontak', '::1', '2020-02-13', '2020-02-13 07:55:23', '2020-02-13 00:55:23'),
(580, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:55:36', '2020-02-13 00:55:36'),
(581, 'http://localhost/compro/index.php', '::1', '2022-09-07', '2022-09-07 15:43:13', '2022-09-07 08:43:13'),
(582, 'http://localhost/compro/index.php', '::1', '2022-09-07', '2022-09-07 15:43:59', '2022-09-07 08:43:59'),
(583, 'http://localhost/compro/index.php', '::1', '2022-09-07', '2022-09-07 15:44:50', '2022-09-07 08:44:50'),
(584, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 15:55:12', '2022-09-07 08:55:12'),
(585, 'http://localhost/padamas_project/berita/layanan/kursus-statistik', '::1', '2022-09-07', '2022-09-07 15:55:22', '2022-09-07 08:55:22'),
(586, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 15:55:27', '2022-09-07 08:55:27'),
(587, 'http://localhost/padamas_project/berita', '::1', '2022-09-07', '2022-09-07 15:55:36', '2022-09-07 08:55:36'),
(588, 'http://localhost/padamas_project/download', '::1', '2022-09-07', '2022-09-07 15:55:55', '2022-09-07 08:55:55'),
(589, 'http://localhost/padamas_project/berita', '::1', '2022-09-07', '2022-09-07 15:56:05', '2022-09-07 08:56:05'),
(590, 'http://localhost/padamas_project/berita', '::1', '2022-09-07', '2022-09-07 16:13:16', '2022-09-07 09:13:16'),
(591, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:15:15', '2022-09-07 09:15:15'),
(592, 'http://localhost/padamas_project/download', '::1', '2022-09-07', '2022-09-07 16:23:15', '2022-09-07 09:23:15'),
(593, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:23:30', '2022-09-07 09:23:30'),
(594, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:38:51', '2022-09-07 09:38:51'),
(595, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:39:04', '2022-09-07 09:39:04'),
(596, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:39:35', '2022-09-07 09:39:35'),
(597, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:42:04', '2022-09-07 09:42:04'),
(598, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:42:40', '2022-09-07 09:42:40'),
(599, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:46:34', '2022-09-07 09:46:34'),
(600, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:48:01', '2022-09-07 09:48:01'),
(601, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 16:50:55', '2022-09-07 09:50:55'),
(602, 'http://localhost/padamas_project/index.php', '::1', '2022-09-07', '2022-09-07 17:03:34', '2022-09-07 10:03:34'),
(603, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:42:03', '2022-09-12 01:42:03'),
(604, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:43:10', '2022-09-12 01:43:10'),
(605, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:45:45', '2022-09-12 01:45:45'),
(606, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:46:37', '2022-09-12 01:46:37'),
(607, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 08:48:20', '2022-09-12 01:48:20'),
(608, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 08:50:39', '2022-09-12 01:50:39'),
(609, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 08:51:07', '2022-09-12 01:51:07'),
(610, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 08:51:43', '2022-09-12 01:51:43'),
(611, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 08:52:15', '2022-09-12 01:52:15'),
(612, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:52:23', '2022-09-12 01:52:23'),
(613, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:55:55', '2022-09-12 01:55:55'),
(614, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:56:01', '2022-09-12 01:56:01'),
(615, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:56:40', '2022-09-12 01:56:40'),
(616, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:57:38', '2022-09-12 01:57:38'),
(617, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:57:47', '2022-09-12 01:57:47'),
(618, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 08:57:50', '2022-09-12 01:57:50'),
(619, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:01:39', '2022-09-12 02:01:39'),
(620, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 09:02:31', '2022-09-12 02:02:31'),
(621, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:03:13', '2022-09-12 02:03:13'),
(622, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:03:57', '2022-09-12 02:03:57'),
(623, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:05:01', '2022-09-12 02:05:01'),
(624, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:05:06', '2022-09-12 02:05:06'),
(625, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:06:00', '2022-09-12 02:06:00'),
(626, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:07:45', '2022-09-12 02:07:45'),
(627, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:08:21', '2022-09-12 02:08:21'),
(628, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:10:32', '2022-09-12 02:10:32'),
(629, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:11:05', '2022-09-12 02:11:05'),
(630, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:11:48', '2022-09-12 02:11:48'),
(631, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:14:23', '2022-09-12 02:14:23'),
(632, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:19:07', '2022-09-12 02:19:07'),
(633, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:20:12', '2022-09-12 02:20:12'),
(634, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:21:31', '2022-09-12 02:21:31'),
(635, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:21:52', '2022-09-12 02:21:52'),
(636, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:23:36', '2022-09-12 02:23:36'),
(637, 'http://localhost/padamas_project/berita/layanan/kursus-statistik', '::1', '2022-09-12', '2022-09-12 09:24:00', '2022-09-12 02:24:00'),
(638, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:24:05', '2022-09-12 02:24:05'),
(639, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:24:35', '2022-09-12 02:24:35'),
(640, 'http://localhost/padamas_project/berita/layanan/kursus-statistik', '::1', '2022-09-12', '2022-09-12 09:24:40', '2022-09-12 02:24:40'),
(641, 'http://localhost/padamas_project/berita/layanan/kursus-android-developer', '::1', '2022-09-12', '2022-09-12 09:24:46', '2022-09-12 02:24:46'),
(642, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:25:32', '2022-09-12 02:25:32'),
(643, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:26:01', '2022-09-12 02:26:01'),
(644, 'http://localhost/padamas_project/berita/layanan/kursus-statistik', '::1', '2022-09-12', '2022-09-12 09:26:07', '2022-09-12 02:26:07'),
(645, 'http://localhost/padamas_project/berita/layanan/kursus-web-development', '::1', '2022-09-12', '2022-09-12 09:26:13', '2022-09-12 02:26:13'),
(646, 'http://localhost/padamas_project/berita/layanan/kursus-web-development', '::1', '2022-09-12', '2022-09-12 09:27:34', '2022-09-12 02:27:34'),
(647, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:27:49', '2022-09-12 02:27:49'),
(648, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:29:29', '2022-09-12 02:29:29'),
(649, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:32:21', '2022-09-12 02:32:21'),
(650, 'http://localhost/padamas_project/berita/layanan/kursus-web-development', '::1', '2022-09-12', '2022-09-12 09:32:24', '2022-09-12 02:32:24'),
(651, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:32:28', '2022-09-12 02:32:28'),
(652, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:34:38', '2022-09-12 02:34:38'),
(653, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:35:30', '2022-09-12 02:35:30'),
(654, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:36:55', '2022-09-12 02:36:55'),
(655, 'http://localhost/padamas_project/berita/layanan/kursus-statistik', '::1', '2022-09-12', '2022-09-12 09:37:01', '2022-09-12 02:37:01'),
(656, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:37:11', '2022-09-12 02:37:11'),
(657, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:38:38', '2022-09-12 02:38:38'),
(658, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:43:22', '2022-09-12 02:43:22'),
(659, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:54:52', '2022-09-12 02:54:52'),
(660, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 09:56:15', '2022-09-12 02:56:15'),
(661, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:08:46', '2022-09-12 03:08:46'),
(662, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:13:57', '2022-09-12 03:13:57'),
(663, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:16:50', '2022-09-12 03:16:50'),
(664, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:23:30', '2022-09-12 03:23:30'),
(665, 'http://localhost/padamas_project/berita/layanan/kursus-statistik', '::1', '2022-09-12', '2022-09-12 10:23:46', '2022-09-12 03:23:46'),
(666, 'http://localhost/padamas_project/berita/layanan/kursus-android-developer', '::1', '2022-09-12', '2022-09-12 10:23:53', '2022-09-12 03:23:53'),
(667, 'http://localhost/padamas_project/berita/layanan/kursus-web-development', '::1', '2022-09-12', '2022-09-12 10:23:59', '2022-09-12 03:23:59'),
(668, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:24:05', '2022-09-12 03:24:05'),
(669, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:24:17', '2022-09-12 03:24:17'),
(670, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:29:48', '2022-09-12 03:29:48'),
(671, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:30:47', '2022-09-12 03:30:47'),
(672, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:32:55', '2022-09-12 03:32:55'),
(673, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:34:15', '2022-09-12 03:34:15'),
(674, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:41:15', '2022-09-12 03:41:15'),
(675, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:42:53', '2022-09-12 03:42:53'),
(676, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:45:07', '2022-09-12 03:45:07'),
(677, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:45:41', '2022-09-12 03:45:41'),
(678, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:47:14', '2022-09-12 03:47:14'),
(679, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:52:51', '2022-09-12 03:52:51'),
(680, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 10:59:51', '2022-09-12 03:59:51'),
(681, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 11:11:54', '2022-09-12 04:11:54'),
(682, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 11:18:04', '2022-09-12 04:18:04'),
(683, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 11:20:34', '2022-09-12 04:20:34'),
(684, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:20:49', '2022-09-12 04:20:49'),
(685, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:22:34', '2022-09-12 04:22:34'),
(686, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:24:35', '2022-09-12 04:24:35'),
(687, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:28:16', '2022-09-12 04:28:16'),
(688, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:28:44', '2022-09-12 04:28:44'),
(689, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:28:46', '2022-09-12 04:28:46'),
(690, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:28:47', '2022-09-12 04:28:47'),
(691, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:28:48', '2022-09-12 04:28:48'),
(692, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:28:48', '2022-09-12 04:28:48'),
(693, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:29:00', '2022-09-12 04:29:00'),
(694, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:29:03', '2022-09-12 04:29:03'),
(695, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:29:47', '2022-09-12 04:29:47'),
(696, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:29:48', '2022-09-12 04:29:48'),
(697, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:29:49', '2022-09-12 04:29:49'),
(698, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:30:17', '2022-09-12 04:30:17'),
(699, 'http://localhost/padamas_project/berita/profil/profil-java-web-media', '::1', '2022-09-12', '2022-09-12 11:30:42', '2022-09-12 04:30:42'),
(700, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 11:30:53', '2022-09-12 04:30:53'),
(701, 'http://localhost/padamas_project/berita/layanan/rental', '::1', '2022-09-12', '2022-09-12 11:31:35', '2022-09-12 04:31:35'),
(702, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 11:33:42', '2022-09-12 04:33:42'),
(703, 'http://localhost/padamas_project/berita/profil/company-profile', '::1', '2022-09-12', '2022-09-12 11:33:47', '2022-09-12 04:33:47'),
(704, 'http://localhost/padamas_project/berita/layanan/service', '::1', '2022-09-12', '2022-09-12 11:37:58', '2022-09-12 04:37:58'),
(705, 'http://localhost/padamas_project/video', '::1', '2022-09-12', '2022-09-12 11:39:24', '2022-09-12 04:39:24'),
(706, 'http://localhost/padamas_project/video', '::1', '2022-09-12', '2022-09-12 11:39:57', '2022-09-12 04:39:57'),
(707, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 11:40:01', '2022-09-12 04:40:01'),
(708, 'http://localhost/padamas_project/galeri', '::1', '2022-09-12', '2022-09-12 11:40:06', '2022-09-12 04:40:06'),
(709, 'http://localhost/padamas_project/berita/layanan/service', '::1', '2022-09-12', '2022-09-12 11:40:44', '2022-09-12 04:40:44'),
(710, 'http://localhost/padamas_project/berita/layanan/rental', '::1', '2022-09-12', '2022-09-12 11:41:12', '2022-09-12 04:41:12'),
(711, 'http://localhost/padamas_project/berita/layanan/rental', '::1', '2022-09-12', '2022-09-12 11:43:13', '2022-09-12 04:43:13'),
(712, 'http://localhost/padamas_project/berita/layanan/service', '::1', '2022-09-12', '2022-09-12 11:43:45', '2022-09-12 04:43:45'),
(713, 'http://localhost/padamas_project/berita/layanan/service', '::1', '2022-09-12', '2022-09-12 11:45:38', '2022-09-12 04:45:38'),
(714, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 11:47:43', '2022-09-12 04:47:43'),
(715, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:00:14', '2022-09-12 05:00:14'),
(716, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:01:39', '2022-09-12 05:01:39'),
(717, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:02:25', '2022-09-12 05:02:25'),
(718, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:06:46', '2022-09-12 05:06:46'),
(719, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:08:06', '2022-09-12 05:08:06'),
(720, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:09:14', '2022-09-12 05:09:14'),
(721, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:09:53', '2022-09-12 05:09:53'),
(722, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:32:10', '2022-09-12 05:32:10'),
(723, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:33:14', '2022-09-12 05:33:14'),
(724, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 12:35:50', '2022-09-12 05:35:50'),
(725, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:00:15', '2022-09-12 06:00:15'),
(726, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:00:31', '2022-09-12 06:00:31'),
(727, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:14:00', '2022-09-12 06:14:00'),
(728, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:14:12', '2022-09-12 06:14:12'),
(729, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:16:00', '2022-09-12 06:16:00'),
(730, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:16:28', '2022-09-12 06:16:28'),
(731, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:20:53', '2022-09-12 06:20:53'),
(732, 'http://localhost/padamas_project/kontak', '::1', '2022-09-12', '2022-09-12 13:21:46', '2022-09-12 06:21:46'),
(733, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 13:21:56', '2022-09-12 06:21:56'),
(734, 'http://localhost/padamas_project/galeri/read/10', '::1', '2022-09-12', '2022-09-12 13:47:58', '2022-09-12 06:47:58'),
(735, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 13:48:23', '2022-09-12 06:48:23'),
(736, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 14:08:13', '2022-09-12 07:08:13'),
(737, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 14:09:54', '2022-09-12 07:09:54'),
(738, 'http://localhost/padamas_project/galeri', '::1', '2022-09-12', '2022-09-12 14:10:04', '2022-09-12 07:10:04'),
(739, 'http://localhost/padamas_project/galeri', '::1', '2022-09-12', '2022-09-12 14:12:36', '2022-09-12 07:12:36'),
(740, 'http://localhost/padamas_project/galeri', '::1', '2022-09-12', '2022-09-12 14:13:00', '2022-09-12 07:13:00'),
(741, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:14:12', '2022-09-12 08:14:12'),
(742, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:14:23', '2022-09-12 08:14:23'),
(743, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:14:24', '2022-09-12 08:14:24'),
(744, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:24:59', '2022-09-12 08:24:59'),
(745, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:25:39', '2022-09-12 08:25:39'),
(746, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:26:05', '2022-09-12 08:26:05'),
(747, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:26:19', '2022-09-12 08:26:19'),
(748, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:27:19', '2022-09-12 08:27:19'),
(749, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:28:58', '2022-09-12 08:28:58'),
(750, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:30:44', '2022-09-12 08:30:44'),
(751, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:40:51', '2022-09-12 08:40:51'),
(752, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 15:49:58', '2022-09-12 08:49:58'),
(753, 'http://localhost/padamas_project/berita/layanan/rental', '::1', '2022-09-12', '2022-09-12 15:50:12', '2022-09-12 08:50:12'),
(754, 'http://localhost/padamas_project/index.php', '::1', '2022-09-12', '2022-09-12 16:01:37', '2022-09-12 09:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `slug_pekerjaan` varchar(200) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(200) NOT NULL,
  `keterangan` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `slug_pekerjaan`, `urutan`, `nama_pekerjaan`, `keterangan`) VALUES
(1, 'karyawan-swasta', 1, 'Karyawan Swasta', NULL),
(2, 'wirausaha', 2, 'Wirausaha', NULL),
(3, 'pegawa-negeri-sipil-pns', 3, 'Pegawa Negeri Sipil (PNS)', NULL),
(4, 'tni', 4, 'TNI', NULL),
(5, 'polri', 5, 'POLRI', NULL),
(6, 'ibu-rumah-tangga', 6, 'Ibu Rumah Tangga', NULL),
(7, 'tidak-bekerja', 10, 'Tidak Bekerja', NULL),
(8, 'guru-swasta', 7, 'Guru Swasta', NULL),
(9, 'dosen-swasta', 8, 'Dosen Swasta', NULL);

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
(9, 1, NULL, 0, 'Fitra Raudha', '', '0813 8841 0829', '', '', NULL, NULL, NULL, 'Direktur', '', NULL, 'Yes', '', 'Sudah', 'Ya', '', '', '1970-01-01', '2019-07-15 06:31:43'),
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
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

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
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

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
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`);

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
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `kunjungan`
--
ALTER TABLE `kunjungan`
  MODIFY `id_kunjungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=755;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
