-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2022 at 12:09 PM
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
(12, 1, 'MARKETING', 'Bagian Pemasaran', 'Aktif', '', '', '2019-04-13 20:10:33', '2019-04-13 06:10:33'),
(13, 1, 'KEUANGAN', 'Bagian Keuangan', 'Aktif', '', '', '2019-04-13 20:10:46', '2019-04-13 06:10:46'),
(14, 1, 'adada', 'adad', 'Aktif', '', '', '2019-04-14 05:45:14', '2019-04-13 15:45:14');

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
(1, 1, '', 'electric-forklift', 'Electric Forklift', '<p>Manufacturing environmentally efficient, dependable and durable electric forklifts<br />Electric forklifts are a quiet, environmentally friendly means of handling a wide range of unit loads including pallets, pallet boxes and stillages, giving you a comprehensive choice for any application. Designed primarily for use indoors are the perfect choice for any materials handling operation, from lifting goods in and out of racking to moving loads at ground level around a site.<br /><br />This well-established electric forklift manufacturer brings you benefits such as:<br />Advanced green AC power which gives greater performance<br />Longer shift cycles to improve efficiency<br />Simpler maintenance, meaning you can focus on what really matters<br />Versatile configurations which ensure our electric forklift trucks have easily<br /><br />For production environments, electric forklifts are perfectly suited to bringing supplies or components to a production line or clearing waste packaging or other production by products away. They can additionally be used to load or unload heavy goods vehicles, either from the rear of the vehicle (via a raised loading dock) or from the side (from ground level).</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>\r\n<h3><br /><br /></h3>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'electric.jpg', 17, NULL, NULL, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2022-09-26 04:20:36', NULL, 0),
(2, 1, '', 'forklift-gasoline', 'Forklift Gasoline', '<p>LP gas powered forklift trucks delivering first class performance.<br />Our LP gas powered forklift trucks present an excellent alternative to both diesel and electric counterbalance forklifts for a wide range of materials handling applications. In fact, in many ways they provide the best of both worlds without the main disadvantages of either.<br /><br />Gas powered forklifts that are fit for purpose, included:<br /><br />Working in warehouse racking<br />Loading goods vehicle<br />Carrying goods between one site building to another<br />Delivering a pallet of critical supplies to a production line<br />Just about any materials handling task!</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'rental.jpg', 46, NULL, NULL, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-09-26 03:50:30', NULL, 0),
(3, 1, '', 'forklift-diesel', 'Forklift Diesel', '<p>Diesel forklift trucks are one of the toughest workhorses in the materials handling world, being suited to a wide range of unit loads and designed to withstand the rigours of outdoor work. Powered by a fuel that is both easy to get hold of and straightforward to use, engine forklifts perform extremely well in harsh environments, including those that are wet or dirty.<br /><br />Diesel forklift typical applications include:<br />Loading and unloading goods vehicles<br />Container stuffing and moving goods into or out of external storage areas<br />Transferring items from one site location to another &ndash; for example between two different production areas<br /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'diesel1.jpg', 28, NULL, NULL, '2019-05-17 04:37:00', '2019-05-17 09:36:19', '2022-09-26 03:47:57', NULL, 0),
(6, 1, '', 'service-contract', 'Service Contract', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\">A FORKLIFT service contract is almost always a smart choice for consumers interested in protecting themselves from the high costs of unexpected forklift repairs.<br />A forklift service contracts deliver real value by helping consumers protect against major breakdowns by pre-paying for repairs based, often on set monthly payments. This aim to give consumers peace of mind that they are protected against unexpected repair costs.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>', 'Publish', 'Service', 'A FORKLIFT service contract', 'service.jpg', 9, NULL, NULL, '2020-02-13 07:42:56', '2020-02-13 07:41:51', '2022-09-21 07:12:11', NULL, 0),
(10, 1, '', 'full-maintenance', 'Full Maintenance', '<p><strong>A FULL MAINTENANCE FORKLIFT CONTRACT</strong> is almost always a BETTER choice for consumers interested in protecting themselves from STOP LINE of PRODUCTION!<br /><br />The automotive industry is a stellar example of the cost of downtime. It&rsquo;s estimated that 1 minute of downtime costs automotive manufacturers $22,000 per minute or $1.3 million per hour. Some estimates ran as high as $50,000 per minute. As a smaller manufacturer, you may not be losing those staggering sums, but you do face the same problem.<br /><br />Why you don\'t protect your line production form downtime???<br /><strong>CALL US!</strong><br /><br />We also Provide a FULL MAINTENANCE CONTRACTS with UNIT BACK-UP<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA for Your FORKLIFT!</strong></p>', 'Publish', 'Service', 'A FULL MAINTENANCE FORKLIFT CONTRACT is almost always a BETTER choice for consumers interested in protecting themselves from STOP LINE of PRODUCTION!', 'mt.jpg', 4, NULL, NULL, '2022-09-19 08:39:49', '2022-09-19 08:37:47', '2022-09-26 03:33:49', NULL, 0),
(11, 1, '', 'engine-overhaul', 'Engine Overhaul', '<p><strong>DOES YOUR FORKLIFT BILLOW SMOKE?</strong> </p>\r\n<p>Does your forklift&rsquo;s engine make strange sounds when starting, stopping, while idle or accelerating?<br />Have people ever suggested that you get your forklift&rsquo;s engine overhauled?<br />Well, maybe you should have it looked at by a professional mechanic.</p>\r\n<p><br /><strong>CALL US!</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Service', 'DOES YOUR FORKLIFT BILLOW SMOKE?', 'engine.jpg', 0, NULL, NULL, '2022-09-19 08:41:28', '2022-09-19 08:39:58', '2022-09-19 06:41:28', NULL, 0),
(12, 1, '', 'on-call-service-or-repair', 'On Call Service Or Repair', '<p><strong>DO YOU HAVE ANY PROBLEMS WITH YOUR FORKLIFT???</strong></p>\r\n<p>Our qualified mechanics and experienced technicians will use the best quality parts, premium lubricants and filtration.<br />We also offer a RELIABLE GUARANTEE on all workmanship performed.<br />Why go anywhere else? CALL US!<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Service', 'DO YOU HAVE ANY PROBLEMS WITH YOUR FORKLIFT???', 'repair.jpg', 2, NULL, NULL, '2022-09-19 08:42:45', '2022-09-19 08:41:44', '2022-09-21 04:40:23', NULL, 0),
(14, 1, '', 'company-profile', 'Company Profile', '<p>Established in 1993, PADAMAS-Forklift has grown as JAPAN authorized dealer in providing forklift&rsquo;s spare parts and services for the past decade. We have been continually focusing on JAPAN forklift development in order to provide superior services to our all customers. In 2014, we started a new division &ldquo;Rental and RMD(#LikeBrandNew) equipment&rdquo; to meet the SHIFTING environment in Indonesia&rsquo;s forklift consumers.<br /><br />Today, we are committed to delivering our quality, top of the line forklift products which include:<br />1. FORKLIFT-RMD equipment<br />2. FORKLIFT-Rental equipment<br />3. FORKLIFT-New equipment<br />4. FORKLIFT-CAM Attachment (Sideshift, Clamp, Rotary, Push-Pull, Extension Fork, etc)<br />5. FORKLIFT-Related Products (Oil, Tyres, Battery, Accu, etc)<br />6. FORKLIFT-Safety Accessories (Mirror, Camera, Lamp, Sensor, Belt, etc)<br />7. FORKLIFT-Maintenance Service<br />8. FORKLIFT-Spare Parts<br /><br />Our years of experience and reliable expertise in the forklift industry have allowed us to confidently serve our customers with outstanding performances.<br />We are looking forward to helping you!</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Company Visions</strong></h2>\r\n<p>To provide superior quality material-handling services that: CLIENTS recommend to friends and colleagues, EMPLOYEES are proud of, INVESTORS seek for a great long-term returns, and NATION contribution.<br /><br /><strong>PADAMAS is Always a GOOD Idea!!!</strong></p>', 'Publish', 'Profil', 'Padamas-Forklift', 'home.jpg', 0, NULL, NULL, '2022-09-21 04:22:57', '2022-09-21 04:20:57', '2022-09-26 08:56:39', NULL, 0),
(9, 1, '', 're-made-backlikebefore', 'RE-MADE #BACKLIKEBEFORE', '<p><strong>RMD (RE-MADE)</strong><br /><br />We are the only company in the materials handling industry in INDONESIA that operates this comprehensive RE-MADE service.<br />Our specially trained engineers completely disassemble each vehicle and exchange or refurbish every technical, mechanical and hydraulic component.<br />This gives you the peace of mind that when you decide to try RE-MADE programs from PADAMAS you avoid the potential dropouts and follow-up costs that you may associate with other repairer MHE providers.<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Service', 'RMD (RE-MADE)', 'remade.jpg', 1, NULL, NULL, '2022-09-19 08:36:08', '2022-09-19 08:34:16', '2022-09-21 04:34:58', NULL, 0),
(8, 1, '', 'reach-truck', 'Reach Truck', '<p>What is Reach Truck???<br /><br />Reach Trucks are forklifts used in narrow aisle applications, such as warehouses. They are designed to have two outer legs that help distribute the load, and a single set of wheels in the back. The wheels are located below the operator, which help create a tighter turn radius. This allows operators to navigate smaller spaces, and still be able to reach higher racking.<br /><br />Making your aisles taller and narrower is a good way to create more space when your warehouse becomes cramped, but it can also make navigation and material handling difficult. The Reach Truck is an asset to any warehouse fleet &ndash; it allows operators to easily navigate in and out of narrow aisles and reach significant heights, all while maintaining lifting capacity. The Reach Truck allows for unmatched confidence in the most challenging warehouse environments.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RENTAL is SOLUTIONS</strong></p>\r\n<p><br />Forklifts are expensive. In fact, next to employees, they could be your largest expense. Your job is to look for ways to measure those costs accurately and reduce them. With financial tools becoming more and more sophisticated and material handling equipment (forklifts) becoming increasingly complex it might be time to rethink the way you &ldquo;purchase&rdquo; your machines. Is there a way to reduce the costs of your material handling equipment through leasing?<br />In a perfect world, if a forklift were idle the cost of it would be zero; if working, the cost of a forklift would be like paying an employee. Tie the COST to the WORK. Pay for USE. Essentially, that is what leasing or renting should do. Or at least it should get you closer to that ideal.</p>\r\n<p><br /><strong>Forklift rental enables you to:</strong></p>\r\n<p>1. Lower Initial Costs: You can acquire an expensive machine without paying 100% of the cost upfront.</p>\r\n<p>2. Increased Productivity: New machines every 3-5 years will ensure that downtime is reduced and the forklifts should be working at peak efficiency. As labor is your highest cost it is important to get the most out of your employees. Good tools should make more efficient workers.</p>\r\n<p>3. Cost Closely Matches Use: By spreading the cost out over 3-5 years the work done with the forklift matches the monthly lease and maintenance costs to get that work done. It should help with budgeting.</p>\r\n<p>4. Testing as You Purchase: Leasing allows you to test the machine without committing to a purchase. Use the forklift for 3-5 years and, if it works reliably, and isn&rsquo;t too well used, there is a provision to purchase it at the end of lease term or return it.</p>\r\n<p>5. Always Have the Latest Technology Updated Equipment: With leasing, you get the opportunity to replace the forklift with the latest technology, updating your equipment at regular intervals. This is a strategy to keep technologically competitive in the marketplace and increase the performance of your business.</p>\r\n<p>6. Tax-Advantage: In most country including Indonesia tax regulations leasing is different than buying. (Check your own state or provincial tax rules.)</p>\r\n<p>7. Maintenance Cost Can Be Part of Monthly Lease Price: It is common for the leasing company or dealer to offer maintenance packages to add to the lease payment. This added cost will depend on the environment. The benefit is that you can account for it by paying one price per month.</p>\r\n<p>To rental/lease a forklift can make more sense for your business than buying. <strong>So RENTAL is SOLUTIONS</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Rental', 'To rental/lease a forklift can make more sense for your business than buying. So RENTAL is SOLUTIONS', 'reach12.jpg', 4, NULL, NULL, '2022-09-19 06:48:24', '2022-09-19 06:48:07', '2022-09-26 03:48:40', NULL, 0);

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
(1, 5, 1, 'homepage1', 'Homepage', '<p>-</p>', 'home.jpg', NULL, 'Publish', 1, 'Tidak', '2022-09-26 08:54:41'),
(5, 5, 1, 'R074 TOYOTA FORKLIFT 60-8FD25 4.7M FSV MAST, MANUAL TRANSMISSION + SIDESHIFTER', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />1DZ-II DIESEL ENGINE<br />2.5 TON CAP.<br />MANUAL TRANSMISSION<br />4.7M LIFT HEIGHT (3 STAGES FREE LIFT)<br />WITH SIDESHIFTER<br />LOKASI UNIT : SHOWROOM CIKARANG</p>', 'r074.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 00:25:41'),
(6, 5, 1, 'R051 TOYOTA 02-7FDA50 3M V MAST, AUTOMATIC TRANSMISSION', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />14Z- DIESEL ENGINE 6 CYL.<br />5.0 TON CAP.<br />MANUAL TRANSMISSION<br />3M LIFT HEIGHT<br />WITHOUT SIDESHIFTER<br />LOKASI UNIT : SHOWROOM CIKARANG<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.<br />GARANSI FOTO &amp; ASLINYA 100% SAMA!!!</p>', 'r0511.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 00:24:30'),
(7, 5, 1, 'R069 TOYOTA, 60-8FD25 3M V-MAST, MANUAL TRANSMISSION + SIDESHIFTER', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />1DZ-II DIESEL ENGINE<br />2.5 TON CAP.<br />MANUAL TRANSMISSION<br />3M LIFT HEIGHT<br />WITH SIDESHIFTER<br />LOKASI UNIT : SHOWROOM CIKARANG<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.<br />GARANSI FOTO &amp; ASLINYA 100% SAMA!!!</p>', 'r069.jpg', NULL, 'Publish', 0, 'Ya', '2022-09-19 00:21:28'),
(8, 5, 1, 'R053 TOYOTA ELECTRIC FORKLIFT, 8FBN15 3M FV MAST', 'Galeri', '<p>\"PADAMAS is ALWAYS a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA, ELECTRIC FORKLIFT<br />BATTERY 48V 390AH (CONDITION 80% UP)<br />1.5 TON CAP.<br />AUTOMATIC TRANSMISSION<br />3M LIFT HEIGHT FV-THREE STAGES<br />LOKASI UNIT : SHOWROOM CIKARANG<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.<br />GARANSI FOTO &amp; ASLINYA 100% SAMA!!!</p>', 'r053.jpg', NULL, 'Publish', 0, 'Ya', '2022-09-19 00:20:24'),
(9, 5, 1, 'ER004 TOYOTA ENGINE 1DZ-II', 'Galeri', '<p>PADAMAS is ALWAYS a GOOD IDEA for YOUR FORKLIFT<br /><br />RMD TOYOTA DIESEL ENGINE<br />MODEL: 1DZ-II<br />RATED HORSEPOWER/r.p.m: 44/2600 (41/2500) kW(JIS ps)<br />RATED TORQUE/ r.p.m: 167/1600 (157/2500) N-m (JIS kg-m)<br />NUMBER OF CYL. : 4<br />PISTON DISPLACEMENT: 2486 cc<br />APLICATION: TOYOTA FORKLIFT 7&amp;8 SERIES 1.0-3.0TON<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.</p>', 'er004.jpg', NULL, 'Publish', 0, 'Ya', '2022-09-19 00:17:12'),
(10, 5, 1, 'R047 TOYOTA, 02-7FD35 3M V MAST, AUTOMATIC TRANSMISSION', 'Galeri', '<p>\"PADAMAS is always a GOOD Idea for YOUR Forklift\"<br /><br />TOYOTA<br />14Z DIESEL ENGINE<br />3.5TON CAP<br />3M LIFT HEIGHT<br />AUTOMATIC TRANSMISSION<br />LOKASI CIKARANG SHOWROOM<br />JAMINAN 100% GAMBAR SESUAI DENGAN ASLINYA<br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.</p>', 'r047.jpg', 1, 'Publish', 0, 'Ya', '2022-09-19 00:15:47'),
(11, 5, 1, 'R039 TOYOTA, 2TG10 TOWING GASOLINE, MANUAL TRANSMISSION', 'Galeri', '<p>\"PADAMAS IS ALWAYS A GOOD IDEA FOR YOUR FORKLIFT\"<br /><br />TOYOTA<br />5K GASOLLINE ENGINE<br />1-9,8 TON CAP DRAW BAR PULL<br />MANUAL TRANSMISSION<br />LOKASI CIKARANG SHOWROOM<br />JAMINAN FOTO SAMA DENGAN ASLINYA 100%<br /><br /><br />RMD Forklift merupakan hasil KOLABORASI antara PADAMAS-Forklift dengan CAM-Attachment yang menghasilkan FORKIFT SECOND BERGARANSI yang BERKUALITAS dengan HARGA sangat BERSAING. RMD Forklift memberikan rasa AMAN, NYAMAN, TENANG baik untuk PENJUAL ataupun PEMBELI.</p>', 'r039.jpg', 2, 'Publish', 1, 'Ya', '2022-09-21 10:01:54'),
(12, 5, 1, 'homepage2', 'Homepage', '<p>-</p>', 'home25.jpg', NULL, 'Publish', 1, 'Tidak', '2022-09-21 10:06:13'),
(13, 5, 1, 'homepage3', 'Homepage', '<p>-</p>', 'home33.jpg', NULL, 'Publish', 1, 'Tidak', '2022-09-21 10:06:40'),
(14, 5, 1, 'homepage4', 'Homepage', '<p>-</p>', 'home45.jpg', NULL, 'Publish', 1, 'Tidak', '2022-09-21 10:07:05');

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
(1, 'PT. PANCADAYA MANUNGGAL SENTOSA', 'PADAMAS-Forklift', 'PADAMAS is Always a GOOD Idea', '<p>PADAMAS is Always a GOOD Idea!!</p>', '', '', 'test@gmail.com', '<p><strong>PT. PANCADAYA MANUNGGAL SENTOSA ( PADAMAS-Forklift )</strong><br />Jl. Bungur Besar No. 53 III-IV Jakarta 10460</p>\r\n<p><strong>Cabang</strong></p>\r\n<ul>\r\n<li>Kawasan Industri JABABEKA 1, Jl. Jababeka 2D Blok C No.14R-S, Phone:+6221 8935190-4</li>\r\n<li>Komp. Pergudangan INDOSERENA Blok C No 5 Jl. Raya Serang KM.12, Phone: +6221 29876203-04</li>\r\n<li>Kws. Ind. &amp; Pergudangan SAFE N LOCK Blok Ai No. 5901 Lingkar Timur Sidoarjo, Phone: +6231 99715009</li>\r\n</ul>', '+6221 4260190', NULL, '', 'forkliftpadamas-removebg-preview.png', 'favicon.png', 'footer1.png', 'PADAMAS\r\n', 'https://www.facebook.com/people/Padamas-Forklift/100078169860936/', 'https://www.youtube.com/channel/UCkJj0zJ55CdIXQD4zzj8c4w', 'https://www.instagram.com/forkliftpadamas/', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.735626308537!2d106.8398753148659!3d-6.1661476621467575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5b7faf3c94d%3A0x3367f283e7520029!2sPadamas%20-%20Forklift!5e0!3m2!1sid!2sid!4v1567502663728!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'istana-yatim.png', 'balairung-budiutomo-01.jpg', 'Sigit Yuwono Wachid', 'Direktur', 0, '2022-09-19 06:08:32');

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
(1, 1, '', 'telescopics-fork', 'Telescopics Fork', '<p>Benefits:</p>\r\n<p>1. Reduce lift truck fuel bills by 50%.<br />2. Increase warehouse capacity by up to 40%.<br />3. Load/unload vehicles in half the time &amp; half the space.<br />4. Eliminate costly vehicle bed damage.<br />5. Handle two pallets simultaneously - half your number of journeys.</p>\r\n<p><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Attachment', 'Padamas Telescopics', 'telescopics.jpg', 19, NULL, NULL, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2022-09-26 10:02:50', NULL, 6),
(2, 1, '', 'push-pull', 'Push-Pull', '<p>With the help of sheet retainers instead of pallets, this attachment can push and pull goods safely and efficiently. It can improve production efficiency and save costs. It can be used in electronics, food, light industry and other industries.</p>\r\n<p>Characteristics:<br />1. Loading and unloading goods can be done without pallets.<br />2. Protected hydraulics.<br />3. Simplified hydraulic circuit.</p>\r\n<p><strong>PADAMAS is ALWAYS a GOOD IDEA for YOUR FORKLIFT!</strong></p>', 'Publish', 'Attachment', 'Padamas Push', 'push.jpg', 46, NULL, NULL, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-09-26 09:41:04', NULL, 6),
(3, 1, '', 'hinged-carriage', 'Hinged Carriage', '<p>A hinged carriage helps you to tip bulk cargo containers in a safe way. You can fit this attachment with a bucket to shovel all bulk goods such as sand, coal, grain, fertiliser, sods, blocks ...<br /><br />Forklift hinged carriage are widely used for wood industry, architecture &amp; construction,<br />metal industry and livestock industry. They are designed primarily for tilting forward, the<br />hinged forks can also be conveniently used for handling palletized loads.<br /><br />Characteristics<br />1. High-strength all-steel structure design, always<br />of high efficiency under continuous operation.<br />2. E-slot in the overall framework to improve the<br />stability of product, to extend the longevity of<br />product.<br />3. Reasonable design, nice outlook, using<br />the world&rsquo;s most high-quality hydraulic<br />components.<br />4. Excellent visibility.<br />5. Rugged lightweight construction.<br />6. Fast arm opening speeds with less energy<br />consumption.<br />7. High net capacity.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Attachment', 'Padamas Hinged', 'hinged.jpg', 27, NULL, NULL, '2019-05-17 04:37:00', '2019-05-17 09:36:19', '2022-09-26 09:41:14', NULL, 6),
(6, 1, '', 'service-contract', 'Service Contract', '<div class=\"lay_290_294   data_290_923\">\r\n<div class=\"style_598_5 data_290_925 text\">A FORKLIFT service contract is almost always a smart choice for consumers interested in protecting themselves from the high costs of unexpected forklift repairs.<br />A forklift service contracts deliver real value by helping consumers protect against major breakdowns by pre-paying for repairs based, often on set monthly payments. This aim to give consumers peace of mind that they are protected against unexpected repair costs.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></div>\r\n</div>', 'Publish', 'Accecories', 'A FORKLIFT service contract', 'service.jpg', 11, NULL, NULL, '2020-02-13 07:42:56', '2022-09-26 07:41:51', '2022-09-26 09:57:49', NULL, 0),
(10, 1, '', 'full-maintenance', 'Full Maintenance', '<p><strong>A FULL MAINTENANCE FORKLIFT CONTRACT</strong> is almost always a BETTER choice for consumers interested in protecting themselves from STOP LINE of PRODUCTION!<br /><br />The automotive industry is a stellar example of the cost of downtime. It&rsquo;s estimated that 1 minute of downtime costs automotive manufacturers $22,000 per minute or $1.3 million per hour. Some estimates ran as high as $50,000 per minute. As a smaller manufacturer, you may not be losing those staggering sums, but you do face the same problem.<br /><br />Why you don\'t protect your line production form downtime???<br /><strong>CALL US!</strong><br /><br />We also Provide a FULL MAINTENANCE CONTRACTS with UNIT BACK-UP<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA for Your FORKLIFT!</strong></p>', 'Publish', 'Accecories', 'A FULL MAINTENANCE FORKLIFT CONTRACT is almost always a BETTER choice for consumers interested in protecting themselves from STOP LINE of PRODUCTION!', 'mt.jpg', 3, NULL, NULL, '2022-09-19 08:39:49', '2022-09-19 08:37:47', '2022-09-26 09:41:48', NULL, 7),
(11, 1, '', 'engine-overhaul', 'Engine Overhaul', '<p><strong>DOES YOUR FORKLIFT BILLOW SMOKE?</strong> </p>\r\n<p>Does your forklift&rsquo;s engine make strange sounds when starting, stopping, while idle or accelerating?<br />Have people ever suggested that you get your forklift&rsquo;s engine overhauled?<br />Well, maybe you should have it looked at by a professional mechanic.</p>\r\n<p><br /><strong>CALL US!</strong><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Accecories', 'DOES YOUR FORKLIFT BILLOW SMOKE?', 'engine.jpg', 0, NULL, NULL, '2022-09-19 08:41:28', '2022-09-19 08:39:58', '2022-09-26 09:42:03', NULL, 7),
(12, 1, '', 'on-call-service-or-repair', 'On Call Service Or Repair', '<p><strong>DO YOU HAVE ANY PROBLEMS WITH YOUR FORKLIFT???</strong></p>\r\n<p>Our qualified mechanics and experienced technicians will use the best quality parts, premium lubricants and filtration.<br />We also offer a RELIABLE GUARANTEE on all workmanship performed.<br />Why go anywhere else? CALL US!<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Accecories', 'DO YOU HAVE ANY PROBLEMS WITH YOUR FORKLIFT???', 'repair.jpg', 3, NULL, NULL, '2022-09-19 08:42:45', '2022-09-19 08:41:44', '2022-09-26 10:02:23', NULL, 7),
(0, 1, '', 'battery', 'Battery', '<p>Battery forklift have replaced conventional forklift (i.e., internal-combustion engine type) as measures for the increasing demand on clean environments in various sites where forklift take an active role, such as factories, distribution centers, warehouses, ports and harbors, airports, etc. The batteries as a driving source of battery forklift are an outcome of integrating a number of superior technologies based on long-time practices and affluent experiences, and still advancing by inheriting these.<br /><br />Now, we have the newest brands for batteries namely ROCKET and CHLORIDE!<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Related', 'Padamas Battery', 'battery.jpg', 6, NULL, NULL, '2022-09-26 08:25:00', '2022-09-26 08:22:53', '2022-09-26 09:42:29', NULL, 8),
(9, 1, '', 're-made-backlikebefore', 'RE-MADE #BACKLIKEBEFORE', '<p><strong>RMD (RE-MADE)</strong><br /><br />We are the only company in the materials handling industry in INDONESIA that operates this comprehensive RE-MADE service.<br />Our specially trained engineers completely disassemble each vehicle and exchange or refurbish every technical, mechanical and hydraulic component.<br />This gives you the peace of mind that when you decide to try RE-MADE programs from PADAMAS you avoid the potential dropouts and follow-up costs that you may associate with other repairer MHE providers.<br /><br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Spare Part', 'RMD (RE-MADE)', 'remade.jpg', 6, NULL, NULL, '2022-09-19 08:36:08', '2022-09-19 08:34:16', '2022-09-26 09:42:42', NULL, 9),
(8, 1, '', 'bale-clamps', 'Bale Clamps', '<p>Bale clamps are a specific type of clamps. These attachments are capable of handling the majority of baled materials, such as waste paper, recycled plastic products, textile rags, natural and synthetic textile fibres. cotton, wool, textile bales.<br /><br />Characteristics<br />1. Proven durable T-beam arm aluminium frame construction.<br />2. Superior arm-slide bearing for extended service life.<br />3. Ribs provide secure grip.<br />4. Regenerative hydraulic valving for optimal arm speed.<br /><br /><strong>PADAMAS is ALWAYS a GOOD IDEA!</strong></p>', 'Publish', 'Attachment', 'Padamas Bale', 'bale.jpg', 3, NULL, NULL, '2022-09-19 06:48:24', '2022-09-19 06:48:07', '2022-09-26 09:42:54', NULL, 6);

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
(13, 4, 1, 'RMD02', 'Galeri', '<p>-</p>', 'rmd02.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:06:48'),
(14, 4, 1, 'RMD03', 'Galeri', '<p>-</p>', 'rmd03.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:11:36'),
(15, 4, 1, 'RMD04', 'Galeri', '<p>-</p>', 'rmd04.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:09:32'),
(16, 4, 1, 'RMD06', 'Galeri', '<p>-</p>', 'rmd06.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:12:27'),
(17, 4, 1, 'RMD07', 'Galeri', '<p>-</p>', 'rmd07.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:10:58'),
(18, 4, 1, 'RMD05', 'Galeri', '<p>-</p>', 'rmd05.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:12:52'),
(19, 4, 1, 'RMD08', 'Galeri', '<p>-</p>', 'rmd08.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:13:37'),
(20, 4, 1, 'RMD09', 'Galeri', '<p>-</p>', 'rmd09.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:14:11'),
(21, 4, 1, 'RMD10', 'Galeri', '<p>-</p>', 'rmd10.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:15:22'),
(22, 4, 1, 'RMD11', 'Galeri', '<p>-</p>', 'rmd11.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 01:27:09'),
(23, 4, 1, 'RMD12', 'Galeri', '<p>-</p>', 'rmd12.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:28:39'),
(24, 4, 1, 'RMD13', 'Galeri', '<p>-</p>', 'rmd13.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:29:18'),
(25, 4, 1, 'RMD14', 'Galeri', '<p>-</p>', 'rmd14.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:29:51'),
(26, 4, 1, 'RMD15', 'Galeri', '<p>-</p>', 'rmd15.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:30:29'),
(27, 4, 1, 'RMD16', 'Galeri', '<p>-</p>', 'rmd16.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:31:15'),
(28, 4, 1, 'RMD17', 'Galeri', '<p>-</p>', 'rmd17.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:43:21'),
(29, 4, 1, 'RMD18', 'Galeri', '<p>-</p>', 'rmd18.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:33:31'),
(30, 4, 1, 'RMD19', 'Galeri', '<p>-</p>', 'rmd19.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:34:01'),
(31, 4, 1, 'RMD20', 'Galeri', '<p>-</p>', 'rmd20.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:34:44'),
(32, 4, 1, 'RMD21', 'Galeri', '<p>-</p>', 'rmd21.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:35:24'),
(33, 4, 1, 'RMD22', 'Galeri', '<p>-</p>', 'rmd22.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:36:06'),
(34, 4, 1, 'RMD23', 'Galeri', '<p>-</p>', 'rmd23.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:36:44'),
(35, 4, 1, 'RMD24', 'Galeri', '<p>-</p>', 'rmd24.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:37:15'),
(36, 4, 1, 'RMD25', 'Galeri', '<p>-</p>', 'rmd25.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:38:29'),
(37, 4, 1, 'RMD26', 'Galeri', '<p>-</p>', 'rmd26.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:39:20'),
(38, 4, 1, 'RMD27', 'Galeri', '<p>-</p>', 'rmd27.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:39:11'),
(39, 4, 1, 'RMD28', 'Galeri', '<p>-</p>', 'rmd28.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:39:49'),
(40, 4, 1, 'RMD29', 'Galeri', '<p>-</p>', 'rmd29.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:40:14'),
(41, 4, 1, 'RMD30', 'Galeri', '<p>-</p>', 'rmd30.jpg', NULL, 'Publish', 1, 'Ya', '2022-09-19 02:40:31'),
(42, 4, 1, 'RMD01', 'Galeri', '<p>-</p>', 'rmd011.jpg', 1, 'Publish', 1, 'Ya', '2022-09-26 03:30:25');

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
  ADD PRIMARY KEY (`id_bagian`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
