-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 05:44 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--
CREATE DATABASE IF NOT EXISTS `elaravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `elaravel`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_22_152146_create_tbl_admin_table', 1),
(5, '2020_10_23_015403_create_tbl_category_product', 2),
(6, '2020_10_23_034517_create_tbl_brand_product', 3),
(7, '2020_10_23_041403_create_tbl_product', 4),
(8, '2020_10_26_123441_tbl_customer', 5),
(9, '2020_10_26_131952_tbl_shipping', 6),
(10, '2020_10_26_132700_tbl_shipping', 7),
(11, '2020_10_28_122144_tbl_payment', 8),
(12, '2020_10_28_122346_tbl_order', 8),
(13, '2020_10_28_122408_tbl_order_detail', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'ngockha4123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Ngoc Kha', '0354452812', '2020-10-22 15:33:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_description`, `brand_status`, `created_at`, `updated_at`) VALUES
(2, 'Asus', 'Asus s15', 0, NULL, NULL),
(3, 'MSI', 'MSI', 0, NULL, NULL),
(4, 'Apple', 'Apple', 0, NULL, NULL),
(5, 'Samsung', 'Samsung', 0, NULL, NULL),
(6, 'Dell', 'Dell', 0, NULL, NULL),
(7, 'Logitech', 'Logitech', 0, NULL, NULL),
(8, 'Razer', 'Razer', 0, NULL, NULL),
(9, 'Sony', 'Sony', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_description`, `category_status`, `created_at`, `updated_at`) VALUES
(8, 'Earphone', 'Inear', 0, NULL, NULL),
(10, 'Laptop', 'Laptop', 0, NULL, NULL),
(13, 'Chu???t', 'Chu???t', 0, NULL, NULL),
(14, 'B??n ph??m', 'B??n ph??m', 0, NULL, NULL),
(15, 'Loa', 'Loa', 0, NULL, NULL),
(16, 'L??t chu???t', 'L??t chu???t', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Kha', 'ngockha4123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '+84354452812', NULL, NULL),
(18, 'L?? Th??nh ?????t', 'lethanhdat05@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0915413095', NULL, NULL),
(19, 'L?? Th??nh ?????t', 'lethanhdat0210@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0915413095', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(17, 16, 22, 18, '3,630,000.00', '??ang ch??? x??? l??', NULL, NULL),
(18, 18, 23, 19, '3,992,998.79', '??ang ch??? x??? l??', NULL, NULL),
(19, 19, 24, 20, '2,770,900.00', '??ang ch??? x??? l??', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Laptop Asus vivobook', '15000000', 4, NULL, NULL),
(2, 4, 2, 'Laptop 123', '15000000', 2, NULL, NULL),
(3, 5, 3, 'Laptop Asus vivobook', '15000000', 1, NULL, NULL),
(4, 6, 3, 'Laptop Asus vivobook', '15000000', 1, NULL, NULL),
(5, 7, 3, 'Laptop Asus vivobook', '15000000', 2, NULL, NULL),
(6, 8, 2, 'Laptop 123', '15000000', 2, NULL, NULL),
(7, 10, 1, 'Laptop Asus vivobook s15', '14000000', 5, NULL, NULL),
(8, 10, 3, 'Laptop Asus vivobook', '15000000', 1, NULL, NULL),
(9, 11, 2, 'MSI GF65', '25000000', 10, NULL, NULL),
(10, 12, 7, 'Airpod', '3000000', 2, NULL, NULL),
(11, 13, 16, 'Loa Sony KB112', '3299999', 1, NULL, NULL),
(12, 15, 37, 'Macbook Pro 2020', '35000000', 1, NULL, NULL),
(13, 17, 23, 'Loa Samsung CV-01', '3000000', 1, NULL, NULL),
(14, 18, 16, 'Loa Sony KB112', '3299999', 1, NULL, NULL),
(15, 19, 13, 'B??n ph??m Razer B504', '2290000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '2', '??ang ch??? x??? l??', NULL, NULL),
(2, '2', '??ang ch??? x??? l??', NULL, NULL),
(3, '2', '??ang ch??? x??? l??', NULL, NULL),
(4, '2', '??ang ch??? x??? l??', NULL, NULL),
(5, '2', '??ang ch??? x??? l??', NULL, NULL),
(6, '2', '??ang ch??? x??? l??', NULL, NULL),
(7, '2', '??ang ch??? x??? l??', NULL, NULL),
(8, '2', '??ang ch??? x??? l??', NULL, NULL),
(9, '2', '??ang ch??? x??? l??', NULL, NULL),
(10, '2', '??ang ch??? x??? l??', NULL, NULL),
(11, '2', '??ang ch??? x??? l??', NULL, NULL),
(12, '2', '??ang ch??? x??? l??', NULL, NULL),
(13, '2', '??ang ch??? x??? l??', NULL, NULL),
(14, '2', '??ang ch??? x??? l??', NULL, NULL),
(15, '2', '??ang ch??? x??? l??', NULL, NULL),
(16, '2', '??ang ch??? x??? l??', NULL, NULL),
(17, '2', '??ang ch??? x??? l??', NULL, NULL),
(18, '2', '??ang ch??? x??? l??', NULL, NULL),
(19, '2', '??ang ch??? x??? l??', NULL, NULL),
(20, '2', '??ang ch??? x??? l??', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_description`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Macbook Air 2020', 10, 4, 'Asus', 'alsjbd', '30000000', 'apple-macbook-air-2019-i5-16ghz-8gb-128gb-mvfm2sa-13-32-600x60098.jpg', 0, NULL, NULL),
(2, 'MSI GF65', 10, 3, 'MSI GF65', '???	CPU	AMD Ryzen 5-3500U 2.1GHz up to 3.7GHz 4MB <br>\r\n???	RAM	8GB (4GB x2) DDR4 2400MHz <br>\r\n???	???? c???ng	512GB SSD M.2 PCIE G3X2 <br>\r\n???	Card ????? h???a	Radeon??? Vega 8 Graphics <br>\r\n???	M??n h??nh	15.6\" FHD (1920 x 1080) Anti-Glare with 45% NTSC, NanoEdge <br>\r\n???	C???ng giao ti???p	2x USB 2.0, 1x USB 3.0, 1x Type C USB 3.1, HDMI, Finger Print <br>\r\n???	Audio	ASUS SonicMaster <br>\r\n???	?????c th??? nh???	MicroSD card reader <br>\r\n???	Chu????n LAN	None <br>\r\n???	Chu???n WIFI	802.11 AC (2x2) <br>\r\n???	Bluetooth	v4.2 <br>\r\n???	Webcam	HD Web Camera <br>\r\n???	H??? ??i???u h??nh	Windows 10 Home <br>\r\n???	Pin	2 Cells 37WHrs <br>\r\n???	Tro??ng l??????ng	1.7 kg <br>\r\n???	M??u s???c	B???c ??nh tr??ng <br>\r\n???	Ki??ch th??????c	357.2 x 230.4 x 19.9 (mm) <br>', '25000000', '18065-msi-ge66-raider-10sfs-474vn-115.jpg', 0, NULL, NULL),
(3, 'Asus Zenbook S455', 10, 2, 'Asus Zenbook S455', '???	CPU	AMD Ryzen 5-3500U 2.1GHz up to 3.7GHz 4MB <br>\r\n???	RAM	8GB (4GB x2) DDR4 2400MHz <br>\r\n???	???? c???ng	512GB SSD M.2 PCIE G3X2 <br>\r\n???	Card ????? h???a	Radeon??? Vega 8 Graphics <br>\r\n???	M??n h??nh	15.6\" FHD (1920 x 1080) Anti-Glare with 45% NTSC, NanoEdge <br>\r\n???	C???ng giao ti???p	2x USB 2.0, 1x USB 3.0, 1x Type C USB 3.1, HDMI, Finger Print <br>\r\n???	Audio	ASUS SonicMaster <br>\r\n???	?????c th??? nh???	MicroSD card reader <br>\r\n???	Chu????n LAN	None <br>\r\n???	Chu???n WIFI	802.11 AC (2x2) <br>\r\n???	Bluetooth	v4.2 <br>\r\n???	Webcam	HD Web Camera <br>\r\n???	H??? ??i???u h??nh	Windows 10 Home <br>\r\n???	Pin	2 Cells 37WHrs <br>\r\n???	Tro??ng l??????ng	1.7 kg <br>\r\n???	M??u s???c	B???c ??nh tr??ng <br>\r\n???	Ki??ch th??????c	357.2 x 230.4 x 19.9 (mm) <br>', '25000000', '1572345160_150864386.jpg', 1, NULL, NULL),
(6, 'Tai phone Apple', 8, 4, 'Tai phone Sony', 'Tai phone Sony', '1000000', '61AxA2YB8kL55.jpg', 0, NULL, NULL),
(7, 'Airpod', 8, 4, 'Tai nghe Apple', 'Tai nghe Apple', '3000000', 'borofone-bm30-original-series-wire-control-earphones-with-mic-headset58.jpg', 0, NULL, NULL),
(9, 'MSI LEOPARD', 10, 3, 'MSI LEOPARD', '???	CPU	AMD Ryzen 5-3500U 2.1GHz up to 3.7GHz 4MB <br>\r\n???	RAM	8GB (4GB x2) DDR4 2400MHz <br>\r\n???	???? c???ng	512GB SSD M.2 PCIE G3X2 <br>\r\n???	Card ????? h???a	Radeon??? Vega 8 Graphics <br>\r\n???	M??n h??nh	15.6\" FHD (1920 x 1080) Anti-Glare with 45% NTSC, NanoEdge <br>\r\n???	C???ng giao ti???p	2x USB 2.0, 1x USB 3.0, 1x Type C USB 3.1, HDMI, Finger Print <br>\r\n???	Audio	ASUS SonicMaster <br>\r\n???	?????c th??? nh???	MicroSD card reader <br>\r\n???	Chu????n LAN	None <br>\r\n???	Chu???n WIFI	802.11 AC (2x2) <br>\r\n???	Bluetooth	v4.2 <br>\r\n???	Webcam	HD Web Camera <br>\r\n???	H??? ??i???u h??nh	Windows 10 Home <br>\r\n???	Pin	2 Cells 37WHrs <br>\r\n???	Tro??ng l??????ng	1.7 kg <br>\r\n???	M??u s???c	B???c ??nh tr??ng <br>\r\n???	Ki??ch th??????c	357.2 x 230.4 x 19.9 (mm) <br>', '17000000', '30959_laptop_msi_gf75_thin_9rcx_432vn_140.jpg', 0, NULL, NULL),
(10, 'Chu???t Logitech G102', 13, 7, 'Chu???t Logitech G102', 'DPI: 8000', '340000', 'logitech-g102-lightsync-rgb-black-1_bf4f5774229c4a0f81b8e8a2feebe4d80.jpg', 0, NULL, NULL),
(11, 'Chu???t Razer K201', 13, 8, 'Combo Chu???t Razer K201 + L??t chu???t Razer K11', 'DPI: 8000\r\nK??ch th?????c l??t chu???t: 80cmx40cm', '700000', 'gearvn-basillik-v2-1_041840553dd0438a8ea31e55b8c64d2d26.jpg', 0, NULL, NULL),
(12, 'Chu???t Razer G304', 13, 8, 'Chu???t Razer G304', 'DPI: 10000\r\nS??? l???n click: 2 tri???u l???n nh???n', '2000000', 'gearvn-basillik-v2-1_041840553dd0438a8ea31e55b8c64d2d79.jpg', 1, NULL, NULL),
(13, 'B??n ph??m Razer B504', 14, 8, 'B??n ph??m Razer B504', 'Switch: Blue\r\nLed: RGB', '2290000', 'image65.jfif', 0, NULL, NULL),
(14, 'Laptop Dell XPS 2200', 10, 6, 'Laptop Dell XPS 2200', '??? CPU AMD Ryzen 5-3500U 2.1GHz up to 3.7GHz 4MB\r\n??? RAM 8GB (4GB x2) DDR4 2400MHz\r\n??? ???? c???ng 512GB SSD M.2 PCIE G3X2\r\n??? Card ????? h???a Radeon??? Vega 8 Graphics\r\n??? M??n h??nh 15.6\" FHD (1920 x 1080) Anti-Glare with 45% NTSC, NanoEdge\r\n??? C???ng giao ti???p 2x USB 2.0, 1x USB 3.0, 1x Type C USB 3.1, HDMI, Finger Print\r\n??? Audio ASUS SonicMaster\r\n??? ?????c th??? nh??? MicroSD card reader\r\n??? Chu????n LAN None\r\n??? Chu???n WIFI 802.11 AC (2x2)\r\n??? Bluetooth v4.2\r\n??? Webcam HD Web Camera\r\n??? H??? ??i???u h??nh Windows 10 Home\r\n??? Pin 2 Cells 37WHrs\r\n??? Tro??ng l??????ng 1.7 kg\r\n??? M??u s???c B???c ??nh tr??ng\r\n??? Ki??ch th??????c 357.2 x 230.4 x 19.9 (mm)', '31999990', '3e4554b9-3080-4a01-bbe7-556b79678c6e67.webp', 0, NULL, NULL),
(15, 'Chu???t Logitech B100', 13, 7, 'Chu???t Logitech B100', 'DPI: 4000', '159000', 'B100-222.png', 0, NULL, NULL),
(16, 'Loa Sony KB112', 15, 9, 'Loa Sony KB112', 'Loa Sony KB112', '3299999', '937c5d2a04babb99e562af639687b8f065.webp', 0, NULL, NULL),
(17, 'Loa Sony AC-2', 15, 9, 'Loa Sony AC-2', 'Loa Sony AC-2', '1900000', 'sony-srsxb10-den(2)56.jpg', 0, NULL, NULL),
(18, 'Laptop Dell Inprison 3400', 10, 6, 'Laptop Dell Inprison 3400', 'Laptop Dell Inprison 3400', '19000000', '7591_0139.jpg', 0, NULL, NULL),
(19, 'Tai nghe Samsung B11', 8, 5, 'Tai nghe Samsung B11', 'Tai nghe Samsung B11', '500000', 'tai-nghe-samsung-eg92046.jpeg', 0, NULL, NULL),
(20, 'L??t chu???t Razer B23-1A', 13, 8, 'L??t chu???t Razer B23-1A', 'L??t chu???t Razer B23-1A', '99000', 'Pad-Goliathus-Mobile-Small-2-158.jpg', 0, NULL, NULL),
(21, 'Tai nghe Samsung Bluetooth K2', 8, 5, 'Tai nghe Samsung Bluetooth K2', 'Tai nghe Samsung Bluetooth K2', '3490000', '1108_s8_tai_nghe_bluetooth_samsung_gear_iconx_201827.jpg', 0, NULL, NULL),
(22, 'Chu???t Samsung K112', 13, 5, 'Chu???t Samsung K112', 'Chu???t Samsung K112', '699000', '4343712.jpg', 1, NULL, NULL),
(23, 'Loa Samsung CV-01', 15, 5, 'Loa Samsung CV-01', 'Loa Samsung CV-01', '3000000', 'loa-samsung-360-wam1500-174.jpg', 0, NULL, NULL),
(24, 'Loa Samsung CV-02', 15, 5, 'Loa Samsung CV-02', 'Loa Samsung CV-02', '25000000', 'big_loa-bluetooth-samsung-level-box-slim-chinh-hang56.jpg', 0, NULL, NULL),
(25, 'Tai nghe Samsung BC1', 8, 5, 'Tai nghe Samsung BC1', 'Tai nghe Samsung BC1', '140000', '686_tai_nghe_galaxy_s7_edge_32.jpg', 0, NULL, NULL),
(26, 'B??n ph??m Razer C11 Pink', 14, 8, 'B??n ph??m Razer C11 Pink', 'B??n ph??m Razer C11 Pink', '2300000', 'gearvn_hunstmanquarztpink1_521568bbe6b54741af0db567975187d328.png', 0, NULL, NULL),
(27, 'B??n ph??m Logitech GB01', 14, 7, 'B??n ph??m Logitech GB01', 'B??n ph??m Logitech GB01', '570000', '8767_logitech_k38026.jpg', 0, NULL, NULL),
(28, 'B??n ph??m Logitech DG02', 14, 7, 'B??n ph??m Logitech DG02', 'B??n ph??m Logitech DG02', '1200000', 'gearvn_logitechg213_5_c33273e553d3448bbec26c521965d89b54.png', 0, NULL, NULL),
(29, 'Asus Vivobook S15', 10, 2, '??? CPU AMD Ryzen 5-3500U 2.1GHz up to 3.7GHz 4MB\r\n??? RAM 8GB (4GB x2) DDR4 2400MHz\r\n??? ???? c???ng 512GB SSD M.2 PCIE G3X2\r\n??? Card ????? h???a Radeon??? Vega 8 Graphics\r\n??? M??n h??nh 15.6\" FHD (1920 x 1080) Anti-Glare with 45% NTSC, NanoEdge\r\n??? C???ng giao ti???p 2x USB 2.0, 1x USB 3.0, 1x Type C USB 3.1, HDMI, Finger Print\r\n??? Audio ASUS SonicMaster\r\n??? ?????c th??? nh??? MicroSD card reader\r\n??? Chu????n LAN None\r\n??? Chu???n WIFI 802.11 AC (2x2)\r\n??? Bluetooth v4.2\r\n??? Webcam HD Web Camera\r\n??? H??? ??i???u h??nh Windows 10 Home\r\n??? Pin 2 Cells 37WHrs\r\n??? Tro??ng l??????ng 1.7 kg\r\n??? M??u s???c B???c ??nh tr??ng\r\n??? Ki??ch th??????c 357.2 x 230.4 x 19.9 (mm)', 'Asus Vivobook S15', '25000000', '4zu3_Asus_Vivobook_14_X412FJ87.jpg', 0, NULL, NULL),
(30, 'Asus Zenbook S455', 10, 2, '??? CPU AMD Ryzen 5-3500U 2.1GHz up to 3.7GHz 4MB <br>\r\n??? RAM 8GB (4GB x2) DDR4 2400MHz<br>\r\n??? ???? c???ng 512GB SSD M.2 PCIE G3X2<br>\r\n??? Card ????? h???a Radeon??? Vega 8 Graphics<br>\r\n??? M??n h??nh 15.6\" FHD (1920 x 1080) Anti-Glare with 45% NTSC, NanoEdge<br>\r\n??? C???ng giao ti???p 2x USB 2.0, 1x USB 3.0, 1x Type C USB 3.1, HDMI, Finger Print<br>\r\n??? Audio ASUS SonicMaster<br>\r\n??? ?????c th??? nh??? MicroSD card reader<br>\r\n??? Chu????n LAN None<br>\r\n??? Chu???n WIFI 802.11 AC (2x2)<br>\r\n??? Bluetooth v4.2<br>\r\n??? Webcam HD Web Camera<br>\r\n??? H??? ??i???u h??nh Windows 10 Home<br>\r\n??? Pin 2 Cells 37WHrs<br>\r\n??? Tro??ng l??????ng 1.7 kg<br>\r\n??? M??u s???c B???c ??nh tr??ng<br>\r\n??? Ki??ch th??????c 357.2 x 230.4 x 19.9 (mm)<br>', 'Asus Zenbook S455', '27000000', '1572345160_150864313.jpg', 0, NULL, NULL),
(31, 'B??n ph??m Dell K112', 14, 6, 'B??n ph??m Dell K112', 'B??n ph??m Dell K112', '250000', 'DELL 811535.jpg', 0, NULL, NULL),
(32, 'Chu???t Dell D306', 13, 6, 'Chu???t Dell D306', 'Chu???t Dell D306', '150000', '139.png', 0, NULL, NULL),
(33, 'Laptop Sony Vaio K1', 10, 9, 'Laptop Sony Vaio K1', 'Laptop Sony Vaio K1', '2100000', 'sony-vaio-34293.jpg', 0, NULL, NULL),
(34, 'Laptop MSI C11', 10, 3, 'Laptop MSI C11', 'Laptop MSI C11', '29000000', '15381_63.jpg', 0, NULL, NULL),
(35, 'Laptop MSI D22', 10, 3, 'Laptop MSI D22', 'Laptop MSI D22', '19000000', 'alpha-15-152.jpg', 0, NULL, NULL),
(36, 'Asus ProArt 2020', 10, 2, 'Asus ProArt 2020', 'Asus ProArt 2020', '59000000', '814LADIi8NL60.jpg', 0, NULL, NULL),
(37, 'Macbook Pro 2020', 10, 4, 'Macbook Pro 2020', 'Macbook Pro 2020', '35000000', 'MacBook7343.jpg', 0, NULL, NULL),
(38, 'B??n ph??m Apple K22', 14, 4, 'B??n ph??m Apple K22', 'B??n ph??m Apple K22', '2000000', '3547551-mb110ll90.jpg', 0, NULL, NULL),
(39, 'ewqewq', 15, 9, 'ewqewq', 'ewqewq', '400000', '4zu3_Asus_Vivobook_14_X412FJ92.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_note`, `created_at`, `updated_at`) VALUES
(2, 'Nguy???n Ng???c Kha', 'tp HCM', '+84354452812', 'ngockha4123@gmail.com', 'H??ng d??? v??? xin nh??? tay', NULL, NULL),
(3, 'Nguy???n Ng???c Kha', 'tp HCM', '+84354452812', 'ngockha4123@gmail.com', 'H??ng d??? v???', NULL, NULL),
(4, 'Nguy???n Ng???c Kha', 'tp HCM', '+84354452812', 'ngockha4123@gmail.com', '??d', NULL, NULL),
(5, 'Nguy???n Ng???c Kha', 'tp HCM', '+84354452812', 'ngockha4123@gmail.com', 'H??ng d??? v???', NULL, NULL),
(6, 'Nguy???n Ng???c Kha', 'tp HCM', '+84354452812', 'ngockha4123@gmail.com', '??d', NULL, NULL),
(7, 'dsadsa', 'dsadsa', 'dsads', '??asad', 'dsadsadsa', NULL, NULL),
(8, 'sfsd', 'fdsfsd', 'fdsfds', 'fsdf', NULL, NULL, NULL),
(9, 'sfsd', 'fdsfsd', 'fdsfds', 'fsdf', NULL, NULL, NULL),
(10, 'r???w', 'rewr', 'ewrewrew', 'r??ewr', 'rew', NULL, NULL),
(11, 'fdsfd', 'fdsfd', 'fdsfd', 'fdsfd', '??efe', NULL, NULL),
(12, 'vcxv', 'cxvcxvcx', 'vcxvcx', 'vcxv', 'vxcvxcvxvxc', NULL, NULL),
(13, 'fdsfdsf', 'dsfdsf', 'fdsfds', 'fsdfdsfds', 'fdsfdsfdfdsfd', NULL, NULL),
(14, 'EWQEW', 'KTX Tr?????ng ??H T??n ?????c Th???ng', '0915413095', '??sadsad', '??QEWQEWQE', NULL, NULL),
(15, 'dgsfd', 'sfdsf', 'fsdfsd', 'fsg', 'fsdfsd', NULL, NULL),
(16, 'dsadas', 'dsadsa', 'dsadas', 'dsdadasdsa', 'dsadsadsa', NULL, NULL),
(17, 'dsadasdsa', 'dsadsa', 'dsadas', 'dsdadasdsadsadsa', 'dsadsadsa', NULL, NULL),
(18, 'FDSFDSF', 'DSFSDF', 'DSFDSFDS', 'FDSFDSFD', 'FDSFDS', NULL, NULL),
(19, 'GFDG', 'DFGDFG', 'GFDGFD', 'GDFGFD', 'GDGFDG', NULL, NULL),
(20, 'GFDG', 'DFGDFG', 'GFDGFD', 'GDFGFD', 'GDGFDG', NULL, NULL),
(21, 'GFDGFDGFD', 'FDGFD', 'GFDGFD', 'GFDGFD', 'GFD', NULL, NULL),
(22, 'sdsa', 'dsad', 'dsa', '????', 'dsadsa', NULL, NULL),
(23, 'dsadsa', 'dsadsad', 'dsadsa', 'sdasa', 'dsadsadsa', NULL, NULL),
(24, 'sfdsfsd', 'fdsfds', 'fdsfds', 'czx', 'fdsfds', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
