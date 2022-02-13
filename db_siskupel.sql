-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2022 at 05:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siskupel`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_menu`
--

CREATE TABLE `backend_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_nama` varchar(255) DEFAULT NULL,
  `menu_nama_eng` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `menu_urutan` int(11) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `hak` varchar(255) DEFAULT NULL,
  `subnya` varchar(1) DEFAULT NULL,
  `isaktif` varchar(1) DEFAULT '1',
  `isaccess_i` varchar(1) DEFAULT '1',
  `modified_by` varchar(20) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `backend_menu`
--

INSERT INTO `backend_menu` (`menu_id`, `menu_nama`, `menu_nama_eng`, `menu_url`, `menu_urutan`, `menu_icon`, `hak`, `subnya`, `isaktif`, `isaccess_i`, `modified_by`, `modified_date`) VALUES
(1, 'Dashboard', 'Dashboard', 'admin/Dasbor', 1, 'nav-icon fas fa-th', 'admin koortps', NULL, '1', '0', 'admin', '2016-10-09 00:53:00'),
(3, 'TPS Blm Masuk', 'TPS Blm Masuk', NULL, 3, 'nav-icon fas fa-th', 'admin', NULL, '0', '1', 'admin', '2016-10-09 00:53:00'),
(4, 'Kunjungan', 'Kunjungan', NULL, 2, 'nav-icon fas fa-th', 'admin koortps', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(5, 'Barang', 'Data Barang', NULL, 3, 'nav-icon fas fa-th', 'admin', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(6, 'Laporan', 'Reports', NULL, 4, 'nav-icon fas fa-th', 'admin', NULL, '0', '1', 'admin', '2016-10-09 00:53:00'),
(7, 'Data Master', 'Data Master', NULL, 6, 'nav-icon fas fa-th', 'admin', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(15, 'Fasilitas', 'Facilities', NULL, 9, 'nav-icon fas fa-th', 'admin', NULL, '0', '1', 'admin', '2016-10-09 00:53:00'),
(16, 'Persiapan', 'Preference', NULL, 10, 'nav-icon fas fa-th', 'admin', NULL, '0', '1', 'admin', '2016-10-09 00:53:00'),
(20, 'Pegawai', 'Data Pegawai', NULL, 5, 'nav-icon fas fa-th', 'admin', NULL, '1', '1', 'admin', '2016-10-09 00:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `backend_menu_sub`
--

CREATE TABLE `backend_menu_sub` (
  `menu_sub_id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_sub_nama` varchar(255) DEFAULT NULL,
  `menu_sub_nama_eng` varchar(255) DEFAULT NULL,
  `menu_sub_url` varchar(255) DEFAULT NULL,
  `menu_sub_urutan` int(11) DEFAULT NULL,
  `menu_sub_icon` varchar(255) DEFAULT NULL,
  `hak` varchar(100) DEFAULT NULL,
  `subnya` varchar(1) DEFAULT NULL,
  `isaktif` varchar(1) DEFAULT '1',
  `isaccess_ii` varchar(1) DEFAULT '1',
  `isadd_ii` varchar(1) DEFAULT NULL,
  `ischange_ii` varchar(1) DEFAULT NULL,
  `isdelete_ii` varchar(1) DEFAULT NULL,
  `iscancel_ii` varchar(1) DEFAULT NULL,
  `isprint_ii` varchar(1) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `backend_menu_sub`
--

INSERT INTO `backend_menu_sub` (`menu_sub_id`, `menu_id`, `menu_sub_nama`, `menu_sub_nama_eng`, `menu_sub_url`, `menu_sub_urutan`, `menu_sub_icon`, `hak`, `subnya`, `isaktif`, `isaccess_ii`, `isadd_ii`, `ischange_ii`, `isdelete_ii`, `iscancel_ii`, `isprint_ii`, `modified_by`, `modified_date`) VALUES
(42, 4, 'Pembayaran', 'Pembayaran', 'admin/Barang', 2, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(50, 4, 'Entri Capres', 'Entri Capres', 'Informasi/entrisuara', 3, 'fas fa-tags nav-icon', 'koortps', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(51, 4, 'Profil User', 'Profil User', 'Informasi/profil_user/edit', 4, 'fas fa-tags nav-icon', 'koortps', NULL, '1', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(71, 7, 'Data Kecamatan', 'Data Kecamatan', 'user', 3, 'fas fa-tags nav-icon', 'admin Pro Kab Kec ', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(80, 7, 'Data Kabupaten/Kota', 'Data Kabupaten/Kota', 'user', 2, 'fas fa-tags nav-icon', 'admin Pro Kab ', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(81, 7, 'Data Provinsi', 'Data Provinsi', 'user', 1, 'fas fa-tags nav-icon', 'admin Pro ', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(82, 5, 'Kabupaten / Kota', 'Aset Masuk', 'Informasi/Perkabupaten', 1, 'fas fa-tags nav-icon', 'admin Pro Kab ', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(83, 20, 'Kecamatan Detail', 'Kecamatan Detail', 'Informasi/MPerkecamatan', 3, 'fas fa-tags nav-icon', 'admin Pro Kab Kec ', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(84, 7, 'Data User', 'Data User', 'admin/User', 6, 'fas fa-tags nav-icon', 'admin Pro Kab Kec ', NULL, '1', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(85, 8, 'Buku Bank', 'Bank Book', 'Menutama/frmbankbooknya', 12, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(87, 8, 'Aset Tetap', 'Fixed Assets', 'Menutama/frmassetsnya', 14, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(88, 5, 'Daftar Barang', 'Daftar Barang', 'admin/Barang', 3, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(89, 6, 'Lap. Pendapatan Per Sales', 'Lap. Pendapatan Per Sales', 'Informasi/Pelanggan', 4, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(91, 6, 'Kabupaten / Kota', 'Lap. Pendaftaran', 'Informasi/Perkabupaten', 1, 'fas fa-tags nav-icon', 'admin Pro Kab ', NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(92, 6, 'Kecamatan', 'Lap. Pembayaran', 'informasi/Perkecamatan', 2, 'fas fa-tags nav-icon', 'admin Pro Kab Kec ', NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(100, 4, 'Entri Caleg', 'Entri Caleg', 'Informasi/entricaleg', 5, 'fas fa-tags nav-icon', 'koortps', NULL, '0', '1', NULL, NULL, NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(101, 10, 'Laba/Rugi', 'Profit and Loss', 'Menutama/rptlabaruginya', 2, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(150, 15, 'Backup / Restore Data ', 'Backup / Restore Data ', 'Menutama/backupdb', 1, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(156, 16, 'Company Master', 'Company Master', '', 1, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', '1', '1', NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(157, 16, 'The accounts of activity', 'The accounts of activity', 'Menutama/aktiviacc', 2, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, '1', NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(158, 16, 'Item Default Account', 'Item Default Account', 'Menutama/itemacc', 3, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, '1', NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(159, 16, 'User Setting', 'User Setting', 'Master_setup/index', 4, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, '1', 'admin', '2016-10-09 00:53:00'),
(180, 5, 'Kecamatan', 'Aset Keluar', 'Perangkat/Keluar/add', 2, 'fas fa-tags nav-icon', 'admin Pro Kab Kec ', NULL, '0', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(181, 6, 'Desa', 'Lap. Tunggakan', 'Informasi/Perdesa', 3, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', '1', '1', NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(182, 7, 'Data TPS', 'Approved Giro', 'User', 5, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(183, 20, 'Kab/Kota', 'Kabupaten', 'Informasi/Mperkabupaten', 1, 'fas fa-tags nav-icon', 'admin Pro Kab ', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(190, 20, 'Kel. / Desa Detail', 'Kel. / Desa Detail', 'Informasi/Mperdesa', 4, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(191, 20, 'Kab/Kota Detail', 'Kabupaten Detail', 'Informasi/Mperkabupaten_det', 2, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(192, 20, 'Daftar Pegawai', 'Daftar Pegawai', 'admin/Pegawai', 1, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(193, 40, 'Negara', 'Country', 'Dataothers/country/', 4, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(194, 40, 'Warna', 'Colour', 'Dataothers/colour/', 5, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(195, 40, 'Dokumen', 'Document', 'Dataothers/document/', 6, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(196, 40, 'Wilayah', 'Regional', 'Dataothers/regional/', 7, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(866, 8, 'Closing ', 'Closing ', 'Menutama/frmclosenya2', 13, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, '1', '1', 'admin', '2016-10-09 00:53:00'),
(870, 4, 'Entri Kunjungan', 'Entri Kunjungan', 'admin/Kunjungan', 1, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(872, 8, 'Permintaan Pembelian ', 'Permintaan Pembelian', 'Menutama/pracc/add', 15, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(873, 3, 'Nama-Nama TPS', 'Nama-Nama TPS', 'Informasi/tpsblm_masuk', 1, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(874, 8, 'Piutang', 'Piutang', 'C_sales/piutang/', 17, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(875, 16, 'Departemen', 'Departemen', 'master/departemen', 18, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(876, 16, 'Jabatan', 'Jabatan', 'master/jabatan', 19, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(877, 16, 'User', 'User', 'master/user', 20, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(878, 16, 'Area', 'Area', 'master/area', 21, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(879, 16, 'Provinsi', 'Provinsi', 'master/provinsi', 22, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(880, 16, 'Kota', 'City', 'master/kota', 23, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00'),
(881, 7, 'Data Desa', 'Data Desa', 'admin/Desa', 4, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2016-10-09 00:53:00'),
(882, 4, 'Daftar Saksi', 'Daftar Saksi', 'Informasi/Daftarsaksi', 2, 'fas fa-tags nav-icon', 'admin Pro Kab Kec Desa', NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, 'admin', '2016-10-09 00:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `backend_menu_sub2`
--

CREATE TABLE `backend_menu_sub2` (
  `menu_sub_id2` int(11) NOT NULL,
  `menu_sub_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_sub_nama` varchar(255) DEFAULT NULL,
  `menu_sub_nama_eng` varchar(255) DEFAULT NULL,
  `menu_sub_url` varchar(255) DEFAULT NULL,
  `menu_sub_urutan` int(11) DEFAULT NULL,
  `menu_sub_icon` varchar(255) DEFAULT NULL,
  `hak` varchar(100) DEFAULT NULL,
  `isaktif` varchar(1) DEFAULT '1',
  `isaccess_iii` varchar(1) DEFAULT '1',
  `isadd_iii` varchar(1) DEFAULT NULL,
  `ischange_iii` varchar(1) DEFAULT NULL,
  `isdelete_iii` varchar(1) DEFAULT NULL,
  `iscancel_iii` varchar(1) DEFAULT NULL,
  `isprint_iii` varchar(1) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `backend_menu_sub2`
--

INSERT INTO `backend_menu_sub2` (`menu_sub_id2`, `menu_sub_id`, `menu_id`, `menu_sub_nama`, `menu_sub_nama_eng`, `menu_sub_url`, `menu_sub_urutan`, `menu_sub_icon`, `hak`, `isaktif`, `isaccess_iii`, `isadd_iii`, `ischange_iii`, `isdelete_iii`, `iscancel_iii`, `isprint_iii`, `modified_by`, `modified_date`) VALUES
(101, 159, 16, 'User Data', 'User Data', 'Usersetting/userdata', 1, 'fas fa-tags nav-icon', 'admin', '1', '1', '1', '1', '1', NULL, '1', 'admin', '2016-10-09 00:53:00'),
(102, 159, 16, 'Level Data', 'Level Data', 'Usersetting/userlevel', 2, 'fas fa-tags nav-icon', 'admin', '1', '1', '1', '1', '1', NULL, '1', 'admin', '2016-10-09 00:53:00'),
(103, 159, 16, 'Firsth Form', 'Form Data', 'Usersetting/firsthform', 3, 'fas fa-tags nav-icon', 'admin', '1', '1', '1', '1', '1', NULL, '1', 'admin', '2016-10-09 00:53:00'),
(104, 159, 16, 'Secend Form', 'Form Group Data', 'Usersetting/secendform', 4, 'fas fa-tags nav-icon', 'admin', '1', '1', '1', '1', '1', NULL, '1', 'admin', '2016-10-09 00:53:00'),
(105, 159, 16, 'Thirth Form', 'Thirth Form', 'Usersetting/thirthform', 5, 'fas fa-tags nav-icon', 'admin', '1', '1', '1', '1', '1', NULL, '1', 'admin', '2016-10-09 00:53:00'),
(107, 873, 888, 'Pembayaran Hutang', 'Pembayaran Hutang', 'C_purchase/frmpayment_pr/', 2, 'fas fa-tags nav-icon', 'admin adm_acc accounting adm_fin finance', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 873, 888, 'Giro Paramount', 'Giro Paramount', 'C_sales/girokeluar/', 3, 'fas fa-tags nav-icon', 'admin adm_acc accounting adm_fin finance', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 874, 888, 'Pembayaran Piutang', 'Pembayaran Piutang', 'C_sales/frmsl_payment/', 2, 'fas fa-tags nav-icon', 'admin adm_acc accounting adm_fin finance', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 1, 5, 'pembuatan-website-profil', 'Pembuatan Website Profil', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', '<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>Paket Dasar</h3>\r\n<table class=\"table table-bordered table-stripped table-hover tiny-table\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Website UKM Dasar</td>\r\n<td>Hosting 250MB<br />Bandwidth Unlimited</td>\r\n<td>Rp. 1.500.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td>Website Perusahaan Kecil</td>\r\n<td>Hosting dan bandwidth unlimeted<br />Fully responsive web design</td>\r\n<td>Rp. 3.000.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><span class=\"text-danger\">* Harga dasar dengan syarat tertentu</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Berita', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', 'website-perusahaan-company-profile-web-javawebmedia1.jpg', '', 5, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2021-04-23 20:01:11'),
(2, 1, 5, 'kursus-statistik', 'Kursus Statistik', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.', '<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>', 'Publish', 'Layanan', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.', 'instagram-kursus-statistik-javawebmedia.png', 'fa fa-chart-bar', 8, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-01-13 09:22:53'),
(3, 1, 5, 'sejarah-java-web-media', 'Sejarah Java Web Media', 'Yuk pelajari sejarah dan awal mula berdirinya Java Web Media.', '<h2>Java Web Media</h2>\r\n<p>Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.</p>\r\n<h2>Tentang Andoyo</h2>\r\n<p><strong>Andoyo&nbsp;</strong>adalah pendiri Java Web Media. Aktif mengajar Graphic Design, Web Design dan Web Programming. Lahir di Blora, 22 Februari 1983.</p>\r\n<p>Lulus dengan predikat Wisudawan Terbaik dari Teknik Sipil&nbsp; Universitas Negeri Semarang pada tahun 2006. Pernah bekerja sebagai Site Engineer di sebuah perusahaan kontraktor. Mulai blogging sejak masih bekerja sebagai kontraktor di tahun 2008.</p>\r\n<p>Kecintaanya pada teknologi web akhirnya mengarahkannya untuk mempelajari Graphic Design dan Web Design di Natcoll Design Technology, Wellington New Zealand di tahun 2009. Semenjak itu, Graphic Design dan Web Design menjadi salah satu&nbsp;<em>passion&nbsp;</em>di dalam hidupnya.</p>\r\n<p>Saat ini aktivitas selain mengajar adalah mengelola usahanya yang bergerak di bidang graphic design, web design, web development dan web education. Anda dapat mengunjungi situs resminya di&nbsp;<a href=\"http://www.javawebmedia.com/\">www.javawebmedia.com</a>.</p>\r\n<p>Aktivitas berikutnya adalah sebagai mahasiswa Magister Teknologi Informasi di Universitas Indonesia. Setelah pulang bekerja kemudian berangkat kuliah di Kampus Salemba, Fakultas Ilmu Komputer Universitas Indonesia.</p>', 'Publish', 'Profil', 'Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', 'web-development-javawebmedia11.png', 'fa fa-globe', 19, '2019-05-17 04:37:00', '2019-05-17 04:36:19', '2022-01-13 09:23:08'),
(4, 1, 5, 'profil-java-web-media', 'Profil Java Web Media', 'PT Javawebmedia Edukasi Indonesia atau Java Web Media berdiri pada tanggal 26 April 2010.', '<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>', 'Publish', 'Profil', 'Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.', 'logo-javawebmedia-square.png', 'fas fa-check-circle', 6, '2019-07-26 10:38:15', '2019-07-26 10:36:47', '2022-01-15 00:57:25'),
(6, 1, 3, 'kursus-desain-grafis', 'Kursus Desain Grafis', 'Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.', '<h2>Deskripsi ringkas</h2>\r\n<p>Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.</p>\r\n<hr />\r\n<p>Anda akan belajar desain grafis mulai dari tahap brief project, dasar-dasar desain secara manual ataupun dengan program (Photoshop, Illustrator dan Indesign) dan juga praktek langsung bagaimana mencetak dan mengaplikasikan hasil desain tersebut.</p>\r\n<h3>Materi kursus:</h3>\r\n<ul>\r\n<li>Dasar-dasar dan konsep desain</li>\r\n<li>Merencanakan desain dengan&nbsp;<strong>Visual Diary</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Photoshop</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Illustrator</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Indesign</strong></li>\r\n<li>Aplikasi hasil desain (cetak dan digital media)</li>\r\n</ul>\r\n<h3>Tujuan Kursus</h3>\r\n<ul>\r\n<li>Anda dapat merencanakan dan membuat sebuah konsep desain</li>\r\n<li>Anda dapat membaca sebuah brief project dan mengaplikasikannya&nbsp;</li>\r\n<li>Menjadi seorang&nbsp;<em><strong>Junior Graphic Designer</strong></em></li>\r\n</ul>\r\n<h3>Urutan Materi</h3>\r\n<ul>\r\n<li>Installasi Adobe Photoshop, Illustrator dan Adobe Indesign</li>\r\n<li>Pemahaman Konsep Desain Grafis, Citarasa Warna dan Jenis-jenis gambar</li>\r\n<li>Pengenalan Adobe Photoshop</li>\r\n<li>Pengolahan foto menggunakan Photoshop</li>\r\n<li>Manipulasi dan perbaikan foto dengan Adobe Photoshop</li>\r\n<li>Pengolahan foto untuk diproses lebih lanjut (misalnya untuk leaflet, brosur, banner, spanduk, xbanner, buku dll)</li>\r\n<li>Pengenalan Adobe Illustrator</li>\r\n<li>Membuat logo dengan Adobe Illustrator</li>\r\n<li>Mendesain kartu nama, spanduk, leaflet, banner, xbanner, sticker, book cover dan lain-lain dengan Adobe Illustrator</li>\r\n<li>Pengenalan Adobe Indesign</li>\r\n<li>Membuat layout buku dan penerapannya dengan Adobe Indesign</li>\r\n<li>Mencetak hasil desain secara digital</li>\r\n</ul>', 'Publish', 'Layanan', 'Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.', 'Kursus_Desain_Grafis.jpg', 'fa fa-palette', 3, '2020-02-13 07:42:56', '2020-02-13 07:41:51', '2021-05-02 18:17:11'),
(7, 1, 5, 'web-based-application', 'Web Based Application', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', '<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>', 'Publish', 'Berita', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', 'web-application-pendaftaran-online-javawebmedia.jpg', '', 2, '2020-02-13 07:45:07', '2020-02-13 07:44:27', '2021-04-24 16:11:31'),
(21, 1, 6, 'alasan-kenapa-belajar-website-dari-sekarang', 'Alasan Kenapa Belajar Website dari Sekarang', 'Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?', '<p>Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?&nbsp;<strong>Berikut sedikit pemaparannya</strong>:</p>\r\n<p><strong>1. Agar tidak tertinggal</strong></p>\r\n<p>Alasan dasar kenapa belajar website karena agar kita tidak tertinggal dengan kemajuan teknologi. Diera teknologi seperti sekarang ini semua harus dilakukan dengan serba cepat. Begitu juga dengan informasi atau berkas dan juga data dapat dengan mudah kita peroleh lewat bantuan website. Semua data-data yang kita butuhkan bisa di unggah lewat website dan mudah untuk didapatkan.</p>\r\n<p><strong>2. Website media paling ampuh untuk promosi</strong></p>\r\n<p>Alasan berikutnya kenapa belajar website itu perlu sudah jelas akan sangat berguna bagi kita, utamanya untuk masalah bisnis. Website sangat membantu bisnis utamanya dalam urusan promosi. Dengan website kita dengan sangat mudah bisa mempromosikan berbagai macam bisnis yang kita miliki tanpa harus mengeluarkan banyak waktu dan banyak dana.</p>\r\n<p>Selain itu kenapa belajar website, tentunya juga kan menjadi strategi jitu dalam mencari trik cara pemasaran bisnis kita. dengan adanya website maka dengan mudah akan didapat berbagai macam terobosan pemasaran dari berbagai sumber lalu diaplikasikan pada website promo kita.</p>\r\n<p><strong>3. Media menuangkan kreativitas</strong></p>\r\n<p>Alasan kenapa belajar website tentunya tidak hanya berkutat dengan ranah bisnis maupun mengikuti perkembangan saja. Namun dengan belajar website kita bisa menuangkan kreativitas yang ada dalam diri kita. berbagai bentuk kreasi yang dihasilkan bisa kita masukkan ke dalam website tersebut sehingga tidak hanya menjadi konsumsi sendiri namun juga bisa mendatangkan keuntungan tentunya.</p>\r\n<p><strong>4. Menambah keterampilan</strong></p>\r\n<p>Alasan kenapa belajar website itu perlu yang terakhir adalah sebagai tambahan keterampilan yang kita miliki. Dengan kita belajar membuat website maka akan menjadikan kita memiliki nilai tambah tersendiri. Dengan keterampilan tersebut bukan tidak mungkin akan mendatangkan pekerjaan dan rejeki bagi kita nantinya. Jadi belajar website dari sekarang tidak ada ruginya.</p>', 'Publish', 'Berita', 'Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?', 'instagram-kursus-statistik-javawebmedia.png', NULL, 0, '2021-04-24 08:03:21', '0000-00-00 00:00:00', '2021-04-23 20:00:38'),
(22, 1, 6, 'betapa-pentingnya-belajar-web-programming-untuk-kebutuhan-perusahaan', 'Betapa Pentingnya Belajar Web Programming untuk Kebutuhan Perusahaan', 'Pada Mengapa harus Belajar Web Programming?? Pada era teknologi seperti sekarang ini, kedudukan website akan semakin merajai dalam bidang teknologi informasi untuk beberapa tahun kedepan. ', '<p>Pada Mengapa harus Belajar Web&nbsp;<a href=\"https://flashcomindonesia.com/kursus-desain-website\">Programming</a>?? Pada era teknologi seperti sekarang ini, kedudukan<strong>&nbsp;website</strong>&nbsp;akan semakin merajai dalam bidang&nbsp;<strong>teknologi informasi</strong>&nbsp;untuk beberapa tahun kedepan. Alasannya karena dengan adannya internet sebagai jaringannya, anda dapat dengan mudah mendapatkan informasi yang pastinya anda butuhkan. Tidak berhenti disitu saja, website juga bisa berupa aplikasi, dari segi biaya akan lebih terjangkau. Anda hanya butuh membeli sebuah<strong>&nbsp;hosting</strong>&nbsp;dan&nbsp;<strong>domain</strong>, lalu aplikasi akann bisa dibuka dimana saja. Anda tidak perlu mempersiapkan sebuah server sendiri. Dari segi keperluan bisnis, sudah buakn rahasia lagi, sudah banyak website commerce yang bermunculan. Alasannya karena dengan menggunakan internet maka pemasaran dan publikasi pasar semakin luas. Dapat mencakup antar kota, provinsi bahkan antar negara. Jadi&nbsp; web programming ini sangat menjanjikan untuk beberapa tahun kedepan.</p>\r\n<p>Dari prmbahasan di atas kita bisa mengambil kesimpulan bahwa menguasai web programming ini sangat di bermanfaat bagi anda dalam jangka panjang. Mamang banyak anggapan kalau belajar web programming itu susah, kalau anda berfikir seperti itu, maka anda tidak akan pernah bisa menguasai web programming. Jadi anda harus bisa memotifasi diri anda sendiri, jangan hanya melihat dari sudut pandang mengenai pembelajarannya, coba lihat dari sudut pandang lain, seperti prospek kerja yang akan bertahan dalam jangka panjang.</p>\r\n<p>Untuk bisa menjadi web programming profesional, anda harus belajar bahasa pemrograman, mampu menguasai dan mengaplikasikannya dengan baik. Belajar bahasa pemrograman akan menguntungkan juga bagi anda, karena belajar bahasa pemrograman merupakan pembiasaan dalam menuliskan baris-baris kode yang benar, pembiasaan dalam menggunakan penalaran yang tepat, dan pembiasaan dalam meggunakan perumusan.</p>\r\n<p>Beberapa manfaat belajar bahasa pemrograman agar bisa menjadi web programming profesional.</p>\r\n<ul>\r\n<li>Meningkatkan kemampuan berfikir secara logis &ndash; karena dalam dunia web programming kita akan dituntut untuk bahasa pemrograman dan itu membutuhkan logika agar suatu program bisa berjalan dengan baik.</li>\r\n<li>Mengembangkan cara berfikir dengan sistematis &ndash; selain dapat mempertimbangkan dengan tepat bagaimana anda akan menyelesaikan sebuah permasalahan. Ini adalah salah satu manfaat belajar bahasa pemrograman.</li>\r\n<li>Melatih teliti terhadap detail &ndash; dalam membangun sebuah program, sering kali seorang developer mengalami sebuah permasalahan, salah satunya adalah pemrograman yang di bangun eror saar diverifikasi atau di&nbsp;<em>build&nbsp;</em>permsalahan ini akan memerlukan ketelitian untuk mengatasinya. Nah dengan terbiasanya mencari masalah dalam menulis kode, anda akan terbiasa agar lebih teliti dalam menulis kode dalam membuat sebuah program. Hal ini tentu akan berimbas ke dalam aktivitas anda.</li>\r\n</ul>', 'Publish', 'Berita', 'Selamat datang di website Java Web Media', 'web-development-javawebmedia1.png', NULL, 0, '2021-04-24 08:05:28', '0000-00-00 00:00:00', '2021-04-23 19:55:58'),
(23, 1, 6, 'kursus-di-java-web-media', 'Kursus di Java Web Media', 'Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik', '<p>Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik</p>', 'Publish', 'Profil', 'Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik', 'logo-javawebmedia-square.png', 'fa fa-book', 0, '2021-04-24 11:59:48', '0000-00-00 00:00:00', '2021-04-23 21:59:48'),
(24, 1, 6, 'kursus-web-development', 'Kursus Web Development', 'Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', '<h2>Deskripsi ringkas</h2>\r\n<p>Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.</p>\r\n<hr />\r\n<p>Anda akan belajar membangun website&nbsp;<strong>profil perusahaan</strong>&nbsp;dengan menggunakan bootstrap, framework JavaScript,&nbsp;<strong><em>PHP framework</em></strong><em>&nbsp;<strong>Codeigniter / Laravel</strong></em>&nbsp;dan database MySQL.</p>\r\n<h2><a name=\"_Toc32320297\"></a>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n<h2><a name=\"_Toc32320298\"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n<li>Aplikasi pendaftaran online sederhana</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n<h2><a name=\"_Toc32320299\"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Laporan PDF dengan MPDF</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name=\"_Toc32320300\"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>', 'Publish', 'Layanan', 'Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', 'web-development-javawebmedia1.png', 'fa fa-globe', 0, '2021-04-24 12:06:07', '0000-00-00 00:00:00', '2021-04-23 22:06:07');

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
  `isi_testimoni` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `id_user`, `jenis_client`, `nama`, `pimpinan`, `alamat`, `telepon`, `website`, `email`, `isi_testimoni`, `gambar`, `status_client`, `tempat_lahir`, `tanggal_lahir`, `tanggal_post`, `tanggal`) VALUES
(2, 1, 'Perorangan', 'AWS Indonesia', 'Uli Handayani', 'Jalan Lapangan Banteng Barat No. 3-4\r\nTromol Pos 3500', '', 'https://awsindonesia.org', 'javawebmedia@gmail.com', 'Website Yayasan AWS Indonesia saat ini sudah aktif dan bisa diakses tepat pada waktunya. Semoga selalu sukses ya.', 'Powered-by-Yayasan-AWS-Indonesia---SQUARE-2.png', 'Publish', 'JAKARTA', '1962-01-02', '0000-00-00 00:00:00', '2021-04-23 22:14:19'),
(3, 1, 'Perusahaan', 'Pemprov DKI Jakarta', 'Suprianto', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', 'http://bkddki.jakarta.go.id', 'lalu-kekah@bkkbn.go.id', 'Sebelumnya kami menggunakan website berbasis CMS Joomla. Saat ini website sudah diupdate dan berfungsi dengan baik sekali.', '5a1d2cd419e0c365574115.png', 'Publish', 'Depok', '2020-03-02', '0000-00-00 00:00:00', '2021-04-23 22:21:38'),
(5, 1, 'Perusahaan', 'Hotel Bumi Wiyata', 'Winda', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://hotelbumiwiyata.com', 'javawebmedia@gmail.com', 'Java Web Media sangat membantu proses pengembangan website kami. Menyediakan dan mempersiapkan konten mulai dari gambar hingga copy writing. Terimakasih', 'b7630a2a75006840b351bde15efe52be.jpg', 'Publish', 'Blora', '1983-02-22', '2021-04-24 07:34:12', '2021-04-23 22:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal_post`, `tanggal`) VALUES
(3, 2, 1, 'Paket Harga Kursus Desain dan Programming Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Desain dan Programming Java Web Media 2020</p>', 'Daftar_Harga_Kursus_2020_v2.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-12 17:50:27'),
(4, 1, 1, 'Formulir Pendaftaran Siswa Kursus', 'Download', '<p>Formulir Pendaftaran Siswa Kursus</p>', 'FORMULIR_PENDAFTARAN_SISWA_KURSUS.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-12 17:50:10'),
(5, 2, 1, 'Paket Harga Kursus Statistik Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Statistik Java Web Media 2020</p>', 'KURSUS_STATISTIK.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-12 17:50:48'),
(6, 2, 1, 'Panduan Untuk Admin Engineering Utama aaa', 'Download', '<p>Panduan Untuk Admin Engineering Utama</p>', '010-Undangan-Workshop-Rekonsiliasi-Feb-2021.pdf', '', 0, '2021-04-23 20:06:25', '2021-04-23 18:27:48'),
(7, 2, 1, 'Panduan Untuk Admin Engineeringa', 'Panduan', '', 'SURAT-TUGAS-BOGOR-27-29-NOVEMBER-2019.pdf', '', 0, '2021-04-24 02:31:13', '2021-04-23 18:26:00'),
(8, 2, 1, 'Panduan Website', 'Download', '<p>Panduan Website</p>', 'RENCANA-JADWAL-MAS-FAISAL-BSM.pdf', '', 4, '2021-04-24 08:20:48', '2021-04-23 20:51:42');

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
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `status_text`, `tanggal_post`, `tanggal`) VALUES
(4, 5, 1, 'Kursus di Java Web Media', 'Homepage', '<div class=\"align-items-center d-none d-md-flex\">Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik. Anda dapat memilih program kursus sesuai kebutuhan.</div>\r\n<div class=\"d-flex align-items-center\">&nbsp;</div>', 'DESAIN-AWS-1980-x-1080.jpg', 'http://javawebmedia.com', NULL, 'Ya', NULL, '2021-04-23 22:46:34'),
(5, 5, 1, 'Kursus Codeigniter di Java Web Media', 'Homepage', '<p>Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.</p>', '5.jpg', 'https://javawebmedia.com', NULL, 'Ya', NULL, '2021-04-23 22:45:51'),
(7, 5, 1, 'Kursus Web Development Java Web Media', 'Galeri', '<p>Kursus Web Development Java Web Media</p>', 'web-development-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-12 17:52:02'),
(8, 5, 1, 'Web Application Java Web Media', 'Galeri', '<p>Web Application Java Web Media</p>', 'web-application-pendaftaran-online-javawebmedia1.jpg', '', NULL, 'Ya', NULL, '2020-02-12 17:52:18'),
(9, 5, 1, 'Kursus Statistik di Java Web Media', 'Galeri', '<p>Kursus Statistik di Java Web Media</p>', 'instagram-kursus-statistik-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-12 17:53:55'),
(10, 5, 1, 'Web Development Java Web Media', 'Galeri', '<p>Web Development Java Web Media</p>', 'website-perusahaan-company-profile-web-javawebmedia12.jpg', '', NULL, 'Ya', NULL, '2020-02-12 17:54:28'),
(12, 6, 1, 'Festival Kabupaten Lestari 2019', 'Galeri', '<p>Festival Kabupaten Lestari 2019</p>', '1.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 02:45:16', '2021-04-23 22:27:53'),
(13, 6, 1, 'Welcome to Java Web Media', 'Galeri', '<p>Welcome to Java Web Media</p>', 'Kursus-Banner-02.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 08:13:13', '2021-04-23 18:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `isn_desa`
--

CREATE TABLE `isn_desa` (
  `id_desa` int(11) NOT NULL,
  `kd_desa` varchar(15) DEFAULT NULL,
  `nama_desa` varchar(50) DEFAULT NULL,
  `sts_wil_des` enum('Kelurahan','Desa') DEFAULT 'Desa',
  `email_desa` varchar(70) DEFAULT NULL,
  `uang_jalan` decimal(21,4) DEFAULT NULL,
  `person1` varchar(50) DEFAULT NULL,
  `hp1` varchar(50) DEFAULT NULL,
  `jab1` varchar(50) DEFAULT NULL,
  `person2` varchar(50) DEFAULT NULL,
  `hp2` varchar(50) DEFAULT NULL,
  `jab2` varchar(50) DEFAULT NULL,
  `person3` varchar(50) DEFAULT NULL,
  `hp3` varchar(50) DEFAULT NULL,
  `jab3` varchar(50) DEFAULT NULL,
  `id_kec` int(11) DEFAULT NULL,
  `id_kab` int(11) DEFAULT NULL,
  `id_prov` int(11) DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(15) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `isn_desa`
--

INSERT INTO `isn_desa` (`id_desa`, `kd_desa`, `nama_desa`, `sts_wil_des`, `email_desa`, `uang_jalan`, `person1`, `hp1`, `jab1`, `person2`, `hp2`, `jab2`, `person3`, `hp3`, `jab3`, `id_kec`, `id_kab`, `id_prov`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(10, '2014', 'BAILANGU TIMUR', 'Desa', NULL, '3336.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 00:46:36'),
(13, '2003', 'TANJUNG AGUNG TIMUR', 'Desa', NULL, '1661.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:07:54'),
(20, '2010', 'TELUK KIJING II', 'Desa', NULL, '3927.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:08:42'),
(21, '2011', 'TELUK KIJING III', 'Desa', NULL, '3757.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:09:11'),
(22, '2012', 'TANJUNG AGUNG UTARA', 'Desa', NULL, '1390.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:08:22'),
(23, '2013', 'TANJUNG AGUNG BARAT', 'Desa', NULL, '1864.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:06:55'),
(25, '2015', 'LAIS UTARA', 'Desa', NULL, '1844.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:55:47'),
(29, '2006', 'SUNGAI DUA', 'Desa', NULL, '1495.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:47:09'),
(39, '2004', 'TALANG LEBAN', 'Desa', NULL, '936.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:47:54'),
(40, '2005', 'TALANG BULUH', 'Desa', NULL, '746.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:48:38'),
(42, '2007', 'SUNGAI NAPAL', 'Desa', NULL, '909.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-23 12:42:49'),
(43, '2008', 'LUBUK BINTIALO', 'Desa', NULL, '2468.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:51:53'),
(47, '2012', 'TANJUNG BALI', 'Desa', NULL, '480.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:52:29'),
(48, '2013', 'PINGGAP', 'Desa', NULL, '528.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-22 18:00:51'),
(52, '2001', 'AIR BALUI', 'Desa', NULL, '2025.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-22 20:33:01'),
(53, '2002', 'NGANTI', 'Desa', NULL, '755.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-22 20:34:16'),
(54, '2003', 'JUD I', 'Desa', NULL, '294.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:56:54'),
(56, '2005', 'PENGGAGE', 'Desa', NULL, '828.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:57:18'),
(58, '2007', 'NGULAK II', 'Desa', NULL, '1439.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 01:58:10'),
(59, '2008', 'NGULAK III', 'Desa', NULL, '806.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 20:36:10'),
(60, '2009', 'ULAK EMBACANG', 'Desa', NULL, '989.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:09:28'),
(61, '2010', 'TERUSAN', 'Desa', NULL, '2105.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:01:28'),
(64, '2013', 'AIR ITAM', 'Desa', NULL, '349.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:54:11'),
(65, '2014', 'KEBAN I', 'Desa', NULL, '1211.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:56:55'),
(67, '2017', 'PANAI', 'Desa', NULL, '839.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:05:39'),
(69, '2001', 'SEREKA', 'Desa', NULL, '1070.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:02:51'),
(70, '2002', 'SUGI RAYA', 'Desa', NULL, '381.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:03:30'),
(71, '2003', 'SUGI WARAS', 'Desa', NULL, '926.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:04:10'),
(74, '2007', 'BANGUN SARI', 'Desa', NULL, '2028.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:04:44'),
(75, '2008', 'TOMAN', 'Desa', NULL, '4814.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:06:45'),
(76, '2009', 'KASMARAN', 'Desa', NULL, '3340.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:08:41'),
(77, '2022', 'SUNGAI ANGIT', 'Desa', NULL, '2133.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-22 20:25:03'),
(78, '2023', 'SRIMULYO', 'Desa', NULL, '1068.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-21 09:00:00', 'admin', '2021-11-21 20:36:36'),
(79, '2042', 'PANGKALAN JAYA', 'Desa', NULL, '982.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:10:30'),
(82, '2009', 'LINGGO SARI', 'Desa', NULL, '1644.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:11:12'),
(88, '2015', 'MEKAR JADI', 'Desa', NULL, '1504.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:11:43'),
(93, '2001', 'TENGGARO', 'Desa', NULL, '973.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:13:57'),
(95, '2004', 'DAWAS', 'Desa', NULL, '3461.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:15:13'),
(101, '2010', 'LOKA JAYA', 'Desa', NULL, '1457.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:15:38'),
(103, '2012', 'SIDO REJO', 'Desa', NULL, '1078.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:16:23'),
(104, '2013', 'MULYO ASIH', 'Desa', NULL, '1762.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:17:15'),
(107, '2007', 'MANGSANG', 'Desa', NULL, '5608.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:58:41'),
(114, '2014', 'PULAI GADING', 'Desa', NULL, '2582.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:06:13'),
(115, '2015', 'MUARA MEDAK', 'Desa', NULL, '6106.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:59:01'),
(119, '2049', 'BAYAT ILIR', 'Desa', NULL, '1106.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:56:26'),
(120, '2050', 'PANGKALAN BAYAT', 'Desa', NULL, '1236.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:05:51'),
(128, '2002', 'SUKA DAMAI', 'Desa', NULL, '1694.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:21:28'),
(129, '2003', 'SUKA JAYA', 'Desa', NULL, '1207.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-22 17:58:49'),
(143, '2002', 'KARANG REJO', 'Desa', NULL, '1713.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:22:41'),
(144, '2003', 'KARANG MAKMUR', 'Desa', NULL, '1859.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:23:19'),
(147, '2006', 'KARANG TIRTA', 'Desa', NULL, '1668.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:24:35'),
(148, '2007', 'PURWO  AGUNG', 'Desa', NULL, '1117.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:25:43'),
(152, '2011', 'AGUNG JAYA', 'Desa', NULL, '832.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:26:22'),
(158, '2017', 'KARANG SARI', 'Desa', NULL, '667.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:26:53'),
(159, '2018', 'SRI GADING', 'Desa', NULL, '1314.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:27:34'),
(161, '2020', 'KARYA MUKTI', 'Desa', NULL, '723.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:28:46'),
(168, '2027', 'MEKAR JAYA', 'Desa', NULL, '715.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:30:15'),
(174, '2006', 'SUMBER HARUM', 'Desa', NULL, '2291.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:30:41'),
(175, '2007', 'SUMBER SARI', 'Desa', NULL, '2003.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:31:05'),
(178, '2010', 'BEJI MULYO', 'Desa', NULL, '3130.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:31:58'),
(180, '2012', 'PANDAN SARI', 'Desa', NULL, '1441.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:32:29'),
(181, '2013', 'MARGO MULYO', 'Desa', NULL, '2184.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:33:57'),
(182, '2014', 'SRI MULYO', 'Desa', NULL, '1894.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 11:24:02'),
(188, '2004', 'NAPAL', 'Desa', NULL, '715.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:36:30'),
(191, '2007', 'KARANG RINGIN II', 'Desa', NULL, '994.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:37:00'),
(194, '2010', 'KARANG WARU', 'Desa', NULL, '773.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:37:22'),
(195, '2011', 'KARANG ANYAR', 'Desa', NULL, '1236.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:39:17'),
(197, '2013', 'SIMPANG SARI', 'Desa', NULL, '999.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:39:42'),
(199, '2015', 'PANDAN DULANG', 'Desa', NULL, '950.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:40:11'),
(215, '2016', 'GAJAH MUDA', 'Desa', NULL, '639.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-20 02:40:43'),
(221, '2016', 'BARU JAYA', 'Desa', NULL, '721.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:56:08'),
(222, '2017', 'LAYAN', 'Desa', NULL, '609.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:58:20'),
(223, '2018', 'REJO SARI', 'Desa', NULL, '848.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 09:06:38'),
(224, '2019', 'JEMBATAN GANTUNG', 'Desa', NULL, '1140.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-21 08:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `isn_employee`
--

CREATE TABLE `isn_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addr` varchar(250) DEFAULT NULL,
  `emailnya` varchar(30) DEFAULT NULL,
  `no_hp` varchar(30) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `created_by` varchar(250) DEFAULT NULL,
  `created_date` time DEFAULT NULL,
  `modified_by` varchar(250) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isn_employee`
--

INSERT INTO `isn_employee` (`emp_id`, `emp_no`, `name`, `addr`, `emailnya`, `no_hp`, `position`, `foto`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, '0019', 'dika', 'Jalan lintas sumut', 'dika@gmail.com', '08928882', 'Kepala Bengkel', NULL, NULL, NULL, NULL, NULL),
(2, '0020', 'haris', 'jln lintas', 'haris@gmail.com', '089888', 'Teknisi', NULL, NULL, NULL, NULL, NULL),
(3, '0001', 'wadi', 'jalan', 'dsds@gmail.com', '0999', 'junior teknisi', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `isn_item`
--

CREATE TABLE `isn_item` (
  `item_id` int(11) NOT NULL,
  `item_no` varchar(30) DEFAULT NULL,
  `item_nm` varchar(90) DEFAULT NULL,
  `item_desc` varchar(50) DEFAULT NULL,
  `item_unit_price` decimal(21,4) DEFAULT NULL,
  `item_unit` varchar(30) DEFAULT NULL,
  `item_contents` decimal(20,0) DEFAULT NULL,
  `item_content_unit` varchar(30) DEFAULT NULL,
  `item_model` varchar(50) DEFAULT NULL,
  `item_merk` varchar(50) DEFAULT NULL,
  `item_stock_min` int(11) DEFAULT NULL,
  `item_stock_max` int(11) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isn_item`
--

INSERT INTO `isn_item` (`item_id`, `item_no`, `item_nm`, `item_desc`, `item_unit_price`, `item_unit`, `item_contents`, `item_content_unit`, `item_model`, `item_merk`, `item_stock_min`, `item_stock_max`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, '01', 'LHG', 'des', '3000.0000', 'pcs', '1', 'psc', 'N301', 'Mikrotik', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '02', 'Neat Beam', '-', '200000.0000', 'PCS', '1', '1', '220', 'Ubeaquity', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `isn_kabkota`
--

CREATE TABLE `isn_kabkota` (
  `id_kab` int(11) NOT NULL,
  `kd_kab` varchar(15) DEFAULT NULL,
  `nama_kab` varchar(50) DEFAULT NULL,
  `jml_pemilih` int(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `sts_wil` enum('Kabupaten','Kota') DEFAULT 'Kabupaten',
  `id_prov` int(11) DEFAULT NULL,
  `ketua` varchar(50) DEFAULT NULL,
  `waketua` varchar(50) DEFAULT NULL,
  `sekerta` varchar(50) DEFAULT NULL,
  `wasekerta` varchar(50) DEFAULT NULL,
  `bendaha` varchar(50) DEFAULT NULL,
  `wabendaha` varchar(50) DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(15) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `isn_kabkota`
--

INSERT INTO `isn_kabkota` (`id_kab`, `kd_kab`, `nama_kab`, `jml_pemilih`, `ket`, `sts_wil`, `id_prov`, `ketua`, `waketua`, `sekerta`, `wasekerta`, `bendaha`, `wabendaha`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, '06', 'Musi Banyuasin', 0, NULL, 'Kabupaten', 1, '', '', '', '', '', '', 'admin', '2018-09-12 15:01:13', 'admin', '2019-03-13 22:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `isn_kecamatan`
--

CREATE TABLE `isn_kecamatan` (
  `id_kec` int(11) NOT NULL,
  `kode_kec` varchar(15) DEFAULT NULL,
  `nama_kec` varchar(50) DEFAULT NULL,
  `pemilih_kec` int(11) DEFAULT NULL,
  `ketua` varchar(50) DEFAULT NULL,
  `waketua` varchar(50) DEFAULT NULL,
  `sekerta` varchar(50) DEFAULT NULL,
  `wasekerta` varchar(50) DEFAULT NULL,
  `bendaha` varchar(50) DEFAULT NULL,
  `wabendaha` varchar(50) DEFAULT NULL,
  `id_kab` int(11) DEFAULT NULL,
  `id_prov` int(11) DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(15) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `isn_kecamatan`
--

INSERT INTO `isn_kecamatan` (`id_kec`, `kode_kec`, `nama_kec`, `pemilih_kec`, `ketua`, `waketua`, `sekerta`, `wasekerta`, `bendaha`, `wabendaha`, `id_kab`, `id_prov`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, '01', 'Sekayu', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(2, '02', 'Lais', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(3, '03', 'Sungai Keruh', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(4, '04', 'Batang Hari Leko', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(5, '05', 'Sanga Desa', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(6, '06', 'Babat Toman', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(7, '07', 'Sungai Lilin', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(8, '08', 'Keluang', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(9, '09', 'Bayung Lencir', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(10, '10', 'Plakat Tinggi', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(11, '11', 'Lalan', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(12, '12', 'Tungkal Jaya', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(13, '13', 'Lawang Wetan', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(14, '14', 'Babat Supat', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22'),
(15, '15', 'Jirak Jaya', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'admin', '2021-11-17 08:12:22', 'admin', '2021-11-17 08:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `isn_provinsi`
--

CREATE TABLE `isn_provinsi` (
  `id_prov` int(11) NOT NULL,
  `kd_prov` varchar(15) DEFAULT NULL,
  `nama_prov` varchar(50) DEFAULT NULL,
  `dpt_prov` int(11) DEFAULT NULL,
  `ket_prov` varchar(100) DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(15) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `isn_provinsi`
--

INSERT INTO `isn_provinsi` (`id_prov`, `kd_prov`, `nama_prov`, `dpt_prov`, `ket_prov`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, '16', 'Sumatera Selatan', NULL, '-', 'admin', '2018-09-12 11:21:57', 'admin', '2019-03-18 12:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `isn_service`
--

CREATE TABLE `isn_service` (
  `id_serv` int(11) NOT NULL,
  `serv_name` varchar(50) DEFAULT NULL,
  `serv_desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `isn_user`
--

CREATE TABLE `isn_user` (
  `id` int(11) NOT NULL,
  `jab_id` int(11) NOT NULL,
  `usernamenya` varchar(100) DEFAULT NULL,
  `passnya` varchar(100) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `emailnya` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kelamin` enum('p','l') DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `hak` enum('admin','operator','teknisi') DEFAULT 'admin',
  `aktif` enum('n','y') DEFAULT 'y',
  `groupid` varchar(1) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_saksi` int(11) DEFAULT NULL,
  `id_prov` int(11) DEFAULT NULL,
  `id_kab` int(11) DEFAULT NULL,
  `id_kec` int(11) DEFAULT NULL,
  `id_desa` int(11) DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(15) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `opd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `isn_user`
--

INSERT INTO `isn_user` (`id`, `jab_id`, `usernamenya`, `passnya`, `pin`, `emailnya`, `nama`, `alamat`, `jenis_kelamin`, `telp`, `hak`, `aktif`, `groupid`, `lokasi`, `foto`, `id_saksi`, `id_prov`, `id_kab`, `id_kec`, `id_desa`, `created_by`, `created_date`, `modified_by`, `modified_date`, `opd`) VALUES
(1, 0, 'adminisn', '95654a4ac56a04e581e51ed6fc94d81f136cac16', '1234', 'sddsa@jh.com', 'M Arief', 'Jln.Lintas Timur', 'l', '0865676744444', 'admin', 'y', '0', 1, '', 0, 0, 0, 0, NULL, NULL, NULL, 'admin', '2019-04-17 13:26:02', NULL),
(24, 0, 'admin1', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', '1234', '-', 'admin1 siskupel', '-', 'l', '-', 'admin', 'y', '0', 1, NULL, NULL, 0, 0, 0, 0, 'admin', '2021-11-18 11:56:52', 'admin', '2021-11-22 00:27:37', NULL),
(27, 0, 'admin3', '6c0e6daa8d1634b8bda41cb026ea643f', '1234', '-', 'admin3', '-', 'l', '-', 'admin', 'y', '0', 1, NULL, NULL, 0, 0, 0, 0, 'admin', '2021-11-22 00:29:56', 'admin', '2021-11-22 00:29:56', NULL),
(28, 0, 'admin4', 'abce1378c97f01b84c0761615f88409c', '1234', '-', 'admin4', '-', 'l', '-', 'admin', 'y', '0', 1, NULL, NULL, 0, 0, 0, 0, 'admin', '2021-11-22 00:30:45', 'admin', '2021-11-22 00:30:45', NULL),
(29, 0, 'admin5', '500fe4a44305807c62bcf37735165275', '1234', 'indah@gmail.com', 'Indah', 'Dinas PMD Kab. Muba', 'l', '+62 821-8705-3397', 'admin', 'y', '0', 1, NULL, NULL, 0, 0, 0, 0, 'admin', '2021-11-22 00:31:32', 'admin', '2021-11-22 00:42:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `isn_visit_emp`
--

CREATE TABLE `isn_visit_emp` (
  `ve_id` int(11) NOT NULL,
  `ve_no` varchar(30) DEFAULT NULL,
  `ve_date` date DEFAULT NULL,
  `ve_desc` varchar(250) DEFAULT NULL,
  `visit_fee` decimal(21,4) DEFAULT NULL,
  `sts_bayar` varchar(50) DEFAULT NULL,
  `id_desa` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `isn_visit_emp_det`
--

CREATE TABLE `isn_visit_emp_det` (
  `ve_id_det` int(11) NOT NULL,
  `ve_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `isn_visit_item`
--

CREATE TABLE `isn_visit_item` (
  `id_vi` int(11) NOT NULL,
  `ve_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `used_item` int(11) DEFAULT NULL,
  `content_unit` varchar(50) DEFAULT NULL,
  `unit_price` decimal(21,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 1, 'web-design', 'Web Design', 1, 0, '2021-04-20 15:20:49'),
(2, 1, 'berita', 'Berita', 2, 0, '2021-04-20 15:20:57'),
(3, 1, 'java-web-media', 'Java Web Media', 3, 0, '2021-04-20 15:21:06'),
(4, 1, 'updates', 'Updates', 4, 0, '2021-04-20 15:26:59'),
(5, 1, 'web-programming', 'Web Programming', 5, 9, '2022-01-15 00:57:34'),
(6, 1, 'kursus-web', 'Kursus Web', 2, 3, '2021-04-24 16:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `id_user`, `slug_kategori_download`, `nama_kategori_download`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'formulir-pendaftaran', 'Formulir Pendaftaran', 1, 0, '2021-04-20 17:37:58'),
(2, 1, 'promosi-java-web-media-2021', 'Promosi Java Web Media 2021', 2, 0, '2021-04-20 18:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `id_user`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`, `hits`, `tanggal`) VALUES
(4, 0, 'kegiatan', 'Kegiatan', 4, 0, '2021-04-20 17:38:46'),
(5, 0, 'banner-website', 'Banner Website', 4, 0, '2021-04-20 17:38:46'),
(6, 1, 'family-gathering', 'Family gathering', 2, 0, '2021-04-20 17:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `id_user`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1, 0, '2021-04-20 17:44:24'),
(2, 0, 'pejabat-struktural', 'Pejabat Struktural', 2, 0, '2021-04-20 17:44:24'),
(3, 1, 'team-inti', 'Team Inti', 2, 0, '2021-04-20 18:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `id_user`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `youtube`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_youtube`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `tanggal`) VALUES
(1, 1, 'Java Web Media', 'JWM', 'Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik', '<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>', 'Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik', 'Depok Town Square Lantai 2 Unit SS 5-7', 'javawebmedia@gmail.com', 'javawebmedia@gmail.com', '<p><strong>Java Web Media</strong><br />MALL DEPOK TOWN SQUARE<br />Lantai 2 Unit SS No. 5-7<br />(Samping Gerai Samsung)<br />Jl. Margonda Raya No 1<br />Kemiri Muka, Kecamatan Beji, Kota Depok, Jawa Barat 16424<br />Telepon: 085715100485<br />Whatsapp: +6281210697841<br />Email: contact@javawebmedia.co.id</p>', '+6285715100485', '+6281210697841', 'logo-java-web-media-01-01.png', 'logo-javawebmedia-square.png', 'Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik\r\n', 'adada', 'https://www.facebook.com/javawebmedia', 'http://twitter.com/javawebmedia', 'https://instagram.com/javawebmedia', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', 'Java Web Media', 'Java Web Media', 'Java Web Media', 'Java Web Media', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.1145209004862!2d106.82752101476999!3d-6.379215695384046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ec0869e31b4f%3A0xaa40278d69385917!2sHotel+Bumi+Wiyata!5e0!3m2!1sid!2sid!4v1532643481549\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', '2021-04-23 21:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `nama`, `alamat`, `telepon`, `website`, `email`, `jabatan`, `keahlian`, `gambar`, `status_staff`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(9, 1, 3, 'Andoyo Cakep', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', 'https://sidatablkbogorkab.com', 'lalu-kekah@bkkbn.go.id', 'Direktur', 'ada', '6.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-23 18:51:22'),
(10, 1, 3, 'Andoyo Cakep', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://javawebmedia.com', 'javawebmedia@gmail.com', 'Graphic Designer', '', '4.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-23 18:50:59');

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
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(1, 'Andoyo Cakep', 'andoyoandoyo@gmail.com', 'javawebmedia', 'dc28d4424ece38803650f440d7eb1cb2b3fb6651', 'Admin', NULL, 'icon-educamedia.png', '', '2019-10-12 15:50:21', '2021-04-21 14:24:48'),
(2, 'Rayyan', 'andoyoandoyo@gmail.com', 'rayyan', 'acc5d43e0936dbf3f27b906891aaafdf9ede4508', 'User', NULL, NULL, '', '2019-04-24 17:21:18', '2019-04-24 03:21:18'),
(3, 'Kheira Alexandrina', 'andoyoandoyo@gmail.com', 'diana', '6a90af129eeefc2f6e6a38746a2b33cb04c2c632', 'User', NULL, NULL, '<p>adada</p>', '2019-10-12 14:10:05', '2021-04-20 18:07:25'),
(4, 'M Arief', 'donatdoni79@gmail.com', 'adminisn', '81631e73d83b4f97db7700fc2694fac003233eca', 'Admin', NULL, NULL, NULL, '2022-01-15 22:15:44', '2022-01-15 08:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id_user_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id_user_log`, `id_user`, `ip_address`, `username`, `url`, `tanggal_updates`) VALUES
(1, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2021-05-02 18:19:34'),
(2, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/dasbor', '2022-01-13 09:16:16'),
(3, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/berita/tambah', '2022-01-13 09:16:32'),
(4, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/berita', '2022-01-13 09:16:42'),
(5, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/berita/edit/24', '2022-01-13 09:18:32'),
(6, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/berita', '2022-01-13 09:18:36'),
(7, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/berita/tambah', '2022-01-13 09:18:38'),
(8, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/user', '2022-01-13 09:18:42'),
(9, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/berita', '2022-01-13 09:19:41'),
(10, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/client', '2022-01-13 09:19:58'),
(11, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/video', '2022-01-13 09:20:02'),
(12, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/video', '2022-01-13 09:20:11'),
(13, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/download', '2022-01-13 09:20:17'),
(14, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/download/unduh/8', '2022-01-13 09:20:22'),
(15, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/download/edit/8', '2022-01-13 09:20:28'),
(16, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/galeri', '2022-01-13 09:20:51'),
(17, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/dasbor', '2022-01-13 09:21:05'),
(18, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/staff', '2022-01-13 09:21:23'),
(19, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/staff/edit/10', '2022-01-13 09:21:38'),
(20, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/staff', '2022-01-13 09:22:09'),
(21, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/kategori', '2022-01-13 09:22:28'),
(22, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/dasbor', '2022-01-13 09:31:30'),
(23, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/dasbor', '2022-01-15 00:50:59'),
(24, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/kategori_staff', '2022-01-15 00:51:44'),
(25, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/panduan', '2022-01-15 00:51:47'),
(26, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/user', '2022-01-15 00:51:57'),
(27, 1, '::1', 'javawebmedia', 'http://localhost:4000/comproci4/admin/dasbor', '2022-01-15 00:52:10'),
(28, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 01:20:37'),
(29, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/konfigurasi', '2022-01-15 01:20:49'),
(30, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/galeri', '2022-01-15 01:20:59'),
(31, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 07:20:03'),
(32, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:14:12'),
(33, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/user', '2022-01-15 08:14:25'),
(34, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/user/edit/1', '2022-01-15 08:14:32'),
(35, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/user', '2022-01-15 08:14:36'),
(36, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/user', '2022-01-15 08:15:43'),
(37, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/user', '2022-01-15 08:15:44'),
(38, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:16:27'),
(39, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:18:40'),
(40, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/berita', '2022-01-15 08:18:52'),
(41, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:19:15'),
(42, 1, '::1', 'javawebmedia', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:21:07'),
(43, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:21:51'),
(44, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/video', '2022-01-15 08:23:36'),
(45, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/video', '2022-01-15 08:23:49'),
(46, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/video', '2022-01-15 08:28:49'),
(47, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:28:57'),
(48, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:30:56'),
(49, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/staff', '2022-01-15 08:56:34'),
(50, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:57:03'),
(51, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:58:56'),
(52, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 08:59:28'),
(53, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 09:31:57'),
(54, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 09:33:00'),
(55, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 09:35:50'),
(56, 4, '::1', 'adminisn', 'http://localhost:4000/isnsop/admin/dasbor', '2022-01-15 09:36:26'),
(57, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:38:58'),
(58, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:42:08'),
(59, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:42:43'),
(60, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:43:55'),
(61, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:47:24'),
(62, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:47:55'),
(63, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:48:25'),
(64, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:51:13'),
(65, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:52:18'),
(66, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:52:49'),
(67, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:53:31'),
(68, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:53:55'),
(69, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:54:17'),
(70, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:54:37'),
(71, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 09:56:13'),
(72, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-15 10:10:39'),
(73, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/galeri', '2022-01-15 10:10:53'),
(74, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/galeri/edit/13', '2022-01-15 10:11:02'),
(75, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/galeri', '2022-01-15 10:11:07'),
(76, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/galeri/edit/13', '2022-01-15 10:11:27'),
(77, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-16 22:28:55'),
(78, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/user', '2022-01-16 22:49:51'),
(79, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/user', '2022-01-16 22:49:51'),
(80, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/galeri/tambah', '2022-01-16 22:50:20'),
(81, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-17 00:28:26'),
(82, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-19 20:53:06'),
(83, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-21 07:56:57'),
(84, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/user', '2022-01-21 08:25:35'),
(85, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/konfigurasi', '2022-01-21 08:25:41'),
(86, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/client', '2022-01-21 08:41:14'),
(87, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-24 04:35:55'),
(88, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-24 04:36:00'),
(89, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-26 03:13:19'),
(90, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-28 02:22:52'),
(91, 4, '::1', 'adminisn', 'http://localhost:4000/siskupel/admin/dasbor', '2022-01-28 03:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_user`, `judul`, `keterangan`, `video`, `tanggal_post`, `tanggal`) VALUES
(1, 1, 'INSTALASI XAMPP DAN SUBLIME TEXT', 'INSTALASI XAMPP DAN SUBLIME TEXT', 'A66PiaPuTZs', '0000-00-00 00:00:00', '2020-02-12 17:48:03'),
(2, 1, 'Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View', 'Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View', 'kFfAir_JgIU', '0000-00-00 00:00:00', '2020-02-12 17:48:31'),
(3, 1, 'Makan bersama dengan Bunda', 'Makan bersama dengan Bunda', 'jVr6CYLhjQo', '0000-00-00 00:00:00', '2021-04-23 13:49:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_menu`
--
ALTER TABLE `backend_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `backend_menu_sub`
--
ALTER TABLE `backend_menu_sub`
  ADD PRIMARY KEY (`menu_sub_id`);

--
-- Indexes for table `backend_menu_sub2`
--
ALTER TABLE `backend_menu_sub2`
  ADD PRIMARY KEY (`menu_sub_id2`);

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
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `isn_desa`
--
ALTER TABLE `isn_desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `isn_employee`
--
ALTER TABLE `isn_employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `isn_item`
--
ALTER TABLE `isn_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `isn_kabkota`
--
ALTER TABLE `isn_kabkota`
  ADD PRIMARY KEY (`id_kab`);

--
-- Indexes for table `isn_kecamatan`
--
ALTER TABLE `isn_kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `isn_provinsi`
--
ALTER TABLE `isn_provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `isn_service`
--
ALTER TABLE `isn_service`
  ADD PRIMARY KEY (`id_serv`);

--
-- Indexes for table `isn_user`
--
ALTER TABLE `isn_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isn_visit_emp`
--
ALTER TABLE `isn_visit_emp`
  ADD PRIMARY KEY (`ve_id`);

--
-- Indexes for table `isn_visit_emp_det`
--
ALTER TABLE `isn_visit_emp_det`
  ADD PRIMARY KEY (`ve_id_det`);

--
-- Indexes for table `isn_visit_item`
--
ALTER TABLE `isn_visit_item`
  ADD PRIMARY KEY (`id_vi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id_user_log`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_menu`
--
ALTER TABLE `backend_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `backend_menu_sub`
--
ALTER TABLE `backend_menu_sub`
  MODIFY `menu_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=883;

--
-- AUTO_INCREMENT for table `backend_menu_sub2`
--
ALTER TABLE `backend_menu_sub2`
  MODIFY `menu_sub_id2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `isn_desa`
--
ALTER TABLE `isn_desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `isn_employee`
--
ALTER TABLE `isn_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `isn_item`
--
ALTER TABLE `isn_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `isn_kabkota`
--
ALTER TABLE `isn_kabkota`
  MODIFY `id_kab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `isn_kecamatan`
--
ALTER TABLE `isn_kecamatan`
  MODIFY `id_kec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `isn_provinsi`
--
ALTER TABLE `isn_provinsi`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `isn_service`
--
ALTER TABLE `isn_service`
  MODIFY `id_serv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isn_user`
--
ALTER TABLE `isn_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `isn_visit_emp`
--
ALTER TABLE `isn_visit_emp`
  MODIFY `ve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isn_visit_emp_det`
--
ALTER TABLE `isn_visit_emp_det`
  MODIFY `ve_id_det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isn_visit_item`
--
ALTER TABLE `isn_visit_item`
  MODIFY `id_vi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id_user_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
