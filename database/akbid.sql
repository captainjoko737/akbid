-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2018 at 07:47 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

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
  `alamat` varchar(45) DEFAULT NULL,
  `tanggal_lahir` varchar(45) DEFAULT NULL,
  `nomor_tlp` varchar(20) DEFAULT NULL,
  `alamat_email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nomor_induk`, `nama_lengkap`, `perguruan_tinggi`, `gelar`, `jabatan_fungsional`, `program_studi`, `alamat`, `tanggal_lahir`, `nomor_tlp`, `alamat_email`) VALUES
(1, '15100923', 'Dosen Terbaik Sepanjang Masa', 'Universitas BSI', 'S2', 'Dosen Luar Biasa', 'Teknik Industri', 'Jalan suka suka 7 no 5', '1993-03-15', '087722555023', 'Dosen@dosen.com'),
(2, '195405141983031005', 'Dr. H. Hendi S. Muchtar, M.Pd', '195405141983031005', 'Dr', 'Dekan FKIP Uninus', '', NULL, NULL, NULL, NULL),
(3, '200077', 'Ir. H. R. Rubi Robana, M.Sc', '200077', 'Ir', 'Ketua LPPM', '', NULL, NULL, NULL, NULL),
(4, '300318', 'HAMDAN HIDAYAT, S.Pd, M.M.Pd', 'Universitas Nusantara', 'S.Pd, M.M.Pd', 'Tidak Punya', 'Pendidikan Bahasa Inggris', NULL, NULL, '0877727321112', 'HamdanHidayat@gmail.com');

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
(1, '1215001', 'Sukarjo', 'Laki-laki', 'Islam', '1993-03-15', 'Tetap', 'Pondok indah 7', '087722285112', 'Pegawai TEU');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nomor_id` int(11) NOT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `jurusan` varchar(45) DEFAULT NULL,
  `kelas` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `status_pembayaran` varchar(45) DEFAULT NULL,
  `status_mahasiswa` varchar(25) NOT NULL,
  `tanggal_registrasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nomor_id`, `angkatan`, `jurusan`, `kelas`, `semester`, `status_pembayaran`, `status_mahasiswa`, `tanggal_registrasi`) VALUES
(4, 17130013, 2017, 'Teknik Informatika', 'XXI B', '1', 'Lunas', 'Aktif', '2018-05-22'),
(46, 17130014, 2017, 'Teknik Informatika', 'XXI B', '1', 'Lunas', 'Aktif', '2018-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matakuliah` varchar(100) NOT NULL,
  `nama_matakuliah` varchar(100) DEFAULT NULL,
  `jumlah_sks` int(11) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matakuliah`, `nama_matakuliah`, `jumlah_sks`, `angkatan`, `semester`) VALUES
('B-001', 'Biologi Dasar', 4, 2017, 1),
('F-001', 'Fisika Dasar', 4, 2017, 1),
('TIK-36B', 'Teknik Komputer', 3, 2017, 1);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah_mahasiswa`
--

