-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2020 pada 01.51
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(4, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2019-2020', '2019-12-27 15:34:30', 'Berakhirnya semester ganjil tahun pelajaran 2019-2020, ditandai dengan pembagian laporan hasil belajar.', '2019-12-30', '2020-02-29', 'SDN 03 Macanan', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'Bagus Erwanto'),
(5, 'Pendaftaran Siswa dan siswi baru SDN 03 Macanan', '2019-12-27 15:39:39', 'Pendaftaran siswa - siswi baru akan dibuka bulan January - Maret 2020, Bagi para calon siswa dan siswa dapat mendaftarkan dirinya ke SDN 03 Macanan', '2020-01-01', '2020-03-01', 'SDN 03 Macanan', '07.30 - 12.00 WIB', 'See you', 'Bagus Erwanto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(13, 'Framework Codeigniter', 'Codeigniter merupakan sebuah framework untuk membuat sebuah aplikasi berbasis website dengan kemudahan yang mengandalkan fitur MVC', '2019-12-27 18:32:17', 'Saya', 0, '499abfc144e3ed2b9fe63f461d916f83.pptx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(9, '927482658274982', 'Bu Cantik', 'P', 'Mexico', '25 September 2000', 'Teknik Informatika', '9934efc0445c3fd33d4e87abff15a2ba.jpg', '2019-12-27 18:35:19'),
(10, '927482658274982', 'Bu Cantik', 'P', 'Mexico', '25 September 1993', 'Teknik Informatika', 'a584c38f11540f35bbac5c5d0ce20553.jpg', '2019-12-27 18:41:04'),
(11, '927482658274982', 'Bu Cantik', 'P', 'Padang', '25 September 1993', 'Teknik Komputer', '61de7e8809d094934200fa682b09b766.jpg', '2019-12-27 18:41:19'),
(12, '927482658274982', 'Bu Cantik', 'P', 'Mexico', '25 September 2000', 'Teknik Informatika', 'd7a3cfcbb0a3d3bf430182e144f6374e.jpg', '2019-12-27 18:41:38'),
(13, '927482658274982', 'Bu Cantik', 'P', 'Padang', '25 September 2000', 'Teknik Komputer', '2b89a3c476e392da84af4f6d4f9bdc99.jpg', '2019-12-27 18:41:55'),
(14, '927482658274982', 'Bu Cantik', 'P', 'Mexico', '25 September 2000', 'Teknik Informatika', '97fde38e5245bbd76c705570c148c172.jpg', '2019-12-27 18:42:16'),
(15, '927482658274982', 'Bu Cantik', 'P', 'Padang', '25 September 1993', 'Teknik Informatika', 'a8b02421149a0d441b7d98927db9da9b.jpg', '2019-12-27 18:42:30'),
(16, '927482658274982', 'Bu Cantik', 'P', 'Padang', '25 September 2000', 'Teknik Komputer', '63e541b7ca624956c503b4bd65cae014.jpg', '2019-12-27 18:42:44'),
(17, '927482658274982', 'Bu Cantik', 'P', 'Mexico', '25 September 1993', 'Teknik Komputer', '15f5f9d091a266d9d233c6aec958cf0a.jpg', '2019-12-27 18:43:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(9, 'Bu Cantik', 'mr.volume@yahoo.com', '91231231241414', 'hallo saya coba kontak...!!', '2019-12-27 20:06:10', 0),
(10, 'paul', 'a@mail.com', '232131', 'kobongan pak', '2020-02-20 14:43:31', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(6, 'bagus', 'bagus251001@gmail.com', 'good job :v', '2019-12-27 19:10:07', '1', 28, 0),
(7, 'Bagus Erwanto', '', 'ok thx', '2019-12-27 19:10:49', '1', 28, 6),
(8, 'Bagus Erwanto', '', 'iyo<br />\r\n', '2020-02-20 14:43:58', '1', 28, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(5, 'Bagus Erwanto', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'bagus251001@gmail.com', '0895392399306', 1, '1', '2019-12-26 02:50:26', '948baf1ca67d7bbc902e3113afa739ad.png'),
(8, 'baguss', 'L', 'bagusS', 'f0224a9ff017e484c8a7c9859678b044', 'ba@mail.com', '8912391', 1, '2', '2020-03-03 01:55:33', 'a792d2628445a6d7b450dfb8b5b06348.jpg'),
(9, 'rijlan', 'P', 'rijlan', '8d6348df60401c94a51aad99d02c0a80', 'a@mail.com', '213123', 1, '2', '2020-03-03 02:17:45', '1086b5db02bd7fa5392b2814d74889e5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(5, 'Penerimaan Siswa dan siswi baru SDN 03 Macanan', 'Pendaftaran siswa - siswi baru akan dibuka bulan January - Maret 2020, Bagi para calon siswa dan siswa dapat mendaftarkan dirinya ke SDN 03 Macanan', '2019-12-27 15:42:01', 'Bagus Erwanto'),
(6, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2019-2020', 'Libur semester ganjil tahun ajaran 2019-2020 dimulai dari tanggal 2 January 2020 sampai dengan tanggal 31 Maret 2020.', '2019-12-27 15:53:21', 'Bagus Erwanto'),
(7, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2019-2020', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2019-2020, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2020 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2019-12-27 18:25:51', 'Bagus Erwanto'),
(8, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2019-2020', 'Setelah libur semester ganjil tahun ajaran 2019-2020, proses belajar mengajar di semester genap tahun ajaran 2019-2020 mulai aktif kembali tanggal 30 Maret 2020.', '2019-12-27 18:27:15', 'Bagus Erwanto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
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
(18, '2020-03-03 00:43:35', '::1', 'Firefox');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(13, '123123', 'Bagus', 'L', 1, '37e26c8a4b915738e53e819a5d7681bc.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(26, 'Belum 2 Bulan Jokowi Rombak Perpres Kemendikbud', '<p>Belum sampai dua bulan lewat Peraturan Presiden (Perpres). Apa yang diubah Jokowi? Perpres pertama dikeluarkan pada 24 Oktober 2019 yaitu Perpres Nomor 72 Tahun 2019 tentang Kemendikbud Nah, pada 16 Desember 2019, Perpres itu diubah dengan Perpres Nomor 82 Tahun 2019 tentang Kemendikbud. Apa bedanya?<br />\r\n<br />\r\nSalah satunya adalah perampingan struktur organisasi. Bila dengan Perpres lama ada 16 pos di Kemendikbud, maka di Perpres baru hanya 9 pos. Berikut perbedaan sebelum dan sesudah sebagaimana dikutip detikcom, Kamis (26/12/2019):<br />\r\n&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Baca juga: </strong><a href=\"https://news.detik.com/read/2019/12/23/172648/4833599/10/mendikbud-nadiem-fokus-cek-gedung-sekolah-rentan-roboh-di-2020\">Mendikbud Nadiem Fokus Cek Gedung Sekolah Rentan Roboh di 2020</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n<strong>Perpres Nomor 72 Tahun 2019</strong><br />\r\nPasal 6<br />\r\nKementerian Pendidikan dan Kebudayaan terdiri atas:<br />\r\n<br />\r\na. Sekretariat Jenderal;<br />\r\nb. Direktorat Jenderal Guru dan Tenaga Kependidikan;<br />\r\nc. Direktorat Jenderal Pendidikan Anak Usia Dini dan Pendidikan Masyarakat;<br />\r\nd. Direktorat Jenderal Pendidikan Dasar dan Menengah;<br />\r\ne. Direktorat Jenderal Pembelajaran dan Kemahasiswaan;<br />\r\nf. Direktorat Jenderal Kelembagaan Ilmu Pengetahuan, Teknologi, dan Pendidikan Tinggi;<br />\r\ng. Direktorat Jenderal Sumber Daya Ilmu Pengetahuan, Teknologi Pendidikan Tinggi;<br />\r\nh. Direktorat Jenderal Kebudayaan;<br />\r\ni. Inspektorat Jenderal;<br />\r\nj. Badan Pengembangan Bahasa dan Perbukuan;<br />\r\nk. Badan Penelitian dan Pengembangan;<br />\r\nl. Staf Ahli Bidang Inovasi dan Daya Saing;<br />\r\nm. Staf Ahli Bidang Hubungan Pusat dan Daerah;<br />\r\nn. Staf Ahli Bidang Pembangunan Karakter;<br />\r\no. Staf Ahli Bidang Regulasi Pendidikan dan Kebudayaan; dan<br />\r\np. Staf Ahli Bidang Akademik.<br />\r\n&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Baca juga: </strong><a href=\"https://news.detik.com/read/2019/12/17/202937/4826704/10/kemendikbud-tegaskan-penggantian-format-ujian-nasional-bukan-coba-coba\">Kemendikbud Tegaskan Penggantian Format Ujian Nasional Bukan Coba-coba</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n<strong>Perpres Nomor 82 Tahun 2019</strong><br />\r\n<br />\r\nPasal 6<br />\r\nKementerian Pendidikan dan Kebudayaan terdiri atas:<br />\r\na. Sekretariat Jenderal;<br />\r\nb. Direktorat Jenderal Guru dan Tenaga Kependidikan;<br />\r\nc. Direktorat Jenderal Pendidikan Anak Usia Dini,<br />\r\nPendidikan Dasar, dan Pendidikan Menengah;<br />\r\nd. Direktorat Jenderal Pendidikan Vokasi;<br />\r\ne. Direktorat Jenderal Pendidikan Tinggi;<br />\r\nf. Direktorat Jenderal Kebudayaan;<br />\r\ng. Inspektorat Jenderal;<br />\r\nh. Badan Penelitian dan Pengembangan dan Perbukuan;<br />\r\ni. Badan Pengembangan dan Pembinaan Bahasa; dan<br />\r\nj. Staf Ahli Bidang Regulasi Pendidikan dan Kebudayaan.</p>\r\n', '2019-12-26', 2, 'Politik', 10, 'a0f2149771d5a290ea4e65e51bde4b8c.jpeg', 5, 'Bagus Erwanto', 0, 'belum-2-bulan-jokowi-rombak-perpres-kemendikbud'),
(28, 'KPK Berharap Polisi Ungkap Dalang di Balik Kasus Air Keras Novel Baswedan', '<p>KPK berharap polisi bisa mengembangkan penyelidikan kasus penyiraman air keras kepada penyidik Novel Baswedan, setelah mendapatkan dua tersangka operator teror tersebut.<a href=\"https://www.suara.com/tag/wakil-ketua-kpk-nurul-ghufron\">Wakil Ketua KPK Nurul Ghufron</a>&nbsp;mengatakan, pengembangan penyelidikan itu diharapkan bisa mengungkap aktor intelektual di balik penyerangan terhadap Novel tahun 2017.</p>\r\n\r\n<p>&quot;Saya yakin, itu nanti akan dikembangkan oleh Polri,&quot; kata Nurul Ghufro dihubungi&nbsp;<em>Suara.com,</em>&nbsp;Jumat (27/12/2019) malam.</p>\r\n\r\n<p>Nurul berharap, dua pelaku penyiraman air keras terhadap Novel dapat dihukum seberat-beratnya. Ia mengatakan, hukuman seperti itu ditujukan untuk memberikan harapan kepada publik bahwa hukum di Indonesia tegas.</p>\r\n\r\n<p>Sebelumnya diberitakan, Kapala Badan Reserse Kriminal Polri Komisaris Jenderal Listyo Sigit Prabowo mengatakan, 2 pelaku teror terhadap Novel sudah ditangkap. Keduanya berstatus sebagai polisi aktif.</p>\r\n\r\n<p>Namun, Listyo Sigit tak menyebutkan asal kesatuan mereka. Ia hanya mengatakan, RB dan RM ditangkap atas bantuan Korp Kepolisian Brimob.</p>\r\n\r\n<p>&quot;Jadi pelaku ada 2 orang inisial RM dan RB. Polri aktif,&quot; kata Listyo Sigit di Polda Metro Jaya.</p>\r\n\r\n<p>Sementara Karopenmas Divisi Humas Mabes Polri Brigjen Argo Yuwono mengatakan, kedua pelaku ditangkap di daerah Cimanggis, Depok, Jawa Barat.</p>\r\n\r\n<p>&quot;Mereka ditangkap Kamis (26/12) malam. Jumat pagi jadi tersangka. Tadi siang pemeriksaan sebagai tersangka dan ada pendampingan hukum dari Mabes Polri,&quot; kata Argo.</p>\r\n', '2019-12-27', 2, 'Politik', 26, '4ee4f6ab673c9c5716657ab5d83cab70.jpg', 5, 'Bagus Erwanto', 0, 'kpk-berharap-polisi-ungkap-dalang-di-balik-kasus-air-keras-novel-baswedan'),
(29, 'Messenger Paksa Pengguna Harus Memiliki Facebook untuk Membuat Akun', '<p>Pengguna Messenger sebelumnya bisa membuat akun hanya menggunakan nomor ponsel. Akan tetapi opsi ini tidak tersedia lagi dan pengguna baru Messenger sekarang diwajibkan untuk memiliki akun Facebook.</p>\r\n\r\n<p>Perubahan ini ditemukan oleh beberapa pengguna yang menuliskan keluhan di Reddit dan menyebut bahwa mereka tidak dapat masuk ke akun Messenger tanpa memiliki akun Facebook yang tertaut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Saya mencoba mengatur akun kedua di Messenger dan tidak ada lagi opsi untuk mendaftar tanpa Facebook. Sekarang saya harus membuat akun Facebook. Saya bertanya-tanya apakah ada orang lain yang juga mengalami ini,&quot; tulis seorang pengguna di Reddit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Facebook telah menuliskan kebijakan baru ini di Pusat Bantuan Facebook. Dalam kolom pertanyaan &quot;Bisakah saya mendaftar ke Messenger tanpa akun Facebook?&quot; perusahaan milik Mark Zuckerberg itu menjelaskan bahwa pengguna tidak bisa mendaftar ke Messenger dan harus membuat akun Facebook untuk menggunakanya.</p>\r\n\r\n<p>Dilansir dari Gizchina, perubahan ini menuai beberapa kritik dari para pengguna yang hanya ingin menggunakan Messenger untuk menghubungi teman dan keluarga akan tetapi tidak ingin memiliki akun Facebook.</p>\r\n\r\n<p>Kebijakan ini kemungkinan bisa membuat beberapa pengguna bermigrasi ke layanan lain atau terpaksa membuat akun Facebook untuk tujuan itu saja. Sebagian besar berharap kebijakan ini juga tidak akan diterapkan Facebook untuk pengguna WhatsApp dan Instagram.</p>\r\n', '2019-12-28', 1, 'Pendidikan', 3, '508c9549eca0fb64b3f4c4ba2bf7dda5.jpg', 5, 'Bagus Erwanto', 0, 'messenger-paksa-pengguna-harus-memiliki-facebook-untuk-membuat-akun'),
(30, 'Pasutri Sempat Terhimpit Longsor TPT di Palabuhanratu Sukabumi', '<p>&nbsp;Sebuah rumah di Kampung Gentong RT 06/06 Desa Cikadu, Kecamatan Palabuhanratu, Kabupaten Sukabumi ambruk usai tertimpa longsor dari Tembok Penahan Tanah (TPT). Peristiwa itu terjadi pada Rabu (25/12/2019) dini hari, sekitar pukul 01.30 WIB.</p>\r\n\r\n<p>BACA JUGA:&nbsp;<strong><a href=\"https://sukabumiupdate.com/detail/sukabumi/peristiwa/62167-Baru-Satu-Bulan-TPT-di-Ciemas-Sukabumi-Ambruk-Digerus-Hujan-DPU-Segera-Perbaiki\" target=\"_blank\">Baru Satu Bulan TPT di Ciemas Sukabumi Ambruk Digerus Hujan, DPU: Segera Perbaiki</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kapolsek Palabuhanratu, AKP Oki Kartikayana mengatakan, TPT yang ambrol tingginya kurang lebih tiga meter dan lebar dua meter. Saat kejadian, pemilik rumah Herdi (50 tahun) sedang menyalakan obat nyamuk di ruang tengah, sementara istrinya Eneh (45 tahun) tengah tertidur lelap di dalam kamar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Tiba-tiba tembok beton yang ada di belakang rumah Pak Herdi ambrol menimpa kamar yang didalamnya ada Ibu Eneh. Pak Herdi sempat tertimpa kayu atap sedangkan istrinya tertindih lemari,&quot; ujar Oki kepada&nbsp;<em><strong>sukabumiupdate.com</strong></em>, Rabu siang.</p>\r\n\r\n<p>BACA JUGA:&nbsp;<strong><a href=\"https://sukabumiupdate.com/detail/sukabumi/peristiwa/62008-TPT-Sungai-Cisuda-Ambruk-Kantor-DPD-PKS-Kota-Sukabumi-Terancam\" target=\"_blank\">TPT Sungai Cisuda Ambruk, Kantor DPD PKS Kota Sukabumi Terancam</a></strong></p>\r\n\r\n<p>Lanjut Oki, Herdi yang berhasil menyelamatkan diri dari himpitan kayu kemudian meminta pertolongan kepada warga setempat, untuk mengevakuasi istrinya yang masih terhimpit lemari.</p>\r\n\r\n<p>&quot;Alhamdulillah berhasil diselamatkan dan dievakuasi oleh warga setempat. Tidak ada korban jiwa, namun rumah rusak berat. Kerugian material masih dihitung,&quot; lanjutnya.</p>\r\n\r\n<p>BACA JUGA:&nbsp;<strong><a href=\"https://sukabumiupdate.com/detail/sukabumi/peristiwa/62001-Penuturan-Warga-Saat-TPT-di-Sekarwangi-Cibadak-Diterjang-Longsor\" target=\"_blank\">Penuturan Warga Saat TPT di Sekarwangi Cibadak Diterjang Longsor</a></strong></p>\r\n\r\n<p>Hingga kini, masih kata Oki, petugas kepolisian bersama unsur terkait lainnya dibantu warga setempat masih membersihkan bangunan rumah yang tertimpa material longsor dan menyelamatkan barang-barang yang masih bisa diselamatkan.</p>\r\n\r\n<p>&quot;Anggota di lapangan masih melakukan koordinasi dengan unsur lainnya untuk penanganan korban selanjutnya. Sementara korban dievakuasi ke rumah kerabat terdekat,&quot; pungkas Oki</p>\r\n', '2019-12-28', 3, 'Sains', 11, '7c28cfb3ebe5a9221589602429263899.jpg', 5, 'Bagus Erwanto', 0, 'pasutri-sempat-terhimpit-longsor-tpt-di-palabuhanratu-sukabumi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
