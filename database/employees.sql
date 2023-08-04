-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 04, 2023 lúc 12:19 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xproject`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'minh', 'Murray', 6312, NULL, '2023-08-04 03:12:22'),
(2, 'Ellissa', 'Gerianna', 7820, NULL, NULL),
(3, 'Dottie', 'Meris', 7451, NULL, NULL),
(4, 'Elmore', 'Jessee', 3677, NULL, NULL),
(5, 'Lynnell', 'Wynn', 5859, NULL, NULL),
(6, 'Margo', 'Dareen', 6491, NULL, NULL),
(7, 'Nickie', 'Dilan', 2375, NULL, NULL),
(8, 'Nevsa', 'Joelly', 4813, NULL, NULL),
(9, 'Peria', 'Kessia', 977, NULL, NULL),
(10, 'Amalee', 'Shelly', 7191, NULL, NULL),
(11, 'Chrysler', 'Shanda', 289, NULL, NULL),
(12, 'Rudolph', 'Prinz', 768, NULL, NULL),
(13, 'Florella', 'Terrence', 6243, NULL, NULL),
(14, 'Shauna', 'Jecho', 2651, NULL, NULL),
(15, 'Alfie', 'Marieann', 3455, NULL, NULL),
(16, 'Siusan', 'Hillery', 2290, NULL, NULL),
(17, 'Stormie', 'Gwenny', 6283, NULL, NULL),
(18, 'Johnna', 'Fons', 7027, NULL, NULL),
(19, 'Jillian', 'Em', 112, NULL, NULL),
(20, 'Padriac', 'Alaine', 964, NULL, NULL),
(21, 'Jodi', 'Terrill', 5436, NULL, NULL),
(22, 'Katinka', 'Emlyn', 7731, NULL, NULL),
(23, 'Cesare', 'Adamo', 7587, NULL, NULL),
(24, 'Kacy', 'Thadeus', 3743, NULL, NULL),
(25, 'Lark', 'Rafaellle', 9735, NULL, NULL),
(26, 'Welsh', 'Angel', 7060, NULL, NULL),
(27, 'Kearney', 'Webb', 8756, NULL, NULL),
(28, 'Jordon', 'Meade', 2906, NULL, NULL),
(29, 'Marcy', 'Brena', 2157, NULL, NULL),
(30, 'Vivyanne', 'Ricard', 789, NULL, NULL),
(31, 'Dorry', 'Othello', 251, NULL, NULL),
(32, 'Danette', 'Rex', 3110, NULL, NULL),
(33, 'Rad', 'Wallis', 6636, NULL, NULL),
(34, 'Berthe', 'Antonia', 2581, NULL, NULL),
(35, 'Robinia', 'Joelie', 354, NULL, NULL),
(36, 'Mercy', 'Ignazio', 5413, NULL, NULL),
(37, 'Tristan', 'Christi', 7054, NULL, NULL),
(38, 'Ferrel', 'Jennica', 3039, NULL, NULL),
(39, 'Poul', 'Daren', 1732, NULL, NULL),
(40, 'Haywood', 'Myca', 7319, NULL, NULL),
(41, 'Karim', 'Minor', 5190, NULL, NULL),
(42, 'Joannes', 'Lane', 498, NULL, NULL),
(43, 'Ephraim', 'Merrill', 8629, NULL, NULL),
(44, 'Timmie', 'Onfroi', 1097, NULL, NULL),
(45, 'Eachelle', 'Paulie', 9348, NULL, NULL),
(46, 'Goran', 'Archibaldo', 6262, NULL, NULL),
(47, 'Mathian', 'Massimo', 3910, NULL, NULL),
(48, 'Donnamarie', 'Olav', 7472, NULL, NULL),
(49, 'Ezechiel', 'Esmaria', 1956, NULL, NULL),
(50, 'Riane', 'Luelle', 8149, NULL, NULL),
(51, 'Darell', 'Zenia', 9131, NULL, NULL),
(52, 'Kanya', 'Cindelyn', 2797, NULL, NULL),
(53, 'Case', 'Barri', 5433, NULL, NULL),
(54, 'Damien', 'Bess', 4461, NULL, NULL),
(55, 'Pat', 'Drucill', 5051, NULL, NULL),
(56, 'Maisey', 'Ranee', 1283, NULL, NULL),
(57, 'Kinna', 'Eleanor', 3393, NULL, NULL),
(58, 'Rhodie', 'Cheston', 7283, NULL, NULL),
(59, 'Shea', 'Elwood', 8472, NULL, NULL),
(60, 'Raoul', 'Cesaro', 6861, NULL, NULL),
(61, 'Rickie', 'Deeanne', 4708, NULL, NULL),
(62, 'Waylen', 'Merla', 8885, NULL, NULL),
(63, 'Shae', 'Georgi', 3085, NULL, NULL),
(64, 'Heather', 'Lusa', 4863, NULL, NULL),
(65, 'Cacilia', 'Odie', 7104, NULL, NULL),
(66, 'Ansel', 'Trude', 3544, NULL, NULL),
(67, 'Shayla', 'Margareta', 5352, NULL, NULL),
(68, 'Roland', 'Dorella', 6457, NULL, NULL),
(69, 'Margareta', 'Alexandrina', 8743, NULL, NULL),
(70, 'Teena', 'Carroll', 8879, NULL, NULL),
(71, 'Sterling', 'Jock', 6259, NULL, NULL),
(72, 'Halsy', 'Jackelyn', 951, NULL, NULL),
(73, 'Karlis', 'Gabie', 4916, NULL, NULL),
(74, 'Becca', 'Cullie', 3882, NULL, NULL),
(75, 'Chastity', 'Auberon', 9857, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
