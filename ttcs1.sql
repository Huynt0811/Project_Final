-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 23, 2022 lúc 01:14 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttcs1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `noidung` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `ngaybl` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mailuser` varchar(100) NOT NULL,
  `hotenuser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idsp`, `ngaybl`, `mailuser`, `hotenuser`) VALUES
(2, 'Sản phẩm rất đẹp, rất hài lòng', 1, 7, '06/12/2021 18:56:38:pm', 'huyndph17175@fpt.edu.vn', 'Nguyễn Đăng Huy'),
(3, 'Shop giao hàng lâu, sản phẩm rất xấu', 3, 7, '06/12/2021 18:58:03:pm', 'phuongthao@fpt.edu.vn', 'Văn Thị Phương Thảo'),
(4, 'Giao hàng rất nhanh. Shop tư vấn rất nhiệt tình và thân thiện. Áo rất dày và đẹp, đường khâu chắc chắn không có chỉ thừa. Lần sau mua hàng sẽ ghé thăm lại shop', 2, 7, '06/12/2021 19:02:51:pm', 'minhdung@fpt.edu.vn', 'Trần Minh Dũng'),
(5, 'sản phẩm rất đẹp', 5, 23, '22/12/2021 13:35:29:pm', 'penguin@gmail.com', 'PENGUIN'),
(6, 'Đẹp quá', 9, 68, '17/02/2022 15:26:58:pm', 'loan128@gmail.com', 'Nguyễn Thị Thanh Loan'),
(7, 'Giá cả hợp lý', 9, 68, '17/02/2022 15:27:23:pm', 'loan128@gmail.com', 'Nguyễn Thị Thanh Loan'),
(8, 'Áo rất đẹp', 9, 332, '11/03/2022 20:02:59:pm', 'loan128@gmail.com', 'Nguyễn Thị Thanh Loan'),
(9, 'Giao hàng nhanh, đóng gói cẩn thận, sản phẩm chất lượng', 9, 332, '11/03/2022 20:04:13:pm', 'loan128@gmail.com', 'Nguyễn Thị Thanh Loan'),
(10, 'Áo đẹp', 9, 331, '11/03/2022 20:10:17:pm', 'loan128@gmail.com', 'Nguyễn Thị Thanh Loan'),
(11, 'đấ', 1, 211, '14/09/2022 15:24:54:pm', 'thanhloan128@gmail.com', 'Thanh Loan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpro` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `thanhtien` int(11) NOT NULL,
  `idbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `color`, `size`, `thanhtien`, `idbill`) VALUES
(56, 1, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 45),
(57, 1, 10, '../upload/qaonu1.jpg', 'Quần áo nữ 1', 320000, 1, NULL, NULL, 320000, 45),
(58, 1, 6, '../upload/ao1.jpg', 'Áo len cổ lọ rộng', 150000, 1, NULL, NULL, 150000, 45),
(59, 6, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 46),
(60, 6, 8, '../upload/aonam2.jpg', 'Áo khoác nam', 230000, 1, NULL, NULL, 230000, 46),
(61, 0, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 47),
(62, 0, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 48),
(63, 1, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 49),
(64, 1, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 49),
(65, 0, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 50),
(66, 0, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 50),
(67, 5, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 51),
(68, 5, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 51),
(69, 5, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 51),
(70, 1, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 52),
(71, 1, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 53),
(72, 1, 12, '../upload/qaonu2jpg.jpg', 'Quần áo nữ 3', 190000, 1, NULL, NULL, 190000, 53),
(73, 1, 8, '../upload/aonam2.jpg', 'Áo khoác nam', 230000, 1, NULL, NULL, 230000, 53),
(74, 1, 10, '../upload/qaonu1.jpg', 'Quần áo nữ 1', 320000, 1, NULL, NULL, 320000, 53),
(75, 5, 23, '../upload/Áo khoác dạ nữ dáng dài.jpg', 'Áo khoác dạ nữ dáng dài', 1299000, 1, NULL, NULL, 1299000, 54),
(76, 5, 15, '../upload/vongtay.jpg', 'Vòng tay', 100000, 1, NULL, NULL, 100000, 54),
(77, 5, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 54),
(78, 5, 23, '../upload/Áo khoác dạ nữ dáng dài.jpg', 'Áo khoác dạ nữ dáng dài', 1299000, 1, NULL, NULL, 1299000, 55),
(79, 5, 15, '../upload/vongtay.jpg', 'Vòng tay', 100000, 1, NULL, NULL, 100000, 55),
(80, 5, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 55),
(81, 5, 23, '../upload/Áo khoác dạ nữ dáng dài.jpg', 'Áo khoác dạ nữ dáng dài', 1299000, 1, NULL, NULL, 1299000, 56),
(82, 5, 15, '../upload/vongtay.jpg', 'Vòng tay', 100000, 1, NULL, NULL, 100000, 56),
(83, 5, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 56),
(84, 5, 23, '../upload/Áo khoác dạ nữ dáng dài.jpg', 'Áo khoác dạ nữ dáng dài', 1299000, 1, NULL, NULL, 1299000, 57),
(85, 5, 15, '../upload/vongtay.jpg', 'Vòng tay', 100000, 1, NULL, NULL, 100000, 57),
(86, 5, 7, '../upload/aonam4.jpg', 'Áo len ', 200000, 1, NULL, NULL, 200000, 57),
(87, 3, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 58),
(88, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 59),
(89, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 59),
(90, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 59),
(91, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 60),
(92, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 60),
(93, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 60),
(94, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 61),
(95, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 61),
(96, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 61),
(97, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 62),
(98, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 62),
(99, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 62),
(100, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 63),
(101, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 63),
(102, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 63),
(103, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 64),
(104, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 64),
(105, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 64),
(106, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 65),
(107, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 65),
(108, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 65),
(109, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 65),
(110, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 65),
(111, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 65),
(112, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 65),
(113, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 66),
(114, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 66),
(115, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 66),
(116, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 66),
(117, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 66),
(118, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 66),
(119, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 66),
(120, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 67),
(121, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 67),
(122, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 67),
(123, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 67),
(124, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 67),
(125, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 67),
(126, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 67),
(127, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 68),
(128, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 68),
(129, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 68),
(130, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 68),
(131, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 68),
(132, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 68),
(133, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 68),
(134, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 69),
(135, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 69),
(136, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 69),
(137, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 69),
(138, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 69),
(139, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 69),
(140, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 69),
(141, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 70),
(142, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 70),
(143, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 70),
(144, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 70),
(145, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 70),
(146, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 70),
(147, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 70),
(148, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 71),
(149, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 71),
(150, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 71),
(151, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 71),
(152, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 71),
(153, 9, 38, '../upload/áo len bé trai.jpg', 'Áo len bé trai', 259000, 1, NULL, NULL, 259000, 71),
(154, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 71),
(155, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 72),
(156, 9, 21, '../upload/áo nỉ croptop.jfif', 'Áo nỉ nữ dáng croptop', 439000, 1, NULL, NULL, 439000, 72),
(157, 9, 59, '../upload/túi.jpg', 'Túi xách ', 1190000, 1, NULL, NULL, 1190000, 72),
(158, 9, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, NULL, NULL, 1500000, 73),
(159, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 73),
(160, 9, 64, '../upload/Kính nam.jpg', 'Kính nam', 299000, 1, NULL, NULL, 299000, 73),
(161, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 74),
(162, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 75),
(163, 9, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, NULL, NULL, 1500000, 75),
(164, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 75),
(165, 9, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, NULL, NULL, 1500000, 75),
(166, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 76),
(167, 9, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, NULL, NULL, 1500000, 76),
(168, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 76),
(169, 9, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, NULL, NULL, 1500000, 76),
(170, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 76),
(171, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 2500000, 77),
(172, 9, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, NULL, NULL, 1500000, 77),
(173, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 77),
(174, 9, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, NULL, NULL, 1500000, 77),
(175, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 77),
(176, 9, 24, '../upload/Áo hoodie nam.jpg', 'Áo hoodie nam', 699000, 1, NULL, NULL, 699000, 78),
(177, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 78),
(178, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 78),
(179, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 78),
(180, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 78),
(181, 9, 24, '../upload/Áo hoodie nam.jpg', 'Áo hoodie nam', 699000, 1, NULL, NULL, 699000, 79),
(182, 9, 66, '../upload/vòng cổ.jpg', 'Vòng cổ bạc', 299000, 1, NULL, NULL, 299000, 79),
(183, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 79),
(184, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 79),
(185, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 1, NULL, NULL, 30000, 79),
(186, 9, 45, '../upload/váy liên nữ họa tiết.jpg', 'Váy liền nữ họa tiết', 290000, 1, NULL, NULL, 0, 80),
(187, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 0, 81),
(188, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 1, NULL, NULL, 0, 82),
(189, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 2, '0', '0', 60000, 83),
(190, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 2, '0', '0', 60000, 84),
(191, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 2, '0', '0', 5000000, 84),
(192, 9, 67, '../upload/bờm.jfif', 'Bờm siêu xinh', 30000, 2, NULL, NULL, 0, 85),
(193, 9, 68, '../upload/đồng hồ.jpg', 'Đồng hồ sport', 2500000, 2, NULL, NULL, 0, 85),
(194, 9, 211, '../upload/vòng tay trẻ em bạc 499.png', 'Vòng tay trẻ em bạc ', 499000, 1, '0', '0', 499000, 86),
(195, 9, 211, '../upload/vòng tay trẻ em bạc 499.png', 'Vòng tay trẻ em bạc ', 499000, 1, '0', '0', 499000, 87),
(196, 9, 32, '../upload/Áo khoác gió bé gái 2 lớp.jpg', 'Áo khoác gió 2 lớp bé gái', 268000, 1, '0', '0', 268000, 87),
(197, 1, 207, '../upload/Ví hộp 899.jpg', 'Ví hộp ', 899000, 1, '0', '0', 899000, 88),
(198, 9, 207, '../upload/Ví hộp 899.jpg', 'Ví hộp ', 899000, 1, '0', '0', 899000, 89),
(199, 10, 63, '../upload/converse.png', 'Giày converse 1970s white', 1500000, 1, '0', '0', 1500000, 90),
(200, 10, 20, '../upload/áo nỉ lót lông cừu.png', 'Áo nỉ lót lông cừu', 319000, 1, '0', '0', 319000, 90),
(202, 10, 53, '../upload/áo sơ mi nam.jpg', 'Áo sơ mi nam', 349000, 1, '0', '0', 349000, 90),
(205, 9, 331, '../upload/Áo sơ mi bé gái hoạ tiết buộc vạt 199.jpg', 'Áo sơ mi bé gái hoạ tiết buộc vạt ', 204000, 3, 'Red', 'M', 408000, 93),
(206, 9, 331, '../upload/Áo sơ mi bé gái hoạ tiết buộc vạt 199.jpg', 'Áo sơ mi bé gái hoạ tiết buộc vạt ', 204000, 1, 'White', 'L', 204000, 93),
(207, 9, 332, '../upload/Áo polo bé trai cr 229.jpg', 'Áo polo bé trai cr', 226000, 1, 'Red', 'M', 226000, 93);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Quần áo nam'),
(2, 'Quần áo nữ'),
(3, 'Phụ kiện'),
(9, 'Trẻ em');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `iduser` int(11) DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_dress` varchar(255) NOT NULL,
  `bill_tel` varchar(20) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1. Thanh toán khi nhận hàng\r\n2. Thanh toán bằng thẻ tín dụng',
  `ngaydathang` varchar(30) DEFAULT NULL,
  `tongdh` int(11) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0 COMMENT '0. Đang chờ xử lý\r\n1. Đang xử lý\r\n2. Đang giao hàng\r\n3. Đã giao hàng',
  `receive_name` varchar(50) DEFAULT NULL,
  `receive_dress` varchar(100) DEFAULT NULL,
  `receive_tell` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `iduser`, `bill_name`, `bill_dress`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `tongdh`, `bill_status`, `receive_name`, `receive_dress`, `receive_tell`) VALUES
