-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2022 at 04:12 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbtonline_2.5`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(1028) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `level` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `username`, `password`, `nama`, `level`) VALUES
(1, 'admincbt2021', 'bbc92f32845c7f4df984092f7bd8e71c', 'ADMINISTRATOR UTAMA', 'admin'),
(2, 'admin123akl', '2ef2f83fe02f803995f7331339ad96c8', 'ADMINISTRATOR AKL', 'adminakl'),
(3, 'admin123bdp', 'cf8d502d1523ad6a708bc801ca1acaf1', 'ADMINISTRATOR BDP', 'adminbdp'),
(4, 'admin123otkp', 'c2674a4b16ee7bb462c1c465968243ca', 'ADMINISTRATOR OTKP', 'adminotkp'),
(5, 'admin123tkj', '6d9e578d3a86351836501a9907ab2980', 'ADMINISTRATOR TKJ', 'admintkj');

-- --------------------------------------------------------

--
-- Table structure for table `a_guru`
--

CREATE TABLE `a_guru` (
  `id_guru` int(18) NOT NULL,
  `nama_guru` varchar(512) NOT NULL,
  `jenis_guru` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `a_guru`
--

INSERT INTO `a_guru` (`id_guru`, `nama_guru`, `jenis_guru`) VALUES
(1001911, 'SWIYONO, SE', 'BDP'),
(1002848, 'DINI CHRISNAWATI,S.PD', 'AKL'),
(1003422, 'HARY PUSPITARINI, S.PD', 'UMUM'),
(1004398, 'IRFAN, S.PD', 'OTKP'),
(1005537, 'VISHNU ISVARA, S. KOM', 'TKJ'),
(1006900, 'HENRI WICAKSONO, S.E', 'AKL'),
(1007363, 'NOFA AJI ZATMIKO, S.PD', 'BDP'),
(1008169, 'NURUL HUDA, S.AG', 'UMUM'),
(1009512, 'EKO, S.S', 'UMUM'),
(1010253, 'SRIYANTI, S.PD', 'AKL'),
(1011590, 'ISTIQOMAH', 'UMUM'),
(1012389, 'AJIZAH TRI LESTARI, S.SI', 'UMUM'),
(1013939, 'TUGIJONO, S.AG', 'UMUM'),
(1014127, 'BAMBANG SUMITRO, S.KOM', 'TKJ'),
(1015878, 'GUTSER SIBURIAN, S.PD', 'UMUM'),
(1016959, 'UGI SISTIANTO, S.PD', 'UMUM'),
(1017593, 'DRS. PUJI WALUYO, MM', 'UMUM'),
(1018973, 'VEVY YURIZAL, S.PD', 'UMUM'),
(1019991, 'SISWANTO, S.PD', 'UMUM'),
(1020939, 'RISMA HARJANTI', 'UMUM'),
(1021808, 'WINARNO, S.PD', 'UMUM'),
(1022312, 'YAYAH SYAMSIAH, M.PD', 'AKL'),
(1023800, 'MARIA MENGE, S.PD, M.PD', 'BDP'),
(1024971, 'YULIAR SUTAN, S.PD', 'UMUM'),
(1025396, 'ESA FATHONAH, S.PD', 'UMUM'),
(1026977, 'PRIYONO, S.PD', 'OTKP'),
(1027919, 'YIKE DIANA SYAPUTRI,S.PD', 'UMUM'),
(1028575, 'EKA TIARA WIRAHAYU, S.PD', 'UMUM'),
(1029146, 'KHALISA QATRUNADA, S.AG', 'UMUM'),
(1030648, 'LELY LIANASARI, S.PD', 'OTKP'),
(1031280, 'EKY NURBANI, S.PSI', 'UMUM'),
(1032113, 'USUP RAHARJO, A.MD', 'TKJ'),
(1033333, 'MUFIDAH, S.E', 'AKL'),
(1034625, 'RAHMADIKA S SETIAWAN, S.KOM', 'TKJ'),
(1035292, 'ABU AMAR A, S.PD', 'UMUM'),
(1036538, 'DAYANTI, S.PD', 'AKL'),
(1037460, 'SITI MARYAM, S.PD', 'BDP'),
(1038246, 'TYAS AYU MAHARANI', 'UMUM'),
(1039447, 'NOVIA PUTRI YUDE, S.PD', 'UMUM'),
(1040519, 'ADILAH WIDIASTI, S.KOM', 'TKJ'),
(1041390, 'ABU RIDHO AMINULLAH, S.E', 'OTKP'),
(1042662, 'FERNANDO TJANDRA, S.KOM', 'TKJ'),
(1043363, 'KUSDARYONO, M.TH', 'UMUM');

-- --------------------------------------------------------

--
-- Table structure for table `a_jurusan`
--

CREATE TABLE `a_jurusan` (
  `id` int(11) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `jurusan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `a_jurusan`
--

INSERT INTO `a_jurusan` (`id`, `kode`, `jurusan`) VALUES
(101, 'AKL', 'AKUTANSI KEUANGAN LEMBAGA'),
(202, 'PM', 'PEMASARAN'),
(303, 'MPLB', 'MANAJEMEN PERKANTORAN DAN LAYANAN BISNIS'),
(404, 'TJKT', 'TEKNIK JARINGAN KOMPUTER DAN TELEKOMUNIKASI'),
(505, 'DKV', 'DESAIN KOMUNIKASI VISUAL');

-- --------------------------------------------------------

--
-- Table structure for table `a_kelas`
--

