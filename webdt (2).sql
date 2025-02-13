-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2023 lúc 03:14 PM
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
-- Cơ sở dữ liệu: `webdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id_blog`, `title`, `img`, `content`) VALUES
(3, 'Iphone 14 là phiên bản cao cấp nhất được ra mắt năm 2022', 'data/blog/ip14pr.jfif', 'Iphone 14 pro max là phiên bản cao cấp nhất được ra mắt vào năm 2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `id_hoadon` int(11) DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `id_product`, `soluong`, `id_hoadon`, `status`) VALUES
(64, 4, 34, 1, 4090, 'Thanh Toán Khi Nhận Hàng'),
(65, 4, 33, 1, 4090, 'Thanh Toán Khi Nhận Hàng'),
(66, 4, 27, 3, 4284, 'Thanh Toán Khi Nhận Hàng'),
(67, 4, 28, 2, 4284, 'Thanh Toán Khi Nhận Hàng'),
(68, 4, 29, 1, 4481, 'GD Thanh cong qua :NCB'),
(69, 4, 25, 12, 4481, 'GD Thanh cong qua :NCB'),
(76, 7, 33, 2, 4525, 'GD Thanh cong qua :NCB'),
(78, 1, 4, 1, 5557, 'GD Thanh cong qua :NCB'),
(83, 4, 28, 1, 5158, 'GD Thanh cong qua :NCB'),
(84, 7, 34, 1, 4575, 'GD Thanh cong qua :NCB'),
(85, 7, 33, 1, 4673, 'GD Thanh cong qua :NCB'),
(86, 7, 2, 1, 4746, 'GD Thanh cong qua :NCB'),
(87, 7, 2, 1, 4816, 'GD Thanh cong qua :NCB'),
(88, 7, 2, 1, 5015, 'Thanh Toán Khi Nhận Hàng'),
(89, 7, 34, 1, 5344, 'GD Thanh cong qua :NCB'),
(90, 7, 33, 1, 5533, 'GD Thanh cong qua :NCB'),
(91, 1, 28, 1, 5689, 'GD Thanh cong qua :NCB'),
(92, 1, 34, 1, 5730, 'GD Thanh cong qua :NCB'),
(93, 1, 34, 2, 5911, 'GD Thanh cong qua :NCB'),
(107, 8, 32, 1, 0, '0'),
(109, 8, 31, 1, 0, '0'),
(110, 1, 32, 4, 0, '0'),
(111, 1, 33, 2, 0, '0'),
(114, 1, 31, 2, 0, '0'),
(116, 1, 34, 1, 0, '0'),
(117, 10, 33, 1, 0, '0'),
(118, 10, 32, 1, 0, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendm` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `tendm`) VALUES
(1, 'Điện thoại'),
(2, 'Máy tính'),
(3, 'Phụ kiện'),
(4, 'Sửa chữa - bảo hành'),
(5, 'Tuyển dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dungluong`
--

CREATE TABLE `dungluong` (
  `id_dungt` int(11) NOT NULL,
  `sodungt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dungluong`
--

INSERT INTO `dungluong` (`id_dungt`, `sodungt`) VALUES
(1, '1GB'),
(2, '2GB'),
(3, '4GB'),
(4, '16GB'),
(5, '32GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsx`
--

CREATE TABLE `hangsx` (
  `id_hang` int(11) NOT NULL,
  `tenhang` text NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hangsx`
--

INSERT INTO `hangsx` (`id_hang`, `tenhang`, `img`) VALUES
(1, 'Hãng Khác', '0'),
(2, 'Iphone', 'data/logo/logotao.jpeg'),
(3, 'Samsung', 'data/logo/lgsamsung.jpg'),
(4, 'realme', 'data/logo/lgrealme.png'),
(5, 'Vivo', 'data/logo/lgvivo.jpg'),
(6, 'Xiaomi', 'data/logo/lgxiaomi.jpg'),
(7, 'Oppo', 'data/logo/lgoppo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hedieuhanh`
--

CREATE TABLE `hedieuhanh` (
  `id_hopso` int(11) NOT NULL,
  `tenhs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hedieuhanh`
--

INSERT INTO `hedieuhanh` (`id_hopso`, `tenhs`) VALUES
(1, 'IOS10'),
(2, 'iOS11'),
(3, 'ios12'),
(4, 'IOS13'),
(5, 'IOS14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` text NOT NULL,
  `hotennn` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` text NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `id_user`, `status`, `hotennn`, `diachi`, `sdt`, `total`) VALUES
(4000, 0, 'admin Vip', '', '', '', 0),
(4090, 4, 'Thanh Toán Khi Nhận Hàng', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 40525),
(4284, 4, 'Thanh Toán Khi Nhận Hàng', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 16000),
(4481, 4, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 161008),
(4525, 7, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 25000),
(4575, 7, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 28025),
(4673, 7, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 12500),
(4746, 7, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 25000),
(4816, 7, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 25000),
(5015, 7, 'Thanh Toán Khi Nhận Hàng', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 25000),
(5158, 4, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 3500),
(5344, 7, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 28025),
(5533, 7, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 12500),
(5557, 1, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 30000),
(5689, 1, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 3500),
(5730, 1, 'GD Thanh cong qua :NCB', 'phạm quang tiền', '22 Lang Ha', '0934998386', 28025),
(5911, 1, 'GD Thanh cong qua :NCB', 'Bạn Có Thể Ghi Chi Tiết', '22 Lang Ha', '0934998386', 56050);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `id_mau` int(11) NOT NULL,
  `mamau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`id_mau`, `mamau`) VALUES
(1, 'Xanh'),
(2, 'Đỏ'),
(3, 'Vàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `tensp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `dungt` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kicht` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trongl` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `id_hang` int(11) NOT NULL,
  `chip` varchar(50) DEFAULT NULL,
  `hedieuhanh` varchar(50) DEFAULT NULL,
  `camtruoc` varchar(50) DEFAULT NULL,
  `camsau` varchar(50) DEFAULT NULL,
  `manhinh` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `id_mau` int(11) NOT NULL,
  `id_hopso` int(11) NOT NULL,
  `id_dungt` int(11) NOT NULL,
  `sale` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `tensp`, `img`, `gia`, `dungt`, `kicht`, `trongl`, `id_danhmuc`, `id_hang`, `chip`, `hedieuhanh`, `camtruoc`, `camsau`, `manhinh`, `pin`, `id_mau`, `id_hopso`, `id_dungt`, `sale`) VALUES
(1, 'Iphone 11', 'data/imgproduct/ip11.jpeg', 4300, '64gb', '150.9 x 75.7 x 8.3mm', '50gram', 1, 1, '<br /><b>Warning</b>:  Undefined array key ', '<br /><b>Warning</b>:  Undefined array key ', '<br /><b>Warning</b>:  Undefined array key ', '<br /><b>Warning</b>:  Undefined array key ', 'a', '<br /><b>Warning</b>:  Undefined array key ', 1, 5, 2, 10),
(2, 'Iphone 12 Promax', 'data/imgproduct/ip12prm.jpeg', 2500, '128gb', '153.9 x 76.7 x 8.3mm', '100gram', 2, 3, 'apple1', 'IOS11', '12mp', '12mp', 'ApoLet', '300 mah', 1, 5, 3, 0),
(3, 'Iphone 8 đen', 'data/imgproduct/ip8den.jfif', 1950, '64GB', '121mm x 57mm', '50gram', 3, 2, 'apple', 'IoS10', '12mp', '24mp', 'Apolet', '560 mah', 3, 4, 2, 0),
(4, 'Iphone 8 đỏ', 'data/imgproduct/ip8do.jfif', 30000, '64GB', '124mm x 68mm', '100gram', 3, 7, 'apple', 'ios', '24mp', '12mp', 'ABS', '700 Mã', 2, 5, 4, 0),
(5, 'Iphone 7a', 'data/imgproduct/iphone7.jpg', 35000, '64GB', '129mm x 71mm', '100gram', 3, 7, 'apple', 'IOS10', '24mp', '12mp', 'ABS', '700 Mã', 2, 1, 3, 0),
(7, 'Iphone 6s', 'data/imgproduct/ip6s.png', 4300, '16GB', '98mm x 45mm', '100gram', 2, 2, 'apple', 'IOS10', '24mp', '12mp', 'Thường', '300 Mã', 1, 4, 3, 0),
(8, 'Iphone 6s Plus', 'data/imgproduct/6spl.jpg', 32000, '16GB', '111mm x 68mm', '150gram', 1, 3, 'apple3', 'IOS14', '12mp', '12mp', 'Thường', '250 Mã', 1, 4, 2, 0),
(9, 'Ip x đen 1', 'data/imgproduct/x đen.jfif', 12500, '64GB', '99mm x 56mm', '100gram', 2, 4, 'apple3', 'IOS11', '12mp', '11mp', 'Apolet', '320 mah', 3, 4, 4, 10),
(10, 'Iphone 11 đen', 'data/imgproduct/11 đen.jfif', 29500, '128GB', '121mm x 57mm', '200gram', 3, 1, 'apple', 'IOS10', '24mp', '12mp', 'lô', '560 mah', 1, 5, 5, 0),
(11, 'Iphone 11 trắng', 'data/imgproduct/11 trăng.jfif', 30000, '300cc', '124mm x 68mm', '156kg', 3, 2, '98mm', '40mm', 'Full Xăng Điện Tử', '6 Cấp', 'ABS', '700 Mã', 1, 5, 4, NULL),
(12, 'Iphone 12', 'data/imgproduct/12prt.jfif', 3500, '450cc', '129mm x 71mm', '145kg', 3, 2, '98mm', '42mm', 'Xăng ', '6 Cấp', 'ABS', '700 Mã', 1, 4, 1, NULL),
(13, 'Iphone X trắng', 'data/imgproduct/xtrang.jpeg', 11008, '1000cc', '136mm x 81mm', '212kg', 3, 6, '99mm', '43mm', 'Xăng', ' 6Cấp', 'ABS', '1043 Mã', 3, 3, 4, NULL),
(14, 'Iphone 14 pro đen', 'data/imgproduct/ip14pr.jfif', 43000, '150cc', '98mm x 45mm', '124kg', 1, 1, '87mm', '38mm', 'Xăng', 'Ga', 'Thường', '300 Mã', 1, 3, 4, NULL),
(15, 'Iphone 14 pr đỏ', 'data/imgproduct/ip14do.jpg', 32000, '125cc', '111mm x 68mm', '128kg', 2, 1, '87mm', '36mm', 'Xăng', ' Cấp', 'Thường', '250 Mã', 2, 5, 1, NULL),
(16, 'Iphone 14 pr trắng', 'data/imgproduct/ip14trang.jfif', 32000, '125cc', '111mm x 68mm', '128kg', 3, 2, '87mm', '36mm', 'Xăng', ' Cấp', 'Thường', '250 Mã', 3, 1, 4, NULL),
(17, 'Iphone 13 pro max', 'data/imgproduct/ip13pro max.jpeg', 12500, '210cc', '99mm x 56mm', '90kg', 1, 4, '85mm', '30mm', 'Xăng', 'Ga', 'Thường', '320 mã', 2, 4, 3, NULL),
(18, 'Iphone 7 plus 64gb', 'data/imgproduct/ip77.jfif', 2950, '375cc', '121mm x 57mm', '135kg', 3, 2, '95mm', '33mm', 'xăng', '5 Cấp', 'ABS', '560 mã', 1, 3, 5, NULL),
(19, 'Iphone 7 PLus 128gb', 'data/imgproduct/ip777.jfif', 3000, '300cc', '124mm x 68mm', '156kg', 3, 3, '98mm', '40mm', 'Full Xăng Điện Tử', '6 Cấp', 'ABS', '700 Mã', 0, 0, 0, NULL),
(20, 'iphone 11', 'data/imgproduct/11 trăng.jfif', 1000, '64gb', '129mm x 71mm', '145gram', 3, 6, '98mm', '42mm', 'Xăng ', '6 Cấp', 'ABS', '700 Mã', 2, 4, 1, NULL),
(21, 'Iphone 13 pro', 'data/imgproduct/ip13.jpg', 2000, '128gb', '136mm x 81mm', '212kg', 3, 6, '99mm', '43mm', 'Xăng', ' Cấp', 'ABS', '1043 Mã', 3, 3, 2, NULL),
(22, 'Iphone 8 +', 'data/imgproduct/ip8do.jfif', 43000, '150cc', '98mm x 45mm', '124kg', 1, 4, '87mm', '38mm', 'Xăng', '5 Cấp', 'Thường', '300 Mã', 3, 5, 1, NULL),
(23, 'IPhone 14 trắng', 'data/imgproduct/ip14trang.jfif', 32000, '125cc', '111mm x 68mm', '128kg', 3, 2, '87mm', '36mm', 'Xăng', ' Cấp', 'Thường', '250 Mã', 2, 4, 2, NULL),
(24, 'ip14 đen', 'data/imgproduct/ip14pr.jfif', 320, '125cc', '111mm x 68mm', '128kg', 2, 3, '87mm', '36mm', 'Xăng', ' Cấp', 'Thường', '250 Mã', 1, 4, 3, NULL),
(25, 'Iphone 14 Pro max', 'data/imgproduct/ip14do.jpg', 12500, '210cc', '99mm x 56mm', '90kg', 5, 5, '85mm', '30mm', 'Xăng', '5 Cấp', 'Thường', '320 mã', 2, 5, 2, NULL),
(26, 'IPhone XR', 'data/imgproduct/xr.png', 2950, '128gb', '121mm x 57mm', '135gram', 1, 4, '95mm', '33mm', 'xăng', '5 Cấp', 'ABS', '560 mã', 1, 3, 2, NULL),
(27, 'Iphone 14 Pro đen', 'data/imgproduct/ip14pr.jfif', 3000, '64gb', '124mm x 68mm', '156gram', 3, 3, '98mm', '40mm', 'Full Xăng Điện Tử', '6 Cấp', 'ABS', '700 Mã', 3, 5, 1, NULL),
(28, 'Iphone 12 Pro', 'data/imgproduct/ip13pro max.jpeg', 3500, '128gb', '129mm x 71mm', '145kg', 1, 3, '98mm', '42mm', 'Xăng ', '6 Cấp', 'ABS', '700 Mã', 3, 4, 2, NULL),
(29, 'Iphone 13 pro max', 'data/imgproduct/12prt.jfif', 11008, '1000cc', '136mm x 81mm', '212kg', 3, 4, '99mm', '43mm', 'Xăng', ' Cấp', 'ABS', '1043 Mã', 2, 5, 2, NULL),
(30, 'Iphone 14 Xám', 'data/imgproduct/ipxam.jfif', 4300, '150cc', '98mm x 45mm', '124kg', 4, 1, '87mm', '38mm', 'Xăng', '5 Cấp', 'Thường', '300 Mã', 2, 4, 1, NULL),
(31, 'Iphone 14 Pink', 'data/imgproduct/iphong.jfif', 32000, '128gb', '1121mm x 68mm', '200gram', 4, 1, 'apple', 'IOS15', '24mp', '12mp', 'ApoLet', '250 Mah', 2, 1, 3, 0),
(32, 'Iphone 14 Black', 'data/imgproduct/ipden.jfif', 32000, '128gb', '111mm x 68mm', '100gram', 3, 4, 'apple', 'IOS11', '24mp', ' 12mp', 'apolet', '250 Mah', 3, 4, 2, 0),
(33, 'Iphone 14 Red', 'data/imgproduct/ipdo.jfif', 1250, '128gb', '9mm x 5mm', '100gram', 3, 6, 'apple 2', 'IOS13', '24mp', '12mp', 'ApoLet', '320 mah', 3, 2, 4, 0),
(34, 'Iphone14 xanh', 'data/imgproduct/ipxanh.jfif', 1000, '128gb', '11mm x 5mm', '50gram', 3, 6, 'apple3', 'IOS14', 'x24mp', '12mp', 'apolet', '560 mah', 3, 5, 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(11) NOT NULL,
  `link` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id_slide`, `link`) VALUES
(1, 'data/slide/sl5.png'),
(2, 'data/slide/sl6.png'),
(3, 'data/slide/sl8.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pass` text NOT NULL,
  `img` text DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `level` int(11) DEFAULT NULL,
  `gmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `username`, `pass`, `img`, `name`, `level`, `gmail`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'data/user/shelby.jpg', 'Đỗ xuân nam', 1, 'nam@gmail.com'),
(4, 'hihihi', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'Nguyễn Công MInh', 0, 'aaaa@gmail.com'),
(5, 'minh', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'Nguyen Van Trung', NULL, 'nguyen@gmail.com'),
(6, 'u', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'dsd', NULL, 'aaaaa'),
(8, 'doxuannam', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'Đỗ xuân nam', NULL, 'nam@gmail.com'),
(10, 'admin111', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Đỗ xuân nam', NULL, 'sad@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `dungluong`
--
ALTER TABLE `dungluong`
  ADD PRIMARY KEY (`id_dungt`);

--
-- Chỉ mục cho bảng `hangsx`
--
ALTER TABLE `hangsx`
  ADD PRIMARY KEY (`id_hang`);

--
-- Chỉ mục cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  ADD PRIMARY KEY (`id_hopso`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`id_mau`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `dungluong`
--
ALTER TABLE `dungluong`
  MODIFY `id_dungt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hangsx`
--
ALTER TABLE `hangsx`
  MODIFY `id_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  MODIFY `id_hopso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000000;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `id_mau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