(54, 5, 'PENGUIN', 'Hà Nội', '0372039349', 'penguin@gmail.com', 0, '22/12/2021 13:48:38:pm', 1599000, 0, NULL, NULL, NULL),
(55, 5, 'PENGUIN', 'Hà Nội', '0372039349', 'penguin@gmail.com', 0, '22/12/2021 13:49:31:pm', 1599000, 0, NULL, NULL, NULL),
(56, 5, 'PENGUIN', 'Hà Nội', '0372039349', 'penguin@gmail.com', 0, '22/12/2021 13:49:43:pm', 1599000, 0, NULL, NULL, NULL),
(57, 5, 'PENGUIN', 'Hà Nội', '0372039349', 'penguin@gmail.com', 0, '22/12/2021 13:51:14:pm', 1599000, 0, NULL, NULL, NULL),
(58, 3, 'Lê Phương Mai', 'Hải Dương', '03845869526', 'phuongmai288@gmail.com', 0, '01/01/2022 08:18:23:am', 2500000, 0, NULL, NULL, NULL),
(59, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 0, '13/01/2022 14:17:48:pm', 2560000, 0, NULL, NULL, NULL),
(60, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '13/01/2022 14:21:35:pm', 2560000, 0, NULL, NULL, NULL),
(61, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '13/01/2022 14:21:42:pm', 2560000, 0, NULL, NULL, NULL),
(62, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '13/01/2022 14:24:15:pm', 2560000, 0, NULL, NULL, NULL),
(63, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '13/01/2022 14:24:23:pm', 2560000, 0, NULL, NULL, NULL),
(64, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '13/01/2022 14:24:30:pm', 2560000, 0, NULL, NULL, NULL),
(65, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 0, '13/01/2022 16:11:01:pm', 3636000, 0, NULL, NULL, NULL),
(66, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '13/01/2022 16:11:36:pm', 3636000, 0, NULL, NULL, NULL),
(67, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '13/01/2022 16:12:57:pm', 3636000, 0, NULL, NULL, NULL),
(68, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '13/01/2022 16:13:04:pm', 3636000, 0, NULL, NULL, NULL),
(69, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '13/01/2022 16:18:16:pm', 3636000, 0, NULL, NULL, NULL),
(70, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '13/01/2022 16:19:03:pm', 3636000, 0, NULL, NULL, NULL),
(71, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '13/01/2022 16:19:09:pm', 3636000, 0, NULL, NULL, NULL),
(72, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '19/01/2022 14:28:12:pm', 1659000, 0, NULL, NULL, NULL),
(73, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '15/02/2022 11:00:29:am', 2098000, 0, NULL, NULL, NULL),
(74, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '16/02/2022 09:02:00:am', 2500000, 0, NULL, NULL, NULL),
(75, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '16/02/2022 10:29:50:am', 5530000, 0, NULL, NULL, NULL),
(76, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 0, '16/02/2022 10:44:53:am', 5560000, 0, NULL, NULL, NULL),
(77, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '16/02/2022 10:45:03:am', 5560000, 0, NULL, NULL, NULL),
(78, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '16/02/2022 17:21:25:pm', 1088000, 0, NULL, NULL, NULL),
(79, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '16/02/2022 17:21:55:pm', 1088000, 0, NULL, NULL, NULL),
(80, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '17/02/2022 10:08:31:am', 290000, 0, NULL, NULL, NULL),
(81, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '17/02/2022 15:18:20:pm', 2500000, 0, NULL, NULL, NULL),
(82, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '17/02/2022 15:21:06:pm', 2500000, 0, NULL, NULL, NULL),
(83, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '11/03/2022 09:56:48:am', 60000, 0, NULL, NULL, NULL),
(84, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '11/03/2022 14:30:13:pm', 5060000, 0, NULL, NULL, NULL),
(85, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 0, '11/03/2022 14:32:46:pm', 5060000, 0, NULL, NULL, NULL),
(86, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '11/03/2022 16:10:38:pm', 499000, 0, NULL, NULL, NULL),
(87, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '11/03/2022 16:14:21:pm', 767000, 0, NULL, NULL, NULL),
(88, 1, 'Nguyễn Đăng Huy', 'Vĩnh Phúc', '0866406533', 'huyndph17175@fpt.edu.vn', 1, '11/03/2022 16:44:57:pm', 899000, 0, NULL, NULL, NULL),
(89, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 2, '11/03/2022 16:45:32:pm', 899000, 0, NULL, NULL, NULL),
(90, 10, 'Pe Thị Ngu In', 'Mê Linh - Hà Nội', '0236459624', 'penguin32@gmail.com', 1, '11/03/2022 17:51:27:pm', 2417000, 0, NULL, NULL, NULL),
(91, 10, 'Pe Thị Ngu In', 'Mê Linh - Hà Nội', '0236459624', 'penguin32@gmail.com', 1, '11/03/2022 18:05:44:pm', 249000, 0, NULL, NULL, NULL),
(92, 10, 'Pe Thị Ngu In', 'Mê Linh - Hà Nội', '0236459624', 'penguin32@gmail.com', 1, '11/03/2022 18:17:16:pm', 690000, 0, NULL, NULL, NULL),
(93, 9, 'Nguyễn Thị Thanh Loan', 'Hà Đông - Hà Nội', '033641852', 'loan128@gmail.com', 1, '11/03/2022 20:12:58:pm', 1042000, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giacu` int(11) NOT NULL,
  `giamoi` int(11) DEFAULT NULL,
  `img` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `luotxem` int(11) NOT NULL,
  `ngaytao` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysua` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `giacu`, `giamoi`, `img`, `mota`, `luotxem`, `ngaytao`, `ngaysua`, `iddm`) VALUES
