-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 16 Juillet 2016 à 16:59
-- Version du serveur :  10.1.10-MariaDB
-- Version de PHP :  5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tgdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `diachi`
--

CREATE TABLE `diachi` (
  `stt` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `chungnhan` text COLLATE utf8_unicode_ci NOT NULL,
  `chiutrachnhiem` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `diachi`
--

INSERT INTO `diachi` (`stt`, `ten`, `diachi`, `chungnhan`, `chiutrachnhiem`) VALUES
(1, ' © 2014. Công ty cổ phần Thế Giới Di Động.', 'Lầu 5 Etown 2, 364 Cộng Hòa, Q.Tân Bình, TP.Hồ Chí Minh.', 'GP số 22/GP-ICP-STTTT do Sở TTTT TP HCM cấp ngày 20/03/2012', 'Điêu Chính Hải Triều');

-- --------------------------------------------------------

--
-- Structure de la table `gioithieu`
--

CREATE TABLE `gioithieu` (
  `stt` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `chuthich` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `gioithieu`
--

INSERT INTO `gioithieu` (`stt`, `ten`, `chuthich`, `link`) VALUES
(1, 'Giới thiệu công ty', '(mwg.vn)', 'http://mwg.vn/'),
(2, 'Tuyển dụng', '', 'http://vieclam.thegioididong.com/'),
(3, 'Gửi góp ý, khiếu nại', '', 'http://localhost:9090/lien-he'),
(4, 'Tìm siêu thị', '(695 shop)', '/he-thong-sieu-thi-the-gioi-di-dong');

-- --------------------------------------------------------

--
-- Structure de la table `hotro`
--

CREATE TABLE `hotro` (
  `stt` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `hint` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `hotro`
--

INSERT INTO `hotro` (`stt`, `ten`, `hint`, `link`) VALUES
(1, 'Tìm hiểu về mua trả góp', 'Hướng dẫn mua trả góp', '/tra-gop'),
(2, 'Tìm trung tâm bảo hành hãng', 'Tìm trung tâm bảo hành', '/bao-hanh'),
(3, 'Chính sách đổi trả', 'Chính sách đổi trả', '/chinh-sach-bao-hanh-san-pham'),
(4, 'Hướng dẫn mua online', 'Hướng dẫn mua online', '/huong-dan-mua-hang'),
(5, 'Giao hàng & Thanh toán', 'Giao hàng &amp; Thanh toán', '/giao-hang'),
(6, 'Bán hàng doanh nghiệp', 'Mua hàng doanh nghiệp', '/b2b'),
(7, 'Phiếu mua hàng\r\n', 'Phiếu mua hàng', '/phieu-mua-hang'),
(8, 'In hóa đơn điện tử\r\n', 'In hóa đơn điện tử', '//hddt.thegioididong.com'),
(9, 'Quy chế hoạt động', 'Quy chế hoạt động', '/tos'),
(10, 'Chất lượng phục vụ\r\n', 'Chất lượng phục vụ', '/chat-luong-phuc-vu');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `stt` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `class` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`stt`, `ten`, `hinhanh`, `link`, `class`) VALUES
(1, 'Điện thoại', 'icontgdd-mobile', '/dtdd', 'mobile'),
(2, 'Tablet', 'icontgdd-tablet', '/may-tinh-bang', 'tablet'),
(3, 'Laptop', 'icontgdd-laptop', '/laptop', 'laptop'),
(4, 'Phụ kiện', 'icontgdd-phukien', '/phu-kien', 'phukien'),
(5, 'Đã sử dụng', 'icontgdd-maydoitra', '/may-doi-tra', 'maydoitra'),
(6, 'Sim, thẻ', 'icontgdd-simcard', '/sim-so-dep', 'simcard'),
(7, 'Công Nghệ', 'icontgdd-news', '/tin-tuc', 'news'),
(8, 'Hỏi đáp', 'icontgdd-ask', '/hoi-dap', 'ask'),
(9, 'Game, App', 'icontgdd-gameapp', '/game-ung-dung', 'gameapp'),
(10, 'Khuyến mãi', 'icontgdd-promo', '/khuyen-mai', 'promo');

-- --------------------------------------------------------

--
-- Structure de la table `quangcao`
--

CREATE TABLE `quangcao` (
  `stt` int(11) NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `quangcao`
--

INSERT INTO `quangcao` (`stt`, `hinhanh`, `link`) VALUES
(1, '//cdn1.tgdd.vn/qcao/29_04_2016_12_16_28_SIS-Samsung-385-170.jpg', '/samsung'),
(2, '//cdn4.tgdd.vn/qcao/04_03_2016_11_54_56_TGDD-Chinhsach-1-doi-1-385-170.jpg', '/mua-online-gia-re-hon');

-- --------------------------------------------------------

--
-- Structure de la table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(15) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `gia` text COLLATE utf8_unicode_ci NOT NULL,
  `nutbam` text COLLATE utf8_unicode_ci NOT NULL,
  `luotnguoi` text COLLATE utf8_unicode_ci NOT NULL,
  `manhinh` text COLLATE utf8_unicode_ci NOT NULL,
  `hdh` text COLLATE utf8_unicode_ci NOT NULL,
  `cpu` text COLLATE utf8_unicode_ci NOT NULL,
  `camera` text COLLATE utf8_unicode_ci NOT NULL,
  `pin` text COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `ten`, `gia`, `nutbam`, `luotnguoi`, `manhinh`, `hdh`, `cpu`, `camera`, `pin`, `khuyenmai`, `hinhanh`, `link`) VALUES
(1, 'Samsung Galaxy S7 Edge', '18.490.000', 'Mua ngay', 'Hơn 900 lượt mua tuần qua', 'Quad HD, 5.5"', 'Android 6.0', '8 nhân, RAM 4 GB', '12.0 MP, 2 SIM', '3600 mAh', '', 'view\\images\\product\\samsung-galaxy-s7-edge.jpg', '/dtdd/samsung-galaxy-s7-edge'),
(2, 'Samsung Galaxy Note 4', '9.990.000₫', 'Mua ngay', 'Hơn 300 lượt mua tuần qua', 'QuadHD, 5.7 inches', 'Android 4.4 (5.1 upgrade)', '8 nhân, RAM 3GB', '16MP, 1 SIM', '3220 mAh', '', 'view\\images\\product\\samsung-galaxy-note-4.jpg', '/dtdd/samsung-galaxy-note-4'),
(3, 'iPhone 6s 16GB', '18.490.000₫', 'Trả góp 0%', 'Hơn 600 lượt mua tuần qua', 'Retina HD, 4.7 inches', 'iOS 9', 'Apple A9, RAM 2GB', '12.0MP', '1715mAh', '', 'view\\images\\product\\iphone-6s-16gb.jpg', '/dtdd/iphone-6s'),
(4, 'Lenovo VIBE K5+', '3.990.000₫', 'Mua ngay', 'Hơn 400 lượt mua tuần qua', 'FullHD, 5.0 inch', 'Android 5', '8 nhân, RAM 2 GB', '13.0 MP, 2 SIM', '2.750 mAh', '', 'view\\images\\product\\lenovo-k5-plus-2.jpg', '/dtdd/lenovo-k5-plus'),
(5, 'HTC Desire 630', '3.990.000₫', 'Đặt trước', '51 người đã đặt', 'HD, 5.0 inch', 'Android 6.0', '4 nhân, RAM 2 GB', '13.0 MP, 2 SIM', '2200 mAh', '', 'view\\images\\product\\htc-desire-630.jpg', '/dtdd/htc-desire-630'),
(6, 'Oppo F1 Plus', '9.990.000₫', 'Trả góp 0%', 'Hơn 1400 lượt mua tuần qua', 'Full HD, 5.5 inch', 'Android 5.1, 2 SIM', '8 nhân, RAM 4 GB', 'trước 16.0 MP, sau 13 MP', '2850 mAh', '', 'view\\images\\product\\oppo-f1-plus.jpg', '/dtdd/oppo-f1-plus'),
(7, 'Samsung Galaxy J5', '4.290.000₫', 'Trả góp 0%', 'Hơn 4.400 lượt mua tuần qua', 'HD, 5.0 inches', 'Android 5.1', '4 nhân 1.2GHz, RAM 1.5GB', '13MP, 2 SIM', '2600mAh', '', 'view\\images\\product\\samsung-galaxy-j5.jpg', '/dtdd/samsung-galaxy-j5'),
(8, 'iPad Mini 2 Retina 16G/Wifi', '6.990.000₫', 'Mua ngay', 'Hơn 200 lượt mua tuần qua', '7.9", Retina', 'IOS 9', '2 nhân RAM: 1 GB, ROM: 16 GB', '5 MP và 1.2 MP', '23.8 Wh', '', 'view\\images\\product\\ipad-mini-2-retina-16g.jpg', '/may-tinh-bang/ipad-mini-2-retina-16g-wifi'),
(9, 'Huawei MediaPad T1-701u', '2.090.000₫', 'Mua ngay', 'Hơn 1.300 lượt mua tuần qua', '7.0", IPS LCD', 'Android 4.4', '4 nhân RAM: 1 GB, ROM: 8 GB', '2 MP và 2 MP', '4100 mAh', '', 'view\\images\\product\\huawei-mediapad-t1-701u.jpg', 'may-tinh-bang/huawei-mediapad-t1-701u'),
(10, 'ASUS ZenPad C 7.0 (Z170CG)', '2.990.000₫', 'Mua ngay', 'Hơn 400 lượt mua tuần qua', '7.0", IPS LCD', 'Android 5.0', '4 nhân RAM: 1 GB, ROM: 8 GB', '2 MP và 0.3 MP', '13 Wh', '', 'view\\images\\product\\asus-zenpad-c-70.jpg', '/may-tinh-bang/asus-zenpad-c-70-z170cg');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `stt` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `slider`
--

INSERT INTO `slider` (`stt`, `ten`, `hinhanh`, `link`) VALUES
(1, 'Mừng Triệu Truy Cập Tặng Ngàn Ưu Đãi', 'view/images/slider/18_04_2016_17_30_31_TGDD-1M-View-800-300.jpg', '/mot-trieu-truy-cap\r\n'),
(2, 'Sắm iPhone Ưu Đãi Cực Mê', 'view/images/slider/11_04_2016_14_36_05_TGDD-iPhone6s-800-300.jpg', '/tao-giam-soc'),
(3, 'Galaxy S7 Tặng 7 Ưu Đãi Đỉnh', 'view/images/slider/05_04_2016_09_04_10_TGDD-Galaxy-S7-800-300.jpg', '/samsung'),
(4, 'Asus Laser LTE Ram 2GB, 4G LTE', 'view/images/slider/11_04_2016_10_13_46_TGDd-AsusZenfone2-800-300.jpg', 'dtdd/asus-zenfone-2-laser-lte'),
(5, 'Tai Nghe Giảm Sốc Mua Online Giảm 40$', 'view/images/slider/18_04_2016_11_19_52_TGDD-TAI-NGHE-GIAM-SOC-800-300.jpg', 'https://www.thegioididong.com/phu-kien-doi-tra');

-- --------------------------------------------------------

--
-- Structure de la table `sodienthoai`
--

CREATE TABLE `sodienthoai` (
  `stt` int(11) NOT NULL,
  `sodienthoai` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sodienthoai`
--

INSERT INTO `sodienthoai` (`stt`, `sodienthoai`) VALUES
(1, '1800.1060'),
(2, '(08) 38.102.102'),
(3, '1800.1062'),
(4, '1800.1064');

-- --------------------------------------------------------

--
-- Structure de la table `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `stt` int(11) NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `thanhtoan`
--

INSERT INTO `thanhtoan` (`stt`, `hinhanh`) VALUES
(1, 'icontgdd-tienmat'),
(2, 'icontgdd-atm'),
(3, 'icontgdd-visa'),
(4, 'icontgdd-master');

-- --------------------------------------------------------

--
-- Structure de la table `thongke`
--

CREATE TABLE `thongke` (
  `stt` int(11) NOT NULL,
  `so` text COLLATE utf8_unicode_ci NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `thongke`
--

INSERT INTO `thongke` (`stt`, `so`, `ten`, `link`) VALUES
(1, '', 'Khuyến mãi tháng 4', '/khuyen-mai'),
(2, '1740', ' điện thoại', '/dtdd'),
(3, '36', ' máy tính bảng', '/may-tinh-bang'),
(4, '56', ' laptop', '/laptop'),
(5, '1432', ' phụ kiện', '/phu-kien'),
(6, '46.871', ' máy đã sử dụng', '/may-doi-tra');

-- --------------------------------------------------------

--
-- Structure de la table `timkiemnhieu`
--

CREATE TABLE `timkiemnhieu` (
  `stt` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `timkiemnhieu`
--

INSERT INTO `timkiemnhieu` (`stt`, `ten`, `link`) VALUES
(1, 'Mobell M328', '/dtdd/mobell-m328'),
(2, 'Mobiistar Buddy', '/dtdd/mobiistar-lai-buddy'),
(3, 'Philips E105', '/dtdd/philips-e105'),
(4, 'Ốp lưng iPhone 6s', '/phu-kien/dtdd/iphone-6s?c=op-lung-flipcover'),
(5, 'Phụ kiện iPhone 6s Plus', '/phu-kien/dtdd/iphone-6s-plus-64gb'),
(6, 'Galaxy J1 2016', '/dtdd/galaxy-j1-2016'),
(7, 'Samsung Gear', '/wearable-samsung');

-- --------------------------------------------------------

--
-- Structure de la table `tintuc`
--

CREATE TABLE `tintuc` (
  `matt` int(11) NOT NULL,
  `tintuc` text COLLATE utf8_unicode_ci NOT NULL,
  `binhluanmoi` tinyint(1) NOT NULL,
  `luotbinhluan` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tintuc`
--

INSERT INTO `tintuc` (`matt`, `tintuc`, `binhluanmoi`, `luotbinhluan`, `hinhanh`, `link`) VALUES
(1, 'Top 5 smartphone dưới 5 triệu cho trả góp 0% đáng mua sắm', 1, '16', 'view/images/news/1.jpg', '/tin-tuc/top-smartphone-duoi-5-trieu-dang-mua-sam-cho-tra-gop-0-dong-821721'),
(2, 'Chính thức mở bán iPhone SE, 2000 suất nhận quà đỉnh', 1, '13', 'view/images/news/2.jpg', '/tin-tuc/dat-truoc-iphone-se-2000-suat-nhan-qua-dinh-821951'),
(3, 'Trên tay smartphone "chiến binh" với viên pin lớn nhất Thế giới', 0, '16', 'view/images/news/3.jpg', '/tin-tuc/tren-tay-smartphone-chien-binh-voi-vien-pin-lon-nhat-the-gioi-822043'),
(4, 'Tab 8 Pro đẹp như iPad, pin 5.200 mAh giá chỉ hơn 3 triệu lên kệ TGDĐ', 1, '54', 'view/images/news/4.jpg', '/tin-tuc/tab-8-pro-dep-nhu-ipad-pin-5-200-mah-gia-hon-3-trieu-len-ke-821754'),
(5, 'iPhone 6s là nguyên nhân khiến Apple xuống dốc?', 1, '21', 'view/images/news/5.jpg', '/tin-tuc/dien-thoai-iphone-6s-la-that-bai-lon-cua-apple-821956'),
(6, 'Smartphone thương hiệu Việt với RAM 3 GB, khung vỏ nhôm giảm giá sâu', 0, '14', 'view/images/news/6.jpg', '/tin-tuc/prime-x-grand-voi-ram-3-gb-khung-vo-nhom-giam-gia-sau-821953'),
(7, 'Rò rỉ bản vẽ iPhone Pro với camera kép, bỏ jack cắm tai nghe 3.5 mm', 0, '41', 'view/images/news/7.jpg', '/tin-tuc/ro-ri-ban-ve-iphone-pro-voi-camera-kep-bo-jack-cam-tai-nghe-821946');

-- --------------------------------------------------------

--
-- Structure de la table `ungdungtgdd`
--

CREATE TABLE `ungdungtgdd` (
  `stt` int(11) NOT NULL,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ungdungtgdd`
--

INSERT INTO `ungdungtgdd` (`stt`, `ten`, `link`, `hinhanh`) VALUES
(1, 'ios', '//itunes.apple.com/us/app/the-gioi-di-ong/id963448418?mt=8', 'icontgdd-ios'),
(2, 'android', '//play.google.com/store/apps/details?id=com.mwg.thegioididong', 'icontgdd-android'),
(3, 'windows', '//www.windowsphone.com/vi-vn/store/app/thegioididong/4dd2b123-1076-41ed-9fb0-30f7f567da08', 'icontgdd-windows');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `sodienthoai`
--
ALTER TABLE `sodienthoai`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `thongke`
--
ALTER TABLE `thongke`
  ADD PRIMARY KEY (`stt`);

--
-- Index pour la table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matt`);

--
-- Index pour la table `ungdungtgdd`
--
ALTER TABLE `ungdungtgdd`
  ADD PRIMARY KEY (`stt`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
