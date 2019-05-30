-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 05:35 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_adminlte`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_preferences`
--

CREATE TABLE `admin_preferences` (
  `id` tinyint(1) NOT NULL,
  `user_panel` tinyint(1) NOT NULL DEFAULT '0',
  `sidebar_form` tinyint(1) NOT NULL DEFAULT '0',
  `messages_menu` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_menu` tinyint(1) NOT NULL DEFAULT '0',
  `tasks_menu` tinyint(1) NOT NULL DEFAULT '0',
  `user_menu` tinyint(1) NOT NULL DEFAULT '1',
  `ctrl_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `transition_page` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_preferences`
--

INSERT INTO `admin_preferences` (`id`, `user_panel`, `sidebar_form`, `messages_menu`, `notifications_menu`, `tasks_menu`, `user_menu`, `ctrl_sidebar`, `transition_page`) VALUES
(1, 0, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `bgcolor` char(7) NOT NULL DEFAULT '#607D8B'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `bgcolor`) VALUES
(1, 'admin', 'Administrator', '#F44336'),
(2, 'members', 'General User', '#2196F3');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `persentase` varchar(20) NOT NULL,
  `bulan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_realisasi`
--

CREATE TABLE `jenis_realisasi` (
  `id_jenis_realisasi` int(11) NOT NULL,
  `nama_jenis_realisasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_skpd`
--

CREATE TABLE `jenis_skpd` (
  `id_macam_skpd` int(11) NOT NULL,
  `nama_macam_skpd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_skpd`
--

INSERT INTO `jenis_skpd` (`id_macam_skpd`, `nama_macam_skpd`) VALUES
(1, 'Dinas Pekerjaan Umum'),
(2, 'Perumahan Rakyat'),
(3, 'Penataan Kawasan Permukinan');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `kode_kegiatan` varchar(10) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `anggaran` bigint(20) NOT NULL,
  `tahun` int(11) NOT NULL,
  `pptk` varchar(10) NOT NULL,
  `kpa` varchar(10) NOT NULL,
  `lokasi` text NOT NULL,
  `volume` int(11) NOT NULL,
  `pelaksana` varchar(255) NOT NULL,
  `akhir_kontrak` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `NIP_pegawai` varchar(30) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `alamat_pegawai` text NOT NULL,
  `hp_pegawai` varchar(16) NOT NULL,
  `email_pegawai` varchar(200) NOT NULL,
  `jabatan_pegawai` varchar(30) NOT NULL,
  `pangkat_pegawai` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelaksana`
--

CREATE TABLE `pelaksana` (
  `id_pelaksana` int(11) NOT NULL,
  `nama_pelaksana` varchar(255) NOT NULL,
  `hp_pelaksana` varchar(16) NOT NULL,
  `alamat_pelaksana` text NOT NULL,
  `email_pelaksana` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id_program` varchar(30) NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id_program`, `nama_program`, `created_at`, `updated_by`) VALUES
('1.01 . 1.01.01 . 01 . 01 . 01 ', 'Penyediaan jasa surat menyurat', '2019-05-29 00:00:00', 0),
('1.01 . 1.01.01 . 01 . 01 . 02 ', 'Penyediaan jasa komunikasi, sumber daya air dan listrik', '2019-05-29 12:00:00', 0),
('1.01 . 1.01.01 . 01 . 01 . 05', 'Penyediaan jasa jaminan barang milik daerah', '2019-05-29 22:30:18', 0),
('1.01 . 1.01.01 . 01 . 01 . 06', 'Penyediaan jasa pemeliharaan dan perizinan kendaraan dinas/operasional\r\n', '2019-05-29 22:30:18', 0),
('1.03 . 1.03.01 . 01 . 01', 'Program Pelayanan Administrasi Perkantoran', '2019-05-29 22:26:46', 0),
('1.03 . 1.03.01 . 01 . 01 . 07 ', 'Penyediaan jasa administrasi keuangan', '2019-05-29 22:32:26', 0),
('1.03 . 1.03.01 . 01 . 01 . 08 ', 'Penyediaan jasa kebersihan kantor', '2019-05-29 22:32:26', 0),
('1.03 . 1.03.01 . 01 . 01 . 09', 'Penyediaan jasa perbaikan peralatan kerja', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 10', 'Penyediaan alat tulis kantor', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 11', 'Penyediaan barang cetakan dan penggandaan', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 12', 'Penyediaan komponen instalasi listrik/penerangan bangunan kantor', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 14', 'Penyediaan peralatan rumah tangga', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 15', 'Penyediaan bahan bacaan dan peraturan perundang-undangan', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 17', 'Penyediaan makanan dan minuman', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 18', 'Rapat-rapat koordinasi dan konsultasi ke luar daerah', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 19', 'Penyediaan jasa tenaga pendukung administrasi/teknis Perkantoran', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 22', 'Penyediaan jasa iklan/publikasi', '2019-05-29 22:37:05', 0),
('1.03 . 1.03.01 . 01 . 01 . 24', 'Penyediaan jasa pengamanan kantor', '2019-05-29 22:38:18', 0),
('1.03 . 1.03.01 . 01 . 01 . 25', 'Rapat-rapat koordinasi dan konsultasi ke dalam daerah', '2019-05-29 22:38:18', 0),
('1.03 . 1.03.01 . 01 . 01 . 28', 'Penyediaan Jasa Informasi rencana Umum Pengadaan (RUP)', '2019-05-29 22:38:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `public_preferences`
--

CREATE TABLE `public_preferences` (
  `id` int(1) NOT NULL,
  `transition_page` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public_preferences`
--

INSERT INTO `public_preferences` (`id`, `transition_page`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `realisasi`
--

CREATE TABLE `realisasi` (
  `id_realisasi` int(11) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `persentase` varchar(25) NOT NULL,
  `anggaran_realisasi` varchar(20) NOT NULL,
  `minggu_ke` int(2) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `photo` text NOT NULL,
  `pengawas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skpd`
--

CREATE TABLE `skpd` (
  `id_skpd` int(11) NOT NULL,
  `nama_skpd` varchar(255) NOT NULL,
  `alamat_skpd` text NOT NULL,
  `nama_dinas` varchar(200) NOT NULL,
  `no_fax` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(255) NOT NULL,
  `nama_kadis` varchar(255) NOT NULL,
  `nip_kadis` varchar(30) NOT NULL,
  `pangkat_kadis` varchar(255) NOT NULL,
  `telp_skpd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sumber_dana`
--

CREATE TABLE `sumber_dana` (
  `id_sumber_dana` int(11) NOT NULL,
  `nama_sumber_dana` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `nama_unit` varchar(255) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id_unit`, `parent_id`, `nama_unit`, `ket`) VALUES
(103, 1, 'Pekerjaan Umum dan Penataan Ruang', ''),
(11031, 103, 'DINAS PEKERJAAN UMUM, PENATAAN RUANG, PERUMAHAN DAN KAWASAN PERMUKIMAN', '');

-- --------------------------------------------------------

--
-- Table structure for table `urusan`
--

CREATE TABLE `urusan` (
  `id_urusan` int(11) NOT NULL,
  `nama_urusan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urusan`
--

INSERT INTO `urusan` (`id_urusan`, `nama_urusan`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'Urusan wajib pelayanan dasar', '2019-05-30 09:14:43', '2019-05-30 09:14:43', 1),
(2, 'Urusan Wajib bukan pelayanan dasar', '2019-05-30 09:15:08', '2019-05-30 09:15:08', 1),
(3, 'Urusan Pilihan', '2019-05-30 09:15:20', '2019-05-30 09:15:20', 1),
(4, 'Urusan Pemerintah Fungsi Penunjang', '2019-05-30 09:15:29', '2019-05-30 09:15:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1559131405, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_preferences`
--
ALTER TABLE `admin_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jenis_realisasi`
--
ALTER TABLE `jenis_realisasi`
  ADD PRIMARY KEY (`id_jenis_realisasi`);

--
-- Indexes for table `jenis_skpd`
--
ALTER TABLE `jenis_skpd`
  ADD PRIMARY KEY (`id_macam_skpd`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pelaksana`
--
ALTER TABLE `pelaksana`
  ADD PRIMARY KEY (`id_pelaksana`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `public_preferences`
--
ALTER TABLE `public_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realisasi`
--
ALTER TABLE `realisasi`
  ADD PRIMARY KEY (`id_realisasi`);

--
-- Indexes for table `skpd`
--
ALTER TABLE `skpd`
  ADD PRIMARY KEY (`id_skpd`);

--
-- Indexes for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  ADD PRIMARY KEY (`id_sumber_dana`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `urusan`
--
ALTER TABLE `urusan`
  ADD PRIMARY KEY (`id_urusan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_preferences`
--
ALTER TABLE `admin_preferences`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_realisasi`
--
ALTER TABLE `jenis_realisasi`
  MODIFY `id_jenis_realisasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_skpd`
--
ALTER TABLE `jenis_skpd`
  MODIFY `id_macam_skpd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelaksana`
--
ALTER TABLE `pelaksana`
  MODIFY `id_pelaksana` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_preferences`
--
ALTER TABLE `public_preferences`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `realisasi`
--
ALTER TABLE `realisasi`
  MODIFY `id_realisasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skpd`
--
ALTER TABLE `skpd`
  MODIFY `id_skpd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  MODIFY `id_sumber_dana` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urusan`
--
ALTER TABLE `urusan`
  MODIFY `id_urusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
