-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 21, 2018 at 04:43 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akbid`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspek_polling`
--

CREATE TABLE `aspek_polling` (
  `id_aspek_polling` int(11) NOT NULL,
  `id_polling` int(11) NOT NULL,
  `nama_aspek` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspek_polling`
--

INSERT INTO `aspek_polling` (`id_aspek_polling`, `id_polling`, `nama_aspek`) VALUES
(1, 4, 'Aspek Kepuasan Mahasiswa 1'),
(2, 4, 'Aspek Kepuasan Mahasiswa 2'),
(9, 3, 'Fasilitas Pengajaran di luar kelas'),
(10, 4, 'Kebersihan Toilet ');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nomor_induk` varchar(45) DEFAULT NULL,
  `nama_lengkap` varchar(45) DEFAULT NULL,
  `perguruan_tinggi` varchar(150) DEFAULT NULL,
  `gelar` varchar(45) DEFAULT NULL,
  `jabatan_fungsional` varchar(45) DEFAULT NULL,
  `program_studi` varchar(100) DEFAULT NULL,
  `alamat` text,
  `tanggal_lahir` varchar(45) DEFAULT NULL,
  `nomor_tlp` varchar(20) DEFAULT NULL,
  `alamat_email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nomor_induk`, `nama_lengkap`, `perguruan_tinggi`, `gelar`, `jabatan_fungsional`, `program_studi`, `alamat`, `tanggal_lahir`, `nomor_tlp`, `alamat_email`) VALUES
