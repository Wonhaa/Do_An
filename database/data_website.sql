-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 02:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS data_website;
use data_website;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(16, 'Product', 'Cập nhật product', 53, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"id\": 53, \"pro_hot\": 0, \"pro_pay\": 1, \"pro_name\": \"Demo sản phẩm mới\", \"pro_sale\": \"20\", \"pro_slug\": \"demo-san-pham-moi\", \"pro_view\": 2, \"pro_price\": \"10000\", \"created_at\": \"2020-06-18 19:11:52\", \"pro_active\": 1, \"pro_avatar\": \"2020-06-21__screen-shot-2020-06-21-at-52033-pm.png\", \"pro_energy\": null, \"pro_number\": 8, \"updated_at\": \"2020-06-21 22:02:10\", \"pro_content\": \"Đang cập nhật\", \"pro_country\": 0, \"pro_admin_id\": 0, \"pro_resistant\": null, \"pro_age_review\": 0, \"pro_expiration\": \"2020-06-27 00:00:00\", \"pro_category_id\": \"3\", \"pro_description\": \"Đang cập nhật\", \"pro_price_entry\": 0, \"pro_review_star\": 0, \"pro_supplier_id\": 0, \"pro_import_goods\": 0, \"pro_review_total\": 0, \"pro_number_import\": \"37\", \"pro_expiration_date\": null}', '2020-06-21 15:02:10', '2020-06-21 15:02:10'),
(17, 'Product', 'Cập nhật product', 53, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"new\": {\"id\": 53, \"pro_hot\": 0, \"pro_pay\": 1, \"pro_name\": \"Demo sản phẩm mới nhất hiện nay\", \"pro_sale\": \"20\", \"pro_slug\": \"demo-san-pham-moi-nhat-hien-nay\", \"pro_view\": 2, \"pro_price\": \"10000\", \"created_at\": \"2020-06-18 19:11:52\", \"pro_active\": 1, \"pro_avatar\": \"2020-06-21__screen-shot-2020-06-21-at-52033-pm.png\", \"pro_energy\": null, \"pro_number\": 8, \"updated_at\": \"2020-06-21 22:09:39\", \"pro_content\": \"Đang cập nhật\", \"pro_country\": 0, \"pro_admin_id\": 0, \"pro_resistant\": null, \"pro_age_review\": 0, \"pro_expiration\": \"2020-06-27 00:00:00\", \"pro_category_id\": \"3\", \"pro_description\": \"Đang cập nhật\", \"pro_price_entry\": 0, \"pro_review_star\": 0, \"pro_supplier_id\": 0, \"pro_import_goods\": 0, \"pro_review_total\": 0, \"pro_number_import\": \"37\", \"pro_expiration_date\": null}, \"old\": {\"id\": 53, \"pro_hot\": 0, \"pro_pay\": 1, \"pro_name\": \"Demo sản phẩm mới nhất hiện nay\", \"pro_sale\": \"20\", \"pro_slug\": \"demo-san-pham-moi-nhat-hien-nay\", \"pro_view\": 2, \"pro_price\": \"10000\", \"created_at\": \"2020-06-18 19:11:52\", \"pro_active\": 1, \"pro_avatar\": \"2020-06-21__screen-shot-2020-06-21-at-52033-pm.png\", \"pro_energy\": null, \"pro_number\": 8, \"updated_at\": \"2020-06-21 22:09:39\", \"pro_content\": \"Đang cập nhật\", \"pro_country\": 0, \"pro_admin_id\": 0, \"pro_resistant\": null, \"pro_age_review\": 0, \"pro_expiration\": \"2020-06-27 00:00:00\", \"pro_category_id\": \"3\", \"pro_description\": \"Đang cập nhật\", \"pro_price_entry\": 0, \"pro_review_star\": 0, \"pro_supplier_id\": 0, \"pro_import_goods\": 0, \"pro_review_total\": 0, \"pro_number_import\": \"37\", \"pro_expiration_date\": null}}', '2020-06-21 15:09:39', '2020-06-21 15:09:39'),
(18, 'Product', 'Cập nhật product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":1,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 8cm CG1894\",\"pro_slug\":\"cao-got-li-8cm-cg1894\",\"pro_price\":\"800000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1894.jpg\",\"pro_view\":4,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1894\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T11:05:47.000000Z\",\"pro_number\":10,\"pro_import_goods\":0,\"pro_number_import\":\"10\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:31:08.000000Z\"},\"new\":{\"id\":1,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 8cm CG1894\",\"pro_slug\":\"cao-got-li-8cm-cg1894\",\"pro_price\":\"800000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1894.jpg\",\"pro_view\":4,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1894\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T11:05:47.000000Z\",\"pro_number\":10,\"pro_import_goods\":0,\"pro_number_import\":\"10\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:31:08.000000Z\"}}', '2024-04-21 05:31:08', '2024-04-21 05:31:08'),
(19, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL645\",\"pro_slug\":\"guoc-le-da-li-5cm-gl645\",\"pro_price\":\"330000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl645c.jpg\",\"pro_view\":2,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL645\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:37:12.000000Z\",\"pro_number\":40,\"pro_import_goods\":0,\"pro_number_import\":\"40\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:32:13.000000Z\"},\"new\":{\"id\":2,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL645\",\"pro_slug\":\"guoc-le-da-li-5cm-gl645\",\"pro_price\":\"330000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl645c.jpg\",\"pro_view\":2,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL645\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:37:12.000000Z\",\"pro_number\":40,\"pro_import_goods\":0,\"pro_number_import\":\"40\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:32:13.000000Z\"}}', '2024-04-21 05:32:13', '2024-04-21 05:32:13'),
(20, 'Product', 'Cập nhật product', 3, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":3,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da b\\u00f3ng 7cm GL599\",\"pro_slug\":\"guoc-le-da-bong-7cm-gl599\",\"pro_price\":\"210000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"5\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl599.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL599\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:37:49.000000Z\",\"pro_number\":8,\"pro_import_goods\":0,\"pro_number_import\":\"8\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:33:21.000000Z\"},\"new\":{\"id\":3,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da b\\u00f3ng 7cm GL599\",\"pro_slug\":\"guoc-le-da-bong-7cm-gl599\",\"pro_price\":\"210000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"5\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl599.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL599\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:37:49.000000Z\",\"pro_number\":8,\"pro_import_goods\":0,\"pro_number_import\":\"8\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:33:21.000000Z\"}}', '2024-04-21 05:33:21', '2024-04-21 05:33:21'),
(21, 'Product', 'Cập nhật product', 4, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":4,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL641\",\"pro_slug\":\"guoc-le-da-li-5cm-gl641\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6413.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL641\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:39:00.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:34:42.000000Z\"},\"new\":{\"id\":4,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL641\",\"pro_slug\":\"guoc-le-da-li-5cm-gl641\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6413.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL641\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:39:00.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:34:42.000000Z\"}}', '2024-04-21 05:34:42', '2024-04-21 05:34:42'),
(22, 'Product', 'Cập nhật product', 5, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":5,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL581\",\"pro_slug\":\"guoc-le-da-li-5cm-gl581\",\"pro_price\":\"450000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl5811.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL581\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:40:39.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:35:23.000000Z\"},\"new\":{\"id\":5,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL581\",\"pro_slug\":\"guoc-le-da-li-5cm-gl581\",\"pro_price\":\"450000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl5811.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL581\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:40:39.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:35:23.000000Z\"}}', '2024-04-21 05:35:23', '2024-04-21 05:35:23'),
(23, 'Product', 'Cập nhật product', 6, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":6,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da b\\u00f3ng 15cm GL640\",\"pro_slug\":\"guoc-le-da-bong-15cm-gl640\",\"pro_price\":\"360000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6403.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL640\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:41:37.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:35:54.000000Z\"},\"new\":{\"id\":6,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da b\\u00f3ng 15cm GL640\",\"pro_slug\":\"guoc-le-da-bong-15cm-gl640\",\"pro_price\":\"360000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6403.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL640\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:41:37.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:35:54.000000Z\"}}', '2024-04-21 05:35:54', '2024-04-21 05:35:54'),
(24, 'Product', 'Cập nhật product', 7, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":7,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 8cm GL638\",\"pro_slug\":\"guoc-le-da-li-8cm-gl638\",\"pro_price\":\"234600\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"6\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6381-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL638\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:42:30.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:36:31.000000Z\"},\"new\":{\"id\":7,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 8cm GL638\",\"pro_slug\":\"guoc-le-da-li-8cm-gl638\",\"pro_price\":\"234600\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"6\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6381-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL638\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:42:30.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:36:31.000000Z\"}}', '2024-04-21 05:36:31', '2024-04-21 05:36:31'),
(25, 'Product', 'Cập nhật product', 8, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":8,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 7cm GL637\",\"pro_slug\":\"guoc-le-da-li-7cm-gl637\",\"pro_price\":\"500000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6371-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL637\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:43:13.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:37:01.000000Z\"},\"new\":{\"id\":8,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 7cm GL637\",\"pro_slug\":\"guoc-le-da-li-7cm-gl637\",\"pro_price\":\"500000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6371-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL637\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:43:13.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:37:01.000000Z\"}}', '2024-04-21 05:37:01', '2024-04-21 05:37:01'),
(26, 'Product', 'Cập nhật product', 9, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":9,\"pro_name\":\"Gu\\u1ed1c l\\u00ea trong 7cm GL635\",\"pro_slug\":\"guoc-le-trong-7cm-gl635\",\"pro_price\":\"170000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl635.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL635\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:43:47.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:37:51.000000Z\"},\"new\":{\"id\":9,\"pro_name\":\"Gu\\u1ed1c l\\u00ea trong 7cm GL635\",\"pro_slug\":\"guoc-le-trong-7cm-gl635\",\"pro_price\":\"170000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl635.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL635\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:43:47.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:37:51.000000Z\"}}', '2024-04-21 05:37:51', '2024-04-21 05:37:51'),
(27, 'Product', 'Cập nhật product', 10, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":10,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL628\",\"pro_slug\":\"guoc-le-da-li-5cm-gl628\",\"pro_price\":\"260000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6283.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL628\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:44:25.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:38:19.000000Z\"},\"new\":{\"id\":10,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 5cm GL628\",\"pro_slug\":\"guoc-le-da-li-5cm-gl628\",\"pro_price\":\"260000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6283.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL628\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:44:25.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:38:19.000000Z\"}}', '2024-04-21 05:38:19', '2024-04-21 05:38:19'),
(28, 'Product', 'Cập nhật product', 11, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":11,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 7cm GL636\",\"pro_slug\":\"guoc-le-da-li-7cm-gl636\",\"pro_price\":\"100000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6362.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL636\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:45:05.000000Z\",\"pro_number\":2,\"pro_import_goods\":0,\"pro_number_import\":\"2\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:38:51.000000Z\"},\"new\":{\"id\":11,\"pro_name\":\"Gu\\u1ed1c l\\u00ea da l\\u00ec 7cm GL636\",\"pro_slug\":\"guoc-le-da-li-7cm-gl636\",\"pro_price\":\"100000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__gl6362.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: GL636\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:45:05.000000Z\",\"pro_number\":2,\"pro_import_goods\":0,\"pro_number_import\":\"2\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:38:51.000000Z\"}}', '2024-04-21 05:38:51', '2024-04-21 05:38:51'),
(29, 'Product', 'Cập nhật product', 12, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":12,\"pro_name\":\"Cao g\\u00f3t l\\u1ee5a 6cm CG1888\",\"pro_slug\":\"cao-got-lua-6cm-cg1888\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1888.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1888\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:45:42.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:39:38.000000Z\"},\"new\":{\"id\":12,\"pro_name\":\"Cao g\\u00f3t l\\u1ee5a 6cm CG1888\",\"pro_slug\":\"cao-got-lua-6cm-cg1888\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1888.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1888\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:45:42.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:39:38.000000Z\"}}', '2024-04-21 05:39:38', '2024-04-21 05:39:38'),
(30, 'Product', 'Cập nhật product', 13, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":13,\"pro_name\":\"Cao g\\u00f3t da s\\u1ea7n 8cm CG1222\",\"pro_slug\":\"cao-got-da-san-8cm-cg1222\",\"pro_price\":\"234600\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg12222-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1222\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:46:27.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:40:03.000000Z\"},\"new\":{\"id\":13,\"pro_name\":\"Cao g\\u00f3t da s\\u1ea7n 8cm CG1222\",\"pro_slug\":\"cao-got-da-san-8cm-cg1222\",\"pro_price\":\"234600\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg12222-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1222\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:46:27.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:40:03.000000Z\"}}', '2024-04-21 05:40:03', '2024-04-21 05:40:03'),
(31, 'Product', 'Cập nhật product', 14, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":14,\"pro_name\":\"Cao g\\u00f3t nh\\u0169 9cm CG810\",\"pro_slug\":\"cao-got-nhu-9cm-cg810\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg8103-2.jpg\",\"pro_view\":2,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG810\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:47:08.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:40:34.000000Z\"},\"new\":{\"id\":14,\"pro_name\":\"Cao g\\u00f3t nh\\u0169 9cm CG810\",\"pro_slug\":\"cao-got-nhu-9cm-cg810\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg8103-2.jpg\",\"pro_view\":2,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG810\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:47:08.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:40:34.000000Z\"}}', '2024-04-21 05:40:34', '2024-04-21 05:40:34'),
(32, 'Product', 'Cập nhật product', 15, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":15,\"pro_name\":\"Cao g\\u00f3t da l\\u1ed9n 7cm CG278\",\"pro_slug\":\"cao-got-da-lon-7cm-cg278\",\"pro_price\":\"260000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"6\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg2781.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG278\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:47:51.000000Z\",\"pro_number\":2,\"pro_import_goods\":0,\"pro_number_import\":\"2\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:40:58.000000Z\"},\"new\":{\"id\":15,\"pro_name\":\"Cao g\\u00f3t da l\\u1ed9n 7cm CG278\",\"pro_slug\":\"cao-got-da-lon-7cm-cg278\",\"pro_price\":\"260000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"6\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg2781.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG278\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:47:51.000000Z\",\"pro_number\":2,\"pro_import_goods\":0,\"pro_number_import\":\"2\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:40:58.000000Z\"}}', '2024-04-21 05:40:58', '2024-04-21 05:40:58'),
(33, 'Product', 'Cập nhật product', 16, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":16,\"pro_name\":\"S\\u1ee5c da b\\u00f3ng 3cm SU376\",\"pro_slug\":\"suc-da-bong-3cm-su376\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3761.jpg\",\"pro_view\":3,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU376\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:48:52.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:41:45.000000Z\"},\"new\":{\"id\":16,\"pro_name\":\"S\\u1ee5c da b\\u00f3ng 3cm SU376\",\"pro_slug\":\"suc-da-bong-3cm-su376\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3761.jpg\",\"pro_view\":3,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU376\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:48:52.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:41:45.000000Z\"}}', '2024-04-21 05:41:45', '2024-04-21 05:41:45'),
(34, 'Product', 'Cập nhật product', 17, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":17,\"pro_name\":\"S\\u1ee5c da l\\u00ec 11cm SU375\",\"pro_slug\":\"suc-da-li-11cm-su375\",\"pro_price\":\"360000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3751.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU375\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:49:24.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:42:12.000000Z\"},\"new\":{\"id\":17,\"pro_name\":\"S\\u1ee5c da l\\u00ec 11cm SU375\",\"pro_slug\":\"suc-da-li-11cm-su375\",\"pro_price\":\"360000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3751.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU375\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:49:24.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:42:12.000000Z\"}}', '2024-04-21 05:42:12', '2024-04-21 05:42:12'),
(35, 'Product', 'Cập nhật product', 18, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":18,\"pro_name\":\"S\\u1ee5c nhung l\\u00ec 8cm SU374\",\"pro_slug\":\"suc-nhung-li-8cm-su374\",\"pro_price\":\"270000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3741.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU374\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:50:06.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:42:34.000000Z\"},\"new\":{\"id\":18,\"pro_name\":\"S\\u1ee5c nhung l\\u00ec 8cm SU374\",\"pro_slug\":\"suc-nhung-li-8cm-su374\",\"pro_price\":\"270000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3741.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU374\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:50:06.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:42:34.000000Z\"}}', '2024-04-21 05:42:34', '2024-04-21 05:42:34'),
(36, 'Product', 'Cập nhật product', 19, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":19,\"pro_name\":\"S\\u1ee5c da l\\u00ec 5cm SU373\",\"pro_slug\":\"suc-da-li-5cm-su373\",\"pro_price\":\"230000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su373-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU373\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:50:36.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:43:04.000000Z\"},\"new\":{\"id\":19,\"pro_name\":\"S\\u1ee5c da l\\u00ec 5cm SU373\",\"pro_slug\":\"suc-da-li-5cm-su373\",\"pro_price\":\"230000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su373-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU373\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:50:36.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:43:04.000000Z\"}}', '2024-04-21 05:43:04', '2024-04-21 05:43:04'),
(37, 'Product', 'Cập nhật product', 20, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":20,\"pro_name\":\"S\\u1ee5c nh\\u0169 7cm SU372\",\"pro_slug\":\"suc-nhu-7cm-su372\",\"pro_price\":\"350000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su372.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU372\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:51:06.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:43:27.000000Z\"},\"new\":{\"id\":20,\"pro_name\":\"S\\u1ee5c nh\\u0169 7cm SU372\",\"pro_slug\":\"suc-nhu-7cm-su372\",\"pro_price\":\"350000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su372.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU372\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:51:06.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:43:27.000000Z\"}}', '2024-04-21 05:43:27', '2024-04-21 05:43:27');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(38, 'Product', 'Cập nhật product', 21, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":21,\"pro_name\":\"S\\u1ee5c da l\\u00ec 5cm SU371\",\"pro_slug\":\"suc-da-li-5cm-su371\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su371.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU371\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:51:38.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:43:51.000000Z\"},\"new\":{\"id\":21,\"pro_name\":\"S\\u1ee5c da l\\u00ec 5cm SU371\",\"pro_slug\":\"suc-da-li-5cm-su371\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su371.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU371\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:51:38.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:43:51.000000Z\"}}', '2024-04-21 05:43:51', '2024-04-21 05:43:51'),
(39, 'Product', 'Cập nhật product', 22, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":22,\"pro_name\":\"S\\u1ee5c da l\\u00ec 3cm SU369\",\"pro_slug\":\"suc-da-li-3cm-su369\",\"pro_price\":\"560000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su369-2.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU369\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:52:25.000000Z\",\"pro_number\":4,\"pro_import_goods\":0,\"pro_number_import\":\"4\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:44:31.000000Z\"},\"new\":{\"id\":22,\"pro_name\":\"S\\u1ee5c da l\\u00ec 3cm SU369\",\"pro_slug\":\"suc-da-li-3cm-su369\",\"pro_price\":\"560000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su369-2.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU369\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:52:25.000000Z\",\"pro_number\":4,\"pro_import_goods\":0,\"pro_number_import\":\"4\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:44:31.000000Z\"}}', '2024-04-21 05:44:31', '2024-04-21 05:44:31'),
(40, 'Product', 'Cập nhật product', 23, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":23,\"pro_name\":\"S\\u1ee5c da l\\u00ec 5cm SU368\",\"pro_slug\":\"suc-da-li-5cm-su368\",\"pro_price\":\"260000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su368.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU368\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:53:01.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:44:59.000000Z\"},\"new\":{\"id\":23,\"pro_name\":\"S\\u1ee5c da l\\u00ec 5cm SU368\",\"pro_slug\":\"suc-da-li-5cm-su368\",\"pro_price\":\"260000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su368.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU368\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:53:01.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:44:59.000000Z\"}}', '2024-04-21 05:44:59', '2024-04-21 05:44:59'),
(41, 'Product', 'Cập nhật product', 24, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":24,\"pro_name\":\"S\\u1ee5c da l\\u00ec 3cm SU357\",\"pro_slug\":\"suc-da-li-3cm-su357\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"5\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su357-2.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU357\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:54:32.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:45:22.000000Z\"},\"new\":{\"id\":24,\"pro_name\":\"S\\u1ee5c da l\\u00ec 3cm SU357\",\"pro_slug\":\"suc-da-li-3cm-su357\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"5\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su357-2.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU357\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:54:32.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:45:22.000000Z\"}}', '2024-04-21 05:45:22', '2024-04-21 05:45:22'),
(42, 'Product', 'Cập nhật product', 25, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":25,\"pro_name\":\"S\\u1ee5c da l\\u00ec 7cm SU352\",\"pro_slug\":\"suc-da-li-7cm-su352\",\"pro_price\":\"450000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su352.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU352\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:55:14.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:45:46.000000Z\"},\"new\":{\"id\":25,\"pro_name\":\"S\\u1ee5c da l\\u00ec 7cm SU352\",\"pro_slug\":\"suc-da-li-7cm-su352\",\"pro_price\":\"450000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su352.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU352\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:55:14.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:45:46.000000Z\"}}', '2024-04-21 05:45:46', '2024-04-21 05:45:46'),
(43, 'Product', 'Cập nhật product', 26, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":26,\"pro_name\":\"S\\u1ee5c da l\\u00ec 3cm SU359\",\"pro_slug\":\"suc-da-li-3cm-su359\",\"pro_price\":\"330000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3596.png\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU359\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:56:03.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:46:19.000000Z\"},\"new\":{\"id\":26,\"pro_name\":\"S\\u1ee5c da l\\u00ec 3cm SU359\",\"pro_slug\":\"suc-da-li-3cm-su359\",\"pro_price\":\"330000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3596.png\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU359\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:56:03.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:46:19.000000Z\"}}', '2024-04-21 05:46:19', '2024-04-21 05:46:19'),
(44, 'Product', 'Cập nhật product', 27, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":27,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 5cm CG1568\",\"pro_slug\":\"cao-got-li-5cm-cg1568\",\"pro_price\":\"350000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg15682.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1568\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:56:47.000000Z\",\"pro_number\":2,\"pro_import_goods\":0,\"pro_number_import\":\"2\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:47:08.000000Z\"},\"new\":{\"id\":27,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 5cm CG1568\",\"pro_slug\":\"cao-got-li-5cm-cg1568\",\"pro_price\":\"350000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg15682.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1568\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:56:47.000000Z\",\"pro_number\":2,\"pro_import_goods\":0,\"pro_number_import\":\"2\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:47:08.000000Z\"}}', '2024-04-21 05:47:08', '2024-04-21 05:47:08'),
(45, 'Product', 'Cập nhật product', 28, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":28,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 9cm CG1567\",\"pro_slug\":\"cao-got-li-9cm-cg1567\",\"pro_price\":\"560000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1567-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1567\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:57:20.000000Z\",\"pro_number\":8,\"pro_import_goods\":0,\"pro_number_import\":\"8\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:47:32.000000Z\"},\"new\":{\"id\":28,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 9cm CG1567\",\"pro_slug\":\"cao-got-li-9cm-cg1567\",\"pro_price\":\"560000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1567-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1567\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:57:20.000000Z\",\"pro_number\":8,\"pro_import_goods\":0,\"pro_number_import\":\"8\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:47:32.000000Z\"}}', '2024-04-21 05:47:32', '2024-04-21 05:47:32'),
(46, 'Product', 'Cập nhật product', 29, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":29,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 9cm CG1575\",\"pro_slug\":\"cao-got-li-9cm-cg1575\",\"pro_price\":\"56000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1575.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1575\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:58:03.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:47:58.000000Z\"},\"new\":{\"id\":29,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 9cm CG1575\",\"pro_slug\":\"cao-got-li-9cm-cg1575\",\"pro_price\":\"56000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg1575.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1575\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:58:03.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:47:58.000000Z\"}}', '2024-04-21 05:47:58', '2024-04-21 05:47:58'),
(47, 'Product', 'Cập nhật product', 30, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":30,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 7cm CG1863\",\"pro_slug\":\"cao-got-li-7cm-cg1863\",\"pro_price\":\"140000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg18632.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1863\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:58:43.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:48:28.000000Z\"},\"new\":{\"id\":30,\"pro_name\":\"Cao g\\u00f3t l\\u00ec 7cm CG1863\",\"pro_slug\":\"cao-got-li-7cm-cg1863\",\"pro_price\":\"140000\",\"pro_price_entry\":0,\"pro_category_id\":\"1\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__cg18632.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: CG1863\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:58:43.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:48:28.000000Z\"}}', '2024-04-21 05:48:28', '2024-04-21 05:48:28'),
(48, 'Product', 'Cập nhật product', 31, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":31,\"pro_name\":\"B\\u1ec7t da l\\u00ec 3cm BB610\",\"pro_slug\":\"bet-da-li-3cm-bb610\",\"pro_price\":\"210000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6101.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB610\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:59:17.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:49:04.000000Z\"},\"new\":{\"id\":31,\"pro_name\":\"B\\u1ec7t da l\\u00ec 3cm BB610\",\"pro_slug\":\"bet-da-li-3cm-bb610\",\"pro_price\":\"210000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6101.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB610\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T14:59:17.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:49:04.000000Z\"}}', '2024-04-21 05:49:04', '2024-04-21 05:49:04'),
(49, 'Product', 'Cập nhật product', 32, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":32,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB609\",\"pro_slug\":\"bet-da-li-bb609\",\"pro_price\":\"320000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6092.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB609\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:00:02.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:49:31.000000Z\"},\"new\":{\"id\":32,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB609\",\"pro_slug\":\"bet-da-li-bb609\",\"pro_price\":\"320000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6092.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB609\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:00:02.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:49:31.000000Z\"}}', '2024-04-21 05:49:31', '2024-04-21 05:49:31'),
(50, 'Product', 'Cập nhật product', 33, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":33,\"pro_name\":\"B\\u1ec7t da l\\u00ec 1cm BB608\",\"pro_slug\":\"bet-da-li-1cm-bb608\",\"pro_price\":\"270000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6085.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB608\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:00:41.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:51:09.000000Z\"},\"new\":{\"id\":33,\"pro_name\":\"B\\u1ec7t da l\\u00ec 1cm BB608\",\"pro_slug\":\"bet-da-li-1cm-bb608\",\"pro_price\":\"270000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6085.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB608\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:00:41.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:51:09.000000Z\"}}', '2024-04-21 05:51:09', '2024-04-21 05:51:09'),
(51, 'Product', 'Cập nhật product', 34, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":34,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB607\",\"pro_slug\":\"bet-da-li-bb607\",\"pro_price\":\"220000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6071-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB607\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:01:26.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:51:39.000000Z\"},\"new\":{\"id\":34,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB607\",\"pro_slug\":\"bet-da-li-bb607\",\"pro_price\":\"220000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb6071-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB607\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:01:26.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:51:39.000000Z\"}}', '2024-04-21 05:51:39', '2024-04-21 05:51:39'),
(52, 'Product', 'Cập nhật product', 35, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":35,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB606\",\"pro_slug\":\"bet-da-li-bb606\",\"pro_price\":\"195000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb606.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB606\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:02:15.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:52:07.000000Z\"},\"new\":{\"id\":35,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB606\",\"pro_slug\":\"bet-da-li-bb606\",\"pro_price\":\"195000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb606.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB606\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:02:15.000000Z\",\"pro_number\":25,\"pro_import_goods\":0,\"pro_number_import\":\"25\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:52:07.000000Z\"}}', '2024-04-21 05:52:07', '2024-04-21 05:52:07'),
(53, 'Product', 'Cập nhật product', 36, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":36,\"pro_name\":\"B\\u1ec7t da s\\u1ea7n 1cm BB584\",\"pro_slug\":\"bet-da-san-1cm-bb584\",\"pro_price\":\"100000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"10\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb584.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB584\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:02:59.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:52:34.000000Z\"},\"new\":{\"id\":36,\"pro_name\":\"B\\u1ec7t da s\\u1ea7n 1cm BB584\",\"pro_slug\":\"bet-da-san-1cm-bb584\",\"pro_price\":\"100000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"10\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb584.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB584\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:02:59.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:52:34.000000Z\"}}', '2024-04-21 05:52:34', '2024-04-21 05:52:34'),
(54, 'Product', 'Cập nhật product', 37, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":37,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB571\",\"pro_slug\":\"bet-da-li-bb571\",\"pro_price\":\"160000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb5712-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB571\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:03:10.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:53:07.000000Z\"},\"new\":{\"id\":37,\"pro_name\":\"B\\u1ec7t da l\\u00ec BB571\",\"pro_slug\":\"bet-da-li-bb571\",\"pro_price\":\"160000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb5712-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB571\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:03:10.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:53:07.000000Z\"}}', '2024-04-21 05:53:07', '2024-04-21 05:53:07'),
(55, 'Product', 'Cập nhật product', 38, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":38,\"pro_name\":\"B\\u1ec7t da s\\u1ea7n BB570\",\"pro_slug\":\"bet-da-san-bb570\",\"pro_price\":\"450000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb570f.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB570\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:03:41.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:53:38.000000Z\"},\"new\":{\"id\":38,\"pro_name\":\"B\\u1ec7t da s\\u1ea7n BB570\",\"pro_slug\":\"bet-da-san-bb570\",\"pro_price\":\"450000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb570f.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB570\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:03:41.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:53:38.000000Z\"}}', '2024-04-21 05:53:38', '2024-04-21 05:53:38'),
(56, 'Product', 'Cập nhật product', 39, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":39,\"pro_name\":\"B\\u1ec7t nhung 1cm BB568\",\"pro_slug\":\"bet-nhung-1cm-bb568\",\"pro_price\":\"270000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb568do.png\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB568\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:04:12.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:54:03.000000Z\"},\"new\":{\"id\":39,\"pro_name\":\"B\\u1ec7t nhung 1cm BB568\",\"pro_slug\":\"bet-nhung-1cm-bb568\",\"pro_price\":\"270000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb568do.png\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB568\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:04:12.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:54:03.000000Z\"}}', '2024-04-21 05:54:03', '2024-04-21 05:54:03'),
(57, 'Product', 'Cập nhật product', 40, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":40,\"pro_name\":\"B\\u1ec7t da l\\u00ec 1cm BB560\",\"pro_slug\":\"bet-da-li-1cm-bb560\",\"pro_price\":\"350000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb560-1a.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB560\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:04:48.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:54:31.000000Z\"},\"new\":{\"id\":40,\"pro_name\":\"B\\u1ec7t da l\\u00ec 1cm BB560\",\"pro_slug\":\"bet-da-li-1cm-bb560\",\"pro_price\":\"350000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb560-1a.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB560\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:04:48.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:54:31.000000Z\"}}', '2024-04-21 05:54:31', '2024-04-21 05:54:31'),
(58, 'Product', 'Cập nhật product', 41, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":41,\"pro_name\":\"B\\u1ec7t da l\\u00ec 2cm BB552\",\"pro_slug\":\"bet-da-li-2cm-bb552\",\"pro_price\":\"410000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb552.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB552\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:05:33.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:55:03.000000Z\"},\"new\":{\"id\":41,\"pro_name\":\"B\\u1ec7t da l\\u00ec 2cm BB552\",\"pro_slug\":\"bet-da-li-2cm-bb552\",\"pro_price\":\"410000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__bb552.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: BB552\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:05:33.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:55:03.000000Z\"}}', '2024-04-21 05:55:03', '2024-04-21 05:55:03');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(59, 'Product', 'Cập nhật product', 42, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":42,\"pro_name\":\"Loafer da l\\u00ec 5cm LF149\",\"pro_slug\":\"loafer-da-li-5cm-lf149\",\"pro_price\":\"420000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1492.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF149\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:06:43.000000Z\",\"pro_number\":-1,\"pro_import_goods\":0,\"pro_number_import\":\"-1\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:55:48.000000Z\"},\"new\":{\"id\":42,\"pro_name\":\"Loafer da l\\u00ec 5cm LF149\",\"pro_slug\":\"loafer-da-li-5cm-lf149\",\"pro_price\":\"420000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1492.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF149\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:06:43.000000Z\",\"pro_number\":-1,\"pro_import_goods\":0,\"pro_number_import\":\"-1\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:55:48.000000Z\"}}', '2024-04-21 05:55:48', '2024-04-21 05:55:48'),
(60, 'Product', 'Cập nhật product', 43, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":43,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF148\",\"pro_slug\":\"loafer-da-bong-5cm-lf148\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf148.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF148\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:07:12.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:56:21.000000Z\"},\"new\":{\"id\":43,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF148\",\"pro_slug\":\"loafer-da-bong-5cm-lf148\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf148.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF148\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:07:12.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:56:21.000000Z\"}}', '2024-04-21 05:56:21', '2024-04-21 05:56:21'),
(61, 'Product', 'Cập nhật product', 44, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":44,\"pro_name\":\"Loafer 5cm LF147\",\"pro_slug\":\"loafer-5cm-lf147\",\"pro_price\":\"380000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1474.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF147\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:07:45.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:56:55.000000Z\"},\"new\":{\"id\":44,\"pro_name\":\"Loafer 5cm LF147\",\"pro_slug\":\"loafer-5cm-lf147\",\"pro_price\":\"380000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1474.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF147\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:07:45.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:56:55.000000Z\"}}', '2024-04-21 05:56:55', '2024-04-21 05:56:55'),
(62, 'Product', 'Cập nhật product', 45, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":45,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF146\",\"pro_slug\":\"loafer-da-bong-5cm-lf146\",\"pro_price\":\"520000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf146-1.jpg\",\"pro_view\":9,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":1,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF146\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:08:22.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:57:26.000000Z\"},\"new\":{\"id\":45,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF146\",\"pro_slug\":\"loafer-da-bong-5cm-lf146\",\"pro_price\":\"520000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"3\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf146-1.jpg\",\"pro_view\":9,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":1,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF146\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:08:22.000000Z\",\"pro_number\":6,\"pro_import_goods\":0,\"pro_number_import\":\"6\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:57:26.000000Z\"}}', '2024-04-21 05:57:26', '2024-04-21 05:57:26'),
(63, 'Product', 'Cập nhật product', 46, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":46,\"pro_name\":\"Loafer da b\\u00f3ng 7cm LF145\",\"pro_slug\":\"loafer-da-bong-7cm-lf145\",\"pro_price\":\"290000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1451-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF145\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:09:12.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:58:02.000000Z\"},\"new\":{\"id\":46,\"pro_name\":\"Loafer da b\\u00f3ng 7cm LF145\",\"pro_slug\":\"loafer-da-bong-7cm-lf145\",\"pro_price\":\"290000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1451-1.jpg\",\"pro_view\":0,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF145\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:09:12.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:58:02.000000Z\"}}', '2024-04-21 05:58:02', '2024-04-21 05:58:02'),
(64, 'Product', 'Cập nhật product', 47, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":47,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF144\",\"pro_slug\":\"loafer-da-bong-5cm-lf144\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf144-1.jpg\",\"pro_view\":6,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":1,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF144\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:10:05.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:58:29.000000Z\"},\"new\":{\"id\":47,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF144\",\"pro_slug\":\"loafer-da-bong-5cm-lf144\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf144-1.jpg\",\"pro_view\":6,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":1,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF144\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:10:05.000000Z\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"5\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:58:29.000000Z\"}}', '2024-04-21 05:58:29', '2024-04-21 05:58:29'),
(65, 'Product', 'Cập nhật product', 48, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":48,\"pro_name\":\"Loafer da l\\u00ec 2cm LF143\",\"pro_slug\":\"loafer-da-li-2cm-lf143\",\"pro_price\":\"650000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1433.jpg\",\"pro_view\":3,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF143\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:10:36.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:58:54.000000Z\"},\"new\":{\"id\":48,\"pro_name\":\"Loafer da l\\u00ec 2cm LF143\",\"pro_slug\":\"loafer-da-li-2cm-lf143\",\"pro_price\":\"650000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf1433.jpg\",\"pro_view\":3,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF143\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:10:36.000000Z\",\"pro_number\":3,\"pro_import_goods\":0,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:58:54.000000Z\"}}', '2024-04-21 05:58:54', '2024-04-21 05:58:54'),
(66, 'Product', 'Cập nhật product', 49, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":49,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF140\",\"pro_slug\":\"loafer-da-bong-5cm-lf140\",\"pro_price\":\"950000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf140.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF140\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:11:10.000000Z\",\"pro_number\":4,\"pro_import_goods\":0,\"pro_number_import\":\"4\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:59:22.000000Z\"},\"new\":{\"id\":49,\"pro_name\":\"Loafer da b\\u00f3ng 5cm LF140\",\"pro_slug\":\"loafer-da-bong-5cm-lf140\",\"pro_price\":\"950000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf140.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF140\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:11:10.000000Z\",\"pro_number\":4,\"pro_import_goods\":0,\"pro_number_import\":\"4\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:59:22.000000Z\"}}', '2024-04-21 05:59:22', '2024-04-21 05:59:22'),
(67, 'Product', 'Cập nhật product', 50, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":50,\"pro_name\":\"Loafer da l\\u00ec 7cm LF133\",\"pro_slug\":\"loafer-da-li-7cm-lf133\",\"pro_price\":\"12000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":10,\"pro_avatar\":\"2024-04-21__lf1333.jpg\",\"pro_view\":12,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":2,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF133\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:11:49.000000Z\",\"pro_number\":1,\"pro_import_goods\":2,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:59:46.000000Z\"},\"new\":{\"id\":50,\"pro_name\":\"Loafer da l\\u00ec 7cm LF133\",\"pro_slug\":\"loafer-da-li-7cm-lf133\",\"pro_price\":\"12000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"2\",\"pro_expiration_date\":10,\"pro_avatar\":\"2024-04-21__lf1333.jpg\",\"pro_view\":12,\"pro_hot\":0,\"pro_expiration\":null,\"pro_active\":1,\"pro_pay\":2,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF133\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-04-25T15:11:49.000000Z\",\"pro_number\":1,\"pro_import_goods\":2,\"pro_number_import\":\"3\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T05:59:46.000000Z\"}}', '2024-04-21 05:59:46', '2024-04-21 05:59:46'),
(68, 'Product', 'Cập nhật product', 52, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":52,\"pro_name\":\"Loafer da l\\u00ec 3cm LF047\",\"pro_slug\":\"loafer-da-li-3cm-lf047\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"12\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf0473.jpg\",\"pro_view\":19,\"pro_hot\":0,\"pro_expiration\":\"2020-06-17 00:00:00\",\"pro_active\":1,\"pro_pay\":2,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF047\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":1,\"pro_review_star\":3,\"pro_age_review\":3,\"created_at\":\"2020-04-25T15:17:22.000000Z\",\"pro_number\":10,\"pro_import_goods\":1,\"pro_number_import\":\"20\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T06:00:15.000000Z\"},\"new\":{\"id\":52,\"pro_name\":\"Loafer da l\\u00ec 3cm LF047\",\"pro_slug\":\"loafer-da-li-3cm-lf047\",\"pro_price\":\"250000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":1,\"pro_admin_id\":0,\"pro_sale\":\"12\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__lf0473.jpg\",\"pro_view\":19,\"pro_hot\":0,\"pro_expiration\":\"2020-06-17 00:00:00\",\"pro_active\":1,\"pro_pay\":2,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: LF047\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":1,\"pro_review_star\":3,\"pro_age_review\":3,\"created_at\":\"2020-04-25T15:17:22.000000Z\",\"pro_number\":10,\"pro_import_goods\":1,\"pro_number_import\":\"20\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T06:00:15.000000Z\"}}', '2024-04-21 06:00:15', '2024-04-21 06:00:15'),
(69, 'Product', 'Cập nhật product', 53, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":53,\"pro_name\":\"S\\u1ee5c da l\\u00ec SU338\",\"pro_slug\":\"suc-da-li-su338\",\"pro_price\":\"10000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"20\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3383.jpg\",\"pro_view\":3,\"pro_hot\":0,\"pro_expiration\":\"2020-06-27 00:00:00\",\"pro_active\":1,\"pro_pay\":1,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU338\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-06-18T12:11:52.000000Z\",\"pro_number\":602,\"pro_import_goods\":0,\"pro_number_import\":\"39\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T06:00:49.000000Z\"},\"new\":{\"id\":53,\"pro_name\":\"S\\u1ee5c da l\\u00ec SU338\",\"pro_slug\":\"suc-da-li-su338\",\"pro_price\":\"10000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"20\",\"pro_expiration_date\":null,\"pro_avatar\":\"2024-04-21__su3383.jpg\",\"pro_view\":3,\"pro_hot\":0,\"pro_expiration\":\"2020-06-27 00:00:00\",\"pro_active\":1,\"pro_pay\":1,\"pro_description\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m: SU338\",\"pro_content\":\"Mi\\u1ec5n ph\\u00ed giao h\\u00e0ng v\\u1edbi h\\u00f3a \\u0111\\u01a1n t\\u1eeb 999.000\\u0111\\r\\n083.252.8282 - Hotline \\u0111\\u1eb7t h\\u00e0ng ( 8h30-17h30 )\\r\\nGiao h\\u00e0ng nhanh tr\\u00ean to\\u00e0n qu\\u1ed1c\\r\\nThanh to\\u00e1n ti\\u1ec7n l\\u1ee3i v\\u1edbi nhi\\u1ec1u h\\u00ecnh th\\u1ee9c\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-06-18T12:11:52.000000Z\",\"pro_number\":602,\"pro_import_goods\":0,\"pro_number_import\":\"39\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2024-04-21T06:00:49.000000Z\"}}', '2024-04-21 06:00:49', '2024-04-21 06:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doantotnghiep@gmail.com', '$2y$10$kNYA/jfQW0d4KS9blR0SOODPwVXB.Mr43sx.GbKGiZj6rlCiilXEm', '0988999999', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(2, 'Nhân viên', 'nhanvien@gmail.com', '$2y$10$NNYi0koqS93aRQunXTE76OeGeU4e6jFm6GatlHcHCM6.DVYrswY7G', '0986420994', NULL, NULL, NULL, 2, 1, NULL, '2020-06-13 06:23:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) NOT NULL,
  `a_slug` varchar(191) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(191) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Special Collection - \"Because Of You\"', 'special-collection-because-of-you', 1, 1, 1, 0, 'Với thông điệp “Because Of You” HA HUYEN muốn thông qua hình ảnh của cặp đôi Hương Liên & Tuấn Ngọc để kể câu chuyện tình yêu ngọt ngào của các cặp đôi đang yêu và dành tặng nàng lời chúc phúc đẹp nhất thế gian.', '2024-04-21__1-2-ngang-2048x1024.jpg', '<p>Với th&ocirc;ng điệp &ldquo;Because Of You&rdquo; HA HUYEN muốn th&ocirc;ng qua h&igrave;nh ảnh của cặp đ&ocirc;i Hương Li&ecirc;n &amp; Tuấn Ngọc để kể c&acirc;u chuyện t&igrave;nh y&ecirc;u ngọt ng&agrave;o của c&aacute;c cặp đ&ocirc;i đang y&ecirc;u v&agrave; d&agrave;nh tặng n&agrave;ng lời ch&uacute;c ph&uacute;c đẹp nhất thế gian.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/11/9-anh-ngang-.png\" style=\"height:4095px; width:6144px\" /></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-vai-9cm-cg1514/\" target=\"_blank\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/11/CG1514.png\" title=\"\" /></a></p>\r\n\r\n<h2><a href=\"https://hahuyenshoes.vn/cg-xinjing-khoet-eo-mix-vien-trong-got-cong-5p/\" target=\"_blank\">CG1514</a></h2>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-studio-li-hoa-be-vat-ngang-gn-kl-9p/\" target=\"_blank\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/11/CG881.png\" style=\"height:900px; width:900px\" /></a></p>', '2020-04-24 03:35:28', 0, 1, '2024-04-21 06:22:28'),
(2, 'Christmas Feast High Heels', 'christmas-feast-high-heels', 1, 1, 1, 0, 'Với bộ sưu tập này nàng có thể chọn cho mình những mẫu cao gót phù hợp với nhiều sự kiện, những dịp lễ, những cuộc đi chơi và cuộc hẹn, …\r\nNhờ thiết kế sang trọng và đầy nữ tính, các nàng tha hồ diện lễ phục và trở thành điểm sáng cực thu hút trong ngày lễ.', '2024-04-21__bst-web-3.jpg', '<p><a href=\"https://hahuyenshoes.vn/cg-hhs-quai-quan-da-gn-9p-888-1/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/01/CG1395-2-1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-quai-quan-da-gn-9p-888-1/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/01/CG1395-4-1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cg-hhs-quai-quan-da-gn-9p-888-1/\">CG HHS quai quấn đ&aacute; GN 9p &ndash; 888-1</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/suc-da-li-5cm-su350/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/09/SU350-4-1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/suc-da-li-5cm-su350/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/09/SU350-6-1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/suc-da-li-5cm-su350/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/suc-da-li-5cm-su350/\">Sục da l&igrave; 5cm SU350</a></h3>\r\n\r\n<p>559.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-7cm-cg1595/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/11/CG15955.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-7cm-cg1595/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/11/CG15951-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-7cm-cg1595/\" rel=\"nofollow\">LỰA CHỌN C&Aacute;C T&Ugrave;Y CHỌN</a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-7cm-cg1595/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-li-7cm-cg1595/\">Cao g&oacute;t l&igrave; 7cm CG1595</a></h3>\r\n\r\n<p>559.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/suc-vai-5cm-su353/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/01/SU3531.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/suc-vai-5cm-su353/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/01/SU3532.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/suc-vai-5cm-su353/\">Sục vải 5cm SU353</a></h3>\r\n\r\n<p><del>559.000₫</del>&nbsp;<ins>391.300₫</ins></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-9cm-cg1656/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG16562.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-9cm-cg1656/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG16564.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-bong-9cm-cg1656/\">Cao g&oacute;t b&oacute;ng 9cm CG1656</a></h3>\r\n\r\n<p><del>659.000₫</del>&nbsp;<ins>329.500₫</ins></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-9cm-cg1672/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG16721.jpg\" style=\"height:600px; width:600px\" /></a></p>', '2020-04-25 15:22:03', 0, 1, '2024-04-21 06:23:12'),
(3, 'Princess Trensparent Heels', 'princess-trensparent-heels', 1, 1, 1, 0, 'Sở hữu ngay một trong những đôi cao gót quai trong vô cùng thanh lịch và sang trọng mới nhất của HHS nhé!\r\n\r\nMỗi đôi giày đều được HHS chọn lựa tỉ mỉ và cẩn thận, ưu tiên sự thoải mái, linh hoạt dễ phối đồ và độ bền chắc của đôi giày, đảm bảo khiến các nàng hài lòng.\r\n\r\nĐặc biệt với thiết kế khóa đá ở phần mũi giày với nhiều kiểu nơ có hình dạng khác nhau rất độc đáo sẽ tôn lên đôi chân thon gọn cho nàng.', '2024-04-21__princess-heels.jpg', '<p><a href=\"https://hahuyenshoes.vn/cg-hhs-rh-trong-mui-no-da-ni-gv-3p-3112-3/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/07/CG1145-1-1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-rh-trong-mui-no-da-ni-gv-3p-3112-3/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/07/cg1145-2-683x1024.jpg\" style=\"height:1024px; width:683px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-rh-trong-mui-no-da-ni-gv-3p-3112-3/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cg-hhs-rh-trong-mui-no-da-ni-gv-3p-3112-3/\">Cao g&oacute;t trong 3cm CG1145</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-woji-li-da-vat-gn-9p/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/10/CG11472-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-woji-li-da-vat-gn-9p/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/10/CG11471-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-woji-li-da-vat-gn-9p/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cg-woji-li-da-vat-gn-9p/\">Cao g&oacute;t l&igrave; 9cm CG1147</a></h3>\r\n\r\n<p>559.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-da-mat-troi-gnkl-9p/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/10/CG1149-2.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-da-mat-troi-gnkl-9p/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/10/CG11492-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-da-mat-troi-gnkl-9p/\" rel=\"nofollow\">LỰA CHỌN C&Aacute;C T&Ugrave;Y CHỌN</a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-da-mat-troi-gnkl-9p/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-da-mat-troi-gnkl-9p/\">Cao g&oacute;t l&igrave; 9cm CG1149</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-no-da-ni-gnkl-9p-2/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/10/CG11521-4.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-no-da-ni-gnkl-9p-2/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/10/CG1152-3.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cg-hhs-cc-trong-no-da-ni-gnkl-9p-2/\">Cao g&oacute;t trong 9cm CG1152</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-9cm-cg1804/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG18042-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-9cm-cg1804/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG18041-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-9cm-cg1804/\">Cao g&oacute;t l&igrave; 9cm CG1804</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-trong-7cm-cg1856/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18561-1.jpg\" style=\"height:600px; width:600px\" /></a></p>', '2020-04-25 15:23:23', 0, 0, '2024-04-21 06:23:42'),
(4, 'Twinkling White Heels', 'twinkling-white-heels', 0, 1, 3, 0, 'BST “Twinkling White Heels” là sự kết hợp đầy tinh tế và hài hòa giữa mũi nhọn, quai quấn, đính đá giúp nàng tự tin hơn rất nhiều trước đám đông. Thích hợp để các nàng có thể diện đi tiệc, ngày trọng đại, đi chơi hay cả những chuyến đi công tác xa nhà. Êm ái, nâng niu bàn chân nàng trên mọi cung đường.\r\n\r\nCùng chiêm ngưỡng những mẫu cao gót trắng cực sang chảnh và ấn tượng trong BST này nhé.', '2024-04-21__twinkling-white-heels-1.jpg', '<p><a href=\"https://hahuyenshoes.vn/woji-van-nhu-quai-co-got-vuong-kin-got-9p/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/07/CG0941-2.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/woji-van-nhu-quai-co-got-vuong-kin-got-9p/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2022/07/CG0942-2.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/woji-van-nhu-quai-co-got-vuong-kin-got-9p/\" rel=\"nofollow\">LỰA CHỌN C&Aacute;C T&Ugrave;Y CHỌN</a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/woji-van-nhu-quai-co-got-vuong-kin-got-9p/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/woji-van-nhu-quai-co-got-vuong-kin-got-9p/\">Cao g&oacute;t nhũ 9cm CG094</a></h3>\r\n\r\n<p>459.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-da-san-9cm-cg1676/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/11/CG1676-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-da-san-9cm-cg1676/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/11/CG1676-2.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-da-san-9cm-cg1676/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-da-san-9cm-cg1676/\">Cao g&oacute;t da sần 9cm CG1676</a></h3>\r\n\r\n<p><del>559.000₫</del>&nbsp;<ins>391.300₫</ins></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-9cm-cg1767/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/01/CG1767.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-9cm-cg1767/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/01/CG17671.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-9cm-cg1767/\" rel=\"nofollow\">LỰA CHỌN C&Aacute;C T&Ugrave;Y CHỌN</a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-9cm-cg1767/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-li-9cm-cg1767/\">Cao g&oacute;t l&igrave; 9cm CG1767</a></h3>\r\n\r\n<p><del>5</del></p>', '2020-04-25 15:24:23', 0, 0, '2024-04-21 06:24:17'),
(5, 'Beachy Sandals', 'beachy-sandals', 0, 1, 3, 0, 'Beachy Sandal gửi gắm những mẫu dép, sandal màu đen, kem có đế chunky lựa chọn hàng đầu cho những chuyến đi biển 2024.\r\n\r\nNàng có thể mang cùng quần short áo kiểu hoặc đầm maxi để có những outfit mùa hè “cực cháy”.\r\n\r\nMời các nàng tham khảo bộ sưu tập mới bên dưới và chọn ngay cho mình một đôi yêu thích nhé!', '2024-04-21__beachy-sandal-ngang.jpg', '<p><a href=\"https://hahuyenshoes.vn/guoc-le-da-li-5cm-gl581/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/04/GL581.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/guoc-le-da-li-5cm-gl581/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/04/GL5811.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/guoc-le-da-li-5cm-gl581/\">Guốc l&ecirc; da l&igrave; 5cm GL581</a></h3>\r\n\r\n<p>499.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/guoc-le-da-bong-7cm-gl599/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/03/GL5992t.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/guoc-le-da-bong-7cm-gl599/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/03/GL599.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/guoc-le-da-bong-7cm-gl599/\">Guốc l&ecirc; da b&oacute;ng 7cm GL599</a></h3>\r\n\r\n<p>559.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/dep-da-li-5cm-de496/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/03/DE4962-1.jpg\" style=\"height:600px; width:600px\" /></a></p>', '2020-04-25 15:25:14', 0, 1, '2024-04-21 06:24:55'),
(6, 'YEAR END PARTY COLLECTION - \"QueenCard\"', 'year-end-party-collection-queencard', 0, 1, 3, 0, 'Thời điểm cuối năm luôn là khoảng thời gian nàng bận rộn váy áo cho những buổi tiệc náo nhiệt, những sự kiện chúc mừng thành quả cho sự cố gắng một năm qua. Và bộ sưu tập giày được chuẩn bị bởi HA HUYEN giống như những “kỵ sĩ hộ tống”, đại diện cho sự đồng hành của thương hiệu trong mọi khoảnh khắc nàng tỏa sáng ấy.', '2024-04-21__queencard-2048x928-1.jpg', '<p style=\"text-align:justify\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/01/8.jpg\" style=\"height:1370px; width:2056px\" /></p>', '2020-04-25 15:26:00', 1, 0, '2024-04-21 06:25:39'),
(7, 'Magical Ornament Loafer', 'magical-ornament-loafer', 0, 1, 3, 0, 'HHS đã chuẩn bị cho nàng những đôi giày đáng mua nhất cho mùa lễ hội năm nay trong bộ sưu tập này.\r\nBộ sưu tập mang đến cho nàng những đôi Loafer và Mary Jane có thiết kế đơn giản, nhẹ nhàng và nữ tính.', '2024-04-21__bst-web-4.jpg', '<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1521/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2021/11/CG15211.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1521/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/10/CG1521.png\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1521/\" rel=\"nofollow\">LỰA CHỌN C&Aacute;C T&Ugrave;Y CHỌN</a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1521/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1521/\">Cao g&oacute;t b&oacute;ng 7cm CG1521</a></h3>\r\n\r\n<p>659.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/loafer-5cm-lf049/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/LF0492.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/loafer-5cm-lf049/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/LF0491.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/loafer-5cm-lf049/\" rel=\"nofollow\">Xem nhanh</a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/loafer-5cm-lf049/\">Loafer 5cm LF049</a></h3>\r\n\r\n<p>499.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1568/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2021/11/CG1568.jpg\" style=\"height:600px; width:600px\" /></a></p>', '2020-04-25 15:27:03', 1, 0, '2024-04-21 06:26:09'),
(8, 'BST Chic High Heels', 'bst-chic-high-heels', 1, 1, 3, 0, 'Tối giản, nhẹ nhàng và thanh lịch là những tính từ hoàn hảo nhất để miêu tả vẻ đẹp của BST “Chic High Heels “.', '2024-04-21__cg18581.jpg', '<p><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1858/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG1858.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1858/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18581.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1858/\">Cao g&oacute;t l&igrave; 5cm CG1858</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1854/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18541.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1854/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18542.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1854/\">Cao g&oacute;t b&oacute;ng 7cm CG1854</a></h3>\r\n\r\n<p>659.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1853/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG1853.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1853/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18532.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1853/\">Cao g&oacute;t b&oacute;ng 7cm CG1853</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bon-7cm-cg1852/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18523.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bon-7cm-cg1852/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18522.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-bon-7cm-cg1852/\">Cao g&oacute;t b&oacute;ng 7cm CG1852</a></h3>\r\n\r\n<p>659.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1846/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18462.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1846/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18461.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1846/\">Cao g&oacute;t l&igrave; 5cm CG1846</a></h3>\r\n\r\n<p><del>599.000₫</del>&nbsp;<ins>299.500₫</ins></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-3cm-cg1845/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18454.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-3cm-cg1845/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18457.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-li-3cm-cg1845/\">Cao g&oacute;t l&igrave; 3cm CG1845</a></h3>\r\n\r\n<p>599.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1844/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG18441.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1844/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2024/02/CG1844.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-bong-7cm-cg1844/\">Cao g&oacute;t b&oacute;ng 7cm CG1844</a></h3>\r\n\r\n<p>659.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/loafer-da-bong-5cm-lf106/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/LF1061.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/loafer-da-bong-5cm-lf106/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/LF106-1.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/loafer-da-bong-5cm-lf106/\">Loafer da b&oacute;ng 5cm LF106</a></h3>\r\n\r\n<p>659.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1737/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG17371-2.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1737/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG17372.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-li-5cm-cg1737/\">Cao g&oacute;t l&igrave; 5cm CG1737</a></h3>\r\n\r\n<p>559.000₫</p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-5cm-cg1740/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG1740-1-800x800.jpg\" style=\"height:800px; width:800px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-5cm-cg1740/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/CG17404.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-5cm-cg1740/\">Cao g&oacute;t l&igrave; 5cm CG1740</a></h3>\r\n\r\n<p><del>699.000₫</del>&nbsp;<ins>349.500₫</ins></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/loafer-da-li-5cm-lf089/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/LF0893.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/loafer-da-li-5cm-lf089/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/12/LF0892.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<h3><a href=\"https://hahuyenshoes.vn/loafer-da-li-5cm-lf089/\">Loafer da l&igrave; 5cm LF089</a></h3>\r\n\r\n<p><del>599.000₫</del>&nbsp;<ins>299.000₫</ins></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-5cm-cg1549/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/10/CG15492.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p><a href=\"https://hahuyenshoes.vn/cao-got-nhung-li-5cm-cg1549/\"><img alt=\"\" src=\"https://hahuyenshoes.vn/wp-content/uploads/2023/10/CG15491.jpg\" style=\"height:600px; width:600px\" /></a></p>', '2020-04-25 15:37:01', 1, 0, '2024-04-21 06:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) NOT NULL,
  `atb_slug` varchar(191) NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Nước Mỹ', 'nuoc-my', 1, 2, '2020-04-25 11:04:25', '2020-04-26 14:56:25'),
(2, 'Nước Anh', 'nuoc-anh', 1, 1, '2020-04-25 11:04:31', NULL),
(3, 'Kem', 'kem', 2, 1, '2020-04-25 11:04:39', '2024-04-21 05:26:55'),
(4, 'Đen', 'den', 2, 1, '2020-04-25 11:04:44', '2024-04-21 05:26:45'),
(5, '36', '36', 3, 1, '2020-04-29 03:01:29', '2024-04-21 05:26:32'),
(6, '35', '35', 3, 1, '2020-04-29 03:01:35', '2024-04-21 05:26:22'),
(7, 'Da lì', 'da-li', 4, 1, '2020-04-29 03:06:56', '2024-04-21 05:32:38'),
(8, 'Da bóng đen', 'da-bong-den', 4, 1, '2020-04-29 03:07:02', '2024-04-21 05:28:49'),
(9, '37', '37', 3, 1, '2024-04-21 05:33:34', NULL),
(10, '38', '38', 3, 1, '2024-04-21 05:33:41', '2024-04-22 15:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) NOT NULL,
  `c_slug` varchar(191) NOT NULL,
  `c_avatar` varchar(191) DEFAULT NULL,
  `c_banner` varchar(191) DEFAULT NULL,
  `c_description` varchar(191) DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Cao gót', 'cao-got', '2024-04-21__cg-2.jpg', NULL, NULL, 0, 0, 1, '2020-04-25 11:03:42', '2024-04-21 05:18:18'),
(2, 'Guốc Lê', 'guoc-le', '2024-04-21__gl-2.jpg', NULL, NULL, 0, 0, 1, '2020-04-25 11:03:47', '2024-04-21 05:18:40'),
(3, 'Sục', 'suc', '2024-04-21__su-1.jpg', NULL, NULL, 0, 0, 1, '2020-04-25 14:05:25', '2024-04-21 05:18:54'),
(4, 'Búp Bê', 'bup-be', '2024-04-21__bb-2.jpg', NULL, NULL, 0, 0, 1, '2020-04-25 14:59:15', '2024-04-21 05:19:12'),
(5, 'Loafer', 'loafer', '2024-04-21__lf-2.jpg', NULL, NULL, 0, 1, 1, '2020-04-26 14:26:15', '2024-04-21 05:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) DEFAULT NULL,
  `cmt_email` varchar(191) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_images` text DEFAULT NULL,
  `cmt_product_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_images`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'abc', 0, NULL, 52, 0, 1, 0, 0, '2020-04-27 21:06:02', NULL),
(2, NULL, NULL, 'Chào bạn hay quá à nha', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 14:48:45', NULL),
(3, NULL, NULL, 'Hay nhỉ. Tôi cũng chịu các bạn rồi đó', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 16:02:34', NULL),
(4, NULL, NULL, 'Đang bị cache ko load dược commend', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 16:05:33', NULL),
(5, NULL, NULL, 'Hay quá. Bạn cho tôi chút tự tin được không', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 16:15:28', NULL),
(6, NULL, NULL, 'Sản phẩm tuyệt vời', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 16:27:45', NULL),
(7, NULL, NULL, '2121212121', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 16:58:41', NULL),
(8, NULL, NULL, '2121212121', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 16:58:48', NULL),
(9, NULL, NULL, 'Đúng là quá thông minh mà', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 16:59:06', NULL),
(10, NULL, NULL, 'Chán vđ ra. Ok chào bạn', 0, NULL, 50, 0, 2, 0, 0, '2020-06-18 17:05:16', NULL),
(11, NULL, NULL, 'Hay quá. Tưởng thế nào chứ sản phẩm này thì ok . Không ngon', 0, '[\"2020-06-19__screen-shot-2020-06-18-at-101033-pmpng.png\",\"2020-06-19__screen-shot-2020-06-18-at-101036-pmpng.png\"]', 50, 0, 2, 0, 0, '2020-06-18 17:10:00', NULL),
(12, NULL, NULL, 'Hay hay quá. OK Chào bạn', 0, '[\"2020-06-19__screen-shot-2020-06-18-at-101033-pmpng.png\",\"2020-06-19__screen-shot-2020-06-18-at-101036-pmpng.png\"]', 48, 0, 2, 0, 0, '2020-06-18 17:20:59', NULL),
(13, NULL, NULL, '@Support: Đố bạn nhìn được ntn đó', 12, '[]', 48, 0, 2, 0, 0, '2020-06-18 17:21:22', NULL),
(14, NULL, NULL, '@Support: Hi thử cái ảnh xem ntn', 12, '[\"2020-06-19__screen-shot-2020-06-18-at-101033-pmpng.png\"]', 48, 0, 2, 0, 0, '2020-06-18 17:23:23', NULL),
(15, NULL, NULL, 'Hi thử bình luận xem ntn', 0, '[\"2020-06-19__anh1jpg.jpg\"]', 47, 0, 2, 0, 0, '2020-06-18 17:24:33', NULL),
(16, NULL, NULL, 'Hi hay quá à nha', 0, '[\"2020-06-19__anh3jpg.jpg\"]', 47, 0, 3, 0, 0, '2020-06-18 17:25:12', NULL),
(17, NULL, NULL, '@Support: Sản phẩm này mới thích nè', 15, '[\"2020-06-19__anh1jpg.jpg\",\"2020-06-19__anh2jpg.jpg\",\"2020-06-19__anh3jpg.jpg\"]', 47, 0, 3, 0, 0, '2020-06-18 17:25:34', NULL),
(18, NULL, NULL, 'Sản phẩm tuyệt vời vđ', 0, '[\"2020-06-19__screen-shot-2020-06-18-at-101036-pmpng.png\",\"2020-06-19__screen-shot-2020-06-18-at-105225-pmpng.png\",\"2020-06-19__screen-shot-2020-06-19-at-122546-ampng.png\"]', 47, 0, 2, 0, 0, '2020-06-18 17:32:58', NULL),
(19, NULL, NULL, '@Support: Gủi éo gì lắm thế trời', 18, '[\"2020-06-19__screen-shot-2020-06-18-at-105225-pmpng.png\",\"2020-06-19__screen-shot-2020-06-19-at-122546-ampng.png\",\"2020-06-19__screen-shot-2020-06-19-at-122901-ampng.png\"]', 47, 0, 2, 0, 0, '2020-06-18 17:34:44', NULL),
(20, NULL, NULL, '12112121', 0, '[\"2020-06-19__screen-shot-2020-06-18-at-105225-pmpng.png\",\"2020-06-19__screen-shot-2020-06-18-at-101036-pmpng.png\"]', 47, 0, 2, 0, 0, '2020-06-18 17:52:11', NULL),
(21, NULL, NULL, 'Đánh giá hơi nhiều rồi đó', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:36:21', NULL),
(22, NULL, NULL, '@Support: Thì có làm sao đâu mà', 21, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:36:29', NULL),
(23, NULL, NULL, '@Support: Hay quá đi nà', 21, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:36:34', NULL),
(24, NULL, NULL, 'Đôi lúc bạn buồn vl ra nhưng tôi cũng buồn', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:37:33', NULL),
(25, NULL, NULL, 'Cuộc sống mà. Ko ai biết trước được điều gì', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:37:43', NULL),
(26, NULL, NULL, 'Nghĩ nó chán. Nhưng kệ thôi biết sao giờ', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:37:54', NULL),
(27, NULL, NULL, 'Đây là cmt thứ 9 của tôi', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:38:26', NULL),
(28, NULL, NULL, 'Còn đây là thứ 10 nè', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:38:31', NULL),
(29, NULL, NULL, 'Sao đéo thấy phân trang nghỉ', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:38:40', NULL),
(30, NULL, NULL, 'Fail cmnr', 0, '[]', 47, 0, 2, 0, 0, '2020-06-20 00:38:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) NOT NULL,
  `k_slug` varchar(191) NOT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) NOT NULL,
  `mn_slug` varchar(191) NOT NULL,
  `mn_avatar` varchar(191) DEFAULT NULL,
  `mn_banner` varchar(191) DEFAULT NULL,
  `mn_description` varchar(191) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Kinh nghiệm mua giày cao gót', 'kinh-nghiem-mua-giay-cao-got', NULL, NULL, NULL, 0, 1, '2020-04-24 03:33:34', '2024-04-21 06:20:57'),
(2, 'Bộ sưu tập', 'bo-suu-tap', NULL, NULL, NULL, 0, 1, '2020-04-24 03:33:38', '2024-04-21 06:26:59'),
(3, 'Best seller', 'best-seller', NULL, NULL, NULL, 0, 1, '2020-04-24 03:33:42', '2024-04-21 06:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(37, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 2),
(38, '2020_04_29_112931_create_invoice_entered_in_tables', 3),
(39, '2020_06_17_192357_create_product_invoice_entered_table', 4),
(40, '2020_06_21_112319_create_permission_tables', 5),
(41, '2020_06_21_205241_create_activity_log_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `od_product_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_size` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `od_size`, `created_at`, `updated_at`) VALUES
(1, 1, 50, 2, 1, 11760, 0, '2020-04-28 02:06:31', NULL),
(2, 1, 52, 12, 1, 220000, 0, '2020-04-28 02:06:31', NULL),
(3, 3, 52, 12, 2, 220000, 0, '2020-06-07 09:42:21', NULL),
(4, 4, 45, 3, 1, 504400, 0, '2020-06-07 09:45:50', NULL),
(5, 5, 47, 1, 1, 237600, 0, '2020-06-08 15:58:19', NULL),
(6, 6, 50, 2, 2, 11760, 0, '2020-06-15 11:48:55', NULL),
(7, 7, 53, 20, 2, 8000, 0, '2020-06-18 12:17:30', NULL),
(8, 8, 52, 12, 2, 220000, 0, '2024-04-21 06:31:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_slug` varchar(191) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_expiration_date` tinyint(4) DEFAULT NULL,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_expiration` datetime DEFAULT NULL,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) DEFAULT NULL,
  `pro_energy` varchar(191) DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_expiration`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(1, 'Cao gót lì 8cm CG1894', 'cao-got-li-8cm-cg1894', 800000, 0, 1, 1, 0, 2, NULL, '2024-04-21__cg1894.jpg', 4, 1, NULL, 1, 0, 'Mã sản phẩm: CG1894', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 11:05:47', 10, 0, 10, NULL, NULL, 0, '2024-04-21 05:31:08'),
(2, 'Guốc lê da lì 5cm GL645', 'guoc-le-da-li-5cm-gl645', 330000, 0, 2, 1, 0, 1, NULL, '2024-04-21__gl645c.jpg', 2, 0, NULL, 1, 0, 'Mã sản phẩm: GL645', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:37:12', 40, 0, 40, NULL, NULL, 0, '2024-04-21 05:32:13'),
(3, 'Guốc lê da bóng 7cm GL599', 'guoc-le-da-bong-7cm-gl599', 210000, 0, 2, 1, 0, 5, NULL, '2024-04-21__gl599.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: GL599', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:37:49', 8, 0, 8, NULL, NULL, 0, '2024-04-21 05:33:21'),
(4, 'Guốc lê da lì 5cm GL641', 'guoc-le-da-li-5cm-gl641', 250000, 0, 2, 1, 0, 1, NULL, '2024-04-21__gl6413.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: GL641', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:39:00', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:34:42'),
(5, 'Guốc lê da lì 5cm GL581', 'guoc-le-da-li-5cm-gl581', 450000, 0, 2, 1, 0, 2, NULL, '2024-04-21__gl5811.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: GL581', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:40:39', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:35:23'),
(6, 'Guốc lê da bóng 15cm GL640', 'guoc-le-da-bong-15cm-gl640', 360000, 0, 2, 1, 0, 1, NULL, '2024-04-21__gl6403.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: GL640', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:41:37', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:35:54'),
(7, 'Guốc lê da lì 8cm GL638', 'guoc-le-da-li-8cm-gl638', 234600, 0, 2, 1, 0, 6, NULL, '2024-04-21__gl6381-1.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: GL638', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:42:30', 25, 0, 25, NULL, NULL, 0, '2024-04-21 05:36:31'),
(8, 'Guốc lê da lì 7cm GL637', 'guoc-le-da-li-7cm-gl637', 500000, 0, 2, 1, 0, 2, NULL, '2024-04-21__gl6371-1.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: GL637', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:43:13', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:37:01'),
(9, 'Guốc lê trong 7cm GL635', 'guoc-le-trong-7cm-gl635', 170000, 0, 1, 1, 0, 1, NULL, '2024-04-21__gl635.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: GL635', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:43:47', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:37:51'),
(10, 'Guốc lê da lì 5cm GL628', 'guoc-le-da-li-5cm-gl628', 260000, 0, 2, 1, 0, 2, NULL, '2024-04-21__gl6283.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: GL628', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:44:25', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:38:19'),
(11, 'Guốc lê da lì 7cm GL636', 'guoc-le-da-li-7cm-gl636', 100000, 0, 2, 1, 0, 3, NULL, '2024-04-21__gl6362.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: GL636', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:45:05', 2, 0, 2, NULL, NULL, 0, '2024-04-21 05:38:51'),
(12, 'Cao gót lụa 6cm CG1888', 'cao-got-lua-6cm-cg1888', 150000, 0, 1, 1, 0, 1, NULL, '2024-04-21__cg1888.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: CG1888', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:45:42', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:39:38'),
(13, 'Cao gót da sần 8cm CG1222', 'cao-got-da-san-8cm-cg1222', 234600, 0, 1, 1, 0, 3, NULL, '2024-04-21__cg12222-1.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: CG1222', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:46:27', 25, 0, 25, NULL, NULL, 0, '2024-04-21 05:40:03'),
(14, 'Cao gót nhũ 9cm CG810', 'cao-got-nhu-9cm-cg810', 150000, 0, 1, 1, 0, 1, NULL, '2024-04-21__cg8103-2.jpg', 2, 0, NULL, 1, 0, 'Mã sản phẩm: CG810', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:47:08', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:40:34'),
(15, 'Cao gót da lộn 7cm CG278', 'cao-got-da-lon-7cm-cg278', 260000, 0, 1, 1, 0, 6, NULL, '2024-04-21__cg2781.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: CG278', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:47:51', 2, 0, 2, NULL, NULL, 0, '2024-04-21 05:40:58'),
(16, 'Sục da bóng 3cm SU376', 'suc-da-bong-3cm-su376', 250000, 0, 3, 1, 0, 1, NULL, '2024-04-21__su3761.jpg', 3, 0, NULL, 1, 0, 'Mã sản phẩm: SU376', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:48:52', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:41:45'),
(17, 'Sục da lì 11cm SU375', 'suc-da-li-11cm-su375', 360000, 0, 3, 1, 0, 3, NULL, '2024-04-21__su3751.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: SU375', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:49:24', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:42:12'),
(18, 'Sục nhung lì 8cm SU374', 'suc-nhung-li-8cm-su374', 270000, 0, 3, 1, 0, 0, NULL, '2024-04-21__su3741.jpg', 0, 1, NULL, 1, 0, 'Mã sản phẩm: SU374', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:50:06', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:42:34'),
(19, 'Sục da lì 5cm SU373', 'suc-da-li-5cm-su373', 230000, 0, 3, 1, 0, 0, NULL, '2024-04-21__su373-1.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: SU373', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:50:36', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:43:04'),
(20, 'Sục nhũ 7cm SU372', 'suc-nhu-7cm-su372', 350000, 0, 3, 1, 0, 2, NULL, '2024-04-21__su372.jpg', 0, 1, NULL, 1, 0, 'Mã sản phẩm: SU372', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:51:06', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:43:27'),
(21, 'Sục da lì 5cm SU371', 'suc-da-li-5cm-su371', 250000, 0, 3, 1, 0, 0, NULL, '2024-04-21__su371.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: SU371', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:51:38', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:43:51'),
(22, 'Sục da lì 3cm SU369', 'suc-da-li-3cm-su369', 560000, 0, 3, 1, 0, 1, NULL, '2024-04-21__su369-2.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: SU369', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:52:25', 4, 0, 4, NULL, NULL, 0, '2024-04-21 05:44:31'),
(23, 'Sục da lì 5cm SU368', 'suc-da-li-5cm-su368', 260000, 0, 3, 1, 0, 1, NULL, '2024-04-21__su368.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: SU368', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:53:01', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:44:59'),
(24, 'Sục da lì 3cm SU357', 'suc-da-li-3cm-su357', 250000, 0, 3, 1, 0, 5, NULL, '2024-04-21__su357-2.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: SU357', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:54:32', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:45:22'),
(25, 'Sục da lì 7cm SU352', 'suc-da-li-7cm-su352', 450000, 0, 3, 1, 0, 1, NULL, '2024-04-21__su352.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: SU352', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:55:14', 25, 0, 25, NULL, NULL, 0, '2024-04-21 05:45:46'),
(26, 'Sục da lì 3cm SU359', 'suc-da-li-3cm-su359', 330000, 0, 3, 1, 0, 0, NULL, '2024-04-21__su3596.png', 0, 0, NULL, 1, 0, 'Mã sản phẩm: SU359', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:56:03', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:46:19'),
(27, 'Cao gót lì 5cm CG1568', 'cao-got-li-5cm-cg1568', 350000, 0, 1, 1, 0, 1, NULL, '2024-04-21__cg15682.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: CG1568', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:56:47', 2, 0, 2, NULL, NULL, 0, '2024-04-21 05:47:08'),
(28, 'Cao gót lì 9cm CG1567', 'cao-got-li-9cm-cg1567', 560000, 0, 1, 1, 0, 3, NULL, '2024-04-21__cg1567-1.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: CG1567', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:57:20', 8, 0, 8, NULL, NULL, 0, '2024-04-21 05:47:32'),
(29, 'Cao gót lì 9cm CG1575', 'cao-got-li-9cm-cg1575', 56000, 0, 1, 1, 0, 2, NULL, '2024-04-21__cg1575.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: CG1575', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:58:03', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:47:58'),
(30, 'Cao gót lì 7cm CG1863', 'cao-got-li-7cm-cg1863', 140000, 0, 1, 1, 0, 0, NULL, '2024-04-21__cg18632.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: CG1863', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:58:43', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:48:28'),
(31, 'Bệt da lì 3cm BB610', 'bet-da-li-3cm-bb610', 210000, 0, 4, 1, 0, 2, NULL, '2024-04-21__bb6101.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB610', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 14:59:17', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:49:04'),
(32, 'Bệt da lì BB609', 'bet-da-li-bb609', 320000, 0, 4, 1, 0, 3, NULL, '2024-04-21__bb6092.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB609', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:00:02', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:49:31'),
(33, 'Bệt da lì 1cm BB608', 'bet-da-li-1cm-bb608', 270000, 0, 4, 1, 0, 3, NULL, '2024-04-21__bb6085.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: BB608', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:00:41', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:51:09'),
(34, 'Bệt da lì BB607', 'bet-da-li-bb607', 220000, 0, 4, 1, 0, 3, NULL, '2024-04-21__bb6071-1.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB607', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:01:26', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:51:39'),
(35, 'Bệt da lì BB606', 'bet-da-li-bb606', 195000, 0, 4, 1, 0, 3, NULL, '2024-04-21__bb606.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB606', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:02:15', 25, 0, 25, NULL, NULL, 0, '2024-04-21 05:52:07'),
(36, 'Bệt da sần 1cm BB584', 'bet-da-san-1cm-bb584', 100000, 0, 4, 1, 0, 10, NULL, '2024-04-21__bb584.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: BB584', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:02:59', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:52:34'),
(37, 'Bệt da lì BB571', 'bet-da-li-bb571', 160000, 0, 4, 1, 0, 2, NULL, '2024-04-21__bb5712-1.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB571', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:03:10', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:53:07'),
(38, 'Bệt da sần BB570', 'bet-da-san-bb570', 450000, 0, 4, 1, 0, 1, NULL, '2024-04-21__bb570f.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB570', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:03:41', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:53:38'),
(39, 'Bệt nhung 1cm BB568', 'bet-nhung-1cm-bb568', 270000, 0, 4, 1, 0, 0, NULL, '2024-04-21__bb568do.png', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB568', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:04:12', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:54:03'),
(40, 'Bệt da lì 1cm BB560', 'bet-da-li-1cm-bb560', 350000, 0, 4, 1, 0, 2, NULL, '2024-04-21__bb560-1a.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB560', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:04:48', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:54:31'),
(41, 'Bệt da lì 2cm BB552', 'bet-da-li-2cm-bb552', 410000, 0, 4, 1, 0, 2, NULL, '2024-04-21__bb552.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: BB552', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:05:33', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:55:03'),
(42, 'Loafer da lì 5cm LF149', 'loafer-da-li-5cm-lf149', 420000, 0, 5, 1, 0, 3, NULL, '2024-04-21__lf1492.jpg', 1, 0, NULL, 1, 0, 'Mã sản phẩm: LF149', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:06:43', -1, 0, -1, NULL, NULL, 0, '2024-04-21 05:55:48'),
(43, 'Loafer da bóng 5cm LF148', 'loafer-da-bong-5cm-lf148', 250000, 0, 5, 1, 0, 3, NULL, '2024-04-21__lf148.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: LF148', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:07:12', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:56:21'),
(44, 'Loafer 5cm LF147', 'loafer-5cm-lf147', 380000, 0, 5, 1, 0, 2, NULL, '2024-04-21__lf1474.jpg', 0, 1, NULL, 1, 0, 'Mã sản phẩm: LF147', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:07:45', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:56:55'),
(45, 'Loafer da bóng 5cm LF146', 'loafer-da-bong-5cm-lf146', 520000, 0, 5, 1, 0, 3, NULL, '2024-04-21__lf146-1.jpg', 9, 1, NULL, 1, 1, 'Mã sản phẩm: LF146', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:08:22', 6, 0, 6, NULL, NULL, 0, '2024-04-21 05:57:26'),
(46, 'Loafer da bóng 7cm LF145', 'loafer-da-bong-7cm-lf145', 290000, 0, 5, 1, 0, 2, NULL, '2024-04-21__lf1451-1.jpg', 0, 0, NULL, 1, 0, 'Mã sản phẩm: LF145', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:09:12', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:58:02'),
(47, 'Loafer da bóng 5cm LF144', 'loafer-da-bong-5cm-lf144', 240000, 0, 5, 1, 0, 1, NULL, '2024-04-21__lf144-1.jpg', 6, 1, NULL, 1, 1, 'Mã sản phẩm: LF144', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:10:05', 5, 0, 5, NULL, NULL, 0, '2024-04-21 05:58:29'),
(48, 'Loafer da lì 2cm LF143', 'loafer-da-li-2cm-lf143', 650000, 0, 5, 1, 0, 1, NULL, '2024-04-21__lf1433.jpg', 3, 0, NULL, 1, 0, 'Mã sản phẩm: LF143', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:10:36', 3, 0, 3, NULL, NULL, 0, '2024-04-21 05:58:54'),
(49, 'Loafer da bóng 5cm LF140', 'loafer-da-bong-5cm-lf140', 950000, 0, 5, 1, 0, 1, NULL, '2024-04-21__lf140.jpg', 0, 1, NULL, 1, 0, 'Mã sản phẩm: LF140', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:11:10', 4, 0, 4, NULL, NULL, 0, '2024-04-21 05:59:22'),
(50, 'Loafer da lì 7cm LF133', 'loafer-da-li-7cm-lf133', 12000, 0, 5, 1, 0, 2, 10, '2024-04-21__lf1333.jpg', 13, 0, NULL, 1, 2, 'Mã sản phẩm: LF133', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-04-25 15:11:49', 1, 2, 3, NULL, NULL, 0, '2024-04-21 05:59:46'),
(52, 'Loafer da lì 3cm LF047', 'loafer-da-li-3cm-lf047', 250000, 0, 5, 1, 0, 12, NULL, '2024-04-21__lf0473.jpg', 20, 0, '2020-06-17 00:00:00', 1, 3, 'Mã sản phẩm: LF047', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 1, 3, 3, '2020-04-25 15:17:22', 10, 1, 20, NULL, NULL, 0, '2024-04-21 06:00:15'),
(53, 'Sục da lì SU338', 'suc-da-li-su338', 10000, 0, 3, 0, 0, 20, NULL, '2024-04-21__su3383.jpg', 3, 0, '2020-06-27 00:00:00', 1, 1, 'Mã sản phẩm: SU338', 'Miễn phí giao hàng với hóa đơn từ 999.000đ\r\n083.252.8282 - Hotline đặt hàng ( 8h30-17h30 )\r\nGiao hàng nhanh trên toàn quốc\r\nThanh toán tiện lợi với nhiều hình thức', 0, 0, 0, '2020-06-18 12:11:52', 602, 0, 39, NULL, NULL, 0, '2024-04-21 06:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `pa_attribute_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(103, 51, 1),
(104, 51, 4),
(183, 1, 1),
(184, 1, 3),
(185, 1, 5),
(186, 1, 6),
(187, 2, 1),
(188, 2, 2),
(189, 2, 3),
(190, 2, 4),
(191, 2, 5),
(192, 2, 7),
(193, 3, 1),
(194, 3, 3),
(195, 3, 5),
(196, 3, 6),
(197, 3, 7),
(198, 4, 1),
(199, 4, 4),
(200, 5, 1),
(201, 5, 3),
(202, 5, 4),
(203, 5, 5),
(204, 5, 6),
(205, 5, 9),
(206, 5, 10),
(207, 6, 1),
(208, 6, 4),
(209, 6, 5),
(210, 6, 6),
(211, 6, 9),
(212, 6, 10),
(213, 7, 2),
(214, 7, 3),
(215, 7, 5),
(216, 7, 6),
(217, 7, 9),
(218, 7, 10),
(219, 7, 7),
(220, 8, 1),
(221, 8, 4),
(222, 8, 5),
(223, 8, 6),
(224, 8, 9),
(225, 8, 10),
(226, 8, 7),
(227, 9, 1),
(228, 9, 3),
(229, 9, 5),
(230, 9, 6),
(231, 9, 9),
(232, 9, 10),
(233, 9, 7),
(234, 9, 8),
(235, 10, 1),
(236, 10, 4),
(237, 10, 5),
(238, 10, 6),
(239, 10, 9),
(240, 10, 10),
(241, 10, 7),
(242, 11, 1),
(243, 11, 3),
(244, 11, 5),
(245, 11, 6),
(246, 11, 9),
(247, 11, 10),
(248, 12, 1),
(249, 12, 4),
(250, 12, 5),
(251, 12, 6),
(252, 12, 9),
(253, 12, 10),
(254, 12, 7),
(255, 13, 1),
(256, 13, 4),
(257, 13, 5),
(258, 13, 6),
(259, 13, 9),
(260, 13, 7),
(261, 14, 1),
(262, 14, 4),
(263, 14, 5),
(264, 14, 6),
(265, 14, 9),
(266, 14, 10),
(267, 14, 7),
(268, 15, 1),
(269, 15, 4),
(270, 16, 1),
(271, 16, 4),
(272, 16, 5),
(273, 16, 6),
(274, 16, 8),
(275, 17, 1),
(276, 17, 3),
(277, 18, 1),
(278, 18, 4),
(279, 19, 1),
(280, 19, 4),
(281, 19, 5),
(282, 19, 6),
(283, 19, 9),
(284, 19, 7),
(285, 20, 2),
(286, 20, 3),
(287, 20, 5),
(288, 20, 6),
(289, 20, 9),
(290, 20, 7),
(291, 20, 8),
(292, 21, 1),
(293, 21, 4),
(294, 22, 1),
(295, 22, 3),
(296, 22, 5),
(297, 22, 9),
(298, 22, 10),
(299, 22, 7),
(300, 23, 1),
(301, 23, 4),
(302, 24, 2),
(303, 24, 3),
(304, 25, 1),
(305, 25, 3),
(306, 26, 1),
(307, 26, 4),
(308, 26, 5),
(309, 26, 6),
(310, 26, 9),
(311, 27, 2),
(312, 27, 3),
(313, 28, 1),
(314, 28, 3),
(315, 29, 2),
(316, 29, 3),
(317, 30, 1),
(318, 30, 3),
(319, 30, 4),
(320, 31, 1),
(321, 31, 3),
(322, 32, 1),
(323, 32, 4),
(324, 33, 1),
(325, 33, 3),
(326, 34, 2),
(327, 34, 3),
(328, 34, 4),
(329, 35, 2),
(330, 35, 3),
(331, 36, 1),
(332, 36, 4),
(333, 36, 5),
(334, 36, 6),
(335, 36, 9),
(336, 37, 1),
(337, 37, 3),
(338, 38, 2),
(339, 38, 3),
(340, 38, 5),
(341, 38, 6),
(342, 38, 9),
(343, 38, 7),
(344, 39, 1),
(345, 39, 4),
(346, 40, 2),
(347, 40, 3),
(348, 40, 5),
(349, 40, 6),
(350, 40, 7),
(351, 41, 1),
(352, 41, 3),
(353, 42, 1),
(354, 42, 4),
(355, 42, 5),
(356, 42, 6),
(357, 42, 9),
(358, 42, 7),
(359, 42, 8),
(360, 43, 1),
(361, 43, 3),
(362, 43, 5),
(363, 43, 6),
(364, 43, 7),
(365, 44, 1),
(366, 44, 3),
(367, 45, 1),
(368, 45, 3),
(369, 46, 1),
(370, 46, 3),
(371, 47, 1),
(372, 47, 3),
(373, 48, 1),
(374, 48, 4),
(375, 49, 1),
(376, 49, 3),
(377, 50, 1),
(378, 50, 3),
(379, 52, 1),
(380, 52, 3),
(381, 52, 5),
(382, 52, 6),
(383, 52, 9),
(384, 52, 7),
(385, 53, 1),
(386, 53, 3),
(387, 53, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `pk_keyword_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) DEFAULT NULL,
  `pi_slug` varchar(191) DEFAULT NULL,
  `pi_product_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `r_product_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 1, 52, 3, 0, 'ew', '2020-04-27 21:06:13', '2020-04-27 21:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 231760, 'Support', 'support@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 1, '2020-04-28 02:06:31', NULL),
(2, 2, 0, 0, 'Support', 'support@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 2, '2020-06-07 08:03:48', NULL),
(3, 2, 0, 440000, 'Support', 'support@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 2, '2020-06-07 09:42:21', NULL),
(4, 2, 0, 504400, 'Support', 'support@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 2, '2020-06-07 09:45:50', NULL),
(5, 2, 1, 237600, 'Support', 'support@gmail.com', '0986420994', 'Nghệ AN', NULL, 3, 1, '2020-06-08 15:58:19', '2020-06-08 15:58:35'),
(6, 2, 1, 23520, 'Support', 'support@gmail.com', '0986420994', 'Hai Bà Trưng Hà Nội', NULL, 3, 1, '2020-06-15 11:48:55', '2020-06-15 11:49:04'),
(7, 2, 1, 16000, 'Support', 'support@gmail.com', '0986420994', 'Hai Bà Trưng Hà Nội', NULL, 3, 1, '2020-06-18 12:17:30', '2020-06-18 12:26:50'),
(8, 1, 0, 440000, 'Khách hàng 1', 'khachhang1@gmail.com', '01255878995885', '213132', NULL, -1, 1, '2024-04-21 06:31:26', '2024-04-21 06:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khách hàng 1', 'khachhang1@gmail.com', NULL, '$2y$10$9omlw2vqcugwv4kvPeWuseq/GaWTqJj9DQWrlbQe6vZuqmm7kE0dW', '01255878995885', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-21T06:04:41.547376Z\"}]', 1, NULL, '2024-04-21__bb606.jpg', NULL, '2020-04-27 21:04:54', '2024-04-21 06:32:23'),
(2, 'Support', 'support@gmail.com', NULL, '$2y$10$DXyxA/MxbkQ7jygo1EsWOuaqxTUQX4SjA.mVtPPq4IzmSd8dJBGsa', '0986420994', 55600, '[{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-07T07:43:32.544299Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-08T15:58:03.202012Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-10T01:36:24.281584Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-11T06:10:10.072933Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-12T06:56:54.562544Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-14T14:16:54.143852Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T11:48:34.285855Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-18T12:17:16.843168Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-20T00:34:07.005772Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-06-29T09:24:36.795657Z\"}]', 27, 'Hai Bà Trưng Hà Nội', NULL, NULL, '2020-04-28 02:06:14', '2020-06-12 07:07:08'),
(3, 'Đức Anh', 'ducanh12121@gmail.com', NULL, '$2y$10$Y0FTBC1d9sg/1owpj9FIJ.K6h1X.03ViYY2dwnE8D29ROnQuY7Oyq', '098767615', 0, NULL, 2, NULL, NULL, NULL, '2020-06-18 17:24:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `uf_user_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(1, 50, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `od_transaction_id` (`od_transaction_id`,`od_product_id`),
  ADD KEY `od_product_id` (`od_product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`),
  ADD KEY `pro_category_id` (`pro_category_id`),
  ADD KEY `pro_admin_id` (`pro_admin_id`),
  ADD KEY `pro_category_id_2` (`pro_category_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pi_product_id` (`pi_product_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_user_id` (`r_user_id`,`r_product_id`),
  ADD KEY `r_product_id` (`r_product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`),
  ADD KEY `uf_user_id` (`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`od_transaction_id`) REFERENCES `transactions` (`id`)  ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`od_product_id`) REFERENCES `products` (`id`)  ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_category_id`) REFERENCES `categories` (`id`)  ON DELETE CASCADE;

--
-- Constraints for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD CONSTRAINT `products_attributes_ibfk_1` FOREIGN KEY (`pa_attribute_id`) REFERENCES `attributes` (`id`)  ON DELETE CASCADE;

--
-- Constraints for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD CONSTRAINT `products_keywords_ibfk_1` FOREIGN KEY (`pk_product_id`) REFERENCES `products` (`id`)  ON DELETE CASCADE,
  ADD CONSTRAINT `products_keywords_ibfk_2` FOREIGN KEY (`pk_keyword_id`) REFERENCES `keywords` (`id`)  ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`pi_product_id`) REFERENCES `products` (`id`)  ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`r_user_id`) REFERENCES `users` (`id`)  ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`r_product_id`) REFERENCES `products` (`id`)  ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`tst_user_id`) REFERENCES `users` (`id`)  ON DELETE CASCADE;

--
-- Constraints for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_ibfk_1` FOREIGN KEY (`uf_user_id`) REFERENCES `users` (`id`)  ON DELETE CASCADE,
  ADD CONSTRAINT `user_favourite_ibfk_2` FOREIGN KEY (`uf_product_id`) REFERENCES `products` (`id`)  ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
