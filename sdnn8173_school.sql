-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2023 at 09:34 PM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdnn8173_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Persiapan Sekolah Adiwiyata', '2023-07-29 04:58:48', 'Pemebanhan Sekaliagus perbaikan dan melengkapi dari administrasi sampai dengan keadaan ruang belajar siswa', '2023-07-01', '2023-08-31', 'SDN 11 Pinogaluman', '08.00 s.d 15.000', 'Pemebanhan', 'Operator Sekolah'),
(2, 'Kegiatan Pramuka', '2023-07-29 05:00:15', 'Kegiatan rutin tahunan dalam rangka memperingati hari pramuka pada tanggal 15 Agustus 2023', '2023-08-01', '2023-07-05', 'SDN 11 Pinogaluman', '5 hari', 'Perkemahan pramuka siaga', 'Operator Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(6, 'Inventaris Buku', '2023-06-28 03:55:15', 5, 'Jamdin Thalib', 0, 'b06517add10a494f464645b60ce0c29f.JPG'),
(7, 'Kegiatan Sekolah', '2023-07-27 10:45:20', 5, 'Jamdin Thalib', 2, '372e8cf347e8a8aace3b892ac8ee02bb.jpg'),
(8, 'Prestasi', '2023-07-27 10:46:55', 5, 'Jamdin Thalib', 2, '251e32f91dd694edf56b67ff9c01faa3.jpg'),
(9, 'Rombel', '2023-07-28 05:50:40', 10, 'Operator Sekolah', 6, 'a2e0db1ed72dc68b97e8bb30baa7b2d3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(14, 'SK KEPALA SEKOLAH', 'Surat Keputusan Pelantikan Kepala Sekolah SDN 11 Pinogaluman', '2023-07-28 01:08:10', 'BAGIAN HUKUM DAN PERUNDANGAN SETDA KAB. BOLMUT', 0, 'acc5464f354e77bfccb9ef8bf7345878.pdf'),
(15, 'PENETAPAN PERUBAHAN TATA NAMA (NOMENKLATUR)', 'PENETAPAN PERUBAHAN TATA NAMA (NOMENKLATUR) SATUAN PENDIDIKAN\r\nTINGKAT SEKOLAH DASAR (SD) NEGERI DAN SEKOLAH MENENGAH PERTAMA\r\n(SMP) NEGERI DI KABUPATEN BOLAANG MONGONDOW UTARA', '2023-07-28 01:13:33', 'DINAS PENDIDIKAN DAN KEBUDAYAAN', 0, '95c775ce8ade9e4bba82af843db3ab10.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(19, 'Pramuka', '2023-06-27 07:26:19', '878d1b446f4f412fd220bb652c27c050.jpg', 5, 5, 'Bagus Erwanto'),
(23, 'Komisi I DPRD Bolmut Kunker ke SDN 1 Busato', '2023-07-27 10:46:11', 'e082acc034ad06d3e61fc9c3e20ec0ba.jpg', 7, 5, 'Jamdin Thalib'),
(24, 'Pembagian Daging Qurban Ke Siswa', '2023-07-27 10:47:19', '66e0afcddcdc512ede9f1f7c94d874f3.jpg', 7, 10, 'Operator Sekolah'),
(25, 'SDN 1 Busato raih juara dua sekolah Adiwiyata di Bolmut', '2023-07-27 10:47:45', '09425b8ecd92c65a6fd408ff2d75b728.jpg', 8, 5, 'Jamdin Thalib'),
(26, 'Siswa Kelas 1', '2023-07-28 05:51:29', 'f9fcf22c6ea253a1bb859dc35c890168.jpeg', 9, 10, 'Operator Sekolah'),
(27, 'Siswa Kelas 2', '2023-07-28 05:51:57', '7d42a0b890beef6b19977cd2163c4a3f.jpeg', 9, 10, 'Operator Sekolah'),
(28, 'Siswa Kelas 3', '2023-07-28 05:52:36', '52c52814fdd1b0e6802735055d26cad8.jpeg', 9, 10, 'Operator Sekolah'),
(29, 'Siswa Kelas 4', '2023-07-28 05:53:06', 'b181b1ae29cfad62c97db7ab34a04e25.jpeg', 9, 10, 'Operator Sekolah'),
(30, 'Siswa Kelas 5', '2023-07-28 05:54:07', 'daec43778152896ea721940b0321fdac.jpeg', 9, 10, 'Operator Sekolah'),
(31, 'Siswa Kelas 6', '2023-07-28 05:54:25', '0d67245699d006b4be5d0c31c4e35962.jpeg', 9, 10, 'Operator Sekolah'),
(32, 'Penguman Kelulusan Siswa Kelas 6', '2023-07-28 15:23:28', '3d7d7e1c246cbecfea929d0122008d34.jpg', 7, 10, 'Operator Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(21, '19690609 199208 2 001', 'MUHRIN NEU, S.Pd', 'P', 'BOLAANG MONGONDOW UTARA', '09 JUNI 1969', 'KEPALA SEKOLAH', '265fa5d0834ec0213812200e65b47b2e.jpg', '2023-07-28 02:49:08'),
(22, '19801112 201001 1 008', 'HASAN TAABI, S.Pd', 'L', 'BOLAANG MONGONDOW UTARA', '12 NOVEMBER 1980', 'GURU KELAS', '8149780f72161c81d8e7cfe5030838a5.jpg', '2023-07-28 02:52:43'),
(23, '19730712 201102 2 001', 'HADIJAH VAN GOBEL, S.Pd', 'P', 'BOLAANG MONGONDOW UTARA', '12 JULI 1973', 'GURU KELAS', 'f9420487685d06a10658b6c640c664d4.jpg', '2023-07-28 02:55:27'),
(24, '19810806 201102 2 001', 'JASRI HILOMALO, S.Pd', 'P', 'BOLAANG MONGONDOW UTARA', '06 AGUSTUS 1981', 'GURU KELAS', 'b3b5d94cd87ce15609b91eca9cb40070.jpg', '2023-07-28 02:57:04'),
(25, '19791102 201001 1 004', 'MASNI PATILIMA, S.Pd', 'P', 'BOLAANG MONGONDOW UTARA', '02 NOVEMBER 1979', 'GURU KELAS', '7813a00f9aba82c4baafedb52d9066f3.jpg', '2023-07-28 02:58:38'),
(26, '19860604 201102 2 001', 'MERSI LAHILOTE, S.Pd', 'P', 'BOLAANG MONGONDOW UTARA', '06 JUNI 1986', 'GURU KELAS', '56c6778c7f7df28728341e985f8f04f1.png', '2023-07-28 03:00:03'),
(27, '19890729 201407 2 001', 'FATRI SAMIN, S.Pd', 'P', 'KOTAMOBAGU', '29 JULI 1989', 'GURU KELAS', '5ea620965773e3259fa2b60a19c96748.jpg', '2023-07-28 03:06:47'),
(28, '19710107 201407 2 001', 'WACHIDA DATUELA', 'P', 'BOLAANG MONGONDOW UTARA', '07 JANUARI 1971', 'GURU MATAPELAJARAN', 'd8f8250e9ff8499f093b1809ed771f7d.jpg', '2023-07-28 03:08:20'),
(29, '-', 'HADIJA VAN GOBEL', 'P', 'BOLAANG MONGONDOW UTARA', '-', 'GURU MATAPELAJARAN', '64488373364a779f7c1cfc76cb660355.jpg', '2023-07-28 03:09:59'),
(30, '-', 'MARDIA DESEI, S.Pd', 'P', 'BOLAANG MONGONDOW UTARA', '-', 'GURU MATAPELAJARAN', '2af8bf12db4d56634ca90d5f41bb5f0c.png', '2023-07-28 03:10:44'),
(31, '-', 'ELVIRA TALAA, S.Pd.I', 'P', 'BOLAANG MONGONDOW UTARA', '-', 'GURU MATAPELAJARAN', 'b890367ebf523f640c994fc09a533f0e.jpg', '2023-07-28 03:11:37'),
(32, '-', 'WIWIN LAHILA, S.Pd', 'P', 'BOLAANG MONGONDOW UTARA', '-', 'OPERATOR SEKOLAH', '5f0d3a8849f54178fde60faee7ad0f0d.jpg', '2023-07-28 03:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(9, 'Bu Cantik', 'mr.volume@yahoo.com', '91231231241414', 'hallo saya coba kontak...!!', '2019-12-27 20:06:10', 0),
(10, 'paul', 'a@mail.com', '232131', 'kobongan pak', '2020-02-20 14:43:31', 0),
(11, 'Jamdin Thalib', 'jamdinthalib@gmail.com', '57575', 'Perbaiki', '2023-07-03 08:22:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Kegiatan Sekolah', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31'),
(14, 'Umum', '2023-07-27 10:23:49'),
(15, 'Pendidikan', '2023-07-28 01:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas 1'),
(2, 'Kelas 2'),
(3, 'Kelas 3'),
(4, 'Kelas 4'),
(5, 'Kelas 5'),
(6, 'Kelas 6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(6, 'bagus', 'bagus251001@gmail.com', 'good job :v', '2019-12-27 19:10:07', '1', 28, 0),
(7, 'Bagus Erwanto', '', 'ok thx', '2019-12-27 19:10:49', '1', 28, 6),
(8, 'Bagus Erwanto', '', 'iyo<br />\r\n', '2020-02-20 14:43:58', '1', 28, 6),
(9, 'JAMDIN THALIB', 'jamdinthalib@gmail.com', 'Mantap cekkkk', '2023-07-03 08:21:34', '1', 28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_jenkel` enum('L','P') DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` enum('1','2') DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(5, 'Operator Sekolah', 'L', 'admin', 'e9c1eee32412ac23df4177b4d95d981f', 'sdnsatubusato1@gmail.com', '-', 1, '1', '2019-12-26 02:50:26', 'e252d1136f50cdfccd9c174c22205b6e.png'),
(10, 'Operator Sekolah', 'P', 'admin01', '827ccb0eea8a706c4c34a16891f84e7b', 'sdnsatubusato@gmail.com', '-', 1, '2', '2023-07-27 10:22:20', 'fb8658fd19c5b8de944412ca1a3904b4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'Kelulusan Kelas 6 Tahun 2023', 'Tahun Ajaran 2023, SDN 11 Pinogaluman Kabupten Bolaang Mngondow Utara Melulusakan Kelas 6 Sebanyak 15 Siwa dengan predikat Terbaik\r\n', '2023-07-29 04:56:44', 'Operator Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2019-12-26 03:01:56', '::1', 'Firefox'),
(2, '2019-12-26 04:40:16', '127.0.0.1', 'Firefox'),
(3, '2019-12-27 14:34:42', '::1', 'Firefox'),
(4, '2019-12-27 18:18:44', '::1', 'Chrome'),
(5, '2019-12-29 04:50:58', '::1', 'Chrome'),
(6, '2019-12-31 15:44:09', '::1', 'Firefox'),
(7, '2020-01-01 04:43:15', '::1', 'Firefox'),
(8, '2020-01-02 02:02:28', '::1', 'Firefox'),
(9, '2020-01-03 13:51:17', '::1', 'Firefox'),
(10, '2020-01-07 00:26:08', '::1', 'Firefox'),
(11, '2020-01-14 00:29:30', '::1', 'Firefox'),
(12, '2020-01-19 14:00:54', '::1', 'Firefox'),
(13, '2020-01-21 00:44:42', '::1', 'Firefox'),
(14, '2020-01-26 02:03:42', '::1', 'Firefox'),
(15, '2020-01-28 00:53:26', '::1', 'Firefox'),
(16, '2020-02-04 12:01:59', '::1', 'Firefox'),
(17, '2020-02-20 14:42:37', '127.0.0.1', 'Firefox'),
(18, '2020-03-03 00:43:35', '::1', 'Firefox'),
(19, '2023-06-27 00:52:06', '::1', 'Chrome'),
(20, '2023-06-27 00:58:17', '127.0.0.1', 'Firefox'),
(21, '2023-06-28 03:32:49', '::1', 'Chrome'),
(22, '2023-07-03 07:54:57', '::1', 'Chrome'),
(23, '2023-07-14 10:50:16', '::1', 'Chrome'),
(24, '2023-07-27 05:19:34', '::1', 'Chrome'),
(25, '2023-07-27 06:27:00', '103.145.179.2', 'Firefox'),
(26, '2023-07-27 06:33:01', '103.247.9.91', 'Chrome'),
(27, '2023-07-27 06:34:49', '36.95.240.249', 'Firefox'),
(28, '2023-07-27 07:19:16', '103.144.227.19', 'Firefox'),
(29, '2023-07-27 07:48:37', '2404:c0:4820::34f:96c8', 'Chrome'),
(30, '2023-07-27 08:05:56', '34.254.53.125', 'Firefox'),
(31, '2023-07-27 08:29:41', '114.125.219.178', 'Chrome'),
(32, '2023-07-27 08:35:27', '2001:448a:7083:2d69:4437:73fc:a86b:b66d', 'Firefox'),
(33, '2023-07-27 08:42:11', '36.85.217.141', 'Firefox'),
(34, '2023-07-27 09:10:31', '171.67.70.233', 'Mozilla'),
(35, '2023-07-27 09:36:47', '2404:c0:4850::a3:9c0', 'Chrome'),
(36, '2023-07-27 09:44:58', '173.252.83.120', 'Other'),
(37, '2023-07-27 09:45:03', '2a03:2880:21ff:74::face:b00c', 'Safari'),
(38, '2023-07-27 09:45:37', '2a03:2880:22ff:8::face:b00c', 'Other'),
(39, '2023-07-27 10:19:55', '2404:c0:4820::352:c6a9', 'Chrome'),
(40, '2023-07-27 10:39:35', '2001:bc8:1201:61f:569f:35ff:fe0f:ddec', 'Chrome'),
(41, '2023-07-27 10:49:02', '2a06:4880:7000::74', 'Mozilla'),
(42, '2023-07-27 10:52:13', '182.1.150.92', 'Chrome'),
(43, '2023-07-27 11:18:40', '2a00:8a60:1014:88::15', 'Mozilla'),
(44, '2023-07-27 11:49:10', '54.88.179.33', 'Chrome'),
(45, '2023-07-27 11:49:14', '35.171.144.152', 'Chrome'),
(46, '2023-07-27 12:39:45', '111.7.100.25', 'Chrome'),
(47, '2023-07-27 12:39:56', '111.7.100.26', 'Chrome'),
(48, '2023-07-27 14:56:04', '2404:c0:4850::a5:8aa', 'Chrome'),
(49, '2023-07-27 15:05:59', '114.125.173.63', 'Chrome'),
(50, '2023-07-27 17:15:45', '47.88.6.178', 'Chrome'),
(51, '2023-07-27 17:15:45', '47.88.94.28', 'Chrome'),
(52, '2023-07-27 17:15:45', '47.251.11.3', 'Chrome'),
(53, '2023-07-27 18:04:52', '65.154.226.171', 'Chrome'),
(54, '2023-07-27 18:58:12', '2602:80d:1000:b0cc:e:2:5:4', 'Mozilla'),
(55, '2023-07-27 19:01:59', '89.104.101.234', 'Chrome'),
(56, '2023-07-27 21:12:31', '114.125.173.183', 'Chrome'),
(57, '2023-07-27 21:58:00', '114.125.213.164', 'Firefox'),
(58, '2023-07-27 22:26:42', '114.125.197.212', 'Firefox'),
(59, '2023-07-27 23:03:19', '108.61.222.106', 'Chrome'),
(60, '2023-07-27 23:03:19', '208.115.230.121', 'Firefox'),
(61, '2023-07-27 23:50:32', '38.154.214.241', 'Other'),
(62, '2023-07-27 23:50:35', '45.139.66.79', 'Chrome'),
(63, '2023-07-27 23:50:38', '54.172.117.133', 'Chrome'),
(64, '2023-07-27 23:50:57', '2001:448a:7083:2d69:14e8:9489:3ee6:383d', 'Firefox'),
(65, '2023-07-28 00:08:57', '2001:470:1:332::177', 'Chrome'),
(66, '2023-07-28 00:32:15', '103.247.9.9', 'Other'),
(67, '2023-07-28 01:03:43', '2001:448a:7083:2d69:890:e9e:7011:226f', 'Firefox'),
(68, '2023-07-28 01:43:54', '8.36.86.54', 'Firefox'),
(69, '2023-07-28 01:45:46', '209.127.110.247', 'Other'),
(70, '2023-07-28 01:45:48', '209.127.108.201', 'Chrome'),
(71, '2023-07-28 01:45:50', '192.241.67.13', 'Chrome'),
(72, '2023-07-28 02:42:12', '2001:448a:7083:2d69:1d15:670b:32c:4b9a', 'Firefox'),
(73, '2023-07-28 03:23:11', '114.125.213.48', 'Other'),
(74, '2023-07-28 03:23:53', '114.125.189.85', 'Chrome'),
(75, '2023-07-28 03:37:13', '103.144.227.19', 'Firefox'),
(76, '2023-07-28 03:51:05', '36.85.217.141', 'Firefox'),
(77, '2023-07-28 04:33:50', '114.125.173.251', 'Chrome'),
(78, '2023-07-28 05:08:21', '2a00:8a60:1014:88::15', 'Mozilla'),
(79, '2023-07-28 05:36:56', '2001:448a:7083:2d69:78d2:2e23:c4:2eb8', 'Firefox'),
(80, '2023-07-28 06:22:26', '2001:448a:7083:2d69:dd4c:f634:32c3:232', 'Firefox'),
(81, '2023-07-28 06:57:44', '2001:bc8:1201:1d:ba2a:72ff:fee1:1d32', 'Chrome'),
(82, '2023-07-28 07:09:50', '185.248.85.57', 'Chrome'),
(83, '2023-07-28 08:47:58', '149.56.160.233', 'Mozilla'),
(84, '2023-07-28 08:48:39', '144.217.135.189', 'Mozilla'),
(85, '2023-07-28 09:22:26', '209.38.202.194', 'Chrome'),
(86, '2023-07-28 09:34:16', '114.125.173.5', 'Chrome'),
(87, '2023-07-28 09:44:13', '182.3.43.116', 'Chrome'),
(88, '2023-07-28 09:59:25', '182.1.149.147', 'Chrome'),
(89, '2023-07-28 10:35:55', '182.1.136.100', 'Chrome'),
(90, '2023-07-28 10:49:24', '36.85.223.221', 'Chrome'),
(91, '2023-07-28 12:15:30', '35.233.62.116', 'Other'),
(92, '2023-07-28 12:15:30', '34.77.127.183', 'Other'),
(93, '2023-07-28 13:03:11', '193.34.72.159', 'Chrome'),
(94, '2023-07-28 14:26:06', '114.125.216.4', 'Chrome'),
(95, '2023-07-28 14:56:55', '202.74.239.93', 'Chrome'),
(96, '2023-07-28 14:56:55', '2a03:b0c0:1:d0::5e2:6001', 'Safari'),
(97, '2023-07-28 14:57:00', '82.102.30.106', 'Safari'),
(98, '2023-07-28 14:57:00', '216.131.114.6', 'Firefox'),
(99, '2023-07-28 14:57:04', '185.206.225.172', 'Chrome'),
(100, '2023-07-28 14:59:59', '87.236.176.140', 'Mozilla'),
(101, '2023-07-28 15:16:11', '114.125.200.240', 'Firefox'),
(102, '2023-07-28 18:58:12', '176.53.221.51', 'Chrome'),
(103, '2023-07-28 19:07:44', '2620:96:e000:b0cc:e:2:1:9', 'Mozilla'),
(104, '2023-07-28 19:09:07', '87.236.176.155', 'Mozilla'),
(105, '2023-07-28 19:46:44', '178.255.148.168', 'Chrome'),
(106, '2023-07-28 19:46:45', '82.81.85.232', 'Chrome'),
(107, '2023-07-28 19:47:29', '167.88.7.162', 'Chrome'),
(108, '2023-07-28 19:48:13', '146.70.28.59', 'Chrome'),
(109, '2023-07-28 22:24:23', '183.129.153.157', 'Chrome'),
(110, '2023-07-29 00:28:45', '103.247.9.9', 'Other'),
(111, '2023-07-29 01:04:27', '15.204.182.106', 'Chrome'),
(112, '2023-07-29 01:18:04', '2a06:4880:d000::f5', 'Mozilla'),
(113, '2023-07-29 01:53:35', '2404:c0:4850::ab:2457', 'Firefox'),
(114, '2023-07-29 03:28:50', '2a03:94e0:ffff:185:181:60:0:189', 'Chrome'),
(115, '2023-07-29 03:54:29', '54.88.179.33', 'Chrome'),
(116, '2023-07-29 03:54:35', '35.171.144.152', 'Chrome'),
(117, '2023-07-29 04:49:57', '2404:c0:4920::35e:b8f0', 'Firefox'),
(118, '2023-07-29 05:16:27', '117.187.173.113', 'Other'),
(119, '2023-07-29 06:38:11', '223.111.175.4', 'Chrome'),
(120, '2023-07-29 07:22:57', '18.117.149.145', 'Other'),
(121, '2023-07-29 08:02:49', '86.143.224.242', 'Chrome'),
(122, '2023-07-29 08:02:50', '202.74.239.11', 'Chrome'),
(123, '2023-07-29 08:02:54', '2a03:b0c0:1:d0::5e2:6001', 'Chrome'),
(124, '2023-07-29 08:22:57', '2001:470:1:332::18', 'Chrome'),
(125, '2023-07-29 08:57:01', '91.192.242.238', 'Firefox'),
(126, '2023-07-29 08:57:19', '44.200.144.71', 'Chrome'),
(127, '2023-07-29 08:57:20', '35.153.176.211', 'Chrome'),
(128, '2023-07-29 09:28:23', '117.187.173.40', 'Other'),
(129, '2023-07-29 09:29:07', '106.75.84.209', 'Chrome'),
(130, '2023-07-29 10:39:54', '199.244.88.221', 'Chrome'),
(131, '2023-07-29 13:04:28', '209.127.111.180', 'Chrome'),
(132, '2023-07-29 13:04:30', '209.127.104.250', 'Chrome'),
(133, '2023-07-29 14:33:17', '114.125.175.250', 'Firefox');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(3, '515', 'KARIM DUENTE', 'L', 1, NULL),
(4, '516', 'IBRAHIM YANTA', 'L', 1, NULL),
(5, '517', 'MOHAMMAD ALL BLONGKOD', 'L', 1, NULL),
(7, '518', 'MOHAMMAD FADILA AMU', 'L', 1, NULL),
(8, '519', 'TAUFIK DUKO', 'L', 1, NULL),
(9, '520', 'ASSYIFA NADIA KARIM', 'P', 1, NULL),
(10, '521', 'NUR FAIRA ABDIKA', 'P', 1, NULL),
(11, '507', 'ARSIL MOHAMAD', 'L', 2, NULL),
(12, '508', 'MOH. AYUB UDENGO', 'L', 2, NULL),
(13, '509', 'RANGGA HATIBAE', 'L', 2, NULL),
(14, '510', 'AVRILIA ASIQA HUSUNA', 'P', 2, NULL),
(15, '511', 'CHINDY LATARA', 'P', 2, NULL),
(16, '512', 'SASKIA HATIBAE', 'P', 2, NULL),
(17, '513', 'SITI AVRILIANI BLONGKOD', 'P', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` date DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(32, 'SDN 1 Busato raih juara dua sekolah Adiwiyata di Bolmut', '<p>Dilansir dari laman&nbsp;TORANGPEBERITA.COM-&nbsp;SDN 1 Busato, Kecamatan Pinogaluman, meraih juara dua dalam penilaian sekolah Adiwiyata tahun 2021 tingkat Kabupaten Bolaang Mongondow Utara (Bolmut).&nbsp; Penghargaan ini diserahkan pada acara peringatan HUT DWP Ke-22 dan hari Ibu Ke-93 tingkat Kabupaten Bolmut tahun 2021 yang bertempat di gedung wanita pantai batu pinagut Kecamatan Kaidipang, Selasa 14 Desember 2021.</p>\r\n\r\n<p>Kepala Sekolah (Kepsek) SDN 1 Busato Muhrin Neu mengatakan penghargaan ini baginya sudah sangat memuaskan.</p>\r\n\r\n<p>&ldquo;Karena saya bertugas di sekolah ini baru pada bulan Juni. Tiga bulan kemudian ada pemberitahuan dari dinas pendidikan untuk mengikuti seleksi calon sekolah Adiwiyata,&rdquo; ujarnya.</p>\r\n\r\n<p>Ia mengatakan pihaknya sempat berpikir untuk menolak karena terlalu cepat. Sementara masih banyak yang harus dibenahi. Namun pihaknya tetap melakukan musyawarah dengan rekan guru.</p>\r\n\r\n<p>&ldquo;Sehingga mereka memotivasi untuk ikut dalam lomba tersebut. Selanjutnya saya langsung menghubungi ketua komite sekolah Mardan Umar yang juga anggota DPRD Bolmut. Beliau merespon dengan baik,&rdquo; ungkapnya.</p>\r\n\r\n<p>Sejak saat itu kami guru-guru dan dibantu oleh komite berpacu membenahi apa-apa yang masih kurang.</p>\r\n\r\n<p>&ldquo;Alhamdulilah perjuangan kami membuahkan hasil dengan meraih juara dua,&rdquo; kata kepsek.</p>\r\n\r\n<p>Dirinya mengatakan dalam menghadapi penilaian sekolah adiwiyata pihaknya tetap memberlakukan protokol kesehatan.</p>\r\n\r\n<p>&ldquo;Sudah jadi kewajiban untuk guru dan siswa bahkan orang tua siswa yang berkunjung ke sekolah wajib menggunakan masker dan itu berlaku sampai saat ini. Alhamdulillah juga seluruh guru sudah divaksin,&rdquo; jelasnya.</p>\r\n', '2023-07-27', 6, 'Prestasi', 6, 'ae88084862fa490ad58e33dfdad9290b.jpg', 10, 'Operator Sekolah', 0, 'sdn-1-busato-raih-juara-dua-sekolah-adiwiyata-di-bolmut'),
(33, 'Melihat persiapan SDN 1 Busato Bolmut menyambut pembelajaran tatap muka', '<p>Dilansir dari laman <em><strong>ZONAUTARA.COM-</strong></em>&nbsp;Jelang Pembelajaran Tatap Muka (PTM) terbatas sekolah yang ada di Bolaang Mongondow Utara (Bolmut) mulai mempersiapkan penerapan protokol kesehatan. Salah satunya SDN 1 Busato, Kecamatan Pinogaluman.</p>\r\n\r\n<p>Sekolah yang berbatasan dengan Kabupaten Gorontalo Utara, Provinsi Gorontalo bersiap menyambut siswa dengan protokol kesehatan.</p>\r\n\r\n<p>Kepala Sekolah (Kepsek) SDN 1 Busato Muhrin Neu mengatakan pihaknya mulai mempersiapkan pembelajaran tatap muka terbatas.</p>\r\n\r\n<p>&ldquo;Ada 66 siswa di SDN 1 Busato saat ini,&rdquo; ungkapnya.</p>\r\n\r\n<p>Sebelumnya Bupati Bolmut Depri Pontoh mengatakan dalam pelaksanaan pembelajaran tatap muka terbatas harus mengikuti persyaratan persyaratan dan ketentuan yang berlaku.</p>\r\n\r\n<p>Serta dalam pelaksanaan kegiatan belajar mengajar harus mematuhi protokol kesehatan Covid-19 yang sangat ketat dan disiplin selama jam pembelajaran dilaksanakan sampai dengan jam pembelajaran selesai.</p>\r\n\r\n<p><img alt=\"Zonautara\" src=\"https://zonautara.com/wp-content/uploads/2021/09/IMG-20210902-WA0021-400x225.jpg\" style=\"height:327px; width:582px\" /></p>\r\n\r\n<p>SDN 1 Busato, Kecamatan Pinogaluman Bolmut. (Dok SDN 1 Busato)</p>\r\n\r\n<p>&ldquo;Saya berharap kepada para guru untuk dapat mengawasi para murid pada waktu jam belajar disekolah dengan sangat ketat dan disiplin mematuhi protokol kesehatan,&rdquo; ujarnya.</p>\r\n\r\n<p>Selain itu Bupati telah meminta kepada dinas teknis untuk segera melakukan langkah-langkah termasuk memastikan kesiapan satuan pendidikan secara berjenjang dalam hal pelaksanan pembelajaran tatap muka disetiap jenjang pendidikan.</p>\r\n\r\n<p>Dirinya menyampaikan kepada dinas terkait agar membuat surat resmi kepada pimpinan daerah terkait pembelajaran tatap muka dengan memperhatikan protokol Covid-19.</p>\r\n\r\n<p>Sementara itu pihak Dinas Pendidikan dan Kebudayaan (Dikbud) Bolmut melalui Kabid Pendidkan Dasar dan Guru Tenaga Kependidikan&nbsp;Anton&nbsp;Masuara mengatakan pihaknya sudah mengajukan ke Bupati terkait Pembelajaran Tatap Muka (PTM) di sekolah.</p>\r\n\r\n<p>&ldquo;Sudah diajukan ke Bupati insya allah tanggal 6 September ini PTM dimulai,&rdquo; ungkapnya.</p>\r\n', '2023-07-27', 1, 'Kegiatan Sekolah', 3, '9d2330ba5d1c264980638463a6e1babf.jpg', 10, 'Operator Sekolah', 0, 'melihat-persiapan-sdn-1-busato-bolmut-menyambut-pembelajaran-tatap-muka'),
(35, 'Komisi I DPRD Bolmut Kunker ke SDN 1 Busato', '<p>Dilansir dari halaman BOLMONGRAYA.CO, BOLMUT&nbsp;&ndash; Komisi I DPRD Kabupaten Bolaang Mongondow Utara (Bolmut) Melakukan Kunjungan Kerja (Kunker) di SDN I Busato kecamatan Pinogaluman Rabu 29 Januari 2020.</p>\r\n\r\n<p>Kunjungan kerja tersebut langsung dipimpin oleh wakil ketua Djuldin Bolota, serta Anggota Komisi I DPRD Bolmut lainya.</p>\r\n\r\n<p>Wakil ketua komisi I DPRD Bolmut Djuldin Bolota menyampaikan, ada beberapa hal yang dipertanyakan mengenai pelayanan pendidikan yang ada di SDN 1 Busato.</p>\r\n\r\n<p>&ldquo;Sehubungan dengan pelayanan mengenai pendidikan yang ada di SDN I Busato, kami dari Komisi 1 DPRD Bolmut, langsung menanyakan pegawai tersertifikasi dan alur pelayanan realisasi sertifikasi,&rdquo; katanya.</p>\r\n\r\n<p>Djuldin Bolota berharap, pihak guru dapat lebih koperatif dalam berkoordinasi dengan DPRD Bolmut.</p>\r\n\r\n<p><img src=\"https://boganinews.com/wp-content/uploads/2020/01/cats-112.jpg\" style=\"height:330px; width:593px\" /></p>\r\n\r\n<p>&ldquo;Harapnya komisi satu sangat membutuhkan informasi dan jangan takut untuk menyampaikannya,&rdquo;tegas Djuldin.</p>\r\n\r\n<p>Senada juga di tambahkan Budi Setiawan Kohongia, harus lebih memperhatikan mutu pendidikan dan lebih memaksimalkan buku yang ada di perpustakaan, serta Anjab harus segera dimasukan dan memperhatikan Guru PTT.</p>\r\n\r\n<p>&ldquo;Buku yang ada harus benar-benar digunakan untuk memaksimalkan siswa untuk lebih giat membaca dan sekiranya tak ada pengurangan guru PTT agar tidak terjadi Pengangguran,&rdquo;tegas Budi.</p>\r\n\r\n<p>Disisi lain, Dalam Pertemuan tersebut salah satu anggota Komisi I Husen Yahya Soeit Pontoh mengungkapkan, dalam Pengelolaan dana Bos dan Penyalurannya lebih di maksimalkan.</p>\r\n\r\n<p>&ldquo;Dalam pengelolaan dana Bos serta Birokrasi keuangan harus lebih dimaksimalkan terutama yang ada di SDN I Busato,&rdquo; ujar Husen Yahya.</p>\r\n\r\n<p>Sementara itu, Kepala sekolah SDN I Busato Sutisno Mokoalung ketika diberikan kesempatan menyampaikan apa yang menjadi masukan serta yang&nbsp; diangkat oleh komisi I akan kami tindak lanjuti. Namun, ada beberapa masukan yang di tambahkan oleh Kepsek SDN I Busato yaitu pagar.</p>\r\n\r\n<p>&ldquo;Pagar kami disekolah Yang ada dibelakang sampai saat ini belum juga dibuat semoga dengan kedatangan Komisi I ini bisa terwujud Pagar kami,&rdquo; jelas Sutisno.</p>\r\n\r\n<p>Turut hadir dalam Kunjungan kerja Komisi I yakni Sekertaris Diknas Pendidikan, Kabid Diknas Pendidikan serta staf guru SDN I Busato.</p>\r\n', '2023-07-27', 1, 'Kegiatan Sekolah', 6, 'f9e40e5da5db4529459192c66d26e7a9.jpg', 10, 'Operator Sekolah', 0, 'komisi-i-dprd-bolmut-kunker-ke-sdn-1-busato'),
(36, 'Sekda Hadiri Puncak Acara Hari Kartini 2022 Sekaligus Pemberian Penghargaan Kepada Perempuan Berjasa', '<p>Dilansir dari halaman <strong>CARAPANDANG&nbsp;[BOLMUT]</strong> - Peringatan hari Kartini menjadi momentum kebangkitan jiwa wanita Indonesia. Moment ini juga hendaknya dijadikan semangat untuk terus bangkit menuju wanita Indonesia yang maju sejahtera dan hebat.<br />\r\n<br />\r\nHal tersebut disampaikan Sekda Kabupaten Bolaang Mongondow Utara, dr. Jusnan Mokoginta, MARS&nbsp; saat menghadiri puncak peringatan Hari Kartini ke 57 tahun dirangkaikan dengan pemberian penghargaan kepada perempuan berjasa dan berprestasi di ruang Mapalus Kantor Gubernur Sulawesi Utara, Kamis (21/04/2022).<br />\r\n<br />\r\nDikatakannya, sebuah bangsa akan maju tergantung pada kualitas perempuan. Di balik suksesnya sebuah keluarga akan ada perempuan yang kuat dan tabah memikul beban sebagai seorang istri, seorang ibu, seorang karyawati dan menjadi bagian dalam masyarakat yang baik dan berkepribadian.<br />\r\n<br />\r\nKegiatan ini dirangkaikan dengan Pemberian Penghargaan kepada perempuan berjasa dan berprestasi yang dilaksanakan secara Virtual di Istana Negara Jakarta&nbsp; dihadiri oleh Ibu Hj Iriana Joko Widodo dan Ibu Hj Wury Estu Ma&#39;ruf Amin selaku Dewan Pembina bersama dengan seluruh Anggota Organisasi Aksi Solidaritas Era&nbsp; Kabinet Indonesia Maju (OASE-KIM).<br />\r\n<br />\r\nUntuk Memperingati dan menghormati perjuangan RA. KARTINI Pemerintah Provinsi Sulawesi Utara&nbsp; menyerahkan Piagam Penghargaan&nbsp; kepada perempuan berjasa dan berprestasi&nbsp; di bidang&nbsp; pendidikan, lingkungan hidup, pertanian, kesehatan dan sosial budaya, di 14 Kabupaten/Kota se-Sulawesi Utara.<br />\r\n<br />\r\nPiagam Penghargaan diserahkan oleh Wakil Gubernur Sulawesi Utara Drs. Steven O.E Kandouw kepada Kartini Masa Kini dari Bolaang Mongondow Utara yang meraih penghargaan di Bidang Pendidikan, Hadija Van Gobel yang berprofesi sebagai Guru Honorer yang telah mendedikasikan dirinya di SDN 1&nbsp; Busato kec. Pinogaluman sejak tahun 2005 sampai sekarang.<br />\r\n<br />\r\nDalam Arahannya Wakil Gubernur mengucap syukur kepada Tuhan Yang Maha Kuasa bisa merayakan momen Hari Kartini dan merasa Bangga karena dari sepuluh perwakilan penerima penghargaan perempuan berprestasi Kab/kota seluruh Indonesia&nbsp; Pemprov Sulawesi Utara&nbsp; terpilih untuk mendapatkan Penghargaan di Bidang Pendidikan yang diraih oleh Adriani Bawues, seorang guru Honorer asal kota Bitung.<br />\r\n<br />\r\nHadir Pada Kegiatan ini Sekretaris Daerah Provinsi dan&nbsp; Ketua Dharma Wanita Persatuan Prov&nbsp; Sulut, Ketua Persit Kartika Candra Kirana, Bupati dan Wali Kota, Sekretaris Daerah se- Provinsi Sulawesi Utara.[</p>\r\n', '2023-07-28', 6, 'Prestasi', 3, '64a0542a43c9b85139aea936a490e23e.jpg', 10, 'Operator Sekolah', 0, 'sekda-hadiri-puncak-acara-hari-kartini-2022-sekaligus-pemberian-penghargaan-kepada-perempuan-berjasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
