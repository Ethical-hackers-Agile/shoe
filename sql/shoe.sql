-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2023 lúc 07:26 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `shoe_color` varchar(255) NOT NULL,
  `shoe_size` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `shoe_id`, `shoe_color`, `shoe_size`, `status`) VALUES
(40, 19, 37, 'Màu đen', 6, 3),
(41, 19, 39, 'Màu cam', 6, 2),
(42, 19, 38, 'Màu cam', 6, 2),
(43, 19, 37, 'Màu đen', 6, 3),
(44, 19, 38, 'Xanh Dương', 6, 2),
(45, 19, 47, 'Trắng', 6, 2),
(47, 19, 38, 'Xanh Dương', 6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'men'),
(2, 'women'),
(3, 'kids'),
(4, 'nike'),
(5, 'adidas');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `cart_id`, `date`) VALUES
(25, 37, '2023-07-10'),
(26, 40, '2023-07-11'),
(28, 42, '2023-07-11'),
(29, 43, '2023-07-11'),
(30, 44, '2023-07-11'),
(31, 45, '2023-07-13'),
(32, 46, '2023-07-13'),
(33, 47, '2023-07-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoe`
--

CREATE TABLE `shoe` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` bigint(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `review` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shoe`
--

INSERT INTO `shoe` (`id`, `name`, `price`, `sale`, `size`, `category_id`, `color`, `review`) VALUES
(31, 'GIÀY ULTRABOOST LIGHT 23', 5200000, 10, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK', 5, 'Xanh Lục', 'ĐÔI GIÀY CHẠY BỘ THƯỜNG NGÀY SIÊU NHẸ CÓ SỬ DỤNG SỢI PARLEY OCEAN PLASTIC.'),
(32, 'GIÀY ULTRA 4D', 6000000, 20, '3.5UK, 4UK, 4.5UK, 5UK, 6.5UK, 7UK, 8UK, 9UK, 9.5UK, 10UK, 11UK, 11.5UK, 12UK', 5, 'Trắng kem', 'ĐÔI GIÀY HẤP THỤ LỰC TÁC ĐỘNG, CÓ SỬ DỤNG CHẤT LIỆU TÁI CHẾ.'),
(33, 'GIÀY ADIZERO BOSTON 12', 4000000, 30, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 5, 'Xanh Lục', 'ĐÔI GIÀY CHẠY BỘ CỰ LY TRUNG BÌNH TỚI CỰ LY DÀI, CÓ SỬ DỤNG CHẤT LIỆU TÁI CHẾ.'),
(36, 'Nike Invincible 3', 5279000, 10, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 4, 'Trắng kem', 'With maximum cushioning to support every mile, the Invincible 3 gives you our highest level of comfort underfoot to help you stay on your feet today, tomorrow and beyond.'),
(37, 'Nike Pegasus FlyEase SE', 3519000, 15, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 4, 'Màu đen', 'Let the Pegasus FlyEase help you ascend to new heights. '),
(38, 'Nike React Pegasus Trail 4 SE', 3829000, 25, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 4, 'Xanh Dương', 'Running is your daily ritual, taking you from road to trail as you seek out new adventures and goals. Let the Nike React Pegasus Trail 4 take you there and back again with its supportive and springy feel.'),
(41, 'GIÀY CAPTOE OXFORD', 4790000, 20, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 1, 'Màu nâu', 'Da bò thuộc thảo mộc của nhà thuộc da Mastrotto – Italia'),
(42, 'GIÀY DOUBLE MONK STRAP', 1980000, 5, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 1, 'Màu nâu', 'Da bò cao cấp'),
(43, 'GIÀY LƯỜI HORSEBIT LOAFERS', 1690000, 50, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 1, 'Màu đen', ' Da bò cao cấp'),
(45, 'Giày Sandal Quai Ngang Khoá Trang Trí', 548000, 10, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 2, 'Trắng', 'Cao gót'),
(46, 'Giày Búp Bê Mũi Nhọn Trang Trí Logo Cách Điệu', 450000, 0, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 2, 'Trắng', 'Cao gót'),
(47, 'Giày Sandal Cao Gót MWC', 250000, 0, '6UK, 6.5UK, 7UK, 7.5UK, 8UK, 8.5UK, 9UK, 9.5UK, 10UK, 10.5UK, 11UK, 11.5UK, 12UK', 2, 'Trắng', 'Cao gót');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoe_image`
--

CREATE TABLE `shoe_image` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `link_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shoe_image`
--

INSERT INTO `shoe_image` (`id`, `shoe_id`, `link_image`) VALUES
(48, 33, 'imageShoe/647e496dc7cb47a99cf4fee6c03c9e38_9366.webp'),
(49, 33, 'imageShoe/939f8bb2f13c4b099619ce07264fa866_9366.webp'),
(50, 34, 'imageShoe/3d2b554822964b9781e84feabe266fd0_9366.webp'),
(51, 34, 'imageShoe/40c42f2e48764e4eab380464ac2f0e22_9366.webp'),
(52, 34, 'imageShoe/3d2b554822964b9781e84feabe266fd0_9366.webp'),
(53, 34, 'imageShoe/3a98508dba7a43a3ba48ea283a5db687_9366.webp'),
(54, 35, 'imageShoe/b276123a9bba4fa28d3b0a9f21e2a7cc_9366.webp'),
(55, 35, 'imageShoe/de2b3b7a109c4a62a9045e802b15ef09_9366.webp'),
(56, 35, 'imageShoe/91f64fa6b8a84cba8bb12faeff0a39e4_9366.webp'),
(57, 36, 'imageShoe/0a883b6f-1a3c-42d7-943e-a2e4a4107b18.webp'),
(58, 36, 'imageShoe/96d63f4b-b42a-4de4-bd12-0fbdc5ecf81c.webp'),
(59, 36, 'imageShoe/3f4571b9-bbb9-4343-96d3-6467cb217bff.webp'),
(60, 37, 'imageShoe/664f9edf-23d3-4ce0-ad29-53bd49123080.webp'),
(61, 37, 'imageShoe/7b12d5de-4b27-41ec-b05f-fa3bdb71e4d4.webp'),
(62, 37, 'imageShoe/8d530fea-4bc4-496e-a98e-878a79a3010d.webp'),
(63, 38, 'imageShoe/react-pegasus-trail-4-se-trail-running-shoes-qQ8LZG.jpg'),
(64, 38, 'imageShoe/react-pegasus-trail-4-se-trail-running-shoes-qQ8LZG.png'),
(65, 38, 'imageShoe/react-pegasus-trail-4-se-trail-running-shoes-qQ8LZG (1).png'),
(66, 39, 'imageShoe/kiger-9-trail-running-shoes-pWCp9q.jpg'),
(67, 39, 'imageShoe/f0c70389-243e-44cf-8dd7-b9cb707b8504.webp'),
(68, 39, 'imageShoe/f93f0833-db1f-42e6-ab1a-2edd2aa048b9.webp'),
(69, 40, 'imageShoe/bae84e5b-dae6-4688-9ea7-fdab29f2997b.webp'),
(70, 40, 'imageShoe/f4aad872-03c1-41de-9c38-692a71cdf599.webp'),
(71, 40, 'imageShoe/0475b053-b1db-4485-a538-6da406860c9d.webp'),
(72, 41, 'imageShoe/ZOF01e-trang-768x768.png'),
(73, 41, 'imageShoe/ZOF01d-600x600.jpg'),
(74, 41, 'imageShoe/ZOF01b-600x600.jpg'),
(75, 42, 'imageShoe/MSF05a-600x600.jpg'),
(76, 42, 'imageShoe/MSF05-5-scaled-1-600x600.jpg'),
(77, 42, 'imageShoe/MSF05a-600x600.jpg'),
(78, 43, 'imageShoe/HLF17-Recovered-600x600.jpg'),
(79, 43, 'imageShoe/HLF17-1-600x600.jpg'),
(80, 43, 'imageShoe/HLF17-6-scaled-1-600x600.jpg'),
(81, 44, 'imageShoe/HLF16.jpg.png'),
(82, 44, 'imageShoe/HLF16a.jpg-768x768.png'),
(83, 44, 'imageShoe/HLF16e-600x600.jpg'),
(84, 31, 'imageShoe/42a4b3c24afb449581e9a2bdd5e3f9f3_9366.webp'),
(85, 31, 'imageShoe/Giay_Ultraboost_Light_23_DJen_HP6443_HM4.jpg'),
(86, 45, 'imageShoe/trang_sd09114_21_20230529090822_e1703df8914c4aa09aafa9e294623443_master.webp'),
(87, 45, 'imageShoe/trang_sd09114_22_20230529090822_3618e93ad0624b40b863ed8ffa85730b_master.webp'),
(88, 45, 'imageShoe/trang_sd09114_24_20230529090822_ad65aa2f11844b0398d94c995ff4e394_master.webp'),
(89, 46, 'imageShoe/xanh-nhat_bb03110_1_20230313094032_fb0825359df34ec8_c7192379c30d4a75b61caea234431c5f_master.webp'),
(90, 46, 'imageShoe/xanh-nhat_bb03110_2_20230314140830_accaa3f56d3e4cd1_80eedbcd4c854c3ba7732dcfc1590dbd_master.webp'),
(91, 46, 'imageShoe/xanh-nhat_bb03110_2_20230313094033_d5dbc33bdc9443c9_50bf4d3928c64f1096357aa2140c824e_master.webp'),
(92, 47, 'imageShoe/mwc.jpg'),
(93, 47, 'imageShoe/mwc (1).jpg'),
(94, 47, 'imageShoe/mwc (2).jpg'),
(95, 32, 'imageShoe/react-pegasus-trail-4-se-trail-running-shoes-qQ8LZG.jpg'),
(96, 32, 'imageShoe/react-pegasus-trail-4-se-trail-running-shoes-qQ8LZG (1).png'),
(97, 32, 'imageShoe/react-pegasus-trail-4-se-trail-running-shoes-qQ8LZG.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `dob`, `address`, `role`, `gender`, `email`, `phone`) VALUES
(19, 'Nhutn', '25d55ad283aa400af464c76d713c07ad', 'Phạm Minh Nhựt', '2002-11-25', '5/1 tùng lâm p7', 1, 1, 'phamminhnhut859@gmail.com', '0889821918');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shoe`
--
ALTER TABLE `shoe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shoe_image`
--
ALTER TABLE `shoe_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `shoe`
--
ALTER TABLE `shoe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `shoe_image`
--
ALTER TABLE `shoe_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