CREATE TABLE `a_kelas` (
  `id` int(11) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `kelas` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `a_kelas`
--

INSERT INTO `a_kelas` (`id`, `kode`, `kelas`) VALUES
(1007666, 'TJKT', 'X TJKT 1'),
(1008112, 'TJKT', 'X TJKT 2'),
(1009598, 'TJKT', 'X TJKT 3'),
(1017187, 'TJKT', 'XI TJKT 1'),
(1018790, 'TJKT', 'XI TJKT 2'),
(1019803, 'TJKT', 'XI TJKT 3'),
(1026282, 'TJKT', 'XII TJKT 1'),
(1027878, 'TJKT', 'XII TJKT 2'),
(1028887, 'TJKT', 'XII TJKT 3');

-- --------------------------------------------------------

--
-- Table structure for table `a_mapel`
--

CREATE TABLE `a_mapel` (
  `id_mapel` int(18) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `jurusan` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `a_mapel`
--

INSERT INTO `a_mapel` (`id_mapel`, `nama_mapel`, `jurusan`) VALUES
(5022505, 'DASAR DASAR DESAIN KOMUNIKASI VISUAL', 'DKV'),
(5022506, 'ADMINISTRASI SISTEM JARINGAN', 'TKJ'),
(5022507, 'TEKNOLOGI BERBASIS LUAS (WAN)', 'TKJ');

-- --------------------------------------------------------

--
-- Table structure for table `a_siswa`
--

CREATE TABLE `a_siswa` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(512) NOT NULL,
  `kelas` varchar(16) NOT NULL,
  `jurusan` varchar(8) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level` varchar(16) NOT NULL,
  `status` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `a_siswa`
--

INSERT INTO `a_siswa` (`id`, `nama_siswa`, `kelas`, `jurusan`, `username`, `password`, `level`, `status`) VALUES
(1001, 'ADI PRATAMA', '1017187', 'TJKT', 'siswa135', 'siswa135', 'SISWA', 'AKTIF'),
(1002, 'AGUNG RAMADHAN', '1017187', 'TJKT', 'siswa136', 'siswa136', 'SISWA', 'AKTIF'),
(1003, 'AHMAD AGUS TAWAKAL', '1017187', 'TJKT', 'siswa137', 'siswa137', 'SISWA', 'AKTIF'),
(1004, 'ALBERTINUS SABAM SILAEN', '1017187', 'TJKT', 'siswa138', 'siswa138', 'SISWA', 'AKTIF'),
(1005, 'ALFIAN FEBRIYANTO', '1017187', 'TJKT', 'siswa139', 'siswa139', 'SISWA', 'AKTIF'),
(1006, 'ALFIAN NUR ILHAM', '1017187', 'TJKT', 'siswa140', 'siswa140', 'SISWA', 'AKTIF'),
(1007, 'ALPIN RAMADAN SETIAWAN', '1017187', 'TJKT', 'siswa141', 'siswa141', 'SISWA', 'AKTIF'),
(1008, 'DENTA FITRI NOVIANI', '1017187', 'TJKT', 'siswa142', 'siswa142', 'SISWA', 'AKTIF'),
(1009, 'EGI KURNIA', '1017187', 'TJKT', 'siswa143', 'siswa143', 'SISWA', 'AKTIF'),
(1010, 'EGNER CONSTANTIN', '1017187', 'TJKT', 'siswa144', 'siswa144', 'SISWA', 'AKTIF'),
(1011, 'ERICH JALEMBA JUNIARTA', '1017187', 'TJKT', 'siswa145', 'siswa145', 'SISWA', 'AKTIF'),
(1012, 'FADLY ERLANGGA', '1017187', 'TJKT', 'siswa146', 'siswa146', 'SISWA', 'AKTIF'),
(1013, 'FATHYA AULIA', '1017187', 'TJKT', 'siswa147', 'siswa147', 'SISWA', 'AKTIF'),
(1014, 'FIKHAR HADISAPUTRA', '1017187', 'TJKT', 'siswa148', 'siswa148', 'SISWA', 'AKTIF'),
(1015, 'FRANS LEONARDO HADIWINATA', '1017187', 'TJKT', 'siswa149', 'siswa149', 'SISWA', 'AKTIF'),
(1016, 'GILANG MAULANA AKBAR', '1017187', 'TJKT', 'siswa150', 'siswa150', 'SISWA', 'AKTIF'),
(1017, 'HAFIDZ SYAHPUTRO', '1017187', 'TJKT', 'siswa151', 'siswa151', 'SISWA', 'AKTIF'),
(1018, 'KELVIN OKTA RAMADHAN', '1017187', 'TJKT', 'siswa152', 'siswa152', 'SISWA', 'AKTIF'),
(1019, 'MAULANA IKSAN', '1017187', 'TJKT', 'siswa153', 'siswa153', 'SISWA', 'AKTIF'),
(1020, 'MOHAMAD RIZKI', '1017187', 'TJKT', 'siswa154', 'siswa154', 'SISWA', 'AKTIF'),
(1021, 'MUHAMAD SUBASTIAN', '1017187', 'TJKT', 'siswa155', 'siswa155', 'SISWA', 'AKTIF'),
(1022, 'MUHAMMAD ANGGI SAPUTRA', '1017187', 'TJKT', 'siswa156', 'siswa156', 'SISWA', 'AKTIF'),
(1023, 'MUHAMMAD DAFFI', '1017187', 'TJKT', 'siswa157', 'siswa157', 'SISWA', 'AKTIF'),
(1024, 'MUHAMMAD NUR ARIFIN', '1017187', 'TJKT', 'siswa158', 'siswa158', 'SISWA', 'AKTIF'),
(1025, 'MUHAMMAD RIZKY AL AKBAR', '1017187', 'TJKT', 'siswa159', 'siswa159', 'SISWA', 'AKTIF'),
(1026, 'NOVAL RAMADAN', '1017187', 'TJKT', 'siswa160', 'siswa160', 'SISWA', 'AKTIF'),
(1027, 'NOVEL SYAHPUTRA HALIM', '1017187', 'TJKT', 'siswa161', 'siswa161', 'SISWA', 'AKTIF'),
(1028, 'PANJI RAHMADI', '1017187', 'TJKT', 'siswa162', 'siswa162', 'SISWA', 'AKTIF'),
(1029, 'RADIS SETIAWAN', '1017187', 'TJKT', 'siswa163', 'siswa163', 'SISWA', 'AKTIF'),
(1030, 'RAFA MAULANA ARDIANSYAH', '1017187', 'TJKT', 'siswa164', 'siswa164', 'SISWA', 'AKTIF'),
(1031, 'RAFLI AGUNG PRAYOGA', '1017187', 'TJKT', 'siswa165', 'siswa165', 'SISWA', 'AKTIF'),
(1032, 'SIGIT NURCAHYONO', '1017187', 'TJKT', 'siswa166', 'siswa166', 'SISWA', 'AKTIF'),
(1033, 'TYO RIYADI SYAPUTRA', '1017187', 'TJKT', 'siswa167', 'siswa167', 'SISWA', 'AKTIF'),
(1034, 'YULIO LUKAS ADRIANO HUTAGAOL', '1017187', 'TJKT', 'siswa168', 'siswa168', 'SISWA', 'AKTIF'),
(1035, 'ZIDAN RIZKY RAMADHAN', '1017187', 'TJKT', 'siswa169', 'siswa169', 'SISWA', 'AKTIF'),
(1036, 'ADE IRSAD ABIDIN', '1018790', 'TJKT', 'siswa170', 'siswa170', 'SISWA', 'AKTIF'),
(1037, 'AFRIZAL ARDIANSYAH', '1018790', 'TJKT', 'siswa171', 'siswa171', 'SISWA', 'AKTIF'),
(1038, 'ALBASRAH MOHAMAD SALEH RAGO', '1018790', 'TJKT', 'siswa172', 'siswa172', 'SISWA', 'AKTIF'),
(1039, 'ALDI AWALUDIN', '1018790', 'TJKT', 'siswa173', 'siswa173', 'SISWA', 'AKTIF'),
(1040, 'ANDIKA', '1018790', 'TJKT', 'siswa174', 'siswa174', 'SISWA', 'AKTIF'),
(1041, 'ARDESTA KURNIAWAN', '1018790', 'TJKT', 'siswa175', 'siswa175', 'SISWA', 'AKTIF'),
(1042, 'ARDI DANU ANGGARA', '1018790', 'TJKT', 'siswa176', 'siswa176', 'SISWA', 'AKTIF'),
(1043, 'ARIEL ILHAMI', '1018790', 'TJKT', 'siswa177', 'siswa177', 'SISWA', 'AKTIF'),
(1044, 'BAYU SAPUTRA', '1018790', 'TJKT', 'siswa178', 'siswa178', 'SISWA', 'AKTIF'),
(1045, 'DAMARUDIN', '1018790', 'TJKT', 'siswa179', 'siswa179', 'SISWA', 'AKTIF'),
(1046, 'DEDI MARDIYANSAH', '1018790', 'TJKT', 'siswa180', 'siswa180', 'SISWA', 'AKTIF'),
(1047, 'DEVFRAN ADITYA SUHERNO PUTRA', '1018790', 'TJKT', 'siswa181', 'siswa181', 'SISWA', 'AKTIF'),
(1048, 'DHIMAS KURNIAWAN BASORI', '1018790', 'TJKT', 'siswa182', 'siswa182', 'SISWA', 'AKTIF'),
(1049, 'DIKI RAMADAN', '1018790', 'TJKT', 'siswa183', 'siswa183', 'SISWA', 'AKTIF'),
(1050, 'FAJAR NUGRAHA', '1018790', 'TJKT', 'siswa184', 'siswa184', 'SISWA', 'AKTIF'),
(1051, 'FIKRI FAHREZA', '1018790', 'TJKT', 'siswa185', 'siswa185', 'SISWA', 'AKTIF'),
(1052, 'FIRMANSYAH', '1018790', 'TJKT', 'siswa186', 'siswa186', 'SISWA', 'AKTIF'),
(1053, 'HABIB SUF\'YAN FADILLAH', '1018790', 'TJKT', 'siswa187', 'siswa187', 'SISWA', 'AKTIF'),
(1054, 'HAIKAL FIKRI NURWANTO', '1018790', 'TJKT', 'siswa188', 'siswa188', 'SISWA', 'AKTIF'),
(1055, 'I PT.GALIHANDRA REVA ULUM DINATA', '1018790', 'TJKT', 'siswa189', 'siswa189', 'SISWA', 'AKTIF'),
(1056, 'ILHAM RAHMATTULLOH', '1018790', 'TJKT', 'siswa190', 'siswa190', 'SISWA', 'AKTIF'),
(1057, 'INDAH FAAKHIRA SEBASTIAN', '1018790', 'TJKT', 'siswa191', 'siswa191', 'SISWA', 'AKTIF'),
(1058, 'KEFIN HIDAYAT', '1018790', 'TJKT', 'siswa192', 'siswa192', 'SISWA', 'AKTIF'),
(1059, 'MUHAMAD ARDIANSYAH', '1018790', 'TJKT', 'siswa193', 'siswa193', 'SISWA', 'AKTIF'),
(1060, 'MUHAMMAD MAULANA RAMDHANI', '1018790', 'TJKT', 'siswa194', 'siswa194', 'SISWA', 'AKTIF'),
(1061, 'MUHAMMAD NANDA FIRMANSYAH', '1018790', 'TJKT', 'siswa195', 'siswa195', 'SISWA', 'AKTIF'),
(1062, 'MUHAMMAD RIFKI RABBANI', '1018790', 'TJKT', 'siswa196', 'siswa196', 'SISWA', 'AKTIF'),
(1063, 'NADIA NURLITA', '1018790', 'TJKT', 'siswa197', 'siswa197', 'SISWA', 'AKTIF'),
(1064, 'PINDY AUGY SEPTIANU PUTRA', '1018790', 'TJKT', 'siswa198', 'siswa198', 'SISWA', 'AKTIF'),
(1065, 'PITON', '1018790', 'TJKT', 'siswa199', 'siswa199', 'SISWA', 'AKTIF'),
(1066, 'RIFQI AZHAR SAPUTRA', '1018790', 'TJKT', 'siswa200', 'siswa200', 'SISWA', 'AKTIF'),
(1067, 'RIZKY BAGASKORO', '1018790', 'TJKT', 'siswa201', 'siswa201', 'SISWA', 'AKTIF'),
(1068, 'ROFIQY MIRYAL AL MURTADHA', '1018790', 'TJKT', 'siswa202', 'siswa202', 'SISWA', 'AKTIF'),
(1069, 'SATRIAWAN TRIE SAPUTRA', '1018790', 'TJKT', 'siswa203', 'siswa203', 'SISWA', 'AKTIF'),
(1070, 'SUTINAH', '1018790', 'TJKT', 'siswa204', 'siswa204', 'SISWA', 'AKTIF'),
(1071, 'AHMAD SAPUTRA', '1019803', 'TJKT', 'siswa205', 'siswa205', 'SISWA', 'AKTIF'),
(1072, 'AKMAL FEBRYANSYAH', '1019803', 'TJKT', 'siswa206', 'siswa206', 'SISWA', 'AKTIF'),
(1073, 'ANDYKA PUTRA PRASETYA', '1019803', 'TJKT', 'siswa207', 'siswa207', 'SISWA', 'AKTIF'),
(1074, 'ANIS TIARAWATI', '1019803', 'TJKT', 'siswa208', 'siswa208', 'SISWA', 'AKTIF'),
(1075, 'ARMANDA PUTRA', '1019803', 'TJKT', 'siswa209', 'siswa209', 'SISWA', 'AKTIF'),
(1076, 'CHANDRA ANDIKA', '1019803', 'TJKT', 'siswa210', 'siswa210', 'SISWA', 'AKTIF'),
(1077, 'DAVI TRISNA PRASETYA', '1019803', 'TJKT', 'siswa211', 'siswa211', 'SISWA', 'AKTIF'),
(1078, 'DAVID HERMANSYAH', '1019803', 'TJKT', 'siswa212', 'siswa212', 'SISWA', 'AKTIF'),
(1079, 'DIAH SINTIA', '1019803', 'TJKT', 'siswa213', 'siswa213', 'SISWA', 'AKTIF'),
(1080, 'DIEGO RAFI GHATHFAAN', '1019803', 'TJKT', 'siswa214', 'siswa214', 'SISWA', 'AKTIF'),
(1081, 'FABRIAN AFRIANSYAH', '1019803', 'TJKT', 'siswa215', 'siswa215', 'SISWA', 'AKTIF'),
(1082, 'FARIJ ASHIDIQI', '1019803', 'TJKT', 'siswa216', 'siswa216', 'SISWA', 'AKTIF'),
(1083, 'FELIX ADIKA', '1019803', 'TJKT', 'siswa217', 'siswa217', 'SISWA', 'AKTIF'),
(1084, 'FICRI CHOIRUL IMAM', '1019803', 'TJKT', 'siswa218', 'siswa218', 'SISWA', 'AKTIF'),
(1085, 'FIRGIE HAFIANSYAH FAHREVI', '1019803', 'TJKT', 'siswa219', 'siswa219', 'SISWA', 'AKTIF'),
(1086, 'GAFARA EKA FAHRIZA', '1019803', 'TJKT', 'siswa220', 'siswa220', 'SISWA', 'AKTIF'),
(1087, 'GHUFRON KHAIRULLAH', '1019803', 'TJKT', 'siswa221', 'siswa221', 'SISWA', 'AKTIF'),
(1088, 'KHARENAL ARDIANTONY', '1019803', 'TJKT', 'siswa222', 'siswa222', 'SISWA', 'AKTIF'),
(1089, 'MUHAMAD APRIANSYAH', '1019803', 'TJKT', 'siswa223', 'siswa223', 'SISWA', 'AKTIF'),
(1090, 'MUHAMAD CHAIRIEL', '1019803', 'TJKT', 'siswa224', 'siswa224', 'SISWA', 'AKTIF'),
(1091, 'MUHAMAD RIZKY', '1019803', 'TJKT', 'siswa225', 'siswa225', 'SISWA', 'AKTIF'),
(1092, 'MUHAMAD RIZKY FARIZAH', '1019803', 'TJKT', 'siswa226', 'siswa226', 'SISWA', 'AKTIF'),
(1093, 'MUHAMMAD AFDANY PUTRA WIJAYA', '1019803', 'TJKT', 'siswa227', 'siswa227', 'SISWA', 'AKTIF'),
(1094, 'MUHAMMAD ALFARIZA', '1019803', 'TJKT', 'siswa228', 'siswa228', 'SISWA', 'AKTIF'),
(1095, 'MUHAMMAD REZA BAGUS SAPUTRA', '1019803', 'TJKT', 'siswa229', 'siswa229', 'SISWA', 'AKTIF'),
(1096, 'MUHAMMAD RISKY', '1019803', 'TJKT', 'siswa230', 'siswa230', 'SISWA', 'AKTIF'),
(1097, 'NOVALLINO', '1019803', 'TJKT', 'siswa231', 'siswa231', 'SISWA', 'AKTIF'),
(1098, 'RAFLY RAMADHAN LESMANA', '1019803', 'TJKT', 'siswa232', 'siswa232', 'SISWA', 'AKTIF'),
(1099, 'RIFQI FADILLA DWIKA', '1019803', 'TJKT', 'siswa233', 'siswa233', 'SISWA', 'AKTIF'),
(1100, 'RISVAL ANGGRA RESTA', '1019803', 'TJKT', 'siswa234', 'siswa234', 'SISWA', 'AKTIF'),
(1101, 'RIYO', '1019803', 'TJKT', 'siswa235', 'siswa235', 'SISWA', 'AKTIF'),
(1102, 'SANDY PUTRA', '1019803', 'TJKT', 'siswa236', 'siswa236', 'SISWA', 'AKTIF'),
(1103, 'SYAHRIL SUGANDA SAPUTRA', '1019803', 'TJKT', 'siswa237', 'siswa237', 'SISWA', 'AKTIF'),
(1104, 'TUBAGUS ABU BAKAR ZEIN', '1019803', 'TJKT', 'siswa238', 'siswa238', 'SISWA', 'AKTIF'),
(1105, 'ACHMAD ZAENI ALIFIANSYAH', '1007666', 'TJKT', 'siswa239', 'siswa239', 'SISWA', 'AKTIF'),
(1106, 'ADE FEBIYAN', '1007666', 'TJKT', 'siswa240', 'siswa240', 'SISWA', 'AKTIF'),
(1107, 'AKBAR MAULANA', '1007666', 'TJKT', 'siswa241', 'siswa241', 'SISWA', 'AKTIF'),
(1108, 'ALDI FIRMAN SYAH', '1007666', 'TJKT', 'siswa242', 'siswa242', 'SISWA', 'AKTIF'),
(1109, 'ALEX REVALDO', '1007666', 'TJKT', 'siswa243', 'siswa243', 'SISWA', 'AKTIF'),
(1110, 'ALFINTER RICO PARNINGOTAN', '1007666', 'TJKT', 'siswa244', 'siswa244', 'SISWA', 'AKTIF'),
(1111, 'ALVIAN DWI SASONGKO', '1007666', 'TJKT', 'siswa245', 'siswa245', 'SISWA', 'AKTIF'),
(1112, 'AMSAL LEONARDO TOBING', '1007666', 'TJKT', 'siswa246', 'siswa246', 'SISWA', 'AKTIF'),
(1113, 'ARIF MAULANA', '1007666', 'TJKT', 'siswa247', 'siswa247', 'SISWA', 'AKTIF'),
(1114, 'BAYU SULTAN ', '1007666', 'TJKT', 'siswa248', 'siswa248', 'SISWA', 'AKTIF'),
(1115, 'DAFFA FADLIL AFAN', '1007666', 'TJKT', 'siswa249', 'siswa249', 'SISWA', 'AKTIF'),
(1116, 'DESTEFANO ADAM REIVAND', '1007666', 'TJKT', 'siswa250', 'siswa250', 'SISWA', 'AKTIF'),
(1117, 'DIMAS PRAYUDI', '1007666', 'TJKT', 'siswa251', 'siswa251', 'SISWA', 'AKTIF'),
(1118, 'DYMAS PANJI PANGESTU', '1007666', 'TJKT', 'siswa252', 'siswa252', 'SISWA', 'AKTIF'),
(1119, 'EGY HARDIANSYAH', '1007666', 'TJKT', 'siswa253', 'siswa253', 'SISWA', 'AKTIF'),
(1120, 'EVANDRA GUSTI RAHARJO', '1007666', 'TJKT', 'siswa254', 'siswa254', 'SISWA', 'AKTIF'),
(1121, 'FADHIL FARIZI AZIZ', '1007666', 'TJKT', 'siswa255', 'siswa255', 'SISWA', 'AKTIF'),
(1122, 'FAISSAL ARMANTO', '1007666', 'TJKT', 'siswa256', 'siswa256', 'SISWA', 'AKTIF'),
(1123, 'FAREL AFIATUSADID AHMAD', '1007666', 'TJKT', 'siswa257', 'siswa257', 'SISWA', 'AKTIF'),
(1124, 'FEBRIO SAMMY NUGRAHA', '1007666', 'TJKT', 'siswa258', 'siswa258', 'SISWA', 'AKTIF'),
(1125, 'HERNAN BUDI LAKSNA', '1007666', 'TJKT', 'siswa259', 'siswa259', 'SISWA', 'AKTIF'),
(1126, 'ILHAM SAHRUL HASAN', '1007666', 'TJKT', 'siswa260', 'siswa260', 'SISWA', 'AKTIF'),
(1127, 'IMAM', '1007666', 'TJKT', 'siswa261', 'siswa261', 'SISWA', 'AKTIF'),
(1128, 'INTAN ANGGELIA PUTRI', '1007666', 'TJKT', 'siswa262', 'siswa262', 'SISWA', 'AKTIF'),
(1129, 'JAFAR UMAR THALIB AL QHIFARI', '1007666', 'TJKT', 'siswa263', 'siswa263', 'SISWA', 'AKTIF'),
(1130, 'KLIWLY KASMALA HERMAWAN', '1007666', 'TJKT', 'siswa264', 'siswa264', 'SISWA', 'AKTIF'),
(1131, 'MOHAMAD AZRIEL', '1007666', 'TJKT', 'siswa265', 'siswa265', 'SISWA', 'AKTIF'),
(1132, 'MONICA JULIANA', '1007666', 'TJKT', 'siswa266', 'siswa266', 'SISWA', 'AKTIF'),
(1133, 'MUHAMAD FERDI LESMANA', '1007666', 'TJKT', 'siswa267', 'siswa267', 'SISWA', 'AKTIF'),
(1134, 'MUHAMAD ZAKI SAPUTRA', '1007666', 'TJKT', 'siswa268', 'siswa268', 'SISWA', 'AKTIF'),
(1135, 'MUHAMMAD BAGAS FEBRIANSYAH ', '1007666', 'TJKT', 'siswa269', 'siswa269', 'SISWA', 'AKTIF'),
(1136, 'MUHAMMAD FAISHAL', '1007666', 'TJKT', 'siswa270', 'siswa270', 'SISWA', 'AKTIF'),
(1137, 'MUHAMMAD ILFAN MAULANA', '1007666', 'TJKT', 'siswa271', 'siswa271', 'SISWA', 'AKTIF'),
(1138, 'MUHAMMAD ILHAM', '1007666', 'TJKT', 'siswa272', 'siswa272', 'SISWA', 'AKTIF'),
(1139, 'MUHAMMAD NAUFAL MAHDI', '1007666', 'TJKT', 'siswa273', 'siswa273', 'SISWA', 'AKTIF'),
(1140, 'MUHAMMAD RAHMAT DANI', '1007666', 'TJKT', 'siswa274', 'siswa274', 'SISWA', 'AKTIF'),
(1141, 'NUGI SATRIA', '1007666', 'TJKT', 'siswa275', 'siswa275', 'SISWA', 'AKTIF'),
(1142, 'NUR AJI INDRA MAULANA', '1007666', 'TJKT', 'siswa276', 'siswa276', 'SISWA', 'AKTIF'),
(1143, 'RADITYA SELWA NOVA', '1007666', 'TJKT', 'siswa277', 'siswa277', 'SISWA', 'AKTIF'),
(1144, 'RAMA WIGUNA ', '1007666', 'TJKT', 'siswa278', 'siswa278', 'SISWA', 'AKTIF'),
(1145, 'RENDY ARDIANSYAH', '1007666', 'TJKT', 'siswa279', 'siswa279', 'SISWA', 'AKTIF'),
(1146, 'RIFA GLAND ALINSKIE', '1007666', 'TJKT', 'siswa280', 'siswa280', 'SISWA', 'AKTIF'),
(1147, 'RIKY ARYA SAPUTRO', '1007666', 'TJKT', 'siswa281', 'siswa281', 'SISWA', 'AKTIF'),
(1148, 'SHAHIBUR RIDWAN ', '1007666', 'TJKT', 'siswa282', 'siswa282', 'SISWA', 'AKTIF'),
(1149, 'WAHYU ANJAR SETIAWAN', '1007666', 'TJKT', 'siswa283', 'siswa283', 'SISWA', 'AKTIF'),
(1150, 'ZAKY ADRIAN FERNANDO', '1007666', 'TJKT', 'siswa284', 'siswa284', 'SISWA', 'AKTIF'),
(1151, 'ADI SAPUTRA', '1008112', 'TJKT', 'siswa285', 'siswa285', 'SISWA', 'AKTIF'),
(1152, 'ADI SETYO GUNAWAN', '1008112', 'TJKT', 'siswa286', 'siswa286', 'SISWA', 'AKTIF'),
(1153, 'AFRIZA HARDIANTO SAPUTRA', '1008112', 'TJKT', 'siswa287', 'siswa287', 'SISWA', 'AKTIF'),
(1154, 'AHMAD ADRIAN PRATAMA', '1008112', 'TJKT', 'siswa288', 'siswa288', 'SISWA', 'AKTIF'),
(1155, 'AJI ILHAM ', '1008112', 'TJKT', 'siswa289', 'siswa289', 'SISWA', 'AKTIF'),
(1156, 'ANGGI ARDIYANSAH', '1008112', 'TJKT', 'siswa290', 'siswa290', 'SISWA', 'AKTIF'),
(1157, 'ANZANI PESTA JUWITA NAIBAHO', '1008112', 'TJKT', 'siswa291', 'siswa291', 'SISWA', 'AKTIF'),
(1158, 'ARYA NURKHOLIK', '1008112', 'TJKT', 'siswa292', 'siswa292', 'SISWA', 'AKTIF'),
(1159, 'BAGAS DWI PRAYOGA', '1008112', 'TJKT', 'siswa293', 'siswa293', 'SISWA', 'AKTIF'),
(1160, 'BAYU FIRGIAWAN LISTANTO', '1008112', 'TJKT', 'siswa294', 'siswa294', 'SISWA', 'AKTIF'),
(1161, 'DAFFA ANGGARA RADITYA', '1008112', 'TJKT', 'siswa295', 'siswa295', 'SISWA', 'AKTIF'),
(1162, 'DANILO FERNANDO', '1008112', 'TJKT', 'siswa296', 'siswa296', 'SISWA', 'AKTIF'),
(1163, 'ERLAND SBASTIAN GUNAWAN', '1008112', 'TJKT', 'siswa297', 'siswa297', 'SISWA', 'AKTIF'),
(1164, 'FARIS AHMAD RIFQY', '1008112', 'TJKT', 'siswa298', 'siswa298', 'SISWA', 'AKTIF'),
(1165, 'FAYAD HAWARI', '1008112', 'TJKT', 'siswa299', 'siswa299', 'SISWA', 'AKTIF'),
(1166, 'GILANG MUHADZIB', '1008112', 'TJKT', 'siswa300', 'siswa300', 'SISWA', 'AKTIF'),
(1167, 'IBNU BACTIAR GULTOM', '1008112', 'TJKT', 'siswa301', 'siswa301', 'SISWA', 'AKTIF'),
(1168, 'IKFANSYAH', '1008112', 'TJKT', 'siswa302', 'siswa302', 'SISWA', 'AKTIF'),
(1169, 'IKHSAN NURRIZKY', '1008112', 'TJKT', 'siswa303', 'siswa303', 'SISWA', 'AKTIF'),
(1170, 'JONATHAN IQBAL PUTRA', '1008112', 'TJKT', 'siswa304', 'siswa304', 'SISWA', 'AKTIF'),
(1171, 'LEFI NURYANDI', '1008112', 'TJKT', 'siswa305', 'siswa305', 'SISWA', 'AKTIF'),
(1172, 'MERLINA EVELYN ', '1008112', 'TJKT', 'siswa306', 'siswa306', 'SISWA', 'AKTIF'),
(1173, 'MUHAMAD RISKI', '1008112', 'TJKT', 'siswa307', 'siswa307', 'SISWA', 'AKTIF'),
(1174, 'MUHAMAD SYAISAR RAMADHAN', '1008112', 'TJKT', 'siswa308', 'siswa308', 'SISWA', 'AKTIF'),
(1175, 'MUHAMMAD ADRIANSYAH', '1008112', 'TJKT', 'siswa309', 'siswa309', 'SISWA', 'AKTIF'),
(1176, 'MUHAMMAD GILANG RADITIYA', '1008112', 'TJKT', 'siswa310', 'siswa310', 'SISWA', 'AKTIF'),
(1177, 'MUHAMMAD RIZKA SAPUTRA', '1008112', 'TJKT', 'siswa311', 'siswa311', 'SISWA', 'AKTIF'),
(1178, 'MUHAMMAD SAEFULAH', '1008112', 'TJKT', 'siswa312', 'siswa312', 'SISWA', 'AKTIF'),
(1179, 'NAUKY BAGUS PRATAMA', '1008112', 'TJKT', 'siswa313', 'siswa313', 'SISWA', 'AKTIF'),
(1180, 'NOVAL ARIYANTO', '1008112', 'TJKT', 'siswa314', 'siswa314', 'SISWA', 'AKTIF'),
(1181, 'NUR AWAL SANTOSO', '1008112', 'TJKT', 'siswa315', 'siswa315', 'SISWA', 'AKTIF'),
(1182, 'RADIT SYAHPUTRA', '1008112', 'TJKT', 'siswa316', 'siswa316', 'SISWA', 'AKTIF'),
(1183, 'RAFFI PRASETIA', '1008112', 'TJKT', 'siswa317', 'siswa317', 'SISWA', 'AKTIF'),
(1184, 'RAHMANDANI', '1008112', 'TJKT', 'siswa318', 'siswa318', 'SISWA', 'AKTIF'),
(1185, 'RENDI IRWANSYAH', '1008112', 'TJKT', 'siswa319', 'siswa319', 'SISWA', 'AKTIF'),
(1186, 'RENDY PUTRA AFIA', '1008112', 'TJKT', 'siswa320', 'siswa320', 'SISWA', 'AKTIF'),
(1187, 'RIZKY KURNIAWAN', '1008112', 'TJKT', 'siswa321', 'siswa321', 'SISWA', 'AKTIF'),
(1188, 'RIZQI MARDIANSYAH', '1008112', 'TJKT', 'siswa322', 'siswa322', 'SISWA', 'AKTIF'),
(1189, 'ROMI CANDRA WINATA', '1008112', 'TJKT', 'siswa323', 'siswa323', 'SISWA', 'AKTIF'),
(1190, 'SAMI AL FAIZ', '1008112', 'TJKT', 'siswa324', 'siswa324', 'SISWA', 'AKTIF'),
(1191, 'SHERIL ARDIKA ASSHAWA', '1008112', 'TJKT', 'siswa325', 'siswa325', 'SISWA', 'AKTIF'),
(1192, 'SONI SAPUTRA', '1008112', 'TJKT', 'siswa326', 'siswa326', 'SISWA', 'AKTIF'),
(1193, 'SYAHDANI AGUSTIO', '1008112', 'TJKT', 'siswa327', 'siswa327', 'SISWA', 'AKTIF'),
(1194, 'WIKO RIPANDA PUTRA', '1008112', 'TJKT', 'siswa328', 'siswa328', 'SISWA', 'AKTIF'),
(1195, 'ADE RAFLI', '1009598', 'TJKT', 'siswa329', 'siswa329', 'SISWA', 'AKTIF'),
(1196, 'AGUNG NUR RISKI', '1009598', 'TJKT', 'siswa330', 'siswa330', 'SISWA', 'AKTIF'),
(1197, 'AHMAD ABIDZAR RIFA\'I', '1009598', 'TJKT', 'siswa331', 'siswa331', 'SISWA', 'AKTIF'),
(1198, 'AHMAD EKA PRATAMA', '1009598', 'TJKT', 'siswa332', 'siswa332', 'SISWA', 'AKTIF'),
(1199, 'AHMAD HAERUL HADI', '1009598', 'TJKT', 'siswa333', 'siswa333', 'SISWA', 'AKTIF'),
(1200, 'BAGAS SADEWO JATI', '1009598', 'TJKT', 'siswa334', 'siswa334', 'SISWA', 'AKTIF'),
(1201, 'DIMAS SAPUTRA', '1009598', 'TJKT', 'siswa335', 'siswa335', 'SISWA', 'AKTIF'),
(1202, 'DWI ADI NUGROHO', '1009598', 'TJKT', 'siswa336', 'siswa336', 'SISWA', 'AKTIF'),
(1203, 'ERIK YOGA PRATAMA', '1009598', 'TJKT', 'siswa337', 'siswa337', 'SISWA', 'AKTIF'),
(1204, 'ERLANGGA SAPUTRA', '1009598', 'TJKT', 'siswa338', 'siswa338', 'SISWA', 'AKTIF'),
(1205, 'EVAN MAULANA', '1009598', 'TJKT', 'siswa339', 'siswa339', 'SISWA', 'AKTIF'),
(1206, 'EVAN TRILYANTO', '1009598', 'TJKT', 'siswa340', 'siswa340', 'SISWA', 'AKTIF'),
(1207, 'FADHIL KURNIAWAN', '1009598', 'TJKT', 'siswa341', 'siswa341', 'SISWA', 'AKTIF'),
(1208, 'FAHMI WIJAYA', '1009598', 'TJKT', 'siswa342', 'siswa342', 'SISWA', 'AKTIF'),
(1209, 'FASKALIS HAMBALLAH AKBAR', '1009598', 'TJKT', 'siswa343', 'siswa343', 'SISWA', 'AKTIF'),
(1210, 'FAZA ZAHIDAN', '1009598', 'TJKT', 'siswa344', 'siswa344', 'SISWA', 'AKTIF'),
(1211, 'GALIH ADI APRIANSYAH', '1009598', 'TJKT', 'siswa345', 'siswa345', 'SISWA', 'AKTIF'),
(1212, 'IBNU BASUNJAY', '1009598', 'TJKT', 'siswa346', 'siswa346', 'SISWA', 'AKTIF'),
(1213, 'IBRA HAFIZH HERMAWAN', '1009598', 'TJKT', 'siswa347', 'siswa347', 'SISWA', 'AKTIF'),
(1214, 'ILYAS', '1009598', 'TJKT', 'siswa348', 'siswa348', 'SISWA', 'AKTIF'),
(1215, 'LUTFIANSYAH ALFAHREZI', '1009598', 'TJKT', 'siswa349', 'siswa349', 'SISWA', 'AKTIF'),
(1216, 'MAULANA ISHAQ', '1009598', 'TJKT', 'siswa350', 'siswa350', 'SISWA', 'AKTIF'),
(1217, 'MAULANA SANJAYA', '1009598', 'TJKT', 'siswa351', 'siswa351', 'SISWA', 'AKTIF'),
(1218, 'MOHAMMAD FAIZ SHALIHIN', '1009598', 'TJKT', 'siswa352', 'siswa352', 'SISWA', 'AKTIF'),
(1219, 'MUH. HAIKAL RAMDHANI ', '1009598', 'TJKT', 'siswa353', 'siswa353', 'SISWA', 'AKTIF'),
(1220, 'MUHAMAD IKBAL AL FAREZI', '1009598', 'TJKT', 'siswa354', 'siswa354', 'SISWA', 'AKTIF'),
(1221, 'MUHAMAD ZIDANE', '1009598', 'TJKT', 'siswa355', 'siswa355', 'SISWA', 'AKTIF'),
(1222, 'MUHAMMAD ARMAN MALIKI', '1009598', 'TJKT', 'siswa356', 'siswa356', 'SISWA', 'AKTIF'),
(1223, 'MUHAMMAD CHOIRUL HAMZAH', '1009598', 'TJKT', 'siswa357', 'siswa357', 'SISWA', 'AKTIF'),
(1224, 'MUHAMMAD FADIL', '1009598', 'TJKT', 'siswa358', 'siswa358', 'SISWA', 'AKTIF'),
(1225, 'MUHAMMAD RAIHAN', '1009598', 'TJKT', 'siswa359', 'siswa359', 'SISWA', 'AKTIF'),
(1226, 'NASYIFA ADINDA', '1009598', 'TJKT', 'siswa360', 'siswa360', 'SISWA', 'AKTIF'),
(1227, 'NOREEN TRIPUTRA', '1009598', 'TJKT', 'siswa361', 'siswa361', 'SISWA', 'AKTIF'),
(1228, 'PUTRA RASIET ANDRIANSYAH PRATAMA', '1009598', 'TJKT', 'siswa362', 'siswa362', 'SISWA', 'AKTIF'),
(1229, 'RADITYA PUTRA HARSYAH', '1009598', 'TJKT', 'siswa363', 'siswa363', 'SISWA', 'AKTIF'),
(1230, 'RAIHAN PUTRA LESMANA', '1009598', 'TJKT', 'siswa364', 'siswa364', 'SISWA', 'AKTIF'),
(1231, 'RAKAN WIJAYA NENDRA', '1009598', 'TJKT', 'siswa365', 'siswa365', 'SISWA', 'AKTIF'),
(1232, 'RASYA BAGUS GUNAWAN', '1009598', 'TJKT', 'siswa366', 'siswa366', 'SISWA', 'AKTIF'),
(1233, 'REZA FARIZI', '1009598', 'TJKT', 'siswa367', 'siswa367', 'SISWA', 'AKTIF'),
(1234, 'RIDWAN SAPUTRA', '1009598', 'TJKT', 'siswa368', 'siswa368', 'SISWA', 'AKTIF'),
(1235, 'RIZAL NURIYANTO', '1009598', 'TJKT', 'siswa369', 'siswa369', 'SISWA', 'AKTIF'),
(1236, 'RIZKI FATIH AKMAL', '1009598', 'TJKT', 'siswa370', 'siswa370', 'SISWA', 'AKTIF'),
(1237, 'RIZKY RAHMADAN FALIFI', '1009598', 'TJKT', 'siswa371', 'siswa371', 'SISWA', 'AKTIF'),
(1238, 'ZAKI NUR SYAHMAN', '1009598', 'TJKT', 'siswa372', 'siswa372', 'SISWA', 'AKTIF'),
(1239, 'ADAM WAHYYUDI', '1026282', 'TJKT', 'siswa373', 'siswa373', 'SISWA', 'AKTIF'),
(1240, 'AHMAD DANY', '1026282', 'TJKT', 'siswa374', 'siswa374', 'SISWA', 'AKTIF'),
(1241, 'ANGGA PRASETYA PUTRA', '1026282', 'TJKT', 'siswa375', 'siswa375', 'SISWA', 'AKTIF'),
(1242, 'ANGGA YOGA PRATAMA', '1026282', 'TJKT', 'siswa376', 'siswa376', 'SISWA', 'AKTIF'),
(1243, 'Anggi Alvianto', '1026282', 'TJKT', 'siswa377', 'siswa377', 'SISWA', 'AKTIF'),
(1244, 'ARDI PRASETIO', '1026282', 'TJKT', 'siswa378', 'siswa378', 'SISWA', 'AKTIF'),
(1245, 'ARI ARDIANSYAH', '1026282', 'TJKT', 'siswa379', 'siswa379', 'SISWA', 'AKTIF'),
(1246, 'ARIFIN', '1026282', 'TJKT', 'siswa380', 'siswa380', 'SISWA', 'AKTIF'),
(1247, 'Aris Bastyar', '1026282', 'TJKT', 'siswa381', 'siswa381', 'SISWA', 'AKTIF'),
(1248, 'ARYA ZULFIKAR', '1026282', 'TJKT', 'siswa382', 'siswa382', 'SISWA', 'AKTIF'),
(1249, 'BAYU FIRMANSYAH', '1026282', 'TJKT', 'siswa383', 'siswa383', 'SISWA', 'AKTIF'),
(1250, 'Bayu Setiawan', '1026282', 'TJKT', 'siswa384', 'siswa384', 'SISWA', 'AKTIF'),
(1251, 'CAHYA AJI SAPUTRA', '1026282', 'TJKT', 'siswa385', 'siswa385', 'SISWA', 'AKTIF'),
(1252, 'CORY INTAN AGUSTIN', '1026282', 'TJKT', 'siswa386', 'siswa386', 'SISWA', 'AKTIF'),
(1253, 'Dzaky Ramadhani', '1026282', 'TJKT', 'siswa387', 'siswa387', 'SISWA', 'AKTIF'),
(1254, 'ERIK JAJANG KURNIAWAN', '1026282', 'TJKT', 'siswa388', 'siswa388', 'SISWA', 'AKTIF'),
(1255, 'FAKHRUL DHAFI', '1026282', 'TJKT', 'siswa389', 'siswa389', 'SISWA', 'AKTIF'),
(1256, 'FERDIAN AHMAD RUDIANTO', '1026282', 'TJKT', 'siswa390', 'siswa390', 'SISWA', 'AKTIF'),
(1257, 'FERDIAN WIJAYA ALEXANDRA', '1026282', 'TJKT', 'siswa391', 'siswa391', 'SISWA', 'AKTIF'),
(1258, 'HARIS', '1026282', 'TJKT', 'siswa392', 'siswa392', 'SISWA', 'AKTIF'),
(1259, 'HERIXS HIDAYAT', '1026282', 'TJKT', 'siswa393', 'siswa393', 'SISWA', 'AKTIF'),
(1260, 'Immanuel Tamando Maso', '1026282', 'TJKT', 'siswa394', 'siswa394', 'SISWA', 'AKTIF'),
(1261, 'Justin Valentino Warouw', '1026282', 'TJKT', 'siswa395', 'siswa395', 'SISWA', 'AKTIF'),
(1262, 'KELVIN AMANDO ERAWAN', '1026282', 'TJKT', 'siswa396', 'siswa396', 'SISWA', 'AKTIF'),
(1263, 'Mimin Winata', '1026282', 'TJKT', 'siswa397', 'siswa397', 'SISWA', 'AKTIF'),
(1264, 'MOHAMMAD KHOIRUL YANI', '1026282', 'TJKT', 'siswa398', 'siswa398', 'SISWA', 'AKTIF'),
(1265, 'MUHAMAD REZA ANDRIAN', '1026282', 'TJKT', 'siswa399', 'siswa399', 'SISWA', 'AKTIF'),
(1266, 'MUHAMMAD CAVAN HIZAM', '1026282', 'TJKT', 'siswa400', 'siswa400', 'SISWA', 'AKTIF'),
(1267, 'Muhammad Gusti Razan', '1026282', 'TJKT', 'siswa401', 'siswa401', 'SISWA', 'AKTIF'),
(1268, 'Muhammad Hasnul Arifin', '1026282', 'TJKT', 'siswa402', 'siswa402', 'SISWA', 'AKTIF'),
(1269, 'MUHAMMAD SIROJUDDIN GHOZALI', '1026282', 'TJKT', 'siswa403', 'siswa403', 'SISWA', 'AKTIF'),
(1270, 'NASHRULLOH FIRDAUS', '1026282', 'TJKT', 'siswa404', 'siswa404', 'SISWA', 'AKTIF'),
(1271, 'NICHOLLA MULQI BARBAROSSA', '1026282', 'TJKT', 'siswa405', 'siswa405', 'SISWA', 'AKTIF'),
(1272, 'QALAM RAYDATHUL SABANI', '1026282', 'TJKT', 'siswa406', 'siswa406', 'SISWA', 'AKTIF'),
(1273, 'RAYNOR SANJIA ANDHIKAFATA', '1026282', 'TJKT', 'siswa407', 'siswa407', 'SISWA', 'AKTIF'),
(1274, 'RIZAL MAULANA', '1026282', 'TJKT', 'siswa408', 'siswa408', 'SISWA', 'AKTIF'),
(1275, 'SHEVA SEPTANIO', '1026282', 'TJKT', 'siswa409', 'siswa409', 'SISWA', 'AKTIF'),
(1276, 'SOPIYAN', '1026282', 'TJKT', 'siswa410', 'siswa410', 'SISWA', 'AKTIF'),
(1277, 'SUGENG DWI WALUYO', '1026282', 'TJKT', 'siswa411', 'siswa411', 'SISWA', 'AKTIF'),
(1278, 'SYAHRUL HANAVI', '1026282', 'TJKT', 'siswa412', 'siswa412', 'SISWA', 'AKTIF'),
(1279, 'WILLYANSYAH', '1026282', 'TJKT', 'siswa413', 'siswa413', 'SISWA', 'AKTIF'),
(1280, 'YOHANES SETIAWAN', '1026282', 'TJKT', 'siswa414', 'siswa414', 'SISWA', 'AKTIF'),
(1281, 'YUDHA SEPTYAN', '1026282', 'TJKT', 'siswa415', 'siswa415', 'SISWA', 'AKTIF'),
(1282, 'ZODI PRASTIYO', '1026282', 'TJKT', 'siswa416', 'siswa416', 'SISWA', 'AKTIF'),
(1283, 'Abdul Rahman', '1027878', 'TJKT', 'siswa417', 'siswa417', 'SISWA', 'AKTIF'),
(1284, 'AFIF PRASETYO', '1027878', 'TJKT', 'siswa418', 'siswa418', 'SISWA', 'AKTIF'),
(1285, 'AGUNG MAULANA FEBRIYANTO', '1027878', 'TJKT', 'siswa419', 'siswa419', 'SISWA', 'AKTIF'),
(1286, 'ARIF', '1027878', 'TJKT', 'siswa420', 'siswa420', 'SISWA', 'AKTIF'),
(1287, 'CANDRA AGUS NUGROHO', '1027878', 'TJKT', 'siswa421', 'siswa421', 'SISWA', 'AKTIF'),
(1288, 'CARLOS LEONARDO', '1027878', 'TJKT', 'siswa422', 'siswa422', 'SISWA', 'AKTIF'),
(1289, 'DENDI ZAKARIA', '1027878', 'TJKT', 'siswa423', 'siswa423', 'SISWA', 'AKTIF'),
(1290, 'DENDY CAHYOKO', '1027878', 'TJKT', 'siswa424', 'siswa424', 'SISWA', 'AKTIF'),
(1291, 'DICKY FADILAH', '1027878', 'TJKT', 'siswa425', 'siswa425', 'SISWA', 'AKTIF'),
(1292, 'DIMAS ADI SAPUTRA', '1027878', 'TJKT', 'siswa426', 'siswa426', 'SISWA', 'AKTIF'),
(1293, 'DUWI AMAL MAULIDA AKSAN', '1027878', 'TJKT', 'siswa427', 'siswa427', 'SISWA', 'AKTIF'),
(1294, 'ERWIN OKTAVIANTO', '1027878', 'TJKT', 'siswa428', 'siswa428', 'SISWA', 'AKTIF'),
(1295, 'FACHRUL RAMADHAN', '1027878', 'TJKT', 'siswa429', 'siswa429', 'SISWA', 'AKTIF'),
(1296, 'GALIH ADIVA PRATAMA PUTRA', '1027878', 'TJKT', 'siswa430', 'siswa430', 'SISWA', 'AKTIF'),
(1297, 'HAERUL ANGGA', '1027878', 'TJKT', 'siswa431', 'siswa431', 'SISWA', 'AKTIF'),
(1298, 'HARRY RIVALDY', '1027878', 'TJKT', 'siswa432', 'siswa432', 'SISWA', 'AKTIF'),
(1299, 'MOHAMAD RAGIL ADITYA PUTRA', '1027878', 'TJKT', 'siswa433', 'siswa433', 'SISWA', 'AKTIF'),
(1300, 'MOHAMMAD FARHAN', '1027878', 'TJKT', 'siswa434', 'siswa434', 'SISWA', 'AKTIF'),
(1301, 'MOHAMMAD HADI WIJAYA', '1027878', 'TJKT', 'siswa435', 'siswa435', 'SISWA', 'AKTIF'),
(1302, 'MUHAMMAD AFRIZAL', '1027878', 'TJKT', 'siswa436', 'siswa436', 'SISWA', 'AKTIF'),
(1303, 'MUHAMMAD DARMA ILLAHI', '1027878', 'TJKT', 'siswa437', 'siswa437', 'SISWA', 'AKTIF'),
(1304, 'MUHAMMAD PIRMANSAH PUTRA RAGIL ', '1027878', 'TJKT', 'siswa438', 'siswa438', 'SISWA', 'AKTIF'),
(1305, 'Muhammad Rafandi', '1027878', 'TJKT', 'siswa439', 'siswa439', 'SISWA', 'AKTIF'),
(1306, 'MUHAMMAD RIDWAN', '1027878', 'TJKT', 'siswa440', 'siswa440', 'SISWA', 'AKTIF'),
(1307, 'Muhammad Vincen Ramadhan', '1027878', 'TJKT', 'siswa441', 'siswa441', 'SISWA', 'AKTIF'),
(1308, 'Najib Dzannur', '1027878', 'TJKT', 'siswa442', 'siswa442', 'SISWA', 'AKTIF'),
(1309, 'PERDANA ANDRE SETIAWAN', '1027878', 'TJKT', 'siswa443', 'siswa443', 'SISWA', 'AKTIF'),
(1310, 'PUTRA SURYA PRATAMA', '1027878', 'TJKT', 'siswa444', 'siswa444', 'SISWA', 'AKTIF'),
(1311, 'RACHMAN GANIE', '1027878', 'TJKT', 'siswa445', 'siswa445', 'SISWA', 'AKTIF'),
(1312, 'RAIHAN MUHAMMAD AKBAR', '1027878', 'TJKT', 'siswa446', 'siswa446', 'SISWA', 'AKTIF'),
(1313, 'Rehandika Bayu Maarif', '1027878', 'TJKT', 'siswa447', 'siswa447', 'SISWA', 'AKTIF'),
(1314, 'RENO PRIANDANA', '1027878', 'TJKT', 'siswa448', 'siswa448', 'SISWA', 'AKTIF'),
(1315, 'REVAN OKTAGIAS RAMADHAN', '1027878', 'TJKT', 'siswa449', 'siswa449', 'SISWA', 'AKTIF'),
(1316, 'RIAN MAULANA', '1027878', 'TJKT', 'siswa450', 'siswa450', 'SISWA', 'AKTIF'),
(1317, 'ROSITA ARYANINGSIH', '1027878', 'TJKT', 'siswa451', 'siswa451', 'SISWA', 'AKTIF'),
(1318, 'SAHRUL ALAM', '1027878', 'TJKT', 'siswa452', 'siswa452', 'SISWA', 'AKTIF'),
(1319, 'SAIPUL ALI', '1027878', 'TJKT', 'siswa453', 'siswa453', 'SISWA', 'AKTIF'),
(1320, 'Satria Wahyu Ramadhan ', '1027878', 'TJKT', 'siswa454', 'siswa454', 'SISWA', 'AKTIF'),
(1321, 'SYAHRIEZA BAGUS WIDIYANTO', '1027878', 'TJKT', 'siswa455', 'siswa455', 'SISWA', 'AKTIF'),
(1322, 'TEGAR CAHYA PUTRA', '1027878', 'TJKT', 'siswa456', 'siswa456', 'SISWA', 'AKTIF'),
(1323, 'Ulumuddin Adji Pamungkas', '1027878', 'TJKT', 'siswa457', 'siswa457', 'SISWA', 'AKTIF'),
(1324, 'ADIS MAULANA', '1028887', 'TJKT', 'siswa458', 'siswa458', 'SISWA', 'AKTIF'),
(1325, 'ADITTIA DWI SAPUTRA', '1028887', 'TJKT', 'siswa459', 'siswa459', 'SISWA', 'AKTIF'),
(1326, 'AGUNG PRASETYO NUGROHO', '1028887', 'TJKT', 'siswa460', 'siswa460', 'SISWA', 'AKTIF'),
(1327, 'AGUS KHOLIFUDIN', '1028887', 'TJKT', 'siswa461', 'siswa461', 'SISWA', 'AKTIF'),
(1328, 'AHMAD RIPAI', '1028887', 'TJKT', 'siswa462', 'siswa462', 'SISWA', 'AKTIF'),
(1329, 'AJI PRASSETYO', '1028887', 'TJKT', 'siswa463', 'siswa463', 'SISWA', 'AKTIF'),
(1330, 'ALTHAF NUR ASEGAF', '1028887', 'TJKT', 'siswa464', 'siswa464', 'SISWA', 'AKTIF'),
(1331, 'ANANG RAMADHAN', '1028887', 'TJKT', 'siswa465', 'siswa465', 'SISWA', 'AKTIF'),
(1332, 'ANDI FIRMANSYAH', '1028887', 'TJKT', 'siswa466', 'siswa466', 'SISWA', 'AKTIF'),
(1333, 'Dewi Rizki Niluardani', '1028887', 'TJKT', 'siswa467', 'siswa467', 'SISWA', 'AKTIF'),
(1334, 'DIMAS BUDI RIYANTO', '1028887', 'TJKT', 'siswa468', 'siswa468', 'SISWA', 'AKTIF'),
(1335, 'DION MOHAMAD BARUNA', '1028887', 'TJKT', 'siswa469', 'siswa469', 'SISWA', 'AKTIF'),
(1336, 'DZAKY ZAHRAN', '1028887', 'TJKT', 'siswa470', 'siswa470', 'SISWA', 'AKTIF'),
(1337, 'EGA PRATAMA', '1028887', 'TJKT', 'siswa471', 'siswa471', 'SISWA', 'AKTIF'),
(1338, 'EKY FERDIANSYAH', '1028887', 'TJKT', 'siswa472', 'siswa472', 'SISWA', 'AKTIF'),
(1339, 'ERI PUTRA PRATAMA', '1028887', 'TJKT', 'siswa473', 'siswa473', 'SISWA', 'AKTIF'),
(1340, 'FAJAR DWI HARTADI', '1028887', 'TJKT', 'siswa474', 'siswa474', 'SISWA', 'AKTIF'),
(1341, 'FEBI DWI SULISTIADI', '1028887', 'TJKT', 'siswa475', 'siswa475', 'SISWA', 'AKTIF'),
(1342, 'GIANLUIGI FADHIL MUSTAQIM', '1028887', 'TJKT', 'siswa476', 'siswa476', 'SISWA', 'AKTIF'),
(1343, 'GILANG DIAN SAPUTRA', '1028887', 'TJKT', 'siswa477', 'siswa477', 'SISWA', 'AKTIF'),
(1344, 'GIN GIN', '1028887', 'TJKT', 'siswa478', 'siswa478', 'SISWA', 'AKTIF'),
(1345, 'HAQI MAULANA', '1028887', 'TJKT', 'siswa479', 'siswa479', 'SISWA', 'AKTIF'),
(1346, 'Hasrin Abdul Laji', '1028887', 'TJKT', 'siswa480', 'siswa480', 'SISWA', 'AKTIF'),
(1347, 'I MADE ANTONI', '1028887', 'TJKT', 'siswa481', 'siswa481', 'SISWA', 'AKTIF'),
(1348, 'IAN SAPUTRA', '1028887', 'TJKT', 'siswa482', 'siswa482', 'SISWA', 'AKTIF'),
(1349, 'JANUAR BAGUS WIBOWO', '1028887', 'TJKT', 'siswa483', 'siswa483', 'SISWA', 'AKTIF'),
(1350, 'KUKUH ANGGER MAHARGYO', '1028887', 'TJKT', 'siswa484', 'siswa484', 'SISWA', 'AKTIF'),
(1351, 'LAKSAMANA PUTRA', '1028887', 'TJKT', 'siswa485', 'siswa485', 'SISWA', 'AKTIF'),
(1352, 'MOH ALDI NIRWANSYAH', '1028887', 'TJKT', 'siswa486', 'siswa486', 'SISWA', 'AKTIF'),
(1353, 'MOHAMAD HARYONO', '1028887', 'TJKT', 'siswa487', 'siswa487', 'SISWA', 'AKTIF'),
(1354, 'MUHAMAD ALBAR ALAMSYAH', '1028887', 'TJKT', 'siswa488', 'siswa488', 'SISWA', 'AKTIF'),
(1355, 'MUHAMAD RYAN HARDIANSYAH', '1028887', 'TJKT', 'siswa489', 'siswa489', 'SISWA', 'AKTIF'),
(1356, 'MUHAMAD SABLIK MBIPI', '1028887', 'TJKT', 'siswa490', 'siswa490', 'SISWA', 'AKTIF'),
(1357, 'MUHAMMAD RAFLI', '1028887', 'TJKT', 'siswa491', 'siswa491', 'SISWA', 'AKTIF'),
(1358, 'Muhammad Tio', '1028887', 'TJKT', 'siswa492', 'siswa492', 'SISWA', 'AKTIF'),
(1359, 'NENDI', '1028887', 'TJKT', 'siswa493', 'siswa493', 'SISWA', 'AKTIF'),
(1360, 'NOVAL TRI HARYANTO', '1028887', 'TJKT', 'siswa494', 'siswa494', 'SISWA', 'AKTIF'),
(1361, 'RAFAEL MULIA ALFAHDI', '1028887', 'TJKT', 'siswa495', 'siswa495', 'SISWA', 'AKTIF'),
(1362, 'RAGIL PANGESTU', '1028887', 'TJKT', 'siswa496', 'siswa496', 'SISWA', 'AKTIF'),
(1363, 'RENDI SAPUTRA', '1028887', 'TJKT', 'siswa497', 'siswa497', 'SISWA', 'AKTIF'),
(1364, 'Reni Nuraeni', '1028887', 'TJKT', 'siswa498', 'siswa498', 'SISWA', 'AKTIF'),
(1365, 'TEGAR', '1028887', 'TJKT', 'siswa499', 'siswa499', 'SISWA', 'AKTIF'),
(1366, 'TRI PUTRA AFRIANSYAH', '1028887', 'TJKT', 'siswa500', 'siswa500', 'SISWA', 'AKTIF'),
(1367, 'WIDDIYA BAGUS ENDANG WINARYO', '1028887', 'TJKT', 'siswa501', 'siswa501', 'SISWA', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `bank_soal`
--

CREATE TABLE `bank_soal` (
  `id_bank_soal` int(18) NOT NULL,
  `id_mapel` int(18) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `nama_ujian` varchar(128) NOT NULL,
  `status` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_soal`
--

INSERT INTO `bank_soal` (`id_bank_soal`, `id_mapel`, `id_guru`, `nama_ujian`, `status`, `time`) VALUES
(4444673, 5022505, 1034625, 'ULANGAN HARIAN', 'NON AKTIF', '2022-07-23 11:30:22'),
(6821753, 5022506, 1034625, 'ULANGAN HARIAN', 'AKTIF', '2022-07-24 03:44:05'),
(7460242, 5022507, 1034625, 'ULANGAN HARIAN', 'AKTIF', '2022-07-24 07:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_ujian`
--

CREATE TABLE `jadwal_ujian` (
  `id_jadwal_ujian` int(18) NOT NULL,
  `id_bank_soal` int(18) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_akhir` time NOT NULL,
  `durasi_ujian` int(8) NOT NULL,
  `update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_ujian`
--

INSERT INTO `jadwal_ujian` (`id_jadwal_ujian`, `id_bank_soal`, `id_kelas`, `tgl_awal`, `tgl_akhir`, `waktu_mulai`, `waktu_akhir`, `durasi_ujian`, `update`) VALUES
(205598, 6821753, 1017187, '2022-07-24', '2022-07-24', '07:00:00', '23:00:00', 45, '2022-07-24 04:04:21'),
(338016, 1706992, 1009956, '2022-07-11', '2022-07-11', '07:00:00', '23:00:00', 90, '2022-07-11 11:19:11'),
(338834, 2626300, 1018989, '2022-07-11', '2022-07-11', '07:00:00', '23:00:00', 90, '2022-07-11 11:23:36'),
(444109, 7460242, 1017187, '2022-07-24', '2022-07-24', '07:00:00', '23:00:00', 45, '2022-07-24 07:06:42'),
(489169, 4863740, 1018989, '2022-07-11', '2022-07-11', '07:00:00', '23:00:00', 90, '2022-07-11 11:21:14'),
(832443, 2063599, 1018989, '2022-07-11', '2022-07-11', '07:00:00', '23:00:00', 90, '2022-07-11 10:13:51'),
(944408, 6413052, 1018989, '2022-07-11', '2022-07-11', '07:00:00', '23:00:00', 90, '2022-07-11 10:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_bank_soal` int(18) NOT NULL,
  `soal` varchar(1024) NOT NULL,
  `pilA` varchar(1024) NOT NULL,
  `pilB` varchar(1024) NOT NULL,
  `pilC` varchar(1024) NOT NULL,
  `pilD` varchar(1024) NOT NULL,
  `pilE` varchar(1024) NOT NULL,
  `kunci` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_bank_soal`, `soal`, `pilA`, `pilB`, `pilC`, `pilD`, `pilE`, `kunci`) VALUES
(6821753, 'Range IP Address kelas B dimulai dari ….hingga….', '126.x.x.x s/d 191.x.x.x', '126.x.x.x s/d 192.x.x.x', '10.x.x.x s/d 172.x.x.x', '127.x.x.x s/d 192.x.x.x', '192.x.x.x s/d 254.x.x.x', 'A'),
(6821753, 'IP address dengan alamat 172.168.0.1 merupakan IP address kelas ...', 'Kelas B', 'Kelas C', 'Kelas E', 'Kelas D', 'Kelas A', 'A'),
(6821753, 'Di bawah ini fungsi jaringan. kecuali...', 'teleconference', 'data sharing', 'resource disable', 'printer sharing', 'resource sharing', 'C'),
(6821753, 'Sistem operasi yang disajikan dengan tampilan berbentuk gambar atau grafis sehinggalebih user friendly disebut sistem operasi berbasis ...', 'icon', 'shortcut', 'desktop', 'GUI', 'text', 'D'),
(6821753, 'Pengaturan perangkat keras dan perangkat lunak pada Sistem Operasi Windows terdapat pada ....', 'windows expoler', 'control panel', 'internet expoler', 'program', 'microsoft outlook', 'B'),
(6821753, 'Yang termasuk sistem operasi Open Source adalah ....', 'Unix', 'Linux', 'Windows', 'DOS', 'Macintosh', 'B'),
(6821753, 'Microsoft Windows merupakan sistem operasi komputer yang berbasis GUI, SINGKATAN GUI ADALAH ....', 'Picture User Interface', 'Graphic Universal Interface', 'Graphical and Picture Interface', 'Graphical User Interface', 'Text User Interface', 'D'),
(6821753, 'Di bawah ini adalah beberapa distribusi linux . kecuali ....', 'windows 7', 'Debian', 'Slackware', 'ubuntu', 'Mandrake', 'A'),
(6821753, 'Yang tidak termasuk perangkat keras komputer adalah…', 'printer', 'monitor', 'keyboard', 'windows', 'mouse', 'D'),
(6821753, 'Instruksi untuk menghapus direkctory komputer keluarga linux adalah ....', 'mkdir', 'cp', 'rm', 'rd', 'mv', 'C'),
(7460242, 'Beberapa teknologi WAN antara lain di bawah ini, kecuali....', 'Modem', 'DSL', 'ISDN', 'Buffer', 'Frame relay', 'D'),
(7460242, 'Sebuah protokol routing dinamis yang digunakan pada jaringan LAN dan WAN adalah', 'Ipconfig', 'IP', 'RIP', 'PPP', 'EIGRP', 'C'),
(7460242, 'Layer dikelompokan menjadi dua upper layer dan Lower layer, urutan lower layer yang benar yaitu...', 'Transport, Network, Data Link & Presentation', 'Transport, Network, Data Link & Pysical', 'Transport, Network, Data Link & Session', 'Transport, Network, Data Link & Aplication', 'Aplication, Presentation & Session', 'B'),
(7460242, 'Yang bukan termasuk security pada WLAN adalah', 'Autentikasi data', 'SSID', 'Autorisasi', 'Kriftogra', 'Enskripsi data', 'D'),
(7460242, 'Dibawah ini yang termasuk penyebab dari congestion lalu lintas jaringan adalah', 'Broadcast domain', 'Ip Address', 'Bandwith yang kecil', 'Bandwith yang besar', 'Terlalu sedikitnya Host', 'C'),
(7460242, 'IP address kelas A diberikan untuk jaringan dengan jumlah host...', 'Sangat besar', 'Sangat kecil', 'Tidak tetap', 'Sedang', 'Berbeda', 'A'),
(7460242, 'Dalam sebuah network dimana terdapat jalur routing lebih dari satu rute untuk mencapai tujuan yang sama biasanya menggunakan', 'Dynamic Routing', 'Minimal Routing', 'Routing Protocol', 'Statik Routing', 'Con gurasi Routing', 'A'),
(7460242, 'Berapa frekuensi antena pada sebuah access point (WiFi)', '1.9Ghz', '5.2Ghz', '3.1Ghz', '2.4Ghz', '4.2Ghz', 'D'),
(7460242, 'P address terdiri atas dua bagian yaitu....', 'Network ID dan broadcast ID', 'Bit dan nyble', 'Network ID dan host ID', 'Kelas A dan kelas D', 'Internet dan local', 'c'),
(7460242, 'Kepanjangan dari OSI yaitu', 'Oppen System Internet', 'Open System Interconnections', 'Open System Internasional', 'Organizations System Interconecsi', 'Open Sharing Interconections', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_guru`
--
ALTER TABLE `a_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `a_jurusan`
--
ALTER TABLE `a_jurusan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `a_kelas`
--
ALTER TABLE `a_kelas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `a_mapel`
--
ALTER TABLE `a_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `a_siswa`
--
ALTER TABLE `a_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_soal`
--
ALTER TABLE `bank_soal`
  ADD PRIMARY KEY (`id_bank_soal`);

--
-- Indexes for table `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  ADD PRIMARY KEY (`id_jadwal_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `a_guru`
--
ALTER TABLE `a_guru`
  MODIFY `id_guru` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049667;

--
-- AUTO_INCREMENT for table `a_jurusan`
--
ALTER TABLE `a_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `a_kelas`
--
ALTER TABLE `a_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029988;

--
-- AUTO_INCREMENT for table `bank_soal`
--
ALTER TABLE `bank_soal`
  MODIFY `id_bank_soal` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9987511;

--
-- AUTO_INCREMENT for table `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  MODIFY `id_jadwal_ujian` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984812;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