(6, 'Quần jogger nam', 300000, 250000, 'jogger nam.jpg', 'ÁO LEN NAM CỔ 5 phân mẫu mới nhất 2021 YODA Fashion\r\n- Các sản phẩm áo len nam của YODA Fashion được làm bằng chất liệu len cotton thiên nhiên mềm mại có bề mặt mềm mịn, thoát mồ hôi giữ ấm, nhanh tạo cảm giác vô cùng thoải mái cho người mặc và đặc biệt là không bị Xù Lông, Không phai màu, Giặt máy tốt. ', 8, '2021-12-29 18:09:48', '2021-12-29 18:09:48', 1),
(7, 'Áo len ', 250000, 200000, 'áo len nam.jpg', 'ÁO LEN NAM CỔ 5 phân mẫu mới nhất 2021 YODA Fashion - Các sản phẩm áo len nam của YODA Fashion được làm bằng chất liệu len cotton thiên nhiên mềm mại có bề mặt mềm mịn, thoát mồ hôi giữ ấm, nhanh tạo cảm giác vô cùng thoải mái cho người mặc và đặc biệt là không bị Xù Lông, Không phai màu, Giặt máy tốt.', 19, '2021-12-29 18:08:58', '2021-12-29 18:08:58', 1),
(8, 'Áo bomber dạ nam', 600000, 530000, 'áo bomber.jpg', 'ÁO LEN NAM CỔ 5 phân mẫu mới nhất 2021 YODA Fashion - Các sản phẩm áo len nam của YODA Fashion được làm bằng chất liệu len cotton thiên nhiên mềm mại có bề mặt mềm mịn, thoát mồ hôi giữ ấm, nhanh tạo cảm giác vô cùng thoải mái cho người mặc và đặc biệt là không bị Xù Lông, Không phai màu, Giặt máy tốt.', 1, '2021-12-29 18:08:18', '2021-12-29 18:08:18', 1),
(11, 'Áo bánh bèo', 280000, 220000, 'áo bánh bèo.jpg', 'Áo Khoác Măng Tô Nữ được thiết kế với form dễ mặc, vừa thể hiện phong cách thời trang của mình, mang lại sự tự tin và nét riêng cho bạn nữ.\r\nKiểu dáng đơn giản, màu sắc trẻ trung tôn lên vóc dáng người mặc.\r\nChất liệu vải kaki thoáng mát, tạo cảm giác thoải mái trong mọi hoạt động.\r\nLà 1 item không thể thiếu trong tủ đồ, dễ kết hợp với các trang phục, phụ kiện khác.\r\nĐường may được gia công tỉ mỉ, tinh tế, bền chắc theo thời gian.', 21, '2021-12-30 16:43:04', '2021-12-30 16:43:04', 2),
(13, 'Kính thời trang', 310000, 260000, 'kính.jpg', '-Mắt kính thời trang không chỉ nêu bật phong cách, cá tính và gu thẫm mỹ cho bạn mà còn giúp tăng thêm vẻ đẹp cho khuôn mặt, đồng thời bảo vệ mắt và sẽ khiến khuôn mặt của bạn trở nên hoàn hảo hơn.\r\n-Kính mát Unisex phong cách Hàn Quốc kiểu dáng trang nhã giúp bạn trở nên nổi bật hơn, ấn tượng hơn trong mắt người xung quanh.\r\n\r\n-Vừa bảo vệ đôi mắt bạn khỏi nắng gió, khói bụi vừa mang đến vẻ sành điệu, cá tính và thời trang.Thiết kế ôm gọn khuôn mặt, gọng nhựa gọn nhẹ giúp bạn yên tâm hoạt động, ', 3, '2021-12-29 18:13:53', '2021-12-29 18:13:53', 3),
(15, 'Vòng tay đôi', 450000, 400000, 'vòng tay đôi.jpg', 'Vòng đeo tay là một loại trang sức đeo ở cổ tay. Vòng đeo tay có thể được làm từ rất nhiều loại chất liệu khác nhau dành cho cả nam và nữ được sử dụng từ lâu trong lịch sử. Đây là một loại trang sức được cấu tạo cơ bản bằng một chuỗi hay một dãi đeo quanh cổ tay để làm đẹp.', 5, '2021-12-29 18:13:28', '2021-12-29 18:13:28', 3),
(20, 'Áo nỉ lót lông cừu', 399000, 319000, 'áo nỉ lót lông cừu.png', '', 13, '2021-12-30 16:31:33', '2021-12-30 16:31:33', 2),
(21, 'Áo nỉ nữ dáng croptop', 549000, 439000, 'áo nỉ croptop.jfif', '', 3, '2021-12-30 16:25:07', '2021-12-30 16:25:07', 2),
(23, 'Áo khoác dạ nữ dáng dài', 1549000, 1299000, 'áo khoác dạ nữ.jpg', '', 6, '2021-12-30 16:22:28', '2021-12-30 16:22:28', 2),
(24, 'Áo hoodie nam', 730000, 699000, 'Áo hoodie nam.jpg', '', 9, '2021-12-28 09:13:41', '2021-12-28 09:13:41', 1),
(25, 'Váy liền bé gái', 379000, 349000, 'Váy liền bé gái.jpg', '', 17, '2021-12-28 09:40:21', '2021-12-28 09:40:21', 9),
(28, 'Áo khoác chần bông bé trai', 649000, 519000, 'Áo khoác chần bông bé trai.jpg', '', 6, '2021-12-28 09:48:28', '2021-12-28 09:48:28', 9),
(30, 'Áo nỉ hình vịt bé trai', 398000, 269000, 'áo nỉ bé trai.jpg', '', 5, '2021-12-30 16:04:04', '2021-12-30 16:04:04', 9),
(32, 'Áo khoác gió 2 lớp bé gái', 359000, 268000, 'Áo khoác gió bé gái 2 lớp.jpg', '', 27, '2021-12-30 16:03:20', '2021-12-30 16:03:20', 9),
(34, 'Áo sơ mi bé trai', 289000, 289000, 'áo sơ mí bé trai 1.jpg', '', 8, '2021-12-30 16:08:52', '2021-12-30 16:08:52', 9),
(35, 'Bộ mặc nhà', 300000, 300000, 'bộ mặc nhà.jpg', '', 2, '2021-12-29 18:11:15', '2021-12-29 18:11:15', 9),
(36, 'Chân váy bé gái', 245000, 245000, 'chân váy bé gái.jpg', '', 0, '2021-12-29 18:11:02', '2021-12-29 18:11:02', 9),
(37, 'Quần jeans bé gái', 319000, 290000, 'quần jeans bé gái.jpg', '', 0, '2021-12-29 18:10:34', '2021-12-29 18:10:34', 9),
(38, 'Áo len bé trai', 299000, 259000, 'áo len bé trai.jpg', '', 1, '2021-12-29 18:10:08', '2021-12-29 18:10:08', 9),
(45, 'Váy liền nữ họa tiết', 339000, 290000, 'váy liên nữ họa tiết.jpg', '', 2, '2021-12-29 18:04:11', '2021-12-29 18:04:11', 2),
(47, 'Váy len nữ cổ V', 589000, 569000, 'váy len nữ cổ V.jpg', '', 0, '2021-12-29 18:03:46', '2021-12-29 18:03:46', 2),
(48, 'Áo 3 lỗ nam', 79000, 70000, 'áo ba lỗ nam.jpg', '', 0, '2021-12-29 18:03:31', '2021-12-29 18:03:31', 1),
(49, 'Áo len cổ lọ ', 349000, 329000, 'áo len nam cổ lọ.jpg', '', 0, '2021-12-29 18:03:17', '2021-12-29 18:03:17', 2),
(50, 'Áo khoác gió nam', 499000, 490000, 'áo khoác gió nam.jpg', '', 5, '2021-12-29 18:02:56', '2021-12-29 18:02:56', 1),
(51, 'Áo nỉ nam', 379000, 379000, 'áo nỉ nam.jpg', '', 0, '2021-12-29 18:02:45', '2021-12-29 18:02:45', 1),
(52, 'Áo phông nam dài tay', 398000, 269000, 'áo phông nam dài tay.jpg', '', 20, '2021-12-29 18:02:22', '2021-12-29 18:02:22', 1),
(53, 'Áo sơ mi nam', 459000, 349000, 'áo sơ mi nam.jpg', '', 37, '2021-12-29 18:02:01', '2021-12-29 18:02:01', 1),
(55, 'Tất nam ', 49000, 49000, 'tất nam.jpg', '', 0, '2021-12-29 18:01:28', '2021-12-29 18:01:28', 3),
(56, 'Tất nữ', 50000, 50000, 'tất nữ.jpg', '', 0, '2021-12-29 18:01:07', '2021-12-29 18:01:07', 3),
(57, 'Tất trẻ em ', 39000, 39000, 'tất trẻ em.jpg', '', 4, '2021-12-29 18:00:47', '2021-12-29 18:00:47', 3),
(58, 'Lắc tay nữ ', 675000, 550000, 'vòng.png', '', 0, '2021-12-29 18:00:30', '2021-12-29 18:00:30', 3),
(59, 'Túi xách ', 1290000, 1190000, 'túi.jpg', '', 4, '2021-12-29 18:00:10', '2021-12-29 18:00:10', 3),
(61, 'Giày bé trai', 300000, 279000, 'giày trẻ em.jpg', '', 3, '2021-12-29 17:59:55', '2021-12-29 17:59:55', 3),
(62, 'Giày bé gái', 490000, 379000, 'giày búp bê bé gái.png', '', 0, '2021-12-30 16:17:44', '2021-12-30 16:17:44', 3),
(63, 'Giày converse 1970s white', 1679000, 1500000, 'converse.png', '', 4, '2021-12-30 17:01:27', '2021-12-30 17:01:27', 3),
(64, 'Kính nam', 359000, 299000, 'Kính nam.jpg', '', 10, '2021-12-30 16:15:19', '2021-12-30 16:15:19', 3),
(65, 'Khuyên vành ', 159000, 145000, 'khuyên.jpg', '', 0, '2021-12-29 17:58:47', '2021-12-29 17:58:47', 3),
(66, 'Vòng cổ bạc', 399000, 299000, 'vòng cổ.jpg', '', 11, '2021-12-29 17:58:28', '2021-12-29 17:58:28', 3),
(67, 'Bờm siêu xinh', 39000, 30000, 'bờm.jfif', '', 15, '2021-12-29 17:58:02', '2021-12-29 17:58:02', 3),
(68, 'Đồng hồ sport', 2990000, 2500000, 'đồng hồ.jpg', '', 16, '2021-12-29 17:57:43', '2021-12-29 17:57:43', 3),
(69, 'Giày Ananas -higt top ', 750000, 650000, 'Ananas -higt top 650.jpg', '', 0, '2022-03-11 11:22:20', '2022-03-11 11:22:20', 3),
(76, 'Áo 2 dây nữ ', 119000, 99000, 'Áo 2 dây nữ 99.jpg', '', 0, '2022-03-11 11:27:41', '2022-03-11 11:27:41', 2),
(79, 'Áo 2 dây nữ ', 119000, 99000, 'Áo 2 dây nữ 99.jpg', '', 0, '2022-03-11 11:29:11', '2022-03-11 11:29:11', 2),
(83, 'Áo blazer nữ', 1125000, 999000, 'Áo blazer nữ 999.jpg', '', 0, '2022-03-11 11:30:31', '2022-03-11 11:30:31', 2),
(84, 'Áo Blazer tay lỡ regular', 855000, 799000, 'Áo Blazer tay lỡ regular 799.jpg', '', 0, '2022-03-11 11:31:13', '2022-03-11 11:31:13', 2),
(85, 'Áo body nữ ', 319000, 229000, 'Áo body nữ 229.jpg', '', 0, '2022-03-11 11:31:49', '2022-03-11 11:31:49', 2),
(86, 'Áo dạ nữ', 1549000, 1299000, 'Áo dạ nữ 1299.jpg', '', 18, '2022-03-11 11:33:40', '2022-03-11 11:33:40', 2),
(87, 'Áo gió nữ ', 419000, 399000, 'Áo gió nữ 399.jpg', '', 0, '2022-03-11 11:35:37', '2022-03-11 11:35:37', 2),
(88, 'Áo giữ nhiệt nữ cổ 3cm ', 299000, 249000, 'Áo giữ nhiệt nữ cổ 3cm 249.jpg', '', 0, '2022-03-11 11:42:45', '2022-03-11 11:42:45', 2),
(91, 'Áo giữ nhiệt nữ kẻ sọc', 275000, 249000, 'áo giữ nhiệt nữ kẻ sọc 249.jpg', '', 0, '2022-03-11 11:51:33', '2022-03-11 11:51:33', 2),
(92, 'Áo hoodie nữ dáng over ', 600000, 599000, 'áo hoodie nữ dáng over 599.jpg', '', 0, '2022-03-11 11:51:15', '2022-03-11 11:51:15', 2),
(93, 'Áo khoác chần bông nữ dáng ngắn ', 800000, 795000, 'Áo khoác chần bông nữ dáng ngắn 799.jpg', '', 0, '2022-03-11 11:52:51', '2022-03-11 11:52:51', 2),
(96, 'Áo khoác nữ bằng lông', 880000, 855000, 'Áo khoác nữ bằng lông 899.jpg', '', 0, '2022-03-11 11:54:07', '2022-03-11 11:54:07', 2),
(98, 'Áo kiểu cổ vuông', 549000, 529000, 'Áo kiểu cổ vuông-529.jpg', '', 0, '2022-03-11 11:55:50', '2022-03-11 11:55:50', 2),
(99, 'Váy liền tay lỡ ', 585000, 540000, 'Váy liền tay lỡ 529.jpg', '', 0, '2022-03-11 11:56:37', '2022-03-11 11:56:37', 2),
(100, 'Váy nỉ bông nữ', 550000, 523000, 'Váy nỉ bông nữ 529.jpg', '', 0, '2022-03-11 11:57:26', '2022-03-11 11:57:26', 2),
(101, 'Váy nỉ nữ', 579000, 529000, 'váy nỉ nữ 529.jpg', '', 0, '2022-03-11 12:06:08', '2022-03-11 12:06:08', 2),
(102, 'Váy yếm dáng suông', 720000, 699000, 'Váy yếm dáng suông-699.jpg', '', 0, '2022-03-11 12:06:35', '2022-03-11 12:06:35', 2),
(103, 'Váy yếm nữ ', 712000, 699000, 'Váy yếm nữ -699.jpg', '', 0, '2022-03-11 12:07:21', '2022-03-11 12:07:21', 2),
(105, 'Váy liền nữ 2 dây', 415000, 399000, 'Váy liền nữ 2 dây 399.jpg', '', 0, '2022-03-11 12:08:55', '2022-03-11 12:08:55', 2),
(106, 'Váy liền nữ ', 840000, 799000, 'Váy liền nữ 799.jpg', '', 0, '2022-03-11 12:09:32', '2022-03-11 12:09:32', 2),
(107, 'Váy liền nữ chữ A', 720000, 699000, 'Váy liền nữ chữ A-699.jpg', '', 0, '2022-03-11 12:10:23', '2022-03-11 12:10:23', 2),
(108, 'Váy liền nữ kẻ caro ', 640000, 629000, 'Váy liền nữ kẻ caro 629.jpg', '', 0, '2022-03-11 12:10:53', '2022-03-11 12:10:53', 2),
(109, 'Áo kiểu dún ngực', 450000, 429000, 'Áo kiểu dún ngực -429.jpg', '', 0, '2022-03-11 12:11:56', '2022-03-11 12:11:56', 2),
(110, 'Áo len cổ tròn, tay dáng slimfit', 310000, 299000, 'Áo len cổ tròn , tay , dáng slimfit-299.jpg', '', 0, '2022-03-11 12:20:27', '2022-03-11 12:20:27', 2),
(111, 'Áo len cổ tròn, dáng regular', 310000, 299000, 'Áo len cổ tròn, dáng regular-299.jpg', '', 0, '2022-03-11 12:20:59', '2022-03-11 12:20:59', 2),
(112, 'Áo len lông cừu nữ', 825000, 795000, 'Áo len lông cừu nữ -799.jpg', '', 0, '2022-03-11 12:21:38', '2022-03-11 12:21:38', 2),
(113, 'Áo len lông cừu nữ cổ lọ', 919000, 899000, 'Áo len lông cừu nữ cổ lọ-899.jpg', '', 0, '2022-03-11 12:22:11', '2022-03-11 12:22:11', 2),
(114, 'Áo len lông cừu nữ đen', 815000, 799000, 'Áo len lông cừu nữ đen -799.jpg', '', 0, '2022-03-11 12:22:46', '2022-03-11 12:22:46', 2),
(115, 'Áo len nữ cổ tròn dáng rộng', 599000, 623000, 'Áo len nữ cổ tròn dáng rộng-599.jpg', '', 0, '2022-03-11 12:23:21', '2022-03-11 12:23:21', 2),
(116, 'Áo len nữ cổ tròn', 450000, 429000, 'Áo len nữ cổ tròn-429.jpg', '', 0, '2022-03-11 12:23:54', '2022-03-11 12:23:54', 2),
(117, 'Áo len nữ dệt họa tiết', 634000, 599000, 'Áo len nữ dệt họa tiết-599.jpg', '', 0, '2022-03-11 12:24:44', '2022-03-11 12:24:44', 2),
(118, 'Áo lông vũ dáng dài', 1756000, 1699000, 'Áo lông vũ dáng dài 1699.jpg', '', 0, '2022-03-11 12:25:31', '2022-03-11 12:25:31', 2),
(119, 'Áo phao nữ', 1335000, 1299000, 'Áo phao nữ 1299.jpg', '', 0, '2022-03-11 12:26:04', '2022-03-11 12:26:04', 2),
(120, 'Áo phông nữ cotton USA họa tiết', 265000, 249000, 'Áo phông nữ cotton USA họa tiết-249.jpg', '', 0, '2022-03-11 12:26:39', '2022-03-11 12:26:39', 2),
(121, 'Áo phông nữ cotton USA mickey', 260000, 249000, 'Áo phông nữ cotton USA mickey-249.jpg', '', 0, '2022-03-11 12:27:13', '2022-03-11 12:27:13', 2),
(122, 'Áo phông nữ eo thắt dây', 260000, 249000, 'Áo phông nữ eo thắt dây-249.jpg', '', 0, '2022-03-11 12:27:48', '2022-03-11 12:27:48', 2),
(123, 'Áo phông nữ in hình Minnie', 365000, 349000, 'Áo phông nữ in hình Minnie-349.jpg', '', 0, '2022-03-11 12:28:57', '2022-03-11 12:28:57', 2),
(124, 'Áo phông Unisex người lớn dài tay', 340000, 299000, 'Áo phông Unisex người lớn dài tay-299.jpg', '', 0, '2022-03-11 12:29:27', '2022-03-11 12:29:27', 2),
(125, 'Áo phông unisex người lớn', 278000, 249000, 'Áo phông unisex người lớn-249.jpg', '', 0, '2022-03-11 12:31:43', '2022-03-11 12:31:43', 2),
(126, 'Áo sat nách nữ in chữ ', 279000, 249000, 'Áo sat nách nữ in chữ -249.jpg', '', 0, '2022-03-11 12:32:33', '2022-03-11 12:32:33', 2),
(127, 'Áo sát nách nữ rút dây sườn', 280000, 249000, 'Áo sát nách nữ rút dây sườn-249.jpg', '', 0, '2022-03-11 12:33:05', '2022-03-11 12:33:05', 2),
(128, 'Áo sơ mi nữ cộc tay', 536000, 499000, 'Áo sơ mi nữ cộc tay-499.jpg', '', 0, '2022-03-11 12:33:37', '2022-03-11 12:33:37', 2),
(129, 'Quần nỉ nữ ', 400000, 369000, 'Quần nỉ nữ 369.jpg', '', 0, '2022-03-11 12:34:43', '2022-03-11 12:34:43', 2),
(130, 'Quần nỉ nữ dáng sport', 599000, 549000, 'Quần nỉ nữ dáng sport 549.jpg', '', 0, '2022-03-11 12:35:30', '2022-03-11 12:35:30', 2),
(131, 'Quần sooc nỉ nữ dệt sườn', 268000, 242000, 'Quần sooc nỉ nữ dệt sườn 249.jpg', '', 0, '2022-03-11 12:36:05', '2022-03-11 12:36:05', 2),
(132, 'Quần sooc nữ', 452000, 441000, 'Quần sooc nữ 449.jpg', '', 0, '2022-03-11 12:36:31', '2022-03-11 12:36:31', 2),
(133, 'Quần sooc nữ active', 287000, 246000, 'Quần sooc nữ active 249.jpg', '', 0, '2022-03-11 12:37:00', '2022-03-11 12:37:00', 2),
(134, 'Áo sơ mi nữ họa tiết', 342000, 299000, 'Áo sơ mi nữ họa tiết-299.jpg', '', 0, '2022-03-11 12:37:49', '2022-03-11 12:37:49', 2),
(135, 'Áo sơ mi nữ sát nách', 339000, 299000, 'Áo sơ mi nữ sát nách-299.jpg', '', 0, '2022-03-11 12:38:17', '2022-03-11 12:38:17', 2),
(136, 'Áo sơ mi nữ tay phồng', 459000, 399000, 'Áo sơ mi nữ tay phồng-399.jpg', '', 0, '2022-03-11 12:38:54', '2022-03-11 12:38:54', 2),
(137, 'Bộ mặc nhà nữ', 388000, 349000, 'Bộ mặc nhà nữ 349.jpg', '', 0, '2022-03-11 12:39:54', '2022-03-11 12:39:54', 2),
(138, 'Bộ mặc nhà nữ họa tiết kẻ ', 400000, 379000, 'Bộ mặc nhà nữ họa tiết kẻ 379.jpg', '', 0, '2022-03-11 12:40:18', '2022-03-11 12:40:18', 2),
(139, 'Bộ nỉ nữ', 855000, 799000, 'Bộ nỉ nữ 799.jpg', '', 0, '2022-03-11 12:40:53', '2022-03-11 12:40:53', 2),
(140, 'Chân váy caro ', 400000, 369000, 'Chân váy caro 369.jpg', '', 0, '2022-03-11 12:41:41', '2022-03-11 12:41:41', 2),
(141, 'Chân váy nữ', 620000, 549000, 'Chân váy nữ 549.jpg', '', 0, '2022-03-11 12:42:29', '2022-03-11 12:42:29', 2),
(142, 'Chân váy nữ chun eo', 500000, 424000, 'Chân váy nữ chun eo 429.jpg', '', 0, '2022-03-11 12:43:00', '2022-03-11 12:43:00', 2),
(143, 'Chân váy nữ dáng chữ A', 503000, 447000, 'Chan váy nữ dáng chữ A 449.jpg', '', 0, '2022-03-11 12:43:31', '2022-03-11 12:43:31', 2),
(144, 'Nỉ nữ dáng rộng dài', 600000, 560000, 'Nỉ nữ dáng rộng dài-599.jpg', '', 0, '2022-03-11 12:44:23', '2022-03-11 12:44:23', 2),
(145, 'Nỉ nữ in hình', 460000, 405000, 'Nỉ nữ in hình-399.jpg', '', 0, '2022-03-11 12:44:56', '2022-03-11 12:44:56', 2),
(146, 'Nỉ nữ tay chuông', 520000, 450000, 'Nỉ nữ tay chuông-449.jpg', '', 0, '2022-03-11 12:45:37', '2022-03-11 12:45:37', 2),
(147, 'Pyjamas', 350000, 265000, 'Pyjamas.jpg', '', 0, '2022-03-11 12:46:15', '2022-03-11 12:46:15', 2),
(148, 'Quần giả váy , dáng ôm vừa ', 600000, 449000, 'Quần giả váy , dáng ôm vừa 469.jpg', '', 0, '2022-03-11 12:47:10', '2022-03-11 12:47:10', 2),
(149, 'Quần giả váy Caro', 60000, 449000, 'Quần giả váy Caro 469.jpg', '', 0, '2022-03-11 12:48:32', '2022-03-11 12:48:32', 2),
(150, 'Quần giữ nhiệt nữ', 300000, 249000, 'Quần giữ nhiệt nữ 249.jpg', '', 0, '2022-03-11 12:49:09', '2022-03-11 12:49:09', 2),
(151, 'Quần jeans nữ ', 550000, 499000, 'Quần jeans nữ 499.jpg', '', 0, '2022-03-11 12:49:36', '2022-03-11 12:49:36', 2),
(152, 'Quần Jeans nữ Slim basic', 700000, 599000, 'Quần Jeans nữ Slim basic 599.jpg', '', 0, '2022-03-11 12:50:30', '2022-03-11 12:50:30', 2),
(153, 'Quần jogger nữ', 700000, 599000, 'Quần jogger nữ 599.jpg', '', 0, '2022-03-11 12:51:01', '2022-03-11 12:51:01', 2),
(154, 'Quần mặc nhà nữ', 350000, 279000, 'Quần mặc nhà nữ 279.jpg', '', 0, '2022-03-11 12:51:40', '2022-03-11 12:51:40', 2),
(155, 'Váy liên nữ rút dây', 600000, 499000, 'Váy liên nữ rút dây 499.jpg', '', 0, '2022-03-11 12:52:26', '2022-03-11 12:52:26', 2),
(156, 'Quần sooc nữ dáng regular', 650000, 449000, 'Quần sooc nữ dáng regular 449.jpg', '', 0, '2022-03-11 12:53:09', '2022-03-11 12:53:09', 2),
(157, 'Sơ mi nữ dài tay cổ tròn', 650000, 526000, 'Sơ mi nữ dài tay cổ tròn 529.jpg', '', 0, '2022-03-11 12:53:45', '2022-03-11 12:53:45', 2),
(158, 'Váy len nữ cổ V', 750000, 595000, 'Váy len nữ cổ V-599.jpg', '', 0, '2022-03-11 12:54:15', '2022-03-11 12:54:15', 2),
(159, 'Váy liền có mũ ', 800000, 696000, 'Váy liền có mũ 699.jpg', '', 0, '2022-03-11 12:54:51', '2022-03-11 12:54:51', 2),
(160, 'Váy liền cổ tròn , dài tay , dáng A', 800000, 600000, 'Váy liền cổ tròn , dài tay , dáng A 599.jpg', '', 21, '2022-03-11 12:55:23', '2022-03-11 12:55:23', 2),
(161, 'Khẩu trang', 78000, 69000, 'Khẩu trang 69.jpg', '', 0, '2022-03-11 12:59:00', '2022-03-11 12:59:00', 3),
(162, 'Mũ pink ', 300000, 275000, 'Mũ pink 275.jpg', '', 0, '2022-03-11 12:59:37', '2022-03-11 12:59:37', 3),
(163, 'Giày New Balance', 2835000, 2399000, 'New Balance- 2399.jpg', '', 0, '2022-03-11 13:00:31', '2022-03-11 13:00:31', 3),
(164, 'Giày Ananas low top', 780000, 590000, 'Ananas low top 590.jpeg', '', 0, '2022-03-11 13:03:44', '2022-03-11 13:03:44', 3),
(165, 'Balo đa năng ', 720000, 500000, 'Balo đa năng 500.jpg', '', 0, '2022-03-11 13:04:18', '2022-03-11 13:04:18', 3),
(166, 'Balo laptop', 436000, 392000, 'Balo laptop 392.jpg', '', 0, '2022-03-11 13:04:49', '2022-03-11 13:04:49', 3),
(167, 'Balo Nike', 2925000, 2600000, 'Balo Nike 2600.jpg', '', 0, '2022-03-11 13:05:18', '2022-03-11 13:05:18', 3),
(168, 'Balo Nike Hồng ', 2000000, 1700000, 'Balo Nike Hồng 1700.jpg', '', 0, '2022-03-11 13:05:45', '2022-03-11 13:05:45', 3),
(169, 'Bông tai bi', 221000, 199000, 'Bông tai bi 199.jpg', '', 0, '2022-03-11 13:06:21', '2022-03-11 13:06:21', 3),
(170, 'Dép cá sấu cho bé ', 232000, 199000, 'Dép cá sấu cho bé 199.webp', '', 0, '2022-03-11 13:06:54', '2022-03-11 13:06:54', 3),
(171, 'Đồng hồ Aolix', 3424000, 2999000, 'Đồng hồ Aolix 2999.jpg', '', 0, '2022-03-11 13:07:34', '2022-03-11 13:07:34', 3),
(172, 'Đồng hồ daniel', 4395000, 3890000, 'Đồng hồ daniel 3990.jpg', '', 0, '2022-03-11 13:08:14', '2022-03-11 13:08:14', 3),
(173, 'Đồng hồ nam', 4426000, 3889000, 'Đồng hồ nam 3889.jpg', '', 0, '2022-03-11 13:09:38', '2022-03-11 13:09:38', 3),
(174, 'Đồng hồ sang trọng', 2186000, 1981000, 'Đồng hồ sang trong 1989.jpg', '', 0, '2022-03-11 13:10:38', '2022-03-11 13:10:38', 3),
(175, 'Giày bé gái', 821000, 769000, 'Giày bé gái 769.jpg', '', 0, '2022-03-11 13:11:02', '2022-03-11 13:11:02', 3),
(176, 'Giày bé trai ', 936000, 899000, 'Giày bé trai 899.jpg', '', 0, '2022-03-11 13:11:31', '2022-03-11 13:11:31', 3),
(177, 'Giày búp bê', 600000, 569000, 'Giày búp bê 569.png', '', 0, '2022-03-11 13:11:54', '2022-03-11 13:11:54', 3),
(178, 'Khăn choàng', 500000, 399000, 'khăn choàng 399.jpg', '', 0, '2022-03-11 13:12:35', '2022-03-11 13:12:35', 3),
(179, 'Khăn len', 260000, 2399000, 'Khăn len 239.jpg', '', 0, '2022-03-11 13:12:58', '2022-03-11 13:12:58', 3),
(180, 'Khẩu trang y tế ', 60000, 50000, 'Khẩu trang y tế 50.jpg', '', 0, '2022-03-11 13:13:31', '2022-03-11 13:13:31', 3),
(181, 'Khuyên sao', 429000, 399000, 'Khuyên sao 399.jpg', '', 0, '2022-03-11 13:13:57', '2022-03-11 13:13:57', 3),
(182, 'Khuyên xỏ lỗ', 319000, 299000, 'Khuyên xở lỗ 299.jpg', '', 0, '2022-03-11 13:14:28', '2022-03-11 13:14:28', 3),
(183, 'Kính cận', 350000, 300000, 'Kính cận 300.jpg', '', 0, '2022-03-11 13:14:54', '2022-03-11 13:14:54', 3),
(184, 'Kính cho bé', 235000, 199000, 'Kính cho bé 199.jpg', '', 0, '2022-03-11 13:15:22', '2022-03-11 13:15:22', 3),
(185, 'Kính râm', 379000, 349000, 'Kính râm 349.jpg', '', 0, '2022-03-11 13:15:52', '2022-03-11 13:15:52', 3),
(186, 'Giày Low top', 720000, 580000, 'Low top 580.jpg', '', 0, '2022-03-11 13:44:47', '2022-03-11 13:44:47', 3),
(187, 'Mũ len', 199, 149000, 'Mũ len.jpg', '', 0, '2022-03-11 13:45:25', '2022-03-11 13:45:25', 3),
(188, 'Mũ lưỡi trai', 119000, 899000, 'Mũ lưỡi trai 89.jpg', '', 0, '2022-03-11 13:45:47', '2022-03-11 13:45:47', 3),
(189, 'Mũ vành', 169000, 139000, 'Mũ vành 139.jpg', '', 0, '2022-03-11 13:46:10', '2022-03-11 13:46:10', 3),
(190, 'Mũ xinh cho bé', 219000, 199000, 'Mũ xinh cho bé 199.jpg', '', 0, '2022-03-11 13:46:36', '2022-03-11 13:46:36', 3),
(191, 'Giày Mule ', 560000, 520000, 'Mule 520.jpg', '', 0, '2022-03-11 13:47:02', '2022-03-11 13:47:02', 3),
(192, 'Nhẫn', 1232000, 999000, 'Nhẫn 999.png', '', 0, '2022-03-11 13:47:25', '2022-03-11 13:47:25', 3),
(193, 'Nhẫn doli', 5600000, 4999000, 'Nhẫn doli 4999.jpg', '', 0, '2022-03-11 13:48:01', '2022-03-11 13:48:01', 3),
(194, 'Sport watch', 3250000, 2899000, 'Sport watch 2899.jpg', '', 0, '2022-03-11 13:48:29', '2022-03-11 13:48:29', 3),
(195, 'Tất adidas', 232000, 199000, 'Tất adidas 199.jpg', '', 0, '2022-03-11 13:48:48', '2022-03-11 13:48:48', 3),
(196, 'Tất nhiều màu', 127000, 99000, 'tát nhiều màu 99.jpg', '', 0, '2022-03-11 13:49:21', '2022-03-11 13:49:21', 3),
(197, 'Tất trẻ em', 100000, 89000, 'tất trẻ em 89.jpg', '', 0, '2022-03-11 13:58:22', '2022-03-11 13:58:22', 3),
(198, 'Tất unisex', 60000, 50000, 'tất unisex 50.jpg', '', 0, '2022-03-11 13:50:19', '2022-03-11 13:50:19', 3),
(199, 'Thắt lưng da bò', 1000000, 899000, 'Thắt lưng da bò 899.jpg', '', 0, '2022-03-11 13:50:41', '2022-03-11 13:50:41', 3),
(200, 'Thắt lưng LV ', 3250000, 2999000, 'Thắt lưng LV 2999.jpg', '', 0, '2022-03-11 13:51:03', '2022-03-11 13:51:03', 3),
(201, 'Thắt lưng nữ', 3250000, 289000, 'Thắt lưng nữ 289.webp', '', 0, '2022-03-11 13:51:37', '2022-03-11 13:51:37', 3),
(202, 'Giày Track 6 class E ', 1500000, 1190000, 'Track 6 class E 1190.jpg', '', 0, '2022-03-11 13:52:28', '2022-03-11 13:52:28', 3),
(203, 'Túi đen sang trọng', 4232000, 3899000, 'túi đen sang trọng 3899.jpg', '', 0, '2022-03-11 13:53:09', '2022-03-11 13:53:09', 3),
(204, 'Túi đeo chéo', 1200000, 900000, 'Túi đeo chéo 900.jpg', '', 0, '2022-03-11 13:53:32', '2022-03-11 13:53:32', 3),
(205, 'Ví da ', 2000000, 1679000, 'Ví da 1679.jpg', '', 0, '2022-03-11 13:54:09', '2022-03-11 13:54:09', 3),
(206, 'Ví nam', 1300000, 999000, 'Ví da nâu 999.jpg', '', 51, '2022-03-11 18:40:51', '2022-03-11 18:40:51', 3),
(207, 'Ví hộp ', 1200000, 899000, 'Ví hộp 899.jpg', '', 32, '2022-03-11 13:54:52', '2022-03-11 13:54:52', 3),
(208, 'Giày Vintas Flannel ', 1000000, 690000, 'Vintas Flannel 690.jpg', '', 1, '2022-03-11 13:55:36', '2022-03-11 13:55:36', 3),
(209, 'Giày Vintas Mister- hight Top', 860000, 610000, 'Vintas Mister- hight Top 610.jpg', '', 23, '2022-03-11 13:56:06', '2022-03-11 13:56:06', 3),
(210, 'Vòng tay đôi', 900000, 689000, 'VÒng tay đôi 689.jpg', '', 43, '2022-03-11 13:56:37', '2022-03-11 13:56:37', 3),
(211, 'Vòng tay trẻ em bạc ', 725000, 499000, 'vòng tay trẻ em bạc 499.png', '', 2, '2022-03-11 13:57:03', '2022-03-11 13:57:03', 3),
(212, 'Áo ba lỗ nam cotton USA', 299000, 249000, 'Áo ba lỗ nam cotton USA 249.jpg', '', 47, '2022-03-11 14:03:18', '2022-03-11 14:03:18', 1),
(213, 'Áo blazer nam ', 1050000, 889000, 'Áo blazer nam 899.jpg', '', 0, '2022-03-11 18:38:56', '2022-03-11 18:38:56', 1),
(215, 'Áo body nam', 268000, 249000, 'Áo body nam 249.jpg', '', 0, '2022-03-11 18:39:20', '2022-03-11 18:39:20', 1),
(216, 'Áo giữ ấm nam', 307000, 279000, 'Áo giữ ấm nam 279.jpg', '', 0, '2022-03-11 18:39:45', '2022-03-11 18:39:45', 1),
(217, 'Áo giữ nhiệt nam ', 300000, 279000, 'Áo giữ nhiệt nam 279.jpg', '', 0, '2022-03-11 18:41:29', '2022-03-11 18:41:29', 1),
(218, 'Áo khoác bomber da lộn nam', 1526000, 1199000, 'Áo khoác bomber da lộn nam 1199.jpg', '', 0, '2022-03-11 18:41:51', '2022-03-11 18:41:51', 1),
(219, 'Áo khoác bomber da lộn nam BO', 1368000, 1199000, 'Áo khoác bomber da lộn nam BO 1199.jpg', '', 0, '2022-03-11 18:42:21', '2022-03-11 18:42:21', 1),
(220, 'Áo khoác bomber dạ nam ', 1335000, 1199000, 'Áo khoác bomber dạ nam 1199.jpg', '', 0, '2022-03-11 18:42:56', '2022-03-11 18:42:56', 1),
(221, 'Áo khoác chần bông nam dáng dài', 1672000, 1499000, 'Áo khoác chần bông nam dáng dài 1499.jpg', '', 0, '2022-03-11 18:43:21', '2022-03-11 18:43:21', 1),
(222, 'Áo khoác lông vũ nam ', 1420000, 1299000, 'Áo khoác lông vũ nam 1299.jpg', '', 0, '2022-03-11 18:43:43', '2022-03-11 18:43:43', 1),
(223, 'Áo khoác lông vũ nam cổ lửng', 1538000, 1299000, 'Áo khoác lông vũ nam cổ lửng 1299.jpg', '', 0, '2022-03-11 18:44:21', '2022-03-11 18:44:21', 1),
(224, 'Áo khoác lông vũ nam có mũ ', 1675000, 1299000, 'Áo khoác lông vũ nam có mũ 1299.jpg', '', 0, '2022-03-11 18:44:41', '2022-03-11 18:44:41', 1),
(225, 'Áo khoác nam có mũ ', 829000, 799000, 'Áo khoác nam có mũ 799.jpg', '', 0, '2022-03-11 18:45:06', '2022-03-11 18:45:06', 1),
(226, 'Áo khoác nỉ nam SD ', 724000, 699000, 'Áo khoác nỉ nam SD 699.jpg', '', 0, '2022-03-11 18:45:29', '2022-03-11 18:45:29', 1),
(227, 'Áo len lông cừu nam', 962000, 899000, 'Áo len lông cừu nam 899.jpg', '', 0, '2022-03-11 18:46:10', '2022-03-11 18:46:10', 1),
(228, 'Áo len nam BT', 672000, 599000, 'Áo len nam BT 599.jpg', '', 0, '2022-03-11 18:46:36', '2022-03-11 18:46:36', 1),
(229, 'Áo len nam FT ', 362000, 299000, 'Áo len nam FT 299.jpg', '', 0, '2022-03-11 18:47:00', '2022-03-11 18:47:00', 1),
(230, 'Áo len nam SA', 800000, 599000, 'Áo len nam SA 599.jpg', '', 0, '2022-03-11 18:47:31', '2022-03-11 18:47:31', 1),
(231, 'Áo nỉ có mũ nam regular', 485000, 399000, 'Áo nỉ có mũ nam regular 399.jpg', '', 0, '2022-03-11 18:48:02', '2022-03-11 18:48:02', 1),
(232, 'Áo nỉ nam - BST Dấu ấn', 450000, 399000, 'Áo nỉ nam - BST Dấu ấn 399 .jpg', '', 0, '2022-03-11 18:58:49', '2022-03-11 18:58:49', 1),
(233, 'Áo nỉ nam in hình Mickey ', 532000, 499000, 'Áo nỉ nam in hình Mickey 499.jpg', '', 0, '2022-03-11 18:59:16', '2022-03-11 18:59:16', 1),
(234, 'Áo nỉ nam in hình Mickey', 532000, 499000, 'Áo nỉ nam in hình Mickey0 499.jpg', '', 0, '2022-03-11 18:59:48', '2022-03-11 18:59:48', 1),
(235, 'Áo nỉ nam in tràn ', 660000, 599000, 'Áo nỉ nam in tràn 599.jpg', '', 0, '2022-03-11 19:00:08', '2022-03-11 19:00:08', 1),
(236, 'Áo nỉ nam khóa kéo sườn', 700000, 645000, 'Áo nỉ nam khóa kéo sườn 649.jpg', '', 0, '2022-03-11 19:00:39', '2022-03-11 19:00:39', 1),
(237, 'Áo nỉ nam Marvel', 500000, 449000, 'Áo nỉ nam Marvel 449.jpg', '', 0, '2022-03-11 19:01:06', '2022-03-11 19:01:06', 1),
(240, 'Áo nỉ nam vai raglan', 286000, 249000, 'Áo nỉ nam vai raglan 249.jpg', '', 0, '2022-03-11 19:02:01', '2022-03-11 19:02:01', 1),
(241, 'Áo phông nam cotton USA', 400000, 324000, 'Áo phông nam cotton USA 8T 329.jpg', '', 0, '2022-03-11 19:02:22', '2022-03-11 19:02:22', 1),
(242, 'Áo phông nam cotton USA', 163000, 125000, 'Áo phông nam cotton USA 129.jpg', '', 0, '2022-03-11 19:03:22', '2022-03-11 19:03:22', 1),
(244, 'Áo phông nam cotton USA in hình ', 255000, 249000, 'Áo phông nam cotton USA in hình 249.jpg', '', 0, '2022-03-11 19:03:59', '2022-03-11 19:03:59', 1),
(245, 'Áo phông nam dài tay ', 421000, 374000, 'Áo phông nam dài tay 379.jpg', '', 0, '2022-03-11 19:04:23', '2022-03-11 19:04:23', 1),
(246, 'Quần soóc nam', 225000, 195000, 'Quần soóc nam 199.jpg', '', 0, '2022-03-11 19:04:50', '2022-03-11 19:04:50', 1),
(247, 'Quần Jeans nam', 700000, 692000, 'Quần Jeans nam 699.jpg', '', 0, '2022-03-11 19:05:15', '2022-03-11 19:05:15', 1),
(248, 'Quần jogger khaki nam ', 726000, 699000, 'Quần jogger khaki nam 699.jpg', '', 0, '2022-03-11 19:05:32', '2022-03-11 19:05:32', 1),
(249, 'Quần jogger nỉ túi hộp', 638000, 597000, 'Quần jogger nỉ túi hộp 599.jpg', '', 0, '2022-03-11 19:06:02', '2022-03-11 19:06:02', 1),
(250, 'Quần nỉ jogger nam', 504000, 466000, 'Quần nỉ jogger nam 469.jpg', '', 0, '2022-03-11 19:06:25', '2022-03-11 19:06:25', 1),
(251, 'Quần soóc jeans nam', 507000, 449000, 'Quần soóc jeans nam 449.jpg', '', 0, '2022-03-11 19:06:50', '2022-03-11 19:06:50', 1),
(252, 'Áo sơ mi nam dài tay', 422000, 369000, 'Áo sơ mi nam dài tay 369.jpg', '', 0, '2022-03-11 19:07:36', '2022-03-11 19:07:36', 1),
(253, 'Áo sơ mi nam kẻ ', 437000, 399000, 'Áo sơ mi nam kẻ 399.jpg', '', 0, '2022-03-11 19:08:00', '2022-03-11 19:08:00', 1),
(254, 'Áo sơ mi nam trơn ', 552000, 493000, 'Áo sơ mi nam trơn 499.jpg', '', 0, '2022-03-11 19:08:23', '2022-03-11 19:08:23', 1),
(255, 'Áo sợi polo nam ', 487000, 449000, 'Áo sợi polo nam 449.jpg', '', 0, '2022-03-11 19:08:48', '2022-03-11 19:08:48', 1),
(256, 'Quần jeans nam', 648000, 598000, 'Quần jeans nam 599.jpg', '', 0, '2022-03-11 19:09:15', '2022-03-11 19:09:15', 1),
(257, 'Áo phông unisex người lớn', 260000, 244000, 'Áo phông unisex người lớn 249.jpg', '', 0, '2022-03-11 19:09:40', '2022-03-11 19:09:40', 1),
(258, 'Áo phông unisex người lớn dài tay', 322000, 291000, 'Áo phông unisex người lớn dài tay 299.jpg', '', 0, '2022-03-11 19:10:34', '2022-03-11 19:10:34', 1),
(259, 'Áo polo nam 8T ', 441000, 393000, 'Áo polo nam 8T 399.jpg', '', 0, '2022-03-11 19:10:55', '2022-03-11 19:10:55', 1),
(260, 'Áo polo nam', 536000, 495000, 'Áo polo nam 499.jpg', '', 0, '2022-03-11 19:11:22', '2022-03-11 19:11:22', 1),
(261, 'Áo polo nam cotton USA ', 273000, 243000, 'Áo polo nam cotton USA 249.jpg', '', 0, '2022-03-11 19:11:52', '2022-03-11 19:11:52', 1),
(262, 'Áo polo nam họa tiết kẻ ngang ', 548000, 491000, 'Áo polo nam họa tiết kẻ ngang 499.jpg', '', 0, '2022-03-11 19:12:27', '2022-03-11 19:12:27', 1),
(265, 'Áo polo nam kẻ', 665000, 593000, 'Áo polo nam kẻ 599.jpg', '', 0, '2022-03-11 19:13:05', '2022-03-11 19:13:05', 1),
(266, 'Áo polo nam sợi cafe ', 502000, 449000, 'Áo polo nam sợi cafe 449.jpg', '', 0, '2022-03-11 19:13:31', '2022-03-11 19:13:31', 1),
(267, 'Áo sát nách nam ', 346000, 294000, 'Áo sát nách nam 299.jpg', '', 0, '2022-03-11 19:14:00', '2022-03-11 19:14:00', 1),
(268, 'Áo blazer bé trai', 504000, 445000, 'Áo blazer bé trai 449.jpg', '', 0, '2022-03-11 19:14:52', '2022-03-11 19:14:52', 9),
(269, 'Áo khoác bomber nỉ bé trai ', 524000, 449000, 'Áo khoác bomber nỉ bé trai 449.jpg', '', 0, '2022-03-11 19:15:11', '2022-03-11 19:15:11', 9),
(270, 'Áo khoác chần bông bé trai ', 382000, 337000, 'Áo khoác chần bông bé trai 339.jpg', '', 0, '2022-03-11 19:15:29', '2022-03-11 19:15:29', 9),
(271, 'Áo khoác gió bé trai dáng bomber ', 492000, 449000, 'Áo khoác gió bé trai dáng bomber 449.jpg', '', 0, '2022-03-11 19:15:52', '2022-03-11 19:15:52', 9),
(272, 'Áo khoác gió unisex trẻ em', 478000, 444000, 'Áo khoác gió unisex trẻ em 449.jpg', '', 0, '2022-03-11 19:16:29', '2022-03-11 19:16:29', 9),
(273, 'Áo khoác khaki bé trai dáng ngắn ', 588000, 548000, 'Áo khoác khaki bé trai dáng ngắn 549.jpg', '', 0, '2022-03-11 19:16:52', '2022-03-11 19:16:52', 9),
(274, 'Áo khoác parka bé trai', 947000, 899000, 'Áo khoác parka bé trai1 899.jpg', '', 0, '2022-03-11 19:17:23', '2022-03-11 19:17:23', 9),
(275, 'Áo kiểu bé gái', 268000, 249000, 'Áo kiểu bé gái 249.jpg', '', 0, '2022-03-11 19:17:51', '2022-03-11 19:17:51', 9),
(276, 'Áo nỉ bé gái ', 362000, 274000, 'Áo nỉ bé gái 279.jpg', '', 0, '2022-03-11 19:18:12', '2022-03-11 19:18:12', 9),
(277, 'Áo nỉ bé gái có cổ phối thân dưới', 400000, 349000, 'Áo nỉ bé gái có cổ phối thân dưới 349.jpg', '', 0, '2022-03-11 19:18:32', '2022-03-11 19:18:32', 9),
(278, 'Áo nỉ bé gái có mũ phối thân dưới', 461000, 395000, 'Áo nỉ bé gái có mũ phối thân dưới 399.jpg', '', 0, '2022-03-11 19:19:09', '2022-03-11 19:19:09', 9),
(279, 'Áo nỉ bé gái đính kim sa ', 396000, 349000, 'Áo nỉ bé gái đính kim sa 349.jpg', '', 0, '2022-03-11 19:19:28', '2022-03-11 19:19:28', 9),
(280, 'Áo nỉ bé gái đỏ', 3250000, 279000, 'Áo nỉ bé gái đỏ 279.jpg', '', 0, '2022-03-11 19:19:52', '2022-03-11 19:19:52', 9),
(281, 'Áo nỉ bé gái in chữ ở ngực', 211000, 166000, 'Áo nỉ bé gái in chữ ở ngực 169.jpg', '', 0, '2022-03-11 19:20:15', '2022-03-11 19:20:15', 9),
(282, 'Áo nỉ bé gái in chữ ở ngực', 268000, 229000, 'Áo nỉ bé gái in chữ ở ngực 229.jpg', '', 0, '2022-03-11 19:20:36', '2022-03-11 19:20:36', 9),
(283, 'Áo nỉ bé gái in hình hello kitty', 264000, 249000, 'Áo nỉ bé gái in hình hello kitty 249.jpg', '', 0, '2022-03-11 19:20:59', '2022-03-11 19:20:59', 9),
(284, 'Áo nỉ bé gái in Minnie ', 302000, 277000, 'Áo nỉ bé gái in Minnie 279.jpg', '', 0, '2022-03-11 19:21:23', '2022-03-11 19:21:23', 9),
(285, 'Áo nỉ bé gái in tràn', 300000, 245000, 'Áo nỉ bé gái in tràn 249.jpg', '', 0, '2022-03-11 19:21:44', '2022-03-11 19:21:44', 9),
(286, 'Áo nỉ có mũ bé gái in Mickey', 300000, 273000, 'Áo nỉ có mũ bé gái in Mickey 279.jpg', '', 0, '2022-03-11 19:22:06', '2022-03-11 19:22:06', 9),
(287, 'Áo nỉ lông bé gái có mũ ', 400000, 349000, 'Áo nỉ lông bé gái có mũ 349.jpg', '', 0, '2022-03-11 19:22:44', '2022-03-11 19:22:44', 9),
(289, 'Áo phông bé trai hoạ tiết kẻ ', 234000, 196000, 'Áo phông bé trai hoạ tiết kẻ 199.jpg', '', 0, '2022-03-11 19:23:30', '2022-03-11 19:23:30', 9),
(290, 'Áo phông bé trai in hình khủng long ', 2000000, 145000, 'Áo phông bé trai in hình khủng long 149.jpg', '', 0, '2022-03-11 19:23:48', '2022-03-11 19:23:48', 9),
(291, 'Áo phông bé trai in hình SK ', 203000, 162000, 'Áo phông bé trai in hình SK 169.jpg', '', 0, '2022-03-11 19:24:19', '2022-03-11 19:24:19', 9),
(292, 'Áo phông bé trai hình nhện', 272000, 219000, 'Áo phông bé trai in hình nhân vật người nhện 2T 219.jpg', '', 0, '2022-03-11 19:25:02', '2022-03-11 19:25:02', 9),
(293, 'Áo phông bé trai in hình SW', 209000, 167000, 'Áo phông bé trai in hình SW 169.jpg', '', 0, '2022-03-11 19:25:23', '2022-03-11 19:25:23', 9),
(294, 'Áo phông bé trai hình nhện', 255000, 215000, 'Áo phông bé trai in hình nhân vật người nhện 219.jpg', '', 0, '2022-03-11 19:25:59', '2022-03-11 19:25:59', 9),
(295, 'Áo phông unisex trẻ em ', 185000, 149000, 'Áo phông unisex trẻ em 149.jpg', '', 0, '2022-03-11 19:26:21', '2022-03-11 19:26:21', 9),
(296, 'Áo phông unisex trẻ em hổ', 200000, 147000, 'Áo phông unisex trẻ em hổ 149.jpg', '', 0, '2022-03-11 19:26:47', '2022-03-11 19:26:47', 9),
(297, 'Áo polo bé trai ', 216000, 177000, 'Áo polo bé trai 179.jpg', '', 0, '2022-03-11 19:27:04', '2022-03-11 19:27:04', 9),
(298, 'Áo polo bé trai ', 260000, 229000, 'Áo polo bé trai 229.jpg', '', 0, '2022-03-11 19:27:27', '2022-03-11 19:27:27', 9),
(299, 'Quần legging bé gái ', 153000, 149000, 'Quần legging bé gái 149.jpg', '', 0, '2022-03-11 19:28:58', '2022-03-11 19:28:58', 9),
(300, 'Quần legging bé gái ', 220000, 199000, 'Quần legging bé gái 199.jpg', '', 0, '2022-03-11 19:29:14', '2022-03-11 19:29:14', 9),
(301, 'Quần legging bé gái ngôi sao', 216000, 199000, 'Quần legging bé gái ngôi sao 199.jpg', '', 0, '2022-03-11 19:29:30', '2022-03-11 19:29:30', 9),
(302, 'Quần legging giả jeans bé gái ', 227000, 199000, 'Quần legging giả jeans bé gái 199.jpg', '', 0, '2022-03-11 19:29:44', '2022-03-11 19:29:44', 9),
(303, 'Quần nỉ bé gái ', 273000, 249000, 'Quần nỉ bé gái 249.jpg', '', 0, '2022-03-11 19:30:08', '2022-03-11 19:30:08', 9),
(304, 'Váy liền bé gái phối lưới', 506000, 447000, 'Váy liền bé gái phối lưới 449.jpg', '', 0, '2022-03-11 19:30:37', '2022-03-11 19:30:37', 9),
(305, 'Váy nỉ bé gái có mũ in hình minnie ', 348000, 325000, 'Váy nỉ bé gái có mũ in hình minnie 329.jpg', '', 0, '2022-03-11 19:30:53', '2022-03-11 19:30:53', 9),
(306, 'Váy nỉ bé gái in hình ', 356000, 347000, 'Váy nỉ bé gái in hình 349.jpg', '', 0, '2022-03-11 19:31:12', '2022-03-11 19:31:12', 9),
(307, 'Váy nỉ bé gái in hình frozen', 341000, 298000, 'Váy nỉ bé gái in hình frozen 299.jpg', '', 0, '2022-03-11 19:31:30', '2022-03-11 19:31:30', 9),
(308, 'Váy nỉ bé gái in hình gấu teddy', 352000, 294000, 'Váy nỉ bé gái in hình gấu teddy 299.jpg', '', 0, '2022-03-11 19:31:48', '2022-03-11 19:31:48', 9),
(309, 'Quần soóc bé gái ', 401000, 379000, 'Quần soóc bé gái 379.jpg', '', 0, '2022-03-11 19:33:39', '2022-03-11 19:33:39', 9),
(310, 'Quần soóc bé gái phối bèo đính nơ', 333000, 228000, 'Quần soóc bé gái phối bèo đính nơ 229.jpg', '', 0, '2022-03-11 19:33:58', '2022-03-11 19:33:58', 9),
(311, 'Quần soóc vảy cá bé gái ', 207000, 165000, 'Quần soóc vảy cá bé gái 169.jpg', '', 0, '2022-03-11 19:34:18', '2022-03-11 19:34:18', 9),
(312, 'Váy nỉ bé gái in hình nàng tiên cá', 332000, 278000, 'Váy nỉ bé gái in hình nàng tiên cá 299.jpg', '', 0, '2022-03-11 19:34:46', '2022-03-11 19:34:46', 9),
(313, 'Áo sơ mi bé trai ', 333000, 299000, 'Áo sơ mi bé trai 299.jpg', '', 0, '2022-03-11 19:35:03', '2022-03-11 19:35:03', 9),
(314, 'Quần khaki bé trai ', 277000, 245000, 'Quần khaki bé trai 249.jpg', '', 0, '2022-03-11 19:36:06', '2022-03-11 19:36:06', 9),
(315, 'Chân váy bé gái cotton USA phối lưới ', 286000, 251000, 'Chân váy bé gái cotton USA phối lưới 249.jpg', '', 0, '2022-03-11 19:36:34', '2022-03-11 19:36:34', 9),
(316, 'Áo polo bé trai SW ', 209000, 174000, 'Áo polo bé trai SW 179.jpg', '', 0, '2022-03-11 19:37:11', '2022-03-11 19:37:11', 9),
(317, 'Áo sơ mi bé trai interlock', 307000, 274000, 'Áo sơ mi bé trai interlock 279.jpg', '', 0, '2022-03-11 19:37:34', '2022-03-11 19:37:34', 9),
(319, 'Áo polo bé trai dài tay', 340000, 300000, 'Áo polo bé trai dài tay 299.jpg', '', 0, '2022-03-11 19:39:13', '2022-03-11 19:39:13', 9),
(320, 'Áo sơ mi bé trai ', 299000, 249000, 'Áo sơ mi bé trai 249.jpg', '', 0, '2022-03-11 19:39:36', '2022-03-11 19:39:36', 9),
(321, 'Áo sơ mi bé trai dài tay ', 3250000, 299000, 'Áo sơ mi bé trai dài tay 299.jpg', '', 0, '2022-03-11 19:39:53', '2022-03-11 19:39:53', 9),
(322, 'Áo sơ mi bé trai hoạ tiết', 250000, 200000, 'Áo sơ mi bé trai hoạ tiết 199.jpg', '', 0, '2022-03-11 19:40:36', '2022-03-11 19:40:36', 9),
(323, 'Quần cullotes nhung bé gái ', 502000, 448000, 'Quần cullotes nhung bé gái 449.jpg', '', 0, '2022-03-11 19:41:54', '2022-03-11 19:41:54', 9),
(324, 'Váy cotton hình Hello Kitty', 235000, 195000, 'Váy cotton bé gái in hình Hello Kitty 199.jpg', '', 0, '2022-03-11 19:47:16', '2022-03-11 19:47:16', 9),
(325, 'Chân váy jeans bé gái đuôi cá ', 300000, 245000, 'Chân váy jeans bé gái đuôi cá 249.jpg', '', 0, '2022-03-11 19:42:45', '2022-03-11 19:42:45', 9),
(326, 'Áo sơ mi kẻ bé gái dài tay ', 368000, 345000, 'Áo sơ mi kẻ bé gái dài tay 349.jpg', '', 0, '2022-03-11 19:43:14', '2022-03-11 19:43:14', 9),
(328, 'Váy nỉ bé gái in hình pony', 374000, 300000, 'Váy nỉ bé gái in hình pony 299.jpg', '', 0, '2022-03-11 19:44:10', '2022-03-11 19:44:10', 9),
(329, 'Áo sơ mi bé trai dài tay', 459000, 400000, 'Áo sơ mi bé trai dài tay 399.jpg', '', 0, '2022-03-11 19:44:48', '2022-03-11 19:44:48', 9),
(331, 'Áo sơ mi bé gái hoạ tiết buộc vạt ', 248000, 204000, 'Áo sơ mi bé gái hoạ tiết buộc vạt 199.jpg', '', 1, '2022-03-11 19:45:18', '2022-03-11 19:45:18', 9),
(332, 'Áo polo bé trai cr', 268000, 226000, 'Áo polo bé trai cr 229.jpg', '', 62, '2022-03-11 19:45:41', '2022-03-11 19:45:41', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `size` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dress` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tell` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vaitro` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `hoten`, `email`, `dress`, `tell`, `vaitro`) VALUES
(1, 'thanhloan', '123456789', 'Thanh Loan', 'thanhloan128@gmail.com', 'Vĩnh Phúc', '0372039349', '1'),
(2, 'loanhihi', 'xinchao', 'Nguyễn Loan', 'xinchao@gmail.com', 'Hà Nội', '0267542580', '1'),
(3, 'phuongmai', 'phuongmai28', 'Lê Phương Mai', 'phuongmai288@gmail.com', 'Hải Dương', '03845869526', '1'),
(4, 'thuyhien', 'thuyhien144', 'Thúy Hiền', 'thuyhien1442k@gmail.com', 'Nam Định', '09524863218', ''),
(5, 'penguinxinchao', '3pengunin', 'PENGUIN', 'penguin@gmail.com', 'Hà Nội', '0372039349', ''),
(9, 'loan128', 'loan128', 'Nguyễn Thị Thanh Loan', 'loan128@gmail.com', 'Hà Đông - Hà Nội', '033641852', ''),
(10, 'Pe Ngu In', '123456', 'Pe Thị Ngu In', 'penguin32@gmail.com', 'Mê Linh - Hà Nội', '0236459624', ''),
(11, 'Thanh Loan', '123456', 'Loan Thanh ', 'loan123@gmail.com', 'Số 22 Quang Trung, Hà Đông, Hà Nội', '0728934234', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