CREATE TABLE `matakuliah_mahasiswa` (
  `id_mk_mhs` int(11) NOT NULL,
  `kode_matakuliah` varchar(100) NOT NULL,
  `nomor_id` int(11) NOT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah_mahasiswa`
--

INSERT INTO `matakuliah_mahasiswa` (`id_mk_mhs`, `kode_matakuliah`, `nomor_id`, `angkatan`, `semester`, `created_at`, `updated_at`) VALUES
(197, 'TIK-36B', 17130013, 2017, 1, '2018-05-23 14:55:09', '2018-05-23 14:55:09'),
(198, 'TIK-36B', 17130014, 2017, 1, '2018-05-23 14:55:09', '2018-05-23 14:55:09'),
(199, 'B-001', 17130013, 2017, 1, '2018-05-23 14:55:09', '2018-05-23 14:55:09'),
(200, 'B-001', 17130014, 2017, 1, '2018-05-23 14:55:09', '2018-05-23 14:55:09'),
(203, 'F-001', 17130013, 2017, 1, '2018-05-23 14:55:36', '2018-05-23 14:55:36'),
(204, 'F-001', 17130014, 2017, 1, '2018-05-23 14:55:36', '2018-05-23 14:55:36');

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
(33, 'B-001', 'Biologi Dasar', 17130013, 'D', 4, 4, '2017', '1', '2018-05-23 17:05:49', '2018-05-25 03:46:42'),
(34, 'B-001', 'Biologi Dasar', 17130014, 'A', 16, 4, '2017', '1', '2018-05-23 17:05:49', '2018-05-23 17:05:49'),
(35, 'F-001', 'Fisika Dasar', 17130013, 'A', 16, 4, '2017', '1', '2018-05-23 17:06:47', '2018-05-25 03:42:15'),
(36, 'F-001', 'Fisika Dasar', 17130014, 'B', 12, 4, '2017', '1', '2018-05-23 17:06:47', '2018-05-23 17:06:47'),
(37, 'TIK-36B', 'Teknik Komputer', 17130013, 'A', 12, 3, '2017', '1', '2018-05-23 17:06:56', '2018-05-23 17:06:56'),
(38, 'TIK-36B', 'Teknik Komputer', 17130014, 'BL', 0, 3, '2017', '1', '2018-05-23 17:06:56', '2018-05-23 17:06:56');

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

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `id_dosen`, `judul_penelitian`, `dosen_anggota_1`, `dosen_anggota_2`, `nama_institusi_mitra`, `alamat_institusi`, `penanggung_jawab`, `tahun_pelaksanaan`, `biaya_tahun_berjalan`, `biaya_keseluruhan`, `mengetahui`, `menyetujui`, `tanggal`) VALUES
(1, 1, 'PERbBANDINGAN MONOLINGUAL DAN BILINGUAL VOCABULARY SIZE TEST DALAM MENGUKUR PENGUASAAN KOSAKATA BAHASA INGGRIS MAHASISWA', 1, NULL, 'asdsadsa', '-', '-', 'Tahun ke 1 dari rencana 1 tahunb', 0, 0, 2, 3, '19 Mei 2018');

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

--
-- Dumping data for table `pengabdian`
--

INSERT INTO `pengabdian` (`id_pengabdian`, `id_dosen`, `judul_pengabdian`, `dosen_anggota_1`, `dosen_anggota_2`, `nama_institusi_mitra`, `alamat_institusi`, `penanggung_jawab`, `tahun_pelaksanaan`, `biaya_tahun_berjalan`, `biaya_keseluruhan`, `mengetahui`, `menyetujui`, `tanggal`) VALUES
(1, 4, 'Pengabdian Hari Akhir', 1, NULL, '-', '-', '-', '2021', 13000000, 15000000, 2, 3, '22 Mei 2018');

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
(1, 'Aktivitas Akademik', 'Program Studi S-1 Sistem Komputer memiliki mata kuliah-mata kuliah yang khas dalam bidang hardware, software, dan soft skills. Proses pembelajaran didukung dengan adanya laboratorium-laboratorium yang sangat lengkap untuk menunjang proses pemahaman praktik. Perkuliahan on labs memungkinkan mahasiswa untuk bisa langsung praktik sehingga menghemat waktu untuk memahami pelajaran.\r\n\r\nMahasiswa mendapatkan pendidikan soft skills sebagai pengembangan kepribadian pada setiap semester, sehingga memiliki kemampuan profesional yang sangat dibutuhkan di dunia industri dan bisnis. Mahasiswa diarahkan untuk memiliki kompetensi utama dalam bidang computer automation system, system network engineering & security, dan programming & multimedia.', 'Tidak Aktif'),
(2, 'Masa Depan dan Karier', 'Program ini mengembangkan kemampuan mahasiswa dalam penguasaan hardware dan software komputer secara utuh dengan didukung kemampuan soft skill yang terstruktur dan andal, yang kini menjadi tren dan mendesak di kalangan industri dan dunia usaha. Lulusan program ini disiapkan untuk memiliki penguasaan perangkat lunak dan perangkat keras komputer, sehingga memahami komputer secara utuh dan lengkap; dapat merencanakan, mengidentifikasi, menganalisa, mendesain, mengembangkan, mengelola, dan menawarkan solusi dalam bidang teknologi komputer.', 'Aktif'),
(4, 'Pendidikan Usia Dini', '<h1><span><b>Pendidikan anak usia dini</b> </span></h1><h1></h1><span><br>(PAUD) adalah jenjang pendidikan sebelum jenjang <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Pendidikan_dasar\">pendidikan dasar</a> yang merupakan suatu upaya <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/w/index.php?title=Pembinaan&amp;action=edit&amp;redlink=1\">pembinaan</a> yang ditujukan bagi <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Anak\">anak</a> sejak lahir sampai dengan usia enam tahun yang dilakukan melalui pemberian <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/w/index.php?title=Rangsangan_pendidikan&amp;action=edit&amp;redlink=1\">rangsangan pendidikan</a> untuk membantu pertumbuhan dan perkembangan <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Jasmani\">jasmani</a> dan <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Rohani\">rohani</a>\r\n agar anak memiliki kesiapan dalam memasuki pendidikan lebih lanjut, \r\nyang diselenggarakan pada jalur formal, nonformal, dan informal.</span>\r\nPendidikan anak usia dini merupakan salah satu bentuk penyelenggaraan\r\n pendidikan yang menitikberatkan pada peletakan dasar ke arah \r\npertumbuhan dan 6 (enam) perkembangan: agama dan moral, fisik motorik, \r\nkognitif, bahasa, sosial-emosional, dan seni, sesuai dengan keunikan dan\r\n tahap-tahap perkembangan sesuai kelompok usia yang dilalui oleh anak \r\nusia dini seperti yang tercantum dalam Permendikbud 137 tahun 2014 \r\ntentang Standar Nasional PAUD (menggantikan Permendiknas 58 tahun 2009).<br><br><ul><li>Keberhasilan</li><li>Kekeluargaan</li><li>Kesejahteraan<br></li></ul>', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE `polling` (
  `id_polling` int(11) NOT NULL,
  `nama_polling` varchar(45) DEFAULT NULL,
  `total_responden` int(11) DEFAULT NULL,
  `jawaban_1` varchar(11) NOT NULL DEFAULT '0',
  `jawaban_2` varchar(11) NOT NULL DEFAULT '0',
  `jawaban_3` varchar(11) NOT NULL DEFAULT '0',
  `jawaban_4` varchar(11) NOT NULL DEFAULT '0',
  `jawaban_5` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_polling`, `nama_polling`, `total_responden`, `jawaban_1`, `jawaban_2`, `jawaban_3`, `jawaban_4`, `jawaban_5`) VALUES
