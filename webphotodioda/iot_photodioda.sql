-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jul 2022 pada 14.49
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_photodioda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sen_photodioda`
--

CREATE TABLE `sen_photodioda` (
  `id` int(5) NOT NULL,
  `hasilSensor` int(11) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sen_photodioda`
--

INSERT INTO `sen_photodioda` (`id`, `hasilSensor`, `keterangan`, `created`) VALUES
(32, 2000, 'MATI', '2022-07-26 09:43:24'),
(44, 2000, 'MATI', '2022-07-26 09:46:25'),
(45, 2000, 'MATI', '2022-07-26 09:46:31'),
(46, 2000, 'MATI', '2022-07-26 09:46:37'),
(47, 2000, 'MATI', '2022-07-26 09:46:43'),
(48, 2000, 'MATI', '2022-07-26 09:46:49'),
(49, 1818, 'MATI', '2022-07-26 09:46:55'),
(50, 1376, 'HIDUP', '2022-07-26 09:47:01'),
(51, 2000, 'MATI', '2022-07-26 09:47:07'),
(52, 2000, 'MATI', '2022-07-26 09:47:13'),
(53, 2000, 'MATI', '2022-07-26 09:47:20'),
(54, 2000, 'MATI', '2022-07-26 09:47:26'),
(55, 2000, 'MATI', '2022-07-26 09:47:32'),
(56, 918, 'HIDUP', '2022-07-26 09:47:38'),
(57, 532, 'HIDUP', '2022-07-26 09:47:44'),
(58, 2000, 'MATI', '2022-07-26 09:47:50'),
(59, 2000, 'MATI', '2022-07-26 09:47:56'),
(60, 2000, 'MATI', '2022-07-26 09:48:02'),
(61, 2000, 'MATI', '2022-07-26 09:48:08'),
(62, 2000, 'MATI', '2022-07-26 09:48:14'),
(63, 2000, 'MATI', '2022-07-26 09:48:20'),
(64, 2000, 'MATI', '2022-07-26 09:48:26'),
(65, 2000, 'MATI', '2022-07-26 09:48:32'),
(66, 2000, 'MATI', '2022-07-26 09:48:39'),
(67, 2000, 'MATI', '2022-07-26 09:48:45'),
(68, 2000, 'MATI', '2022-07-26 09:48:51'),
(69, 2000, 'MATI', '2022-07-26 09:48:57'),
(70, 2000, 'MATI', '2022-07-26 09:49:03'),
(71, 2000, 'MATI', '2022-07-26 09:49:09'),
(72, 2000, 'MATI', '2022-07-26 09:49:15'),
(73, 2000, 'MATI', '2022-07-26 09:49:21'),
(74, 2000, 'MATI', '2022-07-26 09:49:27'),
(75, 2000, 'MATI', '2022-07-26 09:49:33'),
(76, 2000, 'MATI', '2022-07-26 09:49:39'),
(77, 2000, 'MATI', '2022-07-26 09:49:45'),
(78, 2000, 'MATI', '2022-07-26 09:49:51'),
(79, 2000, 'MATI', '2022-07-26 09:49:57'),
(80, 2000, 'MATI', '2022-07-26 09:50:03'),
(81, 2000, 'MATI', '2022-07-26 09:50:09'),
(82, 2000, 'MATI', '2022-07-26 09:50:15'),
(83, 2000, 'MATI', '2022-07-26 09:50:22'),
(84, 2000, 'MATI', '2022-07-26 09:50:28'),
(85, 2000, 'MATI', '2022-07-26 09:50:34'),
(86, 2000, 'MATI', '2022-07-26 09:50:40'),
(87, 2000, 'MATI', '2022-07-26 09:50:46'),
(88, 2000, 'MATI', '2022-07-26 09:50:52'),
(89, 2000, 'MATI', '2022-07-26 09:50:58'),
(90, 2000, 'MATI', '2022-07-26 09:51:04'),
(91, 2000, 'MATI', '2022-07-26 09:51:10'),
(92, 2000, 'MATI', '2022-07-26 09:51:16'),
(93, 2000, 'MATI', '2022-07-26 09:51:22'),
(94, 2000, 'MATI', '2022-07-26 09:51:28'),
(95, 1667, 'MATI', '2022-07-26 09:51:34'),
(96, 2000, 'MATI', '2022-07-26 09:51:40'),
(97, 2000, 'MATI', '2022-07-26 09:51:46'),
(98, 2000, 'MATI', '2022-07-26 09:51:52'),
(99, 2000, 'MATI', '2022-07-26 09:51:58'),
(100, 2000, 'MATI', '2022-07-26 09:52:04'),
(101, 1566, 'HIDUP', '2022-07-26 09:52:10'),
(102, 1639, 'MATI', '2022-07-26 09:52:16'),
(103, 2000, 'MATI', '2022-07-26 09:52:22'),
(104, 1539, 'HIDUP', '2022-07-26 09:52:28'),
(105, 1961, 'MATI', '2022-07-26 09:52:35'),
(106, 2000, 'MATI', '2022-07-26 09:52:41'),
(107, 2000, 'MATI', '2022-07-26 09:52:47'),
(108, 1870, 'MATI', '2022-07-26 09:52:53'),
(109, 2000, 'MATI', '2022-07-26 09:52:59'),
(110, 2000, 'MATI', '2022-07-26 09:53:05'),
(111, 2000, 'MATI', '2022-07-26 09:53:11'),
(112, 2000, 'MATI', '2022-07-26 09:53:17'),
(113, 2000, 'MATI', '2022-07-26 09:53:23'),
(114, 1690, 'MATI', '2022-07-26 09:53:29'),
(115, 1948, 'MATI', '2022-07-26 09:53:35'),
(116, 2000, 'MATI', '2022-07-26 09:53:41'),
(117, 1464, 'HIDUP', '2022-07-26 09:53:47'),
(118, 2000, 'MATI', '2022-07-26 09:53:53'),
(119, 2000, 'MATI', '2022-07-26 09:53:59'),
(120, 2000, 'MATI', '2022-07-26 09:54:05'),
(121, 1506, 'HIDUP', '2022-07-26 09:54:11'),
(122, 1684, 'MATI', '2022-07-26 09:54:17'),
(123, 2000, 'MATI', '2022-07-26 09:54:23'),
(124, 2000, 'MATI', '2022-07-26 09:54:47'),
(125, 2000, 'MATI', '2022-07-26 09:54:52'),
(126, 1515, 'HIDUP', '2022-07-26 09:54:58'),
(127, 1345, 'HIDUP', '2022-07-26 09:55:03'),
(128, 1344, 'HIDUP', '2022-07-26 09:55:08'),
(129, 2000, 'MATI', '2022-07-26 09:55:13'),
(130, 2000, 'MATI', '2022-07-26 09:55:18'),
(131, 2000, 'MATI', '2022-07-26 09:55:23'),
(132, 2000, 'MATI', '2022-07-26 09:55:28'),
(133, 2000, 'MATI', '2022-07-26 09:55:34'),
(134, 2000, 'MATI', '2022-07-26 09:55:39'),
(135, 2000, 'MATI', '2022-07-26 09:55:44'),
(136, 2000, 'MATI', '2022-07-26 09:55:49'),
(137, 2000, 'MATI', '2022-07-26 09:55:54'),
(138, 2000, 'MATI', '2022-07-26 09:55:59'),
(139, 2000, 'MATI', '2022-07-26 09:56:04'),
(140, 2000, 'MATI', '2022-07-26 09:56:09'),
(141, 2000, 'MATI', '2022-07-26 09:56:15'),
(142, 2000, 'MATI', '2022-07-26 09:56:20'),
(143, 2000, 'MATI', '2022-07-26 09:56:25'),
(144, 1900, 'MATI', '2022-07-26 09:56:30'),
(145, 2000, 'MATI', '2022-07-26 09:56:36'),
(146, 1823, 'MATI', '2022-07-26 09:56:41'),
(147, 316, 'HIDUP', '2022-07-26 09:56:46'),
(148, 0, 'HIDUP', '2022-07-26 09:56:51'),
(149, 1955, 'MATI', '2022-07-26 09:56:56'),
(150, 910, 'HIDUP', '2022-07-26 09:57:01'),
(151, 2000, 'MATI', '2022-07-26 09:57:06'),
(152, 2000, 'MATI', '2022-07-26 09:57:12'),
(153, 2000, 'MATI', '2022-07-26 09:57:17'),
(154, 2000, 'MATI', '2022-07-26 09:57:22'),
(155, 2000, 'MATI', '2022-07-26 09:57:27'),
(156, 2000, 'MATI', '2022-07-26 09:57:32'),
(157, 2000, 'MATI', '2022-07-26 09:57:37'),
(158, 2000, 'MATI', '2022-07-26 09:57:42'),
(159, 2000, 'MATI', '2022-07-26 09:57:47'),
(160, 2000, 'MATI', '2022-07-26 09:57:53'),
(161, 2000, 'MATI', '2022-07-26 09:57:58'),
(162, 2000, 'MATI', '2022-07-26 09:58:03'),
(163, 2000, 'MATI', '2022-07-26 09:58:08'),
(164, 2000, 'MATI', '2022-07-26 09:58:13'),
(165, 2000, 'MATI', '2022-07-26 09:58:18'),
(166, 2000, 'MATI', '2022-07-26 09:58:23'),
(167, 2000, 'MATI', '2022-07-26 09:58:29'),
(168, 2000, 'MATI', '2022-07-26 09:58:34'),
(169, 2000, 'MATI', '2022-07-26 09:58:39'),
(170, 2000, 'MATI', '2022-07-26 09:58:44'),
(171, 2000, 'MATI', '2022-07-26 09:58:49'),
(172, 2000, 'MATI', '2022-07-26 09:58:54'),
(173, 2000, 'MATI', '2022-07-26 09:59:00'),
(174, 2000, 'MATI', '2022-07-26 09:59:05'),
(175, 2000, 'MATI', '2022-07-26 09:59:10'),
(176, 2000, 'MATI', '2022-07-26 09:59:15'),
(177, 2000, 'MATI', '2022-07-26 09:59:20'),
(178, 2000, 'MATI', '2022-07-26 09:59:25'),
(179, 2000, 'MATI', '2022-07-26 09:59:31'),
(180, 2000, 'MATI', '2022-07-26 09:59:36'),
(181, 2000, 'MATI', '2022-07-26 09:59:41'),
(182, 2000, 'MATI', '2022-07-26 09:59:46'),
(183, 2000, 'MATI', '2022-07-26 09:59:51'),
(184, 2000, 'MATI', '2022-07-26 09:59:56'),
(185, 2000, 'MATI', '2022-07-26 10:00:01'),
(186, 2000, 'MATI', '2022-07-26 10:00:07'),
(187, 2000, 'MATI', '2022-07-26 10:00:12'),
(188, 2000, 'MATI', '2022-07-26 10:00:17'),
(189, 2000, 'MATI', '2022-07-26 10:00:22'),
(190, 2000, 'MATI', '2022-07-26 10:00:27'),
(191, 2000, 'MATI', '2022-07-26 10:00:33'),
(192, 2000, 'MATI', '2022-07-26 10:00:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sen_photodioda`
--
ALTER TABLE `sen_photodioda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sen_photodioda`
--
ALTER TABLE `sen_photodioda`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