(5, '19671227 1989012002', 'ENONG MARDIANA', NULL, 'SST., M.Keb', 'TIDAK ADA', NULL, 'JL. JATIWANGI 8 NO. 54 RT. 002 RW. 014 ANTAPA', '27 DESEMBER 1967', '081573235624', 'enong.mardiana@yahoo.co.id'),
(6, '19730409 1993022002', 'LESTARI PUJIRAHAYU', NULL, 'SST', 'TIDAK ADA', NULL, 'KOMP. BUMI HARAPAN BLOK AA 12 NO. 10 RT. 001 ', '9 APRIL 1973', '085314483773', 'lestari.pujirahayu73@gmail.com'),
(7, '04418801011963', 'NENENG SUPRIHATIN', NULL, 'S.KM., MN', 'TIDAK ADA', NULL, 'GG. SUKALUYU SELATAN I NO. 2 RT. 005 RW. 009 ', '1 JANUARI 1963', '081224792493', 'nsuprihatin@yahoo.com'),
(8, '04418830031975', 'MULYADI', NULL, 'M.Pd', 'TIDAK ADA', NULL, 'JL. BUKIT INDAH 2 NO. 34 KEL. CIHANJUANG KEC.', '30 MARET 1975', NULL, 'mulyadiaf74@gmail.com'),
(9, '04418805081976', 'SITI HAYATI', NULL, 'S.Pd', 'TIDAK ADA', NULL, 'JL. BUKIT INDAH 2 NO. 34 KEL. CIHANJUANG KEC.', '5 AGUSTUS 1976', '085722364088', 'nengsitihayati76@gmail.com'),
(10, '140103963', 'TITI MURDIYATI', NULL, 'AMK., SST., SH., MM.Kes', 'TIDAK ADA', NULL, 'JL. JATIHANDAP GG. III NO. 158 CICAHEUM KOTA ', '3 MEI 1954', '0811235019', 'jiepujikriswandi@gmail.com'),
(11, '04418803061993', 'AKBAR RIYADI', NULL, 'S.Pd', 'TIDAK ADA', NULL, 'SARIJADI BLOK 2 NO. 82 RT. 007 RW. 002 KEL. S', '3 JUNI 1993', '087720632155', 'akhbarriyadi@gmail.com'),
(12, '19750315 1996031001', 'OMAN HENDI', NULL, 'S.Kep., Ners', 'TIDAK ADA', NULL, 'AGUNG LESTARI RESIDENCE BLOK A1 DESA TANIMULY', '15 MARET 1975', '0895321448344 / 0852', 'oheeendi@gmail.com'),
(13, '4018086901', 'AGUS SOMAD SAPUTRA', NULL, 'S.KM., M.Kes', 'LEKTOR', NULL, 'JL. SUKALAKSANA 1 NO. 18 KEL. CICAHEUM KEC. K', '18 AGUSTUS 1969', '081221801266', 'm_nauval2011@yahoo.com'),
(14, '19690516 1995032002', 'MULYATI', NULL, 'Dr. S.Kep., Ners., M.Kes', 'TIDAK ADA', NULL, 'PURI CIPAGERAN INDAH 2 BLOK C17 NO. 4 DESA TA', '16 MEI 1969', '081321447555', 'mulyatimulyati55@yahoo.com'),
(15, '19660124 1992031001', 'RIADI DARWIS', NULL, 'Dr., M.Pd', 'TIDAK ADA', NULL, 'JL. GADING TIMUR II NO. 9 BLOK H1 DESA CINGCI', '24 JANUARI 1966', '081320517415', 'riadidarwis@gmail.com'),
(16, '0421126203', 'ESTI HITATAMI', NULL, 'Ir., AMK., SST., M.Keb', 'TENAGA PENGAJAR', NULL, 'JL. SENTOSA 86A KPAD GEGERKALONG KOTA BANDUNG', '21 DESEMBER 1962 ', '08122316446', 'estihitatami@gmail.com'),
(17, '19671021 2000032001', 'HENTI SUGESTI', NULL, 'AM.Keb., S.Kep., M.Kep', 'TIDAK ADA', NULL, 'JL. SINDANG BARANG 11 ANTAPANI KOTA BANDUNG', '21 OKTOBER 1967', '0811225239', 'love_ntie@yahoo.com'),
(18, '04418820061987', 'AJENG WINDYASTUTI ARDINI', NULL, 'SST., MM.Kes', 'TIDAK ADA', NULL, 'JL. CISARANTEN KULON 2 NO. 21 RT. 007 RW. 005', '20 JUNI 1987', '082225330065', 'ajeng.ardieni.hanafie@gmail.com'),
(19, '9904212325', 'IIS WAHYUNI', NULL, 'SST., MM', 'DOSEN TIDAK TETAP', NULL, 'KOMPLEK PERMATA BUAH BATU BLOK B NO. 48 RT. 0', '19 NOVEMBER 1985', '087722056589', 'iisw9197@gmail.com'),
(20, '0425077004', 'YULIUSTINA', NULL, 'Ir., AM.Keb', 'ASISTEN AHLI', NULL, 'JL. SUKAMAJU NO. 707/181 RT. 003 RW. 006 KEL.', '25 JULI 1970', '081321777899', 'tina.yuliustina@gmail.com'),
(21, '0410066703', 'YULIATI', NULL, 'AM.Keb., S.Kep., MM.Kes', 'ASISTEN AHLI', NULL, 'JL. SUKAMAJU NO. 707/181 RT. 003 RW. 006 KEL.', '10 JUNI 1967', '081931367736', 'yuli.sakni@gmail.com'),
(22, '0411128001', 'DESRA AMELIA', NULL, 'AM.Keb., S.Sos', 'ASISTEN AHLI', NULL, 'JL. TURANGGA TIMUR NO. 28/115 KOTA BANDUNG', '11 DESEMBER 1980', '08121404685 / 081910', 'desra.amelia@gmail.com'),
(23, '04418810011988', 'ANEU CHERAWATY', NULL, 'SST., MH.Kes', 'TIDAK ADA', NULL, 'JL. KRESNA NO. 61 RT. 001 RW. 004 KEL. ARJUNA', '10 JANUARI 1988', '081214064455', 'bundayasmin1@gmail.com'),
(24, '9904212328', 'TRI APRIYANTI SUHANDI', NULL, 'SST', 'DOSEN TIDAK TETAP', NULL, 'JL. PARAKAN MUNCANG NO. 192 RT. 001 RW. 010 D', '3 APRIL 1991', '085659204217', 'triapriyantii39@yahoo.com'),
(25, '0402153001', 'DADANG KUSNADI', NULL, 'Dr., MARS', 'LEKTOR', NULL, 'JL. MERKURI SELATAN XV NO. 8 MARGAHAYU RAYA K', '2 JANUARI 1953', '0818223928', 'dadangkusnadi@ymail.com'),
(26, '0415116903', 'SUNDARI', NULL, 'SST., MM', 'TENAGA PENGAJAR', NULL, 'PURI CIPAGERAN INDAH 2 BLOK D8 NO. 12 DESA TA', '15 NOVEMBER 1969', '087722206570', 'sundari_wijaya55@yahoo.com'),
(27, '04418816101987', 'IRMA ROSLIANI DEWI', NULL, 'SST., MM', 'TIDAK ADA', NULL, 'KP. WAAS RT. 004 RW. 001 DESA SUKASARI KEC. P', '16 OKTOBER 1987', '087722004251 / 08139', 'almaargani@gmail.com'),
(28, '9904212058', 'DILLA SILVIANA PUSPITA NENG TIYAS', NULL, 'SST', 'DOSEN TIDAK TETAP', NULL, 'JL. JAYAGIRI KP. BEWAK NO. 106 RT. 003 RW. 00', '29 JUNI 1991', '081355000712', 'aldilla.silvia@yahoo.com'),
(29, '04418806111993', 'EKA NOPRIYANTI', NULL, 'S.Pd', 'TIDAK ADA', NULL, 'JL. GEGERKALONG LEBAK I NO. 3 RT. 001 RW. 008', '6 NOVEMBER 1993', '087722754305', 'ekanopriyanti@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `item_polling`
--

CREATE TABLE `item_polling` (
  `id_item_polling` int(11) NOT NULL,
  `id_aspek_polling` int(11) NOT NULL,
  `nama_item` text NOT NULL,
  `total_responden` int(11) NOT NULL,
  `jawaban_1` int(11) NOT NULL,
  `jawaban_2` int(11) NOT NULL,
  `jawaban_3` int(11) NOT NULL,
  `jawaban_4` int(11) NOT NULL,
  `jawaban_5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_polling`
--

INSERT INTO `item_polling` (`id_item_polling`, `id_aspek_polling`, `nama_item`, `total_responden`, `jawaban_1`, `jawaban_2`, `jawaban_3`, `jawaban_4`, `jawaban_5`) VALUES
(1, 1, 'Kebersihan Laboratorium komputer', 80, 20, 20, 10, 20, 10),
(2, 1, 'Pelayanan tangga darurat di kampus', 50, 10, 10, 10, 5, 15),
(4, 9, 'Belajar di luar lingkungan kampus', 50, 1, 20, 10, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `kepegawaian`
--

CREATE TABLE `kepegawaian` (
  `id_kepegawaian` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(45) DEFAULT NULL,
  `agama` varchar(45) DEFAULT NULL,
  `tanggal_lahir` varchar(45) DEFAULT NULL,
  `status_pegawai` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `nomor_tlp` varchar(45) DEFAULT NULL,
  `jabatan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kepegawaian`
--

INSERT INTO `kepegawaian` (`id_kepegawaian`, `nip`, `nama_lengkap`, `jenis_kelamin`, `agama`, `tanggal_lahir`, `status_pegawai`, `alamat`, `nomor_tlp`, `jabatan`) VALUES
(1, '05011989122010', 'NURMALA', 'Perempuan', 'ISLAM', '5 JANUARI 1989', 'TETAP', 'GG. CIBARENGKOK BLK NO. 5 RT. 001 RW. 005 KEL', '081802146493', 'BAGIAN ADMINISTRASI PENDIDIKAN'),
(2, '29061991082013', 'DILLA SILVIANA PUSPITA NENG TIYAS', 'Perempuan', 'ISLAM', '29 JUNI 1991', 'TETAP', 'JL. JAYAGIRI KP. BEWAK NO. 106 RT. 003 RW. 00', '081355000712', 'BAGIAN KEMAHASISWAAN & ALUMNI'),
(3, '11121980052006', 'DESRA AMELIA', 'Perempuan', 'ISLAM', '11 DESEMBER 1980', 'TETAP', 'JL. TURANGGA TIMUR NO. 28/115 KOTA BANDUNG', '08121404685 / 081910035933', 'UPT. PERPUSTAKAAN'),
(4, '19111985122008', 'IIS WAHYUNI', 'Perempuan', 'ISLAM', '19 NOVEMBER 1985', 'TETAP', 'KOMPLEK PERMATA BUAH BATU BLOK B NO. 48 RT. 0', '087722056589', 'BAGIAN KURIKULUM'),
(5, '03041991012015', 'TRI APRIYANTI SUHANDI', 'Perempuan', 'ISLAM', '3 APRIL 1991', 'TETAP', 'JL. PARAKAN MUNCANG NO. 192 RT. 001 RW. 010 D', '085659204217', 'UPT. LABORATORIUM'),
(6, '25071970052006', 'YULIUSTINA', 'Perempuan', 'ISLAM', '25 JULI 1970', 'TETAP', 'JL. SUKAMAJU NO. 707/181 RT. 003 RW. 006 KEL.', '081321777899', 'BAGIAN KEUANGAN'),
(7, '10061967052006', 'YULIATI', 'Perempuan', 'ISLAM', '10 JUNI 1967', 'TETAP', 'JL. SUKAMAJU NO. 707/181 RT. 003 RW. 006 KEL.', '081931367736', 'DIREKTUR'),
(8, '27091985112015', 'M. ANDRIANA GAFFAR', 'Laki-laki', 'ISLAM', '27 SEPTEMBER 1985', 'DOSEN DENGAN TUGAS TAMBAHAN', 'JL. URANUS I BLOK C III NO. 40 RT. 008 RW. 00', '085221381422', 'Ka. UPPM (Unit Penelitian & Pengabdian Masyar'),
(9, '08101982112017', 'HAMDANI', 'Laki-laki', 'ISLAM', '8 AGUSTUS 1982', 'DOSEN DENGAN TUGAS TAMBAHAN', 'KOMP. VICTORY LAND BLOK H3 KOTA BANDUNG', '081320120368', 'Ka. UPMI (Unit Penjamin Mutu Internal)'),
(10, '06111989112017', 'NURISKA NOVIANTORO', 'Laki-laki', 'ISLAM', '6 NOVEMBER 1989', 'DOSEN DENGAN TUGAS TAMBAHAN', 'PURI CIPAGERAN INDAH 1 BLOK A NO. 104 DESA TA', '081320120368', 'Wakil UPMI (Unit Penjamin Mutu Internal)'),
(11, '12011985112017', 'HAMDAN HIDAYAT', 'Laki-laki', 'ISLAM', '12 JANUARI 1985', 'DOSEN DENGAN TUGAS TAMBAHAN', 'JL. JATIHANDAP TIMUR NO. 328 RT. 002 RW.007 J', '081322059686', 'SUPERVISOR SIAKAD'),
(12, '13091967022008', 'HERLI SOMANTRI PURAWINATA', 'Laki-laki', 'ISLAM', '13 SEPTEMBER 1967', 'TETAP', 'JL. SUKAJAYA RT. 004 RW. 004 KEL. CIBABAT KEC', '082126414444', 'DRIVER'),
(13, '02101987082007', 'DINDIN PERMANA', 'Laki-laki', 'ISLAM', '2 OKTOBER 1987', 'TETAP', 'JL. ARCAMANIK SINDANGLAYA NO. 56 RT. 004 RW. ', '089675525492', 'CLEANING SERVICE'),
(14, '21121962112017', 'ESTI HITATAMI', 'Perempuan', 'ISLAM', '21 DESEMBER 1962', 'DOSEN DENGAN TUGAS TAMBAHAN', 'JL. SENTOSA 86A KPAD GEGERKALONG KOTA BANDUNG', '08122316446', 'PEMBANTU DIREKTUR I (PUDIR I) BAGIAN AKADEMIK'),
(15, '15111969112017', 'SUNDARI', 'Perempuan', 'ISLAM', '15 NOVEMBER 1969', 'DOSEN DENGAN TUGAS TAMBAHAN', 'PURI CIPAGERAN INDAH 2 BLOK D8 NO. 12 DESA TA', '087722206570', 'PEMBANTU DIREKTUR III (PUDIR III) BAGIAN KEMA');

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `kurikulum` varchar(50) NOT NULL,
  `angkatan` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id_kurikulum`, `kurikulum`, `angkatan`, `semester`) VALUES
(3, '2017 / 2018	', '2017', 1),
(4, '2017 / 2018', '2017', 2),
(5, '2018 / 2019', '2017', 3),
(6, '2016 / 2017', '2016', 1),
(7, '2016 / 2017', '2016', 2),
(8, '2017 / 2018', '2016', 3),
(9, '2017 / 2018', '2016', 4),
(10, '2018 / 2019', '2016', 5),
(11, '2015 / 2016', '2015', 1),
(12, '2015 / 2016', '2015', 2),
(13, '2016 / 2017', '2015', 3),
(14, '2016 / 2017', '2015', 4),
(15, '2017 / 2018', '2015', 5),
(16, '2017 / 2018', '2015', 6),
(17, '2014 / 2015', '2014', 1),
(18, '2014 / 2015', '2014', 2),
(19, '2015 / 2016', '2014', 3),
(20, '2015 / 2016', '2014', 4),
(21, '2016 / 2017', '2014', 5),
(22, '2016 / 2017', '2014', 6),
(23, '2013 / 2014', '2013', 1),
(24, '2013 / 2014', '2013', 2),
(25, '2014 / 2015', '2013', 3),
(26, '2014 / 2015', '2013', 4),
(27, '2015 / 2016', '2013', 5),
(28, '2015 / 2016', '2013', 6),
(29, '2012 / 2013', '2012', 1),
(30, '2012 / 2013', '2012', 2),
(31, '2013 / 2014', '2012', 3),
(32, '2013 / 2014', '2012', 4),
(33, '2014 / 2015', '2012', 5),
(34, '2014 / 2015', '2012', 6),
(35, '2011 / 2012', '2011', 1),
(36, '2011 / 2012', '2011', 2),
(37, '2012 / 2013', '2011', 3),
(38, '2012 / 2013', '2011', 4),
(39, '2013 / 2014', '2011', 5),
(40, '2013 / 2014', '2011', 6),
(41, '2010 / 2011', '2010', 1),
(42, '2010 / 2011', '2010', 2),
(43, '2011 / 2012', '2010', 3),
(44, '2011 / 2012', '2010', 4),
(45, '2012 / 2013', '2010', 5),
(46, '2012 / 2013', '2010', 6),
(47, '2018 / 2019', '2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum_matakuliah`
--

CREATE TABLE `kurikulum_matakuliah` (
  `id_kurikulum_matakuliah` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `kode_matakuliah` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulum_matakuliah`
--

INSERT INTO `kurikulum_matakuliah` (`id_kurikulum_matakuliah`, `id_kurikulum`, `kode_matakuliah`) VALUES
(19, 3, 'BD102C'),
(20, 3, 'BD105B'),
(21, 3, 'BD201B'),
(22, 3, 'BD203B'),
(23, 3, 'BD208B'),
(24, 3, 'BD401'),
(25, 3, 'BD402B'),
(26, 4, 'BD103B'),
(27, 4, 'BD206'),
(28, 4, 'BD208C'),
(29, 4, 'BD211'),
(30, 4, 'BD212'),
(31, 4, 'BD213A'),
(32, 4, 'BD309'),
(33, 4, 'BD312'),
(34, 4, 'BD403A'),
(35, 6, 'BD202'),
(36, 6, 'BD401'),
(37, 6, 'BD402B'),
(38, 6, 'BD102C'),
(39, 6, 'BD105B'),
(40, 6, 'BD203B'),
(41, 6, 'BD208B'),
(42, 7, 'BD103B'),
(43, 7, 'BD104'),
(45, 7, 'BD403C'),
(46, 7, 'BD208C'),
(47, 7, 'BD307B'),
(48, 7, 'BD502C'),
(49, 7, 'BD501B'),
(50, 7, 'BD312'),
(51, 8, 'BD301B'),
(52, 8, 'BD302B'),
(53, 8, 'BD303B'),
(54, 8, 'BD211'),
(55, 8, 'BD309'),
(56, 8, 'BD314'),
(57, 9, 'BD306B'),
(58, 9, 'BD305C'),
(59, 9, 'BD206'),
(60, 9, 'BD212'),
(61, 9, 'BD404'),
(62, 9, 'BD319'),
(63, 10, 'BD313'),
(64, 10, 'BD405B'),
(65, 10, 'BD504B'),
(66, 10, 'BD320'),
(67, 10, 'BD319B'),
(68, 11, 'BD102C'),
(69, 11, 'BD105B'),
(70, 11, 'BD203B'),
(71, 11, 'BD208B'),
(72, 11, 'BD401'),
(73, 11, 'BD402B'),
(74, 11, 'BD201B'),
(75, 12, 'BD403C'),
(76, 12, 'BD208C'),
(77, 12, 'BD307B'),
(78, 12, 'BD502C'),
(79, 12, 'BD501B'),
(80, 12, 'BD312'),
(81, 12, 'BD209B'),
(82, 13, 'BD301B'),
(83, 13, 'BD302B'),
(84, 13, 'BD303B'),
(85, 13, 'BD211'),
(86, 13, 'BD309'),
(87, 13, 'BD314'),
(88, 14, 'BD306B'),
(89, 14, 'BD305B'),
(90, 14, 'BD405B'),
(91, 14, 'BD206'),
(92, 14, 'BD212'),
(93, 14, 'BD315'),
(94, 15, 'BD313'),
(95, 15, 'BD504B'),
(96, 15, 'BD216C'),
(97, 15, 'BD504A'),
(98, 15, 'BD215'),
(99, 15, 'BD404B'),
(100, 15, 'BD316A'),
(101, 16, 'BD316B'),
(102, 16, 'BD406'),
(103, 5, 'BD502A'),
(104, 5, 'BD301'),
(105, 5, 'BD302'),
(106, 5, 'BD303B'),
(107, 5, 'BD306'),
(108, 5, 'BD318'),
(109, 17, 'BD102A'),
(110, 17, 'BD103'),
(111, 17, 'BD104'),
(112, 17, 'BD105'),
(113, 17, 'BD201'),
(114, 17, 'BD202'),
(115, 17, 'BD401'),
(116, 17, 'BD207'),
(117, 17, 'BD208'),
(118, 17, 'BD203'),
(119, 18, 'BD213A'),
(120, 18, 'BD204'),
(121, 18, 'BD205'),
(122, 18, 'BD209'),
(123, 18, 'BD216A'),
(124, 18, 'BD301'),
(125, 18, 'BD307'),
(126, 18, 'BD311'),
(127, 18, 'BD403A'),
(128, 18, 'BD502A'),
(129, 18, 'BD502B'),
(130, 18, 'BD503'),
(131, 19, 'BD206'),
(132, 19, 'BD211'),
(133, 19, 'BD212'),
(134, 19, 'BD216B'),
(135, 19, 'BD302B'),
(136, 19, 'BD303B'),
(137, 19, 'BD306B'),
(138, 19, 'BD309'),
(139, 19, 'BD402B'),
(140, 20, 'BD305B'),
(141, 20, 'BD308'),
(142, 20, 'BD313'),
(143, 20, 'BD314'),
(144, 20, 'BD405B'),
(145, 21, 'BD214A'),
(146, 21, 'BD315'),
(147, 21, 'BD404B'),
(148, 21, 'BD501'),
(149, 21, 'BD504A'),
(150, 21, 'BD504B'),
(151, 22, 'BD214B'),
(152, 22, 'BD317'),
(153, 22, 'BD406B'),
(154, 23, 'BD102A'),
(155, 23, 'BD103'),
(156, 23, 'BD104'),
(157, 23, 'BD105'),
(158, 23, 'BD201'),
(159, 23, 'BD202'),
(160, 23, 'BD203'),
(161, 23, 'BD207'),
(162, 23, 'BD208'),
(163, 23, 'BD401'),
(164, 24, 'BD204'),
(166, 24, 'BD209'),
(167, 24, 'BD213A'),
(168, 24, 'BD216A'),
(169, 24, 'BD301'),
(170, 24, 'BD307'),
(172, 24, 'BD311'),
(173, 24, 'BD403A'),
(174, 24, 'BD502A'),
(175, 24, 'BD502B'),
(176, 24, 'BD503'),
(177, 24, 'BD205'),
(178, 25, 'BD206'),
(179, 25, 'BD212'),
(180, 25, 'BD210'),
(181, 25, 'BD211'),
(182, 25, 'BD302'),
(183, 25, 'BD303'),
(184, 25, 'BD306'),
(185, 25, 'BD309'),
(186, 25, 'BD312'),
(187, 25, 'BD402'),
(190, 26, 'BD304A'),
(191, 26, 'BD305'),
(192, 26, 'BD308'),
(193, 26, 'BD310A'),
(194, 26, 'BD501'),
(195, 26, 'BD504A'),
(196, 26, 'BD504B'),
(197, 27, 'BD214A'),
(198, 27, 'BD215'),
(199, 27, 'BD304B'),
(200, 27, 'BD310B'),
(201, 27, 'BD308'),
(202, 27, 'BD405'),
(203, 28, 'BD213B'),
(204, 28, 'BD214B'),
(205, 28, 'BD310C'),
(206, 28, 'BD406'),
(207, 29, 'BD102A'),
(208, 29, 'BD103'),
(209, 29, 'BD104'),
(210, 29, 'BD105'),
(211, 29, 'BD201'),
(212, 29, 'BD202'),
(213, 29, 'BD203'),
(214, 29, 'BD207'),
(215, 29, 'BD208'),
(216, 29, 'BD401'),
(217, 30, 'BD213A'),
(218, 30, 'BD216A'),
(219, 30, 'BD204'),
(220, 30, 'BD205'),
(221, 30, 'BD209'),
(222, 30, 'BD301'),
(223, 30, 'BD307'),
(224, 30, 'BD311'),
(225, 30, 'BD403A'),
(226, 30, 'BD502A'),
(227, 30, 'BD502B'),
(228, 30, 'BD503'),
(229, 31, 'BD206'),
(230, 31, 'BD210'),
(231, 31, 'BD211'),
(232, 31, 'BD212'),
(233, 31, 'BD302'),
(234, 31, 'BD303'),
(235, 31, 'BD306'),
(236, 31, 'BD309'),
(237, 31, 'BD312'),
(238, 31, 'BD402'),
(239, 32, 'BD304A'),
(240, 32, 'BD305'),
(241, 32, 'BD308'),
(242, 32, 'BD310A'),
(243, 32, 'BD501'),
(244, 32, 'BD504A'),
(245, 32, 'BD504B'),
(246, 31, 'BD216B'),
(248, 25, 'BD216B'),
(249, 33, 'BD214A'),
(250, 33, 'BD215'),
(251, 33, 'BD304B'),
(252, 33, 'BD310B'),
(253, 33, 'BD404'),
(254, 33, 'BD405'),
(255, 34, 'BD213B'),
(256, 34, 'BD214B'),
(257, 34, 'BD310C'),
(258, 34, 'BD406'),
(259, 35, 'BD102A'),
(260, 35, 'BD103'),
(261, 35, 'BD104'),
(262, 35, 'BD105'),
(263, 35, 'BD201'),
(264, 35, 'BD202'),
(265, 35, 'BD203'),
(266, 35, 'BD207'),
(267, 35, 'BD208'),
(268, 35, 'BD401'),
(269, 36, 'BD204'),
(270, 36, 'BD205'),
(271, 36, 'BD209'),
(272, 36, 'BD213A'),
(273, 36, 'BD216A'),
(274, 36, 'BD301'),
(275, 36, 'BD307'),
(276, 36, 'BD311'),
(277, 36, 'BD403A'),
(278, 36, 'BD502A'),
(279, 36, 'BD502B'),
(280, 36, 'BD503'),
(281, 37, 'BD206'),
(282, 37, 'BD210'),
(283, 37, 'BD211'),
(284, 37, 'BD212'),
(285, 37, 'BD216B'),
(286, 37, 'BD302'),
(287, 37, 'BD303'),
(288, 37, 'BD306'),
(289, 37, 'BD309'),
(290, 37, 'BD312'),
(291, 37, 'BD402'),
(292, 38, 'BD304A'),
(293, 38, 'BD305'),
(294, 38, 'BD308'),
(295, 38, 'BD310A'),
(296, 38, 'BD501'),
(297, 38, 'BD504A'),
(298, 38, 'BD504B'),
(299, 39, 'BD214A'),
(300, 39, 'BD215'),
(301, 39, 'BD304B'),
(302, 39, 'BD310B'),
(303, 39, 'BD404'),
(304, 39, 'BD405'),
(305, 40, 'BD213B'),
(306, 40, 'BD214B'),
(307, 40, 'BD310C'),
(308, 40, 'BD406'),
(309, 41, 'BD102A'),
(310, 41, 'BD103'),
(311, 41, 'BD104'),
(312, 41, 'BD105'),
(313, 41, 'BD201'),
(314, 41, 'BD202'),
(315, 41, 'BD203'),
(316, 41, 'BD207'),
(317, 41, 'BD208'),
(318, 41, 'BD401'),
(319, 42, 'BD204'),
(320, 42, 'BD205'),
(321, 42, 'BD209'),
(322, 42, 'BD213A'),
(323, 42, 'BD216A'),
(324, 42, 'BD301'),
(325, 42, 'BD307'),
(326, 42, 'BD311'),
(327, 42, 'BD403A'),
(328, 42, 'BD502A'),
(329, 42, 'BD502B'),
(330, 42, 'BD503'),
(331, 43, 'BD206'),
(332, 43, 'BD210'),
(333, 43, 'BD211'),
(334, 43, 'BD212'),
(335, 43, 'BD216B'),
(336, 43, 'BD302'),
(337, 43, 'BD303'),
(338, 43, 'BD306'),
(339, 43, 'BD309'),
(340, 43, 'BD312'),
(341, 43, 'BD402'),
(342, 44, 'BD304A'),
(343, 44, 'BD305'),
(344, 44, 'BD308'),
(345, 44, 'BD310A'),
(346, 44, 'BD501'),
(347, 44, 'BD504A'),
(348, 44, 'BD504B'),
(349, 45, 'BD214A'),
(350, 45, 'BD215'),
(351, 45, 'BD304B'),
(352, 45, 'BD404'),
(353, 45, 'BD405'),
(354, 46, 'BD213B'),
(355, 46, 'BD214B'),
(356, 46, 'BD310C'),
(357, 46, 'BD406'),
(358, 47, 'BD102C'),
(359, 47, 'BD105B'),
(360, 47, 'BD203B'),
(361, 47, 'BD401'),
(362, 47, 'BD402B'),
(363, 47, 'BD201B'),
(364, 47, 'BD208B');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nomor_id` int(11) NOT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `jurusan` varchar(45) DEFAULT NULL,
  `nomor_hp` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `status_pembayaran` varchar(45) DEFAULT NULL,
  `status_mahasiswa` varchar(25) NOT NULL,
  `tanggal_registrasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nomor_id`, `angkatan`, `jurusan`, `nomor_hp`, `semester`, `status_pembayaran`, `status_mahasiswa`, `tanggal_registrasi`) VALUES
(1, 101881492, 2010, 'D3 KEBIDANAN', '81221145417', '0', 'Lunas', 'Lulus', NULL),
(2, 101881493, 2010, 'D3 KEBIDANAN', '81931277600', '0', 'Lunas', 'Lulus', NULL),
(3, 101881494, 2010, 'D3 KEBIDANAN', '81572030687', '0', 'Lunas', 'Lulus', NULL),
(4, 101881495, 2010, 'D3 KEBIDANAN', '85641680000', '0', 'Lunas', 'Lulus', NULL),
(5, 101881496, 2010, 'D3 KEBIDANAN', '81319631440', '0', 'Lunas', 'Lulus', NULL),
(6, 101881497, 2010, 'D3 KEBIDANAN', '85721960181', '0', 'Lunas', 'Lulus', NULL),
(7, 101881498, 2010, 'D3 KEBIDANAN', '85764544209', '0', 'Lunas', 'Lulus', NULL),
(8, 101881499, 2010, 'D3 KEBIDANAN', '85723340361', '0', 'Lunas', 'Lulus', NULL),
(9, 101881500, 2010, 'D3 KEBIDANAN', '81221994996', '0', 'Lunas', 'Lulus', NULL),
(10, 101881501, 2010, 'D3 KEBIDANAN', '85659011915', '0', 'Lunas', 'Lulus', NULL),
(11, 101881502, 2010, 'D3 KEBIDANAN', '62234611069', '0', 'Lunas', 'Lulus', NULL),
(12, 101881503, 2010, 'D3 KEBIDANAN', '85222739804', '0', 'Lunas', 'Lulus', NULL),
(13, 101881504, 2010, 'D3 KEBIDANAN', '817426939', '0', 'Lunas', 'Lulus', NULL),
(14, 101881505, 2010, 'D3 KEBIDANAN', '81910004308', '0', 'Lunas', 'Lulus', NULL),
(15, 101881506, 2010, 'D3 KEBIDANAN', '85265468588', '0', 'Lunas', 'Lulus', NULL),
(16, 101881507, 2010, 'D3 KEBIDANAN', '85295866644', '0', 'Lunas', 'Lulus', NULL),
(17, 101881508, 2010, 'D3 KEBIDANAN', '62225957532', '0', 'Lunas', 'Lulus', NULL),
(18, 101881509, 2010, 'D3 KEBIDANAN', '85720852365', '0', 'Lunas', 'Lulus', NULL),
(19, 101881510, 2010, 'D3 KEBIDANAN', '85221590908', '0', 'Lunas', 'Lulus', NULL),
(20, 101881511, 2010, 'D3 KEBIDANAN', '83822783334', '0', 'Lunas', 'Lulus', NULL),
(21, 101881512, 2010, 'D3 KEBIDANAN', '62226623548', '0', 'Lunas', 'Lulus', NULL),
(22, 101881513, 2010, 'D3 KEBIDANAN', '8122110862', '0', 'Lunas', 'Lulus', NULL),
(23, 101881514, 2010, 'D3 KEBIDANAN', '87822215597', '0', 'Lunas', 'Lulus', NULL),
(24, 101881515, 2010, 'D3 KEBIDANAN', '622270768243', '0', 'Lunas', 'Lulus', NULL),
(25, 101881516, 2010, 'D3 KEBIDANAN', '8112907821', '0', 'Lunas', 'Lulus', NULL),
(26, 101881517, 2010, 'D3 KEBIDANAN', '8562161284', '0', 'Lunas', 'Lulus', NULL),
(27, 101881519, 2010, 'D3 KEBIDANAN', '85793995138', '0', 'Lunas', 'Lulus', NULL),
(28, 101881520, 2010, 'D3 KEBIDANAN', '81282836665', '0', 'Lunas', 'Lulus', NULL),
(29, 101881521, 2010, 'D3 KEBIDANAN', '85248512091', '0', 'Lunas', 'Lulus', NULL),
(30, 101881522, 2010, 'D3 KEBIDANAN', '85722424948', '0', 'Lunas', 'Lulus', NULL),
(31, 101881523, 2010, 'D3 KEBIDANAN', '81395151007', '0', 'Lunas', 'Lulus', NULL),
(32, 101881524, 2010, 'D3 KEBIDANAN', '622286862332', '0', 'Lunas', 'Lulus', NULL),
(33, 101881525, 2010, 'D3 KEBIDANAN', '8996062458', '0', 'Lunas', 'Lulus', NULL),
(34, 101881526, 2010, 'D3 KEBIDANAN', '87824971049', '0', 'Lunas', 'Lulus', NULL),
(35, 101881527, 2010, 'D3 KEBIDANAN', '85861422902', '0', 'Lunas', 'Lulus', NULL),
(36, 101881529, 2010, 'D3 KEBIDANAN', '85367080339', '0', 'Lunas', 'Lulus', NULL),
(37, 101881530, 2010, 'D3 KEBIDANAN', '85882574586', '0', 'Lunas', 'Lulus', NULL),
(38, 101881531, 2010, 'D3 KEBIDANAN', '85722268971', '3', 'Belum Lunas', 'Tidak Aktif', NULL),
(39, 101881532, 2010, 'D3 KEBIDANAN', '87797626278', '0', 'Lunas', 'Lulus', NULL),
(40, 101881533, 2010, 'D3 KEBIDANAN', '85273134741', '0', 'Lunas', 'Lulus', NULL),
(41, 101881534, 2010, 'D3 KEBIDANAN', '81214344303', '0', 'Lunas', 'Lulus', NULL),
(42, 101881536, 2010, 'D3 KEBIDANAN', '62260550227', '0', 'Lunas', 'Lulus', NULL),
(43, 101881537, 2010, 'D3 KEBIDANAN', '81313044147', '0', 'Lunas', 'Lulus', NULL),
(44, 101881538, 2010, 'D3 KEBIDANAN', '85659276108', '0', 'Lunas', 'Lulus', NULL),
(45, 101881539, 2010, 'D3 KEBIDANAN', '88218165905', '0', 'Lunas', 'Lulus', NULL),
(46, 101881540, 2010, 'D3 KEBIDANAN', '8998631323', '0', 'Lunas', 'Lulus', NULL),
(47, 101881541, 2010, 'D3 KEBIDANAN', '85247494546', '3', 'Belum Lunas', 'Tidak Aktif', NULL),
(48, 101881542, 2010, 'D3 KEBIDANAN', '85650856227', '0', 'Lunas', 'Lulus', NULL),
(49, 101881543, 2010, 'D3 KEBIDANAN', '81322398960', '0', 'Lunas', 'Lulus', NULL),
(50, 101881544, 2010, 'D3 KEBIDANAN', '8112260488', '3', 'Belum Lunas', 'Keluar', NULL),
(51, 101881613, 2010, 'D3 KEBIDANAN', '81367676616', '0', 'Lunas', 'Lulus', NULL),
(52, 101881614, 2010, 'D3 KEBIDANAN', '81221158238', '0', 'Lunas', 'Lulus', NULL),
(53, 101881615, 2010, 'D3 KEBIDANAN', '81321212600', '0', 'Lunas', 'Lulus', NULL),
(54, 101881616, 2010, 'D3 KEBIDANAN', '81322731051', '0', 'Lunas', 'Lulus', NULL),
(55, 101881617, 2010, 'D3 KEBIDANAN', '85220684752', '0', 'Lunas', 'Lulus', NULL),
(56, 101881618, 2010, 'D3 KEBIDANAN', '81395606744', '0', 'Lunas', 'Lulus', NULL),
(57, 101881619, 2010, 'D3 KEBIDANAN', '81320350445', '0', 'Lunas', 'Lulus', NULL),
(58, 101881620, 2010, 'D3 KEBIDANAN', '85220111223', '0', 'Lunas', 'Lulus', NULL),
(59, 101881621, 2010, 'D3 KEBIDANAN', '81310284381', '0', 'Lunas', 'Lulus', NULL),
(60, 101881622, 2010, 'D3 KEBIDANAN', '82116100345', '0', 'Lunas', 'Lulus', NULL),
(61, 101881623, 2010, 'D3 KEBIDANAN', '81320369818', '0', 'Lunas', 'Lulus', NULL),
(62, 101881624, 2010, 'D3 KEBIDANAN', '622296000000', '0', 'Lunas', 'Lulus', NULL),
(63, 101881625, 2010, 'D3 KEBIDANAN', '8122095098', '0', 'Lunas', 'Lulus', NULL),
(64, 101881626, 2010, 'D3 KEBIDANAN', '81320062500', '0', 'Lunas', 'Lulus', NULL),
(65, 101881627, 2010, 'D3 KEBIDANAN', '817422752', '0', 'Lunas', 'Lulus', NULL),
(66, 101881628, 2010, 'D3 KEBIDANAN', '85220203482', '0', 'Lunas', 'Lulus', NULL),
(67, 101881629, 2010, 'D3 KEBIDANAN', '85224492029', '0', 'Lunas', 'Lulus', NULL),
(68, 101881630, 2010, 'D3 KEBIDANAN', '81321337387', '0', 'Lunas', 'Lulus', NULL),
(69, 101881631, 2010, 'D3 KEBIDANAN', '81322711982', '0', 'Lunas', 'Lulus', NULL),
(70, 101881632, 2010, 'D3 KEBIDANAN', '82115561419', '0', 'Lunas', 'Lulus', NULL),
(71, 101881633, 2010, 'D3 KEBIDANAN', '85221649832', '0', 'Lunas', 'Lulus', NULL),
(72, 101881634, 2010, 'D3 KEBIDANAN', '622270000000', '0', 'Lunas', 'Lulus', NULL),
(73, 101881635, 2010, 'D3 KEBIDANAN', '81220212204', '0', 'Lunas', 'Lulus', NULL),
(74, 101881636, 2010, 'D3 KEBIDANAN', '81220678055', '0', 'Lunas', 'Lulus', NULL),
(75, 101881637, 2010, 'D3 KEBIDANAN', '85215406949', '0', 'Lunas', 'Lulus', NULL),
(76, 101881638, 2010, 'D3 KEBIDANAN', '87822601456', '0', 'Lunas', 'Lulus', NULL),
(77, 101881639, 2010, 'D3 KEBIDANAN', '81931289568', '0', 'Lunas', 'Lulus', NULL),
(78, 101881640, 2010, 'D3 KEBIDANAN', '85222468454', '0', 'Lunas', 'Lulus', NULL),
(79, 101881641, 2010, 'D3 KEBIDANAN', '85221791214', '0', 'Lunas', 'Lulus', NULL),
(80, 101881642, 2010, 'D3 KEBIDANAN', '81220158937', '0', 'Lunas', 'Lulus', NULL),
(81, 101881643, 2010, 'D3 KEBIDANAN', '62222700231', '0', 'Lunas', 'Lulus', NULL),
(82, 101881644, 2010, 'D3 KEBIDANAN', '8122170901', '0', 'Lunas', 'Lulus', NULL),
(83, 101881645, 2010, 'D3 KEBIDANAN', '85221413344', '0', 'Lunas', 'Lulus', NULL),
(84, 101881646, 2010, 'D3 KEBIDANAN', '81322156777', '0', 'Lunas', 'Lulus', NULL),
(85, 101881647, 2010, 'D3 KEBIDANAN', '81320335903', '0', 'Lunas', 'Lulus', NULL),
(86, 101881648, 2010, 'D3 KEBIDANAN', '81322610227', '0', 'Lunas', 'Lulus', NULL),
(87, 101881649, 2010, 'D3 KEBIDANAN', '81323036838', '0', 'Lunas', 'Lulus', NULL),
(88, 101881651, 2010, 'D3 KEBIDANAN', '81321640074', '0', 'Lunas', 'Lulus', NULL),
(89, 101881652, 2010, 'D3 KEBIDANAN', '8122031849', '0', 'Lunas', 'Lulus', NULL),
(90, 101881653, 2010, 'D3 KEBIDANAN', '82129773611', '0', 'Lunas', 'Lulus', NULL),
(91, 101881654, 2010, 'D3 KEBIDANAN', '83829419111', '0', 'Lunas', 'Lulus', NULL),
(92, 101881655, 2010, 'D3 KEBIDANAN', '62222700080', '0', 'Lunas', 'Lulus', NULL),
(93, 101881656, 2010, 'D3 KEBIDANAN', '85269419932', '0', 'Lunas', 'Lulus', NULL),
(94, 101881657, 2010, 'D3 KEBIDANAN', '81394027604', '0', 'Lunas', 'Lulus', NULL),
(95, 101881658, 2010, 'D3 KEBIDANAN', '81322272318', '0', 'Lunas', 'Lulus', NULL),
(96, 101881697, 2010, 'D3 KEBIDANAN', '81321059825', '0', 'Lunas', 'Lulus', NULL),
(97, 101881698, 2010, 'D3 KEBIDANAN', '817432585', '0', 'Lunas', 'Lulus', NULL),
(98, 101881699, 2010, 'D3 KEBIDANAN', '81320486919', '0', 'Lunas', 'Lulus', NULL),
(99, 101881700, 2010, 'D3 KEBIDANAN', '82113829520', '0', 'Lunas', 'Lulus', NULL),
(100, 101881701, 2010, 'D3 KEBIDANAN', '82118603555', '0', 'Lunas', 'Lulus', NULL),
(101, 111881659, 2011, 'D3 KEBIDANAN', '85720710101', '1', 'Belum Lunas', 'Tidak Aktif', NULL),
(102, 111881660, 2011, 'D3 KEBIDANAN', '85797970006', '0', 'Lunas', 'Lulus', NULL),
(103, 111881661, 2011, 'D3 KEBIDANAN', '83820030552', '0', 'Lunas', 'Lulus', NULL),
(104, 111881662, 2011, 'D3 KEBIDANAN', '85659314067', '0', 'Lunas', 'Lulus', NULL),
(105, 111881663, 2011, 'D3 KEBIDANAN', '85793263293', '0', 'Lunas', 'Lulus', NULL),
(106, 111881664, 2011, 'D3 KEBIDANAN', '85691576177', '2', 'Belum Lunas', 'Tidak Aktif', NULL),
(107, 111881665, 2011, 'D3 KEBIDANAN', '85694331333', '1', 'Belum Lunas', 'Keluar', NULL),
(108, 111881666, 2011, 'D3 KEBIDANAN', '8994366986', '0', 'Lunas', 'Lulus', NULL),
(109, 111881667, 2011, 'D3 KEBIDANAN', '81910409305', '0', 'Lunas', 'Lulus', NULL),
(110, 111881668, 2011, 'D3 KEBIDANAN', '81322173995', '0', 'Lunas', 'Lulus', NULL),
(111, 111881669, 2011, 'D3 KEBIDANAN', '85310570656', '0', 'Lunas', 'Lulus', NULL),
(112, 111881670, 2011, 'D3 KEBIDANAN', '85793039080', '0', 'Lunas', 'Lulus', NULL),
(113, 111881671, 2011, 'D3 KEBIDANAN', '85722995633', '1', 'Belum Lunas', 'Tidak Aktif', NULL),
(114, 111881672, 2011, 'D3 KEBIDANAN', '85769555585', '0', 'Lunas', 'Lulus', NULL),
(115, 111881673, 2011, 'D3 KEBIDANAN', '82120004856', '0', 'Lunas', 'Lulus', NULL),
(116, 111881674, 2011, 'D3 KEBIDANAN', '87896499604', '2', 'Belum Lunas', 'Tidak Aktif', NULL),
(117, 111881675, 2011, 'D3 KEBIDANAN', '87722561779', '0', 'Lunas', 'Lulus', NULL),
(118, 111881677, 2011, 'D3 KEBIDANAN', '89620409666', '0', 'Lunas', 'Lulus', NULL),
(119, 111881678, 2011, 'D3 KEBIDANAN', '8970227708', '0', 'Lunas', 'Lulus', NULL),
(120, 111881679, 2011, 'D3 KEBIDANAN', '85759388080', '3', 'Belum Lunas', 'Keluar', NULL),
(121, 111881680, 2011, 'D3 KEBIDANAN', '81910244300', '0', 'Lunas', 'Lulus', NULL),
(122, 111881681, 2011, 'D3 KEBIDANAN', '81324038333', '0', 'Lunas', 'Lulus', NULL),
(123, 111881682, 2011, 'D3 KEBIDANAN', '83820592828', '0', 'Lunas', 'Lulus', NULL),
(124, 111881683, 2011, 'D3 KEBIDANAN', '83822370096', '0', 'Lunas', 'Lulus', NULL),
(125, 111881684, 2011, 'D3 KEBIDANAN', '89657942123', '0', 'Lunas', 'Lulus', NULL),
(126, 111881685, 2011, 'D3 KEBIDANAN', '89655155726', '0', 'Lunas', 'Lulus', NULL),
(127, 111881686, 2011, 'D3 KEBIDANAN', '85863556223', '0', 'Lunas', 'Lulus', NULL),
(128, 111881687, 2011, 'D3 KEBIDANAN', '85860010770', '0', 'Lunas', 'Lulus', NULL),
(129, 111881688, 2011, 'D3 KEBIDANAN', '81395249999', '0', 'Lunas', 'Lulus', NULL),
(130, 111881689, 2011, 'D3 KEBIDANAN', '87898355550', '0', 'Lunas', 'Lulus', NULL),
(131, 111881690, 2011, 'D3 KEBIDANAN', '83820507041', '0', 'Lunas', 'Lulus', NULL),
(132, 111881691, 2011, 'D3 KEBIDANAN', '87722456812', '0', 'Lunas', 'Lulus', NULL),
(133, 111881692, 2011, 'D3 KEBIDANAN', '8562194920', '0', 'Lunas', 'Lulus', NULL),
(134, 111881694, 2011, 'D3 KEBIDANAN', '85793131634', '0', 'Lunas', 'Lulus', NULL),
(135, 111881695, 2011, 'D3 KEBIDANAN', '82318151630', '0', 'Lunas', 'Lulus', NULL),
(136, 111881708, 2011, 'D3 KEBIDANAN', '85222411985', '0', 'Lunas', 'Lulus', NULL),
(137, 111881709, 2011, 'D3 KEBIDANAN', '87796821313', '0', 'Lunas', 'Lulus', NULL),
(138, 111881710, 2011, 'D3 KEBIDANAN', '85659041262', '0', 'Lunas', 'Lulus', NULL),
(139, 111881711, 2011, 'D3 KEBIDANAN', '81322795915', '0', 'Lunas', 'Lulus', NULL),
(140, 111881712, 2011, 'D3 KEBIDANAN', '87820711504', '0', 'Lunas', 'Lulus', NULL),
(141, 111881713, 2011, 'D3 KEBIDANAN', '85221350580', '0', 'Lunas', 'Lulus', NULL),
(142, 111881714, 2011, 'D3 KEBIDANAN', '85351069550', '0', 'Lunas', 'Lulus', NULL),
(143, 111881715, 2011, 'D3 KEBIDANAN', '81320722779', '0', 'Lunas', 'Lulus', NULL),
(144, 111881716, 2011, 'D3 KEBIDANAN', '85320331777', '0', 'Lunas', 'Lulus', NULL),
(145, 111881717, 2011, 'D3 KEBIDANAN', '81220038009', '0', 'Lunas', 'Lulus', NULL),
(146, 111881718, 2011, 'D3 KEBIDANAN', '82217394499', '0', 'Lunas', 'Lulus', NULL),
(147, 111881719, 2011, 'D3 KEBIDANAN', '85722381955', '0', 'Lunas', 'Lulus', NULL),
(148, 111881720, 2011, 'D3 KEBIDANAN', '81322330665', '0', 'Lunas', 'Lulus', NULL),
(149, 111881721, 2011, 'D3 KEBIDANAN', '81321777899', '0', 'Lunas', 'Lulus', NULL),
(150, 111881722, 2011, 'D3 KEBIDANAN', '82117284486', '0', 'Lunas', 'Lulus', NULL),
(151, 111881723, 2011, 'D3 KEBIDANAN', '8889431618', '0', 'Lunas', 'Lulus', NULL),
(152, 111881724, 2011, 'D3 KEBIDANAN', '81394099001', '0', 'Lunas', 'Lulus', NULL),
(153, 111881725, 2011, 'D3 KEBIDANAN', '81394956253', '0', 'Lunas', 'Lulus', NULL),
(154, 111881726, 2011, 'D3 KEBIDANAN', '85793248209', '0', 'Lunas', 'Lulus', NULL),
(155, 111881727, 2011, 'D3 KEBIDANAN', '87821663838', '0', 'Lunas', 'Lulus', NULL),
(156, 111881728, 2011, 'D3 KEBIDANAN', '8122116739', '0', 'Lunas', 'Lulus', NULL),
(157, 111881729, 2011, 'D3 KEBIDANAN', '82117488657', '0', 'Lunas', 'Lulus', NULL),
(158, 111881730, 2011, 'D3 KEBIDANAN', '817229829', '0', 'Lunas', 'Lulus', NULL),
(159, 111881731, 2011, 'D3 KEBIDANAN', '817210306', '0', 'Lunas', 'Lulus', NULL),
(160, 111881732, 2011, 'D3 KEBIDANAN', '8122177549', '0', 'Lunas', 'Lulus', NULL),
(161, 111881733, 2011, 'D3 KEBIDANAN', '81322116636', '0', 'Lunas', 'Lulus', NULL),
(162, 111881734, 2011, 'D3 KEBIDANAN', '8122446189', '0', 'Lunas', 'Lulus', NULL),
(163, 111881735, 2011, 'D3 KEBIDANAN', '81224026111', '0', 'Lunas', 'Lulus', NULL),
(164, 111881736, 2011, 'D3 KEBIDANAN', '8122111091', '0', 'Lunas', 'Lulus', NULL),
(165, 111881737, 2011, 'D3 KEBIDANAN', '89686047749', '0', 'Lunas', 'Lulus', NULL),
(166, 111881739, 2011, 'D3 KEBIDANAN', '85722916503', '0', 'Lunas', 'Lulus', NULL),
(167, 111881740, 2011, 'D3 KEBIDANAN', '81320605342', '0', 'Lunas', 'Lulus', NULL),
(168, 111881741, 2011, 'D3 KEBIDANAN', '85219480298', '0', 'Lunas', 'Lulus', NULL),
(169, 111881742, 2011, 'D3 KEBIDANAN', '81394022903', '0', 'Lunas', 'Lulus', NULL),
(170, 111881744, 2011, 'D3 KEBIDANAN', '85220911647', '0', 'Lunas', 'Lulus', NULL),
(171, 111881745, 2011, 'D3 KEBIDANAN', '81563536327', '0', 'Lunas', 'Lulus', NULL),
(172, 111881746, 2011, 'D3 KEBIDANAN', '85720044473', '0', 'Lunas', 'Lulus', NULL),
(173, 111881747, 2011, 'D3 KEBIDANAN', '82127042326', '0', 'Lunas', 'Lulus', NULL),
(174, 111881748, 2011, 'D3 KEBIDANAN', '81322911956', '0', 'Lunas', 'Lulus', NULL),
(175, 111881750, 2011, 'D3 KEBIDANAN', '85759007843', '0', 'Lunas', 'Lulus', NULL),
(176, 111881787, 2011, 'D3 KEBIDANAN', '82317652224', '0', 'Lunas', 'Lulus', NULL),
(177, 111881788, 2011, 'D3 KEBIDANAN', '81321421701', '0', 'Lunas', 'Lulus', NULL),
(178, 111881789, 2011, 'D3 KEBIDANAN', '85795961612', '0', 'Lunas', 'Lulus', NULL),
(179, 111881813, 2011, 'D3 KEBIDANAN', '8121404685', '0', 'Lunas', 'Lulus', NULL),
(180, 111882696, 2011, 'D3 KEBIDANAN', '85720440796', '0', 'Lunas', 'Lulus', NULL),
(181, 111882704, 2011, 'D3 KEBIDANAN', '85659525655', '0', 'Lunas', 'Lulus', NULL),
(182, 121881751, 2012, 'D3 KEBIDANAN', '81212587110', '0', 'Lunas', 'Lulus', NULL),
(183, 121881752, 2012, 'D3 KEBIDANAN', '82192093615', '0', 'Lunas', 'Lulus', NULL),
(184, 121881753, 2012, 'D3 KEBIDANAN', '85794129977', '0', 'Lunas', 'Lulus', NULL),
(185, 121881754, 2012, 'D3 KEBIDANAN', '85794535032', '4', 'Belum Lunas', 'Keluar', NULL),
(186, 121881755, 2012, 'D3 KEBIDANAN', '87774950144', '0', 'Lunas', 'Lulus', NULL),
(187, 121881756, 2012, 'D3 KEBIDANAN', '87718663577', '0', 'Lunas', 'Lulus', NULL),
(188, 121881757, 2012, 'D3 KEBIDANAN', '85722339974', '0', 'Lunas', 'Lulus', NULL),
(189, 121881758, 2012, 'D3 KEBIDANAN', '81214815658', '0', 'Lunas', 'Lulus', NULL),
(190, 121881759, 2012, 'D3 KEBIDANAN', '85222149821', '0', 'Lunas', 'Lulus', NULL),
(191, 121881760, 2012, 'D3 KEBIDANAN', '85659107297', '0', 'Lunas', 'Lulus', NULL),
(192, 121881762, 2012, 'D3 KEBIDANAN', '81909407723', '0', 'Lunas', 'Lulus', NULL),
(193, 121881763, 2012, 'D3 KEBIDANAN', '8562302055', '0', 'Lunas', 'Lulus', NULL),
(194, 121881764, 2012, 'D3 KEBIDANAN', '87825236406', '0', 'Lunas', 'Lulus', NULL),
(195, 121881765, 2012, 'D3 KEBIDANAN', '85794455400', '0', 'Lunas', 'Lulus', NULL),
(196, 121881766, 2012, 'D3 KEBIDANAN', '89656851679', '0', 'Lunas', 'Lulus', NULL),
(197, 121881767, 2012, 'D3 KEBIDANAN', '81322247196', '0', 'Lunas', 'Lulus', NULL),
(198, 121881768, 2012, 'D3 KEBIDANAN', '81223449566', '0', 'Lunas', 'Lulus', NULL),
(199, 121881769, 2012, 'D3 KEBIDANAN', '87720415859', '0', 'Lunas', 'Lulus', NULL),
(200, 121881770, 2012, 'D3 KEBIDANAN', '87798952910', '0', 'Lunas', 'Lulus', NULL),
(201, 121881771, 2012, 'D3 KEBIDANAN', '82199330581', '0', 'Lunas', 'Lulus', NULL),
(202, 121881772, 2012, 'D3 KEBIDANAN', '85323012380', '0', 'Lunas', 'Lulus', NULL),
(203, 121881773, 2012, 'D3 KEBIDANAN', '85270044412', '0', 'Lunas', 'Lulus', NULL),
(204, 121881774, 2012, 'D3 KEBIDANAN', '85722225144', '4', 'Belum Lunas', 'Tidak Aktif', NULL),
(205, 121881775, 2012, 'D3 KEBIDANAN', '81350245499', '0', 'Lunas', 'Lulus', NULL),
(206, 121881776, 2012, 'D3 KEBIDANAN', '89506489407', '0', 'Lunas', 'Lulus', NULL),
(207, 121881777, 2012, 'D3 KEBIDANAN', '81321718150', '0', 'Lunas', 'Lulus', NULL),
(208, 121881778, 2012, 'D3 KEBIDANAN', '85220368930', '0', 'Lunas', 'Lulus', NULL),
(209, 121881779, 2012, 'D3 KEBIDANAN', '82126930414', '0', 'Lunas', 'Lulus', NULL),
(210, 121881780, 2012, 'D3 KEBIDANAN', '85772136773', '0', 'Lunas', 'Lulus', NULL),
(211, 121881781, 2012, 'D3 KEBIDANAN', '81563433467', '0', 'Lunas', 'Lulus', NULL),
(212, 121881782, 2012, 'D3 KEBIDANAN', '81931367736', '0', 'Lunas', 'Lulus', NULL),
(213, 121881783, 2012, 'D3 KEBIDANAN', '85653563865', '0', 'Lunas', 'Lulus', NULL),
(214, 121881784, 2012, 'D3 KEBIDANAN', '83822926752', '3', 'Belum Lunas', 'Tidak Aktif', NULL),
(215, 121881785, 2012, 'D3 KEBIDANAN', '85316464849', '4', 'Belum Lunas', 'Tidak Aktif', NULL),
(216, 121881786, 2012, 'D3 KEBIDANAN', '89656325554', '0', 'Lunas', 'Lulus', NULL),
(217, 121881791, 2012, 'D3 KEBIDANAN', '85222057057', '0', 'Lunas', 'Lulus', NULL),
(218, 121881792, 2012, 'D3 KEBIDANAN', '81220199337', '0', 'Lunas', 'Lulus', NULL),
(219, 121881793, 2012, 'D3 KEBIDANAN', '85215714195', '0', 'Lunas', 'Lulus', NULL),
(220, 121881794, 2012, 'D3 KEBIDANAN', '81387836604', '0', 'Lunas', 'Lulus', NULL),
(221, 121881796, 2012, 'D3 KEBIDANAN', '8156044338', '0', 'Lunas', 'Lulus', NULL),
(222, 121881797, 2012, 'D3 KEBIDANAN', '87824922924', '0', 'Lunas', 'Lulus', NULL),
(223, 121881798, 2012, 'D3 KEBIDANAN', '81321166000', '0', 'Lunas', 'Lulus', NULL),
(224, 121881800, 2012, 'D3 KEBIDANAN', '81281768284', '0', 'Lunas', 'Lulus', NULL),
(225, 121881801, 2012, 'D3 KEBIDANAN', '85723281240', '0', 'Lunas', 'Lulus', NULL),
(226, 121881802, 2012, 'D3 KEBIDANAN', '85220735217', '0', 'Lunas', 'Lulus', NULL),
(227, 121881803, 2012, 'D3 KEBIDANAN', '85222592938', '0', 'Lunas', 'Lulus', NULL),
(228, 121881804, 2012, 'D3 KEBIDANAN', '622292000000', '0', 'Lunas', 'Lulus', NULL),
(229, 121881805, 2012, 'D3 KEBIDANAN', '82117766600', '0', 'Lunas', 'Lulus', NULL),
(230, 121881806, 2012, 'D3 KEBIDANAN', '81321745713', '0', 'Lunas', 'Lulus', NULL),
(231, 121881807, 2012, 'D3 KEBIDANAN', '81321669466', '0', 'Lunas', 'Lulus', NULL),
(232, 121881808, 2012, 'D3 KEBIDANAN', '85318328318', '0', 'Lunas', 'Lulus', NULL),
(233, 121881809, 2012, 'D3 KEBIDANAN', '82128606079', '0', 'Lunas', 'Lulus', NULL),
(234, 121881810, 2012, 'D3 KEBIDANAN', '81322743455', '0', 'Lunas', 'Lulus', NULL),
(235, 121881811, 2012, 'D3 KEBIDANAN', '85624360590', '0', 'Lunas', 'Lulus', NULL),
(236, 121881814, 2012, 'D3 KEBIDANAN', '81322322642', '0', 'Lunas', 'Lulus', NULL),
(237, 121881815, 2012, 'D3 KEBIDANAN', '85351181386', '4', 'Belum Lunas', 'Tidak Aktif', NULL),
(238, 121881816, 2012, 'D3 KEBIDANAN', '8562048859', '0', 'Lunas', 'Lulus', NULL),
(239, 121881817, 2012, 'D3 KEBIDANAN', '83821369028', '0', 'Lunas', 'Lulus', NULL),
(240, 121881821, 2012, 'D3 KEBIDANAN', '8562292313', '0', 'Lunas', 'Lulus', NULL),
(241, 121881824, 2012, 'D3 KEBIDANAN', '85860097807', '0', 'Lunas', 'Lulus', NULL),
(242, 121881825, 2012, 'D3 KEBIDANAN', '87720187295', '0', 'Lunas', 'Lulus', NULL),
(243, 121881827, 2012, 'D3 KEBIDANAN', '8999669953', '0', 'Lunas', 'Lulus', NULL),
(244, 121881828, 2012, 'D3 KEBIDANAN', '82117488657', '0', 'Lunas', 'Lulus', NULL),
(245, 121881830, 2012, 'D3 KEBIDANAN', '85720175124', '0', 'Lunas', 'Lulus', NULL),
(246, 121881831, 2012, 'D3 KEBIDANAN', '87821298572', '0', 'Lunas', 'Lulus', NULL),
(247, 121881833, 2012, 'D3 KEBIDANAN', '85974570288', '0', 'Lunas', 'Lulus', NULL),
(248, 121881834, 2012, 'D3 KEBIDANAN', '81321643399', '0', 'Lunas', 'Lulus', NULL),
(249, 121881835, 2012, 'D3 KEBIDANAN', '85864411422', '0', 'Lunas', 'Lulus', NULL),
(250, 121881837, 2012, 'D3 KEBIDANAN', '8174818019', '0', 'Lunas', 'Lulus', NULL),
(251, 121881838, 2012, 'D3 KEBIDANAN', '8127860712', '4', 'Belum Lunas', 'Tidak Aktif', NULL),
(252, 121881839, 2012, 'D3 KEBIDANAN', '87828004939', '0', 'Lunas', 'Lulus', NULL),
(253, 121882707, 2012, 'D3 KEBIDANAN', '81910353564', '0', 'Lunas', 'Lulus', NULL),
(254, 121882749, 2012, 'D3 KEBIDANAN', '85721744416', '0', 'Lunas', 'Lulus', NULL),
(255, 121882790, 2012, 'D3 KEBIDANAN', '62226670351', '0', 'Lunas', 'Lulus', NULL),
(256, 121882812, 2012, 'D3 KEBIDANAN', '85269837037', '0', 'Lunas', 'Lulus', NULL),
(257, 131881840, 2013, 'D3 KEBIDANAN', '85659114156', '0', 'Lunas', 'Lulus', NULL),
(258, 131881841, 2013, 'D3 KEBIDANAN', '82218630804', '0', 'Lunas', 'Lulus', NULL),
(259, 131881842, 2013, 'D3 KEBIDANAN', '81224529344', '0', 'Lunas', 'Lulus', NULL),
(260, 131881843, 2013, 'D3 KEBIDANAN', '82240080758', '0', 'Lunas', 'Lulus', NULL),
(261, 131881844, 2013, 'D3 KEBIDANAN', '83821550234', '0', 'Lunas', 'Lulus', NULL),
(262, 131881845, 2013, 'D3 KEBIDANAN', '85759584506', '0', 'Lunas', 'Lulus', NULL),
(263, 131881846, 2013, 'D3 KEBIDANAN', '83829156162', '6', 'Belum Lunas', 'Tidak Aktif', NULL),
(264, 131881847, 2013, 'D3 KEBIDANAN', '83824162450', '0', 'Lunas', 'Lulus', NULL),
(265, 131881848, 2013, 'D3 KEBIDANAN', '82127464012', '0', 'Lunas', 'Lulus', NULL),
(266, 131881849, 2013, 'D3 KEBIDANAN', '81222820029', '0', 'Lunas', 'Lulus', NULL),
(267, 131881850, 2013, 'D3 KEBIDANAN', '81214684703', '0', 'Lunas', 'Lulus', NULL),
(268, 131881851, 2013, 'D3 KEBIDANAN', '82214946908', '0', 'Lunas', 'Lulus', NULL),
(269, 131881852, 2013, 'D3 KEBIDANAN', '85795367308', '0', 'Lunas', 'Lulus', NULL),
(270, 131881853, 2013, 'D3 KEBIDANAN', '85224408782', '0', 'Lunas', 'Lulus', NULL),
(271, 131881854, 2013, 'D3 KEBIDANAN', '85871448088', '0', 'Lunas', 'Lulus', NULL),
(272, 131881855, 2013, 'D3 KEBIDANAN', '81321195266', '0', 'Lunas', 'Lulus', NULL),
(273, 131881856, 2013, 'D3 KEBIDANAN', '85721352166', '0', 'Lunas', 'Lulus', NULL),
(274, 131881857, 2013, 'D3 KEBIDANAN', '87717707779', '0', 'Lunas', 'Lulus', NULL),
(275, 131881858, 2013, 'D3 KEBIDANAN', '85795834173', '0', 'Lunas', 'Lulus', NULL),
(276, 131881859, 2013, 'D3 KEBIDANAN', '81646961882', '0', 'Lunas', 'Lulus', NULL),
(277, 131881860, 2013, 'D3 KEBIDANAN', '85722408713', '0', 'Lunas', 'Lulus', NULL),
(278, 131881861, 2013, 'D3 KEBIDANAN', '83820212949', '0', 'Lunas', 'Lulus', NULL),
(279, 131881862, 2013, 'D3 KEBIDANAN', '81910450970', '0', 'Lunas', 'Lulus', NULL),
(280, 131881863, 2013, 'D3 KEBIDANAN', '85221227225', '0', 'Lunas', 'Lulus', NULL),
(281, 131881864, 2013, 'D3 KEBIDANAN', '82217347534', '0', 'Lunas', 'Lulus', NULL),
(282, 131881865, 2013, 'D3 KEBIDANAN', '85862680517', '0', 'Lunas', 'Lulus', NULL),
(283, 131881866, 2013, 'D3 KEBIDANAN', '85794582822', '0', 'Lunas', 'Lulus', NULL),
(284, 131881868, 2013, 'D3 KEBIDANAN', '81910163318', '0', 'Lunas', 'Lulus', NULL),
(285, 131881869, 2013, 'D3 KEBIDANAN', '81224210687', '0', 'Lunas', 'Lulus', NULL),
(286, 131881870, 2013, 'D3 KEBIDANAN', '89627764815', '0', 'Lunas', 'Lulus', NULL),
(287, 131881871, 2013, 'D3 KEBIDANAN', '82188880892', '0', 'Lunas', 'Lulus', NULL),
(288, 131881872, 2013, 'D3 KEBIDANAN', '82214250252', '0', 'Lunas', 'Lulus', NULL),
(289, 131881873, 2013, 'D3 KEBIDANAN', '81222236095', '0', 'Lunas', 'Lulus', NULL),
(290, 131881874, 2013, 'D3 KEBIDANAN', '85720309030', '0', 'Lunas', 'Lulus', NULL),
(291, 131881875, 2013, 'D3 KEBIDANAN', '85861171864', '0', 'Lunas', 'Lulus', NULL),
(292, 131881876, 2013, 'D3 KEBIDANAN', '8986469323', '0', 'Lunas', 'Lulus', NULL),
(293, 131881877, 2013, 'D3 KEBIDANAN', '87823287690', '0', 'Lunas', 'Lulus', NULL),
(294, 131881878, 2013, 'D3 KEBIDANAN', '81221800364', '0', 'Lunas', 'Lulus', NULL),
(295, 131881879, 2013, 'D3 KEBIDANAN', '81322340524', '0', 'Lunas', 'Lulus', NULL),
(296, 131881880, 2013, 'D3 KEBIDANAN', '81320230750', '1', 'Belum Lunas', 'Keluar', NULL),
(297, 131881881, 2013, 'D3 KEBIDANAN', '81320257968', '0', 'Lunas', 'Lulus', NULL),
(298, 131881882, 2013, 'D3 KEBIDANAN', '81321198095', '0', 'Lunas', 'Lulus', NULL),
(299, 131881883, 2013, 'D3 KEBIDANAN', '87825207968', '0', 'Lunas', 'Lulus', NULL),
(300, 131881884, 2013, 'D3 KEBIDANAN', '87825027112', '0', 'Lunas', 'Lulus', NULL),
(301, 131881885, 2013, 'D3 KEBIDANAN', '8562356840', '0', 'Lunas', 'Lulus', NULL),
(302, 131881886, 2013, 'D3 KEBIDANAN', '85720216717', '2', 'Belum Lunas', 'Tidak Aktif', NULL),
(303, 131881887, 2013, 'D3 KEBIDANAN', '89695565633', '0', 'Lunas', 'Lulus', NULL),
(304, 131881888, 2013, 'D3 KEBIDANAN', '83822450912', '0', 'Lunas', 'Lulus', NULL),
(305, 131881889, 2013, 'D3 KEBIDANAN', '8986133769', '0', 'Lunas', 'Lulus', NULL),
(306, 131881890, 2013, 'D3 KEBIDANAN', '81312427740', '0', 'Lunas', 'Lulus', NULL),
(307, 131881891, 2014, 'D3 KEBIDANAN', '83820007188', '1', 'Belum Lunas', 'Tidak Aktif', NULL),
(308, 131881893, 2013, 'D3 KEBIDANAN', '81321725195', '0', 'Lunas', 'Lulus', NULL),
(309, 131881894, 2013, 'D3 KEBIDANAN', '81321038586', '0', 'Lunas', 'Lulus', NULL),
(310, 131881908, 2013, 'D3 KEBIDANAN', '85759043101', '0', 'Lunas', 'Lulus', NULL),
(311, 131881909, 2013, 'D3 KEBIDANAN', '81320791375', '0', 'Lunas', 'Lulus', NULL),
(312, 131881910, 2013, 'D3 KEBIDANAN', '89689238163', '0', 'Lunas', 'Lulus', NULL),
(313, 131881911, 2013, 'D3 KEBIDANAN', '81321746535', '0', 'Lunas', 'Lulus', NULL),
(314, 131881912, 2013, 'D3 KEBIDANAN', '81214118199', '0', 'Lunas', 'Lulus', NULL),
(315, 131881913, 2013, 'D3 KEBIDANAN', '81320210718', '0', 'Lunas', 'Lulus', NULL),
(316, 131881914, 2013, 'D3 KEBIDANAN', '81313957881', '0', 'Lunas', 'Lulus', NULL),
(317, 131881915, 2013, 'D3 KEBIDANAN', '81312361278', '0', 'Lunas', 'Lulus', NULL),
(318, 131881916, 2013, 'D3 KEBIDANAN', '81214414482', '0', 'Lunas', 'Lulus', NULL),
(319, 131881917, 2013, 'D3 KEBIDANAN', '85722922921', '0', 'Lunas', 'Lulus', NULL),
(320, 131881918, 2013, 'D3 KEBIDANAN', '852222000000', '0', 'Lunas', 'Lulus', NULL),
(321, 131881919, 2013, 'D3 KEBIDANAN', '81214283869', '0', 'Lunas', 'Lulus', NULL),
(322, 131881920, 2013, 'D3 KEBIDANAN', '82112531905', '0', 'Lunas', 'Lulus', NULL),
(323, 131881921, 2013, 'D3 KEBIDANAN', '85921759374', '0', 'Lunas', 'Lulus', NULL),
(324, 131881927, 2013, 'D3 KEBIDANAN', '81220944780', '0', 'Lunas', 'Lulus', NULL),
(325, 131881928, 2013, 'D3 KEBIDANAN', '81222236095', '0', 'Lunas', 'Lulus', NULL),
(326, 131881929, 2013, 'D3 KEBIDANAN', '85216284956', '0', 'Lunas', 'Lulus', NULL),
(327, 131881930, 2013, 'D3 KEBIDANAN', '85222888851', '0', 'Lunas', 'Lulus', NULL),
(328, 131881931, 2013, 'D3 KEBIDANAN', '81322647480', '0', 'Lunas', 'Lulus', NULL),
(329, 131881932, 2013, 'D3 KEBIDANAN', '89695855251', '0', 'Lunas', 'Lulus', NULL),
(330, 131881933, 2013, 'D3 KEBIDANAN', '87714440567', '0', 'Lunas', 'Lulus', NULL),
(331, 131881934, 2013, 'D3 KEBIDANAN', '8562202030', '0', 'Lunas', 'Lulus', NULL),
(332, 131881935, 2013, 'D3 KEBIDANAN', '85822483010', '0', 'Lunas', 'Lulus', NULL),
(333, 131881937, 2013, 'D3 KEBIDANAN', '81316569301', '0', 'Lunas', 'Lulus', NULL),
(334, 131881938, 2013, 'D3 KEBIDANAN', '812214000000', '0', 'Lunas', 'Lulus', NULL),
(335, 131881962, 2013, 'D3 KEBIDANAN', '82317498008', '0', 'Lunas', 'Lulus', NULL),
(336, 131881963, 2013, 'D3 KEBIDANAN', '81340858341', '0', 'Lunas', 'Lulus', NULL),
(337, 131881964, 2013, 'D3 KEBIDANAN', '89656168662', '0', 'Lunas', 'Lulus', NULL),
(338, 131882895, 2013, 'D3 KEBIDANAN', '81221894439', '0', 'Lunas', 'Lulus', NULL),
(339, 131882896, 2011, 'D3 KEBIDANAN', '87804101696', '0', 'Lunas', 'Lulus', NULL),
(340, 131882897, 2013, 'D3 KEBIDANAN', '85795183515', '0', 'Lunas', 'Lulus', NULL),
(341, 131882898, 2013, 'D3 KEBIDANAN', '82115582699', '0', 'Lunas', 'Lulus', NULL),
(342, 141881939, 2014, 'D3 KEBIDANAN', '8112338666', '0', 'Lunas', 'Lulus', NULL),
(343, 141881940, 2014, 'D3 KEBIDANAN', '85794149195', '0', 'Lunas', 'Lulus', NULL),
(344, 141881941, 2014, 'D3 KEBIDANAN', '87722744440', '0', 'Lunas', 'Lulus', NULL),
(345, 141881942, 2014, 'D3 KEBIDANAN', '81222686158', '0', 'Lunas', 'Lulus', NULL),
(346, 141881943, 2014, 'D3 KEBIDANAN', '85351139913', '5', 'Lunas', 'Aktif', NULL),
(347, 141881944, 2014, 'D3 KEBIDANAN', '81224489638', '0', 'Lunas', 'Lulus', NULL),
(348, 141881945, 2014, 'D3 KEBIDANAN', '89502994121', '0', 'Lunas', 'Lulus', NULL),
(349, 141881946, 2014, 'D3 KEBIDANAN', '81321281457', '4', 'Belum Lunas', 'Cuti', NULL),
(350, 141881947, 2014, 'D3 KEBIDANAN', '81323114200', '3', 'Belum Lunas', 'Cuti', NULL),
(351, 141881948, 2014, 'D3 KEBIDANAN', '81224569559', '0', 'Lunas', 'Lulus', NULL),
(352, 141881949, 2014, 'D3 KEBIDANAN', '82216403315', '0', 'Lunas', 'Lulus', NULL),
(353, 141881950, 2014, 'D3 KEBIDANAN', '81223846691', '0', 'Lunas', 'Lulus', NULL),
(354, 141881951, 2014, 'D3 KEBIDANAN', '8994365585', '3', 'Belum Lunas', 'Keluar', NULL),
(355, 141881952, 2014, 'D3 KEBIDANAN', '85723576698', '0', 'Lunas', 'Lulus', NULL),
(356, 141881953, 2014, 'D3 KEBIDANAN', '85759999904', '0', 'Lunas', 'Lulus', NULL),
(357, 141881954, 2014, 'D3 KEBIDANAN', '85220277044', '0', 'Lunas', 'Lulus', NULL),
(358, 141881955, 2014, 'D3 KEBIDANAN', '89680424782', '0', 'Lunas', 'Lulus', NULL),
(359, 141881956, 2014, 'D3 KEBIDANAN', '82117557658', '0', 'Lunas', 'Lulus', NULL),
(360, 141881957, 2014, 'D3 KEBIDANAN', '87798989098', '5', 'Belum Lunas', 'Cuti', NULL),
(361, 141881958, 2014, 'D3 KEBIDANAN', '82115055663', '1', 'Belum Lunas', 'Keluar', NULL),
(362, 141881959, 2014, 'D3 KEBIDANAN', '81214678966', '0', 'Lunas', 'Lulus', NULL),
(363, 141881960, 2014, 'D3 KEBIDANAN', '87822155625', '0', 'Lunas', 'Lulus', NULL),
(364, 141881961, 2014, 'D3 KEBIDANAN', '85624014654', '0', 'Lunas', 'Lulus', NULL),
(365, 141881967, 14, 'D3 KEBIDANAN', '81233002012', '0', 'Lunas', 'Lulus', NULL),
(366, 141881968, 2014, 'D3 KEBIDANAN', '81394184155', '0', 'Lunas', 'Lulus', NULL),
(367, 141881970, 2014, 'D3 KEBIDANAN', '81802044111', '0', 'Lunas', 'Lulus', NULL),
(368, 141881971, 2014, 'D3 KEBIDANAN', '85861206191', '0', 'Lunas', 'Lulus', NULL),
(369, 141881972, 2014, 'D3 KEBIDANAN', '8562121841', '0', 'Lunas', 'Lulus', NULL),
(370, 141881973, 2014, 'D3 KEBIDANAN', '81222424822', '0', 'Lunas', 'Lulus', NULL),
(371, 141881975, 2014, 'D3 KEBIDANAN', '81312346016', '0', 'Lunas', 'Lulus', NULL),
(372, 141881976, 2014, 'D3 KEBIDANAN', '82218711688', '0', 'Lunas', 'Lulus', NULL),
(373, 141881977, 2014, 'D3 KEBIDANAN', '89653924317', '0', 'Lunas', 'Lulus', NULL),
(374, 141881978, 2014, 'D3 KEBIDANAN', '83820963987', '0', 'Lunas', 'Lulus', NULL),
(375, 141881979, 2014, 'D3 KEBIDANAN', '81224901221', '0', 'Lunas', 'Lulus', NULL),
(376, 141881980, 2014, 'D3 KEBIDANAN', '89696323638', '0', 'Lunas', 'Lulus', NULL),
(377, 141881981, 2014, 'D3 KEBIDANAN', '817619264', '0', 'Lunas', 'Lulus', NULL),
(378, 141881983, 2014, 'D3 KEBIDANAN', '81312719756', '0', 'Lunas', 'Lulus', NULL),
(379, 141881985, 2014, 'D3 KEBIDANAN', '8179259265', '0', 'Lunas', 'Lulus', NULL),
(380, 141881986, 2014, 'D3 KEBIDANAN', '8991188946', '0', 'Lunas', 'Lulus', NULL),
(381, 141881987, 2014, 'D3 KEBIDANAN', '81320950322', '0', 'Lunas', 'Lulus', NULL),
(382, 141881988, 2014, 'D3 KEBIDANAN', '81214772539', '0', 'Lunas', 'Lulus', NULL),
(383, 141881989, 2014, 'D3 KEBIDANAN', '85294439060', '0', 'Lunas', 'Lulus', NULL),
(384, 141882899, 2014, 'D3 KEBIDANAN', '89624823422', '0', 'Lunas', 'Lulus', NULL),
(385, 141882900, 2011, 'D3 KEBIDANAN', '85328855005', '0', 'Lunas', 'Lulus', NULL),
(386, 141882901, 2014, 'D3 KEBIDANAN', '81320660801', '0', 'Lunas', 'Lulus', NULL),
(387, 141882902, 2014, 'D3 KEBIDANAN', '85724988568', '0', 'Lunas', 'Lulus', NULL),
(388, 141882905, 2014, 'D3 KEBIDANAN', '82216713033', '0', 'Lunas', 'Lulus', NULL),
(389, 141882906, 2014, 'D3 KEBIDANAN', '85221610201', '0', 'Lunas', 'Lulus', NULL),
(390, 141882923, 2014, 'D3 KEBIDANAN', '81324327544', '0', 'Lunas', 'Lulus', NULL),
(391, 141882924, 2014, 'D3 KEBIDANAN', '81322763784', '0', 'Lunas', 'Lulus', NULL),
(392, 141882925, 2014, 'D3 KEBIDANAN', '81320777504', '0', 'Lunas', 'Lulus', NULL),
(393, 141882965, 2013, 'D3 KEBIDANAN', '81322802418', '0', 'Lunas', 'Lulus', NULL),
(394, 151881990, 2015, 'D3 KEBIDANAN', '85321637174', '6', 'Belum Lunas', 'Cuti', NULL),
(395, 151881991, 2015, 'D3 KEBIDANAN', '82318130684', '0', 'Lunas', 'Lulus', NULL),
(396, 151881992, 2015, 'D3 KEBIDANAN', '89672221990', '0', 'Lunas', 'Lulus', NULL),
(397, 151881993, 2015, 'D3 KEBIDANAN', '81222809101', '0', 'Lunas', 'Lulus', NULL),
(398, 151881994, 2015, 'D3 KEBIDANAN', '81214459925', '0', 'Lunas', 'Lulus', NULL),
(399, 151881995, 2015, 'D3 KEBIDANAN', '89220866722', '0', 'Lunas', 'Lulus', NULL),
(400, 151881996, 2015, 'D3 KEBIDANAN', '89609896253', '6', 'Belum Lunas', 'Cuti', NULL),
(401, 151881997, 2015, 'D3 KEBIDANAN', '82318070573', '0', 'Lunas', 'Lulus', NULL),
(402, 151881998, 2015, 'D3 KEBIDANAN', '81395174099', '3', 'Belum Lunas', 'Cuti', NULL),
(403, 151881999, 2015, 'D3 KEBIDANAN', '8572049462', '0', 'Lunas', 'Lulus', NULL),
(404, 1418811003, 2014, 'D3 KEBIDANAN', '81220687442', '0', 'Lunas', 'Lulus', NULL),
(405, 1418811006, 2014, 'D3 KEBIDANAN', '81214931471', '0', 'Lunas', 'Lulus', NULL),
(406, 1518811000, 2015, 'D3 KEBIDANAN', '81321854166', '0', 'Lunas', 'Lulus', NULL),
(407, 1518811001, 2015, 'D3 KEBIDANAN', '82317473089', '0', 'Lunas', 'Lulus', NULL),
(408, 1518811002, 2015, 'D3 KEBIDANAN', '895377000000', '0', 'Lunas', 'Lulus', NULL),
(409, 1518811004, 2015, 'D3 KEBIDANAN', '85864843048', '0', 'Lunas', 'Lulus', NULL),
(410, 1518821007, 2013, 'D3 KEBIDANAN', '8983042559', '0', 'Lunas', 'Lulus', NULL),
(411, 1518821008, 2013, 'D3 KEBIDANAN', '89603554355', '0', 'Lunas', 'Lulus', NULL),
(412, 1518821009, 2013, 'D3 KEBIDANAN', '87843945042', '0', 'Lunas', 'Lulus', NULL),
(413, 1518821010, 2014, 'D3 KEBIDANAN', '82219177334', '0', 'Lunas', 'Lulus', NULL),
(414, 1518821011, 2014, 'D3 KEBIDANAN', '81214775572', '0', 'Lunas', 'Lulus', NULL),
(415, 1618811012, 2016, 'D3 KEBIDANAN', '89616261594', '5', 'Lunas', 'Aktif', NULL),
(416, 1618811013, 2016, 'D3 KEBIDANAN', '85221146596', '5', 'Lunas', 'Aktif', NULL),
(417, 1618811014, 2016, 'D3 KEBIDANAN', '81224854032', '5', 'Lunas', 'Aktif', NULL),
(418, 1618811015, 2016, 'D3 KEBIDANAN', '89523759842', '5', 'Lunas', 'Aktif', NULL),
(419, 1618811016, 2016, 'D3 KEBIDANAN', '82217023215', '5', 'Lunas', 'Aktif', NULL),
(420, 1618811017, 2016, 'D3 KEBIDANAN', '81564659342', '5', 'Lunas', 'Aktif', NULL),
(421, 1618811018, 2016, 'D3 KEBIDANAN', '85813449706', '5', 'Lunas', 'Aktif', NULL),
(422, 1618811019, 2016, 'D3 KEBIDANAN', '89689320630', '1', 'Belum Lunas', 'Cuti', NULL),
(423, 1618811020, 2016, 'D3 KEBIDANAN', '89614302432', '5', 'Lunas', 'Aktif', NULL),
(424, 1618811021, 2016, 'D3 KEBIDANAN', '81297236070', '5', 'Lunas', 'Aktif', NULL),
(425, 1618811023, 2016, 'D3 KEBIDANAN', '81322822138', '5', 'Lunas', 'Aktif', NULL),
(426, 1618811024, 2016, 'D3 KEBIDANAN', '82128788343', '4', 'Belum Lunas', 'Cuti', NULL),
(427, 1618811025, 2016, 'D3 KEBIDANAN', '85795862133', '5', 'Lunas', 'Aktif', NULL),
(428, 1618811026, 2016, 'D3 KEBIDANAN', '82318470125', '5', 'Lunas', 'Aktif', NULL),
(429, 1618811027, 2016, 'D3 KEBIDANAN', '82214917910', '5', 'Lunas', 'Aktif', NULL),
(430, 1618811028, 2016, 'D3 KEBIDANAN', '81223950166', '5', 'Lunas', 'Aktif', NULL),
(431, 1618811029, 2016, 'D3 KEBIDANAN', '81280005051', '5', 'Lunas', 'Aktif', NULL),
(432, 1618811030, 2016, 'D3 KEBIDANAN', '85221617891', '5', 'Lunas', 'Aktif', NULL),
(433, 1618811031, 2016, 'D3 KEBIDANAN', '82317136136', '5', 'Lunas', 'Aktif', NULL),
(434, 1618821022, 2015, 'D3 KEBIDANAN', '85864434605', '6', 'Lunas', 'Aktif', NULL),
(435, 1718811032, 2017, 'D3 KEBIDANAN', '82316447055', '3', 'Lunas', 'Aktif', NULL),
(436, 1718811033, 2017, 'D3 KEBIDANAN', '85862588691', '3', 'Lunas', 'Aktif', NULL),
(437, 1718811034, 2017, 'D3 KEBIDANAN', '85720666226', '3', 'Lunas', 'Aktif', NULL),
(438, 1718811035, 2017, 'D3 KEBIDANAN', '82281185428', '3', 'Lunas', 'Aktif', NULL),
(439, 1718811036, 2017, 'D3 KEBIDANAN', '89686930215', '3', 'Lunas', 'Aktif', NULL),
(440, 1718811037, 2017, 'D3 KEBIDANAN', '87822571415', '3', 'Lunas', 'Aktif', NULL),
(441, 1718811038, 2017, 'D3 KEBIDANAN', '85793186556', '3', 'Lunas', 'Aktif', NULL),
(442, 1718811039, 2017, 'D3 KEBIDANAN', '81230494476', '3', 'Lunas', 'Aktif', NULL),
(443, 1718811040, 2017, 'D3 KEBIDANAN', '82315317432', '3', 'Lunas', 'Aktif', NULL),
(444, 1718811041, 2017, 'D3 KEBIDANAN', '81388805245', '3', 'Lunas', 'Aktif', NULL),
(445, 1718811042, 2017, 'D3 KEBIDANAN', '85322681897', '3', 'Lunas', 'Aktif', NULL),
(446, 1718811043, 2017, 'D3 KEBIDANAN', '82315995504', '3', 'Lunas', 'Aktif', NULL),
(447, 1718811044, 2017, 'D3 KEBIDANAN', '81221478949', '3', 'Lunas', 'Aktif', NULL),
(448, 1718811045, 2017, 'D3 KEBIDANAN', '82317333652', '3', 'Lunas', 'Aktif', NULL),
(449, 1718811046, 2017, 'D3 KEBIDANAN', '81313983133', '3', 'Lunas', 'Aktif', NULL),
(450, 1718811047, 2017, 'D3 KEBIDANAN', '85724471242', '2', 'Belum Lunas', 'Cuti', NULL),
(451, 1718811049, 2017, 'D3 KEBIDANAN', '82117205346', '3', 'Lunas', 'Aktif', NULL),
(452, 1718811050, 2017, 'D3 KEBIDANAN', '0', '2', 'Belum Lunas', 'Cuti', NULL),
(453, 1718821048, 2015, 'D3 KEBIDANAN', '89670800647', '0', 'Lunas', 'Lulus', NULL),
(454, 1818811053, 2018, 'D3 KEBIDANAN', '81394567517', '1', 'Lunas', 'Aktif', NULL),
(455, 1818811054, 2018, 'D3 KEBIDANAN', '85871001401', '1', 'Lunas', 'Aktif', NULL),
(456, 1818811055, 2018, 'D3 KEBIDANAN', '83148596641', '1', 'Lunas', 'Aktif', NULL),
(457, 1818811056, 2018, 'D3 KEBIDANAN', '85861613769', '1', 'Lunas', 'Aktif', NULL),
(458, 1818811057, 2018, 'D3 KEBIDANAN', '81511810745', '1', 'Lunas', 'Aktif', NULL),
(459, 1818811058, 2018, 'D3 KEBIDANAN', '87727665593', '1', 'Lunas', 'Aktif', NULL),
(460, 1818811059, 2018, 'D3 KEBIDANAN', '87828475766', '1', 'Lunas', 'Aktif', NULL),
(461, 1818811060, 2018, 'D3 KEBIDANAN', '82116568061', '1', 'Lunas', 'Aktif', NULL),
(462, 2147483647, 2010, 'D3 KEBIDANAN', '85221422019', '0', 'Lunas', 'Lulus', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matakuliah` varchar(100) NOT NULL,
  `nama_matakuliah` varchar(100) DEFAULT NULL,
  `jumlah_sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matakuliah`, `nama_matakuliah`, `jumlah_sks`) VALUES
('BD102A', 'PENDIDIKAN AGAMA', 2),
('BD102C', 'PENDIDIKAN AGAMA', 3),
('BD103', 'PENDIDIKAN KEWARGANEGARAAN', 2),
('BD103B', 'PENDIDIKAN KEWARGANEGARAAN', 3),
('BD104', 'BAHASA INGGRIS', 2),
('BD105', 'BAHASA INDONESIA', 2),
('BD105B', 'BAHASA INDONESIA', 3),
('BD201', 'ANATOMI', 2),
('BD201B', 'ANATOMI FISIOLOGI', 2),
('BD202', 'FISIOLOGI', 2),
('BD203', 'BIOLOGI REPRODUKSI', 2),
('BD203B', 'BIOLOGI DASAR & BIOLOGI PERKEMBANGAN', 4),
('BD204', 'BIOKIMIA', 2),
('BD205', 'FISIKA KESEHATAN', 2),
('BD206', 'FARMAKOLOGI', 2),
('BD207', 'MIKROBIOLOGI', 2),
('BD208', 'KETERAMPILAN DASAR PRAKTIK KLINIK (KDPK)', 2),
('BD208B', 'KETERAMPILAN DASAR KEBIDANAN I', 3),
('BD208C', 'KETERAMPILAN DASAR KEBIDANAN II', 3),
('BD209', 'OBSTETRI', 2),
('BD209B', 'OBSTETRI GINEKOLOGI', 2),
('BD210', 'GINEKOLOGI', 2),
('BD211', 'ILMU KESEHATAN ANAK', 2),
('BD212', 'GIZI DALAM KESEHATAN REPRODUKSI', 2),
('BD213A', 'PSIKOLOGI', 2),
('BD213B', 'PSIKIATRI', 1),
('BD214A', 'EPIDEMIOLOGI', 2),
('BD214B', 'PATOFISIOLOGI', 1),
('BD215', 'BIOSTATISTIK', 2),
('BD216A', 'LABORATORIUM KOMPUTER 1', 1),
('BD216B', 'LABORATORIUM BAHASA', 1),
('BD216C', 'LABORATORIUM BAHASA', 2),
('BD217', 'LABORATORIUM KOMPUTER', 2),
('BD301', 'ASUHAN KEBIDANAN I ', 4),
('BD301B', 'ASUHAN KEBIDANAN KEHAMILAN', 5),
('BD302', 'ASUHAN KEBIDANAN II ', 4),
('BD302B', 'ASUHAN KEBIDANAN PERSALINAN DAN BAYI BARU LAHIR', 5),
('BD303', 'ASUHAN KEBIDANAN III ', 2),
('BD303B', 'ASUHAN KEBIDANAN NIFAS & MENYUSUI', 3),
('BD304A', 'ASUHAN KEBIDANAN IV PART. 1', 3),
('BD304B', 'ASUHAN KEBIDANAN IV PART. 2', 2),
('BD305', 'ASUHAN KEBIDANAN V ', 4),
('BD305B', 'ASUHAN KEBIDANAN KOMUNITAS', 4),
('BD305C', 'ASUHAN KEBIDANAN KOMUNITAS', 3),
('BD306', 'ASUHAN NEONATUS, BAYI DAN ANAK BALITA', 4),
('BD306B', 'ASUHAN KEBIDANAN NEONATUS, BAYI, BALITA DAN ANAK PRA SEKOLAH', 5),
('BD307', 'KESEHATAN REPRODUKSI', 2),
('BD307B', 'KESEHATAN REPRODUKSI DAN KELUARGA BERENCANA', 4),
('BD307C', 'KESEHATAN PEREMPUAN & PERENCANAAN KELUARGA', 4),
('BD308', 'PELAYANAN KELUARGA BERENCANA', 3),
('BD309', 'DOKUMENTASI KEBIDANAN', 2),
('BD310A', 'PRAKTIK KLINIK KEBIDANAN I', 3),
('BD310B', 'PRAKTIK KLINIK KEBIDANAN II', 4),
('BD310C', 'PRAKTIK KLINIK KEBIDANAN III', 6),
('BD311', 'PRAKTIK KDPK', 1),
('BD312', 'PRAKTIK BELAJAR LAPANGAN', 2),
('BD313', 'ASUHAN  KEGAWATDARURATAN MATERNAL DAN NEONATAL', 4),
('BD314', 'PRAKTIK KEBIDANAN I ', 6),
('BD315', 'PRAKTIK KEBIDANAN II', 6),
('BD316A', 'PRAKTIK KLINIK KEBIDANAN III GELOMBANG 1', 4),
('BD316B', 'PRAKTIK KLINIK KEBIDANAN III GELOMBANG 2', 4),
('BD317', 'PRAKTIK KLINIK KEBIDANAN III ', 8),
('BD318', 'PRAKTIK KLINIK KEBIDANAN I', 7),
('BD319', 'PRAKTIK KLINIK KEBIDANAN II A', 7),
('BD319B', 'PRAKTIK KLINIK KEBIDANAN II B', 7),
('BD320', 'PRAKTIK KEBIDANAN KOMUNITAS', 2),
('BD401', 'KONSEP KEBIDANAN', 4),
('BD402', 'ETIKA PROFESI & HUKUM KESEHATAN', 2),
('BD402B', 'ETIKOLEGAL DALAM PRAKTIK KEBIDANAN', 2),
('BD403A', 'KOMUNIKASI & KONSELING (KIP/K)', 2),
('BD403C', 'KOMUNIKASI DALAM PRAKTIK KEBIDANAN', 3),
('BD404', 'MUTU PELAYANAN KEBIDANAN', 2),
('BD404B', 'MUTU LAYANAN KEBIDANAN DAN KEBIJAKAN KESEHATAN', 3),
('BD405', 'METODOLOGI PENELITIAN', 2),
('BD405B', 'METODE PENELITIAN DAN STATISTIK DASAR', 3),
('BD406', 'KARYA TULIS ILMIAH', 3),
('BD406B', 'LAPORAN TUGAS AKHIR', 3),
('BD501', 'ILMU KESEHATAN MASYARAKAT', 2),
('BD501B', 'KESEHATAN MASYARAKAT', 4),
('BD502A', 'ILMU SOSIAL DASAR', 2),
('BD502B', 'ILMU ALAMIAH DASAR', 2),
('BD502C', 'ILMU SOSIAL DAN BUDAYA DASAR', 3),
('BD503', 'PROMOSI KESEHATAN', 2),
('BD504A', 'ORGANISASI & MANAJEMEN PELAYANAN KESEHATAN', 2),
('BD504B', 'KEWIRAUSAHAAN', 2);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah_mahasiswa`
--

CREATE TABLE `matakuliah_mahasiswa` (
  `id_mk_mhs` int(11) NOT NULL,
  `id_kurikulum` int(100) NOT NULL,
  `nomor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah_mahasiswa`
--

INSERT INTO `matakuliah_mahasiswa` (`id_mk_mhs`, `id_kurikulum`, `nomor_id`, `created_at`, `updated_at`) VALUES
(1, 43, 101881531, '2018-11-24 03:05:58', '2018-11-24 03:05:58'),
(2, 43, 101881541, '2018-11-24 03:05:58', '2018-11-24 03:05:58'),
(3, 43, 101881544, '2018-11-24 03:05:58', '2018-11-24 03:05:58'),
(4, 35, 111881659, '2018-11-24 03:05:59', '2018-11-24 03:05:59'),
(5, 36, 111881664, '2018-11-24 03:05:59', '2018-11-24 03:05:59'),
(6, 35, 111881665, '2018-11-24 03:05:59', '2018-11-24 03:05:59'),
(7, 35, 111881671, '2018-11-24 03:05:59', '2018-11-24 03:05:59'),
(8, 36, 111881674, '2018-11-24 03:05:59', '2018-11-24 03:05:59'),
(9, 37, 111881679, '2018-11-24 03:05:59', '2018-11-24 03:05:59'),
(10, 32, 121881754, '2018-11-24 03:06:00', '2018-11-24 03:06:00'),
(11, 32, 121881774, '2018-11-24 03:06:00', '2018-11-24 03:06:00'),
(12, 31, 121881784, '2018-11-24 03:06:00', '2018-11-24 03:06:00'),
(13, 32, 121881785, '2018-11-24 03:06:00', '2018-11-24 03:06:00'),
(14, 32, 121881815, '2018-11-24 03:06:00', '2018-11-24 03:06:00'),
(15, 32, 121881838, '2018-11-24 03:06:01', '2018-11-24 03:06:01'),
(16, 28, 131881846, '2018-11-24 03:06:01', '2018-11-24 03:06:01'),
(17, 23, 131881880, '2018-11-24 03:06:01', '2018-11-24 03:06:01'),
(18, 24, 131881886, '2018-11-24 03:06:01', '2018-11-24 03:06:01'),
(19, 17, 131881891, '2018-11-24 03:06:01', '2018-11-24 03:06:01'),
(20, 21, 141881943, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(21, 20, 141881946, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(22, 19, 141881947, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(23, 19, 141881951, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(24, 21, 141881957, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(25, 17, 141881958, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(26, 16, 151881990, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(27, 16, 151881996, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(28, 13, 151881998, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(29, 10, 1618811012, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(30, 10, 1618811013, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(31, 10, 1618811014, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(32, 10, 1618811015, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(33, 10, 1618811016, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(34, 10, 1618811017, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(35, 10, 1618811018, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(36, 6, 1618811019, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(37, 10, 1618811020, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(38, 10, 1618811021, '2018-11-24 03:06:02', '2018-11-24 03:06:02'),
(39, 10, 1618811023, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(40, 9, 1618811024, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(41, 10, 1618811025, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(42, 10, 1618811026, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(43, 10, 1618811027, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(44, 10, 1618811028, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(45, 10, 1618811029, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(46, 10, 1618811030, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(47, 10, 1618811031, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(48, 5, 1718811032, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(49, 5, 1718811033, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(50, 5, 1718811034, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(51, 5, 1718811035, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(52, 5, 1718811036, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(53, 5, 1718811037, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(54, 5, 1718811038, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(55, 5, 1718811039, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(56, 5, 1718811040, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(57, 5, 1718811041, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(58, 5, 1718811042, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(59, 5, 1718811043, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(60, 5, 1718811044, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(61, 5, 1718811045, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(62, 5, 1718811046, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(63, 4, 1718811047, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(64, 5, 1718811049, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(65, 4, 1718811050, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(66, 47, 1818811053, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(67, 47, 1818811054, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(68, 47, 1818811055, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(69, 47, 1818811056, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(70, 47, 1818811057, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(71, 47, 1818811058, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(72, 47, 1818811059, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(73, 47, 1818811060, '2018-11-24 03:06:03', '2018-11-24 03:06:03'),
(74, 16, 1618821022, '2018-11-25 15:50:21', '2018-11-25 15:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mahasiswa`
--

CREATE TABLE `nilai_mahasiswa` (
  `id_nilai_mahasiswa` int(11) NOT NULL,
  `kode_matakuliah` varchar(100) NOT NULL,
  `nama_matakuliah` varchar(150) NOT NULL,
  `nomor_id` int(11) NOT NULL,
  `nilai` varchar(45) DEFAULT NULL,
  `angka` int(11) DEFAULT NULL,
  `jumlah_sks` int(11) NOT NULL,
  `angkatan` varchar(15) NOT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_mahasiswa`
--

INSERT INTO `nilai_mahasiswa` (`id_nilai_mahasiswa`, `kode_matakuliah`, `nama_matakuliah`, `nomor_id`, `nilai`, `angka`, `jumlah_sks`, `angkatan`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'BD102C', 'Pendidikan Agama', 1718811038, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'BD105B', 'Bahasa Indonesia', 1718811038, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'BD201B', 'Anatomi Fisiologi', 1718811038, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811038, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811038, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'BD401', 'Konsep Kebidanan', 1718811038, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811038, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'BD102C', 'Pendidikan Agama', 1718811039, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'BD105B', 'Bahasa Indonesia', 1718811039, 'C', 2, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BD201B', 'Anatomi Fisiologi', 1718811039, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811039, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811039, 'C', 2, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BD401', 'Konsep Kebidanan', 1718811039, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811039, 'A', 4, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BD102C', 'Pendidikan Agama', 1718811032, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BD105B', 'Bahasa Indonesia', 1718811032, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BD201B', 'Anatomi Fisiologi', 1718811032, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811032, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811032, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BD401', 'Konsep Kebidanan', 1718811032, 'A', 4, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811032, 'A', 4, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BD102C', 'Pendidikan Agama', 1718811037, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BD105B', 'Bahasa Indonesia', 1718811037, 'C', 2, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'BD201B', 'Anatomi Fisiologi', 1718811037, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811037, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811037, 'C', 2, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BD401', 'Konsep Kebidanan', 1718811037, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811037, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'BD102C', 'Pendidikan Agama', 1718811040, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'BD105B', 'Bahasa Indonesia', 1718811040, 'C', 2, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'BD201B', 'Anatomi Fisiologi', 1718811040, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811040, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811040, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'BD401', 'Konsep Kebidanan', 1718811040, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811040, 'A', 4, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'BD102C', 'Pendidikan Agama', 1718811035, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'BD105B', 'Bahasa Indonesia', 1718811035, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'BD201B', 'Anatomi Fisiologi', 1718811035, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811035, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811035, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'BD401', 'Konsep Kebidanan', 1718811035, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811035, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'BD102C', 'Pendidikan Agama', 1718811033, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'BD105B', 'Bahasa Indonesia', 1718811033, 'C', 2, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'BD201B', 'Anatomi Fisiologi', 1718811033, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811033, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811033, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'BD401', 'Konsep Kebidanan', 1718811033, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811033, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'BD102C', 'Pendidikan Agama', 1718811034, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'BD105B', 'Bahasa Indonesia', 1718811034, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'BD201B', 'Anatomi Fisiologi', 1718811034, 'A', 4, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811034, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811034, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'BD401', 'Konsep Kebidanan', 1718811034, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811034, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'BD102C', 'Pendidikan Agama', 1718811036, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'BD105B', 'Bahasa Indonesia', 1718811036, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'BD201B', 'Anatomi Fisiologi', 1718811036, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811036, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811036, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'BD401', 'Konsep Kebidanan', 1718811036, 'A', 4, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811036, 'A', 4, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'BD102C', 'Pendidikan Agama', 1718811041, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'BD105B', 'Bahasa Indonesia', 1718811041, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'BD201B', 'Anatomi Fisiologi', 1718811041, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811041, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811041, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'BD401', 'Konsep Kebidanan', 1718811041, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811041, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'BD102C', 'Pendidikan Agama', 1718811042, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'BD105B', 'Bahasa Indonesia', 1718811042, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'BD201B', 'Anatomi Fisiologi', 1718811042, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811042, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811042, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'BD401', 'Konsep Kebidanan', 1718811042, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811042, 'A', 4, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'BD102C', 'Pendidikan Agama', 1718811043, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'BD105B', 'Bahasa Indonesia', 1718811043, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'BD201B', 'Anatomi Fisiologi', 1718811043, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811043, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811043, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'BD401', 'Konsep Kebidanan', 1718811043, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811043, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'BD102C', 'Pendidikan Agama', 1718811044, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'BD105B', 'Bahasa Indonesia', 1718811044, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'BD201B', 'Anatomi Fisiologi', 1718811044, 'A', 4, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811044, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811044, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'BD401', 'Konsep Kebidanan', 1718811044, 'B', 3, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811044, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'BD102C', 'Pendidikan Agama', 1718811045, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'BD105B', 'Bahasa Indonesia', 1718811045, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'BD201B', 'Anatomi Fisiologi', 1718811045, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811045, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811045, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'BD401', 'Konsep Kebidanan', 1718811045, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811045, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'BD102C', 'Pendidikan Agama', 1718811046, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'BD105B', 'Bahasa Indonesia', 1718811046, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'BD201B', 'Anatomi Fisiologi', 1718811046, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811046, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811046, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'BD401', 'Konsep Kebidanan', 1718811046, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811046, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'BD102C', 'Pendidikan Agama', 1718811047, 'A', 4, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'BD105B', 'Bahasa Indonesia', 1718811047, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'BD201B', 'Anatomi Fisiologi', 1718811047, 'C', 2, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'BD203B', 'Biologi Dasar & Biologi Perkembangan', 1718811047, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'BD208B', 'Keterampilan Dasar Kebidanan I', 1718811047, 'B', 3, 3, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'BD401', 'Konsep Kebidanan', 1718811047, 'C', 2, 4, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'BD402B', 'Etikolegal dalam Praktik Kebidanan', 1718811047, 'B', 3, 2, '2017', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811038, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'BD213A', 'Psikologi', 1718811038, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811038, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'BD206', 'Farmakologi', 1718811038, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'BD309', 'Dokumentasi Kebidanan', 1718811038, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811038, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811038, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'BD211', 'Ilmu Kesehatan Anak', 1718811038, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'BD312', 'Praktik Belajar Lapangan', 1718811038, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811039, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'BD213A', 'Psikologi', 1718811039, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811039, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'BD206', 'Farmakologi', 1718811039, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'BD309', 'Dokumentasi Kebidanan', 1718811039, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811039, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811039, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'BD211', 'Ilmu Kesehatan Anak', 1718811039, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'BD312', 'Praktik Belajar Lapangan', 1718811039, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811032, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'BD213A', 'Psikologi', 1718811032, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811032, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'BD206', 'Farmakologi', 1718811032, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'BD309', 'Dokumentasi Kebidanan', 1718811032, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811032, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811032, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'BD211', 'Ilmu Kesehatan Anak', 1718811032, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'BD312', 'Praktik Belajar Lapangan', 1718811032, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811037, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'BD213A', 'Psikologi', 1718811037, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811037, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'BD206', 'Farmakologi', 1718811037, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'BD309', 'Dokumentasi Kebidanan', 1718811037, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811037, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811037, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'BD211', 'Ilmu Kesehatan Anak', 1718811037, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'BD312', 'Praktik Belajar Lapangan', 1718811037, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811040, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'BD213A', 'Psikologi', 1718811040, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811040, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'BD206', 'Farmakologi', 1718811040, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'BD309', 'Dokumentasi Kebidanan', 1718811040, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811040, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811040, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'BD211', 'Ilmu Kesehatan Anak', 1718811040, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'BD312', 'Praktik Belajar Lapangan', 1718811040, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811035, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'BD213A', 'Psikologi', 1718811035, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811035, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'BD206', 'Farmakologi', 1718811035, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'BD309', 'Dokumentasi Kebidanan', 1718811035, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811035, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811035, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'BD211', 'Ilmu Kesehatan Anak', 1718811035, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'BD312', 'Praktik Belajar Lapangan', 1718811035, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811033, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'BD213A', 'Psikologi', 1718811033, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811033, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'BD206', 'Farmakologi', 1718811033, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'BD309', 'Dokumentasi Kebidanan', 1718811033, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811033, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811033, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'BD211', 'Ilmu Kesehatan Anak', 1718811033, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'BD312', 'Praktik Belajar Lapangan', 1718811033, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811034, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'BD213A', 'Psikologi', 1718811034, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811034, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'BD206', 'Farmakologi', 1718811034, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'BD309', 'Dokumentasi Kebidanan', 1718811034, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811034, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811034, 'C', 2, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'BD211', 'Ilmu Kesehatan Anak', 1718811034, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'BD312', 'Praktik Belajar Lapangan', 1718811034, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811036, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'BD213A', 'Psikologi', 1718811036, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811036, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'BD206', 'Farmakologi', 1718811036, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'BD309', 'Dokumentasi Kebidanan', 1718811036, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811036, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811036, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'BD211', 'Ilmu Kesehatan Anak', 1718811036, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'BD312', 'Praktik Belajar Lapangan', 1718811036, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811042, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'BD213A', 'Psikologi', 1718811042, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811042, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'BD206', 'Farmakologi', 1718811042, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'BD309', 'Dokumentasi Kebidanan', 1718811042, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811042, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811042, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'BD211', 'Ilmu Kesehatan Anak', 1718811042, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'BD312', 'Praktik Belajar Lapangan', 1718811042, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811046, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'BD213A', 'Psikologi', 1718811046, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811046, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'BD206', 'Farmakologi', 1718811046, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'BD309', 'Dokumentasi Kebidanan', 1718811046, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811046, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811046, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'BD211', 'Ilmu Kesehatan Anak', 1718811046, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'BD312', 'Praktik Belajar Lapangan', 1718811046, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811041, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'BD213A', 'Psikologi', 1718811041, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811041, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'BD206', 'Farmakologi', 1718811041, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'BD309', 'Dokumentasi Kebidanan', 1718811041, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811041, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811041, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'BD211', 'Ilmu Kesehatan Anak', 1718811041, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'BD312', 'Praktik Belajar Lapangan', 1718811041, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811045, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'BD213A', 'Psikologi', 1718811045, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811045, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'BD206', 'Farmakologi', 1718811045, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'BD309', 'Dokumentasi Kebidanan', 1718811045, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811045, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811045, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'BD211', 'Ilmu Kesehatan Anak', 1718811045, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'BD312', 'Praktik Belajar Lapangan', 1718811045, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811043, 'B', 3, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'BD213A', 'Psikologi', 1718811043, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811043, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'BD206', 'Farmakologi', 1718811043, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'BD309', 'Dokumentasi Kebidanan', 1718811043, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811043, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811043, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'BD211', 'Ilmu Kesehatan Anak', 1718811043, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'BD312', 'Praktik Belajar Lapangan', 1718811043, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811049, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'BD213A', 'Psikologi', 1718811049, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811049, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'BD206', 'Farmakologi', 1718811049, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'BD309', 'Dokumentasi Kebidanan', 1718811049, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811049, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811049, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'BD211', 'Ilmu Kesehatan Anak', 1718811049, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'BD312', 'Praktik Belajar Lapangan', 1718811049, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'BD103B', 'Pendidikan Kewarganegaraan', 1718811044, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'BD213A', 'Psikologi', 1718811044, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'BD208B', 'Keterampilan Dasar Kebidanan II', 1718811044, 'A', 4, 3, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'BD206', 'Farmakologi', 1718811044, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'BD309', 'Dokumentasi Kebidanan', 1718811044, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'BD403A', 'Komunikasi & Konseling (KIP/K)', 1718811044, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'BD212', 'Gizi dalam Kesehatan Reproduksi', 1718811044, 'B', 3, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'BD211', 'Ilmu Kesehatan Anak', 1718811044, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'BD312', 'Praktik Belajar Lapangan', 1718811044, 'A', 4, 2, '2017', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'BD502A', 'ILMU SOSIAL DASAR', 1718811032, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(258, 'BD502A', 'ILMU SOSIAL DASAR', 1718811033, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(259, 'BD502A', 'ILMU SOSIAL DASAR', 1718811034, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(260, 'BD502A', 'ILMU SOSIAL DASAR', 1718811035, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(261, 'BD502A', 'ILMU SOSIAL DASAR', 1718811036, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(262, 'BD502A', 'ILMU SOSIAL DASAR', 1718811037, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(263, 'BD502A', 'ILMU SOSIAL DASAR', 1718811038, 'B', 6, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(264, 'BD502A', 'ILMU SOSIAL DASAR', 1718811039, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(265, 'BD502A', 'ILMU SOSIAL DASAR', 1718811040, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(266, 'BD502A', 'ILMU SOSIAL DASAR', 1718811041, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(267, 'BD502A', 'ILMU SOSIAL DASAR', 1718811042, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(268, 'BD502A', 'ILMU SOSIAL DASAR', 1718811043, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(269, 'BD502A', 'ILMU SOSIAL DASAR', 1718811044, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(270, 'BD502A', 'ILMU SOSIAL DASAR', 1718811045, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(271, 'BD502A', 'ILMU SOSIAL DASAR', 1718811046, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44'),
(272, 'BD502A', 'ILMU SOSIAL DASAR', 1718811049, 'BL', 0, 2, '2017', '3', '2018-11-25 13:48:44', '2018-11-25 13:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `judul_penelitian` varchar(150) DEFAULT NULL,
  `dosen_anggota_1` int(11) DEFAULT NULL,
  `dosen_anggota_2` int(11) DEFAULT NULL,
  `nama_institusi_mitra` varchar(100) NOT NULL,
  `alamat_institusi` varchar(100) NOT NULL,
  `penanggung_jawab` varchar(100) NOT NULL,
  `tahun_pelaksanaan` varchar(100) NOT NULL,
  `biaya_tahun_berjalan` int(11) NOT NULL,
  `biaya_keseluruhan` int(11) NOT NULL,
  `mengetahui` int(11) NOT NULL,
  `menyetujui` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengabdian`
--

CREATE TABLE `pengabdian` (
  `id_pengabdian` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `judul_pengabdian` varchar(150) NOT NULL,
  `dosen_anggota_1` int(11) DEFAULT NULL,
  `dosen_anggota_2` int(11) DEFAULT NULL,
  `nama_institusi_mitra` varchar(100) DEFAULT NULL,
  `alamat_institusi` varchar(100) NOT NULL,
  `penanggung_jawab` varchar(100) NOT NULL,
  `tahun_pelaksanaan` varchar(100) NOT NULL,
  `biaya_tahun_berjalan` int(11) NOT NULL,
  `biaya_keseluruhan` int(11) NOT NULL,
  `mengetahui` int(11) NOT NULL,
  `menyetujui` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `konten` text NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul`, `konten`, `status`) VALUES
(5, '\" SELAMAT DATANG MAHASISWA BARU TAHUN AKADEMIK 2018 / 2019 \"', '<span><h1><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </i><u><i>SELAMAT !!!</i></u><br></h1><br></span><span>KEPADA SELURUH MAHASISWA YANG TELAH DINYATAKAN LULUS DAN MELAKUKAN REGISTRASI, SILAHKAN DATANG LANGSUNG KE KAMPUS AKADEMI KEBIDANAN AR-RAHMAH BANDUNG PADA HARI KAMIS TANGGAL 4 OKTOBER 2018 PUKUL 07.30 WIB YANG BERALAMATKAN DI JL. PASTEUR NO. 21A BANDUNG . PAKAIAN YANG DIKENAKAN BEBAS, RAPIH DAN SOPAN (TIDAK BOLEH MENGGUNAKAN CELANA JEANS DAN SANDAL) SERTA MEMBAWA ALAT TULIS. <br></span><br>BESAR HARAPAN KAMI AGAR ANDA DAPAT MENJADI MAHASISWA YANG BERPRESTASI DI AKADEMIK DAN KELAK MENJADI BIDAN PROFESIONAL SESUAI DENGAN VISI DAN MISI KAMI AKADEMI KEBIDANAN AR-RAHMAH BANDUNG.<br><br>SEKALI LAGI KAMI UCAPKAN SELAMAT DATANG DAN SELAMAT BERGABUNG DI AKADEMI KEBIDANAN AR-RAHMAH BANDUNG.<br><span>note : mahasiswa yang sudah registrasi sudah dihubungi oleh pihak kampus terlebih dahulu.<br></span><br>', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE `polling` (
  `id_polling` int(11) NOT NULL,
  `nama_polling` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_polling`, `nama_polling`) VALUES
(3, 'Kepuasan Dosen'),
(4, 'Kepuasan Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `transkrip_akhir`
--

CREATE TABLE `transkrip_akhir` (
  `id_transkrip_akhir` int(11) NOT NULL,
  `nomor_id` int(11) NOT NULL,
  `gelar_akademik` varchar(100) NOT NULL,
  `tanggal_kelulusan` varchar(50) NOT NULL,
  `judul_karya_tulis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transkrip_akhir`
--

INSERT INTO `transkrip_akhir` (`id_transkrip_akhir`, `nomor_id`, `gelar_akademik`, `tanggal_kelulusan`, `judul_karya_tulis`) VALUES
(1, 131881846, 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nomor_id` int(11) NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `nama_lengkap` varchar(60) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` varchar(45) DEFAULT NULL,
  `status_user` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nomor_id`, `password`, `nama_lengkap`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `status_user`) VALUES
(8080, '$2y$10$BndIiNIQ4rIx/.NcVatMv.szECH6wT1VxXR1kQDn5NC5PnP7ekl0m', 'Pimpinan', NULL, NULL, NULL, '4'),
(14022, '$2y$10$BndIiNIQ4rIx/.NcVatMv.szECH6wT1VxXR1kQDn5NC5PnP7ekl0m', 'Admin LPM', 'Pondok Girimande B7 no 5', '', '1993-07-12', '2'),
(14045, '$2y$10$DeAYd3u.No7M4zPfHqG1qOf6FCqmm1a0ZAYk3aT2S.Zdo4At4180G', 'admin', 'Pondok Girimande B7 no 5', '', '1993-03-15', '1'),
(221116, '$2y$10$v5yKHNyxjPnPoJ4Ij3V/T.798gO/N8AgmXldEDnE3EL1FS3udGhQm', 'Nurmala', 'Jl. Sukajadi ', 'Bandung', '05-01-1989', '1'),
(101881492, '$2y$10$unaMsb5.3gZ2MXAFPaux2uY4dbZoj909IsjCQJ7fBSdFZHhlsM0eK', 'IMAS ROHIMAS', 'Kp. Babakan Anyar Rt.01 Rw.10 Ds./Kec. Pangalengan Kab.Bandung.', 'BANDUNG', '20 Mei 1991', '3'),
(101881493, '$2y$10$RTeoo4UAD9t4Y/5E/YEOs.s6CMYMpNUzQvbIjdOPUXYaJOi8/UMDi', 'NURJANAH', 'Kp. Cisomang Rt.01 Rw.07 Desa Wangunjaya, Kec. Cikalong \n\nWetan Kab.Bandung Barat.', 'BANDUNG', '6 Juni 1991', '3'),
(101881494, '$2y$10$HokiG8XlKu2DYnAL/3bxmuWId2MY1VVEEbXC1RHy5jIXfw4u5IBle', 'ERNA HERNAWATI', 'Kp. Muara Ciawi Rt.01 Rw.08 Desa Cimahi Kec.Caringin\n\nKab.Garut.', 'GARUT', '1 Desember 1993', '3'),
(101881495, '$2y$10$gENLTS2YgyBTm7FOCa8hOOjEibOlmAv9Y/irk97PctvEN9U6ooG3y', 'ROSIDAH', 'Batu Hitam Rt.05 Rw.03 Kel.Ranai Kota, Kec. Bunguran Timur Kab.Natuna. ', 'PIABUNG', '8 Agustus 1987', '3'),
(101881496, '$2y$10$Ik0O8kATxL90Fxa6ixIYNeUWL0HptP0yuIJfCAagfuV7NW4Lz216e', 'MARISA', '0', 'BEKASI', '7 Januari 1993', '3'),
(101881497, '$2y$10$lcp8/olmH.l1nQGcPeTPF.nRC4nrYhriEUW8eNyjs5.YqJh5l8sbi', 'ATIK YOHANAH', 'Dusun Anggaraksan RT.31/ RW.13 Desa Maruyungsari Kec. Padaherang, Kab. Ciamis. ', 'PADAHERANG', '6 Juli 1992', '3'),
(101881498, '$2y$10$WL5XpW38f23Du7gT48Va4ufT7k0jcgr0XIPTan3rJAPc/Cb8FnaV2', 'SRI PURWANTI', '0', 'PANGKAL PINANG', '5 Maret 1993', '3'),
(101881499, '$2y$10$CxcsJ1xlCXFuN3ibna.YN.uhnmA14txGgag4Lou4LrzaSKTvgTaDm', 'PIA SUSILAWATI', '0', 'BANDUNG', '9 Januari 1991', '3'),
(101881500, '$2y$10$0cduDBFr6DNZw2MvDJ7yEumviYjv44/6lLyYtTdcltly9yGtR/6vC', 'ITA ROSITA', '0', 'GARUT', '10 Juli 1992', '3'),
(101881501, '$2y$10$.nIPCbuvqcAXYywgH4iwT.3Ob1aRF7F.9XHqbDgyVONzg32BgZ5Z2', 'SHELLY HERLIANTI', 'Jl. Panelly I No.18/106 Rt.05 Rw.04 Cimahi.', 'BANDUNG', '08 Agustus 1992', '3'),
(101881502, '$2y$10$qpQtynHARmBgjRsmPDDNhOtHAjkCliqzsUHbLcmt32MVSCHsYxWEm', 'MELDA DESMIYANTI', '0', 'ANJATAN', '16 Desember 1992', '3'),
(101881503, '$2y$10$kcUbdjylGVpzmCd3EU46LuA/lCQu60MJ0e38ztEu0UGlRWZ56U892', 'RINI NAVIA', 'Ds.Airlinang Kec.Tempilang Kab.Bangka Barat Bangka Belitung. ', 'TEMPILANG', '4-Nov-92', '3'),
(101881504, '$2y$10$sWnffbXgI8aS0Fsu6/tAo.wFbLxrV2PmNOpY6yhMNW.afjMdAIwx.', 'ROSMIATI', 'Jl. Ciwastra Bodogol No.37 Rt.3 Rw.3 Kel. Mekarjaya Kec. Rancasari-Bandung', 'BANDUNG', '11 Juni 1992', '3'),
(101881505, '$2y$10$SWfzmS.9KZz85fhw3jdB/..OUW.xzYe3KXmCNj0oonfx5Yr1Q0ZhC', 'IRNA SOFIANA', 'Jl. Terusan Cimuncang No.95 Rt.03 Rw.03 Pasir Leutik Kel. \n\nPadasuka, Kec.Cimeunyan, Bandung.', 'BANDUNG', '16-Nov-91', '3'),
(101881506, '$2y$10$jtZ0K2S0DOTdU8p3K1mGI.JLXO/OG4ThLFdOt82l0IJ6.WsGEnYsm', 'NABILA HAFSYAH SAFDA', 'Perum Dokagu Uir, Blok A No.33 Marpoyan Pekanbaru-Riau. ', 'PEKANBARU', '14 Januari 1992', '3'),
(101881507, '$2y$10$diglZNzbjeu1WVKOuO/mAuDcTKLPFBPk4UvI5uC7XgYFTpbBG/aR2', 'KARTIKA PUTRI', '0', 'BANDUNG', '11 Mei 1992', '3'),
(101881508, '$2y$10$wzIn3qfYvwQBU.fEgHAP.eqNekFsOAeZjs42hCLETymHsNDhudqUu', 'YUNITA ALYASARI', 'Jl. Rancakole No.5 Rt.02 Rw.04 Ds. Sagaracipta Kec.Ciparay \n\nBandung-Jawa Barat.\n\n', 'BANDUNG', '3 Juni 1993', '3'),
(101881509, '$2y$10$9DuPNcQSAlU.jKZUKeqiDuESPe/sio2NL37pEVE/CrtChwdPvRoq2', 'INA MARLINA', 'Kp. Pagauban Rt.02 Rw.12 Ds. Padasuka, Kutawaringin Kab.Bandung. ', 'SOREANG', '4 Agustus 1993', '3'),
(101881510, '$2y$10$oF9f29OFerlQj2TTm6Bpn.rAfPCg8nx0De9hrmfOIOrSGAZWEkTBK', 'RAHMI FITRIYANI', 'Kp. Tanjung Laya No.9 Rt.01 Rw.05 Ds.Sarimahi Kec. Ciparay  \n\nKab.Bandung.', 'BANDUNG', '1-Apr-92', '3'),
(101881511, '$2y$10$tto2F9PT.2rN.teTfbkoi.p1TFdAcbi1v229shG9/8lOfKzk7FP/C', 'NIDYA PUJIANTI UTAMI', 'Komp.WPA B-5 Sukaraja I Rt.1 Rw.1 Kel.Husein Sastranegara \n\nKec.Cicendo-Bandung.', 'BANDUNG', '18 Oktober 1992', '3'),
(101881512, '$2y$10$PG0J.OJSs4LGCENkAXen0.RK0sS6syeQsOpH70CR0ygWiV7wu7fty', 'YULIA ALFIAH', 'Komp.Permata Cimahi Blok 11 No.9 Rt.7 Rw.14 Ds.Tanimulya Kec.Ngamprah-Cimahi.', 'BANDUNG', '16 Juli 1991', '3'),
(101881513, '$2y$10$kAcTif7wfMtJH4qM/JwxyectQjcoHoftg921f3CNqZP7zbGGynzzW', 'WINDA MELASARI', '0', 'CIANJUR', '21 Mei 1992', '3'),
(101881514, '$2y$10$EEeBMBy7q.ro6xahtIIQkumXCR9vOMmvviB4aDxpbtsupUa5vwnYq', 'ELIS HOLISOH', 'Jl. Cijerah, Gg. Mekarsari 2 Rt.07 Rw.04 Bandung.', 'CIGAMBUL', '30 Oktober 1991', '3'),
(101881515, '$2y$10$Q9XDNYr34YRGgd/nkziX3OuHm/9v8wzlg/MPCBL9XHWqJj.2ztjmq', 'SRI MARYAM SARAH', '0', 'BANDUNG', '3 Maret 1993', '3'),
(101881516, '$2y$10$i92T.w9H23BZ72eaVyKC8uRPODBg8/ifvZfps/Piu31dcBHXp0zqq', 'DIAN KRISTIAWATI', 'Jl. Ciwalengke Selatan No. 70 RT. 01 RW. 06 Ds. Padamulya Kec. Majalaya- Kab. Bandung ', 'BANDUNG', '28 Februari 1992', '3'),
(101881517, '$2y$10$YNUggrqwTMZJTVezBpSJe.XNDzc87LAqTOEeNUJwH0SLUr9/FS6zu', 'YULI DELIYANTI', 'Bunut Utara Rt.3 Rw.2 Ds. Bandar Agung Kec.Sragi Kab. Lampung Selatan.', 'BANDAR AGUNG', '9 Desember 1992', '3'),
(101881519, '$2y$10$scIfd538zG3FLoND7HoWHO7wFBpZSbx2fXkozSlHK4bxbb.odEWpy', 'IRMA RESMAWATI', '0', 'SUKABUMI', '8 Oktober 1992', '3'),
(101881520, '$2y$10$8BPhukeLisi6srTKO4pIieVWqXrRn/Wj/4aydoh.MIyPF2Qg/dtB2', 'INTAN RATNA DEWI', 'Jl. Bojana Sastra No 1 RT 01/01 Kecamatan Gegesik Kab. Cirebon', 'INDRAMAYU', '22 Agustus 1990', '3'),
(101881521, '$2y$10$t2PxBaUudgFKWX92Ipce6uPIjTALDfVH14o1HMFREAGRzQ0DAWf2q', 'JULVIATIN', 'Jl. Iskandar Rt.09 Rw.03 Kel.Mendawai, Kec.Sukamara Kab.Sukamara-Kalteng.', 'SUKAMARA', '19 Juli 1991', '3'),
(101881522, '$2y$10$POcalFbC0WnLVfm.uTM.tu3gGExpCf7XyleGux4jcz73aAdRgUTzi', 'SITI FITRIYANTI', 'Kp. Kiarasanding Rt.01 Rw.14 Kec. Pangalengan Kab. Bandung  ', 'BANDUNG', '24 Maret 1993', '3'),
(101881523, '$2y$10$FDyeJtOxl07jgO1UoHEgY.Qe2hdwlTMjGK5Zx8dgI26L5Ei.Pr5.6', 'RIESTA DIANA ANNISA LUTFIANITA', 'Jl. Pajajaran Blok AC No.07 Perum Bumi Cisaat Permai Cisaat Kab.Sukabumi.', 'BANDUNG', '7 Agustus 1992', '3'),
(101881524, '$2y$10$mS3XoBSnjG2BqRD48SOOAO9A5ocYIUsGRW90Y.sRbSpPJjb0Dt4eu', 'MUTIA PERMATASARI', 'Perum Cimareme Indah Blok B1 No.1 Desa/Kec. Ngamprah \n\nKab.Bandung.', 'CIMAHI', '1 Agustus 1992', '3'),
(101881525, '$2y$10$h52j/UOU7dbZk3WwH8iYd.al3/xnvJPv235WbU3Lx1H75la1TPeBC', 'HANUR HALIMAH', 'Kp. Nyalindung Rt.03 Rw.10 Ds./Kec. Cimanggung Kab.Sumedang 45364. ', 'SUMEDANG', '4 Agustus 1991', '3'),
(101881526, '$2y$10$ZHkgWjteDEX1i/uJAiSYoeUExGDVYJ2wRlA2FeUDzgg/9avGW2Ftm', 'RESNAWATI', 'Jl. Ir. H. Juanda No.834 Gang Sabu RT.01 R.17 Ds. Bojong Herang, Cianjur.', 'CIANJUR', '31 Januari 1990', '3'),
(101881527, '$2y$10$J72TiJ6mOpiFN2pM4cUW.OHeMm8zA.5RNNh2.KmBlEwdFQL//Pnh6', 'RIZKI HERMAWATI', 'KPAD Sejahtera blok N1 Rt.06 Rw.21 Padalarang Kab.Bandung\n\nJawa Barat.', 'CIMAHI', '20 Desember 1991', '3'),
(101881529, '$2y$10$waPb/TzfX01FHJ3NzJ6kL.b59yDAWKRF.z3xvlPxCSSZHh3u8WZ5m', 'AMELIA', 'Jl. Kp. Melayu 02/01 Kel.Tuatunu Indah Kec.Pangkalpinang Kota Pangkalpinang Bangka Belitung.', 'PANGKAL PINANG', '8 Mei 1990', '3'),
(101881530, '$2y$10$FhBnha/WjrvnSaVHDdYzRuLiTPN9s0zF81//TjxFw6GIrJaIpvC5C', 'CHUSNA NURFAJRIYAH', 'Jl. Gelora Gg. Setu No.33 Rt.16 Rw.03 Bekasi - Jawa Barat. ', 'BEKASI', '22 Maret 1992', '3'),
(101881531, '$2y$10$d1R2zatN/hIjdIVoWSpAmOphyCaJL1Kwlr9XtlpNngLX5SthMCZIy', 'SITI RAHMAH MASTUROH', 'KP. CIDAHU RT. 007 RW. 001 DESA CIDAHU KECAMATAN CIBITUNG KABUPATEN SUKABUMI', 'SUKABUMI', '27 FEBRUARI 1991', '3'),
(101881532, '$2y$10$0F1wzH3.9nZUy9xmyAfe6u7t7NJS26rqGqG6G.zngNPdrjuGUhToe', 'DEWI PUSPITA', 'Jl. Panglima Angin (Bangka Barat).', 'TEBING', '14 Mei 1990', '3'),
(101881533, '$2y$10$gtGyMmxijns/3ixx5QHgq./Bih77Ql6Sro5Z64HtelVEPicbAgtwm', 'SELVIA', 'Ds.Air Lintang Kec.Tempilang Kab.Bangka Barat Bangka Belitung.', 'TEMPILANG', '28 Desember 1992', '3'),
(101881534, '$2y$10$lH1FVySV4CyP4CRomWYuj.qj27ynpkSWmO2f8GaUJZMBha6LxNaCu', 'WIDANENGSIH', 'Kp. Ciheulang Tonggoh Rt.01 Rw.18 No.6 Ds. Ciheulang, \n\nKec.Ciparay Kab. Bandung', 'BANDUNG', '15 Februari 1990', '3'),
(101881536, '$2y$10$/0/DbMxK/ZwWp/Q8Q1g1x.EZ3FEAvgusKEdgImtxetpFyHJEX3L5u', 'RENY NURHAYATI', '0', 'SUBANG', '8-Apr-91', '3'),
(101881537, '$2y$10$u7yDc4RDxWI77KpbIMiN4OQnpzfOXUiHZg.TUyJUnRK/5OrXBjOKG', 'RENI ANDRIANI', 'Ds. Kedokan Bunder, Blok Blengur Rt.7 Rw.2 No.199\n\nKec. Kedokan Bunder Kab.Indramayu.\n\n', 'INDRAMAYU', '6 Mei 1992', '3'),
(101881538, '$2y$10$6pf/QDU6.PDgmgGTFcajH.UoV.tOAFxEPd3LAbxI9ld7gD.jy8Q96', 'FRISKA PERMATA', 'Jl. Sarijadi Flat F, Lantai 2 No.13 Rt.05 Rw.05 Bandung.', 'SUMEDANG', '19 Mei 1992', '3'),
(101881539, '$2y$10$2viOaBRKxADwNA0cTrJV6eRfKfZS2gJIFOOuOHYBToOK40TcA6HoS', 'IDA WARSIDAH', '0', 'CIMAHI', '19-Sep-92', '3'),
(101881540, '$2y$10$swLRydaZkHzAcKuZnbxq1O9ns4Ef6mJsJEIBLyAdo9Je9oY6Tm/qa', 'RATU NELLA VERIAWATI', '0', 'SERANG', '29 Januari 1992', '3'),
(101881541, '$2y$10$G3axxt9KQVi9OZvFwvSSdefl.WN1GaRsA0nWESxrM7eeTO.embZzi', 'DEASY SAPUTRI AYUNDA NINGSIH', 'JL. IMAM BONJOL RT. 023 NO. 72 KOTA BANDUNG', 'TARAKAN', '17-Sep-91', '3'),
(101881542, '$2y$10$dBWcn.iYZx9YVn21TLIVGuJzQ026xgG/VTBhPaqOttBmn6.bRnHqC', 'NURPITRIANI', 'Dsn. Tanjungtibab, Kec. Bunut Hilir Kalimantan Barat.', 'TANJUNG ENTIBAB', '20 Juli 1992', '3'),
(101881543, '$2y$10$TTALyz7cqM9uP10Tpr3Wv.tr2L2XYlzpugOTm52zHNo7idNAqOD5a', 'INDRI WIDAYATI', '0', 'CILACAP', '15 Oktober 1982', '3'),
(101881544, '$2y$10$RxTByBeI5cBk7XP47RSHv.ry4tUIsPkB8pCUAUAg1Q5mQjzSW6PF2', 'SITI NURAZIZAH', 'JL. TERUSAN MUKODAR NO. 259 RT. 005 RW. 003 KECAMATAN CIMAHI SELATAN KOTA CIMAHI', 'BANDUNG', '25 JUNI 1985', '3'),
(101881613, '$2y$10$.Uf9XYbIsQvvdmIZMV5zxOuPLT1pdSgoK2x52cxXYOW0zW9R/Nd3m', 'EKA WAHYUNINGSI', 'Kp. Waas RT.01 RW.01 BTN Ds.Sukasari Banjaran Kec.Pameungpeuk Kab.Bandung.', 'MANADO', '9-Apr-86', '3'),
(101881614, '$2y$10$Hc.sa1NxXOK3btOgh8c98ekalfwanXM1DiJdUyZN/dofB4fd2vF7a', 'ARIS RATNAWATI', 'Cikurutug No. 9 RT.04 RW.12 Cicalengka Wetan Bandung. ', 'BANDUNG', '3 Juli 1981', '3'),
(101881615, '$2y$10$ZCMzIVuYCbJsUlyxkEkCxeTdqjpkqmIJBrSsDwvhUZOTuSZkWvgdW', 'DESWITA', 'Jl. Teratai No.2 RT.03 RW.15 Leuwi Gajah Permai Cimahi ', 'TANJUNG KARANG', '4 Desember 1962', '3'),
(101881616, '$2y$10$F4emTleqm0.nB2qqP5S.9OBcMjNSNeNohoIaQcR5fU5gGEX8hUG0S', 'MAS MURNI SITEPU', 'Jl. Maleber Barat No. 111 Bandung.', 'MEDAN', '25 Agustus 1958', '3'),
(101881617, '$2y$10$9MAxdpzul5xgut8mD1xK9.tffdC64fQ7aSGCp6AFhVmPZ.yT0b15K', 'SUSILOWATI', 'Sanggar Indah Banjaran Blok K2 No. 9 Ds.Nagrak RT.2 RW.11 Kec.Cangkuang Kab.Bandung.', 'CILACAP', '25 Mei 1975', '3'),
(101881618, '$2y$10$slssKq6S.PqfFcLLC.iEdO.peVj9TQF8S.Je5zTFTTw4cL7CMzotO', 'YETI SUSILAWATI', 'Kp. Bandawa RT.02 RW.15 Ds.Soreang Kec.Soreang Kab.Bandung.', 'BANDUNG', '10-Apr-79', '3'),
(101881619, '$2y$10$VYiJC7pFO1kS6.VBXxRcOuRPtOGocpGAdASAi.6uW4ksxsckhrwr6', 'HENDRIA AFNETI', 'Jl. Batununggal No. 60 RT.04 RW.10 Bandung.', 'PADANG', '9-Apr-69', '3'),
(101881620, '$2y$10$rfnGe0BRxpSkMAVKIduZAu7famyVtWkMojgvKTKUF4P4eRx28r2I6', 'SANTI', 'Jl. Sanawiyah - Pemda II Cibeber Cimahi Selatan Kota Cimahi. ', 'GEGESIK KIDUL', '2 Agustus 1985', '3'),
(101881621, '$2y$10$0o8Xff8YdBFr1CxIKqk2xuP3lo7dZDAdXGWTmH0W3IIZ51aR9LYyC', 'AAN YUNENGSIH', 'Dusun Dukuh RT.26 RW.07 Desa Anggadita Kecamatan Klari \n\nKarawang.\n\n', 'KARAWANG', '10-Nov-80', '3'),
(101881622, '$2y$10$Vnn6jlNGk9Xo1WszoIipUuSDI/guAQjECAxSzRJ6PzU.0soV03gJG', 'ANI ROHYANTI', 'Jl. Kopo 69 Pa Eman No. 09A Kopo Bandung.', 'BANDUNG', '9 Mei 1981', '3'),
(101881623, '$2y$10$SbeLBbUitHAXUmsbDPfaf.35jxKqvr.Acj9hTRFkM.T5vGhC9tV9W', 'ENOK SUMIATI', 'Blok Sinar Jaya RT.03 RW.16 Batujajar Barat Kab. Bandung Barat.', 'BANDUNG', '11 Februari 1963', '3'),
(101881624, '$2y$10$8h3fusuKqbwL2Uil1wKWtemN4jW9enxz7r9s0rbZLNmPm6mIcsxfi', 'CAHYATI', 'Jl. Kopo Gg. Lapang I No. 11 Bandung ', 'BANDUNG', '17 Desember 1979', '3'),
(101881625, '$2y$10$OfwZTaFQ1UqtDRFMqrQVBOGwjJTA5sU5.e3p1qbxI7X6EMk8uM9Yi', 'LENI KUSMAYA', 'Komplek Giri Mande Blok A3 No. 34 Bandung.', 'BANDUNG', '22 Mei 1980', '3'),
(101881626, '$2y$10$JbkFabBnkT6A4ScXu61SIeWaB1WTE2stXx2H43vtnT6m.uBpAfzFC', 'NURCITA DEWI', 'Kp. Sirnagalih RT.01 RW.10 Desa Pasirjambu Bandung.', 'BANDUNG', '17 Mei 1984', '3'),
(101881627, '$2y$10$WN1gBS9zyT2ZlyT4iginNOUa9cSK3g1GzxEf4yq.2VrYrxQOR3I3S', 'SUPRIH SUJATMIATI', 'Jl. Teritorial No. 1 Cilame Permai Kab. Bandung Barat.', 'CIMAHI', '9 Februari 1971', '3'),
(101881628, '$2y$10$TdBktJJPz4L/UHka7B5kt.lcgqVtVLObwczS6doJe16mcQ5Enw.qm', 'YURLITA', 'Kp.Solokan Ds.Cijayana Rt.01 Rw.05 Kec.Mekar Mukti Kab.Garut. ', 'BIREUEN', '15 Mei 1975', '3'),
(101881629, '$2y$10$eOLUxXP5gTk4VCP4KEHy0OL3Haw7ka3wNodY9BquZTtSpHHpuPlEG', 'FUJI UTAMININGSIH', '0', 'SIGLI', '9 Juli 1984', '3'),
(101881630, '$2y$10$hoax.Vut9nWQRfhZi9MLeO5yEGu5AlSE6sWfyk.3pzs0y3wk5j9s.', 'DEWI IRIANI', 'Kp. Sindang Palay RT.09 RW.09 Ds. Cangkuang Kulon KAB. BANDUNG', 'BANDUNG', '17 Mei 1978', '3'),
(101881631, '$2y$10$hixIOSM32msu31vx0b6Gjuxw3gKpdh3WLDvQecmNsLz2iXfHjof7K', 'ANGGINI ARIYANTI', 'Kp. Dunguspurna No. 35C Batujajar Kab. Bandung Barat.  ', 'CIMAHI', '8 Juli 1982', '3'),
(101881632, '$2y$10$LG7LdjX8fcQsEwW3feIX9eOWy6zlUr6/yevpXGsaAzMVv3W9nmqKq', 'FITRIA SULASTRI', 'Barunagri RT.01 RW.03 Ds. Sukajaya Lembang Bandung.', 'BANDUNG', '9 Agustus 1980', '3'),
(101881633, '$2y$10$UTlHovQmSK5FuaC9nMoG4.XzYRg.malrTgXB8YSQturjJgLra1Vim', 'NUNUNG NURHAYATI', 'Cijeungjing Kulon RT.11 RW.02 No. 29 Padalarang Kab. Bandung Barat. ', 'SUKANAGARA (CIANJUR)', '14-Sep-75', '3'),
(101881634, '$2y$10$XVvIEmLJFIlLMoGmZLRsn.Ue4yBB/NlQp.cQvAOOhxGjQIiq6fT6e', 'WIWIN WINARTI', 'Astana Anyar 29/21 Bandung', 'BANDUNG', '23 Maret 1970', '3'),
(101881635, '$2y$10$JM30Rxkjy84rSLBFskxMsu4WPu6Y8fAZtXqng5AnKjcQiNpWezmEC', 'SULISTIOWATI', 'Jl. Gunung Kencana II No. 183 Ciumbuleuit Bandung.', 'METRO', '10 Februari 1951', '3'),
(101881636, '$2y$10$G8WeRQIdZwKMeIgnYJTxu.BrwGJTIj6NEXpuiqLOfMtLQ1pMUYvQe', 'IDA WIDANINGSIH', 'Kp. Nangkod RT.04 RW.03 Desa Jati Kec.Batujajar Kab.Bandung Barat. ', 'BATUJAJAR', '18-Nov-83', '3'),
(101881637, '$2y$10$u5Vrz3x8b4geNqZEKbvsRuURWl489UO897NTWmrr.SzmKHWTc6Sra', 'ANIE YULIANTI', 'Komplek Secapa Polri Blok A No. 1 Kel. Karamat Kec. Gunung Puyuh Kab. Sukabumi.', 'GARUT', '14 Desember 1977', '3'),
(101881638, '$2y$10$eiP1Y1JkIzvF4uIH.Hr7o.QxnUP6NMIGWxDUjTRAgJRdOc4rkejlK', 'AI SOLIHAT', 'Perum Citunjung Aster XV Batujajar Kab. Bandung Barat.', 'BANDUNG', '12 Desember 1966', '3'),
(101881639, '$2y$10$RyqWcT.RMox855yMqW99beL8BKPZL8X/ItcP8JReplQIdKd2ectjK', 'DETI HELIDA', 'Kp. Pasir Wangi RT.01 RW.01 Ds. Depok Pakenjeng.', 'SAMARANG', '21 Juli 1981', '3'),
(101881640, '$2y$10$Pbz3m8H.A1DjZqBVScaSJeufsN61vB4UoYgPDNKR5Ul97zII0WEga', 'KOMALA TRIANAH', 'Kp. Sawargi RT.01 RW.10 Desa Sukakarya Samarang Garut.', 'GARUT', '15-Apr-68', '3'),
(101881641, '$2y$10$vldV9gi7fMEYY0HPmu9Wz.Gc/K9KURtLVtjwhUXF0GVksnE9gb9B.', 'LILIS LESTARI', 'Pondok Dustira Indah Jl. Arjuna Blok AI No. 1 Gadobangkong Cimahi. ', 'PAMARICAN', '17 Mei 1983', '3'),
(101881642, '$2y$10$FJ.zdH56U1b.4TNrsU4RpevwPbVxxq/iR4sHTKJwGb0ONbqa8Q9MW', 'TUTI TRESNAWATI', '0', 'SUBANG', '29 Oktober 1982', '3'),
(101881643, '$2y$10$CnSxv8lqu2oCWfUPQf1n2O0gkZp1zHk1AsGR6pNWHGIb3R3rScpbG', 'SRI HARYATI', 'Jl. Kolonel Masturi No. 505 Jambudipa Cisarua Lembang.', 'JAKARTA', '10-Apr-66', '3'),
(101881644, '$2y$10$sjtjL3ASgiKq0aNs72m6hO1uampdpunBlmAwlwSE6KOvxQgXIFByK', 'NI LUH PUTU SRI ATNI', 'Jl. Turangga Barat I Blok E No. 3 Bandung.', 'BANDUNG', '20 Januari 1965', '3'),
(101881645, '$2y$10$f.3bsJj9AIvp4LqHgsKAuOIH.N5Gxm2xfFk8qDSN/kaJNxqPFw/Dm', 'GINA WULANSARI', 'Kp. Babakan Siliwangi No. 22 RT.06 RW.11 Kec. Pangalengan Kab.Bandung.', 'PANGALENGAN', '23 Juli 1988', '3'),
(101881646, '$2y$10$iS6FvFjDRva.T2q7FxoQeeGSXy9aBkgGCAMHX1wWS7ogzLO3ZUl5m', 'ANIK RAHAYU', 'Kp. Cireod RT.02 RW.11 Cikidang Lembang Bandung.', 'KARANGANYAR', '1 Oktober 1981', '3'),
(101881647, '$2y$10$P1.Ii76sYVklmOtanpTOhuzUacinNAKy0ORXUIxDwkVOqU75tLmjy', 'ATI SUMIANINGSIH W', 'Jl. Papandayan Blk 16 RT.01 RW.15 Paminggir Garut Kota', 'GARUT', '25 Oktober 1981', '3'),
(101881648, '$2y$10$VeyJrJwQ8M6umoYxxmNs3uJ2HzrKaGvaddF4RqBJd6/LL11dHlfZe', 'KRISTIN', 'Jl. Cirangrang Timur RT.05 RW.02 Bandung. ', 'BANDUNG', '3 Desember 1980', '3'),
(101881649, '$2y$10$ud24ysTmBEQyDYSOUDBenebpRRXp4NjpNFMkq6XkHmA1Z8bNLHHfK', 'SUSI FATMAWATI', 'Kp. Gudang RT.01 RW.03 Desa Sukarame Kec.Bayongbong\n\nKab.Garut. \n\n', 'GARUT', '2 Juli 1986', '3'),
(101881651, '$2y$10$yv.49jSYvoVjK0RZf7Iaf.UuTGyVXSBQc8cYeHMiOaz6V3Odi4ECy', 'LENNY', 'Komplek Griya Sayati Indah Blok C No. 12 Bandung. ', 'TEBING TINGGI', '20 Februari 1980', '3'),
(101881652, '$2y$10$VzZC9GjiQ/5gC3pGSjpWvOnHE03LVsXXwLwrMTyy4yb5iCz2KvdGy', 'CLARA DJUARSIH', 'Jl. Gegerkalong Girang No. 95A Bandung.', 'CIANJUR', '8 Februari 1961', '3'),
(101881653, '$2y$10$sCB6NDTUJctuEkM2iMQUxe3EMuV1i6QCQ5kBC8oabjIff4s0zCw7G', 'EUIS DINAR SUMIRAT', 'Kp. Rancaputat RT.01 RW.04 Desa Ciroyom Kec.Cikelet Kab.Garut. ', 'GARUT', '17 Agustus 1982', '3'),
(101881654, '$2y$10$FJrCieX7FtapX2hw/VdQPuYGO1pyuVT35O/a6PsWyPZS7o8GKVIZe', 'RINA DINARSIH', 'Kp.Babakan RT.03 RW.04 Ds.Cimareme Kec.Ngamprah Bandung Barat. ', 'BANDUNG', '15 Desember 1967', '3'),
(101881655, '$2y$10$bQ.z..5omQ6pF6/ZebxABeW5hcoF67S3oDNDvWY1GgwEAwMwqFGOe', 'TUTI SUMARNI', 'Jl.Kolonel Masturi 25 Rt.2 Rw.2 Ds.Kertawangi Kec.Cisarua Kab.Bandung Barat.', 'CIANJUR', '2-Apr-80', '3'),
(101881656, '$2y$10$OhchRvgrlwKrHpwNX9jgRe7qER/fUtl2nKRWFgHPyrIMTlpiAib8i', 'DESIANA NURFADILAH', 'Ds. Gajah Timur 1 RT.59 RW.30 Kec.Kota Gajah Lampung Tengah.  ', 'KOTAGAJAH', '28 Desember 1989', '3'),
(101881657, '$2y$10$2aaO3Gou8h8r6UqHeZRND.8Jc.aaMqGVKMZstb.qWRyhzIGXigZNi', 'YULIANAH', 'Jl. Awiligar RT.01 RW.10 Bandung.', 'CIANJUR', '1-Apr-81', '3'),
(101881658, '$2y$10$Pl20PLsszPcTUBPLAiF4ru3S7gQyO4O3AqS495MGVGHAeJvwsYJ0q', 'UMAH WIDANINGSIH', 'Kebon Tujuh Utara RT.06 RW.11 Bandung. ', 'BANDUNG', '12 Maret 1951', '3'),
(101881697, '$2y$10$0hxAmnUhLIFmVjqFtItz3.TaC5eEb37.DnVrJxhtwuLAJcpAwMMlC', 'ERNIDA SINAGA', 'Kp. Cihampelas RT.03 RW.05 Ds. Bojong Koneng Bandung.', 'HUTABAGASAN', '1-Sep-74', '3'),
(101881698, '$2y$10$p2qtoNGCimFtK3Z2KdZ0guzL7PbeG5/udUFLbj2NdWpJXK6.6Xhcq', 'LUCKY NUGRA HENNI', 'Komplek Nata Endah I Blok N. 17 Kopo Bandung.', 'JAKARTA', '31 Maret 1979', '3'),
(101881699, '$2y$10$N1rLIPil0M0FF3LGKW31j.u3Nr3OmqHzPB/IeME9cgkYfuYOZouBG', 'NURMADIAH', 'Jl. Mengger Girang 4 No.4 RT.4 RW.8 Soekarno Hatta Bandung.', 'PADANG', '27 Februari 1960', '3'),
(101881700, '$2y$10$YA1ihHCpYn0wTUzKEdZGouMMIhEUpH8i.n/MMPpfhJXte1LrS/boq', 'NIA KURNIASIH', 'Perum Villa Permata Cikampek Blok \n\nEF4 No.10 Cikampek. \n\n', 'GARUT', '22-Sep-77', '3'),
(101881701, '$2y$10$W8HxpOOl7PLJSTpyOBuv2e/AiE8QzmRgtNVDhS..1AsMEH58/eK8q', 'IRA IRANTI', 'Jl. Vijaya Kusuma I Blok G15 RT.07 RW.07 Ujung Berung Bandung.', 'TANGERANG', '5-Apr-78', '3'),
(111881659, '$2y$10$5EcGlIn4WnL3YpQCS0N6u.il1OVFpiTV6eJ6WKbP7klVK8Q8J/rcq', 'NAILA', 'KP. CIBINONG RT. 004 RW. 001 DESA RANCAGOONG KECAMATAN CILAKU KABUPATEN CIANJUR', 'CIANJUR', '6 DESEMBER 1993', '3'),
(111881660, '$2y$10$PNgc3bZKi4bf4Db1jcyL8uPbuQ2MBE2n.WEv9Gs5NmvG43DARFQfu', 'WINDA KHOERUNISSA KURNIA', 'Karawang Timur Lamaran RT.04/ RW.06, Kel. Palumbon Sari, Karawang.', 'KARAWANG', '9 Desember 1992', '3'),
(111881661, '$2y$10$tQ0Uz32tdbgRkvrNgZPELOwThmpgvemUl2Ae9k602Jp/knM/YX7pO', 'RYAN YOSINA YAPANIA', 'Jl. Raya Banjaran Gg. Asem PWRI No.5 RT.01 / RW.07, Sasak 2, Kab. Bandung. ', 'BANDUNG', '30-Nov-93', '3'),
(111881662, '$2y$10$8GpWzqUqcmXiGVmcEfpRi..T8kVUGrjhIaRHsOmu5OdUvq5IEAmGG', 'RASYI SABILLA RAZZA SUDIBYO', 'Jl. Andir No.88 RT.07 / RW.10, Bandung.', 'BANDUNG', '26 Juni 1993', '3'),
(111881663, '$2y$10$UVrHU.jEZIyQy9fhHG5gS.XbkdduLmwex34Wm81jpPfLopXefD2dW', 'ASRY APRIANTY', 'Mekarsari RT.01 / RW.17 Kab. Bandung. ', 'BANDUNG', '18-Apr-94', '3'),
(111881664, '$2y$10$55ll2RW9dHulnZsfqjMF/OzgRlgz9h5o7fh4A.Ps3XmpTXoGTGvU.', 'DITA FRYANDINI', 'JL. LAYANG KP. KONGSI CIKARANG KOTA BEKASI', 'BEKASI', '19 JANUARI 1993', '3'),
(111881665, '$2y$10$0Ts/C.Vu/HpJZJRLnTx8xe03Wu9uTQ3mQvDO7BTdFPBL13EKUYSxC', 'HANI PUSPITA', 'JL. CIPEDES 1 NO. 7 RT. 006 RW. 003 KELURAHAN PAJAJARAN KECAMATAN CICENDO KOTA BANDUNG', 'BEKASI', '11-Nov-92', '3'),
(111881666, '$2y$10$134nlMNkC7bxcesHlAhKzuZVYZ59xAScOt47iTlGN2Jz.KVoV0mXq', 'YANTI MARLINA', 'Kp. Sasak 2 RT.01 / RW.07, Banjaran, Kab. Bandung. ', 'BANDUNG', '12 Februari 1993', '3'),
(111881667, '$2y$10$vn7IVwnO8zTJpY2UXGJSsOsR.qPhM3nPCB5PUIYValTVMXVJs9r22', 'SISKA NURHAYATI', 'Kp. Papakgede RT.02 / RW.15 D5 Baleendah, Kec. Baleendah, \n\nKab. Bandung. \n\n', 'BANDUNG', '28 Agustus 1994', '3'),
(111881668, '$2y$10$bRrOBULFmX09N4RcNjkTKOlSGvLbRWAg52f.PhVnzr/WdMqR/bpXm', 'RIKA PUJI RUSTIWA', 'Kp. Tangsi RT.04 / RW.14, Desa Sukajadi, Kec. Cibinong, Kab. Cianjur. ', 'CIANJUR', '15 Juni 1993', '3'),
(111881669, '$2y$10$tY6uCUfR0uzzYp9CyVi/seRuQRd9GY2GfrwQNEZovgLdXF3REw3W6', 'KRISTIANA', 'Jl. Petran Dusun I RT.09 / RW.01 Kelair Lintang, Kec. Tempilang, Bangka. ', 'TEMPILANG', '11 Januari 1993', '3'),
(111881670, '$2y$10$F.pvKLMQCbE3ie3je.8fWuWdwBpwLLq664W2LrekQc6jSh6jUQkJC', 'ARTIE WAHYUNING THIAS', 'Kp. Jabong 2 RT.30 / RW.10 Kec. Jalancagak Kab. Subang. ', 'SUBANG', '6 Agustus 1992', '3'),
(111881671, '$2y$10$WlvwBdGEbhEYtolwuR7xL.zLGLyY9mlbSsHWGlgoOin72zgBbLBjC', 'DEWI FATMAWATI', 'JL. GEGERKALONG LEBAK NO. 5 KOTA BANDUNG', 'PEKALONGAN', '4 MEI 1987', '3'),
(111881672, '$2y$10$zdIKOQCFfbj6WjyNGVyBg.O08lktEJTKb8IyNj.17swwP.th8vVkS', 'EVI WULANDARI', 'PT. Sweet Indolampung. ', 'ADIJAYA', '13 Maret 1991', '3'),
(111881673, '$2y$10$9uVDb/b7B19OwpqkP.180OILlkmX1HjIFnfWJ6KbeqRKvUUfRVyQK', 'OCTA FRANCISCA', 'Komp. PPI, Jl. Supratman (Asrama TNI) BANDUNG. ', 'BONDOWOSO', '10 Oktober 1991', '3'),
(111881674, '$2y$10$1/czQU2fI8KL30f4Vf/YlOyw9VPWAu3W5rUveVEW9PQDyr1wsxXgS', 'DWI AGUSTIKA', 'JL. TENGAH DESA RENGGIANG KABUPATEN BELITUNG TIMUR', 'TANJUNG PANDAN', '24 AGUSTUS 1994', '3'),
(111881675, '$2y$10$AxipT1AhsZr//1bz.mzZYeaEe6XlIR02T7Pq4mDx6HUETJbmDyZKa', 'TATI SAWITRI SALEHA', 'Jl. Mengger Tengah 03 RT.06 / RW.01 No.73, Bandung. ', 'BANDUNG', '19-Nov-93', '3'),
(111881677, '$2y$10$QPSjmPUgAON1vDiHbAdDhO9JNVdBzLAQ5k/VV0BQwNYOqdvNt1Lby', 'CUCU NURDIAH', 'Desa Ciruluk RT.30 / RW.08 Kec. Kalijati, Kab. Subang.       ', 'SUBANG', '10-Nov-92', '3'),
(111881678, '$2y$10$j7gTrDghBoLRW1fILuRRs.jc.XCdlK87J48ZFFVGfGU.getqu1FWm', 'JULIAWATI', 'Kp. Sukawangi RT.02 / RW.14 Lembang, Kab. Bandung Barat.', 'LEMBANG', '27 Desember 1993', '3'),
(111881679, '$2y$10$NT507V6nJPz/uh0jXxosXOyXpRjJfyumjQgFQfGpV1.HNxgn70ldm', 'NURUL FARIDA', 'DUSUN SUKAMAJU RT. 004 RW. 002 DESA BOJONG BARAT KECAMATAN BOJONG KABUPATEN PURWAKARTA', 'PURWAKARTA', '11-Apr-93', '3'),
(111881680, '$2y$10$RhHVWA3C8ukcapcoBKAQ4e3phhSgiYOUMQ/ZX2hhHuXlpm7Kl5N5O', 'TRI MEGA PERMATA', 'Jl. Jendral Sudirman RT.09 / RW.04, Belitung. ', 'TANJUNGPANDAN', '3 Mei 1992', '3'),
(111881681, '$2y$10$Y7ZuVhT/0hcxhXoRbLEW9um59qzVuoruayDzl6lADJ1UBOgogUUiy', 'RIKA RAHMAWATI', 'Jl. Terusan Sersan Bajuri No.37, Cihideung-Parongpong, Kab. Bandung Barat. ', 'BANDUNG', '3 Oktober 1994', '3'),
(111881682, '$2y$10$gIr6iHBWLB6IpF/J0Gsv8uzQhJg/0v/TqHlBtrXk2aaO/7wZ2yON6', 'SITI SARA MEYSAROH', 'Kp. Cibodas RT.05 / RW.01 No.7 Desa Cikahuripan, Lembang, Kab. Bandung Barat. ', 'BANDUNG', '20 Juli 1993', '3'),
(111881683, '$2y$10$qOzXedSACJlgY7FZ/mydouzsnCu1lIk6ZkKN4Ubpbb6atH4EQzR5y', 'MAYANG SARI LATIFAH', 'Sindang Sari RT.01 / RW.10, Pananjung, Kec. Banjaran. ', 'GARUT', '24 Juni 1993', '3'),
(111881684, '$2y$10$l0UPX6vgYBg7nuV6QmvxD.OYGk0Of6eVodLOuU18UWZRLF9W30e2K', 'KIKI ANDRIYANI', 'Kp. Babakan Kidul RT.04 / RW.14, Kota Cimahi. ', 'CIMAHI', '19-Apr-92', '3'),
(111881685, '$2y$10$ZLwSf05B4G2J1Ghstbuq3.fckbW./ERGOvwPiXrK8OPJrQ77OwAsy', 'SILMA MARIA AMANDA SURYA', 'Jl. Cibaduyut Gg. Naeja No.109 RT.02 / RW.03, Bandung. ', 'BANDUNG', '27 Maret 1994', '3'),
(111881686, '$2y$10$43V4Cv9rrlywC7scD5BnweCSX8nogYzM.6AvbKwCogmP42/4P/W6C', 'DESI ROHAYATI', 'Kp. Cimindi RT.04 / RW.08 Karangwangi, Kec. Cidaun, Kab.Cianjur. ', 'CIANJUR', '4 Desember 1992', '3'),
(111881687, '$2y$10$1gwZQiRd58.1W5EoeZt3Xelnu65CMuSXX5VR3KaIPclLZDaHlL4ii', 'FANY LESTARI', 'Taman Cibaduyut Indah D188, Bandung. ', 'BANDUNG', '23 Februari 1993', '3'),
(111881688, '$2y$10$pKkfoAJwVzBfeMcpdBlwp.DFTBvUrh/b6WJIiV.5RYcKPjH2W.MB2', 'LENNY ANGRIYANI', 'Desa Ciruluk RT.12/RW.03, Kec.Kalijati, Kab. Subang.', 'SUBANG', '18 Juli 1994', '3'),
(111881689, '$2y$10$myf8IqpIN8n9CIgjDYmD0.6CI9pFOOoGjb6hw4Hs5ySACqyVaKSHW', 'DEWI MARANTIKA', 'Jl. Jatihandap No.140 RT.04 / RW.04 Cicaheum, Kota Bandung. ', 'TANJUNG ENIM', '16 Februari 1992', '3'),
(111881690, '$2y$10$/o7EnttEBZjBDmoFympM8eEk3qoVrTwi68nCoxuAYJsGECGwmwPji', 'EMA KULSUM PUJAWATI', 'Jl. Wesel No.176 Kp. Baru, Pamanukan, Subang. ', 'SUBANG', '2-Apr-93', '3'),
(111881691, '$2y$10$SgfgvQYKVqxsX/5Kp5Njb.6HfUvkz9il5V2sWfrQzayd8QrMUQmni', 'NIRA ALFIN AJI KURNIA', 'Jl. Ciumbuleuit No.63/155C RT.05 / RW.02, Kel.Hergarmanah,  Kec.Cidadap, Bandung. ', 'MAJALENGKA', '12 Maret 1993', '3'),
(111881692, '$2y$10$h2VduJMfnmUi/pKWjWNLKOzMsnTT3bM1tg602MsSaeVh2FKKAUjLO', 'DWI NURWIJAYANTI HARTINI', 'Jl. Cihanjuang RT.06 / RW.11 No.47 Kota Cimahi. ', 'BANDUNG', '1-Nov-93', '3'),
(111881694, '$2y$10$4jtM.uzMHZC20IUO5ac8XeZW5HSQfJBgInKmQJamjXNeMgEN.gxWq', 'RIZKA FATHIA FAUZIAH', 'Komp. Victory Land Blok D3 Kel. Jati Endah Kec. Cilengkrang Kab. Bandung.', 'BANDUNG', '17-Apr-91', '3'),
(111881695, '$2y$10$XtpZnr8KDafARp7OK3cnT.ze6Y6S1Y6xjkZ4/0CWSIQtHu2I9bcMK', 'RATNA SARI', 'Jl. Soekarno Hatta No.16, Indramayu. ', 'INDRAMAYU', '6 Oktober 1993', '3'),
(111881708, '$2y$10$xafa8OdWCtBNuttc2qo.j.ZPyJ05sVAaE7qtlICltqhBnTDW0UN6W', 'KIKI', 'Kp. Rancamanyar Desa Margamukti, Kec. Pangalengan, Kab. Bandung. ', 'BANDUNG', '5 Desember 1982', '3'),
(111881709, '$2y$10$Xzcec7e.mM4g38vDFhJAGedmS/LHuQMwFuga/A49DZiDYJUJ835.K', 'AI NURHAYATI', 'Jl. Raya Soreang KM.17 Komp. Pemda Dinkes Kab. Bandung. ', 'CILILIN', '20 Oktober 1971', '3'),
(111881710, '$2y$10$/NBN3uI9afSGAzFEJS/9PeRZntia0C4L8vfE9jFMvO.R1PTQerPg2', 'YAYAN', 'Jl. Baros Kp. Sukatris RT.01 / RW.01, Cianjur.', 'CIANJUR', '26 Februari 1970', '3'),
(111881711, '$2y$10$daqGyXK3./r2twOupCRQBemIRem43fWVIxAxteBcu1AZ/ZhNi3nLm', 'ELY WILIYANI SUNDARI', 'Jl. Ciwaruga No.10 RT.02 / RW.04, Cimahi. ', 'BANDUNG', '6 Juli 1985', '3'),
(111881712, '$2y$10$BSNQ9jxYaFbW.aFk90s25eSg97eR4.xc/k.KpAXUUFlgTQq6G.EFG', 'SITI AIDAH', 'Kp. Pupungkuran Desa Kademangan, Kec. Mande Cianjur. ', 'CIANJUR', '15 Oktober 1980', '3'),
(111881713, '$2y$10$EjiqZac..1SxHXjHP5qwHe8VPNeczl1dIcD1t.TyNtML0wJFEyUYe', 'DEDEH DAYATI', 'Jl.Cigadung Kaler I No.54 RT.01 / RW.04 Bandung. ', 'BANDUNG', '11-Apr-80', '3'),
(111881714, '$2y$10$U3ivYM8vbG3n/Vmw1qYql./ahT/foUICtYj3YOI6IpX8kuJBy4F3C', 'NENG MULYANI', 'Komp. Astom Residence Blok A no. 15 Jl. Cilengkrang I Bandung.', 'CIANJUR', '28 Desember 1979', '3'),
(111881715, '$2y$10$2H1LPdoVVmzGCDoOSbQrG.vMajzMfsExq4NQVvIYN.T5k47rKaK2S', 'HERMINAWATI', 'Grand Serpong Residence Blok A2 No.5 BSD Tangerang Selatan. ', 'BANDUNG', '5 Februari 1980', '3'),
(111881716, '$2y$10$Kqkit6XS7qwICrrTK/bu6eX7/QAe294HZzLGG6.kYNOGp4bjJxF4S', 'TITIN SUPARTINI', 'Kp. Cipelak Cisurupan, Garut. ', 'GARUT', '30 Maret 1982', '3'),
(111881717, '$2y$10$EMCuI968Z3GHrP6VcB0P4e3w9g404rnpNAGkh.htQiWoSxaNnM5sm', 'DESSY SUSILAWATI', 'Jl. Kiaracondong No. 407 Bandung.', 'SUMEDANG', '30-Apr-79', '3'),
(111881718, '$2y$10$Ym.3e6N7Dc5htcgtWh.YEudkM0K.askR/qSiXstmQ1w/b3jOQL6hC', 'SURYANI', 'Kp. Pasir Junghunh. ', 'BANDUNG', '16-Sep-70', '3'),
(111881719, '$2y$10$bUk.92oSwV6esK8P0jtZ2.gjH6qqx8YxaZd3rWz1Y5qTIa5Co9Tbu', 'IMAS SETIAWATI', 'Cianjur .', 'BANDUNG', '4 Juni 1968', '3'),
(111881720, '$2y$10$Wl5zVLJTqNndL.YNXrw/S.fdgtKfZashtqunHWK0chWySfr5gnBTa', 'AOH MUNAWAROH', 'Gg. H. Yasin VIII 563 Sukabungah, Sukajadi, Bandung. ', 'SINGAPARNA', '14 Oktober 1953', '3'),
(111881721, '$2y$10$hHlpyAJell0/Do52LXufUOHNPyaEo7E4U45YaxUi1Y5QwHEO6njSm', 'YULIUSTINA', 'Perum. Megaraya Jl. Megawarna No. 14 Kota Bandung', 'PALEMBANG', '25 Juli 1970', '3'),
(111881722, '$2y$10$Jhm29I1d4o9AMHlwVJElj.NRro4RL/geAD/W9.Kz.n.6WV65aJg1i', 'YANI SURYANI', 'Dsn. BKN Bandung Kec. Cisitu Kabupaten Sumedang', 'CIWIDEY (BANDUNG)', '14 Maret 1974', '3'),
(111881723, '$2y$10$SADmuRRJmfwgOc1PcN5agOsHpNlL2YS2z5tiInZ1bfCpsZZ1y2FIK', 'SUTINI', 'Jl. Cikaso No.41  Kecamatan Cibeunying Kidul Kota Bandung. ', 'PILANG / RANDUBLATUNG', '10-Apr-51', '3'),
(111881724, '$2y$10$CJ7N8OlrqCh90JV.JiBNmee2vHOJoKjcP5T0bUQbCFJ3iZmYyUCDe', 'ENDANG SUSIATUN', 'Sukamulya No.101-142B RT.02 / RW.09, Bandung.', 'PURWOKERTO', '10 Maret 1954', '3'),
(111881725, '$2y$10$EMOq5YO5PRwBFCgg.o2w4edUqK9MwkiBdr9GyA5Kp3u17gb2vcbnS', 'IIS MARIAH', 'Jl. Cikoneng RT.05 R.06 Bojongsoang Bandung. ', 'BOJONGSOANG', '24 Agustus 1982', '3'),
(111881726, '$2y$10$bT3pwI20jJZN61GkAr8ULOvpIAUO9S3BzuSgD2JSl9Exd6xm/qhqG', 'DEPI YULIANTI', 'Jl. Cigiringsing RT.02 / RW.17 Kec. Cilengkrang, Ujung Berung Kabupaten Bandung. ', 'BANDUNG', '29 Juli 1992', '3'),
(111881727, '$2y$10$bHjFwisbF/2iLAIB.6Z4P.w6JfBJkV30qMgIikXWaJ0okC7JsvEpC', 'TINTIN SARHINDI', 'Jl. Raya Purwakarta Kabupaten Bandung Barat. ', 'BANDUNG', '28-Nov-79', '3'),
(111881728, '$2y$10$hnJMJGWMwYxiUC6WWmS1JeSnWJLdaImTC4Ku69x81lsHyUnVOS3Xe', 'C. SRI SUMARWATY', 'Jl. Terusan Cimuncang Babakan Baru No.19 RT.05 / RW.07 Sukapada, Bandung. ', 'YOGYAKARTA', '16 Januari 1955', '3'),
(111881729, '$2y$10$E2ShZlGudRS1g/2NAvIZDeiG6Zu1V6anb12.8Ac3HCQyzBRnkIL2q', 'JULIANY PAKPAHAN', 'Sarijadi Blok 3 No.123 RT.05 / RW.02 Bandung', 'AEKRAJA', '3 Juli 1983', '3'),
(111881730, '$2y$10$kbarB1gWD.uFkI46z8DXU.zWffr32tpQw3JdZEryxvC093W1jfxyS', 'SRI MURYANI', 'Pasirlayung Selatan VIII D66 RT.06 / RW.02, Pasirlayung Bandung. ', 'PURWOREJO', '1 Mei 1962', '3'),
(111881731, '$2y$10$BpGRE0hOaAGW0/ZN1fqDdu7GSuu7GoXahXgFFu4ul7QMd8xT.we4W', 'DODOH KURNIASIH', 'Jl. Ibu Ganirah No.59 RT.05 / RW.04 Cibeber, Cimahi Selatan. ', 'BANDUNG', '2-Nov-64', '3'),
(111881732, '$2y$10$ebc0vIZ6z5iymHKsoB2dkubU//qe/xtzuIKiFJv5qKMkimUqyV7Lu', 'MEIDA BR TARIGAN', 'Jl.Cicukang No.63 RT.01 / RW.08 Cisaranten, Bandung.', 'MUNTE', '31 Mei 1972', '3'),
(111881733, '$2y$10$U.fc2R4rlmjnHKDaGX39j.lLkKxigPyJ0I6qf24fcIAvOk3pki9vC', 'TUTI JUHARTI', 'Jl. Manglayang Bawah No.78, Kelurahan Palasari, Kec. Cibiru, Bandung. ', 'JATIWANGI', '18 Januari 1979', '3'),
(111881734, '$2y$10$sRfZ/hA9BL7uv.COa2Xrkua38c2SC41dK6nOBpbxWGXTJJHy7VLqS', 'FETI NUR AISAH', 'Cianjur Persamolo. ', 'CICALENGKA', '3 Oktober 1982', '3'),
(111881735, '$2y$10$R2wYQm7vI5l9z9/Kh0u2feS7ZJL4l2jeFcfgEqbp45qe5I2y/kJra', 'NIA KURNIATI', 'Jl. Jurang 592/181 Bandung. ', 'BANDUNG', '26 Maret 1966', '3'),
(111881736, '$2y$10$onCELDkDl8a5qzIrHrJdWe99QfflDl/aoHoQLiPg0BN7psls6cfnC', 'ROSPITA RAJAGUKGUK', 'Sarijadi Blok 3 No.123 RT.05 / RW.02 Bandung.', 'MUARA', '5-Nov-53', '3'),
(111881737, '$2y$10$qjDiYENM120vRzzkrjfxeOb2tgT6DpNaNDRib1.rtqUlz9OOaBnXC', 'PENI CANDRA IRANA', 'Jl. Jatimenak Blok C4 No.09 Komp. Margaasih Permai, Bandung. ', 'NGANJUK', '27 Mei 1975', '3'),
(111881739, '$2y$10$NOB48DVGFJP.4oqNMhVwT.nar32HvBSZW3Ri/WgPlAIM0YDJwtmna', 'LINDA HERLINA', 'Kp. Rancaengang RT.02 / RW.09 Desa Rancamulya, Kab. Bandung.', 'SUKABUMI', '1 Januari 1982', '3'),
(111881740, '$2y$10$LwRjfywfeWqDB//vXRrBR.Ckvo3OsJVpMZMaOdNNPwQJlZM9RzevC', 'ELISABET', 'Panjang Ambarawa LOR RT.04 RW.02', 'NANGA TAYAP', '8 Juli 1987', '3'),
(111881741, '$2y$10$yiB93UkWfe/5hgfqmePrEugvAKHRU7KJE0KLg9dH234jzBDOPDdKa', 'TATI NURHAYATI', 'Kp. Cipeusing RT.05 / RW.14 Desa Jambudipa, Cisarua.', 'BANDUNG', '5 Januari 1974', '3'),
(111881742, '$2y$10$Jy.a1mauKt3cGnpcuw3b6.f1rr5nbX3epiOv1A4k71Sf54J65cUI6', 'AYI YULIATI', 'Jl. Rancabali No.4 RT.02 / RW.03, Cimahi. ', 'TANGGEUNG', '2 Maret 1975', '3'),
(111881744, '$2y$10$0ooPt6i0Hm.4PQCk2JOqneTYCCrelWEF7qeHkpx/6q33f45TOqWs6', 'RISNA HERNAWATI', 'Kp. Kebon Kalapa RT.01 / RW.03 Desa Batukarut, Kec. Arjasari KAB. BANDUNG. ', 'BANDUNG', '22 Januari 1977', '3'),
(111881745, '$2y$10$WfhPT8ExAkCbT48GMMjo.Or8RiCr1WaDXjtlv9fGe.Laufmqek/7q', 'SANTI MARLINA', 'Kp. Ciawitali RT.03 R.01 Desa Cimaskara Cibinong, Cianjur. ', 'BANDUNG', '23-Sep-82', '3'),
(111881746, '$2y$10$bsQrFIT1tMJZw.a4j/RZT.KaoOBhq33ddODfEdAcKcN5WVuEZ206m', 'ZAKIYYAH JAUHARI', 'Komplek Ranca Manyar Regency 2\n\nJl. Murni No.4 RT.04 Rw.20  ', 'CIANJUR', '4-Apr-87', '3'),
(111881747, '$2y$10$UMS3G3ZyZq6Ec/GPdrKqh.sjwt1xxHAJ6ctRy04XLky8jZYGdDMR.', 'RENI ROSALINDA', 'Ruko Bukit Permata Blok I1 No.21 Kota Cimahi.', 'CILACAP', '18 Januari 1977', '3'),
(111881748, '$2y$10$e2jrpGng6xHOg2Tr1qNtEezyEmWtbJ39agl7YlKlb/FjFzqqf6r92', 'MASPUROH', 'Kp. Cijambe RT.01 / RW.01 Cijambe, Cikelet, Garut. ', 'CIKELET', '20 Februari 1981', '3'),
(111881750, '$2y$10$xxopnrlopwelbU3cElcJAem/Vy5TqKdHAvMwC0CtLzQTpCd2o9p2.', 'IN-IN ZULFAIDAH MUBAYINAH', 'Kp. Panyindangan RT/RW 001/001 Panyindangan Cibinong, Kab. Cianjur.', 'CIBINONG', '3-Apr-88', '3'),
(111881787, '$2y$10$zpJ6Tu/rIIaldhszbnb50.5Hn6P37whe/3ZTObyNqB.gvxqD9QJ4S', 'MELY DEWI SARI', 'Kp. Hegarmanah RT.01 / RW.11 Desa Talagasari, Kec. Kadungora, Kab.Garut. ', 'GARUT', '21 Januari 1982', '3'),
(111881788, '$2y$10$GgrjR2D0l6.h45cPOFOTBuxQ9d/cxm8dCNOCb.2/iTPEjcNSzfAQq', 'SUBANDIYAH', 'Desa Kertawangi RT.03 / RW.02 Kec. Cisarua, Kab. Bandung Barat. ', 'NGANJUK', '1 Februari 1971', '3'),
(111881789, '$2y$10$BhlnKvP2I.dIIwN6.TKbeuVhdQNL0IRpPD7iABv1PbtbBw0qJ5sQm', 'WIDYA NUR RIZKY', 'Kota Bandung. ', 'BANDUNG', '18 Mei 1974', '3'),
(111881813, '$2y$10$9K1scdIL.JuMBVkxSVcXxuxLyB4HnMp1erBs0SK6ShoO8CdgYMX8W', 'DESRA AMELIA', 'Jl. Turangga Timur No. 28-115 RT 006/009 Bandung.', 'BANDUNG', '11 Desember 1980', '3'),
(111882696, '$2y$10$xcNbqwK2.J2CWg1R08slHO3FkPs2arfjir.b1eHfyx9bZBTnttMv2', 'INTAN PRATIWI', 'Jl. Kenanga No.15 Rt.04 Rw.01 Ds.Kec.Tanjungsari\n\nKab. Sumedang.\n\n', 'SUMEDANG', '7-Sep-91', '3'),
(111882704, '$2y$10$dEWLUR9n7RvbbdmuTk8KLOv2/fQzbv3lf3Zg7Fy0MgJyIkh7G5doO', 'LILIS NURJANAH', 'Jl. Sukaraja Kp.Buluh Rt.3 Rw.1 Ds.Semplak Kec.Sukalarang \n\nKab.Sukabumi.\n\n', 'SUKABUMI', '8 Juli 1991', '3'),
(121881751, '$2y$10$SgHULro7raV5B9NsD4e0b.87KiSmEEwup1pdT.1voUpPJnl2lKC8y', 'NURLAELIAH', 'Link.Sirah Dayeuh Rt. 03/01 Kel. Cicenang Majalengka ', 'MAJALENGKA', '21-Nov-78', '3'),
(121881752, '$2y$10$Zxayhe.ig5.Neny57/KwaOmlf/Fx96ChWvAB9NMfzO1gpbE3vvlOW', 'AJENG DWI PUSPITASARI', 'Jl. Cipedes Tengah No, 10 RT 05/06 Kel. Cipedes Kec. Sukajadi  Kota Bandung', 'BANDUNG', '18 Januari 1995', '3'),
(121881753, '$2y$10$Aopu3LRaDhLvVp8FEdkD0.DvOBKzvlZIHSDLLt3sVSIWPS2NfThI6', 'YULIA FITRIYANI', 'Ds. Mekar Sari CIANJUR', 'CIANJUR', '15-Sep-93', '3'),
(121881754, '$2y$10$KC2ZuKBb2mFeukWStiHTtuJiZJDACJjOhVobHPiXruuHXoRuP7VES', 'IDA RAHMAWATI', 'JL. ARIA CIKONDANG GG. HARAPAN 2 RT. 003 RW. 019 KABUPATEN CIANJUR', 'CIANJUR', '31 OKTOBER 1994', '3'),
(121881755, '$2y$10$DyCn96DIiHmKvFKc7esMU.9EgieYWmSqvhQEeIrgdS5fJEvYA2I4u', 'SEPTIA REGINA', 'Jl. Benteng Kota No. 73 Rt 01/02 Kec. Tempilang Babar', 'TEMPILANG', '25-Sep-95', '3'),
(121881756, '$2y$10$UeIW1O5tMYwuwSUmwn8Ue.faySbWubRyikIiFecFlmOE26j4gAVKy', 'EEN ERNAWATI', 'Ds. Sukrawetan Rt.02/05 Kec. Sukra Kab. Indramayu ', 'INDRAMAYU', '17-Apr-94', '3'),
(121881757, '$2y$10$CsRb22K7B7v19gsO4NLstOLgQ7ySj8bLF8kyc9pBqgUFAZ2BPpxoO', 'LUSI PURNAMASARI', 'Kp. Sukarame Kertasari Sindang Barang Kab. Cianjur', 'CIANJUR', '8 Januari 1995', '3'),
(121881758, '$2y$10$C5gdJGmMHcoFwUEwTsRaruXIjsJs1L6QEbuC86ICUZpThWKjGpDbG', 'SAGITHAMIA PAMBUKO AYU RATIH', 'Jl.Babakan Cianjur No.9 Gunung Batu Bandung ', 'BANDUNG', '25 Agustus 1994', '3'),
(121881759, '$2y$10$BB/4Kw1CJkB3tjs2EFVKgOsNBev/kR4Io6/9GAd6aa3cTbRjziqp6', 'TUTI NURALFIYAH HERMAN', 'Kp. Ciawitali Kec. Cikaum Kab. Sumedang ', 'SUBANG', '8-Apr-95', '3'),
(121881760, '$2y$10$SHtI3yIdwc88ORANNHUZSObx3RMcCgMN.KkIJnwbPD/KfJTWPPbe2', 'DINNI APRILIANTI', 'Kp. Cilisung no. 45 1/5 Sukamenak Margahayu Kab. Bandung ', 'BANDUNG', '20-Apr-94', '3'),
(121881762, '$2y$10$i5qFUCHjLL5O8oLBJbWke.bwNtlRO5y6Mobbc2bCHQzTyLEIHJNx.', 'IRMA ROSMAWATI', 'Jl. Kalasan Utara Cimahi Selatan ', 'BANDUNG', '20 Juni 1994', '3'),
(121881763, '$2y$10$0GJwRcZcYapBP5Y6OEAfbOhSy4uhjauuHKpKj6qhCov4uQ7moLedS', 'MELANIA APRIANTI', 'Jl. Jurang 592/181 Rt.01/04 Bandung ', 'BANDUNG', '24-Apr-95', '3'),
(121881764, '$2y$10$OAJC9JPJqW1qvvHjMMctkeNDZPy6xxcD4NrA0f1qr/mswuY2/dVVO', 'RISA RISDAYANTI', 'Kp. Waas Rt.04/01 N0. 132 Ds. Sukasari Kec. Pameungpeuk Kabupaten Bandung', 'BANDUNG', '19 Juni 1994', '3'),
(121881765, '$2y$10$mlqcRReOKwLH.Kk6sXmUnunM3XBPDicNukCkPZX54jVyroFaDqklK', 'SANTI NURGAHAYAWATI', 'Kp. Leuwi Nanggung Rt. 02/09 Ds. Paas Kec. Pameungpeuk Kab. Garut ', 'BANDUNG', '30-Apr-94', '3'),
(121881766, '$2y$10$OhsWPoZXw2u46R74xk96TuHgIbLDFLFt6TJJGl/Qw1P3ngpBMc5ja', 'SITI FATIMAH', 'Jl. Terusan Rereng Wulung No. 150 Rt. 07/04 BANDUNG', 'BANDUNG', '1 Januari 1994', '3'),
(121881767, '$2y$10$UXaJnQ/BvEr7Wzouj/5Jeepk/Y63zOPGcMzSjpi68gm8NpRyuvEU6', 'WIDIA DWI APRIL YANTI', 'Gg. Cempaka Rt. 05/15 Kel. Citeureup Cimahi Utara', 'CIMAHI', '11-Apr-92', '3'),
(121881768, '$2y$10$rZyiwSgPyzxnhKftqmBpVeTVtaBLr.aj6kdUpjZY3BxFyKZu221dG', 'NOVITA ASTARI', 'Jl. Kopo Gg. Babakan Rahayu No.1 Rt.01/03 Kab. Bandung', 'BANDUNG', '29-Nov-93', '3'),
(121881769, '$2y$10$KGT42B1HJijb104vRQz6OehMbb4I6rNH8egs8g4fr36FKrPBQNGsW', 'SUSI NUR AZIZAH', 'Kp. Rawaloa Ds. Cilongsong kec. Tanggeung Kab. Cianjur', 'CIANJUR', '23 Oktober 1993', '3'),
(121881770, '$2y$10$KibA1XA7GwqH/9ZgCCaV7uzExazLX21iBv9d.au/3cqYxNIxhRrgi', 'WIJI TRI WAHYUNI', 'Tri Jaya Kec. Penawartama Kab. Tulang Bawang LAMPUNG', 'TRI JAYA', '10 Agustus 1993', '3'),
(121881771, '$2y$10$6T97u8gHNA3Z.U30oUlvgeXQExu0gP98uzvFmPclC9aJrGEZvctru', 'DINA MUNAWAROH', 'Kp. Babakan Kadu Rst. 01/05 Ds. Cieundeur Kec. Warung Kondang Kab. Cianjur', 'CIANJUR', '12-Sep-94', '3'),
(121881772, '$2y$10$Dh1vE67v8jDp30PapKYt1OxSPIkAs226DO/6qo0jhob2Jswraug62', 'HANI SITI NURHALIZA', 'Jl. Kawali Panjalu Kec. Lumbung Babantar Kab. Ciamis ', 'CIAMIS', '5-Nov-93', '3'),
(121881773, '$2y$10$Rm.H0jXprMVLe95im//3IOhwHk9LBMd8ly2t.MyE7FSS5mElxmagG', 'DITA AULIA NUR MUMBA\' ITSAH', 'Jl. Ga. Manulang no 63 Rt. 02/04 Padalarang  Kab. Bandung Barat', 'BANDUNG', '5 Juni 1994', '3'),
(121881774, '$2y$10$5L/xc1PB304Rds1kMvEt/e09tL83Uw8XNO44MoUkj7PKbegzskUjq', 'INTAN TRIGUSTINI', 'KP. SINDANGSARI RT. 002 RW. 001 DESA MEKARSARI KECATAMAN AGRABINTA KABUPATEN CIANJUR', 'CIANJUR', '3 JULI 1994', '3'),
(121881775, '$2y$10$8TPRPn7mtvmonyjq49uc1OXi29p50stoA46BiP67Lp9VBUeWFxeHW', 'GISELLA ADELIANI', 'Jl. F Tendean Tanjung Selor Bulungan Kalimantan', 'RINDING', '31 Agustus 1994', '3'),
(121881776, '$2y$10$QGiNTbDlWe0qxvp9cwt6f.F7ww7fk6uN8dlwEo9BD0QzuSX43q8sy', 'NOVI KURNIASARI', 'Ds. Citraraja Kec. Binong - Subang ', 'SUBANG', '13-Nov-93', '3'),
(121881777, '$2y$10$LOwYLZkXUNPZfRciVNHupeS3r9DLQ22EyLsbO0qF6WZZ7Efi8UuiS', 'KIKI DARALIANA', 'Jl. Lama Bandung Kp. Kulia Kec. Haurwangi Cianjur ', 'CIANJUR', '20-Apr-94', '3'),
(121881778, '$2y$10$TTPKRbeidsrs9e/smi1ybeB2TOcQ3qx39w0nTHaCu7upmUzV5rWsm', 'LUVI RIZKI YULIANTI', 'Kp.Dang-dang Rt 01/05 Des. Pulosari Kec. Pangalengan Kabupaten Bandung ', 'BANDUNG', '5 Juli 1995', '3'),
(121881779, '$2y$10$KjFKUyq/gFF2nocioKPjQeo1L2qCRoMCZUIHQ6m8FdDzjl4/mEk4m', 'SALWA AZIZAH NOOR', 'Jl. Ir. H.Juanda 485 Bandung ', 'MAKKAH', '12 Desember 1982', '3'),
(121881780, '$2y$10$MEALA94Mneg3ngNVgOcrfeKU8a8eydIDINntWek0ZkcrWbOedml8u', 'LENI MARLINA', 'Jl Garunggang No 88 RT/RW 02/03 Desa Sukabungah Kecamatan Sukajadi Kota Bandung', 'LUBUK BUAH', '25 Maret 1992', '3'),
(121881781, '$2y$10$Jlc8gN2FVmg3BkCdp.ad7eigDPvuAcZgCXTTRy3Pfr2woflKB8jqq', 'RIZKI RIMBAWATI', 'Kp. Sukamulya Ds. Kertajadi Rt. 04/04  Kab. Cianjur', 'CIANJUR', '29-Sep-93', '3'),
(121881782, '$2y$10$XH7HMWIHb/DglscayuglEOlyumSQQjT5jgpm6DKXTW0r47SeCsWHO', 'SRI RATNA WIDIYASARI', 'Perum Megaraya Jl.Megawarna No 16 Bandung ', 'BARADATU', '12-Apr-94', '3'),
(121881783, '$2y$10$AIKk21O64ZYuTNM2C1yUuOc0uHxlVOOzmuAzzC.xFMWFQlukL.shK', 'SELVI DAMAYANTI', 'Jl. Raya Pagelaran Kp. Bojong Petir Kab. Cianjur ', 'CIANJUR', '26-Sep-94', '3'),
(121881784, '$2y$10$zy76/k0Jba79YMeymE15rumpAT6A1K8Y4LW2uumL3Mt7hhYnYWCb6', 'SITI AULIA SEPTIANI', 'JL. AHMAD YANI GANG. KUJANG PAJAJARAN RT. OO6 RW. 007 KOTA BANDUNG', 'BANDUNG', '1-Sep-94', '3'),
(121881785, '$2y$10$USmpSQCj1wj4IExoFAiIvuwuWTW3AJtWXdnHSwk1QmQPZox4.ZWui', 'YAYAN FETRIANI', 'DESA RAJASINGA BLOK TERISI KECAMATAN TERISI KABUPATEN INDRAMAYU', 'INDRAMAYU', '19 FEBRUARI 1994', '3'),
(121881786, '$2y$10$tG1Mp8MuIr9297iLoYvjpO75mdYZ1KdITKgHizZw0E3GoyLPXLwHy', 'WAHYU LESTARI', 'Kp. Pangkaka Rt. 02/11 Ds. Sariwang Parompong Kab. Bandung Barat', 'SRAGEN', '17 Januari 1995', '3'),
(121881791, '$2y$10$/Ypo.RYARF0KDLFKbgmfi.WxJBWCvLsvnGKRiceayyCm8.S18mdEe', 'IKE CHANDRA FATMAWATI', 'JL. DR. SETIABUDI NO. 29/169 BANDUNG', 'BANDUNG', '28 Agustus 1970', '3'),
(121881792, '$2y$10$hwGaEsJrM1tIjlkjNVTwnuBihIdHeEyFca8Y1ZOZhnO7sHJjr/YRa', 'AAY SUKAESIH', 'Jl. Raya Pakenjeng Garut RT 003/001 Pamulihan Kab. Garut.', 'PAKENJENG (GARUT)', '27 Juli 1964', '3'),
(121881793, '$2y$10$OIitB0qn037c6y/usssM/.vu8ycSju6.YesT/OLxjjqXoVccgCPxe', 'YAYAH ROKAYAH', 'PASIRMALANG RT. 001 RW. 004 DESA MARGALUYU KEC. PANGALENGAN KAB. BANDUNG', 'BANDUNG', '18-Apr-64', '3'),
(121881794, '$2y$10$U0ThBCuH.MvPyaTwqCptAOBsODGG/G8vKY3iyT4nXcw36XsOIagXK', 'DARMI MUTIYAH', 'Jl. Abdul Sukur No.14 RT.05/08 Kel.Paledang Kec.Lengkong Kota Bandung ', 'JAKARTA', '4 Desember 1967', '3'),
(121881796, '$2y$10$vU25tFWKqDrL9lGUnQT04eCwFqIbX.VKa7pld9fRlFNOj1DVcCFNu', 'ANNA ROSMERI SEMBIRING', 'Jln. Pasir Subur No. 06  Pasir Luyu Bandung ', 'BINJEI', '26 Januari 1950', '3'),
(121881797, '$2y$10$crgX7geX61hd/33NcMisAOI5OJIHPLkAzUbXsNYh.tdmpFfdeKMIW', 'RINA', 'JL. CILENGKRANG 2 KAB. BANDUNG', 'GARUT', '4-Apr-91', '3'),
(121881798, '$2y$10$ETT/wQ5I9b9F2oS0rdBhdOuQOXg6Fsu7Th.p6rlVmEdoMoKaJ5Z8.', 'MAISYARAH', 'KOMP. CIBIRU RAYA D13 RT. 003 RW. 015 CIBIRU BANDUNG', 'RATAWALI KAB. ACEH TENGAH', '6 Juli 1969', '3'),
(121881800, '$2y$10$a351KTN.KyyYVNTgB1G14OWBFcNO6cI1nyxBqSsafkvwRNZBNZ4Py', 'YATI', 'KOMP. PTPN VIII GUNUNG MAS BOGOR', 'BOGOR', '18 Oktober 1974', '3'),
(121881801, '$2y$10$.98wGzk8Jod/kFRVawQAheAys.yMfZjTOAkR2p1s20QYy4HlM6xr6', 'ANGGI LIESTARI', 'JL. SOEKARNO HATTA GG. HASAN PATAH RT. 001 RW. 009 BANDUNG', 'MAJALENGKA', '12-Nov-92', '3'),
(121881802, '$2y$10$yqwdwjtpCY3EPHo/xVtwcu43nKpoXNib26mUz0uEWtE65744ru2kK', 'HELEN PATMAWATI', 'Balekambang RT 01/14  BANDUNG', 'Bandung', '5 Mei 1991', '3'),
(121881803, '$2y$10$mHfaEtf8Aw8IoNuxIWI/S.8d.4TyKAwtBFU0NN38vpb8yKrD7I.sC', 'NUR EVA EVIANI', 'KP. SANGOJAR KAB. GARUT', 'GARUT', '12-Sep-85', '3'),
(121881804, '$2y$10$H1mIerJj2ISFwEasHWJ5ouBSafkajr7jd18ToiZt8NqCT97tllXLa', 'CUPAYANTI', 'Jl. Blok Salim No 27 RT 01 RW 03 Des. Kertajaya Padalarang Kab  Bandung Barat', 'BANDUNG', '24 Juli 1985', '3'),
(121881805, '$2y$10$zUgAzQ9fm2zMe9Va3aKEde896uDlxpQYFrPpbBlmYqfUsgomxcr5a', 'INAYAH MAHMUDAH', 'GRAHA MUTIARA INDAH KAV. 17 RT. 001 RW. 002 KAB. GARUT', 'GARUT', '28 Februari 1977', '3'),
(121881806, '$2y$10$ieS2REMUtSmMDiCwxYPug.tyk42vYC5NdUxYH6day.T99jeIZdllO', 'RANI DAMAYANTI', 'RANCAEKEK RT. 006 RW. 008 KAB. BANDUNG', 'BANDUNG', '27 Mei 1991', '3'),
(121881807, '$2y$10$rQZFRgR.LrYsfVAzp6pmIue.9TnlDQU1TCRdMV/EhKc0GdDXiz0r2', 'DELITA APRILIA RAMADANI', 'Komp. Bumi Asri B.C-150 Kel. Ciroyom Kec. Andir BANDUNG', 'BANDUNG', '18-Apr-89', '3'),
(121881808, '$2y$10$ugq9RXmMkrYgBfGZlW2gv.zzPml0aMNMBn1y1SKjUkPlJDNbjHk.y', 'MARTHA INA B MA\'RIN MUDA', 'JL. SUKARAJA ATAS GG. PA ERIN BLK 223 KOTA BANDUNG', 'WAIWERANG', '19 Januari 1976', '3'),
(121881809, '$2y$10$kD4d.eTX3Nm/X3koj3D4MO1wCoxiNFeqgOQAdQFUNoUdKr4CN22me', 'ERNAWATI', 'Wisma II Pusdikpom No 23 Jl. Leuwi Gajah 05/06 Utama Cimahi', 'MEDAN', '28-Sep-79', '3'),
(121881810, '$2y$10$jwCYDITTYQyw7wKkaC2Te.SwPcRpEF1iJHJEj1OqFeTjxmAGvoYFK', 'DEWI SRI MULYANI SONDAKH', 'Jl. Pramuka XIII/H.138 Bandung ', 'GARUT', '31 Desember 1972', '3'),
(121881811, '$2y$10$8kxxM0dzieMiIToSNwwwN.pIA3r91JI8Ji1XXWv.St8mFOIcYFhee', 'INDRI CITRA RESMI', 'KP. CIPEUTEUY RT. 003 RW. 004 DESA BAROS KAB. BANDUNG', 'BANDUNG', '10 Oktober 1994', '3'),
(121881814, '$2y$10$lnHD8AF7jLvzwhPyUhsHdOtoKUNAqSOZdsozlbBb7FpSG0eMib2oW', 'IDA ROYANI SARAGIH', 'Jl. Renang No. 06 Perumahan Arcamanik Kota Bandung ', 'SIMPANG DALIGRAYA', '28 Januari 1978', '3'),
(121881815, '$2y$10$I7mu1ZGFjm5f5.BGD8FBne6XIMeGdaJNPoxl24hnKVYY9i1kJkrZ6', 'OOY ROKAYAH', 'KP. PASARSENEN RT. 003 RW. 001 DESA PABUARAN KEC. PABUARAN KAB. SUBANG', 'SUBANG', '23 OKTOBER 1981', '3'),
(121881816, '$2y$10$4bMr0e/Eu39veLfQbPpcZ.gVgH58hfYWfPHBqpZeUWD/liPmmZfpW', 'AGUSTINI', 'Jl. Antapani Lama NO. 55 RT 03/08 Kec. Cicadas Kab. Bandung.', 'BOGOR', '17 Agustus 1993', '3'),
(121881817, '$2y$10$1DqwKZ6nWzq1d3JmK5LFN.i2MZKQyYo6XopVwKpYsqDX6odRnOADS', 'ROSITA WATI', 'JL. PESANTREN 119 RT. 002 RW. 008 CIBABAT KOTA CIMAHI', 'MAGETAN', '23-Apr-83', '3'),
(121881821, '$2y$10$DWOCw5SEJPHKxgnxAfqJkuJF1lFSVIPJ8nghnfX3616Pnj5cOkajK', 'IRAWATI', 'Kp. Bonjot Rt. 02/13 Ds. Rancapanggung Kec. Cililin KAB. BANDUNG BARAT', 'CILILIN', '23-Nov-90', '3'),
(121881824, '$2y$10$7ZTWGHy4qvnr8kSElnVYve3ByO.yXc6wfKwnQaFvTmPcZfsr24npa', 'AISAH', 'Kp. Jarakah RT.02/01 Des. Lemah Luhur Kec. Tempuran Kab. Karawang', 'KARAWANG', '3 Oktober 1985', '3'),
(121881825, '$2y$10$8oaxUeSxXt5jLVT7rJ1gS.m0Trti1/GQ2p4hhFlLImYm7XWhpajbO', 'NURLAELA HAYATI', 'TOROWONGAN DESA PUNCAKBARU CIDAUN KAB. CIANJUR', 'CIDAUN', '9-Nov-75', '3'),
(121881827, '$2y$10$8FMpNKEy2Q4vZJRZIxqpLOFejOCwLcTPwP.CWuPwyVnbH7s3SJYxe', 'IMAS RODIAH', 'KP. SEKEAWI RT. 003 RW. 004 DEA SUKAMENAK KOPO SAYATI BANDUNG\n\n', 'BANDUNG', '5 Februari 1981', '3'),
(121881828, '$2y$10$Vgzv9BS5razvGBv.GbxM7eF7Pa2DzthCswKZuNjEVeH8vHj1G8/oe', 'DIAH FIRRANIE', 'Jl. Cihampelas No. 15/355B RT. 07 RW. 05 Kel. Cipaganti Kec. Coblong Bandung 40131', 'CICALENGKA', '5 Juni 1994', '3'),
(121881830, '$2y$10$9Ar8K9pca0tShv30YbjntO/Pc/C3l8fTHCosVeThl2n8goWwHCYxG', 'ENENG SELA SEKSINO', 'Pasir Datar RT 19/07 Kel.Sukamulya Kec. Caringin', 'SUKABUMI', '24 Juli 1994', '3'),
(121881831, '$2y$10$KwQEjNhRfaJrtGTRB600w.IufDK6SGOXXRuo2HEIdTIfobvlhAeH6', 'IKE BUDI MARYANI', 'Perum Gria Mitra Asri Blok S 35 No. 36 Des. Singgasari Kec. Jongol Kabupaten Bogor\n\n', 'MAGELANG', '12 Februari 1983', '3'),
(121881833, '$2y$10$Sj2CUV/kRy/7ZOXV9q6waua.w65.UyotUCfGI1ndiEKkT5esmdFtW', 'LINDA APRIAN PURWANTI', 'Cisondari RT 001/003 Kelurahan Cisondari Kabupaten Bandung ', 'BANDUNG', '12-Apr-92', '3'),
(121881834, '$2y$10$WFEEOpbITWWMUhZ6Hz0kFeDIgobrQHno/KFNgz5ygXt8kEeCAjzMW', 'S YUSTINA TRI PUJI ASTUTININGSIH', 'KOMP. DAMERTA 04 NO. 44 RT. 004 RW. 016 DESA LENGKONG KEC. BOJONGSOANG KAB. BANDUNG', 'YOGYAKARTA JATENG', '20 Oktober 1974', '3'),
(121881835, '$2y$10$cYyZsxZ8WXfP8/HE29NNUuPhEPKLCmcbxsDeJNsB5kXy.eaciHBWe', 'ROKAYAH', 'KP. TIPAR RT. 023 RW. 012 DESA MEKARWANGI KEC. CIKADU KAB. CIANJUR', 'CIBINONG', '3 Februari 1984', '3'),
(121881837, '$2y$10$YWdPRLtwwdbh7.fIbmfM3ObNLR2Mny/ScNQy4MbHSRwaGm0e8MrPu', 'EUIS RATNA SUMINAR', 'Kp. Mulyasari RT. 02/ RW. 5 Des. Babakan Sari Kec. Sukaluyu Kab. Cianjur', 'BANDUNG', '12 Juni 1983', '3'),
(121881838, '$2y$10$.QrpISqYKA5uIRGGrl1eR.lte0WzIcia1S/JWUWwCa08za6pUerIy', 'YETI SURYANI', 'JL. WARUNGJAYA NO. 99 KAB. BANDUNG BARAT', 'PALEMBANG', '28-Nov-71', '3'),
(121881839, '$2y$10$G21nDo0QgeNtF5AQYWjxNuBuqzPOBgc5u2C8zDdr2.QCf5omQ98UC', 'SELVIA SARA LAUHE NAPESSY', 'JL. BOUGENVILLE V NO. 12 RT. 001 RW. 004 GEMPOL SARI BANDUNG', 'BANDUNG', '12-Sep-86', '3'),
(121882707, '$2y$10$DoMIq3Gi5NOer1cez6nnJ.Ujskl2a0jQ.mTPPfmp7wHyXDFXOVbjK', 'NENA KALSUM', 'Jl. Tubagus Ismail VIII No.2 Bandung.', 'BENGKULU', '25 Desember 1989', '3'),
(121882749, '$2y$10$gSYaiagyLn345v/yuVrl3ea/GchKrFZQf/blJBHb.7aVNL3GmBeEC', 'SRI MULYATI', 'Kp. Sukasari Rt.01 Rw.14 Ds. Mekarpawitan Paseh Bandung.', 'BANDUNG', '13-Apr-87', '3'),
(121882790, '$2y$10$83OHNcV2GuYpx.HrxvOFPenzvL.JkzcvTIMapoW.sTiCGP6/Y0I9m', 'DESY LINDA CHRISTIANY SIMANJUNTAK', 'Jl. Jaya Bakti No. 1 Rt.04 Rw.11 Leuwi Gajah Kota Cimahi.', 'CIMAHI', '9-Sep-90', '3'),
(121882812, '$2y$10$RftJexaEUXIg9ua6nq12GeWxVa9c6e/MuiAEQp/4tfoYFvb4TuCtS', 'ASTRI NINGSIH', 'Pindad Blok M.', 'KAYU ARO', '5-Nov-94', '3'),
(131881840, '$2y$10$MIJHtxPkrs1Fi4Zki/AvSOxw/cTrYr4P1iONsLHKaVfnohamjSesy', 'ANITA AYUNINGTIYAS', 'Jl. Sukajaya RT 004 / RW 004 Kel. Cibabat, Kec. Cimahi Utara Kota Cimahi', 'BANDUNG', '25 Januari 1995', '3'),
(131881841, '$2y$10$dDLDQ/OuvMXBAjgbms/kIO4773yzQlAgIdg8WGHbqueLoULwSSlTm', 'YULIANI RACHMAWATI', 'Jl. Jakarta 12 No. 12 RT 002 / RW 002 Kel. Antapani Kulon, Kec. Antapani, Kota Bandung', 'BANDUNG', '29 Juni 1996', '3'),
(131881842, '$2y$10$qXiXhIM8hgldmhfcGZEIkeatwJacaq9bv/uwhwXOzOQgoKQkz3962', 'NOER HILMA', 'Sadang Pasantren RT 006 / RW 012 Desa Margahayu Tengah, Kec. Margahayu, Kab. Bandung', 'BANDUNG', '6 Agustus 1995', '3'),
(131881843, '$2y$10$iemTjcJlunYiv0jmhH8MLeHEIMm0uJfYYD2gEEY/Jw1QqfjMt2RCi', 'VERA PRIANI', 'Jl. Cibaduyut Lama RT 002 / RW 006 Kel. Kebonlega, Kec. Bojongloa Kidul, Kota Bandung', 'GARUT', '27-Apr-95', '3'),
(131881844, '$2y$10$PB4v5rFC5n3zlj67Z2scmuz83NXYuqP9OmoNHzZLfZ2PuqnnMUDfO', 'KHOIRUL BAHRIAH HASIBUAN', 'Jl. Tangkuban Parahu RT 001 / RW 004 Desa Cibogo, Kec. Lembang, Kab. Bandung Barat', 'BANDUNG', '23 Maret 1996', '3'),
(131881845, '$2y$10$Ds4DjF.vGcyszYPAzNXCbuk./iPe/o0/cRn/ygHLyD3Qep.1AJNOu', 'ELI HELIYANI', 'Kp. Panyindangan RT 001 / RW 001 Desa Panyindangan Kecamatan Cibinong, Kabupaten Cianjur', 'CIANJUR', '14-Apr-94', '3'),
(131881846, '$2y$10$q9d/RRy0uM06GSC7NIWgrOwYeXVThNvubrGGU/S8OCmP9irentdcu', 'SALMA KHOIRUN NISA', 'KOMP. CIBOLERANG JL. MARGAJAYA IV NO. 111 RT. 004 RW. 005 KELURAHAN MARGAHAYU UTARA KECAMATAN BABAKAN CIPARAY KOTA BANDUNG', 'BANDUNG', '12-Sep-95', '3'),
(131881847, '$2y$10$sMOwsebebtQzvmZOubWUTuWa7pdOtoNZSrKhZvGwDKzO/yP9fooCu', 'MERINDA AYU NINGRUM', 'Dusun Sukadamai RT 002 / RW 001 Desa Bogor, Kec. Sukra, Kab. Indramayu', 'INDRAMAYU', '7 Juni 1996 ', '3'),
(131881848, '$2y$10$fT8Ku2hQR41jtRHjT2Vz1OLEYl.Wg7k4W27mjW0TnU6wJtKwcb4GC', 'WANTY PERNITA', 'Kp. Nagrak RT 001 / 003 Desa Kalapa Nunggal, Kec. Cikadu, Kab. Cianjur', 'CIANJUR', '9 Februari 1995', '3'),
(131881849, '$2y$10$ast3y1xCeKq7FItNFmk9k.CPJJR1/SiQyfwYY2jN7q6ivTvz5tCS2', 'SONYA LUSIANI', 'Kp. Leuwi Nanggung RT 002 / RW 009 Desa Pameungpeuk, Kec. Garut, Kab. Garut', 'BANDUNG', '19-Apr-95', '3'),
(131881850, '$2y$10$cyGbuo2Ss7ydnbgM3qCPxOUoHiIJdUS2jhL2UHBI3oJV9Ji3BUWau', 'DESRI MULYATI', 'Kp. Leuwi Nanggung RT 003 / RW 011 Desa Pameungpeuk, Kec. Garut, Kab. Garut', 'GARUT', '1 Desember 1994', '3');
INSERT INTO `users` (`nomor_id`, `password`, `nama_lengkap`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `status_user`) VALUES
(131881851, '$2y$10$xwofusb2m.K8QWPbM/.u/.ZPJpvefXeIAQzpUPF/NrmeIm6YsnB5m', 'IDAH', 'Kp. Tambak Baya RT 003 / RW 007 Desa Cipetir, Kec. Cibeber Kab. Cianjur', 'CIANJUR', '4 Agustus 1995', '3'),
(131881852, '$2y$10$YENpqC5Peuunw3HoD8HCe.QGTyHyr8cHmsd9SdAk0gMpDwYjq6zqi', 'PIPIH NURAFIAH', 'Arcamanik RT 001 / RW 003 Desa Mekarmanik, Kecamatan Cimenyan, Kab. Bandung', 'BANDUNG', '25 Oktober 1994', '3'),
(131881853, '$2y$10$mEextLrm6Og9J6PLB6aUYuHattaqBb/oxkDWlJdXCv3HLrfP55AEG', 'SITI AISAH', 'Kp. Bencoy RT 005 / RW 006 Desa Cikondang, Kec. Cibeber, Kab. Cianjur', 'CIANJUR', '10-Apr-94', '3'),
(131881854, '$2y$10$uR4P3DZM9cnMVWZqKkvXve7Yt.Is/bof0dcuDmU1wVQvJAdMKUt6y', 'ISUS', 'Kp. Cinerang RT 002 / RW 009 Desa Sukamulya, Kec. Naringgul, Kab. Cianjur', 'CIANJUR', '17 Mei 1994', '3'),
(131881855, '$2y$10$qzeY6xxdGnm67SJPeXrKOO7sMTkg46AVDcQXClRiFBfK/j6YKcShm', 'YESI MARLINA', 'Dusun I Munggu RT 002 / RW 002 Desa Munggu, Kec. Muara Kuang, Kab. Ogan Ilir, Sumatera Selatan', 'MUNGGU', '3-Apr-94', '3'),
(131881856, '$2y$10$7vOKAfa4OfVWfWoO/feOu./EaR6bJkB6EpCwg79e.OCxztOfhwd/S', 'NANEU NURJANAH', 'Kp. Cipicung RT 001 / RW 009 Desa Wangunjaya, Kecamatan Naringgul, Kab. Cianjur', 'CIANJUR', '17 Juni 1995 ', '3'),
(131881857, '$2y$10$MUd0DBRYYS4MEf/l9VNxO.Gd5rKIyAWwQ1lbg0JiPhq0xISEegQRC', 'DINY NOVCAHYA DERY', 'Jl. Raya Losarang RT 004 / RW 001 Desa Puntang, Kecamatan Losarang, Kab. Indramayu', 'INDRAMAYU', '17-Nov-94', '3'),
(131881858, '$2y$10$aSTHG.ROgAQ9IXLgJ5tiTOAV5JdBqRX7Vje3E1.mQvTbbBulR6Nlm', 'FITRIANA', 'Jl. Gegerkalong Girang No. 43 RT 006 / RW 003 Kel. Gegerkalong, Kec. Sukasari, Kota Bandung', 'SUKABUMI', '12 Mei 1995', '3'),
(131881859, '$2y$10$I1FMIm17SRPS1xmq.QR8/en6f4t11q3WR4I4Sww.ZdxMfTQC7FLEy', 'SUSI APRILIA', 'Dusun Sidamukti RT 032 / RW 014 Desa Wanakerta, Kecamatan  Purwadadi, Kab. Subang', 'SUBANG', '17-Apr-95', '3'),
(131881860, '$2y$10$kDPiCvHriyr8uV1TrqP4rONteEFMZ1WDJcbvIln4rhkXuA7CdnSwq', 'NURHALIFAH JULIANA', 'Kp. Katapang RT 003 / RW 014 Desa Cilampeni, Kecamatan Katapang, Kab. Bandung', 'BANDUNG', '10 Juli 1994 ', '3'),
(131881861, '$2y$10$fxh6Z2Wawn46U0eX1sGTEePadA70qw99QbNhlZRujL8I1QBhtQBWa', 'AULIA FITRI KHOIRUNNISA', 'Jl. Dago Pojok No. 68A RT 003 / RW 003 Kelurahan Dago, Kecamatan Coblong, Kota Bandung', 'BANDUNG', '20 Februari 1996', '3'),
(131881862, '$2y$10$GtA/Pg55IJ7DunJGBe23bOXUi49SxTurSG6KBZPpE30ZSgPRWGZ/i', 'RIA AMALIA', 'Kp. Campaka RT 001 / RW 005 Desa Campakamekar, Kec. Padalarang, Kab. Bandung Barat', 'BANDUNG', '03 Juli 1995', '3'),
(131881863, '$2y$10$wt6KT9XwWk/mWTHp8DHfKee4./w3Yz51.DYlkn79QOwEdOIrr0DjO', 'YELA VERONIKA', 'Jl. Panday Gg. Radar II No. 168 RT 005 / RW 007 Kel. Karangmekar  Kec. Cimahi Tengah, Kota Cimahi', 'MUARA AMAN', '4-Sep-95', '3'),
(131881864, '$2y$10$Pk0aBZR5o3zagmm.VbulbOqVV8SQHEg5jFfDKqD8ZrSuUXXeGsHue', 'NADIYA DIANATI FAUZAN GHASSANI', 'Hantap RT 003 / RW 012 Kelurahan Babakan Surabaya, Kec. Kiaracondong, Kota Bandung', 'BANDUNG', '2 Juni 1994 ', '3'),
(131881865, '$2y$10$3XDmEVLBobTo6NR7waqxT.BRCsjHOPlmykZG/T9uL2S5FK5mYGwMy', 'SILMA HAWA ROFIQOH', 'Jl. Taman Sari II RT 017 / RW 006 Desa Pasirkareumbi, Kec.  Subang, Kab. Subang', 'BANDUNG', '4 Agustus 1995', '3'),
(131881866, '$2y$10$g1mE56oJUiaHEZARfL323ufJj5WJ/MAmfuufQxS0AOI3CWwlYFRke', 'HERNI DAMAYANTI', 'Kp. Sindangrama RT 004 / RW 003 Desa Sukasirna, Kec. Leles, Kab. Cianjur', 'CIANJUR', '1 Mei 1995', '3'),
(131881868, '$2y$10$.Ji1U0IIFxwwLF6YW7MlYeV.VDO1YOTDbYNuERRsv1M/10sDv9ije', 'RATNA SARI', 'Kp. Babakan  RT 004 / RW 008 Kel. Babakan, Kec. Babakan Ciparay, Kota Bandung', 'BANDUNG', '22 Oktober 1994', '3'),
(131881869, '$2y$10$dSJdE7k56xUPgL4m8mTTNOZ8G1wXXJE45GKd2D3f.7PuGWpza16JS', 'WINA SRI WAHYUNI', 'Kp. Cilame RT 006 / RW 001 Desa Tenjolaya, Kec. Cicalengka, Kab. Bandung', 'BANDUNG', '25 Januari 1994', '3'),
(131881870, '$2y$10$GZaXzjYTi99QCkluoZgFG.9dRbxF6wKIy8RxL9hY/MYpYM/CSxgMS', 'FENTI PUJIANTI', 'Kp. Waas RT 004 / RW 001 Desa Sukasari, Kec. Pameungpeuk Kab. Bandung', 'BANDUNG', '8-Sep-95', '3'),
(131881871, '$2y$10$klF.pArKCWhNK5CLjzKcHedPAPDMtROKiEZNYwXxE84/No34D/czW', 'YEN YEN SRI OKTAPIANTI', 'Ifar Gunung RT 004 / RW 008 Desa Sentani Kota, Kec. Sentani Kab. Jayapura, Papua', 'BANDUNG', '2 Oktober 1987', '3'),
(131881872, '$2y$10$5I0.uYw5hLJj88sfDpA1uefplIdnUaX9uArVNkPXVEnSe/bAb9A/2', 'DEWI CITRA NURAENI', 'Kp. Cangklek RT 002 / RW 002 Desa Gegerbitung, Kecamatan Geger Bitung, Kab. Sukabumi', 'BANDUNG', '25 Desember 1995', '3'),
(131881873, '$2y$10$GZ6YhpmI0y4Igu/rtBENWubfH5rAl8AjS11TthZqJitTbE.iKf/Lq', 'ANNISA NURFARIDAH FADILLAH', 'Jl. Mangunsarkoro RT 002 / RW 010 Desa Sayang, Kec. Cianjur Kab. Cianjur', 'CIANJUR', '7 Juni 1995', '3'),
(131881874, '$2y$10$u8rc1m.yNrzqkqTaUqIUa.mn7Mghab3avyABBcwPu3sWA/gQ2Obg6', 'IRMA YULIAWATI RAHAYU', 'Kp. Sirnagalih RT 003 / RW 002 Desa Benjot, Kec. Cugenang, Kab. Cianjur', 'CIANJUR', '24-Apr-95', '3'),
(131881875, '$2y$10$0gIJ9OaxUlitcOMEYYIJh.4TVke6/mZgHdvllfkdWmqs9WSEuFp6q', 'SITI MASITOH', 'Kp. Mandiri RT 004 / RW 001 Desa Gandasari, Kecamatan Kadupandak, Kab. Cianjur', 'CIANJUR', '20 Juni 1994', '3'),
(131881876, '$2y$10$pF.fRdLQAfxkKfzyH2Bya.kHCAQecKvnN12UiUNBz3MVoILJX9Fyu', 'NELI NURWANTI', 'Bojongkoneng RT 002 / RW 006 Kel. Campaka, Kec. Andir Kota Bandung', 'GARUT', '21-Nov-95', '3'),
(131881877, '$2y$10$nFhBbH.zXZweCCTdHpKYd.mU1NscDe.EOLrpPXAhZfKJJcN0NebzG', 'FAJRINA MEITIKA', 'Jl. Nilem V No. 25 RT 004 / RW 005 Kel. Cijagra, Kecamatan Lengkong, Kota Bandung', 'BANDUNG', '24 Mei 1996 ', '3'),
(131881878, '$2y$10$zWfBu3Q3O8MWeX26QISk2Oee2FFNLr.mMI7OGu84dI8MYpS3lBBYy', 'NURWAHYUNI WALIYANTI SAM', 'Kp. Cilame RT 003 / RW 019 Desa Campakamekar, Kecamatan  Padalarang, Kabupaten Bandung Barat', 'SUKABUMI', '28 Juli 1995', '3'),
(131881879, '$2y$10$P7vKROQXVRINdLogZQcMEuwvjr268tCnf/Ex.2ulCvNV0D742RiSW', 'BELLA FAJAR NIRMALASARI', 'Kp. Ciharashas RT 001 / RW 003 Desa Cikarag, Kecamatan  Malangbong, Kab. Garut', 'GARUT', '16 Juli 1995', '3'),
(131881880, '$2y$10$.6cEodHbdt1PXTx8J/11oOMakl8ZqgWtAkcMIAqzJwVe2RM7xY3Qa', 'INTAN NURSULISTRI', 'JL. RANCABALI NO. 9 RT. 005 RW. 003 KECAMATAN CIMAHI UTARA KOTA CIMAHI', 'TASIKMALAYA', '16 JUNI 1996', '3'),
(131881881, '$2y$10$gUXZYWse0Y9gsjpGsdW8KOAjrszfPNxedsvE/cnEbl7beNyu3HbnC', 'SULASTRI', 'Kp. Kebon Sawo RT 003 / RW 007 Desa Sarimahi, Kec. Ciparay Kab. Bandung', 'BANDUNG', '22-Nov-95', '3'),
(131881882, '$2y$10$lPu/d5N17swQryn1oZxfWe.IjaPMuvM5Zd374.wvrhAtIPka32V3y', 'FRIESKA GUSTIANA', 'Kp. Kaum RT 004 / RW 002 Desa Cidamar, Kecamatan Cidaun Kabupaten Cianjur', 'GARUT', '15 Agustus 1995', '3'),
(131881883, '$2y$10$xv4Tb.pZ4aVzIhHSnGEg/.YQDNM7yz12HqQ7sPEFywPR5XeowPaHW', 'DEVI INDIYANI', 'Kp. Cicadas RT 001 / RW 003 Desa Wangunjaya, Kecamatan Naringgul. Kab. Cianjur', 'CIANJUR', '10 Oktober 1994 ', '3'),
(131881884, '$2y$10$Ss2mxAznZWjxMq.4LmQ8yeBL1CAglYnfqd6eWvlKgRh/UXJR/RhWC', 'NOVITA RAHMAWATI', 'Kp. Babakan Mekar RT 004 / RW 014 Desa Langonsari, Kec. Pameungpeuk, Kab. Bandung', 'BANDUNG', '4-Nov-95', '3'),
(131881885, '$2y$10$c7Xh8AHTzQ8dFXuv45WZgeOYlYgTvq.NPhL0vLThm3QLK29OgIgh2', 'SITI MA\'RIFAH HASANAH', 'Kp. Kadupugur RT 001 / RW 007 Desa Cisarandi, Kecamatan Warungkondang, Kab. Cianjur', 'BANDUNG', '6 Januari 1995', '3'),
(131881886, '$2y$10$IXKfZhNjCGEI45E5uLkyfe4rEgmEQBMIf/2lFFali14IlhT0Q1gEK', 'NURUL IZZAH', 'JL. CIROYOM 5 RT. 001 RW. 009 KELURAHAN CIROYOM KECAMATAN ANDIR KOTA BANDUNG', 'JAKARTA', '5-Sep-94', '3'),
(131881887, '$2y$10$RIs9pwrcLVGC.bsDha/9lei/m1TrG0cYK2ma51I4RYvdoRZzvuO9S', 'DWI YUNI AULIA', 'Kp. Pupungkuran RT 002 / RW 006 Desa Kademangan, Kec. Mande, Kab. Cianjur', 'TANGERANG', '14 Juni 1995', '3'),
(131881888, '$2y$10$JtJKdn7F/7NaSV./I8wf8.9UQNhFIUeE91Fdm7KvuxNgc9OO64zvC', 'KHANIPAH RETNO RAHAYU', 'Jl. Jayagiri No. 69 RT 003 / RW 004 Desa Jayagiri, Kecamatan Lembang, Kab. Bandung Barat', 'BANDUNG', '12 Juni 1995', '3'),
(131881889, '$2y$10$Q81xTIzK2c3KjDNENI5hMu/9pHev2RhZN88Dh8xL0.AnQ/oXa2SNu', 'TIARA DAMAYANTI', 'Jl. Sekeloa Tengah RT 02 RW 04 Kel. Sekeloa Kec. Coblong Kota Bandung\n\n', 'BANDUNG', '2 DESEMBER 1994', '3'),
(131881890, '$2y$10$XdNMPUih6r6yx0MkD1T3jOLttEklPCPr7WB6a7iHcLwrT2GZTFC/S', 'PUSPITA BINTANG LESTARI HIDAYAT', 'Jl. Brali RT 001 / RW 001 Desa Banua Halat Kiri, Kecamatan Tapin Utara, Kab. Tapin, Kalimantan Selatan', 'BANDUNG', '2 Februari 1996', '3'),
(131881891, '$2y$10$JFNRRnMnPZcfgTA3.4DcIun4w/9ZLJlU.qMcnB2QjIGHm.HyC3OiS', 'SHOFI NURFADHILLAH', 'JL. RAYA RANCABALI NO. 77 RT. 002 RW. 005 PADALARANG KABUPATEN BANDUNG BARAT', 'BANDUNG', '15 MARET 1995', '3'),
(131881893, '$2y$10$dJT9RSq2Xo.aTqaw0Qw.AehlEzxc03/37Qv0b6T.GJgxS.fpGb2Ki', 'MUSTIKA NURLAILA', 'Kp. Parongpong RT 003 / RW 011 Desa Karangwangi, Kec. Parongpong, Kab. Bandung Barat', 'BANDUNG', '27 Agustus 1995', '3'),
(131881894, '$2y$10$ZHI5Yds.dgelpMHj6aTjM.9n56aVgswdXrrdaHVHb5VKIDLGvo9v6', 'INKA SAFITRI', 'Kp. Babakan Sirna RT 002 / RW 015 Desa Sukamanah, Kec. Pangalengan, Kab. Bandung', 'BANDUNG', '5 Februari 1995 ', '3'),
(131881908, '$2y$10$nXH5BuefUEB.7kbj.NHhye6muBeYTmV3t2CkFBF2j6Wxib9LcSw3O', 'AMI MARIYAM', 'Dusun Curugagung RT 012 / RW 003 Desa Curugagung, Kec. Sagalaherang, Kab. Subang', 'BANDUNG', '1 Januari 1984', '3'),
(131881909, '$2y$10$2pcJoN0sPNP.qjjMIrl.Wun0KXNGUjTHi6A9OVnrc6x6pGn4q0Stm', 'TITIN', 'Kp. Cigebar RT 005 / RW 001 Desa Bojongsari, Kecamatan Bojongsoang, Kabupaten Bandung', 'BANDUNG', '10 Maret 1981', '3'),
(131881910, '$2y$10$vqhkhdXf6zfmZRwb/6a0Q.S6TmD.xuToAh5v5BO2CNwRRyUwbtsy2', 'NOLA ANITA', 'Kp. Rancajigang RT 004 / RW 015 Desa Padamulya, Kec. Majalaya, Kab. Bandung', 'TASIKMALAYA', '14 Juni 1996', '3'),
(131881911, '$2y$10$uT6yorBd3643kKagRW5EBOEpYP3B0d7xR62zserWdzFQKfJz0/FZG', 'LAMTIAR SIANTURI', 'Jl. Saluyu B.VII No. 4 RT 002 / RW 009 Kel. Cipamokolan, Kec. Rancasari, Kota Bandung', 'ARITONANG', '5 Januari 1975', '3'),
(131881912, '$2y$10$qlwbW00Hg6mA0FOJjr2tJeLuqwmk/esAWaBURUS/75H6ZCrrMdl6K', 'SUSI ARMA', 'Jl. Jayakatwang XIV No. 10 RT 006 / RW 014 Kel. Uwung Jaya, Kec. Cibodas, Kota Tangerang', 'PALEMBANG', '9 Agustus 1983', '3'),
(131881913, '$2y$10$xU6PtiMZMa7O6C.CpdIIBe9DVmW1mCxqVx3yd5gpRvMlDz5RtusSa', 'ERLINA MARIATI SIBORO', 'Kp. Aur Pungkur RT 002 / RW 010 Desa Kayuambon, Kecamatan Lembang, Kab. Bandung Barat', 'PARAPAT', '21 Juli 1979', '3'),
(131881914, '$2y$10$6MCJG79Hs8a56lo2cwVjGONW7vF1nfkXehjDj900eqePSZiW7kkiK', 'TINI FITRIANI', 'Komplek Seskoad Flat J-102 RT 009 / RW 007 Kel. Lingkar Selatan, Kec. Lengkong, Kota Bandung', 'BANDUNG', '31 Agustus 1982', '3'),
(131881915, '$2y$10$IBerSZUsWbxUD7l7gIIYhOekNk.P7sAhsAT7Sh5bdmc0ei0.VrnwO', 'NIAWATI', 'Jl. Gegerkalong Girang RT 005 / RW 001 Kel. Gegerkalong, Kec. Sukasari, Kota Bandung', 'GARUT', '23 Juni 1995', '3'),
(131881916, '$2y$10$jXDJZ0Atc487zSVF.1ZdY.2mr5J4E/8djAZsiNKkrg2.p.ADlqcKu', 'SULESTI AGUSTINA SIANIPAR', 'Komp. Margaasih Permai Blok S3 No. 20 RT 006 / RW 019 Kel. Margaasih, Kec. Margaasih, Kab. Bandung', 'PONTIANAK', '16 Agustus 1977', '3'),
(131881917, '$2y$10$mstCksLXcTZLp5agTNlyh.3HkDRm4wVEi/sjFM7fvxu94GgTGJJwu', 'ERVINA FERDIATI', 'Komp. Puri Cipageran Indah Blok B6-07 RT 004 / RW 018 Desa Tanimulya, Kec. Ngamprah, Kab. Bandung Barat', 'BANDUNG', '5 Februari 1981', '3'),
(131881918, '$2y$10$1KyxN4nzigxXRUjdAFV3s.10avN5CWuBqqUTMOkn7pUTApRhSOk8S', 'SUWENDAH', 'Kp. Cililin Timur RT 001 / RW 003 Desa Cililin, Kec.Cililin, Kab. Bandung Barat', 'BANDUNG', '23 Agustus 1971', '3'),
(131881919, '$2y$10$7QThC7j2f2eaKA79hGsbsuHcokfn5PAhSYuwV3w0/Plz/ezVlE6WO', 'NENNY FEBRIANI SINAGA', 'Jl. Kopo Gg. Lapang IV No. 154/196A RT 005 / RW 004 Kel. Kopo, Kec. Bojongloa Kaler, Kota Bandung', 'MEDAN', '12 Februari 1979', '3'),
(131881920, '$2y$10$yG1Dl.d1t5cN7rzjMv4Fi.9AQCz.4CoNGUDNDxG36wHuvrQuPWmOS', 'SHAFIRA NURUL NOVIANTI', 'Jl. Akiel No. 11A RT 003 / RW 008 Kel. Ciateul, Kec. Regol, Kota Bandung', 'BANDUNG', '6-Nov-95', '3'),
(131881921, '$2y$10$H2PpNyddYo4SbWn.tQj8PO7nVf6eFLyUAxsknLkDEgAHx2M56/GXG', 'SITI NURLAELA', 'Gg. Turi II RT 016 / RW 002 Desa Nagritengah, Kecamatan Purwakarta, Kabupaten Purwakarta', 'BANDUNG', '4-Sep-80', '3'),
(131881927, '$2y$10$QE24.71hkLaFmyiAd1gYAO2jZI.ULD/ijTK2ED1/Yk6t3qBKqX49q', 'TUTI ERNAWATI', 'DK Krajan Tengah RT 001 / RW 003 Kel. Kalinusu, Kecamatan Bumiayu, Kota Brebes', 'BREBES', '24 Februari 1983', '3'),
(131881928, '$2y$10$RlpKLSoQnROtkkcCLaeqh.WVj0D6OR9GCuTamjBacgq0YzzMwqITG', 'WAWAT WATINAH', 'Jl. Jaka Kusuma No. 23 Desa Panongan, Kec. Jatitujuh Kab. Majalengka', 'MAJALENGKA', '6 Juni 1974', '3'),
(131881929, '$2y$10$ss.DyatxbHXrd18Yo7u0sejMDpdbuRAp6zsVMZAkN/mNSPU85A4Ky', 'ERNI SUHERNI', 'Komp. Griya Pataruman Indah B-3 RT 001 / RW 014 Desa Pataruman, Kec. Tarogong Kidul, Kab. Garut', 'KUNINGAN', '27 Juli 1979', '3'),
(131881930, '$2y$10$zXifNFqrlgotb5bY6ezbh.TDw5V8TzuaQEJSmEjwNaDOnblYAPQXi', 'ENDEN EVI NURIWULAN', 'Kp. Galumpit RT 001 / RW 025 Desa Kota Kulon, Kec. Garut Kota, Kab. Garut', 'GARUT', '19 Maret 1977', '3'),
(131881931, '$2y$10$kWJ5CRG8nwobMUhKZRQH9.sR6nTMo0VwCy3XYkZruifIO2cmIdJZG', 'WARSIAH', 'Kp. Joho RT 003 / RW 001 Desa Sukamelang, Kec. Kasomalang Kabupaten Subang', 'SUBANG', '20 Juni 1982', '3'),
(131881932, '$2y$10$KH.UgCnqX.6dZuJ/4J5rFuVHsPNnCFsRCoLPW3Ot4ZwRoggLos4H.', 'LUSI MARDIAN NUGRAHA', 'Dusun Curugagung RT 012 / RW 003 Desa Curugagung, Kec. Sagalaherang, Kab. Subang', 'SUBANG', '1 Juli 1994', '3'),
(131881933, '$2y$10$oAps4PwaL1t5269VlOa9.uoF2Z20zHS7ZXud34Dh8omK8FNO4Z3U.', 'NURAIDAH', 'Jajaway Dago Atas RT 002 / RW 001 Kel. Dago, Kec. Coblong Kota Bandung', 'CIANJUR', '16 Mei 1983', '3'),
(131881934, '$2y$10$0gRqGVx6j.xQybbuxapyrulm/O9YX58LD16XswfjdDZu7wuswMAeS', 'EPI PERMANAWATI', 'Dusun Puhun RT 013 / RW 005 Desa Cipasung, Kec. Darma Kab. Kuningan', 'KUNINGAN', '18 Oktober 1988', '3'),
(131881935, '$2y$10$AtY60EiatCUtq9rhyCvO7.fyROfjU.jsgJykzTaalmcVeSe71x2xu', 'FERDOLINA', 'Dusun II  RT 006 / RW 003 Desa Suka Harapan, Kecamatan Kendawangan, Ketapang, Kalimantan Barat', 'SEPOTONG', '30 Agustus 1981', '3'),
(131881937, '$2y$10$ogPPGSAuDUYC2O4Q0yizeunzRUqjdR8BCoMOfp1SQVheba7Y3WGMq', 'RITA HERYATI', 'Kp. Ciwaru RT 014 / RW 004 Desa Sumurgintung, Kecamatan Pagaden Barat, Kabupaten Subang', 'PEGADEN', '17-Sep-79', '3'),
(131881938, '$2y$10$jJzmwKuXVx2adAnQW/VSD.7rXdRh5Ds30xRihmIXe6A2ePJVOyjBa', 'SULASTRI', 'Kp. Ciwaru RT 010 / RW 003 Desa Sumurgintung, Kecamatan Pagaden Barat, Kabupaten Subang', 'SUBANG', '15 Maret 1979', '3'),
(131881962, '$2y$10$sRCekK0XssOqzJh2KpThrO40EC5G1cdAatvktBR//X8AeQCzM19ni', 'VINA SELVIANA DENIS', 'Kp. Hunyur RT 003 / RW 004 Desa Neglasari, Kecamatan Bojongpicung, Kabupaten Cianjur', 'CIANJUR', '24-Sep-91', '3'),
(131881963, '$2y$10$pj1PlET2UdHkNFO/7gPKI.aYApW589aGQXHTn9XwRYpcR24TXc3Ya', 'YUSMAITA', 'Komplek KPKN RT 003 / RW 001 Desa Purwamekar, Kec. Purwakarta, Kab. Purwakarta', 'JANARATA', '13 Juni 1975', '3'),
(131881964, '$2y$10$b8it7wdnIZwvXuBdQzm1U.uMywj89SpVXesVk5CGuvvikGCW.KjAS', 'YANTI RUHIATI', 'Jl. Nanjung No. 103, Kp. Mencut RT 003 / RW 002 Desa Lagadar, Kec. Margaasih, Kab. Bandung', 'BANDUNG', '26 Januari 1978', '3'),
(131882895, '$2y$10$goyiULlFR.4khLkrdjclv.9snSOdR40n.pxRp1zUO7G5/hxclJpuq', 'SINTA MUSTIKA', 'Kp. Prapatan Kec. Patokbeusi Kab. Subang.', 'SUBANG', '22-Sep-93', '3'),
(131882896, '$2y$10$PkNMhQ6hkqS7o.d35II8lug1spd0GagbRpJU2tnaDjI7qwrG8xDwq', 'APRIYANTI HIDAYAT', 'Jl. Ciguruwik RT 04 / 04 Ds. Cinunuk Kec. Cileunyi, Kab. Bandung.', 'KARAWANG', '29 Agustus 1992', '3'),
(131882897, '$2y$10$AKlA8jpNKWg22Z486DRvMOoIDrlRsMyHlxG2pDmbG6LBT9CcsVcq6', 'NENENG HALIMATUSADIYAH', 'Jl. Ds. Cipadung RT 01 / RW 14 Kota Bandung.', 'BANDUNG', '17-Apr-92', '3'),
(131882898, '$2y$10$YRCb1ZiqcPv256IUz7s68.0uxX3LdcLyQOnhEhu7tb4oZGPx7Rx3S', 'LIA DWI PEMILIA', 'PERUM. PERMATA KOPO BLOK F6 KAB. BANDUNG', 'CIKELET', '22-Apr-82', '3'),
(141881939, '$2y$10$A.tbT.8VyeT/yVkrDh1i6O3lNTq2CMVkUWYb5ipBjEEBSoleMCyXK', 'INTAN PERMATA SARI', 'Jl. Maribaya No. 5 RT 01 RW 01 Jayagiri Kec. Lembang  Kabupaten Bandung Barat\n\n', 'BANDUNG', '17 Juni 1996', '3'),
(141881940, '$2y$10$tnrJ9skh/jJDL6AytNwIYukrrEbwYWGyR0oZUAbcpMNvzo6Zk7F4y', 'AI NURHASANAH', 'Kp. Gelarmulya RT 14 RW 01 Ds. Sukamulya Kec. Leles Kabupaten Cianjur', 'CIANJUR', '7 Mei 1996', '3'),
(141881941, '$2y$10$hV8X2HgmbE2YMsreORjGMeBu/Jrzb3BhLci.LP.cfxBsYqybp7qKe', 'YULITA PURBOSARI', 'Jl. Gegerkalong Girang No. 12 RT 06 RW 06 Gg. Dahlia I  Kota Bandung\n\n', 'WONOGIRI', '12 Juli 1993', '3'),
(141881942, '$2y$10$IhEvvYgxwyjjEXkXVtPE3uhxtYu3D8/n9JbRdLX0EK1T.e0j14Eae', 'ASTRILIA DIMAYANTI', 'Kp. Tegal Mantri RT 01 RW 12 Kel. Lembang Kec. Lembang Kabupaten Bandung Barat\n\n', 'BANDUNG', '6-Apr-95', '3'),
(141881943, '$2y$10$xDtZV4C4v.rBxxzuXbyRE.HUYlU5tPCR4UYJFkKAhdycg74pXTvzq', 'SELLA YOLANDA SARI', 'JALAN PAMITRAAN V KOMPLEK PANGHEGAR PERMAI RT 05 RW 09 KEL. CIPADUNG KULON KECAMATAN PANYILEUKAN KOTA BANDUNG', 'PENDOPO', '27 JANUARI 1996', '3'),
(141881944, '$2y$10$9el1GlggDYTIRl7F5MU21uMJddkxfcYxgkcaW5pAYvq0K1CNh3qXK', 'ANISA DHAMAYANTI PERMANA', 'Jl. Permata Raya Blok Z 2 No. 36 RT 03 RW 05 Ds. Tanimulya Kec. Ngamprah Kab. Bandung ', 'BANDUNG', '1-Apr-96', '3'),
(141881945, '$2y$10$OH.t1PmR5OpH6TpUIiIb3uuEpkFziBRFZAk4WjJMdcdqpB.vImmzC', 'SRI MULYANI', 'Kp. Rancatiis RT 01 RW 09 Ds. Tangsimekar Kec. Paseh Kab. Bandung\n\n', 'BANDUNG', '10 Oktober 1994', '3'),
(141881946, '$2y$10$LpD134lL19YGYQY1UcYDR.t/13aGkHTFib0UXvn/8q/uHf0F8WHA2', 'CINDY WIDYA LERINA', 'KP. CILUMBER RT. 001 RW. 007 DESA CIBOGO KECAMATAN LEMBANG KABUPATEN BANDUNG BARAT', 'BANDUNG', '4 MARET 1997', '3'),
(141881947, '$2y$10$LihyBu1BRTzhdTGOpeHejurnSO80Q.6d6DbJcrbc26nTohjKeLoEK', 'REKSI INTAN FAUZI', 'KP. SATRIA RT. 002 RW. 005 DESA MANDALAKASIH KECAMATAN PAMEUNGPEUK KABUPATEN GARUT', 'GARUT', '6-Nov-95', '3'),
(141881948, '$2y$10$GihOtYR6k7ls6thJu5x3WeEH6IXOc0KMoyHNCfKOVPZv72Pe13EIS', 'ANISA ENDAHSARI', 'Jl. Tulip 1 No.10 Gempol Sari Indah RT 06/04 Ds. Gempol Sari Kec. Bandung Kulon Kota Bandung', 'KARAWANG', '6 Mei 1996', '3'),
(141881949, '$2y$10$7jBjk.AuptlYSH6wcwoxlOKtaVY0ZsnhHjBiq/pYyGo3FuziHRUWW', 'YAYANG CEMI PRATIWI', 'Jl. Lapangan Tembak RT 13 RW 13 Cicadas Kec. Cibeunying Kidul Kota Bandung\n\n', 'KARANG DAPO BARU', '10 Juni 1996 ', '3'),
(141881950, '$2y$10$OOqk6mpc6LIquopqnIf0pu5Zul9QQ.zi32CK.TqudaRIgBIrcTsFm', 'IKA YULIANTI', 'Jl. Sukamulya No. 7/142-B RT 07 RW 09 Kel. Cikutra Kec. Cibeunying Kidul Kota Bandung\n\n', 'KEBUMEN', '5 Juli 1996', '3'),
(141881951, '$2y$10$nb/QUvwGgV1PKYDS1IPIKeT9tmIRuV3A7EJoqi95rU/dRzEzoqz1m', 'NORMA FITRIANY', 'PERUM. PERMATA CIKARANG KOTA BEKASI', 'CIAMIS', '16 FEBRUARI 1996', '3'),
(141881952, '$2y$10$/YeWQif/EJPIfpM8tpom5.BBzLfeKCEJT5kozadT3PUDu4wgMB/yS', 'TIYA LUSRIYANTI', 'Kp. Warung Bandrek RT 02 RW 06 Ds. Kadupandak  Kec. Kadupandak Kabupaten Cianjur\n\n', 'CIANJUR', '2 Agustus 1995', '3'),
(141881953, '$2y$10$RFxZtU1WG209s5ZzTMK2guglikWvU.WYNo3MsuY/mI.z6u4PZvzkK', 'RESI RIZKIARI SRI MARTIANI', 'Kp. Sukaresmi RT 03 RW 01 Kel. Cibingbin Kec. Bojong  Kabupaten Purwakarta\n\n', 'PURWAKARTA', '3 Maret 1996', '3'),
(141881954, '$2y$10$lGLVdlnEinGWRqgXcwrb3u02Iy7vVNu0qIEo2vI4vB05kZem7M286', 'AMBAR SARI PURNOMO', 'Jl. Sentral No. 78 RT 05 RW 05 Kel. Cibabat Ke. Cimahi Utara Kota Cimahi ', 'CIMAHI', '9 Mei 1996', '3'),
(141881955, '$2y$10$N2FU3/gzswxfakYLRVDvPOkGKN9.lz2ZqHWkMRXJt6mVDSnkBkBaS', 'SHERLY DEVIANI RAHMAT', 'Komplek Bumi Asri Blok I D 32 RT/RW 13 Desa Mekarrahayu  Kec. Margaasih Kabupaten Bandung\n\n', 'BANDUNG', '15 Desember 1995', '3'),
(141881956, '$2y$10$i20Qht2wuMzaKENMPilqwe8Pz6i3hUWi3Wqg9mQjrtde6iy3iprG.', 'AYU KHRISMASARI', 'JL. SARIKASO  III NO. 15 RT 003 RW 001 KELURAHAN / DESA SARIJADI KECAMATAN SUKASARI KOTA BANDUNG', 'BANDUNG', '15 JUNI 1997', '3'),
(141881957, '$2y$10$j80OP/RnNG/mWlj0YZzFPOkuRShi0d6QpfFcIQpDghaug40axP0eS', 'RENI PUSPITA DEWI', 'CILASTARI RT. 002 RW. 023 DESA ALAMENDAH KECAMATAN RANCABALI KABUPATEN BANDUNG', 'BANDUNG', '16-Apr-91', '3'),
(141881958, '$2y$10$vJEPAjdLhJstTg1tiSFa0.FT1/TvUOmo2SBjustiRH/Nvc3t3uEm.', 'ANISYA NUR AULIA SUTRISNO', 'JL. KARANG TINEUNG NO. 16 RT. 009 RW. 004 KELURAHAN CIPEDES KECAMATAN SUKAJADI KOTA BANDUNG', 'JEPARA', '16 OKTOBER 1996', '3'),
(141881959, '$2y$10$UULrN.OjjlfMrCJbhttdgeckqO0U0x0ASd0OH8R3ewk.bXRtIcZRK', 'SHANDRANUR FEBRIANY SANUSI', 'Kp. Cijeruk No.152 RT 04 RW 06 Ds. Lembang Kec. Lembang Kabupaten Bandung Barat\n\n', 'BANDUNG', '6 Februari 1997', '3'),
(141881960, '$2y$10$2NyknX9u7Xqsit/vEd.YKe1y0uNxW915qtPZuEI47Y2YdXkiAc2n2', 'HANA NUR PRATIWI', 'Jl. Waruga Jaya RT 01 RW 14 Ds. Ciwaruga Kec. Parongpong Kabupaten Bandung Barat\n\n', 'BANDUNG', '15 Januari 1996', '3'),
(141881961, '$2y$10$pWhwc.hblQCuo.pjr14eoO/dXxVeO/0U8vx8dZ/lUvqWi.GIJbD7K', 'ITA TRISNAWATI', 'Gedung Rejo RT 01 RW 01 Gedung Rejo, Mesuji Raya  Kabupaten Ogan Komering Ilir - Sumsel\n\n', 'GEDUNG REJO', '24-Sep-94', '3'),
(141881967, '$2y$10$y3iW03/47YbInQOtiAt0nOgi64N3SVid9I32qBm5xJTxojb9HeMXS', 'AGUSTINA HARMAWATI', 'Jl. Djundjunan Dalam No. 8A RT.002 / RW.008 Kel. Pasteur,  Kec. Sukajadi, Kota Bandung\n\n', 'PURWOKERTO', '9 Agustus 1982', '3'),
(141881968, '$2y$10$a0GV9YfF1/KHD6s81npe2.xUX8yQqnuBT1kyzJVyu9YJIZhUJ5d4q', 'YUYUN SURYANI', 'Gg. Pak Elas XI No. 147 RT.008 / RW.008 Kel. Cipedes, Kec. Sukajadi, Kota Bandung', 'TASIKMALAYA', '5 Januari 1966', '3'),
(141881970, '$2y$10$f2s5GQ2PchZ.wt0ZIcgtTe8YBLf7HxeVeuTdZehyj6o28EHpJQGPe', 'EMA YUSTIKA PRANATA', 'Jl. Babakan H. Tamim No. 75/208-C RT.001 / RW.006 Kel. Padasuka, Kec. Cibeunying Kaler, Kota Bandung', 'BANDUNG', '2 Februari 1986 ', '3'),
(141881971, '$2y$10$.7nI.q.7/MJvvReURtvq1uHLhBtZXBkSy5fgb4OnlDCy3M0.lRNWq', 'SILVI TENI NOVIANTI', 'Dusun Datuk Sapanggala Desa Amasing Kota, Kec. Bacan,  Kab. Halmahera Selatan', 'BANDUNG', '20 Maret 1991 ', '3'),
(141881972, '$2y$10$jj2rggRhFj9s6UEASzzpC.dUYMQe/tEA6svbTniIeKjtfRKGJBV.i', 'FEBRIANI', 'Dusun Solokan Jarak RT.002 / RW.013 Desa Cipacing, Kec. Jatinangor, Kab. Sumedang', 'SUMEDANG', '15 Februari 1990', '3'),
(141881973, '$2y$10$JHurtP7DfiTc7cqSwMxq1OOR83uAaMLbIXw0tZR6WK8THgVDfmD/u', 'ATIN ROHAENI', 'Kp. Caracas II RT.009 / RW.004 Desa Caracas, Kec. Kalijati, Kab. Subang\n\n', 'SUBANG', '18 Juli 1979 ', '3'),
(141881975, '$2y$10$YemREbxjU68g619usUcY7ufKIfKC/F.ZdZbhjWcYgfVkMfrhuGZ8G', 'RADEN SITI ULFAH SAEFINI SOLEHA', 'Pinus Regency Jl. Kilimanjaro No. 179 Soekarno Hatta, Kota Bandung', 'BANDUNG', '24 Agustus 1978', '3'),
(141881976, '$2y$10$PoFcj8nzbP54jGwcvayx8.ckriJmYTR/M8NLl6b/zQeBXuVAakNlu', 'YUYUN JUHAENI', 'Dsn. Tanjungsalep RT.007 / RW.004 Desa Jatimulya, Kec. Compreng, Kab. Subang', 'SUBANG', '1 Maret 1974', '3'),
(141881977, '$2y$10$2i2x8.gwwhYjSDrFzqD23eCOdECtLWMsVUoyHOVLL6XQ2GdHrs7wu', 'ENTIN MULYATIN', 'Kp. Babakan Minggu RT.002 / RW.010 Desa Margamulya, Kec. Cikajang, Kab. Garut\n\n', 'SUBANG', '15 Desember 1979 ', '3'),
(141881978, '$2y$10$va.Op7Whq50sLtmh/k3FBu.wfPWU2FDeFcr54yvNup80B9EEWWgGO', 'ISEU ROHAYATI', 'Jl. Raya Tambakan RT.016 / RW.004 Desa Tambakan, Kec. Jalancagak, Kab. Subang', 'JALANCAGAK', '11 Oktober 1980 ', '3'),
(141881979, '$2y$10$xHTK3hVM6FEvs8sgjGoQZeAVTc4xyGSjginZEKYoSmyVYM8YIzRo2', 'CHRESTINA ALEKSANDERINA TUTUPARA', 'Dsn.Lamerang Desa Wokam, Kec.PP.Aru, Kab.Kepulauan Aru /  Kp.Sekejulang RT.01/03 No.34 Bandung\n\n', 'AMBON', '19 Februari 1978', '3'),
(141881980, '$2y$10$d7YzcxLm0M1NZB.o1R./G.e/xGPfTGIEsD68slgjfp.WAcOwM959G', 'YETI SETIAWATI', 'Jl. Cemara No 442/181 RT.006 / RW.002 Kel. Pasteur, Kec. Sukajadi, Kota Bandung', 'BANDUNG', '15 Desember 1974', '3'),
(141881981, '$2y$10$PzhBsGiwDYIx8JOE08GEZO10xN0l2pkgNoij6Ag9XPzNIsbuUtk6u', 'AMANAH', 'Jl. Cipedes Tengah Blk No. 67 RT. 001 / RW.003 Kelurahan Sukagalih, Kec. Sukajadi, Kota Bandung\n\n', 'BANDUNG', '16 Desember 1988', '3'),
(141881983, '$2y$10$NWAzBncJQMrHIxN/u0GczejX4Mp2.AYkupJyMl4AReabd5R0fRdTG', 'IRMA FATIMAH', 'Jl. Sriwijaya Baru No. 19 RT.004 / RW.017 Kel. Setiamanah,  Kec. Cimahi Tengah, Kota Cimahi', 'TASIKMALAYA', '17 Agustus 1983 ', '3'),
(141881985, '$2y$10$n7WQc.mwgxN9QkJxePYCmeocrjpIgk5PmRtUYSXSPtsf9/Pgd02wm', 'ETY SOFIYATY', 'Komp. Angkasa H.16 Sesko AU RT.003 / RW.014 Desa Lembang, Kec. Lembang, Kab. Bandung Barat\n\n', 'JAKARTA', '1-Sep-83', '3'),
(141881986, '$2y$10$BZVcIXP2CuLgYCNkRGQGJO9tZXIEVH6xTUnGLF35rGWsDUg1/i5ge', 'N. SUSI SAADAH', 'Kp. Nengkelan RT.009 / RW.008 Desa Sukamantri, Kec. Paseh, Kab. Bandung', 'BANDUNG', '11 Februari 1992', '3'),
(141881987, '$2y$10$vhDVrImOccZ2IxkF3G6nc.7WHMqZ8QjHbDX6Kz5J9BjMJq8SvbpSi', 'LERY M.', 'Kp. Sayuran RT.001 / RW.008 Desa Cangkuang Kulon, Kec. Dayeuhkolot, Kab. Bandung', 'SERUKAM', '23-Nov-90', '3'),
(141881988, '$2y$10$cZDSns.Vg7xqRFzHnmt9GuUOOl3RMSK4xKvSKUxJWZmSNOieZ88ii', 'DESSRI ARMAWATI', 'Kp. Cijerah RT.004 / RW.004 Desa Tanimulya, Kecamatan Ngamprah, Kab. Bandung Barat\n\n', 'Cilacap', '22 Desember 1988', '3'),
(141881989, '$2y$10$hxHropv9poBEcTf31X8Hj.qNrIGaXXJClHAq/DJBo92lbsVS66TfC', 'LITA AHDINIYAH', 'Jl. Amalia Rubini Kp. Pataruman RT. 001 / RW.011 Desa Sayang, Kec. Cianjur, Kab. Cianjur', 'CIANJUR', '23 Agustus 1982', '3'),
(141882899, '$2y$10$VtQpKAqxw442rPBzCpnLhOhpVVln95STmze2p.tZeekU/Xt/6WVNy', 'AYU PUJI LESTARI', 'Jl. Raya Selatan 07 Desa Pusakajaya Rt.01/01 Kec.Pusakajaya Kab.Subang', 'SUBANG', '2 Februari 1993', '3'),
(141882900, '$2y$10$po6GGCjCrMaJCIs/bzlzJeu5FzV2L9jFb6iQ1sIM8/S4eM/7rbBIa', 'SISKA HANDAYANI', 'Blok Mulyasari Rt.01/05 Desa Ciranca Kec. Majalengka ', 'BANTARUJEG', '15-Sep-93', '3'),
(141882901, '$2y$10$LHQGRiEpsnCikOaYlj4PU.2CmDpbG3wZAlBRZnO6MiJwQ72qYytBm', 'DETALIYA QISJAYANTI', 'Jl. Karet Komplek Patra Permai Blok D No. 22 Pontianak Kalimantan Barat', 'PONTIANAK', '25 Desember 1992', '3'),
(141882902, '$2y$10$d3pv4CgeXEEmfFa87GWRwOA9f8bGDAn0ZHaVEdbWun5dHC9yNrep2', 'AI LINDA RAHAYU NINGSIH', 'Kp. Mekarwangi Rt.01/05 Tanjungsari Sukabumi', 'SUKABUMI', '23 Maret 1990', '3'),
(141882905, '$2y$10$Rzt/A9UxZsKFq1qA3FiDleRQDY6BUZxItAXZX5oHqS.44XG3i.3Du', 'GANI RIKSA SURAWATY', 'Aspol Cibabat Blok H No.131 KOTA CIMAHI', 'CIMAHI', '9 Juli 1993', '3'),
(141882906, '$2y$10$rmYCsx2kpehB3zWCx39DLeAae5f4.1fLmiMlRs5lfiShEHAagFjci', 'SARAH RIYANTI MARIANA SAFITRI', 'Ds. Cantigi Wetan Rt.01/03 No.32 Kec. Cantigi Indramayu', 'JAKARTA', '30 Maret 1992', '3'),
(141882923, '$2y$10$DyXze0jTvp/QmgWdTjqMi.GNAwdfPy9EuvQwpINKtFR7z.uKXX6rq', 'TRI NOVIANTI RAHAYU', 'Soreang Residence Blok D4 No 21 RT 03/16 Kel.Gandasari Kec. Ketapang Kab. Bandung   ', 'BANDUNG', '16 Desember 1992', '3'),
(141882924, '$2y$10$cICKLaLq.1l6Uv/U88OsledR3KnEjOY2IFXPoF0T.PLu3YnBVxFcS', 'R RIRI DEWI SINCTYA', 'Jl. Ciayuman RT 02/06 Kec. Cicalengka Kab Bandung ', 'BANDUNG', '12 Oktober 1993', '3'),
(141882925, '$2y$10$bJmpCLjKfHe7OXa4fn9lS.uyL7n3txIukSeqmhw7mldTxf5SNnLVu', 'EKA LIA NOVIA', 'Jl. Serengit RT 01/10 Kel. Sodomulyo Kec. Pagardewa Lampung Barat', 'CIAMIS', '14-Nov-92', '3'),
(141882965, '$2y$10$zI9P6HS85gf/gQAUyULFM.EsnMrt/EO3h/nlqtdTLteZyvZufIIsG', 'MARIA', 'Kp. Pamulihan RT 003 / RW 002 Desa Ciporeat, Kecamatan Cilengkrang, Kab. Bandung', 'REA', '27 Mei 1994 ', '3'),
(151881990, '$2y$10$fbNlJWN/qWpPzT11t21VMunHhCdLPUOOQQzzhw4gbqRKnLgHgXW5O', 'NURLAELA', 'DUSUN WANASARI RT. 005 RW. 002 DESA WANAJAYA KECAMATAN TAMBAKDAHAN KABUPATEN SUBANG', 'SUBANG', '20-Sep-96', '3'),
(151881991, '$2y$10$085Wg03ATyHZl.yKHpmFDevf8aqq9SrMhZwagzZ1hi9taGC9324sO', 'VINA MULYANA PERTIWI', 'DUSUN WATES RT 007 RW 003 KELURAHAN / DESA. RANCAASIH KECAMATAN PATOKBEUSI KAB. SUBANG', 'SUBANG', '20-Sep-98', '3'),
(151881992, '$2y$10$yXG9.4T1OucSuI.z.NiZVu2HCGY68yhP7KRnKF2C6dsTrIvAcUxbC', 'AULIA RISYA AMALIA', 'JL. TALUN KULON BLOK BRAMA JAYA RT 005 RW 001 KELURAHAN / DESA SLIYEG KECAMATAN SLIYEG KABUPATEN INDRAMAYU', 'INDRAMAYU', '6-Apr-97', '3'),
(151881993, '$2y$10$7gWRntZS0GLlZiC.qzmAxuL9WGn8P/F0OAL3y1DNx9FHd9f8udPje', 'RINA NURHAYATI SUHENDAR', 'BLOK MARGAMUKTI RT 003 RW 001 KELURAHAN / DESA. MARGAMUKTI KECAMATAN TALAGA KAB. MAJALENGKA', 'MAJALENGKA', '22-Sep-95', '3'),
(151881994, '$2y$10$FVJmeeAuY/7Ox7yJVVHXfeMajmt3C8fIwfMoBX0TiSFzAlIeUnWze', 'BELLA RISMA', 'DUSUN COMPRENG  RT 005 RW 002 KELURAHAN / DESA COMPRENG KECAMATAN COMPRENG KAB. SUBANG', 'SUBANG', '23 NOPEMBER 1996 ', '3'),
(151881995, '$2y$10$NQ94Zz7J/dqA9ntVtgjr9OTeYvJRbKtrvip/rMwNrmOF5iKdTMH8e', 'SITI  HUMAEROH', 'KP. PANYINDANGAN RT 002 RW 002 KELURAHAN / DESA. SINARJAYA  KECAMATAN  BUNGBULANG KAB. GARUT', 'GARUT', '18 JUNI 1996', '3'),
(151881996, '$2y$10$1rS.g96u8SadDzYGB78XrOYkK0VzLJSn8KWMaZ3AsnZ8jcFwHd2wi', 'ALFIRA RUSMANA', 'KP. CANDU RT. 001 RW. 007 KELURAHAN CURUG KULON KECAMATAN CURUG KOTA TANGERANG', 'TANGERANG', '25-Sep-97', '3'),
(151881997, '$2y$10$//uCEdn1jeJQ9zACZtlwQu3maBSXBbB6yx/R2F2HBBY4EQpbvW296', 'RIM RIM NURHASANAH', 'KP. RAWALOA RT 004 RW 003 KELURAHAN / DESA CILONGSONG KECAMATAN TANGGEUNG KAB. CIANJUR', 'CIANJUR', '7 JANUARI 1997', '3'),
(151881998, '$2y$10$.P1OSGWPGipg6ideuO60AeRBZFADzYeZMiSH6eAE6njagbq.qalLi', 'DEWI MUJAYANAH', 'KP. TEGALWARU RT. 027 RW. 007 DESA MEKARSARI KECAMATAN CIKAUM KABUPATEN SUBANG', 'SUBANG', '24-Nov-96', '3'),
(151881999, '$2y$10$VEQyVwUEK0tXAtGB6gY/vesP9/zE85W9qO1y.B8BUKTJEH6id2fRS', 'SEPTIANI', 'JL. CITEPUS II RT 002 RW 006 KELURAHAN / DESA. PAJAJARAN KECAMATAN CICENDO KOTA BANDUNG', 'BANDUNG', '27-Sep-97', '3'),
(411128001, '$2y$10$gt71lsb.6u9d4FNjzZov8e3Zo/5ub9RDBxPxTvLe3VDp4YNxV35sS', 'Desra', NULL, NULL, NULL, '1'),
(427098501, '$2y$10$KWpkDfimKzUsnnAcqVxCH.5z/AKSrzODWbuEEMUJ9pzBS1J/cIcu2', 'Andri', NULL, NULL, NULL, '2'),
(1418811003, '$2y$10$8jVEsgg6N1u4yqHpOLf.w.vtRdnHJ/x67zVFISu4EnXGZRttppA4.', 'NITA YUNITA PEMATASARI', 'Kp. Astar RT.005 / RW.001 Desa Nanggerang, Kec. Binong, Kab. Subang', 'SUBANG', '17 Februari 1987', '3'),
(1418811006, '$2y$10$nmtpvCtUYlq6aTouRfnwH.MyGRkXUWvwYsoKhjT3/S/oFc0Cdl3BS', 'MARHAENI', 'Jl. Sarimanah Blok 7 No. 73 RT.002 / RW.009 Kel. Sarijadi, Kec. Sukasari, Kota Bandung', 'BEKASI', '11 Agustus 1970', '3'),
(1518811000, '$2y$10$bhhOE1oZaqbIGK6eZ4jJZu.nwL64KhM5jEUgtigymeSI.VZ5d0fCq', 'AYU GITA YULIA', 'DUSUN BABAKAN KIARA RT 005 RW 002 KELURAHAN / DESA RANCABANGO KECAMATAN PATOKBEUSI KAB. SUBANG', 'SUBANG', '6 JUNI 1997', '3'),
(1518811001, '$2y$10$.JT0/LDl0giz5XehvcTVGemfXZuJbsP0Q8cKqXBYk62SDuiYb0xhC', 'NURYANTI SISKA PRATIWI', 'DUSUN CIDAMPA RT 009 RW 004 KELURAHAN / DESA. RANCAASIH KECAMATAN PATOKBEUSI KAB. SUBANG', 'SUBANG', '14 JANUARI 1998', '3'),
(1518811002, '$2y$10$LPvklwoLLApB/EHnCKntgOSPmLkZAFglrXvqDDXAAV7cL7Y8fBN1.', 'NELDA FITRI FEBRIANI', 'KP. CIKAMBUY TENGAH RT 001 RW 007 KELURAHAN / DESA. SANGKANHURIP KECAMATAN KATAPANG KAB. BANDUNG', 'BANDUNG', '14 FEBRUARI 1995', '3'),
(1518811004, '$2y$10$.BbprU4UIimVHrLHUdgoXemIKW11EYr6iNYyHwbxaz4n0Hc38TCNS', 'SANDRA ADHALIA RUBIATNI', 'KP. MANGLID RT 004 RW 011 KELURAHAN / DESA MARGAHAYU SELATAN KECAMATAN MARGAHAYU KAB. BANDUNG', 'BANDUNG', '17-Apr-97', '3'),
(1518821007, '$2y$10$oc85ZKRcjd/wFRb7qLmvzuI1Dl0wy0MEfhPWo4PXS1sRM06A1E6uu', 'SRI WAHYUNI RAHAYU', 'Kp. Biru RT 001 / RW 003 Desa Biru, Kecamatan Majalaya, Kab. Bandung', 'BANDUNG', '21 Mei 1995', '3'),
(1518821008, '$2y$10$T6bNI7pjlk4jbrIZzgbVr.yhLgrOqtEydpbO2oyfRkXvOVoV6EUmW', 'NUR HILA LIA', 'Sudimampir RT 003 / RW 002 Desa Padalarang, Kecamatan Padalarang, Kab. Bandung Barat', 'PEKALONGAN', '9-Sep-94', '3'),
(1518821009, '$2y$10$/Xv.Kb8KJF4tYID6Kgu7/.PamiQhdWWrqfXUts/j.lPtW9G2FPR.e', 'ANGGIT PEBRIANI RAHAYU', 'Kp. Sudimampir RT 002 / RW 003 Desa Cempakamekar, Kec. Padalarang, Kab. Bandung Barat', 'BANDUNG', '15 Februari 1994', '3'),
(1518821010, '$2y$10$UK6..pSDjEFdeMxFvvU0mubXTTpc5hvbeXb8Xh6QsfGckx.3nh0Ji', 'INDRIYANI', 'GATEAWAY APARTEMEN LANTAI 5 BANDUNG', 'CIANJUR', '1 Januari 1992', '3'),
(1518821011, '$2y$10$Xq7TIoQgTRzAnMMhbSBmh.rIVw23gN6kpoS/SxLaRtAD29C3RG9JS', 'NENDEN HANI MELIA', 'Jl. Sumur Bandung RT 22/10 Ds. Cipancuh Kec. Haurgeulis  Kabupaten Indramayu\n\n', 'INDRAMAYU', '01 Februari 1995', '3'),
(1618811012, '$2y$10$etE5f9itAxOidXcalxr3nuN3R/3iA49NEApE1wid86jx1ZlH1awei', 'LARAS APRILIA AMBARSARI IRAWAN', 'JL.CISARANTEN KULON RT004 RW002 KEL/DESA.CISARANTEN KULON KECAMATAN ARCAMANIK KOTA BANDUNG', 'BANDUNG', '11-Apr-97', '3'),
(1618811013, '$2y$10$a/VBP4jf9MFGnIxSqaonE.OWz9NZ6DYjTupW1zbOJ7P8/7EY2D1Hu', 'YULIANTI', 'KP. CIGARU RT 004 RW 005 KEL/DESA. WANGUNJAYA KECAMATAN NARINGGUL KABUPATEN CIANJUR', 'CIANJUR', '25 OKTOBER 1997', '3'),
(1618811014, '$2y$10$i/SB/4mPswlEdQbxsaRL4.vAMrNzVoILxTLnTK0KbA1KPz4rEz4XW', 'AMATULLOH NAFISAH FAUZIYYAH', 'KP. CIKOLE RT 005 RW 007 DESA/KEL. CIKOLE KECAMATAN LEMBANG KABUPATEN BANDUNG BARAT', 'CIANJUR', '19 MEI 1998', '3'),
(1618811015, '$2y$10$U5iK/ly1D4DRTU/OykNnKu2WlbGj.t7dqmVTSczNCxae114ZLTUSi', 'NUR LAELATUL HAMZAH', 'JL. ANDIR GG. SASTRA NO.84/78 RT 003 RW 007 DESA/KEL. CIROYOM KECAMATAN ANDIR KOTA BANDUNG', 'INDRAMAYU', '6 JULI 1998', '3'),
(1618811016, '$2y$10$cspmdapLMQFOKRjhCMn3W.O8JVkmH53ndb6megI5.d7HLWZXDyqvi', 'CHELSEA ESTER GRATIA MANURUNG', 'KP. BAHUAN RT 02 RW 10 DESA/KEL. BOJONG MALAKA KECAMATAN BALEENDAH KABUPATEN BANDUNG', 'BANDUNG', '16 MARET 1998', '3'),
(1618811017, '$2y$10$x5JoKz2oznHUMnQ8zZ3CDOxXH8jYrM54Pm/etPZAEpQU..k2wzzDe', 'SINDI OKTAVIANI', 'DUSUN KARANG BARU RT 003 RW 005 DESA/KEL. SUKRA KECAMATAN SUKRA KABUPATEN INDRAMAYU', 'INDRAMAYU', '16 OKTOBER 1997 ', '3'),
(1618811018, '$2y$10$s0oVxfLirCVewlL/TCvGL.vjjwIngMsDD9ZYmt1isMbwO.dyZVSTm', '0', 'KP.PISANG BATU RT 001 RW 004 DESA/KEL. KERTAMUKTI KECAMATAN CIBITUNG KOTA BEKASI', 'BEKASI', '25 DESEMBER 1996', '3'),
(1618811019, '$2y$10$PhFF4HYhyiVwIiD6VkThp.syC6KtwEfMNGuoBbtjKNJjTMMr69oY2', 'ARIN SHOFIYAH', 'KP. MUARA NO. 97 DESA KOPO KECAMATAN KUTAWARINGIN KABUPATEN BANDUNG\n\n', 'BANDUNG', '18 JANUARI 1997', '3'),
(1618811020, '$2y$10$FNJq7Dc9QjrpK83Ez5y1Iunu/.yztRju0fBRcAJ3KwmiAzPgFMHky', 'YANTI RAHMAWATI', 'DSN. BABAKAN CIKALAMA RT 001 RW 009 DESA/KEL. SINDANGPAKUON KECAMATAN  CIMANGGUNG KABUPATEN SUMEDANG', 'SUMEDANG', '22 JANUARI 1997', '3'),
(1618811021, '$2y$10$4i5iVgDO.lulswRmwxhBM.aLH/0244aEM76N0xb7EcvO0wmTfQRkW', 'MAULINNA BILLA', 'JL. KH.ABDUL LATIF NO. 103 A BLOK J RT 008 RW 006 KEL/DSA. BENDUNGAN KECAMATAN CILEGON KOTA CILEGON', 'CILEGON', '5 JULI 1999', '3'),
(1618811023, '$2y$10$ihmIy2ISlnDWkYDNz6U.2e3vcQPY88jkn.kjqYiLRuX4PyR4TU1Wm', 'INDRI HAFSARY', 'ASPOL TEGALLEGA RT. 001 RW. 007 KELURAHAN PELINDUNG HEWAN KECAMATAN ASTANA ANYAR KOTA BANDUNG', 'BANDUNG', '26 JUNI 1981', '3'),
(1618811024, '$2y$10$x83lwvOa/MyEdqhLRxyBoOVRPzjd4SWz0JkesS4wcGvvKkT.28D..', 'DAMAIYANTI', 'JL. CILENGKRANG II RT. 001 RW. 003 KELURAHAN PALASARI KECAMATAN CIBIRU KOTA BANDUNG', 'BANDUNG', '7 AGUSTUS 1996', '3'),
(1618811025, '$2y$10$XlAXC0gv.xI86H1VYWL/W.4CM9rAqDEXSW9.ZG4ao47B9PaFGmCC2', 'SUSILAWATI', 'KP. CIKUDA RT. 001 RW. 002 DESA SAGULING KECAMATAN SAGULING KABUPATEN BANDUNG BARAT', 'BANDUNG', '3-Apr-82', '3'),
(1618811026, '$2y$10$3uAmPQI1ADDP/bQoXUAqeupy5lqmzLX7bmCELOqJuGtYhpjhL5nJS', 'AI WIDIAWATI', 'DUSUN WARUNGLIMUS RT. 001 RW. 004 DESA CIJATI KECAMATAN SITURAJA KABUPATEN SUMEDANG', 'SUMEDANG', '16 DESEMBER 1978', '3'),
(1618811027, '$2y$10$ah3TQhoPPh8LeEBfm1X.XOZwS1IsMna7rRoYG6xcDBKdguoj5pABa', 'RINI ANGGREANI', 'GG. H. YASIN VIII NO. 563 RT. 010 / RW. 002 KELURAHAN SUKABUNGAH KECAMATAN SUKAJADI KOTA BANDUNG', 'BANDUNG', '10 OKTOBER 1981', '3'),
(1618811028, '$2y$10$UwALrMVGaQxP.QcAJUL15OnQ2cjWHd2OdsMOQyOKL1oQDLyNbE6.O', 'EMAWATI', 'BLOK DESA RT. 011 RW. 002 DESA KERTAWINANGUN KECAMATAN KERTAJATI KABUPATEN MAJALENGKA', 'MAJALENGKA', '30 JANUARI 1988', '3'),
(1618811029, '$2y$10$lay06D4p3CmqxrPXZLs40OaWSkdUEZ76YM6Jf32WmB850EquFfRDi', 'BUDI WAHYUNINGSIH', 'VILLA ASRI BLOK E NO. 7 RT. 004 RW. 026 KELURAHAN MUSTIKAJAYA KECAMATAN MUSTIKA JAYA KOTA BEKASI', 'JAKARTA', '20 FEBRUARI 1972', '3'),
(1618811030, '$2y$10$SUVOQ1Wr2ASrjG9od17ISe8gUXk454C5Dhx.BJ2C2ymqV2Up.HRZm', 'JENI SUSMANDIAH', 'KP. PARAKAN PANJANG RT. 001 RW. 002 DESA SUKAMANAH KECAMATAN CIGALONTANG KABUPATEN TASIKMALAYA', 'SODONG HILIR', '12 JULI 1983', '3'),
(1618811031, '$2y$10$g4g8zwCuUS2z8faoIHXd8eET3yvja4AqttFXhH0JofaDQwjyyLXXO', 'LENI HERLINA', 'JL. ANGGREK KOMP. GRAHA RC RT. 002 RW. 018 DESA RANCAMANYAR KECAMATAN BALEENDAH KABUPATEN BANDUNG', 'BANDUNG', '29-Sep-75', '3'),
(1618821022, '$2y$10$GHI/B71ePyTN3vTBho0dZeG7pBYkFHz2G.BG4XXhh.2Fqy3PO6Jpi', 'DINE MELANI SRI RAHAYU', 'KP. MANDALAWANGI RT 004 RW 001 KELURAHAN / DESA MANDALAWANGI KEC. LELES', 'CIANJUR', '14 FEBRUARI 1996', '3'),
(1718811032, '$2y$10$AXw0/3eI6LV5Ywkuwf0Mnu5JOibUwJ97hF7m0lGGtGkgd.2/UWw4e', 'KINTA MELA', 'DUSUN DUKUH GIRANG RT 01 RW 04 DESA/KEL. DUKUH KECAMATAN CIASEM KAB. SUBANG', 'SUBANG', '21 MARET 1999', '3'),
(1718811033, '$2y$10$Rjs5T8s4jEfBkZVNZw7A4.cfjBusS7PXpUvQmfzgTMebniAJLXaf2', 'SERLI HERLINA', 'KP. GBO RT 003 RW 003 KEL/DESA BANJARAN KULON KECAMATAN BANJARAN  KABUPATEN BANDUNG', 'BANDUNG', '18 JULI 1998', '3'),
(1718811034, '$2y$10$ZKFPNLZjAtv/kAs8ua.HRu7f2mnEglXo2RbmOZZ0/y4TLY5.4pQOO', 'SITI NURLAELA SARI', 'KP. CIPANDAK RT 001 RW 004 DESA/KEL. KERTAJADI KECAMATAN CIDAUN KABUPATEN CIANJUR', 'CIANJUR', '21 AGUSTUS 1999', '3'),
(1718811035, '$2y$10$3sXRtDZB.Pm9U0MlrR/auOi/SrakCzWWoa9oUZu5EON8szFRiLQke', 'RIANI AGUSTINA', 'JL. NEGARA RT 002 RW 022 DESA/KEL. TIUH BALAK PASAR KECAMATAN BARADATU KB/KOTA WAY KANAN PROV. LAMPUNG', 'BARADATU', '6 AGUSTUS 1998', '3'),
(1718811036, '$2y$10$bsEFPokK1Y83RyO4aXl7sOaoxznQCP32PCxHHupV2DCkcm7jyf9u6', 'VIONA KRISTABELLA MANURUNG', 'NEGLASARI UTARA RT 002 RW 004 DESA/KEL. SUKAPADA KECAMATAN CIBEUNYING KIDUL KOTA BANDUNG', 'BANDUNG', '2-Sep-99', '3'),
(1718811037, '$2y$10$xzVTh96IUQ9BSNo8AZ7bkeJn6QW1FxE73ZsF29P9.h3zHYyCVYwVe', 'NADA AMALIA', 'KP. CICADAS RT 001 RW 006 DESA/KEL. CICADAS KECAMATAN RONGGA KABUPATEN BANDUNG BARAT', 'BANDUNG', '20-Nov-99', '3'),
(1718811038, '$2y$10$l7oPTVD.gB/WySNm1Xx1NeSfxhZVO9pqytOaGw07YOIkqddBAktWS', 'ASTI ISMAWATI', 'KP. CIGUGUR RT 004 RW 004 DESA/KEL. JELEKONG KECAMATAN BALEENDAH KABUPATEN BANDUNG', 'BANDUNG', '9 DESEMBER 1998', '3'),
(1718811039, '$2y$10$Rjj6AsxYA7Prqa3n.Oy9T.StlJGS4boaC8MstXJvV/sEsQG8WTeLW', 'ERIZKA WIDIAS FITRI', 'KOMP.KOPO ELOK JL. CAKRAWALA RT 004 RW 005 DESA/KEL. CIRANGRANG KECAMATAN BABAKAN CIPARAY KOTA BANDUNG', 'CIREBON', '19 JANUARI 1999', '3'),
(1718811040, '$2y$10$tzZMF5oDRwJ2eGogDaHjNepJos9EqQ106BJotD74ehTGQ8h0iTC4y', 'NENG SHINTA HASANAH', 'CUKANG GADOG RT 003 RW 008 DESA/KEL. PANUNDAAN KECAMATAN CIWIDEY KAB. BANDUNG', 'BANDUNG', '28 MARET 1999', '3'),
(1718811041, '$2y$10$zaGQJEuI.ekc/58QKQuBi.Z1JSYfnVpCIxxEzfw.N/EiDnl7BfQZ.', 'TIKA KARTIKA SARI', 'KP. CIBOGO RT 003 RW 017 KEL/DESA CIRANJANG KECAMATAN CIRANJANG KABUPATEN CIANJUR', 'CIANJUR', '23-Nov-93', '3'),
(1718811042, '$2y$10$eOnPVQyuV76YdyDvRDLNDuku4uRQxh9DiHijfmfdNSZhWI7Rv7f6S', 'DESY RIDHA MULYANI', 'KP.CIGALONTANG RT 003 RW 004 DESA/KEL. GIRIMUKTI KECAMATAN CIKELET KABUPATEN GARUT', 'GARUT', '25 DESEMBER 1992', '3'),
(1718811043, '$2y$10$d1eoc7IFmMUBxihV8YOIFeA1r078Rdc2tGKHg3XriuxsJZiQ0DpNe', 'YUSPI SILVIANI', 'KP. GAROGOL DESA/KEL. PADAASIH KECAMATAN PASIRWANGI KAB/KODYA BANDUNG', 'GARUT', '15-Sep-91', '3'),
(1718811044, '$2y$10$V08Kl3q3OburFhCF.YwLnurRzCtxa6rQT9fG7s.hNlzPQIQPMaT6m', 'SYARAH TINA ASRY HERYANTO', 'JL. CIJAWURA GIRANG NO. 42 RT 001 RW 003 DESA/KEL. SEKEJATI KECAMATAN BUAH BATU KAB/KODYA BANDUNG', 'TASIKMALAYA', '26-Sep-94', '3'),
(1718811045, '$2y$10$NchFYdbUR0UznujOBlPVZuU3ls5s17I8/OzZoC9qq2Wjzi/GO4JtW', 'SUSANTI NURHAYATI', 'KP. WAAS RT 004 RW 001 DESA/KEL. SUKASARI KECAMATAN PAMEUNGPEUK KAB/KOT BANDUNG', 'BANDUNG', '12 AGUSTUS 1995', '3'),
(1718811046, '$2y$10$RKvsnoT2QKkexVjhcdNR1.7pbki5RtfM5rTW11mRzBtY7bel5VYeC', 'NANI SURYANI', 'PURI WAYHALIM BLOK HH NO 15 DESA/KEL. SUKARAME KECAMATAN SUKARAME KOTA BANDAR LAMPUNG', 'BANDUNG', '27-Nov-93', '3'),
(1718811047, '$2y$10$/y34yWImLszoNIL.urIrhOQ67YBFo3zqYPiXyPxdtw6po9RVY99TG', 'APRILIANTI', 'KP. CIBACANG RT 001 RW 007 DESA/KEL. CIPEUNDEUY  KECAMATAN PADALARANG KAB. BANDUNG BARAT', 'JAKARTA', '23-Apr-95', '3'),
(1718811049, '$2y$10$/ya.VxRnHsWKLLjiTNNvXOOZ7.d9pHS9RtMmJviEgDKnKWBCTixCu', 'NINA SITI NURAENI', 'JL. CIPEDES TENGAH RT 006 RW 006 DESA/KEL. CIPEDES KECAMATAN SUKAJADI KOTA BANDUNG', 'GARUT', '3 JANUARI 1991', '3'),
(1718811050, '$2y$10$.N0MWyL6VrdRhmFMsLXtbeplC6g/E.PYZaGwRg5y9Pu4BEGCLE6/.', 'NENENG LINA HERLINA', 'KP. SADANG SARI RT 004 RW 012 DESA/KEL. MARGAHAYU SELATAN KECAMATAN MARGAHAYU KAB/KOTA BANDUNG', 'BANDUNG', '15 OKTOBER 1979', '3'),
(1718821048, '$2y$10$hIZkNrO6JEJqywckSrHeQuPfPIyes.U2bJ8vmNUcjj4YAh5itl0bq', 'ANDINI PUSPA DEWI PUTRI', 'JL. RH.ABDUL HALIM NO. 104 RT 003 RW 013KELURAHAN / DESA. CIGUGUR TENGAH KECAMATAN CIMAHI TENGAH', 'BANDUNG', '17 JUNI 1996', '3'),
(1818811053, '$2y$10$KP5mlnUWhPxp2dPOfJ/sne2MynEQOjKqYON0idPNxAp7mmJaDBybC', 'HILDA NURHASANAH', 'KP. GIRANG RT. 003 RW. 004 DESA CIDAMAR KEC. CIDAUN KAB. CIANJUR', 'CIANJUR', '8-Nov-97', '3'),
(1818811054, '$2y$10$C8KKtUQedcQYvnJrPVHGvekREtGTO2IDRlpsSYlAThoCWWPoupKeq', 'HINDASAH', 'KP. CIBOLANG RT. 010 RW. 004 DESA HEGARSARI KEC. SINDANGBARANG KAB. CIANJUR', 'CIANJUR', '5-Apr-00', '3'),
(1818811055, '$2y$10$dkQDt1gNb.Z0gmHOCbuMC.mxCp0P6LCp6D5wkndrkQMVJ2TZv0b8m', 'RIDAYANTI', 'KP. JABONG TENGAH RT. 024 RW. 008 DESA CURUGRENDENG KEC. JALANCAGAK KAB. SUBANG', 'SUBANG', '21 OKTOBER 2000', '3'),
(1818811056, '$2y$10$EgMp2DvolpcDiAUFtWCsY.wvPDv2EkLa9J52s7HEL5VF6dvBNLkZC', 'WINA SINTA DEWI', 'KP. HAUR NGAMBANG RT. 004 RW. 006 DESA BATUJAJAR TIMUR KEC. BATUJAJAR KAB. BANDUNG BARAT', 'BANDUNG', '11 JUNI 1987', '3'),
(1818811057, '$2y$10$VD5js7FEfrJXOpTOjiPO9uoUAyQ0AA6tzaxTv9S19daYSHckUSyEu', 'DIAN RETHA DWIYANA', 'KP. SENTUL LIO RT. 006 RW. 003 DESA SENTUL KEC. KRAGILAN KAB. SERANG', 'SERANG', '4 MARET 1996', '3'),
(1818811058, '$2y$10$neQ.r/ICNO9NDNZI/KnwMODiW0vb2eMCJaw39XOTCh6paGMhmtZj.', 'DIANA TRIANA', 'CIBUNTU TIMUR NO. 28 RT. 007 RW. 004 KEL. WARUNG MUNCANG KEC. BANDUNG KULON KOTA BANDUNG', 'PALEMBANG', '19 JANUARI 1993', '3'),
(1818811059, '$2y$10$ml10rV4D5mdTjaTXGCUQo.T2m1moehk7o9Vs77NJ0DHdCoZO6mhce', 'TITIN JULIAWATI', 'KP. MARENGMANG II RT. 005 RW. 002 DESA MARENGMANG KEC. KALIJATI KAB. SUBANG', 'CIREBON', '18 OKTOBER 1981', '3'),
(1818811060, '$2y$10$qf55aS/Dw0oQG6Ilyv0pqe8dskF8BoSZdHxrsUmzOmgZXV3mkaks2', 'RAJANI MELIANI', 'CIKASO RT. 017 RW. 004 DESA CIKASO KEC. BANJARSARI KAB. CIAMIS', 'CIANJUR', '26 JANUARI 2000', '3'),
(2147483647, '$2y$10$IKs7BYxl/4KdcMyJPzeFUONFkbyzJLtqa3/StbnuEA4tVucYo1k66', 'FITRI OKTAVIANY', 'Jl. Cibangkong RT.01 RW.11 No. 398 Bandung.', 'BANDUNG', '10 Juni 1984', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspek_polling`
--
ALTER TABLE `aspek_polling`
  ADD PRIMARY KEY (`id_aspek_polling`),
  ADD KEY `id_polling` (`id_polling`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `item_polling`
--
ALTER TABLE `item_polling`
  ADD PRIMARY KEY (`id_item_polling`),
  ADD KEY `id_aspek_polling` (`id_aspek_polling`);

--
-- Indexes for table `kepegawaian`
--
ALTER TABLE `kepegawaian`
  ADD PRIMARY KEY (`id_kepegawaian`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `kurikulum_matakuliah`
--
ALTER TABLE `kurikulum_matakuliah`
  ADD PRIMARY KEY (`id_kurikulum_matakuliah`),
  ADD KEY `id_kurikulum` (`id_kurikulum`),
  ADD KEY `id_matakuliah` (`kode_matakuliah`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD KEY `NIM` (`nomor_id`),
  ADD KEY `periode` (`angkatan`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_matakuliah`);

--
-- Indexes for table `matakuliah_mahasiswa`
--
ALTER TABLE `matakuliah_mahasiswa`
  ADD PRIMARY KEY (`id_mk_mhs`),
  ADD KEY `kode_matakuliah` (`id_kurikulum`),
  ADD KEY `id_mahasiswa` (`nomor_id`);

--
-- Indexes for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD PRIMARY KEY (`id_nilai_mahasiswa`),
  ADD KEY `fk_nilai_mahasiswa1_idx` (`nomor_id`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id_penelitian`),
  ADD KEY `fk_penelitian_dosen1_idx` (`id_dosen`),
  ADD KEY `mengetahui` (`mengetahui`),
  ADD KEY `menyetujui` (`menyetujui`),
  ADD KEY `dosen_anggota_1` (`dosen_anggota_1`),
  ADD KEY `dosen_anggota_2` (`dosen_anggota_2`);

--
-- Indexes for table `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD PRIMARY KEY (`id_pengabdian`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `anggota_dosen_1` (`dosen_anggota_1`),
  ADD KEY `anggota_dosen_2` (`dosen_anggota_2`),
  ADD KEY `mengetahui` (`mengetahui`),
  ADD KEY `menyetujui` (`menyetujui`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `polling`
--
ALTER TABLE `polling`
  ADD PRIMARY KEY (`id_polling`);

--
-- Indexes for table `transkrip_akhir`
--
ALTER TABLE `transkrip_akhir`
  ADD PRIMARY KEY (`id_transkrip_akhir`),
  ADD KEY `nomor_id` (`nomor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nomor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspek_polling`
--
ALTER TABLE `aspek_polling`
  MODIFY `id_aspek_polling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `item_polling`
--
ALTER TABLE `item_polling`
  MODIFY `id_item_polling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kepegawaian`
--
ALTER TABLE `kepegawaian`
  MODIFY `id_kepegawaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `kurikulum_matakuliah`
--
ALTER TABLE `kurikulum_matakuliah`
  MODIFY `id_kurikulum_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `matakuliah_mahasiswa`
--
ALTER TABLE `matakuliah_mahasiswa`
  MODIFY `id_mk_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  MODIFY `id_nilai_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengabdian`
--
ALTER TABLE `pengabdian`
  MODIFY `id_pengabdian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `polling`
--
ALTER TABLE `polling`
  MODIFY `id_polling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transkrip_akhir`
--
ALTER TABLE `transkrip_akhir`
  MODIFY `id_transkrip_akhir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `nomor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspek_polling`
--
ALTER TABLE `aspek_polling`
  ADD CONSTRAINT `aspek_polling_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id_polling`) ON DELETE CASCADE;

--
-- Constraints for table `item_polling`
--
ALTER TABLE `item_polling`
  ADD CONSTRAINT `item_polling_ibfk_1` FOREIGN KEY (`id_aspek_polling`) REFERENCES `aspek_polling` (`id_aspek_polling`) ON DELETE CASCADE;

--
-- Constraints for table `kurikulum_matakuliah`
--
ALTER TABLE `kurikulum_matakuliah`
  ADD CONSTRAINT `kurikulum_matakuliah_ibfk_1` FOREIGN KEY (`id_kurikulum`) REFERENCES `kurikulum` (`id_kurikulum`) ON DELETE CASCADE,
  ADD CONSTRAINT `kurikulum_matakuliah_ibfk_2` FOREIGN KEY (`kode_matakuliah`) REFERENCES `matakuliah` (`kode_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`nomor_id`) REFERENCES `users` (`nomor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matakuliah_mahasiswa`
--
ALTER TABLE `matakuliah_mahasiswa`
  ADD CONSTRAINT `matakuliah_mahasiswa_ibfk_4` FOREIGN KEY (`nomor_id`) REFERENCES `users` (`nomor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matakuliah_mahasiswa_ibfk_5` FOREIGN KEY (`id_kurikulum`) REFERENCES `kurikulum` (`id_kurikulum`) ON DELETE CASCADE;

--
-- Constraints for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD CONSTRAINT `nilai_mahasiswa_ibfk_2` FOREIGN KEY (`nomor_id`) REFERENCES `users` (`nomor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `fk_penelitian_dosen1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`mengetahui`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE,
  ADD CONSTRAINT `penelitian_ibfk_2` FOREIGN KEY (`menyetujui`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE,
  ADD CONSTRAINT `penelitian_ibfk_3` FOREIGN KEY (`dosen_anggota_1`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_ibfk_4` FOREIGN KEY (`dosen_anggota_2`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD CONSTRAINT `pengabdian_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengabdian_ibfk_2` FOREIGN KEY (`dosen_anggota_1`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengabdian_ibfk_3` FOREIGN KEY (`dosen_anggota_2`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengabdian_ibfk_4` FOREIGN KEY (`mengetahui`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengabdian_ibfk_5` FOREIGN KEY (`menyetujui`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transkrip_akhir`
--
ALTER TABLE `transkrip_akhir`
  ADD CONSTRAINT `transkrip_akhir_ibfk_1` FOREIGN KEY (`nomor_id`) REFERENCES `users` (`nomor_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