(3, 'Kepuasan Dosen', 90, '40', '10', '10', '10', '20'),
(4, 'Kepuasan Mahasiswa', 80, '10', '20', '20', '20', '10');

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
  `agama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(45) DEFAULT NULL,
  `alamat_email` varchar(45) DEFAULT NULL,
  `status_user` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nomor_id`, `password`, `nama_lengkap`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `agama`, `jenis_kelamin`, `alamat_email`, `status_user`) VALUES
(14022, '$2y$10$53cI5OH/oDWhG9FQ0MfiwuA1sP6qRRo0fOrDLsDk86EeE4gWbrUJC', 'Admin LPM', 'Pondok Girimande B7 no 5', '', '1993-07-12', 'Islam', 'Laki-laki', 'radit@gmail.com', '2'),
(14045, '$2y$10$DeAYd3u.No7M4zPfHqG1qOf6FCqmm1a0ZAYk3aT2S.Zdo4At4180G', 'admin', 'Pondok Girimande B7 no 5', '', '1993-03-15', 'islam', 'Laki-laki', 'admin@garudagames.com', '1'),
(17130013, '$2y$10$TNNphfli/Z9hXbjbolVaXOLVlO9FeQR0B9FKxM15QfBn0DgilNieS', 'R Aditya Indra', 'Pondok Girimande', 'Bandung', '1993-07-12', 'Islam', 'Laki-laki', 'Radit@garudagames.com', '3'),
(17130014, '$2y$10$87R.QkYkMSwk.JNLdlKQOu5xWnETXPzHlpKaS5a0Q2J8RhmUpxZJa', 'Tony Stark', 'Pondok Aren Jakarta Utara', 'Jakarta', '1993-07-12', 'Islam', 'Laki-laki', 'Tony_stark@stark.com', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `kepegawaian`
--
ALTER TABLE `kepegawaian`
  ADD PRIMARY KEY (`id_kepegawaian`);

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
  ADD PRIMARY KEY (`kode_matakuliah`),
  ADD KEY `periode` (`angkatan`);

--
-- Indexes for table `matakuliah_mahasiswa`
--
ALTER TABLE `matakuliah_mahasiswa`
  ADD PRIMARY KEY (`id_mk_mhs`),
  ADD KEY `kode_matakuliah` (`kode_matakuliah`),
  ADD KEY `id_mahasiswa` (`nomor_id`),
  ADD KEY `periode` (`angkatan`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nomor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kepegawaian`
--
ALTER TABLE `kepegawaian`
  MODIFY `id_kepegawaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `matakuliah_mahasiswa`
--
ALTER TABLE `matakuliah_mahasiswa`
  MODIFY `id_mk_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  MODIFY `id_nilai_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengabdian`
--
ALTER TABLE `pengabdian`
  MODIFY `id_pengabdian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `polling`
--
ALTER TABLE `polling`
  MODIFY `id_polling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `nomor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17130042;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`nomor_id`) REFERENCES `users` (`nomor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matakuliah_mahasiswa`
--
ALTER TABLE `matakuliah_mahasiswa`
  ADD CONSTRAINT `matakuliah_mahasiswa_ibfk_3` FOREIGN KEY (`kode_matakuliah`) REFERENCES `matakuliah` (`kode_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matakuliah_mahasiswa_ibfk_4` FOREIGN KEY (`nomor_id`) REFERENCES `users` (`nomor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
