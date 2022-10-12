-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 12:02 PM
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
(4, 1, 'service', 'Service', 4, 0, '2022-09-19 02:15:46'),
(5, 1, 'rental', 'Rental', 5, 0, '2022-09-19 02:15:35'),
(6, 1, 'attachment', 'Attachment', 1, 0, '2022-09-26 07:32:35'),
(7, 1, 'accecories', 'Accecories', 1, 0, '2022-09-26 07:33:50'),
(8, 1, 'related', 'Related', 1, 0, '2022-09-26 07:34:40'),
(9, 1, 'spare-part', 'Spare Part', 1, 0, '2022-09-26 07:35:10');

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
(4, 'sold', 'Sold', 4),
(5, 'in-stock', 'In Stock', 4);

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
  `telepon` varchar(255) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_map` text,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `whatsapp` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `facebook`, `youtube`, `instagram`, `google_map`, `id_user`, `tanggal`, `whatsapp`, `gambar`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`) VALUES
(1, 'PT. PANCADAYA MANUNGGAL SENTOSA', 'PADAMAS-Forklift', 'PADAMAS is Always a GOOD Idea', '<p>PADAMAS is Always a GOOD Idea!!</p>', '<h2><strong>Company Profile</strong></h2>\r\n<p>Established in 1993, PADAMAS-Forklift has grown as JAPAN authorized dealer in providing forklift&rsquo;s spare parts and services for the past decade. We have been continually focusing on JAPAN forklift development in order to provide superior services to our all customers. In 2014, we started a new division &ldquo;Rental and RMD(#LikeBrandNew) equipment&rdquo; to meet the SHIFTING environment in Indonesia&rsquo;s forklift consumers.<br /><br />Today, we are committed to delivering our quality, top of the line forklift products which include:<br />1. FORKLIFT-RMD equipment<br />2. FORKLIFT-Rental equipment<br />3. FORKLIFT-New equipment<br />4. FORKLIFT-CAM Attachment (Sideshift, Clamp, Rotary, Push-Pull, Extension Fork, etc)<br />5. FORKLIFT-Related Products (Oil, Tyres, Battery, Accu, etc)<br />6. FORKLIFT-Safety Accessories (Mirror, Camera, Lamp, Sensor, Belt, etc)<br />7. FORKLIFT-Maintenance Service<br />8. FORKLIFT-Spare Parts<br /><br />Our years of experience and reliable expertise in the forklift industry have allowed us to confidently serve our customers with outstanding performances.<br />We are looking forward to helping you!</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Company Visions</strong></h2>\r\n<p>To provide superior quality material-handling services that: CLIENTS recommend to friends and colleagues, EMPLOYEES are proud of, INVESTORS seek for a great long-term returns, and NATION contribution.<br /><br /><strong>PADAMAS is Always a GOOD Idea!!!</strong></p>', '', 'samuraigt123@gmail.com', '<p><strong>PT. PANCADAYA MANUNGGAL SENTOSA ( PADAMAS-Forklift )</strong><br />Jl. Bungur Besar No. 53 III-IV Jakarta 10460</p>\r\n<p><strong>Cabang</strong></p>\r\n<ul>\r\n<li><a title=\"Cabang Cikarang\" href=\"https://www.google.com/maps/place/PT+PADAMAS+FORKLIFT/@-6.2903602,107.1470011,17z/data=!3m1!4b1!4m5!3m4!1s0x2e699be2986068d9:0xaa7758664192da4a!8m2!3d-6.2903655!4d107.1491898?hl=id\" target=\"_blank\" rel=\"noopener\">Kawasan Industri JABABEKA 1, Jl. Jababeka 2D Blok C No.14R-S </a>Phone:+6221 8935190-4</li>\r\n<li><a title=\"Cabang Tangerang\" href=\"https://www.google.com/maps/place/Pt+Padamas+Forklift/@-6.2110164,106.550728,17z/data=!3m1!4b1!4m5!3m4!1s0x2e69ff2fabb23641:0x5fcd8aa11f2e294b!8m2!3d-6.2110159!4d106.550516?hl=id\" target=\"_blank\" rel=\"noopener\">Komp. Pergudangan INDOSERENA Blok C No 5 Jl. Raya Serang KM.12</a> Phone: +6221 29876203-04</li>\r\n<li><a title=\"Cabang Surabaya\" href=\"https://www.google.co.id/maps/place/Padamas+Forklift/@-7.4613432,112.7545101,19.04z/data=!4m12!1m6!3m5!1s0x2dd7fcaf3fffc725:0x93213265f3c4b0d0!2sPadamas+Forklift!8m2!3d-7.4612875!4d112.7543785!3m4!1s0x2dd7fcaf3fffc725:0x93213265f3c4b0d0!8m2!3d-7.4612875!4d112.7543785\" target=\"_blank\" rel=\"noopener\">Kws. Ind. &amp; Pergudangan SAFE N LOCK Blok Ai No. 5901 Lingkar Timur Sidoarjo</a> Phone: +6231 99715009</li>\r\n</ul>', '+6221 4260190', NULL, '(021) 4260190', 'forkliftpadamas-removebg-preview.png', 'favicon.png', 'PADAMAS\r\n', 'https://www.facebook.com/people/Padamas-Forklift/100078169860936/', 'https://www.youtube.com/channel/UCkJj0zJ55CdIXQD4zzj8c4w', 'https://www.instagram.com/forkliftpadamas/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.735626308537!2d106.8398753148659!3d-6.1661476621467575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5b7faf3c94d%3A0x3367f283e7520029!2sPadamas%20-%20Forklift!5e0!3m2!1sid!2sid!4v1567502663728!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 0, '2022-10-12 09:22:34', 'https://api.whatsapp.com/send?phone=6289529739767&text=&source=&data=', 'home.jpg', 'smtp', 'ssl://smtp.gmail.com', 465, 60, 'test@gmail.com', 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `updater` varchar(32) NOT NULL,
  `slug_layanan` varchar(255) NOT NULL,
  `judul_layanan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_layanan` varchar(20) NOT NULL,
  `jenis_layanan` varchar(20) NOT NULL,
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
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `id_user`, `updater`, `slug_layanan`, `judul_layanan`, `isi`, `status_layanan`, `jenis_layanan`, `keywords`, `gambar`, `hits`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`, `urutan`, `id_kategori`) VALUES
(1, 1, '', 'electric-forklift', 'Electric Forklift', '<p>Manufacturing environmentally efficient, dependable and durable electric forklifts<br />Electric forklifts are a quiet, environmentally friendly means of handling a wide range of unit loads including pallets, pallet boxes and stillages, giving you a comprehensive choice for any application. Designed primarily for use indoors are the perfect choice for any materials handling operation, from lifting goods in and out of racking to moving loads at ground level around a site.<br /><br />This well-established electric forklift manufacturer brings you benefits such as:<br />Advanced green AC power which gives greater performance<br />Longer shift cycles to improve efficiency<br />Simpler maintenance, meaning you can focus on what really matters<br />Versatile configurations which ensure our electric forklift trucks have easily<br /><br />For production environments, electric forklifts are perfectly suited to bringing supplies or components to a production line or clearing waste packaging or other production by products away. They can additionally be used to load or unload heavy goods vehicles, either from the rear of the vehicle (via a raised loading dock) or from the side (from ground level).</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>\r\n<h3><br /><br /></h3>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'electric.jpg', 26, NULL, NULL, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2022-10-10 09:47:07', NULL, 0),
(2, 1, '', 'forklift-gasoline', 'Forklift Gasoline', '<p>LP gas powered forklift trucks delivering first class performance.<br />Our LP gas powered forklift trucks present an excellent alternative to both diesel and electric counterbalance forklifts for a wide range of materials handling applications. In fact, in many ways they provide the best of both worlds without the main disadvantages of either.<br /><br />Gas powered forklifts that are fit for purpose, included:<br /><br />Working in warehouse racking<br />Loading goods vehicle<br />Carrying goods between one site building to another<br />Delivering a pallet of critical supplies to a production line<br />Just about any materials handling task!</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'gasoline.jpg', 48, NULL, NULL, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-09-27 20:13:45', NULL, 0),
(3, 1, '', 'forklift-diesel', 'Forklift Diesel', '<p>Diesel forklift trucks are one of the toughest workhorses in the materials handling world, being suited to a wide range of unit loads and designed to withstand the rigours of outdoor work. Powered by a fuel that is both easy to get hold of and straightforward to use, engine forklifts perform extremely well in harsh environments, including those that are wet or dirty.<br /><br />Diesel forklift typical applications include:<br />Loading and unloading goods vehicles<br />Container stuffing and moving goods into or out of external storage areas<br />Transferring items from one site location to another &ndash; for example between two different production areas</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'diesel.jpg', 29, NULL, NULL, '2019-05-17 04:37:00', '2019-05-17 09:36:19', '2022-09-27 20:13:58', NULL, 0),
(6, 1, '', 'service-contract', 'Service Contract', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\">A FORKLIFT service contract is almost always a smart choice for consumers interested in protecting themselves from the high costs of unexpected forklift repairs.<br />A forklift service contracts deliver real value by helping consumers protect against major breakdowns by pre-paying for repairs based, often on set monthly payments. This aim to give consumers peace of mind that they are protected against unexpected repair costs.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>', 'Publish', 'Service', 'A FORKLIFT service contract', 'service.jpg', 12, NULL, NULL, '2020-02-13 07:42:56', '2022-09-28 07:41:51', '2022-09-27 20:11:21', NULL, 0),
(10, 1, '', 'full-maintenance', 'Full Maintenance', '<p><strong>A FULL MAINTENANCE FORKLIFT CONTRACT</strong> is almost always a BETTER choice for consumers interested in protecting themselves from STOP LINE of PRODUCTION!<br /><br />The automotive industry is a stellar example of the cost of downtime. It&rsquo;s estimated that 1 minute of downtime costs automotive manufacturers $22,000 per minute or $1.3 million per hour. Some estimates ran as high as $50,000 per minute. As a smaller manufacturer, you may not be losing those staggering sums, but you do face the same problem.<br /><br />Why you don\'t protect your line production form downtime???<br /><strong>CALL US!</strong><br /><br />We also Provide a FULL MAINTENANCE CONTRACTS with UNIT BACK-UP<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA for Your FORKLIFT!</strong></p>', 'Publish', 'Service', 'A FULL MAINTENANCE FORKLIFT CONTRACT is almost always a BETTER choice for consumers interested in protecting themselves from STOP LINE of PRODUCTION!', 'mt.jpg', 5, NULL, NULL, '2022-09-19 08:39:49', '2022-09-19 08:37:47', '2022-09-27 20:11:27', NULL, 0),
(11, 1, '', 'engine-overhaul', 'Engine Overhaul', '<p><strong>DOES YOUR FORKLIFT BILLOW SMOKE?</strong></p>\r\n<p>Does your forklift&rsquo;s engine make strange sounds when starting, stopping, while idle or accelerating?<br />Have people ever suggested that you get your forklift&rsquo;s engine overhauled?<br />Well, maybe you should have it looked at by a professional mechanic.</p>\r\n<p><br /><strong>CALL US!</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Service', 'DOES YOUR FORKLIFT BILLOW SMOKE?', 'engine.jpg', 2, NULL, NULL, '2022-09-19 08:41:28', '2022-09-28 08:39:58', '2022-09-27 20:12:09', NULL, 0),
(12, 1, '', 'on-call-service-or-repair', 'On Call Service Or Repair', '<p><strong>DO YOU HAVE ANY PROBLEMS WITH YOUR FORKLIFT???</strong></p>\r\n<p>Our qualified mechanics and experienced technicians will use the best quality parts, premium lubricants and filtration.<br />We also offer a RELIABLE GUARANTEE on all workmanship performed.<br />Why go anywhere else? CALL US!<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Service', 'DO YOU HAVE ANY PROBLEMS WITH YOUR FORKLIFT???', 'repair.jpg', 6, NULL, NULL, '2022-09-19 08:42:45', '2022-09-28 08:41:44', '2022-09-27 20:12:28', NULL, 0),
(9, 1, '', 're-made-backlikebefore', 'RE-MADE #BACKLIKEBEFORE', '<p><strong>RMD (RE-MADE)</strong><br /><br />We are the only company in the materials handling industry in INDONESIA that operates this comprehensive RE-MADE service.<br />Our specially trained engineers completely disassemble each vehicle and exchange or refurbish every technical, mechanical and hydraulic component.<br />This gives you the peace of mind that when you decide to try RE-MADE programs from PADAMAS you avoid the potential dropouts and follow-up costs that you may associate with other repairer MHE providers.<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Service', 'RMD (RE-MADE)', 'remade.jpg', 2, NULL, NULL, '2022-09-19 08:36:08', '2022-09-28 08:34:16', '2022-09-27 20:13:32', NULL, 0),
(8, 1, '', 'reach-truck', 'Reach Truck', '<p>What is Reach Truck???<br /><br />Reach Trucks are forklifts used in narrow aisle applications, such as warehouses. They are designed to have two outer legs that help distribute the load, and a single set of wheels in the back. The wheels are located below the operator, which help create a tighter turn radius. This allows operators to navigate smaller spaces, and still be able to reach higher racking.<br /><br />Making your aisles taller and narrower is a good way to create more space when your warehouse becomes cramped, but it can also make navigation and material handling difficult. The Reach Truck is an asset to any warehouse fleet &ndash; it allows operators to easily navigate in and out of narrow aisles and reach significant heights, all while maintaining lifting capacity. The Reach Truck allows for unmatched confidence in the most challenging warehouse environments.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'reach.jpg', 5, NULL, NULL, '2022-09-19 06:48:24', '2022-09-19 06:48:07', '2022-09-27 20:14:05', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `updater` varchar(32) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `judul_produk` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_produk` varchar(20) NOT NULL,
  `jenis_produk` varchar(20) NOT NULL,
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
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `updater`, `slug_produk`, `judul_produk`, `isi`, `status_produk`, `jenis_produk`, `keywords`, `gambar`, `hits`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`, `urutan`, `id_kategori`) VALUES
(1, 1, '', 'telescopics-fork', 'Telescopics Fork', '<p>Benefits:</p>\r\n<p>1. Reduce lift truck fuel bills by 50%.<br />2. Increase warehouse capacity by up to 40%.<br />3. Load/unload vehicles in half the time &amp; half the space.<br />4. Eliminate costly vehicle bed damage.<br />5. Handle two pallets simultaneously - half your number of journeys.</p>\r\n<p><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Attachment', 'Padamas Telescopics', 'telescopics.jpg', 30, NULL, NULL, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2022-10-12 05:38:15', NULL, 6),
(2, 1, '', 'push-pull', 'Push-Pull', '<p>With the help of sheet retainers instead of pallets, this attachment can push and pull goods safely and efficiently. It can improve production efficiency and save costs. It can be used in electronics, food, light industry and other industries.</p>\r\n<p>Characteristics:<br />1. Loading and unloading goods can be done without pallets.<br />2. Protected hydraulics.<br />3. Simplified hydraulic circuit.</p>\r\n<p><strong>PADAMAS is ALWAYS a GOOD IDEA for YOUR FORKLIFT!</strong></p>', 'Publish', 'Attachment', 'Padamas Push', 'push.jpg', 48, NULL, NULL, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-10-05 09:04:01', NULL, 6),
(3, 1, '', 'hinged-carriage', 'Hinged Carriage', '<p>A hinged carriage helps you to tip bulk cargo containers in a safe way. You can fit this attachment with a bucket to shovel all bulk goods such as sand, coal, grain, fertiliser, sods, blocks ...<br /><br />Forklift hinged carriage are widely used for wood industry, architecture &amp; construction,<br />metal industry and livestock industry. They are designed primarily for tilting forward, the<br />hinged forks can also be conveniently used for handling palletized loads.<br /><br />Characteristics<br />1. High-strength all-steel structure design, always<br />of high efficiency under continuous operation.<br />2. E-slot in the overall framework to improve the<br />stability of product, to extend the longevity of<br />product.<br />3. Reasonable design, nice outlook, using<br />the world&rsquo;s most high-quality hydraulic<br />components.<br />4. Excellent visibility.<br />5. Rugged lightweight construction.<br />6. Fast arm opening speeds with less energy<br />consumption.<br />7. High net capacity.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Attachment', 'Padamas Hinged', 'hinged.jpg', 27, NULL, NULL, '2019-05-17 04:37:00', '2019-05-17 09:36:19', '2022-09-26 09:41:14', NULL, 6),
(6, 1, '', 'mirror', 'Mirror', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\"><strong>PANAROMIC MIRROR</strong><br /><br />&bull; Universal use<br />&bull; Panoramic view 180&deg;<br />&bull; Shock?resistant (plastic housing + acrylic)<br />&bull; Adjustable ball joint height<br />&bull; Dimensions: 275 x 140 mm<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>', 'Publish', 'Accecories', 'Padamas Mirror', 'mirror.jpg', 15, NULL, NULL, '2020-02-13 07:42:56', '2022-09-28 07:41:51', '2022-10-12 05:50:35', NULL, 0),
(18, 1, '', 'sensor', 'Sensor', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\"><strong>Back?up anti?collision alert mounted sensor</strong></div>\r\n<div class=\"style_598_5 data_290_925 text\"><br />This device is an ultrasonic rear obstacle detection system and an invaluable aid to safety. With up to 4 sensors it is possible to detect any object within 3 metres.<br />Features:<br />&bull; Ultrasonic and high?tech sensor system<br />&bull; Detection range of 3 metres<br />&bull; Rapid response time<br />&bull; Waterproof and shockproof design<br />&bull; 12/24 V<br />&bull; Very easy installation<br />&bull; Performs very well in humid weather (even rain)<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>\r\n<div class=\"lay_598_109 popup popup_window_source   data_290_924\">&nbsp;</div>', 'Publish', 'Accecories', 'Padamas Sensor', 'sensor.jpg', 2, NULL, NULL, '2022-09-28 04:45:15', '2022-09-28 04:44:08', '2022-10-12 07:10:27', NULL, 0),
(10, 1, '', 'security-lock', 'Security Lock', '<p><strong>PROGRAMMABLE SECURITY LOCK (PSL)</strong><br /><br />Suitable for all types of voltages, our Security Lock is the most easy?to?use and fast?to?program access control device in our range. It can hold up to 99 user codes.<br /><br />Features:<br />&bull; 12&ndash;120 VDC<br />&bull; Waterproof IP65<br />&bull; Up to 99 different users/drivers (settings can only be changed by a supervisor)<br />&bull; 1 programmable supervisor code<br />&bull; Last user identification<br />&bull; Automatic shut?off after 3 minutes (fixed time) of vehicle inactivity<br />&bull; Maintenance alert after 250 hours<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Accecories', 'Padamas Security Lock', 'security.jpg', 4, NULL, NULL, '2022-09-19 08:39:49', '2022-09-28 08:37:47', '2022-09-28 03:15:33', NULL, 0),
(11, 1, '', 'alarm', 'Alarm', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\">BACK-UP Alarms should be installed on teh rear of the FORKLIFT in a location that will profide protection from weather conditions and minimize the possibility of damage in the event of collision. Alarms should be mounted approximately 4\' above the ground with the face of the alarms directed toward the rear or hazard zone of the FORKLIFT.<br /><br />- VOLTS 12V until 80V<br />- DECIBELS 97<br />- WARRANTY 2 years<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>\r\n<div class=\"lay_598_109 popup popup_window_source   data_290_924\">&nbsp;</div>', 'Publish', 'Accecories', 'Padamas Alarm', 'alarm.jpg', 1, NULL, NULL, '2022-09-19 08:41:28', '2022-09-28 08:39:58', '2022-09-28 03:15:49', NULL, 0),
(12, 1, '', 'lamp', 'Lamp', '<p><strong>BLUE LIGHT SAFETY</strong><br />&bull; Technology: LED 2 pieces<br />&bull; Mounting: pedestal M10<br />&bull; Colour: blue<br />&bull; Nominal power: 6 W<br />&bull; IP67<br />&bull; Connector: J2 built?in<br /><br /><strong>ROTARY LAMP</strong><br />&bull; Technology: LED<br />&bull; Mounting: 2 screws<br />&bull; Centre distance: 86 mm<br />&bull; Wire length: 300 mm<br />&bull; IP65<br />&bull; Flash rate: 60 &plusmn; 10 flashes/minute<br /><br /><strong>RED ZONE LIGHT</strong><br />&bull; Technology: LED 6 pieces<br />&bull; Mounting: brackets<br />&bull; Nominal power: 30 W<br />&bull; 9&ndash;60 V<br />&bull; IP67<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Accecories', 'Padamas Lamp', 'lamp.jpg', 4, NULL, NULL, '2022-09-19 08:42:45', '2022-09-28 08:41:44', '2022-09-28 03:15:57', NULL, 0),
(13, 1, '', 'battery', 'Battery', '<p>Battery forklift have replaced conventional forklift (i.e., internal-combustion engine type) as measures for the increasing demand on clean environments in various sites where forklift take an active role, such as factories, distribution centers, warehouses, ports and harbors, airports, etc. The batteries as a driving source of battery forklift are an outcome of integrating a number of superior technologies based on long-time practices and affluent experiences, and still advancing by inheriting these.<br /><br />Now, we have the newest brands for batteries namely ROCKET and CHLORIDE!<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Related', 'Padamas Battery', 'battery.jpg', 9, NULL, NULL, '2022-09-26 08:25:00', '2022-09-26 08:22:53', '2022-10-10 06:43:26', NULL, 8),
(9, 1, '', 'mitsubishi-spare-part', 'Mitsubishi Spare Part', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\">Forklift spare parts might seem like dime-a-dozen commodities that can be purchased without paying much attention. But smart operations understand that the parts make up the whole, and the best way to maximize the value of your Mitsubishi Forklift is to replace its parts with the originals &ndash; Mitsubishi Genuine Parts.<br />We are a local dealer for Mitsubishi Forklift provide Genuine Parts from MITSUBISHI LOGISNEXT.<br />MITSUBISHI GENIUNE PARTS comes from their quality, durability, and reliability.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>', 'Publish', 'Spare', 'Padamas Mitsubishi Spare Parts', 'mitsubishi.jpg', 8, NULL, NULL, '2022-09-19 08:36:08', '2022-09-28 08:34:16', '2022-09-28 03:14:51', NULL, 0),
(8, 1, '', 'bale-clamps', 'Bale Clamps', '<p>Bale clamps are a specific type of clamps. These attachments are capable of handling the majority of baled materials, such as waste paper, recycled plastic products, textile rags, natural and synthetic textile fibres. cotton, wool, textile bales.<br /><br />Characteristics<br />1. Proven durable T-beam arm aluminium frame construction.<br />2. Superior arm-slide bearing for extended service life.<br />3. Ribs provide secure grip.<br />4. Regenerative hydraulic valving for optimal arm speed.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Attachment', 'Padamas Bale', 'bale.jpg', 5, NULL, NULL, '2022-09-19 06:48:24', '2022-09-19 06:48:07', '2022-10-05 02:31:56', NULL, 6),
(14, 1, '', 'tyre', 'Tyre', '<p><strong>SOLID TIREECOSOLID is RESILIENT TIRE</strong><br />1. Available in the 8&rdquo; to 15&rdquo; size range.<br />2. Designed for use on forklifts in good floor condition. <br />3. Available only in standard black compound<br />4. Bead wires to avoid rim slippage<br />5. Wear indicator built in to lug design<br /><br /><br /><strong>PNEUMATIC TIRE</strong><br /><strong>T900 is TOTAL SOLUTION</strong><br />&bull; Designed for heavy d uty use in all A PPLI CATIONS<br />&bull; Premium tread c ompound for maximum tire life and wear resistance<br />&bull; Extra W ide tread for increased stability and traction<br />&bull; Reinforced side wall for improved p rotection against side impacts<br />&bull; Reinforced bead area that p rotects the wheel flanges<br />&bull; Excellent ride QUALITY<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Related', 'Padamas Tyre', 'tyre.jpg', 1, NULL, NULL, '2022-09-28 04:18:36', '2022-09-28 04:18:17', '2022-09-28 03:14:21', NULL, 0),
(15, 1, '', 'oil', 'Oil', '<p><strong>PENZSTAR-PADAMAS oils</strong><br /><br />Using quality lubricants can help to extend the running life of forklift trucks and container handlers, but they can also do much more. Oils and lubricants from PENZSTAR-PADAMAS are formulated to help meet the most challenging requirements for emissions and fuel efficiency, keeping your forklifts green.<br /><br />Forklift engines, transmissions and hydraulic components all experience wear, whether used in standard or heavy-duty operations. Lubricants and oils have an important role in protecting equipment so that it runs at full effectiveness at all times. When protected with quality PENZSTAR-PADAMAS oils and lubricants, the equipment life of your truck may be prolonged. This enhances productivity and delivers low operating costs.<br /><br />For efficiency and to comply with legislative requirements relating to emissions, protecting a forklift truck&rsquo;s exhaust emissions control system is important. PENZSTAR-PADAMAS oils and lubricants are recommended to help to prevent the diesel particulate filter (DPF) in your forklift truck from becoming blocked, which can increase fuel consumption and expenditure, as well as emission levels.<br /><br />PENZSTAR-PADAMAS oils provides:<br />&bull; Engine Oil<br />&bull; Gear Oil<br />&bull; Hydraulic Oil<br />&bull; ATF Oil<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Related', 'Padamas Oil', 'oil.jpg', 1, NULL, NULL, '2022-09-28 04:34:30', '2022-09-28 04:32:24', '2022-10-05 04:59:50', NULL, 0),
(16, 1, '', 'accu', 'Accu', '<p><strong>Bosch SM Mega Power Plus</strong><br /><strong>For Longer Life with Extra Power</strong><br /><br /><br />A superior option for absolute dependability. The SM Mega Power Plus is the perfect match for FORKLIFT technology or the customers who just want more.<br /><br />Long Service Life<br />&bull; Special tissue on positive plates prevents shedding of active materials, enhancing overall service life<br />&bull; High Tin grid contents reduce corrosion rate while enhancing conductivity<br /><br />High Resistance<br />&bull; Superior thermoplastic container<br />&bull; High environmental resistance combined with outstanding aesthetics<br />&bull; Greater resistance to gas and oil<br />&bull; Excellent safety and recyclability through innovative container material<br /><br />Optimal Performance<br />&bull; Central Lug ensures maximum current flow and high cranking power<br />&bull; Dense active material enhances performance significantly<br />&bull; Low internal resistance translates into high power output<br /><br />Assured Safety<br />&bull; Completely sealed and maintenance free design<br />&bull; Negative plates are entirely encapsulated with a tough polyethylene envelope separator which prevents short circuits due to overheating and overcharge<br />&bull; Flame arrestor prevents explosion from spark<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Related', 'Padamas Accu', 'accu.jpg', 1, NULL, NULL, '2022-09-28 04:35:49', '2022-09-28 04:34:34', '2022-09-28 03:14:42', NULL, 0),
(17, 1, '', 'camera', 'Camera', '<p><strong>Professional Wireless Camera System</strong><br />Our Cam is one of the most complete, easy?to?install wireless camera systems on the market. With a 35?hour battery pack, a recording function and an improved design, this premium camera system is the most recommended camera system for your FORKLIFT.<br /><br />Features:<br />&bull; 7&rdquo; heavy?duty monitor<br />&bull; Modern, improved monitor<br />&bull; Recording function (up to 220 hours with an SD card, not included)<br />&bull; 30&ndash;35 hours battery life<br />&bull; Easy installation<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Accecories', 'Padamas Camera', 'camera.jpg', 2, NULL, NULL, '2022-09-28 04:37:42', '2022-09-28 04:36:49', '2022-10-05 03:52:06', NULL, 0),
(19, 1, '', 'guard', 'Guard', '<p>Discover all GUARD products<br />&bull; Prevents damage to the infrastructure, load and machine<br />&bull; Absorbs the energy in case of a collision with the site infrastructure<br />&bull; Cost-effective (reduced risk of accidents and damage)<br />&bull; Easy to mount (secured by means of magnets)<br />&bull; Can be used on multiple machines and makes<br />&bull; Good chemical resistance<br />&bull; Secured by means of magnets<br />&bull; You can easily replace the outer bumper or just use it without the bigger bumper for less invasive impacts<br />&bull; This type is suitable for all lift trucks and reachtrucks<br /><br />Protect your driver, machine and warehouse = PROTECT YOU MONEY<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Accecories', 'Padamas Guard', 'guard.jpg', 1, NULL, NULL, '2022-09-28 04:48:29', '2022-09-28 04:47:40', '2022-09-28 03:16:12', NULL, 0),
(20, 1, '', 'belt', 'Belt', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\">Springbelt is a remarkable product that has been refined and developed over many years to protect both employees and employers. It&rsquo;s called Springbelt, because as you can see, it springs up when unbuckled making it a real nuisance and cannot be sat on as per a normal belt/buckle.<br />When it&rsquo;s buckled, it holds the operator firmly, comfortably and safely in their seat. It can be fitted easily to all common types of mobile machinery providing highly visible workplace protection for you and your operators.<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>\r\n<div class=\"lay_598_109 popup popup_window_source   data_290_924\">&nbsp;</div>', 'Publish', 'Accecories', 'Padamas Belt', 'belt.jpg', 1, NULL, NULL, '2022-09-28 04:49:20', '2022-09-28 04:48:33', '2022-09-28 03:16:20', NULL, 0),
(21, 1, '', 'toyota-spare-part', 'Toyota Spare Part', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\">Forklift spare parts might seem like dime-a-dozen commodities that can be purchased without paying much attention. But smart operations understand that the parts make up the whole, and the best way to maximize the value of your Toyota Forklift is to replace its parts with the originals &ndash; Toyota Genuine Parts.<br />We are a local dealer for Toyota Forklift provide Genuine Parts from Toyota Forklift.<br />TOYOTA GENIUNE PARTS comes from their quality, durability, and reliability.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>\r\n<div class=\"lay_598_109 popup popup_window_source   data_290_924\">&nbsp;</div>', 'Publish', 'Spare', 'Padamas Toyota Spare Part', 'toyota.jpg', 1, NULL, NULL, '2022-09-28 04:55:21', '2022-09-28 04:50:52', '2022-09-28 03:14:58', NULL, 0),
(22, 1, '', 'other-spare-parts', 'Other Spare Parts', '<ul>\r\n<li>What do we mean by quality?</li>\r\n<li>What do we mean by durability?</li>\r\n<li>What do we mean by reliability?</li>\r\n<li>What do we mean by efficiency</li>\r\n<li>Our Spare Parts are quality, durability, reliability, and efficiency!</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Spare', 'Padamas Other Spare Parts', 'other.jpg', 7, NULL, NULL, '2022-09-28 05:00:46', '2022-09-28 05:00:00', '2022-10-12 07:10:17', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
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
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
(2, 4, 1, 'RMD02', 'Galeri', '<p>-</p>', 'rmd02.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:06'),
(3, 4, 1, 'RMD03', 'Galeri', '<p>-</p>', 'rmd03.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:13'),
(4, 4, 1, 'RMD04', 'Galeri', '<p>-</p>', 'rmd04.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:19'),
(6, 4, 1, 'RMD06', 'Galeri', '<p>-</p>', 'rmd06.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:32'),
(7, 4, 1, 'RMD07', 'Galeri', '<p>-</p>', 'rmd07.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:39'),
(5, 4, 1, 'RMD05', 'Galeri', '<p>-</p>', 'rmd05.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:25'),
(8, 4, 1, 'RMD08', 'Galeri', '<p>-</p>', 'rmd08.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:47'),
(9, 4, 1, 'RMD09', 'Galeri', '<p>-</p>', 'rmd09.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:51:54'),
(10, 4, 1, 'RMD10', 'Galeri', '<p>-</p>', 'rmd10.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:52:01'),
(11, 4, 1, 'RMD11', 'Galeri', '<p>-</p>', 'rmd11.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:52:11'),
(12, 4, 1, 'RMD12', 'Galeri', '<p>-</p>', 'rmd12.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:52:18'),
(13, 4, 1, 'RMD13', 'Galeri', '<p>-</p>', 'rmd13.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:52:26'),
(14, 4, 1, 'RMD14', 'Galeri', '<p>-</p>', 'rmd14.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:52:36'),
(15, 4, 1, 'RMD15', 'Galeri', '<p>-</p>', 'rmd15.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:52:45'),
(16, 4, 1, 'RMD16', 'Galeri', '<p>-</p>', 'rmd16.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:52:55'),
(17, 4, 1, 'RMD17', 'Galeri', '<p>-</p>', 'rmd17.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:02'),
(18, 4, 1, 'RMD18', 'Galeri', '<p>-</p>', 'rmd18.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:10'),
(19, 4, 1, 'RMD19', 'Galeri', '<p>-</p>', 'rmd19.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:18'),
(20, 4, 1, 'RMD20', 'Galeri', '<p>-</p>', 'rmd20.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:25'),
(21, 4, 1, 'RMD21', 'Galeri', '<p>-</p>', 'rmd21.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:34'),
(22, 4, 1, 'RMD22', 'Galeri', '<p>-</p>', 'rmd22.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:41'),
(23, 4, 1, 'RMD23', 'Galeri', '<p>-</p>', 'rmd23.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:49'),
(24, 4, 1, 'RMD24', 'Galeri', '<p>-</p>', 'rmd24.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:53:56'),
(25, 4, 1, 'RMD25', 'Galeri', '<p>-</p>', 'rmd25.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:54:04'),
(26, 4, 1, 'RMD26', 'Galeri', '<p>-</p>', 'rmd26.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:54:16'),
(27, 4, 1, 'RMD27', 'Galeri', '<p>-</p>', 'rmd27.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:54:23'),
(28, 4, 1, 'RMD28', 'Galeri', '<p>-</p>', 'rmd28.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:54:30'),
(29, 4, 1, 'RMD29', 'Galeri', '<p>-</p>', 'rmd29.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:54:38'),
(30, 4, 1, 'RMD30', 'Galeri', '<p>-</p>', 'rmd30.jpg', NULL, 'Publish', 1, 'Ya', '2022-10-12 09:54:45'),
(1, 4, 1, 'RMD01', 'Galeri', '<p>-</p>', 'rmd011.jpg', 1, 'Publish', 1, 'Ya', '2022-10-12 09:51:01'),
(31, 4, 1, 'RMD31', 'Galeri', '<p>-</p>', 'rmd31.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:54:54'),
(32, 4, 1, 'RMD32', 'Galeri', '<p>-</p>', 'rmd32.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:55:05'),
(33, 4, 1, 'RMD33', 'Galeri', '<p>-</p>', 'rmd33.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:55:19'),
(34, 4, 1, 'RMD34', 'Galeri', '<p>-</p>', 'rmd34.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:55:31'),
(35, 4, 1, 'RMD35', 'Galeri', '<p>-</p>', 'rmd35.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:55:40'),
(36, 4, 1, 'RMD36', 'Galeri', '<p>-</p>', 'rmd36.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:55:48'),
(37, 4, 1, 'RMD37', 'Galeri', '<p>-</p>', 'rmd37.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:55:56'),
(38, 4, 1, 'RMD38', 'Galeri', '<p>-</p>', 'rmd38.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:56:06'),
(39, 4, 1, 'RMD39', 'Galeri', '<p>-</p>', 'rmd39.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:56:17'),
(40, 4, 1, 'RMD40', 'Galeri', '<p>-</p>', 'rmd40.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:56:26'),
(41, 4, 1, 'RMD41', 'Galeri', '<p>-</p>', 'rmd41.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:56:38'),
(42, 4, 1, 'RMD42', 'Galeri', '<p>-</p>', 'rmd42.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:56:48'),
(43, 4, 1, 'RMD43', 'Galeri', '<p>-</p>', 'rmd43.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:56:56'),
(44, 4, 1, 'RMD44', 'Galeri', '<p>-</p>', 'rmd44.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:57:04'),
(45, 4, 1, 'RMD45', 'Galeri', '<p>-</p>', 'rmd45.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:57:13'),
(46, 4, 1, 'RMD46', 'Galeri', '<p>-</p>', 'rmd46.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:57:21'),
(47, 4, 1, 'RMD47', 'Galeri', '<p>-</p>', 'rmd47.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:57:30'),
(48, 4, 1, 'RMD48', 'Galeri', '<p>-</p>', 'rmd48.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:57:38'),
(49, 4, 1, 'RMD49', 'Galeri', '<p>-</p>', 'rmd49.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:57:45'),
(50, 4, 1, 'RMD50', 'Galeri', '<p>-</p>', 'rmd50.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:57:57'),
(51, 4, 1, 'RMD51', 'Galeri', '<p>-</p>', 'rmd51.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:58:08'),
(52, 4, 1, 'RMD52', 'Galeri', '<p>-</p>', 'rmd52.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:58:15'),
(53, 4, 1, 'RMD53', 'Galeri', '<p>-</p>', 'rmd53.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:58:21'),
(54, 4, 1, 'RMD54', 'Galeri', '<p>-</p>', 'rmd54.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:58:28'),
(55, 4, 1, 'RMD55', 'Galeri', '<p>-</p>', 'rmd55.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:58:36'),
(56, 4, 1, 'RMD56', 'Galeri', '<p>-</p>', 'rmd56.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:58:42'),
(57, 4, 1, 'RMD57', 'Galeri', '<p>-</p>', 'rmd57.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:58:52'),
(58, 4, 1, 'RMD58', 'Galeri', '<p>-</p>', 'rmd58.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:59:00'),
(59, 4, 1, 'RMD59', 'Galeri', '<p>-</p>', 'rmd59.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:59:09'),
(60, 4, 1, 'RMD60', 'Galeri', '<p>-</p>', 'rmd60.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:59:17'),
(61, 4, 1, 'RMD61', 'Galeri', '<p>-</p>', 'rmd61.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:59:26'),
(62, 4, 1, 'RMD62', 'Galeri', '<p>-</p>', 'rmd62.jpg', NULL, 'Publish', 1, 'Tidak', '2022-10-12 09:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
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
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
(1, 5, 1, 'homepage1', 'Homepage', '<p>-</p>', 'home.jpg', NULL, 'Publish', 2, 'Tidak', '2022-09-28 01:55:53'),
(5, 5, 1, 'R074 TOYOTA FORKLIFT 60-8FD25 4.7M FSV MAST, MANUAL TRANSMISSION + SIDESHIFTER', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />1DZ-II DIESEL ENGINE<br />2.5 TON CAP.<br />MANUAL TRANSMISSION<br />4.7M LIFT HEIGHT (3 STAGES FREE LIFT)<br />WITH SIDESHIFTER<br />LOKASI UNIT : SHOWROOM CIKARANG</p>', 'r074.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-18 17:25:41'),
(6, 5, 1, 'R051 TOYOTA 02-7FDA50 3M V MAST, AUTOMATIC TRANSMISSION', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />14Z- DIESEL ENGINE 6 CYL.<br />5.0 TON CAP.<br />MANUAL TRANSMISSION<br />3M LIFT HEIGHT<br />WITHOUT SIDESHIFTER<br />LOKASI UNIT : SHOWROOM CIKARANG<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.<br />GARANSI FOTO &amp; ASLINYA 100% SAMA!!!</p>', 'r0511.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-18 17:24:30'),
(7, 5, 1, 'R069 TOYOTA, 60-8FD25 3M V-MAST, MANUAL TRANSMISSION + SIDESHIFTER', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />1DZ-II DIESEL ENGINE<br />2.5 TON CAP.<br />MANUAL TRANSMISSION<br />3M LIFT HEIGHT<br />WITH SIDESHIFTER<br />LOKASI UNIT : SHOWROOM CIKARANG<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.<br />GARANSI FOTO &amp; ASLINYA 100% SAMA!!!</p>', 'r069.jpg', NULL, 'Publish', 0, 'Ya', '2022-09-18 17:21:28'),
(8, 5, 1, 'R053 TOYOTA ELECTRIC FORKLIFT, 8FBN15 3M FV MAST', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA, ELECTRIC FORKLIFT<br />BATTERY 48V 390AH (CONDITION 80% UP)<br />1.5 TON CAP.<br />AUTOMATIC TRANSMISSION<br />3M LIFT HEIGHT FV-THREE STAGES<br />LOKASI UNIT : SHOWROOM CIKARANG<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.<br />GARANSI FOTO &amp; ASLINYA 100% SAMA!!!</p>', 'r053.jpg', NULL, 'Publish', 0, 'Ya', '2022-09-18 17:20:24'),
(9, 5, 1, 'ER004 TOYOTA ENGINE 1DZ-II', 'Galeri', '<p>PADAMAS is ALWAYS a GOOD IDEA for YOUR FORKLIFT<br /><br />RMD TOYOTA DIESEL ENGINE<br />MODEL: 1DZ-II<br />RATED HORSEPOWER/r.p.m: 44/2600 (41/2500) kW(JIS ps)<br />RATED TORQUE/ r.p.m: 167/1600 (157/2500) N-m (JIS kg-m)<br />NUMBER OF CYL. : 4<br />PISTON DISPLACEMENT: 2486 cc<br />APLICATION: TOYOTA FORKLIFT 7&amp;8 SERIES 1.0-3.0TON<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.</p>', 'er004.jpg', NULL, 'Publish', 0, 'Ya', '2022-09-18 17:17:12'),
(10, 5, 1, 'R047 TOYOTA, 02-7FD35 3M V MAST, AUTOMATIC TRANSMISSION', 'Galeri', '<p>\"PADAMAS is always a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />14Z DIESEL ENGINE<br />3.5TON CAP<br />3M LIFT HEIGHT<br />AUTOMATIC TRANSMISSION<br />LOKASI CIKARANG SHOWROOM<br />JAMINAN 100% GAMBAR SESUAI DENGAN ASLINYA<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.</p>', 'r047.jpg', 1, 'Publish', 0, 'Ya', '2022-09-18 17:15:47'),
(11, 5, 1, 'R039 TOYOTA, 2TG10 TOWING GASOLINE, MANUAL TRANSMISSION', 'Galeri', '<p>\"PADAMAS IS ALWAYS A GOOD IDEA FOR YOUR FORKLIFT\"<br /><br />TOYOTA<br />5K GASOLLINE ENGINE<br />1-9,8 TON CAP DRAW BAR PULL<br />MANUAL TRANSMISSION<br />LOKASI CIKARANG SHOWROOM<br />JAMINAN FOTO SAMA DENGAN ASLINYA 100%<br /><br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.</p>', 'r039.jpg', 2, 'Publish', 1, 'Ya', '2022-09-21 03:01:54'),
(12, 5, 1, 'homepage2', 'Homepage', '<p>-</p>', 'home2.jpg', NULL, 'Publish', 2, 'Tidak', '2022-09-28 01:53:52'),
(13, 5, 1, 'homepage3', 'Homepage', '<p>-</p>', 'home3.jpg', NULL, 'Publish', 2, 'Tidak', '2022-09-28 01:53:42'),
(14, 5, 1, 'homepage4', 'Homepage', '<p>-</p>', 'home4.jpg', 3, 'Publish', 2, 'Tidak', '2022-09-28 01:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(1, 'admin', 'samuraigt123@gmail.com', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', 'default.jpg', '', '2022-10-03 04:33:05', '2022-10-12 04:06:45');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
