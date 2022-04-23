-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 10:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fresh_mart`
--

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
(1, '2020_00_00_step1_create_tables_admin', 1),
(2, '2020_00_00_step2_create_tables_shop', 2),
(3, '2020_00_00_step3_insert_database_admin', 3),
(4, '2020_00_00_step4_insert_database_shop', 4),
(5, '2020_00_00_step5_insert_database_product', 5),
(6, '2020_06_17_160158_table_duan', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'S_Cart Personal Access Client', 'kSHLqujpzoBI2SSSJa3YgW4nbwRnZ9JZuH9vS5dk', 'http://localhost', 1, 0, 0, '2020-05-22 02:25:31', '2020-05-22 02:25:31'),
(2, NULL, 'S_Cart Password Grant Client', 'IU5gQ0nz1EKvDt6KW0aCJOxlXVaO3P9YJ6pt6yW9', 'http://localhost', 0, 1, 0, '2020-05-22 02:25:31', '2020-05-22 02:25:31'),
(3, NULL, 'Demo S-cart : Free Laravel eCommerce for Business Personal Access Client', 'FYbgoyIV9IIewenFuHgk1aeJHg1Wgp9Rd4GmMOOa', 'http://localhost', 1, 0, 0, '2020-06-19 02:08:22', '2020-06-19 02:08:22'),
(4, NULL, 'Demo S-cart : Free Laravel eCommerce for Business Password Grant Client', '053oBOOAWHLZcRZqLCSU2xOzoAzGLjiuZAfefMgg', 'http://localhost', 0, 1, 0, '2020-06-19 02:08:22', '2020-06-19 02:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-22 02:25:31', '2020-05-22 02:25:31'),
(2, 3, '2020-06-19 02:08:22', '2020-06-19 02:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_config`
--

CREATE TABLE `sc_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_config`
--

INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `store_id`, `sort`, `detail`) VALUES
(1, '', 'config', 'shop_allow_guest', '0', '1', 11, 'lang::admin.shop_allow_guest'),
(2, '', 'config', 'product_preorder', '1', '1', 18, 'lang::admin.product_preorder'),
(3, '', 'config', 'product_display_out_of_stock', '1', '1', 19, 'lang::admin.product_display_out_of_stock'),
(4, '', 'config', 'product_buy_out_of_stock', '1', '1', 20, 'lang::admin.product_buy_out_of_stock'),
(5, '', 'config', 'show_date_available', '1', '1', 21, 'lang::admin.show_date_available'),
(6, '', 'display', 'product_hot', '6', '1', 0, 'lang::admin.hot_product'),
(7, '', 'display', 'product_new', '6', '1', 0, 'lang::admin.new_product'),
(8, '', 'display', 'product_list', '9', '1', 0, 'lang::admin.list_product'),
(9, '', 'display', 'product_relation', '4', '1', 0, 'lang::admin.relation_product'),
(10, '', 'display', 'product_viewed', '4', '1', 0, 'lang::admin.viewed_product'),
(11, '', 'display', 'item_list', '12', '1', 0, 'lang::admin.item_list'),
(12, '', 'display', 'news_list', '16', '1', 0, 'lang::admin.news_list'),
(13, '', 'email_action', 'email_action_mode', '1', '1', 0, 'lang::email.email_action.email_action_mode'),
(14, '', 'email_action', 'order_success_to_admin', '1', '1', 1, 'lang::email.email_action.order_success_to_admin'),
(15, '', 'email_action', 'order_success_to_customer', '1', '1', 2, 'lang::email.email_action.order_success_to_cutomer'),
(16, '', 'email_action', 'welcome_customer', '1', '1', 4, 'lang::email.email_action.welcome_customer'),
(17, '', 'email_action', 'contact_to_admin', '1', '1', 6, 'lang::email.email_action.contact_to_admin'),
(18, '', 'email_action', 'email_action_smtp_mode', '0', '1', 6, 'lang::email.email_action.email_action_smtp_mode'),
(19, 'Plugins', 'Payment', 'Cash', '1', '1', 0, 'Plugins/Payment/Cash::lang.title'),
(20, 'Plugins', 'Shipping', 'ShippingStandard', '1', '1', 0, 'lang::Shipping Standard'),
(21, '', 'smtp', 'smtp_host', '', '1', 8, 'lang::email.smtp_host'),
(22, '', 'smtp', 'smtp_user', '', '1', 7, 'lang::email.smtp_user'),
(23, '', 'smtp', 'smtp_password', '', '1', 6, 'lang::email.smtp_password'),
(24, '', 'smtp', 'smtp_security', '', '1', 5, 'lang::email.smtp_security'),
(25, '', 'smtp', 'smtp_port', '', '1', 4, 'lang::email.smtp_port'),
(26, '', 'cache', 'cache_status', '0', '1', 0, 'lang::cache.config_manager.cache_status'),
(27, '', 'cache', 'cache_time', '600', '1', 1, 'lang::cache.config_manager.cache_time'),
(28, '', 'cache', 'cache_category', '0', '1', 3, 'lang::cache.config_manager.cache_category'),
(29, '', 'cache', 'cache_product', '0', '1', 4, 'lang::cache.config_manager.cache_product'),
(30, '', 'cache', 'cache_news', '0', '1', 5, 'lang::cache.config_manager.cache_news'),
(31, '', 'cache', 'cache_category_cms', '0', '1', 6, 'lang::cache.config_manager.cache_category_cms'),
(32, '', 'cache', 'cache_content_cms', '0', '1', 7, 'lang::cache.config_manager.cache_content_cms'),
(33, '', 'cache', 'cache_page', '0', '1', 8, 'lang::cache.config_manager.cache_page'),
(34, '', 'upload', 'upload_image_size', '2048', '1', 0, ''),
(35, '', 'upload', 'upload_image_thumb_width', '250', '1', 0, ''),
(36, '', 'upload', 'upload_image_thumb_status', '1', '1', 0, ''),
(37, '', 'upload', 'upload_watermark_status', '1', '1', 0, ''),
(38, '', 'upload', 'upload_watermark_path', 'images/watermark.png', '1', 0, ''),
(39, '', 'env', 'SITE_STATUS', 'on', '1', 0, 'lang::env.SITE_STATUS'),
(40, '', 'env', 'SITE_TIMEZONE', 'Asia/Ho_Chi_Minh', '1', 0, 'lang::env.SITE_TIMEZONE'),
(41, '', 'env', 'SITE_LANGUAGE', 'vi', '1', 0, 'lang::env.SITE_LANGUAGE'),
(42, '', 'env', 'SITE_CURRENCY', 'VND', '1', 0, 'lang::env.SITE_CURRENCY'),
(43, '', 'env', 'APP_DEBUG', 'off', '1', 0, 'lang::env.APP_DEBUG'),
(44, '', 'env', 'ADMIN_LOG', 'on', '1', 0, 'lang::env.ADMIN_LOG'),
(45, '', 'env', 'ADMIN_LOG_EXP', '', '1', 0, 'lang::env.ADMIN_LOG_EXP'),
(46, '', 'env', 'ADMIN_NAME', 'QuangHai17', '1', 0, 'lang::env.ADMIN_NAME'),
(47, '', 'env', 'ADMIN_TITLE', 'QuangHai17', '1', 0, 'lang::env.ADMIN_TITLE'),
(48, '', 'env', 'ADMIN_LOGO', 'icon', '1', 0, 'lang::env.ADMIN_LOGO'),
(49, '', 'env', 'ADMIN_LOGO_MINI', '<i class=\"fa fa-map-o\" aria-hidden=\"true\"></i>', '1', 0, 'lang::env.ADMIN_LOGO_MINI'),
(50, '', 'env', 'LOG_SLACK_WEBHOOK_URL', '', '1', 0, 'lang::env.LOG_SLACK_WEBHOOK_URL'),
(51, '', 'url', 'SUFFIX_URL', '.html', '1', 0, 'lang::url.SUFFIX_URL'),
(52, '', 'url', 'PREFIX_BRAND', 'brand', '1', 0, 'lang::url.PREFIX_BRAND'),
(53, '', 'url', 'PREFIX_SUPPLIER', 'supplier', '1', 0, 'lang::url.PREFIX_SUPPLIER'),
(54, '', 'url', 'PREFIX_CATEGORY', 'category', '1', 0, 'lang::url.PREFIX_CATEGORY'),
(55, '', 'url', 'PREFIX_PRODUCT', 'product', '1', 0, 'lang::url.PREFIX_PRODUCT'),
(56, '', 'url', 'PREFIX_SEARCH', 'search', '1', 0, 'lang::url.PREFIX_SEARCH'),
(57, '', 'url', 'PREFIX_CONTACT', 'contact', '1', 0, 'lang::url.PREFIX_CONTACT'),
(58, '', 'url', 'PREFIX_NEWS', 'news', '1', 0, 'lang::url.PREFIX_NEWS'),
(59, '', 'url', 'PREFIX_MEMBER', 'member', '1', 0, 'lang::url.PREFIX_MEMBER'),
(60, '', 'url', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', '1', 0, 'lang::url.PREFIX_MEMBER_ORDER_LIST'),
(61, '', 'url', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', '1', 0, 'lang::url.PREFIX_MEMBER_CHANGE_PWD'),
(62, '', 'url', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', '1', 0, 'lang::url.PREFIX_MEMBER_CHANGE_INFO'),
(63, '', 'url', 'PREFIX_CMS_CATEGORY', 'cms-category', '1', 0, 'lang::url.PREFIX_CMS_CATEGORY'),
(64, '', 'url', 'PREFIX_CMS_ENTRY', 'entry', '1', 0, 'lang::url.PREFIX_CMS_ENTRY'),
(65, '', 'url', 'PREFIX_CART_WISHLIST', 'wishlst', '1', 0, 'lang::url.PREFIX_CART_WISHLIST'),
(66, '', 'url', 'PREFIX_CART_COMPARE', 'compare', '1', 0, 'lang::url.PREFIX_CART_COMPARE'),
(67, '', 'url', 'PREFIX_CART_DEFAULT', 'cart', '1', 0, 'lang::url.PREFIX_CART_DEFAULT'),
(68, '', 'url', 'PREFIX_CART_CHECKOUT', 'checkout', '1', 0, 'lang::url.PREFIX_CART_CHECKOUT'),
(69, '', 'url', 'PREFIX_ORDER_SUCCESS', 'order-success', '1', 0, 'lang::url.PREFIX_ORDER_SUCCESS'),
(70, '', 'product', 'product_brand', '1', '1', 0, 'lang::product.config_manager.brand'),
(71, '', 'product', 'product_supplier', '1', '1', 0, 'lang::product.config_manager.supplier'),
(72, '', 'product', 'product_price', '1', '1', 0, 'lang::product.config_manager.price'),
(73, '', 'product', 'product_cost', '1', '1', 0, 'lang::product.config_manager.cost'),
(74, '', 'product', 'product_promotion', '1', '1', 0, 'lang::product.config_manager.promotion'),
(75, '', 'product', 'product_stock', '1', '1', 0, 'lang::product.config_manager.stock'),
(76, '', 'product', 'product_kind', '1', '1', 0, 'lang::product.config_manager.kind'),
(77, '', 'product', 'product_virtual', '1', '1', 0, 'lang::product.config_manager.virtual'),
(78, '', 'product', 'product_attribute', '1', '1', 0, 'lang::product.config_manager.attribute'),
(79, '', 'product', 'product_available', '1', '1', 0, 'lang::product.config_manager.available'),
(80, '', 'product', 'product_weight', '1', '1', 0, 'lang::product.config_manager.weight'),
(81, '', 'product', 'product_length', '1', '1', 0, 'lang::product.config_manager.length'),
(82, '', 'env', 'product_tax', '1', '1', 0, 'lang::product.config_manager.tax'),
(83, '', 'customer', 'customer_lastname', '1', '1', 0, 'lang::customer.config_manager.lastname'),
(84, '', 'customer', 'customer_address1', '0', '1', 0, 'lang::customer.config_manager.address1'),
(85, '', 'customer', 'customer_address2', '0', '1', 0, 'lang::customer.config_manager.address2'),
(86, '', 'customer', 'customer_company', '0', '1', 0, 'lang::customer.config_manager.company'),
(87, '', 'customer', 'customer_postcode', '0', '1', 0, 'lang::customer.config_manager.postcode'),
(88, '', 'customer', 'customer_country', '0', '1', 0, 'lang::customer.config_manager.country'),
(89, '', 'customer', 'customer_group', '0', '1', 0, 'lang::customer.config_manager.group'),
(90, '', 'customer', 'customer_birthday', '0', '1', 0, 'lang::customer.config_manager.birthday'),
(91, '', 'customer', 'customer_sex', '0', '1', 0, 'lang::customer.config_manager.sex'),
(92, '', 'customer', 'customer_phone', '1', '1', 1, 'lang::customer.config_manager.phone'),
(93, '', 'api', 'api_connection_required', '0', '1', 1, 'lang::api_connection.api_connection_required'),
(94, 'Plugins', 'Cms', 'Content', '1', '1', 0, 'Plugins/Cms/Content::Content.title'),
(95, 'Plugins', 'Other', 'Duan', '1', '1', 0, 'Plugins/Other/Duan::lang.title'),
(96, 'Plugins', 'Total', 'Discount', '0', '1', 0, 'Plugins/Total/Discount::lang.title');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_log`
--

CREATE TABLE `sc_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_log`
--

INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:43:29', '2020-06-17 06:43:29'),
(2, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:43:41', '2020-06-17 06:43:41'),
(3, 1, 'sc_admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:43:42', '2020-06-17 06:43:42'),
(4, 1, 'sc_admin/setting/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"APP_DEBUG\",\"value\":\"on\",\"pk\":null,\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 06:43:47', '2020-06-17 06:43:47'),
(5, 1, 'sc_admin/locale/vi', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:43:48', '2020-06-17 06:43:48'),
(6, 1, 'sc_admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:43:48', '2020-06-17 06:43:48'),
(7, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:44:26', '2020-06-17 06:44:26'),
(8, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:44:36', '2020-06-17 06:44:36'),
(9, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:44:43', '2020-06-17 06:44:43'),
(10, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:48:21', '2020-06-17 06:48:21'),
(11, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:48:28', '2020-06-17 06:48:28'),
(12, 1, 'sc_admin/plugin/cms', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:48:46', '2020-06-17 06:48:46'),
(13, 1, 'sc_admin/plugin/cms/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:48:51', '2020-06-17 06:48:51'),
(14, 1, 'sc_admin/plugin/install/online', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"Content\",\"path\":\"https:\\/\\/api.s-cart.org\\/process\\/file?key=1586095900\",\"code\":\"Cms\"}', '2020-06-17 06:48:57', '2020-06-17 06:48:57'),
(15, 1, 'sc_admin/plugin/cms/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:48:58', '2020-06-17 06:48:58'),
(16, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:04', '2020-06-17 06:49:04'),
(17, 1, 'sc_admin/cms_category', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:12', '2020-06-17 06:49:12'),
(18, 1, 'sc_admin/cms_category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:16', '2020-06-17 06:49:16'),
(19, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:30', '2020-06-17 06:49:30'),
(20, 1, 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:31', '2020-06-17 06:49:31'),
(21, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:35', '2020-06-17 06:49:35'),
(22, 1, 'sc_admin/language/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 06:49:37', '2020-06-17 06:49:37'),
(23, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:37', '2020-06-17 06:49:37'),
(24, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:39', '2020-06-17 06:49:39'),
(25, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:42', '2020-06-17 06:49:42'),
(26, 1, 'sc_admin/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"0\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 06:49:44', '2020-06-17 06:49:44'),
(27, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:44', '2020-06-17 06:49:44'),
(28, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:47', '2020-06-17 06:49:47'),
(29, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:48', '2020-06-17 06:49:48'),
(30, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:50', '2020-06-17 06:49:50'),
(31, 1, 'sc_admin/cms_category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:49:53', '2020-06-17 06:49:53'),
(32, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:50:41', '2020-06-17 06:50:41'),
(33, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:50:44', '2020-06-17 06:50:44'),
(34, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"content\"}', '2020-06-17 06:50:58', '2020-06-17 06:50:58'),
(35, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1592376659444\"}', '2020-06-17 06:50:59', '2020-06-17 06:50:59'),
(36, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1592376659445\"}', '2020-06-17 06:50:59', '2020-06-17 06:50:59'),
(37, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"_\":\"1592376659446\"}', '2020-06-17 06:50:59', '2020-06-17 06:50:59'),
(38, 1, 'sc_admin/news/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tr\\u00e0 Th\\u1ea3o M\\u1ed9c: 8 Lo\\u1ea1i T\\u1ed1t Cho S\\u1ee9c Kh\\u1ecfe M\\u00e0 B\\u1ea1n N\\u00ean D\\u00f9ng\",\"keyword\":\"Tr\\u00e0 Th\\u1ea3o M\\u1ed9c: 8 Lo\\u1ea1i T\\u1ed1t Cho S\\u1ee9c Kh\\u1ecfe M\\u00e0 B\\u1ea1n N\\u00ean D\\u00f9ng\",\"description\":\"gWAGSZ\",\"content\":\"AFGAWVA\"}},\"alias\":null,\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/content\\/img-22.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 06:51:09', '2020-06-17 06:51:09'),
(39, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:51:09', '2020-06-17 06:51:09'),
(40, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:51:13', '2020-06-17 06:51:13'),
(41, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 06:59:32', '2020-06-17 06:59:32'),
(42, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"noithat\"}', '2020-06-17 07:00:42', '2020-06-17 07:00:42'),
(43, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:00:42', '2020-06-17 07:00:42'),
(44, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"default-new\"}', '2020-06-17 07:06:14', '2020-06-17 07:06:14'),
(45, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:06:15', '2020-06-17 07:06:15'),
(46, 1, 'sc_admin/template/remove', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"noithat\"}', '2020-06-17 07:06:23', '2020-06-17 07:06:23'),
(47, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:06:23', '2020-06-17 07:06:23'),
(48, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:06:39', '2020-06-17 07:06:39'),
(49, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:07:10', '2020-06-17 07:07:10'),
(50, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"noithat\"}', '2020-06-17 07:07:12', '2020-06-17 07:07:12'),
(51, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:07:12', '2020-06-17 07:07:12'),
(52, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"default-new\"}', '2020-06-17 07:07:18', '2020-06-17 07:07:18'),
(53, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:07:18', '2020-06-17 07:07:18'),
(54, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"noithat\"}', '2020-06-17 07:07:23', '2020-06-17 07:07:23'),
(55, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:07:24', '2020-06-17 07:07:24'),
(56, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:41:22', '2020-06-17 07:41:22'),
(57, 1, 'sc_admin/plugin/cms', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:41:26', '2020-06-17 07:41:26'),
(58, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:41:44', '2020-06-17 07:41:44'),
(59, 1, 'sc_admin/block_content/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:42:12', '2020-06-17 07:42:12'),
(60, 1, 'sc_admin/block_content/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"Categories\",\"position\":\"left\",\"page\":[\"product_list\",\"product_detail\",\"shop_cart\"],\"type\":\"view\",\"text\":\"categories\",\"sort\":\"4\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 07:42:23', '2020-06-17 07:42:23'),
(61, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:42:23', '2020-06-17 07:42:23'),
(62, 1, 'sc_admin/block_content/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:42:44', '2020-06-17 07:42:44'),
(63, 1, 'sc_admin/block_content/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"Product last view\",\"position\":\"left\",\"type\":\"view\",\"text\":\"product_lastview\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 07:42:49', '2020-06-17 07:42:49'),
(64, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:42:49', '2020-06-17 07:42:49'),
(65, 1, 'sc_admin/block_content/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:42:50', '2020-06-17 07:42:50'),
(66, 1, 'sc_admin/block_content/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"Banner home\",\"position\":\"banner_top\",\"type\":\"view\",\"text\":\"banner_image\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 07:42:54', '2020-06-17 07:42:54'),
(67, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:42:54', '2020-06-17 07:42:54'),
(68, 1, 'sc_admin/block_content/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:42:56', '2020-06-17 07:42:56'),
(69, 1, 'sc_admin/block_content/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"Brands\",\"position\":\"left\",\"page\":[\"item_list\"],\"type\":\"view\",\"text\":\"brands_left\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 07:43:00', '2020-06-17 07:43:00'),
(70, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:43:00', '2020-06-17 07:43:00'),
(71, 1, 'sc_admin/block_content/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:43:10', '2020-06-17 07:43:10'),
(72, 1, 'sc_admin/block_content/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"Product special\",\"position\":\"left\",\"page\":[\"product_list\"],\"type\":\"view\",\"text\":\"product_special\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 07:43:13', '2020-06-17 07:43:13'),
(73, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 07:43:14', '2020-06-17 07:43:14'),
(74, 1, 'sc_admin/plugin/cms', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:11:02', '2020-06-17 09:11:02'),
(75, 1, 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:11:05', '2020-06-17 09:11:05'),
(76, 1, 'sc_admin/plugin/install', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"Duan\",\"code\":\"Other\"}', '2020-06-17 09:11:08', '2020-06-17 09:11:08'),
(77, 1, 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:11:08', '2020-06-17 09:11:08'),
(78, 1, 'sc_admin/plugin/disable', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"Duan\",\"code\":\"Other\"}', '2020-06-17 09:11:10', '2020-06-17 09:11:10'),
(79, 1, 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-06-17 09:11:10', '2020-06-17 09:11:10'),
(80, 1, 'sc_admin/plugin/enable', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"Duan\",\"code\":\"Other\"}', '2020-06-17 09:11:25', '2020-06-17 09:11:25'),
(81, 1, 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-06-17 09:11:25', '2020-06-17 09:11:25'),
(82, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:12:04', '2020-06-17 09:12:04'),
(83, 1, 'sc_admin/cms_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:16:41', '2020-06-17 09:16:41'),
(84, 1, 'sc_admin/cms_category', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:16:43', '2020-06-17 09:16:43'),
(85, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:17:55', '2020-06-17 09:17:55'),
(86, 1, 'sc_admin/banner/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:20:06', '2020-06-17 09:20:06'),
(87, 1, 'sc_admin/banner/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 09:20:10', '2020-06-17 09:20:10'),
(88, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:20:10', '2020-06-17 09:20:10'),
(89, 1, 'sc_admin/banner/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:20:13', '2020-06-17 09:20:13'),
(90, 1, 'sc_admin/banner/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-1-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 09:20:15', '2020-06-17 09:20:15'),
(91, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:20:15', '2020-06-17 09:20:15'),
(92, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:21:52', '2020-06-17 09:21:52'),
(93, 1, 'sc_admin/block_content/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:21:58', '2020-06-17 09:21:58'),
(94, 1, 'sc_admin/block_content/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"Banner home\",\"position\":\"banner_top\",\"page\":[\"shop_home\"],\"type\":\"view\",\"text\":\"banner_image\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\"}', '2020-06-17 09:22:06', '2020-06-17 09:22:06'),
(95, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:22:06', '2020-06-17 09:22:06'),
(96, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:22:08', '2020-06-17 09:22:08'),
(97, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:23:37', '2020-06-17 09:23:37'),
(98, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"NcnJm2l8jkMsNrTxtngUXIHpBY0pMa9SrN9tRkDz\",\"key\":\"default-new\"}', '2020-06-17 09:23:39', '2020-06-17 09:23:39'),
(99, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:23:39', '2020-06-17 09:23:39'),
(100, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:23:59', '2020-06-17 09:23:59'),
(101, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:35:40', '2020-06-17 09:35:40'),
(102, 1, 'sc_admin/category/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-17 09:37:31', '2020-06-17 09:37:31'),
(103, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 02:35:53', '2020-06-18 02:35:53'),
(104, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 02:35:59', '2020-06-18 02:35:59'),
(105, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 02:36:00', '2020-06-18 02:36:00'),
(106, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 02:36:00', '2020-06-18 02:36:00'),
(107, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 02:36:02', '2020-06-18 02:36:02'),
(108, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 02:45:30', '2020-06-18 02:45:30'),
(109, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 03:54:09', '2020-06-18 03:54:09'),
(110, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 03:54:11', '2020-06-18 03:54:11'),
(111, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 03:55:49', '2020-06-18 03:55:49'),
(112, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 03:55:51', '2020-06-18 03:55:51'),
(113, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"default-new\"}', '2020-06-18 03:55:53', '2020-06-18 03:55:53'),
(114, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 03:55:53', '2020-06-18 03:55:53'),
(115, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 03:56:24', '2020-06-18 03:56:24'),
(116, 1, 'sc_admin/banner/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 03:56:26', '2020-06-18 03:56:26'),
(117, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:03:27', '2020-06-18 04:03:27'),
(118, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 04:03:28', '2020-06-18 04:03:28'),
(119, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:03:29', '2020-06-18 04:03:29'),
(120, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"default-new\"}', '2020-06-18 04:05:54', '2020-06-18 04:05:54'),
(121, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:05:54', '2020-06-18 04:05:54'),
(122, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 04:06:13', '2020-06-18 04:06:13'),
(123, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:06:13', '2020-06-18 04:06:13'),
(124, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:10:16', '2020-06-18 04:10:16'),
(125, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:10:21', '2020-06-18 04:10:21'),
(126, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-06-18 04:10:21', '2020-06-18 04:10:21'),
(127, 1, 'sc_admin/banner/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:10:24', '2020-06-18 04:10:24'),
(128, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-18 04:10:27', '2020-06-18 04:10:27'),
(129, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453428563\"}', '2020-06-18 04:10:28', '2020-06-18 04:10:28'),
(130, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453428564\"}', '2020-06-18 04:10:28', '2020-06-18 04:10:28'),
(131, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592453428565\"}', '2020-06-18 04:10:28', '2020-06-18 04:10:28'),
(132, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-18 04:10:34', '2020-06-18 04:10:34'),
(133, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453434910\"}', '2020-06-18 04:10:35', '2020-06-18 04:10:35'),
(134, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453434911\"}', '2020-06-18 04:10:35', '2020-06-18 04:10:35'),
(135, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592453434912\"}', '2020-06-18 04:10:35', '2020-06-18 04:10:35'),
(136, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:11:01', '2020-06-18 04:11:01'),
(137, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:11:02', '2020-06-18 04:11:02'),
(138, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:11:02', '2020-06-18 04:11:02'),
(139, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-18 04:11:41', '2020-06-18 04:11:41'),
(140, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453501654\"}', '2020-06-18 04:11:41', '2020-06-18 04:11:41'),
(141, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453501655\"}', '2020-06-18 04:11:41', '2020-06-18 04:11:41'),
(142, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592453501656\"}', '2020-06-18 04:11:41', '2020-06-18 04:11:41'),
(143, 1, 'sc_admin/banner/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-01.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:11:45', '2020-06-18 04:11:45'),
(144, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:11:45', '2020-06-18 04:11:45'),
(145, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:11:59', '2020-06-18 04:11:59'),
(146, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-18 04:12:01', '2020-06-18 04:12:01'),
(147, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453521283\"}', '2020-06-18 04:12:01', '2020-06-18 04:12:01'),
(148, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592453521284\"}', '2020-06-18 04:12:01', '2020-06-18 04:12:01'),
(149, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592453521285\"}', '2020-06-18 04:12:01', '2020-06-18 04:12:01'),
(150, 1, 'sc_admin/banner/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-02.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:12:04', '2020-06-18 04:12:04'),
(151, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:12:04', '2020-06-18 04:12:04'),
(152, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:12:13', '2020-06-18 04:12:13'),
(153, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-02.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:12:17', '2020-06-18 04:12:17'),
(154, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:12:17', '2020-06-18 04:12:17'),
(155, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:13:41', '2020-06-18 04:13:41'),
(156, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-02.jpg\",\"url\":null,\"target\":null,\"html\":\"B\\u1ed9 s\\u01b0u t\\u1eadp n\\u1ed9i th\\u1ea5t c\\u0103n h\\u1ed9\",\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:13:44', '2020-06-18 04:13:44'),
(157, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:13:44', '2020-06-18 04:13:44'),
(158, 1, 'sc_admin/banner/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:13:48', '2020-06-18 04:13:48'),
(159, 1, 'sc_admin/banner/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-01.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"B\\u1ed9 s\\u01b0u t\\u1eadp n\\u1ed9i th\\u1ea5t c\\u0103n h\\u1ed9\",\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 04:13:50', '2020-06-18 04:13:50'),
(160, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:13:50', '2020-06-18 04:13:50'),
(161, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:23:59', '2020-06-18 04:23:59'),
(162, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"default-new\"}', '2020-06-18 04:24:01', '2020-06-18 04:24:01'),
(163, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:24:01', '2020-06-18 04:24:01'),
(164, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 04:25:52', '2020-06-18 04:25:52'),
(165, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:25:52', '2020-06-18 04:25:52'),
(166, 1, 'sc_admin/link', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:31:40', '2020-06-18 04:31:40'),
(167, 1, 'sc_admin/link/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:31:42', '2020-06-18 04:31:42'),
(168, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:33:07', '2020-06-18 04:33:07'),
(169, 1, 'sc_admin/link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:34:37', '2020-06-18 04:34:37'),
(170, 1, 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 04:47:02', '2020-06-18 04:47:02'),
(171, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:18:11', '2020-06-18 06:18:11'),
(172, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"default-new\"}', '2020-06-18 06:18:15', '2020-06-18 06:18:15'),
(173, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:18:15', '2020-06-18 06:18:15'),
(174, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 06:19:51', '2020-06-18 06:19:51'),
(175, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:19:51', '2020-06-18 06:19:51'),
(176, 1, 'sc_admin/product_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:27:53', '2020-06-18 06:27:53'),
(177, 1, 'sc_admin/length_unit', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:28:02', '2020-06-18 06:28:02'),
(178, 1, 'sc_admin/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:28:05', '2020-06-18 06:28:05'),
(179, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:28:09', '2020-06-18 06:28:09'),
(180, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 06:53:42', '2020-06-18 06:53:42'),
(181, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:02:54', '2020-06-18 07:02:54'),
(182, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:03:11', '2020-06-18 07:03:11'),
(183, 1, 'sc_admin/block_content/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:03:18', '2020-06-18 07:03:18'),
(184, 1, 'sc_admin/block_content/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"Categories\",\"position\":\"left\",\"page\":[\"product_list\",\"shop_cart\"],\"type\":\"view\",\"text\":\"categories\",\"sort\":\"4\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 07:03:26', '2020-06-18 07:03:26'),
(185, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:03:26', '2020-06-18 07:03:26'),
(186, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:09:33', '2020-06-18 07:09:33'),
(187, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"default-new\"}', '2020-06-18 07:09:37', '2020-06-18 07:09:37'),
(188, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:09:37', '2020-06-18 07:09:37'),
(189, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 07:10:02', '2020-06-18 07:10:02'),
(190, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:10:02', '2020-06-18 07:10:02'),
(191, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:23:33', '2020-06-18 07:23:33'),
(192, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:23:38', '2020-06-18 07:23:38'),
(193, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"product\"}', '2020-06-18 07:23:44', '2020-06-18 07:23:44'),
(194, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1592465024522\"}', '2020-06-18 07:23:44', '2020-06-18 07:23:44'),
(195, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1592465024523\"}', '2020-06-18 07:23:44', '2020-06-18 07:23:44'),
(196, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1592465024524\"}', '2020-06-18 07:23:44', '2020-06-18 07:23:44');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(197, 1, 'sc_admin/product/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 13\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/img-21.jpg\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"5\"],\"image\":\"\\/data\\/product\\/img-34.jpg\",\"sub_image\":[\"http:\\/\\/127.0.0.1:8000\\/data\\/product\\/img-1.jpg\"],\"sku\":\"3D-GOLD1.75\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"3\",\"supplier_id\":[\"1\"],\"cost\":\"5000\",\"price\":\"10000\",\"tax_id\":\"auto\",\"price_promotion\":\"4000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 07:24:02', '2020-06-18 07:24:02'),
(198, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:24:02', '2020-06-18 07:24:02'),
(199, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:37:20', '2020-06-18 07:37:20'),
(200, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:37:27', '2020-06-18 07:37:27'),
(201, 1, 'sc_admin/product/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 13\",\"keyword\":null,\"description\":\"22\\u201d class screen full LED TV\\r\\nHight precision lens provides a clearer picture and a better view.\\r\\nWith stand: 50.23\\u201dW x 30.1\\u201dH x 15.5\\u201dD\\r\\nDispay type: Resolution: 1170 x 768\\r\\nMotion Rate: 130\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/img-21.jpg\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"5\"],\"image\":\"\\/data\\/product\\/img-34.jpg\",\"sku\":\"3D-GOLD1.75\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"3\",\"supplier_id\":[\"1\"],\"cost\":\"5000\",\"price\":\"10000\",\"tax_id\":\"auto\",\"price_promotion\":\"4000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 07:37:58', '2020-06-18 07:37:58'),
(202, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:37:58', '2020-06-18 07:37:58'),
(203, 1, 'sc_admin/customer', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:39:27', '2020-06-18 07:39:27'),
(204, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:39:29', '2020-06-18 07:39:29'),
(205, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:39:34', '2020-06-18 07:39:34'),
(206, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":\"22\\u201d class screen full LED TV\\r\\nHight precision lens provides a clearer picture and a better view.\\r\\nWith stand: 50.23\\u201dW x 30.1\\u201dH x 15.5\\u201dD\\r\\nDispay type: Resolution: 1170 x 768\\r\\nMotion Rate: 130\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/img-21.jpg\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.22&rdquo; class screen full LED TV<br \\/>\\r\\nHight precision lens provides a clearer picture and a better view.<br \\/>\\r\\nWith stand: 50.23&rdquo;W x 30.1&rdquo;H x 15.5&rdquo;D<br \\/>\\r\\nDispay type: Resolution: 1170 x 768<br \\/>\\r\\nMotion Rate: 130<\\/p>\"}},\"category\":[\"6\",\"10\",\"13\"],\"image\":\"\\/data\\/product\\/img-1.jpg\",\"sub_image\":[\"\\/data\\/product\\/img-32.jpg\",\"\\/data\\/product\\/img-33.jpg\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":\"2020-06-22\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 07:40:09', '2020-06-18 07:40:09'),
(207, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:40:10', '2020-06-18 07:40:10'),
(208, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:40:47', '2020-06-18 07:40:47'),
(209, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":\"<p>22\\u201d class screen full LED TV<\\/p>\\r\\nHight precision lens provides a clearer picture and a better view.\\r\\nWith stand: 50.23\\u201dW x 30.1\\u201dH x 15.5\\u201dD\\r\\nDispay type: Resolution: 1170 x 768\\r\\nMotion Rate: 130\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/img-21.jpg\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.22&rdquo; class screen full LED TV<br \\/>\\r\\nHight precision lens provides a clearer picture and a better view.<br \\/>\\r\\nWith stand: 50.23&rdquo;W x 30.1&rdquo;H x 15.5&rdquo;D<br \\/>\\r\\nDispay type: Resolution: 1170 x 768<br \\/>\\r\\nMotion Rate: 130<\\/p>\"}},\"category\":[\"6\",\"10\",\"13\"],\"image\":\"\\/data\\/product\\/img-1.jpg\",\"sub_image\":[\"\\/data\\/product\\/img-32.jpg\",\"\\/data\\/product\\/img-33.jpg\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":\"2020-06-22\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 07:42:05', '2020-06-18 07:42:05'),
(210, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:42:05', '2020-06-18 07:42:05'),
(211, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:42:24', '2020-06-18 07:42:24'),
(212, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":\"22\\u201d class screen full LED TV\\r\\nHight precision lens provides a clearer picture and a better view.\\r\\nWith stand: 50.23\\u201dW x 30.1\\u201dH x 15.5\\u201dD\\r\\nDispay type: Resolution: 1170 x 768\\r\\nMotion Rate: 130\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/img-21.jpg\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.22&rdquo; class screen full LED TV<br \\/>\\r\\nHight precision lens provides a clearer picture and a better view.<br \\/>\\r\\nWith stand: 50.23&rdquo;W x 30.1&rdquo;H x 15.5&rdquo;D<br \\/>\\r\\nDispay type: Resolution: 1170 x 768<br \\/>\\r\\nMotion Rate: 130<\\/p>\"}},\"category\":[\"6\",\"10\",\"13\"],\"image\":\"\\/data\\/product\\/img-1.jpg\",\"sub_image\":[\"\\/data\\/product\\/img-32.jpg\",\"\\/data\\/product\\/img-33.jpg\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":\"2020-06-22\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 07:42:40', '2020-06-18 07:42:40'),
(213, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:42:40', '2020-06-18 07:42:40'),
(214, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:51:57', '2020-06-18 07:51:57'),
(215, 1, 'sc_admin/product/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":\"22\\u201d class screen full LED TV\\r\\nHight precision lens provides a clearer picture and a better view.\\r\\nWith stand: 50.23\\u201dW x 30.1\\u201dH x 15.5\\u201dD\\r\\nDispay type: Resolution: 1170 x 768\\r\\nMotion Rate: 130\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/img-21.jpg\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.22&rdquo; class screen full LED TV<br \\/>\\r\\nHight precision lens provides a clearer picture and a better view.<br \\/>\\r\\nWith stand: 50.23&rdquo;W x 30.1&rdquo;H x 15.5&rdquo;D<br \\/>\\r\\nDispay type: Resolution: 1170 x 768<br \\/>\\r\\nMotion Rate: 130<\\/p>\"}},\"category\":[\"6\",\"10\",\"13\"],\"image\":\"\\/data\\/product\\/img-1.jpg\",\"sub_image\":[\"\\/data\\/product\\/img-32.jpg\",\"\\/data\\/product\\/img-33.jpg\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"brand_id\":\"1\",\"supplier_id\":[\"1\"],\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"5000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":\"2020-06-22\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 07:52:15', '2020-06-18 07:52:15'),
(216, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:52:15', '2020-06-18 07:52:15'),
(217, 1, 'sc_admin/product/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 07:54:51', '2020-06-18 07:54:51'),
(218, 1, 'sc_admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 08:26:19', '2020-06-18 08:26:19'),
(219, 1, 'sc_admin/setting/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"product_list\",\"value\":\"9\",\"pk\":\"product_list\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 08:26:36', '2020-06-18 08:26:36'),
(220, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 08:42:50', '2020-06-18 08:42:50'),
(221, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 08:42:57', '2020-06-18 08:42:57'),
(222, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 08:43:05', '2020-06-18 08:43:05'),
(223, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"default-new\"}', '2020-06-18 08:43:06', '2020-06-18 08:43:06'),
(224, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 08:43:07', '2020-06-18 08:43:07'),
(225, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 08:45:18', '2020-06-18 08:45:18'),
(226, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 08:45:18', '2020-06-18 08:45:18'),
(227, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:14:55', '2020-06-18 09:14:55'),
(228, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"default-new\"}', '2020-06-18 09:14:58', '2020-06-18 09:14:58'),
(229, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:14:58', '2020-06-18 09:14:58'),
(230, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\",\"key\":\"noithat\"}', '2020-06-18 09:20:26', '2020-06-18 09:20:26'),
(231, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:20:27', '2020-06-18 09:20:27'),
(232, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:21:30', '2020-06-18 09:21:30'),
(233, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:35:45', '2020-06-18 09:35:45'),
(234, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:35:51', '2020-06-18 09:35:51'),
(235, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:36:15', '2020-06-18 09:36:15'),
(236, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:36:20', '2020-06-18 09:36:20'),
(237, 1, 'sc_admin/maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:37:56', '2020-06-18 09:37:56'),
(238, 1, 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:38:18', '2020-06-18 09:38:18'),
(239, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:38:20', '2020-06-18 09:38:20'),
(240, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:38:38', '2020-06-18 09:38:38'),
(241, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-18 09:38:41', '2020-06-18 09:38:41'),
(242, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592473121780\"}', '2020-06-18 09:38:41', '2020-06-18 09:38:41'),
(243, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592473121781\"}', '2020-06-18 09:38:41', '2020-06-18 09:38:41'),
(244, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592473121782\"}', '2020-06-18 09:38:42', '2020-06-18 09:38:42'),
(245, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 09:39:25', '2020-06-18 09:39:25'),
(246, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-18 09:39:34', '2020-06-18 09:39:34'),
(247, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592473174472\"}', '2020-06-18 09:39:34', '2020-06-18 09:39:34'),
(248, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592473174473\"}', '2020-06-18 09:39:34', '2020-06-18 09:39:34'),
(249, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592473174474\"}', '2020-06-18 09:39:34', '2020-06-18 09:39:34'),
(250, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 09:39:36', '2020-06-18 09:39:36'),
(251, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 09:39:41', '2020-06-18 09:39:41'),
(252, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 10:13:22', '2020-06-18 10:13:22'),
(253, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 10:16:10', '2020-06-18 10:16:10'),
(254, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 10:16:25', '2020-06-18 10:16:25'),
(255, 1, 'sc_admin/menu/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"parent_id\":\"7\",\"title\":\"D\\u1ef1 \\u00e1n\",\"icon\":\"fa-bars\",\"uri\":null,\"sort\":\"0\",\"_token\":\"JnrOZqZxkRloHdLWan0AdORGjV3zovDxWWT9MpW4\"}', '2020-06-18 10:17:05', '2020-06-18 10:17:05'),
(256, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 10:17:05', '2020-06-18 10:17:05'),
(257, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-18 10:17:30', '2020-06-18 10:17:30'),
(258, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"sort_order\":\"id__desc\",\"_pjax\":\"#pjax-container\"}', '2020-06-18 10:17:35', '2020-06-18 10:17:35'),
(259, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:31:51', '2020-06-19 01:31:51'),
(260, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:40:05', '2020-06-19 01:40:05'),
(261, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:45:21', '2020-06-19 01:45:21'),
(262, 1, 'sc_admin/menu/edit/67', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:45:37', '2020-06-19 01:45:37'),
(263, 1, 'sc_admin/menu/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:46:04', '2020-06-19 01:46:04'),
(264, 1, 'sc_admin/menu/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:46:16', '2020-06-19 01:46:16'),
(265, 1, 'sc_admin/menu/edit/67', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"parent_id\":\"7\",\"title\":\"D\\u1ef1 \\u00e1n\",\"icon\":\"fa-codepen\",\"uri\":\"admin::duan\",\"sort\":\"0\",\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\"}', '2020-06-19 01:46:27', '2020-06-19 01:46:27'),
(266, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:46:27', '2020-06-19 01:46:27'),
(267, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:46:29', '2020-06-19 01:46:29'),
(268, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:46:34', '2020-06-19 01:46:34'),
(269, 1, 'sc_admin/menu/edit/67', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:46:43', '2020-06-19 01:46:43'),
(270, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:46:48', '2020-06-19 01:46:48'),
(271, 1, 'sc_admin/menu/edit/63', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:47:00', '2020-06-19 01:47:00'),
(272, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:47:50', '2020-06-19 01:47:50'),
(273, 1, 'sc_admin/menu/edit/67', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:48:14', '2020-06-19 01:48:14'),
(274, 1, 'sc_admin/menu/edit/33', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:48:19', '2020-06-19 01:48:19'),
(275, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:50:57', '2020-06-19 01:50:57'),
(276, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:51:32', '2020-06-19 01:51:32'),
(277, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:51:36', '2020-06-19 01:51:36'),
(278, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:51:41', '2020-06-19 01:51:41'),
(279, 1, 'sc_admin/menu/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"id\":\"67\",\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\"}', '2020-06-19 01:58:11', '2020-06-19 01:58:11'),
(280, 1, 'sc_admin/menu/edit/33', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:11', '2020-06-19 01:58:11'),
(281, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:15', '2020-06-19 01:58:15'),
(282, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:22', '2020-06-19 01:58:22'),
(283, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:28', '2020-06-19 01:58:28'),
(284, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:29', '2020-06-19 01:58:29'),
(285, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:29', '2020-06-19 01:58:29'),
(286, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:57', '2020-06-19 01:58:57'),
(287, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:57', '2020-06-19 01:58:57'),
(288, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:58', '2020-06-19 01:58:58'),
(289, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:58:58', '2020-06-19 01:58:58'),
(290, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 01:59:07', '2020-06-19 01:59:07'),
(291, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:05:12', '2020-06-19 02:05:12'),
(292, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:05:14', '2020-06-19 02:05:14'),
(293, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:05:15', '2020-06-19 02:05:15'),
(294, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:05:16', '2020-06-19 02:05:16'),
(295, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:05:16', '2020-06-19 02:05:16'),
(296, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:05:16', '2020-06-19 02:05:16'),
(297, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:09:07', '2020-06-19 02:09:07'),
(298, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:09:27', '2020-06-19 02:09:27'),
(299, 1, 'sc_admin/menu/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"parent_id\":\"7\",\"title\":\"D\\u1ef1 \\u00e1n\",\"icon\":\"fa-institution\",\"uri\":\"admin::duan\",\"sort\":\"0\",\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\"}', '2020-06-19 02:09:49', '2020-06-19 02:09:49'),
(300, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:09:49', '2020-06-19 02:09:49'),
(301, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:09:51', '2020-06-19 02:09:51'),
(302, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:09:55', '2020-06-19 02:09:55'),
(303, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:12:54', '2020-06-19 02:12:54'),
(304, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:12:56', '2020-06-19 02:12:56'),
(305, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:13:33', '2020-06-19 02:13:33'),
(306, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:14:52', '2020-06-19 02:14:52'),
(307, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:14:54', '2020-06-19 02:14:54'),
(308, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:17:10', '2020-06-19 02:17:10'),
(309, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:17:14', '2020-06-19 02:17:14'),
(310, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:17:28', '2020-06-19 02:17:28'),
(311, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:19:20', '2020-06-19 02:19:20'),
(312, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-19 02:19:22', '2020-06-19 02:19:22'),
(313, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533163746\"}', '2020-06-19 02:19:23', '2020-06-19 02:19:23'),
(314, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533163747\"}', '2020-06-19 02:19:23', '2020-06-19 02:19:23'),
(315, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592533163748\"}', '2020-06-19 02:19:23', '2020-06-19 02:19:23'),
(316, 1, 'sc_admin/duan/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-01.jpg\",\"html\":\"KASBDkjasdjkbsadf\",\"status\":\"on\",\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\"}', '2020-06-19 02:19:32', '2020-06-19 02:19:32'),
(317, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:19:32', '2020-06-19 02:19:32'),
(318, 1, 'sc_admin/duan/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:19:48', '2020-06-19 02:19:48'),
(319, 1, 'sc_admin/duan/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:20:01', '2020-06-19 02:20:01'),
(320, 1, 'sc_admin/duan/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-01.jpg\",\"html\":null,\"status\":\"on\",\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\"}', '2020-06-19 02:20:23', '2020-06-19 02:20:23'),
(321, 1, 'sc_admin/duan/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:20:23', '2020-06-19 02:20:23'),
(322, 1, 'sc_admin/duan/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:20:46', '2020-06-19 02:20:46'),
(323, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:20:49', '2020-06-19 02:20:49'),
(324, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:21:38', '2020-06-19 02:21:38'),
(325, 1, 'sc_admin/duan/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:21:58', '2020-06-19 02:21:58'),
(326, 1, 'sc_admin/duan/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:22:05', '2020-06-19 02:22:05'),
(327, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:22:07', '2020-06-19 02:22:07'),
(328, 1, 'sc_admin/duan/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:22:09', '2020-06-19 02:22:09'),
(329, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-19 02:22:11', '2020-06-19 02:22:11'),
(330, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533331598\"}', '2020-06-19 02:22:11', '2020-06-19 02:22:11'),
(331, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533331599\"}', '2020-06-19 02:22:11', '2020-06-19 02:22:11'),
(332, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592533331600\"}', '2020-06-19 02:22:11', '2020-06-19 02:22:11'),
(333, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-19 02:22:14', '2020-06-19 02:22:14'),
(334, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533334413\"}', '2020-06-19 02:22:14', '2020-06-19 02:22:14'),
(335, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533334414\"}', '2020-06-19 02:22:14', '2020-06-19 02:22:14'),
(336, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592533334415\"}', '2020-06-19 02:22:14', '2020-06-19 02:22:14'),
(337, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:22:19', '2020-06-19 02:22:19'),
(338, 1, 'sc_admin/duan/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\"}', '2020-06-19 02:22:21', '2020-06-19 02:22:21'),
(339, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-06-19 02:22:21', '2020-06-19 02:22:21'),
(340, 1, 'sc_admin/duan/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:22:23', '2020-06-19 02:22:23'),
(341, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"banner\"}', '2020-06-19 02:22:26', '2020-06-19 02:22:26'),
(342, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533346266\"}', '2020-06-19 02:22:26', '2020-06-19 02:22:26'),
(343, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1592533346267\"}', '2020-06-19 02:22:26', '2020-06-19 02:22:26'),
(344, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"_\":\"1592533346268\"}', '2020-06-19 02:22:26', '2020-06-19 02:22:26'),
(345, 1, 'sc_admin/duan/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"image\":\"http:\\/\\/127.0.0.1:8000\\/data\\/banner\\/slider-01.jpg\",\"html\":\"KASBDkjasdjkbsadf\",\"status\":\"on\",\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\"}', '2020-06-19 02:22:30', '2020-06-19 02:22:30'),
(346, 1, 'sc_admin/duan', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:22:30', '2020-06-19 02:22:30'),
(347, 1, 'sc_admin/duan/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:29:57', '2020-06-19 02:29:57'),
(348, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:39:13', '2020-06-19 02:39:13'),
(349, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\",\"key\":\"default-new\"}', '2020-06-19 02:39:15', '2020-06-19 02:39:15'),
(350, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:39:16', '2020-06-19 02:39:16'),
(351, 1, 'sc_admin/template/changeTemplate', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"w8Lm7EusCHH11yz9guMhyzEhZw1BDEgNw6qyZXjc\",\"key\":\"noithat\"}', '2020-06-19 02:40:45', '2020-06-19 02:40:45'),
(352, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:40:45', '2020-06-19 02:40:45'),
(353, 1, 'sc_admin/link', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:44:08', '2020-06-19 02:44:08'),
(354, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 02:44:34', '2020-06-19 02:44:34'),
(355, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 03:56:07', '2020-06-19 03:56:07'),
(356, 1, 'sc_admin/link', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-19 03:56:13', '2020-06-19 03:56:13'),
(357, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 04:03:56', '2020-06-20 04:03:56'),
(358, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 04:15:38', '2020-06-20 04:15:38'),
(359, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 04:21:35', '2020-06-20 04:21:35'),
(360, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 04:22:53', '2020-06-20 04:22:53'),
(361, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"facebook\",\"value\":\"dwvoqAVWWQA\",\"pk\":null,\"_token\":\"DeSObUbC8BJHj7Fywk01SPznBLLfBJVqWvLnEBYN\"}', '2020-06-20 04:22:58', '2020-06-20 04:22:58'),
(362, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"ch\\u00e0o m\\u01b0ng b\\u1ea1n \\u0111\\u00ean v\\u1edbi n\\u1ed9i th\\u1ea5t nha trang\",\"pk\":null,\"_token\":\"DeSObUbC8BJHj7Fywk01SPznBLLfBJVqWvLnEBYN\"}', '2020-06-20 04:33:35', '2020-06-20 04:33:35');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(363, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Ch\\u00e0o m\\u1eebng b\\u1ea1n \\u0111\\u00ean v\\u1edbi n\\u1ed9i th\\u1ea5t nha trang\",\"pk\":null,\"_token\":\"DeSObUbC8BJHj7Fywk01SPznBLLfBJVqWvLnEBYN\"}', '2020-06-20 04:34:35', '2020-06-20 04:34:35'),
(364, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 06:56:00', '2020-06-20 06:56:00'),
(365, 1, 'sc_admin/block_content', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 06:56:08', '2020-06-20 06:56:08'),
(366, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 06:56:14', '2020-06-20 06:56:14'),
(367, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 06:58:58', '2020-06-20 06:58:58'),
(368, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 06:59:08', '2020-06-20 06:59:08'),
(369, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 06:59:19', '2020-06-20 06:59:19'),
(370, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:00:03', '2020-06-20 07:00:03'),
(371, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:00:27', '2020-06-20 07:00:27'),
(372, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:00:38', '2020-06-20 07:00:38'),
(373, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:01:17', '2020-06-20 07:01:17'),
(374, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:01:20', '2020-06-20 07:01:20'),
(375, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo-footer\"}', '2020-06-20 07:01:42', '2020-06-20 07:01:42'),
(376, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo-footer\",\"_\":\"1592636503294\"}', '2020-06-20 07:01:43', '2020-06-20 07:01:43'),
(377, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo-footer\",\"_\":\"1592636503295\"}', '2020-06-20 07:01:43', '2020-06-20 07:01:43'),
(378, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo-footer\",\"sort_type\":\"alphabetic\",\"_\":\"1592636503296\"}', '2020-06-20 07:01:43', '2020-06-20 07:01:43'),
(379, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:04:33', '2020-06-20 07:04:33'),
(380, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logofooter\"}', '2020-06-20 07:04:35', '2020-06-20 07:04:35'),
(381, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logofooter\",\"_\":\"1592636675460\"}', '2020-06-20 07:04:35', '2020-06-20 07:04:35'),
(382, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logofooter\",\"_\":\"1592636675461\"}', '2020-06-20 07:04:35', '2020-06-20 07:04:35'),
(383, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logofooter\",\"sort_type\":\"alphabetic\",\"_\":\"1592636675462\"}', '2020-06-20 07:04:35', '2020-06-20 07:04:35'),
(384, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logofooter\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:04:49', '2020-06-20 07:04:49'),
(385, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logofooter\"}', '2020-06-20 07:04:56', '2020-06-20 07:04:56'),
(386, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logofooter\",\"_\":\"1592636696457\"}', '2020-06-20 07:04:56', '2020-06-20 07:04:56'),
(387, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logofooter\",\"_\":\"1592636696458\"}', '2020-06-20 07:04:56', '2020-06-20 07:04:56'),
(388, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logofooter\",\"sort_type\":\"alphabetic\",\"_\":\"1592636696459\"}', '2020-06-20 07:04:56', '2020-06-20 07:04:56'),
(389, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/file\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:04:58', '2020-06-20 07:04:58'),
(390, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:06:04', '2020-06-20 07:06:04'),
(391, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:06:06', '2020-06-20 07:06:06'),
(392, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636766611\"}', '2020-06-20 07:06:06', '2020-06-20 07:06:06'),
(393, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636766612\"}', '2020-06-20 07:06:06', '2020-06-20 07:06:06'),
(394, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592636766613\"}', '2020-06-20 07:06:06', '2020-06-20 07:06:06'),
(395, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:06:08', '2020-06-20 07:06:08'),
(396, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:06:10', '2020-06-20 07:06:10'),
(397, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:06:13', '2020-06-20 07:06:13'),
(398, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636773528\"}', '2020-06-20 07:06:13', '2020-06-20 07:06:13'),
(399, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636773529\"}', '2020-06-20 07:06:13', '2020-06-20 07:06:13'),
(400, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592636773530\"}', '2020-06-20 07:06:13', '2020-06-20 07:06:13'),
(401, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:06:14', '2020-06-20 07:06:14'),
(402, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:06:48', '2020-06-20 07:06:48'),
(403, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:06:50', '2020-06-20 07:06:50'),
(404, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636810189\"}', '2020-06-20 07:06:50', '2020-06-20 07:06:50'),
(405, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636810190\"}', '2020-06-20 07:06:50', '2020-06-20 07:06:50'),
(406, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592636810191\"}', '2020-06-20 07:06:50', '2020-06-20 07:06:50'),
(407, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:06:51', '2020-06-20 07:06:51'),
(408, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:08:31', '2020-06-20 07:08:31'),
(409, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:08:53', '2020-06-20 07:08:53'),
(410, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636933663\"}', '2020-06-20 07:08:53', '2020-06-20 07:08:53'),
(411, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636933664\"}', '2020-06-20 07:08:53', '2020-06-20 07:08:53'),
(412, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592636933665\"}', '2020-06-20 07:08:53', '2020-06-20 07:08:53'),
(413, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:08:55', '2020-06-20 07:08:55'),
(414, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:08:57', '2020-06-20 07:08:57'),
(415, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636937867\"}', '2020-06-20 07:08:58', '2020-06-20 07:08:58'),
(416, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592636937868\"}', '2020-06-20 07:08:58', '2020-06-20 07:08:58'),
(417, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592636937869\"}', '2020-06-20 07:08:58', '2020-06-20 07:08:58'),
(418, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/scart-mid.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:08:59', '2020-06-20 07:08:59'),
(419, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:11:16', '2020-06-20 07:11:16'),
(420, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:11:18', '2020-06-20 07:11:18'),
(421, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637078692\"}', '2020-06-20 07:11:18', '2020-06-20 07:11:18'),
(422, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637078693\"}', '2020-06-20 07:11:18', '2020-06-20 07:11:18'),
(423, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637078694\"}', '2020-06-20 07:11:18', '2020-06-20 07:11:18'),
(424, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:11:19', '2020-06-20 07:11:19'),
(425, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:11:21', '2020-06-20 07:11:21'),
(426, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:11:29', '2020-06-20 07:11:29'),
(427, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637089964\"}', '2020-06-20 07:11:30', '2020-06-20 07:11:30'),
(428, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637089965\"}', '2020-06-20 07:11:30', '2020-06-20 07:11:30'),
(429, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637089966\"}', '2020-06-20 07:11:30', '2020-06-20 07:11:30'),
(430, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:11:35', '2020-06-20 07:11:35'),
(431, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:11:36', '2020-06-20 07:11:36'),
(432, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637096913\"}', '2020-06-20 07:11:37', '2020-06-20 07:11:37'),
(433, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637096914\"}', '2020-06-20 07:11:37', '2020-06-20 07:11:37'),
(434, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637096915\"}', '2020-06-20 07:11:37', '2020-06-20 07:11:37'),
(435, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:12:07', '2020-06-20 07:12:07'),
(436, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:12:08', '2020-06-20 07:12:08'),
(437, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637128899\"}', '2020-06-20 07:12:09', '2020-06-20 07:12:09'),
(438, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637128900\"}', '2020-06-20 07:12:09', '2020-06-20 07:12:09'),
(439, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637128901\"}', '2020-06-20 07:12:09', '2020-06-20 07:12:09'),
(440, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/scart-mid.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:12:10', '2020-06-20 07:12:10'),
(441, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:12:13', '2020-06-20 07:12:13'),
(442, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:12:32', '2020-06-20 07:12:32'),
(443, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637153010\"}', '2020-06-20 07:12:33', '2020-06-20 07:12:33'),
(444, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637153011\"}', '2020-06-20 07:12:33', '2020-06-20 07:12:33'),
(445, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637153012\"}', '2020-06-20 07:12:33', '2020-06-20 07:12:33'),
(446, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/scart-mid.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:12:34', '2020-06-20 07:12:34'),
(447, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:12:39', '2020-06-20 07:12:39'),
(448, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:13:05', '2020-06-20 07:13:05'),
(449, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637185843\"}', '2020-06-20 07:13:05', '2020-06-20 07:13:05'),
(450, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637185844\"}', '2020-06-20 07:13:06', '2020-06-20 07:13:06'),
(451, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637185845\"}', '2020-06-20 07:13:06', '2020-06-20 07:13:06'),
(452, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:13:56', '2020-06-20 07:13:56'),
(453, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:13:57', '2020-06-20 07:13:57'),
(454, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637237645\"}', '2020-06-20 07:13:57', '2020-06-20 07:13:57'),
(455, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637237646\"}', '2020-06-20 07:13:57', '2020-06-20 07:13:57'),
(456, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637237647\"}', '2020-06-20 07:13:57', '2020-06-20 07:13:57'),
(457, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:13:59', '2020-06-20 07:13:59'),
(458, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:14:01', '2020-06-20 07:14:01'),
(459, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:15:30', '2020-06-20 07:15:30'),
(460, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:15:31', '2020-06-20 07:15:31'),
(461, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637331925\"}', '2020-06-20 07:15:32', '2020-06-20 07:15:32'),
(462, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637331926\"}', '2020-06-20 07:15:32', '2020-06-20 07:15:32'),
(463, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637331927\"}', '2020-06-20 07:15:32', '2020-06-20 07:15:32'),
(464, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/scart-mid.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:15:33', '2020-06-20 07:15:33'),
(465, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:16:31', '2020-06-20 07:16:31'),
(466, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:16:31', '2020-06-20 07:16:31'),
(467, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637392070\"}', '2020-06-20 07:16:32', '2020-06-20 07:16:32'),
(468, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637392071\"}', '2020-06-20 07:16:32', '2020-06-20 07:16:32'),
(469, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637392072\"}', '2020-06-20 07:16:32', '2020-06-20 07:16:32'),
(470, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:16:34', '2020-06-20 07:16:34'),
(471, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:16:36', '2020-06-20 07:16:36'),
(472, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637396186\"}', '2020-06-20 07:16:36', '2020-06-20 07:16:36'),
(473, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637396187\"}', '2020-06-20 07:16:36', '2020-06-20 07:16:36'),
(474, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637396188\"}', '2020-06-20 07:16:36', '2020-06-20 07:16:36'),
(475, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:16:44', '2020-06-20 07:16:44'),
(476, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:17:00', '2020-06-20 07:17:00'),
(477, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637420810\"}', '2020-06-20 07:17:00', '2020-06-20 07:17:00'),
(478, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637420811\"}', '2020-06-20 07:17:00', '2020-06-20 07:17:00'),
(479, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637420812\"}', '2020-06-20 07:17:01', '2020-06-20 07:17:01'),
(480, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/LOGO-01.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:17:02', '2020-06-20 07:17:02'),
(481, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:17:03', '2020-06-20 07:17:03'),
(482, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:17:57', '2020-06-20 07:17:57'),
(483, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:17:58', '2020-06-20 07:17:58'),
(484, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637478671\"}', '2020-06-20 07:17:58', '2020-06-20 07:17:58'),
(485, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637478672\"}', '2020-06-20 07:17:58', '2020-06-20 07:17:58'),
(486, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637478673\"}', '2020-06-20 07:17:58', '2020-06-20 07:17:58'),
(487, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:18:01', '2020-06-20 07:18:01'),
(488, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:18:04', '2020-06-20 07:18:04'),
(489, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637484494\"}', '2020-06-20 07:18:04', '2020-06-20 07:18:04'),
(490, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637484495\"}', '2020-06-20 07:18:04', '2020-06-20 07:18:04'),
(491, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637484496\"}', '2020-06-20 07:18:04', '2020-06-20 07:18:04'),
(492, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:18:23', '2020-06-20 07:18:23'),
(493, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:18:39', '2020-06-20 07:18:39'),
(494, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:19:10', '2020-06-20 07:19:10'),
(495, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:19:12', '2020-06-20 07:19:12'),
(496, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637552356\"}', '2020-06-20 07:19:12', '2020-06-20 07:19:12'),
(497, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637552357\"}', '2020-06-20 07:19:12', '2020-06-20 07:19:12'),
(498, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637552358\"}', '2020-06-20 07:19:12', '2020-06-20 07:19:12'),
(499, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:19:16', '2020-06-20 07:19:16'),
(500, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:19:55', '2020-06-20 07:19:55'),
(501, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:20:34', '2020-06-20 07:20:34'),
(502, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637634863\"}', '2020-06-20 07:20:34', '2020-06-20 07:20:34'),
(503, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637634864\"}', '2020-06-20 07:20:35', '2020-06-20 07:20:35'),
(504, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637634865\"}', '2020-06-20 07:20:35', '2020-06-20 07:20:35'),
(505, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:20:37', '2020-06-20 07:20:37'),
(506, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:20:40', '2020-06-20 07:20:40'),
(507, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637640378\"}', '2020-06-20 07:20:40', '2020-06-20 07:20:40'),
(508, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637640379\"}', '2020-06-20 07:20:40', '2020-06-20 07:20:40'),
(509, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637640380\"}', '2020-06-20 07:20:40', '2020-06-20 07:20:40'),
(510, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:20:42', '2020-06-20 07:20:42'),
(511, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:22:06', '2020-06-20 07:22:06'),
(512, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:22:07', '2020-06-20 07:22:07'),
(513, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637727215\"}', '2020-06-20 07:22:07', '2020-06-20 07:22:07'),
(514, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637727216\"}', '2020-06-20 07:22:07', '2020-06-20 07:22:07'),
(515, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637727217\"}', '2020-06-20 07:22:07', '2020-06-20 07:22:07'),
(516, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:22:08', '2020-06-20 07:22:08'),
(517, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"phone\",\"value\":\"01234567890\",\"pk\":null,\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:22:48', '2020-06-20 07:22:48'),
(518, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"phone\",\"value\":\"0123456789\",\"pk\":null,\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:22:55', '2020-06-20 07:22:55'),
(519, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:22:56', '2020-06-20 07:22:56'),
(520, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637776826\"}', '2020-06-20 07:22:56', '2020-06-20 07:22:56'),
(521, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637776827\"}', '2020-06-20 07:22:57', '2020-06-20 07:22:57'),
(522, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637776828\"}', '2020-06-20 07:22:57', '2020-06-20 07:22:57'),
(523, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:23:05', '2020-06-20 07:23:05'),
(524, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:23:07', '2020-06-20 07:23:07'),
(525, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637787544\"}', '2020-06-20 07:23:07', '2020-06-20 07:23:07'),
(526, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637787545\"}', '2020-06-20 07:23:07', '2020-06-20 07:23:07'),
(527, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637787546\"}', '2020-06-20 07:23:07', '2020-06-20 07:23:07'),
(528, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:23:10', '2020-06-20 07:23:10'),
(529, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:23:12', '2020-06-20 07:23:12'),
(530, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637792251\"}', '2020-06-20 07:23:12', '2020-06-20 07:23:12'),
(531, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637792252\"}', '2020-06-20 07:23:12', '2020-06-20 07:23:12'),
(532, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637792253\"}', '2020-06-20 07:23:12', '2020-06-20 07:23:12'),
(533, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:11', '2020-06-20 07:24:11'),
(534, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"type\":\"logo\"}', '2020-06-20 07:24:12', '2020-06-20 07:24:12'),
(535, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637852397\"}', '2020-06-20 07:24:12', '2020-06-20 07:24:12'),
(536, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1592637852398\"}', '2020-06-20 07:24:12', '2020-06-20 07:24:12'),
(537, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1592637852399\"}', '2020-06-20 07:24:12', '2020-06-20 07:24:12'),
(538, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"logofooter\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/data\\/logo\\/scart-mid.png\",\"_token\":\"fhHGhp3vXn7Crht9GnkNshvgFhzMpsq5ltnyHB6M\"}', '2020-06-20 07:24:13', '2020-06-20 07:24:13'),
(539, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:14', '2020-06-20 07:24:14'),
(540, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:15', '2020-06-20 07:24:15'),
(541, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:15', '2020-06-20 07:24:15'),
(542, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:15', '2020-06-20 07:24:15'),
(543, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:16', '2020-06-20 07:24:16'),
(544, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:16', '2020-06-20 07:24:16'),
(545, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:16', '2020-06-20 07:24:16'),
(546, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-20 07:24:16', '2020-06-20 07:24:16'),
(547, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:25:55', '2020-06-22 04:25:55'),
(548, 1, 'sc_admin/customer_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:26:26', '2020-06-22 04:26:26'),
(549, 1, 'sc_admin/setting/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"customer_country\",\"value\":\"0\",\"_token\":\"8DvhqxiQX39eQ2bloJ8GxTDELgic8r4KX5zc3O0C\"}', '2020-06-22 04:26:31', '2020-06-22 04:26:31'),
(550, 1, 'sc_admin/setting/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"customer_address2\",\"value\":\"0\",\"_token\":\"8DvhqxiQX39eQ2bloJ8GxTDELgic8r4KX5zc3O0C\"}', '2020-06-22 04:26:48', '2020-06-22 04:26:48');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(551, 1, 'sc_admin/setting/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"customer_address1\",\"value\":\"0\",\"_token\":\"8DvhqxiQX39eQ2bloJ8GxTDELgic8r4KX5zc3O0C\"}', '2020-06-22 04:26:49', '2020-06-22 04:26:49'),
(552, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:47:01', '2020-06-22 04:47:01'),
(553, 1, 'sc_admin/order/detail/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:47:04', '2020-06-22 04:47:04'),
(554, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:51:24', '2020-06-22 04:51:24'),
(555, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:51:26', '2020-06-22 04:51:26'),
(556, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:53:06', '2020-06-22 04:53:06'),
(557, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:53:18', '2020-06-22 04:53:18'),
(558, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:53:45', '2020-06-22 04:53:45'),
(559, 1, 'sc_admin/order/detail/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:53:48', '2020-06-22 04:53:48'),
(560, 1, 'sc_admin/order/detail/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:59:43', '2020-06-22 04:59:43'),
(561, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:59:45', '2020-06-22 04:59:45'),
(562, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 04:59:49', '2020-06-22 04:59:49'),
(563, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:10:03', '2020-06-22 05:10:03'),
(564, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:10:05', '2020-06-22 05:10:05'),
(565, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:14:55', '2020-06-22 05:14:55'),
(566, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:16:06', '2020-06-22 05:16:06'),
(567, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:16:26', '2020-06-22 05:16:26'),
(568, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:19:01', '2020-06-22 05:19:01'),
(569, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:19:18', '2020-06-22 05:19:18'),
(570, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:19:40', '2020-06-22 05:19:40'),
(571, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:24:23', '2020-06-22 05:24:23'),
(572, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:24:44', '2020-06-22 05:24:44'),
(573, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:31:26', '2020-06-22 05:31:26'),
(574, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:31:43', '2020-06-22 05:31:43'),
(575, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:32:40', '2020-06-22 05:32:40'),
(576, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:32:50', '2020-06-22 05:32:50'),
(577, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:32:52', '2020-06-22 05:32:52'),
(578, 1, 'sc_admin/order/export_detail', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"order_id\":\"5\",\"type\":\"invoice\"}', '2020-06-22 05:33:05', '2020-06-22 05:33:05'),
(579, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:33:39', '2020-06-22 05:33:39'),
(580, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:33:48', '2020-06-22 05:33:48'),
(581, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:33:50', '2020-06-22 05:33:50'),
(582, 1, 'sc_admin/order/export_detail', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"order_id\":\"5\",\"type\":\"invoice\"}', '2020-06-22 05:33:51', '2020-06-22 05:33:51'),
(583, 1, 'sc_admin/order/export_detail', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"order_id\":\"5\",\"type\":\"invoice\"}', '2020-06-22 05:35:14', '2020-06-22 05:35:14'),
(584, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:35:29', '2020-06-22 05:35:29'),
(585, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:35:31', '2020-06-22 05:35:31'),
(586, 1, 'sc_admin/user', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:35:44', '2020-06-22 05:35:44'),
(587, 1, 'sc_admin/customer', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:35:47', '2020-06-22 05:35:47'),
(588, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:36:56', '2020-06-22 05:36:56'),
(589, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:36:58', '2020-06-22 05:36:58'),
(590, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:19', '2020-06-22 05:37:19'),
(591, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:21', '2020-06-22 05:37:21'),
(592, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:22', '2020-06-22 05:37:22'),
(593, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:23', '2020-06-22 05:37:23'),
(594, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:31', '2020-06-22 05:37:31'),
(595, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:32', '2020-06-22 05:37:32'),
(596, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:33', '2020-06-22 05:37:33'),
(597, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:34', '2020-06-22 05:37:34'),
(598, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:39', '2020-06-22 05:37:39'),
(599, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:51', '2020-06-22 05:37:51'),
(600, 1, 'sc_admin/plugin/shipping/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:52', '2020-06-22 05:37:52'),
(601, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:52', '2020-06-22 05:37:52'),
(602, 1, 'sc_admin/plugin/shipping/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:53', '2020-06-22 05:37:53'),
(603, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:54', '2020-06-22 05:37:54'),
(604, 1, 'sc_admin/plugin/shipping/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:54', '2020-06-22 05:37:54'),
(605, 1, 'sc_admin/report/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:37:57', '2020-06-22 05:37:57'),
(606, 1, 'sc_admin/order_status', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:00', '2020-06-22 05:38:00'),
(607, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:01', '2020-06-22 05:38:01'),
(608, 1, 'sc_admin/order/detail/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:05', '2020-06-22 05:38:05'),
(609, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:15', '2020-06-22 05:38:15'),
(610, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:17', '2020-06-22 05:38:17'),
(611, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"ShippingStandard\"}', '2020-06-22 05:38:18', '2020-06-22 05:38:18'),
(612, 1, 'sc_admin/plugin/process/Shipping/ShippingStandard', 'PUT', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"fee\",\"value\":\"0\",\"pk\":\"1\",\"_token\":\"Rhto7h3xMCguJSdGthj7FqrKsmxc0oIXSDFR4pU4\"}', '2020-06-22 05:38:21', '2020-06-22 05:38:21'),
(613, 1, 'sc_admin/plugin/process/Shipping/ShippingStandard', 'PUT', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"name\":\"shipping_free\",\"value\":\"0\",\"pk\":\"1\",\"_token\":\"Rhto7h3xMCguJSdGthj7FqrKsmxc0oIXSDFR4pU4\"}', '2020-06-22 05:38:26', '2020-06-22 05:38:26'),
(614, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:29', '2020-06-22 05:38:29'),
(615, 1, 'sc_admin/plugin/install', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"Rhto7h3xMCguJSdGthj7FqrKsmxc0oIXSDFR4pU4\",\"key\":\"Discount\",\"code\":\"Total\"}', '2020-06-22 05:38:31', '2020-06-22 05:38:31'),
(616, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:31', '2020-06-22 05:38:31'),
(617, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"Discount\"}', '2020-06-22 05:38:34', '2020-06-22 05:38:34'),
(618, 1, 'sc_admin/shop_discount', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:38:35', '2020-06-22 05:38:35'),
(619, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:11', '2020-06-22 05:39:11'),
(620, 1, 'sc_admin/plugin/disable', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"Rhto7h3xMCguJSdGthj7FqrKsmxc0oIXSDFR4pU4\",\"key\":\"Discount\",\"code\":\"Total\"}', '2020-06-22 05:39:12', '2020-06-22 05:39:12'),
(621, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-06-22 05:39:12', '2020-06-22 05:39:12'),
(622, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"Discount\"}', '2020-06-22 05:39:15', '2020-06-22 05:39:15'),
(623, 1, 'sc_admin/shop_discount', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:15', '2020-06-22 05:39:15'),
(624, 1, 'sc_admin/plugin/disable', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"Rhto7h3xMCguJSdGthj7FqrKsmxc0oIXSDFR4pU4\",\"key\":\"Discount\",\"code\":\"Total\"}', '2020-06-22 05:39:20', '2020-06-22 05:39:20'),
(625, 1, 'sc_admin/plugin/disable', 'POST', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"_token\":\"Rhto7h3xMCguJSdGthj7FqrKsmxc0oIXSDFR4pU4\",\"key\":\"Discount\",\"code\":\"Total\"}', '2020-06-22 05:39:23', '2020-06-22 05:39:23'),
(626, 1, 'sc_admin/plugin/total/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:27', '2020-06-22 05:39:27'),
(627, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:27', '2020-06-22 05:39:27'),
(628, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:30', '2020-06-22 05:39:30'),
(629, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"Discount\"}', '2020-06-22 05:39:33', '2020-06-22 05:39:33'),
(630, 1, 'sc_admin/shop_discount', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:33', '2020-06-22 05:39:33'),
(631, 1, 'sc_admin/plugin/total', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:34', '2020-06-22 05:39:34'),
(632, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:40', '2020-06-22 05:39:40'),
(633, 1, 'sc_admin/plugin/import', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 05:39:42', '2020-06-22 05:39:42'),
(634, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:01:26', '2020-06-22 07:01:26'),
(635, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:01:38', '2020-06-22 07:01:38'),
(636, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:01:40', '2020-06-22 07:01:40'),
(637, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:01:55', '2020-06-22 07:01:55'),
(638, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:03:09', '2020-06-22 07:03:09'),
(639, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:03:16', '2020-06-22 07:03:16'),
(640, 1, 'sc_admin/plugin/Payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"only_version\":\"1\"}', '2020-06-22 07:03:18', '2020-06-22 07:03:18'),
(641, 1, 'sc_admin/plugin/Payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:03:19', '2020-06-22 07:03:19'),
(642, 1, 'sc_admin/plugin/Payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '{\"only_version\":\"1\"}', '2020-06-22 07:03:20', '2020-06-22 07:03:20'),
(643, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:03:22', '2020-06-22 07:03:22'),
(644, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:04:15', '2020-06-22 07:04:15'),
(645, 1, 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:04:18', '2020-06-22 07:04:18'),
(646, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:04:20', '2020-06-22 07:04:20'),
(647, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:04:31', '2020-06-22 07:04:31'),
(648, 1, 'sc_admin/plugin/shipping/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:04:38', '2020-06-22 07:04:38'),
(649, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:04:39', '2020-06-22 07:04:39'),
(650, 1, 'sc_admin/plugin/cms', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:04:41', '2020-06-22 07:04:41'),
(651, 1, 'sc_admin/plugin/cms', 'GET', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '[]', '2020-06-22 07:07:07', '2020-06-22 07:07:07'),
(652, 1, 'sc_admin', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:12:34', '2022-01-27 06:12:34'),
(653, 1, 'sc_admin/report/product', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:12:46', '2022-01-27 06:12:46'),
(654, 1, 'sc_admin/store_info', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:12:56', '2022-01-27 06:12:56'),
(655, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:13:43', '2022-01-27 06:13:43'),
(656, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643264038337\"}', '2022-01-27 06:13:45', '2022-01-27 06:13:45'),
(657, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643264038336\"}', '2022-01-27 06:13:45', '2022-01-27 06:13:45'),
(658, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643264038338\"}', '2022-01-27 06:13:45', '2022-01-27 06:13:45'),
(659, 1, 'sc_admin/uploads/upload', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:16:13', '2022-01-27 06:16:13'),
(660, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1643264038339\"}', '2022-01-27 06:16:14', '2022-01-27 06:16:14'),
(661, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643264038340\"}', '2022-01-27 06:16:14', '2022-01-27 06:16:14'),
(662, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"logo\",\"value\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/logo\\/logo.PNG\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:16:17', '2022-01-27 06:16:17'),
(663, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:16:20', '2022-01-27 06:16:20'),
(664, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643264195068\"}', '2022-01-27 06:16:21', '2022-01-27 06:16:21'),
(665, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643264195069\"}', '2022-01-27 06:16:21', '2022-01-27 06:16:21'),
(666, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643264195070\"}', '2022-01-27 06:16:21', '2022-01-27 06:16:21'),
(667, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"logofooter\",\"value\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/logo\\/logo.PNG\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:16:24', '2022-01-27 06:16:24'),
(668, 1, 'sc_admin/setting', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:16:34', '2022-01-27 06:16:34'),
(669, 1, 'sc_admin/user', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:16:54', '2022-01-27 06:16:54'),
(670, 1, 'sc_admin/block_content', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:16:57', '2022-01-27 06:16:57'),
(671, 1, 'sc_admin/cms_content', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:17:17', '2022-01-27 06:17:17'),
(672, 1, 'sc_admin/page', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:17:39', '2022-01-27 06:17:39'),
(673, 1, 'sc_admin/news', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:17:43', '2022-01-27 06:17:43'),
(674, 1, 'sc_admin/log', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:17:58', '2022-01-27 06:17:58'),
(675, 1, 'sc_admin/api_connection', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:18:06', '2022-01-27 06:18:06'),
(676, 1, 'sc_admin/banner', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:09', '2022-01-27 06:20:09'),
(677, 1, 'sc_admin/banner/edit/3', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:13', '2022-01-27 06:20:13'),
(678, 1, 'sc_admin/banner/edit/3', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider-02.jpg\",\"url\":null,\"target\":null,\"html\":\"B\\u1ed9 s\\u01b0u t\\u1eadp n\\u1ed9i th\\u1ea5t c\\u0103n h\\u1ed9\",\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:20:21', '2022-01-27 06:20:21'),
(679, 1, 'sc_admin/banner', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:21', '2022-01-27 06:20:21'),
(680, 1, 'sc_admin/banner/edit/2', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:24', '2022-01-27 06:20:24'),
(681, 1, 'sc_admin/banner/edit/2', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider-01.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"B\\u1ed9 s\\u01b0u t\\u1eadp n\\u1ed9i th\\u1ea5t c\\u0103n h\\u1ed9\",\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:20:27', '2022-01-27 06:20:27'),
(682, 1, 'sc_admin/banner', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:28', '2022-01-27 06:20:28'),
(683, 1, 'sc_admin/product', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:33', '2022-01-27 06:20:33'),
(684, 1, 'sc_admin/category', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:37', '2022-01-27 06:20:37'),
(685, 1, 'sc_admin/supplier', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:40', '2022-01-27 06:20:40'),
(686, 1, 'sc_admin/supplier/edit/2', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:44', '2022-01-27 06:20:44'),
(687, 1, 'sc_admin/category/edit/12', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:52', '2022-01-27 06:20:52'),
(688, 1, 'sc_admin/page', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:56', '2022-01-27 06:20:56'),
(689, 1, 'sc_admin/page/edit/1', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:20:59', '2022-01-27 06:20:59'),
(690, 1, 'sc_admin/news', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:21:06', '2022-01-27 06:21:06'),
(691, 1, 'sc_admin/news/edit/1', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:21:09', '2022-01-27 06:21:09'),
(692, 1, 'sc_admin/news/edit/1', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tr\\u00e0 Th\\u1ea3o M\\u1ed9c: 8 Lo\\u1ea1i T\\u1ed1t Cho S\\u1ee9c Kh\\u1ecfe M\\u00e0 B\\u1ea1n N\\u00ean D\\u00f9ng\",\"keyword\":\"Tr\\u00e0 Th\\u1ea3o M\\u1ed9c: 8 Lo\\u1ea1i T\\u1ed1t Cho S\\u1ee9c Kh\\u1ecfe M\\u00e0 B\\u1ea1n N\\u00ean D\\u00f9ng\",\"description\":\"gWAGSZ\",\"content\":\"<p>AFGAWVA<\\/p>\"}},\"alias\":\"tra-thao-moc-8-loai-tot-cho-suc-khoe-ma-ban-nen-dung\",\"image\":\"\\/data\\/content\\/img-22.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:21:14', '2022-01-27 06:21:14'),
(693, 1, 'sc_admin/news', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:21:15', '2022-01-27 06:21:15'),
(694, 1, 'sc_admin/cms_content', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:21:18', '2022-01-27 06:21:18'),
(695, 1, 'sc_admin/cms_category', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:21:21', '2022-01-27 06:21:21'),
(696, 1, 'sc_admin/store_info', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:27:33', '2022-01-27 06:27:33'),
(697, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:27:36', '2022-01-27 06:27:36'),
(698, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643264870528\"}', '2022-01-27 06:27:37', '2022-01-27 06:27:37'),
(699, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643264870527\"}', '2022-01-27 06:27:37', '2022-01-27 06:27:37'),
(700, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643264870529\"}', '2022-01-27 06:27:37', '2022-01-27 06:27:37'),
(701, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:29:57', '2022-01-27 06:29:57'),
(702, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265011559\"}', '2022-01-27 06:29:58', '2022-01-27 06:29:58'),
(703, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265011560\"}', '2022-01-27 06:29:58', '2022-01-27 06:29:58'),
(704, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643265011561\"}', '2022-01-27 06:29:58', '2022-01-27 06:29:58'),
(705, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"logo\",\"value\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/logo\\/logo-nhatrang.jpg\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:30:01', '2022-01-27 06:30:01'),
(706, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:30:21', '2022-01-27 06:30:21'),
(707, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265035549\"}', '2022-01-27 06:30:22', '2022-01-27 06:30:22'),
(708, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265035548\"}', '2022-01-27 06:30:22', '2022-01-27 06:30:22'),
(709, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643265035550\"}', '2022-01-27 06:30:22', '2022-01-27 06:30:22'),
(710, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:30:45', '2022-01-27 06:30:45'),
(711, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265059840\"}', '2022-01-27 06:30:46', '2022-01-27 06:30:46'),
(712, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265059841\"}', '2022-01-27 06:30:46', '2022-01-27 06:30:46'),
(713, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643265059842\"}', '2022-01-27 06:30:46', '2022-01-27 06:30:46'),
(714, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:31:05', '2022-01-27 06:31:05'),
(715, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265079746\"}', '2022-01-27 06:31:06', '2022-01-27 06:31:06'),
(716, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265079747\"}', '2022-01-27 06:31:06', '2022-01-27 06:31:06'),
(717, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643265079748\"}', '2022-01-27 06:31:06', '2022-01-27 06:31:06'),
(718, 1, 'sc_admin/uploads/upload', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:31:15', '2022-01-27 06:31:15'),
(719, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1643265079749\"}', '2022-01-27 06:31:15', '2022-01-27 06:31:15'),
(720, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643265079750\"}', '2022-01-27 06:31:15', '2022-01-27 06:31:15'),
(721, 1, 'sc_admin/uploads/delete', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"items\":[\"logo.PNG\"],\"_\":\"1643265079751\"}', '2022-01-27 06:31:28', '2022-01-27 06:31:28'),
(722, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1643265079752\"}', '2022-01-27 06:31:28', '2022-01-27 06:31:28'),
(723, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643265079753\"}', '2022-01-27 06:31:29', '2022-01-27 06:31:29'),
(724, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"logo\",\"value\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/logo\\/Logo_AAP__1_-1-removebg-preview.png\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:31:34', '2022-01-27 06:31:34'),
(725, 1, 'sc_admin/uploads', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-27 06:31:36', '2022-01-27 06:31:36'),
(726, 1, 'sc_admin/uploads/folders', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265110972\"}', '2022-01-27 06:31:37', '2022-01-27 06:31:37'),
(727, 1, 'sc_admin/uploads/errors', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1643265110973\"}', '2022-01-27 06:31:37', '2022-01-27 06:31:37'),
(728, 1, 'sc_admin/uploads/jsonitems', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"_\":\"1643265110974\"}', '2022-01-27 06:31:37', '2022-01-27 06:31:37'),
(729, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"logofooter\",\"value\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/logo\\/Logo_AAP__1_-1-removebg-preview.png\",\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:31:39', '2022-01-27 06:31:39'),
(730, 1, 'sc_admin', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:45:32', '2022-01-27 06:45:32'),
(731, 1, 'sc_admin/store_info', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:47:44', '2022-01-27 06:47:44'),
(732, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Ch\\u00e0o m\\u1eebng b\\u1ea1n \\u0111\\u00ean v\\u1edbi Anh An Ph\\u00fa\",\"pk\":null,\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:48:11', '2022-01-27 06:48:11'),
(733, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"description__vi\",\"value\":\"D\\u1ecbch v\\u1ee5 AAP g\\u1ed3m s\\u1ea3n xu\\u1ea5t, thi c\\u00f4ng \\u0111\\u1ed3 g\\u1ed7 n\\u1ed9i th\\u1ea5t, \\u0111\\u1ed3 g\\u1ed7 ngo\\u00e0i tr\\u1eddi, cho c\\u00e1c d\\u1ef1 \\u00e1n, bi\\u1ec7t th\\u1ef1, c\\u0103n h\\u1ed9, ...\",\"pk\":null,\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:48:46', '2022-01-27 06:48:46'),
(734, 1, 'sc_admin/store_info/update_info', 'POST', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"email\",\"value\":\"anhanphu@gmail.com\",\"pk\":null,\"_token\":\"ZWCdKa15t6pLgUhPRtIUe2mJDtdVrIeZlRtIc9jD\"}', '2022-01-27 06:49:02', '2022-01-27 06:49:02'),
(735, 1, 'sc_admin/block_content', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:53:14', '2022-01-27 06:53:14'),
(736, 1, 'sc_admin/api_connection', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:56:28', '2022-01-27 06:56:28'),
(737, 1, 'sc_admin/block_content', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:56:42', '2022-01-27 06:56:42'),
(738, 1, 'sc_admin/link', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:56:48', '2022-01-27 06:56:48'),
(739, 1, 'sc_admin/link/create', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:57:06', '2022-01-27 06:57:06'),
(740, 1, 'sc_admin/supplier', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:58:06', '2022-01-27 06:58:06'),
(741, 1, 'sc_admin/supplier/edit/2', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:58:09', '2022-01-27 06:58:09'),
(742, 1, 'sc_admin/supplier/edit/1', 'GET', '42.112.48.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:58:15', '2022-01-27 06:58:15'),
(743, 1, 'sc_admin/supplier', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:58:45', '2022-01-27 06:58:45'),
(744, 1, 'sc_admin/supplier/edit/1', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:58:45', '2022-01-27 06:58:45'),
(745, 1, 'sc_admin/supplier/edit/2', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:59:09', '2022-01-27 06:59:09'),
(746, 1, 'sc_admin/supplier/edit/1', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 06:59:22', '2022-01-27 06:59:22'),
(747, 1, 'sc_admin/brand', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:00:19', '2022-01-27 07:00:19');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(748, 1, 'sc_admin/supplier', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:00:28', '2022-01-27 07:00:28'),
(749, 1, 'sc_admin/supplier/edit/2', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:00:52', '2022-01-27 07:00:52'),
(750, 1, 'sc_admin/supplier/edit/1', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:00:52', '2022-01-27 07:00:52'),
(751, 1, 'sc_admin/banner', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:00:55', '2022-01-27 07:00:55'),
(752, 1, 'sc_admin/block_content', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:01:32', '2022-01-27 07:01:32'),
(753, 1, 'sc_admin/menu', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:01:40', '2022-01-27 07:01:40'),
(754, 1, 'sc_admin/block_content/edit/4', 'GET', '93.115.28.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-01-27 07:01:50', '2022-01-27 07:01:50'),
(755, 1, 'sc_admin', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:54:29', '2022-02-07 08:54:29'),
(756, 1, 'sc_admin/setting', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:55:22', '2022-02-07 08:55:22'),
(757, 1, 'sc_admin/menu', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:55:51', '2022-02-07 08:55:51'),
(758, 1, 'sc_admin/store_info', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:56:13', '2022-02-07 08:56:13'),
(759, 1, 'sc_admin/url_config', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:56:26', '2022-02-07 08:56:26'),
(760, 1, 'sc_admin/store_info', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:56:32', '2022-02-07 08:56:32'),
(761, 1, 'sc_admin/maintain', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:56:36', '2022-02-07 08:56:36'),
(762, 1, 'sc_admin/url_config', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:57:52', '2022-02-07 08:57:52'),
(763, 1, 'sc_admin/menu', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:58:08', '2022-02-07 08:58:08'),
(764, 1, 'sc_admin/block_content', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:58:20', '2022-02-07 08:58:20'),
(765, 1, 'sc_admin/link', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:58:23', '2022-02-07 08:58:23'),
(766, 1, 'sc_admin/link/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 08:58:50', '2022-02-07 08:58:50'),
(767, 1, 'sc_admin/url_config', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 09:08:11', '2022-02-07 09:08:11'),
(768, 1, 'sc_admin/link', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 09:08:52', '2022-02-07 09:08:52'),
(769, 1, 'sc_admin/banner', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 09:59:39', '2022-02-07 09:59:39'),
(770, 1, 'sc_admin/news', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 09:59:41', '2022-02-07 09:59:41'),
(771, 1, 'sc_admin/store_info', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 10:04:26', '2022-02-07 10:04:26'),
(772, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 10:06:29', '2022-02-07 10:06:29'),
(773, 1, 'sc_admin/product/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 10:06:46', '2022-02-07 10:06:46'),
(774, 1, 'sc_admin/page', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 10:26:15', '2022-02-07 10:26:15'),
(775, 1, 'sc_admin/page/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 10:26:17', '2022-02-07 10:26:17'),
(776, 1, 'sc_admin/page/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p>Ch&uacute;ng t&ocirc;i \\u0111\\u01b0\\u1ee3c x&acirc;y d\\u1ef1ng d\\u1ef1a tr&ecirc;n t&igrave;nh y&ecirc;u, \\u0111am m&ecirc; c\\u1ee7a t&ocirc;i \\u0111\\u1ed1i v\\u1edbi ngh\\u1ec1 m\\u1ed9c v&agrave; khao kh&aacute;t mang nh\\u1eefng s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t \\u0111\\u1eb9p c\\u1ee7a m&igrave;nh \\u0111\\u1ebfn v\\u1edbi kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u.<\\/p>\\r\\n\\r\\n<p>C\\u1ea3 1 qu&aacute; tr&igrave;nh t\\u1eeb 1 ng\\u01b0\\u1eddi th\\u1ee3 ph\\u1ee5 r\\u1ed3i \\u0111\\u01b0\\u1ee3c l&agrave;m th\\u1ee3 m\\u1ed9c ch&iacute;nh, t\\u1ef1 t\\u1ea1o ra cho m&igrave;nh 1 ph&acirc;n x\\u01b0\\u1edfng nh\\u1ecf v&agrave; hi\\u1ec7n t\\u1ea1i ch&uacute;ng t&ocirc;i \\u0111&atilde; l&agrave; 1 trong nh\\u1eefng c&ocirc;ng ty c&oacute; d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf v&agrave; thi c&ocirc;ng n\\u1ed9i th\\u1ea5t uy t&iacute;n ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u1edbi gi&aacute; t\\u1ed1t nh\\u1ea5t v\\u1edbi s\\u1ee9 m\\u1ec7nh &ldquo; \\u0111em \\u0111\\u1ebfn cho kh&aacute;ch h&agrave;ng kh&ocirc;ng gian n\\u1ed9i th\\u1ea5t ho&agrave;n h\\u1ea3o&rdquo;.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-800x600.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-800x600.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-768x576.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-24x18.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-36x27.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-48x36.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-600x450.jpg 600w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595.jpg 960w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Ch&uacute;ng t&ocirc;i lu&ocirc;n n\\u1ed7 l\\u1ef1c \\u0111\\u1ec3 t\\u1ea1o ra kh&ocirc;ng gian \\u0111\\u1eb9p cho kh&aacute;ch h&agrave;ng theo nhi\\u1ec1u gam m&agrave;u s\\u1eafc<\\/em><\\/p>\\r\\n\\r\\n<p><strong>NGU\\u1ed2N NH&Acirc;N L\\u1ef0C V\\u1eeeNG M\\u1ea0NH<\\/strong><\\/p>\\r\\n\\r\\n<p>Ch&uacute;ng t&ocirc;i c&oacute; \\u0111\\u1ed9i ng\\u0169 c&ocirc;ng nh&acirc;n vi&ecirc;n tu\\u1ed5i c&ograve;n tr\\u1ebb nh\\u01b0ng c&oacute; nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m trong ngh\\u1ec1. \\u0110\\u1ed9i thi\\u1ebft k\\u1ebf tr\\u1ebb trung, s&aacute;ng t\\u1ea1o, lu&ocirc;n \\u0111\\u1ea7y \\u1eafp &yacute; t\\u01b0\\u1edfng. Th\\u1ee3 m\\u1ed9c tay ngh\\u1ec1 gi\\u1ecfi.<\\/p>\\r\\n\\r\\n<p>Trong su\\u1ed1t 14 n\\u0103m qua, ch&uacute;ng t&ocirc;i kh&ocirc;ng ng\\u1eebng n\\u1ed7 l\\u1ef1c \\u0111\\u1ec3 mang \\u0111\\u1ebfn cho kh&aacute;ch h&agrave;ng nhi\\u1ec1u gi&aacute; tr\\u1ecb b\\u1eb1ng c&aacute;ch c\\u1ea3i thi\\u1ec7n ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m\\/ d\\u1ecbch v\\u1ee5 l&ecirc;n t\\u1eebng ng&agrave;y. Ch&iacute;nh v&igrave; v\\u1eady, b\\u1ea1n s\\u1ebd nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u&nbsp;<strong>l\\u1ee3i &iacute;ch khi \\u0111\\u1ebfn v\\u1edbi d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf thi c&ocirc;ng t\\u1ee7 b\\u1ebfp c\\u1ee7a ch&uacute;ng t&ocirc;i<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash; Ch&uacute;ng t&ocirc;i mi\\u1ec5n ph&iacute; thi\\u1ebft k\\u1ebf cho b\\u1ea1n khi thi c&ocirc;ng n\\u1ed9i th\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>&ndash; Ch&uacute;ng t&ocirc;i c&oacute; x\\u01b0\\u1edfng s\\u1ea3n xu\\u1ea5t tr\\u1ef1c ti\\u1ebfp, v&igrave; v\\u1eady m&agrave; b&aacute;o gi&aacute; ch&uacute;ng t&ocirc;i \\u0111\\u01b0a ra c&oacute; l\\u1ebd kh&ocirc;ng ph\\u1ea3i l&agrave; r\\u1ebb nh\\u1ea5t nh\\u01b0ng s\\u1ebd l&agrave; gi&aacute; t\\u1ed1t nh\\u1ea5t so v\\u1edbi c&aacute;c s\\u1ea3n ph\\u1ea9m\\/d\\u1ecbch v\\u1ee5 c&ugrave;ng ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>&ndash; Ch&uacute;ng t&ocirc;i gi&uacute;p b\\u1ea1n ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u chi ph&iacute; trong qu&aacute; tr&igrave;nh ho&agrave;n thi\\u1ec7n.<\\/p>\\r\\n\\r\\n<p>&ndash; B\\u1ea1n s\\u1ebd c\\u1ea3m nh\\u1eadn \\u0111\\u01b0\\u1ee3c d\\u1ecbch v\\u1ee5 ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng t\\u1ed1t nh\\u1ea5t t\\u1eeb tr\\u01b0\\u1edbc \\u0111\\u1ebfn gi\\u1edd, ch&uacute;ng t&ocirc;i t\\u1ef1 tin m&igrave;nh l&agrave; \\u0111\\u01a1n v\\u1ecb &ldquo; b&aacute;n h&agrave;ng&rdquo; chi\\u1ec1u kh&aacute;ch nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><strong>TH&Agrave;NH QU\\u1ea2 \\u0110\\u1ea0T \\u0110\\u01af\\u1ee2C<\\/strong><\\/p>\\r\\n\\r\\n<p>Ch&uacute;ng t&ocirc;i nh\\u1eadn h&agrave;ng tr\\u0103m c&ocirc;ng tr&igrave;nh n\\u1ed9i th\\u1ea5t m\\u1ed7i n\\u0103m. Nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 tin t\\u01b0\\u1edfng v&agrave; \\u1ee7ng h\\u1ed9 c\\u1ee7a nhi\\u1ec1u kh&aacute;ch h&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"450\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-800x450.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-800x450.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-768x432.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-24x14.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-36x20.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-48x27.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-600x338.jpg 600w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n.jpg 960w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><em>M\\u1ed9t s\\u1ed1 h&igrave;nh \\u1ea3nh ch&uacute;ng t&ocirc;i \\u0111&atilde; ho&agrave;n thi\\u1ec7n cho kh&aacute;ch h&agrave;ng<\\/em><\\/p>\\r\\n\\r\\n<p><strong>CHI\\u1ebeN L\\u01af\\u1ee2C PH&Aacute;T TRI\\u1ec2N L&Acirc;U D&Agrave;I&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>1.Ph\\u01b0\\u01a1ng h\\u01b0\\u1edbng ph&aacute;t tri\\u1ec3n h\\u01b0\\u1edbng t\\u1edbi<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;X&acirc;y d\\u1ef1ng ph&aacute;t huy truy\\u1ec1n th\\u1ed1ng t\\u1ed1t \\u0111\\u1eb9p c\\u1ee7a c&ocirc;ng ty v&agrave; m&ocirc;i tr\\u01b0\\u1eddng l&agrave;m vi\\u1ec7c v\\u0103n minh.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;Lu&ocirc;n t&igrave;m t&ograve;i, nghi&ecirc;n c\\u1ee9u ,l\\u1eafng nghe &yacute; ki\\u1ebfn c\\u1ee7a kh&aacute;ch h&agrave;ng v&agrave; kh&ocirc;ng ng\\u1eebng ph&aacute;t tri\\u1ec3n nh\\u1eb1m \\u0111&aacute;p \\u1ee9ng nhu c\\u1ea7u t\\u1ed1t nh\\u1ea5t cho kh&aacute;ch h&agrave;ng.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp; \\u0110&agrave;o t\\u1ea1o, b\\u1ed3i d\\u01b0\\u1ee1ng ngu\\u1ed3n nh&acirc;n l\\u1ef1c v&agrave; n&acirc;ng cao tay ngh\\u1ec1.<\\/p>\\r\\n\\r\\n<p><strong>2.\\u0110\\u1ed1i v\\u1edbi nh&acirc;n vi&ecirc;n<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;S\\u1eafp x\\u1ebfp v&agrave; b\\u1ed1 tr&iacute; l&agrave;m vi\\u1ec7c h\\u1ee3p l&yacute;, t&igrave;m ng\\u01b0\\u1eddi c&oacute; n\\u0103ng l\\u1ef1c t\\u01b0\\u01a1ng x\\u1ee9ng v\\u1edbi v\\u1ecb tr&iacute; \\u0111\\u1ea3m nhi\\u1ec7m.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;Ch\\u1ee7 \\u0111\\u1ed9ng th\\u1ef1c hi\\u1ec7n c&ocirc;ng t&aacute;c \\u0111&agrave;o t\\u1ea1o, b\\u1ed3i d\\u01b0\\u1ee1ng n\\u0103ng l\\u1ef1c cho c&aacute;n b\\u1ed9 c&ocirc;ng nh&acirc;n vi&ecirc;n \\u0111\\u1ec3 n&acirc;ng cao tr&igrave;nh \\u0111\\u1ed9 ki\\u1ebfn th\\u1ee9c chuy&ecirc;n m&ocirc;n c\\u1ee7a c&aacute;n b\\u1ed9 v&agrave; tay ngh\\u1ec1 cho c&ocirc;ng nh&acirc;n \\u0111\\u1ec3 h\\u1ecd c&oacute; th\\u1ec3 ti\\u1ebfp c\\u1eadn v&agrave; s\\u1eed d\\u1ee5ng \\u0111\\u01b0\\u1ee3c m&aacute;y m&oacute;c hi\\u1ec7n \\u0111\\u1ea1i, s\\u1ea3n xu\\u1ea5t ra nh\\u1eefng s\\u1ea3n ph\\u1ea9m \\u0111\\u1ea1t ch\\u1ea5t l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;X&acirc;y d\\u1ef1ng \\u0111\\u1ecbnh m\\u1ee9c lao \\u0111\\u1ed9ng v&agrave; c&aacute;c c\\u01a1 ch\\u1ebf, ch&iacute;nh s&aacute;ch v\\u1ec1 ti\\u1ec1n l\\u01b0\\u01a1ng, ti\\u1ec1n th\\u01b0\\u1edfng ph&ugrave; h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed9ng vi&ecirc;n \\u0111\\u01b0\\u1ee3c nh\\u1eefng lao \\u0111\\u1ed9ng t&iacute;ch c\\u1ef1c, c&oacute; tinh th\\u1ea7n tr&aacute;ch nhi\\u1ec7m v\\u1edbi c&ocirc;ng vi\\u1ec7c.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;Quan t&acirc;m \\u0111\\u1ebfn \\u0111\\u1eddi s\\u1ed1ng tinh th\\u1ea7n cho CBCNV qua c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng nh\\u01b0 th\\u01b0\\u1edfng v&agrave;o c&aacute;c ng&agrave;y l\\u1ec5 t\\u1ebft, ngh\\u1ec9 m&aacute;t, th\\u0103m h\\u1ecfi, \\u0111\\u1ed9ng vi&ecirc;n,&hellip;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-800x600.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-800x600.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-768x576.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-24x18.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-36x27.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-48x36.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-600x450.jpg 600w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o.jpg 1136w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>3.\\u0110\\u1ed1i v\\u1edbi s\\u1ea3n ph\\u1ea9m &ndash; D\\u1ecbch v\\u1ee5:<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;T\\u1eadp trung c\\u1ea3i ti\\u1ebfn c&aacute;c kh&acirc;u s\\u1ea3n xu\\u1ea5t, ch\\u1ea5t l\\u01b0\\u1ee3ng nguy&ecirc;n v\\u1eadt li\\u1ec7u \\u0111\\u1ea7u v&agrave;o.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;Ph\\u01b0\\u01a1ng ch&acirc;m l&agrave;m vi\\u1ec7c: Mang nh\\u1eefng s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t th&ocirc;ng minh c\\u1ee7a ng\\u01b0\\u1eddi Vi\\u1ec7t t\\u1edbi tay ng\\u01b0\\u1eddi Vi\\u1ec7t .Ti&ecirc;u chu\\u1ea9n &ndash;ch\\u1ea5t l\\u01b0\\u1ee3ng &ndash;th&ocirc;ng minh \\u0111&oacute; l&agrave; nh\\u1eefng g&igrave; ch&uacute;ng t&ocirc;i \\u0111&atilde; c\\u1ed1 g\\u1eafng ,n\\u1ed7 l\\u1ef1c t\\u1eebng ng&agrave;y \\u0111\\u1ec3 mang t\\u1edbi cho kh&aacute;ch h&agrave;ng c\\u1ee7a m&igrave;nh<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;Kh&ocirc;ng ng\\u1eebng n&acirc;ng cao ch\\u1ea5t l\\u01b0\\u1ee3ng v&agrave; t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ee7a s\\u1ea3n ph\\u1ea9m, n&acirc;ng cao n\\u0103ng l\\u1ef1c c\\u1ea1nh tranh c\\u1ee7a s\\u1ea3n ph\\u1ea9m m\\u1ed9t c&aacute;ch to&agrave;n di\\u1ec7n.<\\/p>\\r\\n\\r\\n<p><strong>4.\\u0110\\u1ed1i v\\u1edbi kh&aacute;ch h&agrave;ng:<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;Th\\u1ef1c hi\\u1ec7n t\\u1ed1t d\\u1ecbch v\\u1ee5 ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;X&acirc;y d\\u1ef1ng ch&iacute;nh s&aacute;ch \\u0111&atilde;i ng\\u1ed9 cho kh&aacute;ch h&agrave;ng<\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"dD3Ha5rDn4mWDeYt707CFgYL1tc9i7VsK8bU1H3q\"}', '2022-02-07 10:33:17', '2022-02-07 10:33:17'),
(777, 1, 'sc_admin/page', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-07 10:33:18', '2022-02-07 10:33:18'),
(778, 1, 'sc_admin/page/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 01:36:43', '2022-02-08 01:36:43'),
(779, 1, 'sc_admin/page/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p>Ch&uacute;ng t&ocirc;i \\u0111\\u01b0\\u1ee3c x&acirc;y d\\u1ef1ng d\\u1ef1a tr&ecirc;n t&igrave;nh y&ecirc;u, \\u0111am m&ecirc; c\\u1ee7a t&ocirc;i \\u0111\\u1ed1i v\\u1edbi ngh\\u1ec1 m\\u1ed9c v&agrave; khao kh&aacute;t mang nh\\u1eefng s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t \\u0111\\u1eb9p c\\u1ee7a m&igrave;nh \\u0111\\u1ebfn v\\u1edbi kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u.<\\/p>\\r\\n\\r\\n<p>C\\u1ea3 1 qu&aacute; tr&igrave;nh t\\u1eeb 1 ng\\u01b0\\u1eddi th\\u1ee3 ph\\u1ee5 r\\u1ed3i \\u0111\\u01b0\\u1ee3c l&agrave;m th\\u1ee3 m\\u1ed9c ch&iacute;nh, t\\u1ef1 t\\u1ea1o ra cho m&igrave;nh 1 ph&acirc;n x\\u01b0\\u1edfng nh\\u1ecf v&agrave; hi\\u1ec7n t\\u1ea1i ch&uacute;ng t&ocirc;i \\u0111&atilde; l&agrave; 1 trong nh\\u1eefng c&ocirc;ng ty c&oacute; d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf v&agrave; thi c&ocirc;ng n\\u1ed9i th\\u1ea5t uy t&iacute;n ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u1edbi gi&aacute; t\\u1ed1t nh\\u1ea5t v\\u1edbi s\\u1ee9 m\\u1ec7nh &ldquo; \\u0111em \\u0111\\u1ebfn cho kh&aacute;ch h&agrave;ng kh&ocirc;ng gian n\\u1ed9i th\\u1ea5t ho&agrave;n h\\u1ea3o&rdquo;.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-800x600.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-800x600.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-768x576.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-24x18.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-36x27.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-48x36.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595-600x450.jpg 600w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/oca1557628595.jpg 960w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Ch&uacute;ng t&ocirc;i lu&ocirc;n n\\u1ed7 l\\u1ef1c \\u0111\\u1ec3 t\\u1ea1o ra kh&ocirc;ng gian \\u0111\\u1eb9p cho kh&aacute;ch h&agrave;ng theo nhi\\u1ec1u gam m&agrave;u s\\u1eafc<\\/em><\\/p>\\r\\n\\r\\n<p><strong>NGU\\u1ed2N NH&Acirc;N L\\u1ef0C V\\u1eeeNG M\\u1ea0NH<\\/strong><\\/p>\\r\\n\\r\\n<p>Ch&uacute;ng t&ocirc;i c&oacute; \\u0111\\u1ed9i ng\\u0169 c&ocirc;ng nh&acirc;n vi&ecirc;n tu\\u1ed5i c&ograve;n tr\\u1ebb nh\\u01b0ng c&oacute; nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m trong ngh\\u1ec1. \\u0110\\u1ed9i thi\\u1ebft k\\u1ebf tr\\u1ebb trung, s&aacute;ng t\\u1ea1o, lu&ocirc;n \\u0111\\u1ea7y \\u1eafp &yacute; t\\u01b0\\u1edfng. Th\\u1ee3 m\\u1ed9c tay ngh\\u1ec1 gi\\u1ecfi.<\\/p>\\r\\n\\r\\n<p>Trong su\\u1ed1t 14 n\\u0103m qua, ch&uacute;ng t&ocirc;i kh&ocirc;ng ng\\u1eebng n\\u1ed7 l\\u1ef1c \\u0111\\u1ec3 mang \\u0111\\u1ebfn cho kh&aacute;ch h&agrave;ng nhi\\u1ec1u gi&aacute; tr\\u1ecb b\\u1eb1ng c&aacute;ch c\\u1ea3i thi\\u1ec7n ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m\\/ d\\u1ecbch v\\u1ee5 l&ecirc;n t\\u1eebng ng&agrave;y. Ch&iacute;nh v&igrave; v\\u1eady, b\\u1ea1n s\\u1ebd nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u&nbsp;<strong>l\\u1ee3i &iacute;ch khi \\u0111\\u1ebfn v\\u1edbi d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf thi c&ocirc;ng t\\u1ee7 b\\u1ebfp c\\u1ee7a ch&uacute;ng t&ocirc;i<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash; Ch&uacute;ng t&ocirc;i mi\\u1ec5n ph&iacute; thi\\u1ebft k\\u1ebf cho b\\u1ea1n khi thi c&ocirc;ng n\\u1ed9i th\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>&ndash; Ch&uacute;ng t&ocirc;i c&oacute; x\\u01b0\\u1edfng s\\u1ea3n xu\\u1ea5t tr\\u1ef1c ti\\u1ebfp, v&igrave; v\\u1eady m&agrave; b&aacute;o gi&aacute; ch&uacute;ng t&ocirc;i \\u0111\\u01b0a ra c&oacute; l\\u1ebd kh&ocirc;ng ph\\u1ea3i l&agrave; r\\u1ebb nh\\u1ea5t nh\\u01b0ng s\\u1ebd l&agrave; gi&aacute; t\\u1ed1t nh\\u1ea5t so v\\u1edbi c&aacute;c s\\u1ea3n ph\\u1ea9m\\/d\\u1ecbch v\\u1ee5 c&ugrave;ng ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>&ndash; Ch&uacute;ng t&ocirc;i gi&uacute;p b\\u1ea1n ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u chi ph&iacute; trong qu&aacute; tr&igrave;nh ho&agrave;n thi\\u1ec7n.<\\/p>\\r\\n\\r\\n<p>&ndash; B\\u1ea1n s\\u1ebd c\\u1ea3m nh\\u1eadn \\u0111\\u01b0\\u1ee3c d\\u1ecbch v\\u1ee5 ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng t\\u1ed1t nh\\u1ea5t t\\u1eeb tr\\u01b0\\u1edbc \\u0111\\u1ebfn gi\\u1edd, ch&uacute;ng t&ocirc;i t\\u1ef1 tin m&igrave;nh l&agrave; \\u0111\\u01a1n v\\u1ecb &ldquo; b&aacute;n h&agrave;ng&rdquo; chi\\u1ec1u kh&aacute;ch nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><strong>TH&Agrave;NH QU\\u1ea2 \\u0110\\u1ea0T \\u0110\\u01af\\u1ee2C<\\/strong><\\/p>\\r\\n\\r\\n<p>Ch&uacute;ng t&ocirc;i nh\\u1eadn h&agrave;ng tr\\u0103m c&ocirc;ng tr&igrave;nh n\\u1ed9i th\\u1ea5t m\\u1ed7i n\\u0103m. Nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 tin t\\u01b0\\u1edfng v&agrave; \\u1ee7ng h\\u1ed9 c\\u1ee7a nhi\\u1ec1u kh&aacute;ch h&agrave;ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" height=\\\"450\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-800x450.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-800x450.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-768x432.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-24x14.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-36x20.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-48x27.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n-600x338.jpg 600w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/57536406_1237541593076959_2774167188062339072_n.jpg 960w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><em>M\\u1ed9t s\\u1ed1 h&igrave;nh \\u1ea3nh ch&uacute;ng t&ocirc;i \\u0111&atilde; ho&agrave;n thi\\u1ec7n cho kh&aacute;ch h&agrave;ng<\\/em><\\/p>\\r\\n\\r\\n<p><strong>CHI\\u1ebeN L\\u01af\\u1ee2C PH&Aacute;T TRI\\u1ec2N L&Acirc;U D&Agrave;I&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>1.Ph\\u01b0\\u01a1ng h\\u01b0\\u1edbng ph&aacute;t tri\\u1ec3n h\\u01b0\\u1edbng t\\u1edbi<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;X&acirc;y d\\u1ef1ng ph&aacute;t huy truy\\u1ec1n th\\u1ed1ng t\\u1ed1t \\u0111\\u1eb9p c\\u1ee7a c&ocirc;ng ty v&agrave; m&ocirc;i tr\\u01b0\\u1eddng l&agrave;m vi\\u1ec7c v\\u0103n minh.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;Lu&ocirc;n t&igrave;m t&ograve;i, nghi&ecirc;n c\\u1ee9u ,l\\u1eafng nghe &yacute; ki\\u1ebfn c\\u1ee7a kh&aacute;ch h&agrave;ng v&agrave; kh&ocirc;ng ng\\u1eebng ph&aacute;t tri\\u1ec3n nh\\u1eb1m \\u0111&aacute;p \\u1ee9ng nhu c\\u1ea7u t\\u1ed1t nh\\u1ea5t cho kh&aacute;ch h&agrave;ng.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp; \\u0110&agrave;o t\\u1ea1o, b\\u1ed3i d\\u01b0\\u1ee1ng ngu\\u1ed3n nh&acirc;n l\\u1ef1c v&agrave; n&acirc;ng cao tay ngh\\u1ec1.<\\/p>\\r\\n\\r\\n<p><strong>2.\\u0110\\u1ed1i v\\u1edbi nh&acirc;n vi&ecirc;n<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;S\\u1eafp x\\u1ebfp v&agrave; b\\u1ed1 tr&iacute; l&agrave;m vi\\u1ec7c h\\u1ee3p l&yacute;, t&igrave;m ng\\u01b0\\u1eddi c&oacute; n\\u0103ng l\\u1ef1c t\\u01b0\\u01a1ng x\\u1ee9ng v\\u1edbi v\\u1ecb tr&iacute; \\u0111\\u1ea3m nhi\\u1ec7m.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;Ch\\u1ee7 \\u0111\\u1ed9ng th\\u1ef1c hi\\u1ec7n c&ocirc;ng t&aacute;c \\u0111&agrave;o t\\u1ea1o, b\\u1ed3i d\\u01b0\\u1ee1ng n\\u0103ng l\\u1ef1c cho c&aacute;n b\\u1ed9 c&ocirc;ng nh&acirc;n vi&ecirc;n \\u0111\\u1ec3 n&acirc;ng cao tr&igrave;nh \\u0111\\u1ed9 ki\\u1ebfn th\\u1ee9c chuy&ecirc;n m&ocirc;n c\\u1ee7a c&aacute;n b\\u1ed9 v&agrave; tay ngh\\u1ec1 cho c&ocirc;ng nh&acirc;n \\u0111\\u1ec3 h\\u1ecd c&oacute; th\\u1ec3 ti\\u1ebfp c\\u1eadn v&agrave; s\\u1eed d\\u1ee5ng \\u0111\\u01b0\\u1ee3c m&aacute;y m&oacute;c hi\\u1ec7n \\u0111\\u1ea1i, s\\u1ea3n xu\\u1ea5t ra nh\\u1eefng s\\u1ea3n ph\\u1ea9m \\u0111\\u1ea1t ch\\u1ea5t l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;X&acirc;y d\\u1ef1ng \\u0111\\u1ecbnh m\\u1ee9c lao \\u0111\\u1ed9ng v&agrave; c&aacute;c c\\u01a1 ch\\u1ebf, ch&iacute;nh s&aacute;ch v\\u1ec1 ti\\u1ec1n l\\u01b0\\u01a1ng, ti\\u1ec1n th\\u01b0\\u1edfng ph&ugrave; h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed9ng vi&ecirc;n \\u0111\\u01b0\\u1ee3c nh\\u1eefng lao \\u0111\\u1ed9ng t&iacute;ch c\\u1ef1c, c&oacute; tinh th\\u1ea7n tr&aacute;ch nhi\\u1ec7m v\\u1edbi c&ocirc;ng vi\\u1ec7c.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;Quan t&acirc;m \\u0111\\u1ebfn \\u0111\\u1eddi s\\u1ed1ng tinh th\\u1ea7n cho CBCNV qua c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng nh\\u01b0 th\\u01b0\\u1edfng v&agrave;o c&aacute;c ng&agrave;y l\\u1ec5 t\\u1ebft, ngh\\u1ec9 m&aacute;t, th\\u0103m h\\u1ecfi, \\u0111\\u1ed9ng vi&ecirc;n,&hellip;<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-800x600.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-800x600.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-768x576.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-24x18.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-36x27.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-48x36.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o-600x450.jpg 600w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/58379741_1241329009364884_7532771603755565056_o.jpg 1136w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>3.\\u0110\\u1ed1i v\\u1edbi s\\u1ea3n ph\\u1ea9m &ndash; D\\u1ecbch v\\u1ee5:<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;T\\u1eadp trung c\\u1ea3i ti\\u1ebfn c&aacute;c kh&acirc;u s\\u1ea3n xu\\u1ea5t, ch\\u1ea5t l\\u01b0\\u1ee3ng nguy&ecirc;n v\\u1eadt li\\u1ec7u \\u0111\\u1ea7u v&agrave;o.<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;&nbsp;Ph\\u01b0\\u01a1ng ch&acirc;m l&agrave;m vi\\u1ec7c: Mang nh\\u1eefng s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t th&ocirc;ng minh c\\u1ee7a ng\\u01b0\\u1eddi Vi\\u1ec7t t\\u1edbi tay ng\\u01b0\\u1eddi Vi\\u1ec7t .Ti&ecirc;u chu\\u1ea9n &ndash;ch\\u1ea5t l\\u01b0\\u1ee3ng &ndash;th&ocirc;ng minh \\u0111&oacute; l&agrave; nh\\u1eefng g&igrave; ch&uacute;ng t&ocirc;i \\u0111&atilde; c\\u1ed1 g\\u1eafng ,n\\u1ed7 l\\u1ef1c t\\u1eebng ng&agrave;y \\u0111\\u1ec3 mang t\\u1edbi cho kh&aacute;ch h&agrave;ng c\\u1ee7a m&igrave;nh<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;Kh&ocirc;ng ng\\u1eebng n&acirc;ng cao ch\\u1ea5t l\\u01b0\\u1ee3ng v&agrave; t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ee7a s\\u1ea3n ph\\u1ea9m, n&acirc;ng cao n\\u0103ng l\\u1ef1c c\\u1ea1nh tranh c\\u1ee7a s\\u1ea3n ph\\u1ea9m m\\u1ed9t c&aacute;ch to&agrave;n di\\u1ec7n.<\\/p>\\r\\n\\r\\n<p><strong>4.\\u0110\\u1ed1i v\\u1edbi kh&aacute;ch h&agrave;ng:<\\/strong><\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;Th\\u1ef1c hi\\u1ec7n t\\u1ed1t d\\u1ecbch v\\u1ee5 ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng<\\/p>\\r\\n\\r\\n<p>&ndash;&nbsp;X&acirc;y d\\u1ef1ng ch&iacute;nh s&aacute;ch \\u0111&atilde;i ng\\u1ed9 cho kh&aacute;ch h&agrave;ng<\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 01:36:57', '2022-02-08 01:36:57'),
(780, 1, 'sc_admin/page', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 01:36:57', '2022-02-08 01:36:57'),
(781, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:16:57', '2022-02-08 02:16:57'),
(782, 1, 'sc_admin/product/edit/2', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:17:19', '2022-02-08 02:17:19'),
(783, 1, 'sc_admin/product/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:26:08', '2022-02-08 02:26:08'),
(784, 1, 'sc_admin/news', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:30:45', '2022-02-08 02:30:45'),
(785, 1, 'sc_admin/news/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:30:50', '2022-02-08 02:30:50'),
(786, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"content\"}', '2022-02-08 02:32:11', '2022-02-08 02:32:11'),
(787, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1644287554136\"}', '2022-02-08 02:32:17', '2022-02-08 02:32:17'),
(788, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1644287554137\"}', '2022-02-08 02:32:17', '2022-02-08 02:32:17'),
(789, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"_\":\"1644287554138\"}', '2022-02-08 02:32:17', '2022-02-08 02:32:17'),
(790, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"content\"}', '2022-02-08 02:32:50', '2022-02-08 02:32:50'),
(791, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1644287588700\"}', '2022-02-08 02:32:51', '2022-02-08 02:32:51'),
(792, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1644287588701\"}', '2022-02-08 02:32:51', '2022-02-08 02:32:51'),
(793, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"_\":\"1644287588702\"}', '2022-02-08 02:32:51', '2022-02-08 02:32:51'),
(794, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:32:56', '2022-02-08 02:32:56'),
(795, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1644287588703\"}', '2022-02-08 02:32:57', '2022-02-08 02:32:57'),
(796, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"_\":\"1644287588704\"}', '2022-02-08 02:32:57', '2022-02-08 02:32:57'),
(797, 1, 'sc_admin/news/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"keyword\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"description\":\"Kh\\u00ed h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111\\u00ecnh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp, v\\u00ec v\\u1eady khi ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp t\\u1ed1t nh\\u1ea5t b\\u1ea1n n\\u00ean ch\\u1ecdn nh\\u1eefng d\\u00f2ng t\\u1ee7 b\\u1ebfp c\\u00f3 th\\u1ec3 ch\\u1ecbu \\u0111\\u1ef1ng \\u0111\\u01b0\\u1ee3c th\\u1eddi ti\\u1ebft n\\u1ed3m \\u1ea9m nh\\u01b0 t\\u1ee7 b\\u1ebfp Acrylic \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n t\\u1ed1i \\u01b0u nh\\u1ea5t c\\u1ee7a s\\u1ea3n ph\\u1ea9m.\",\"content\":\"<p><a href=\\\"https:\\/\\/noithatminhtam.com\\/tin-tuc\\/kha-nang-chiu-am-cua-tu-bep-acrylic\\/\\\"><img alt=\\\"\\\" height=\\\"495\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-768x475.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-24x15.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-36x22.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-48x30.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-600x371.jpg 600w\\\" width=\\\"800\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p>24<br \\/>\\r\\nTh6<\\/p>\\r\\n\\r\\n<p>Kh&iacute; h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111&igrave;nh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp, v&igrave; v\\u1eady khi ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp t\\u1ed1t nh\\u1ea5t b\\u1ea1n n&ecirc;n ch\\u1ecdn nh\\u1eefng d&ograve;ng t\\u1ee7 b\\u1ebfp c&oacute; th\\u1ec3 ch\\u1ecbu \\u0111\\u1ef1ng \\u0111\\u01b0\\u1ee3c th\\u1eddi ti\\u1ebft n\\u1ed3m \\u1ea9m nh\\u01b0&nbsp;t\\u1ee7 b\\u1ebfp Acrylic&nbsp;\\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n t\\u1ed1i \\u01b0u nh\\u1ea5t c\\u1ee7a s\\u1ea3n ph\\u1ea9m.<\\/p>\\r\\n\\r\\n<h2>NH\\u1eeeNG \\u0110\\u1eb6C \\u0110I\\u1ec2M C\\u1ee6A T\\u1ee6 B\\u1ebeP G\\u1ed6 C&Ocirc;NG NGHI\\u1ec6P<\\/h2>\\r\\n\\r\\n<p>Tr&ecirc;n th\\u1ef1c t\\u1ebf nh\\u1eefng&nbsp;<strong>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c d&ugrave;ng l&agrave;m t\\u1ee7 b\\u1ebfp ch&iacute;nh l&agrave; g\\u1ed7 MDF v&agrave; g\\u1ed7 MFC, \\u0111&acirc;y ch&iacute;nh l&agrave; lo\\u1ea1i g\\u1ed7 v&aacute;n &eacute;p t\\u01b0\\u01a1ng \\u0111\\u1ed1i ph\\u1ed5 bi\\u1ebfn \\u0111\\u01b0\\u1ee3c s\\u1ea3n xu\\u1ea5t tr&ecirc;n d&acirc;y chuy\\u1ec1n c&ocirc;ng ngh\\u1ec7 cao, \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u v&agrave;o Vi\\u1ec7t Nam \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf t\\u1ee7 b\\u1ebfp<\\/p>\\r\\n\\r\\n<p>C&aacute;c lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p l&agrave;m t\\u1ee7 b\\u1ebfp n&agrave;y \\u0111a ph\\u1ea7n \\u0111\\u1ec1u l&agrave; v\\u1ee5n g\\u1ed7 \\u0111\\u01b0\\u1ee3c tr\\u1ed9n l\\u1eabn v\\u1edbi keo v&agrave; \\u0111\\u01b0\\u1ee3c &eacute;p n&eacute;n b\\u1eb1ng m&aacute;y d\\u01b0\\u1edbi l\\u1ef1c n&eacute;n cao, t\\u1ea1o th&agrave;nh t\\u1eebng t\\u1ea5m g\\u1ed7 ch\\u1eafc ch\\u1eafn.<\\/p>\\r\\n\\r\\n<p>Trong \\u0111&oacute; c&aacute;c d&ograve;ng g\\u1ed7 MDF c&oacute; b\\u1ec1 m\\u1eb7t m\\u1ecbn h\\u01a1n nhi\\u1ec1u b\\u1edfi d\\u0103m g\\u1ed7 nh\\u1ecf m\\u1ecbn h\\u01a1n h\\u1eb3n, nh\\u1eefng lo\\u1ea1i g\\u1ed7 n&agrave;y c&oacute; \\u0111\\u1ed9 ch\\u1eafc ch\\u1eafn t\\u01b0\\u01a1ng \\u0111\\u1ed1i l\\u1edbn, khi c\\u1ea7m l&ecirc;n c\\u0169ng n\\u1eb7ng tay v&igrave; v\\u1eady \\u0111\\u01b0\\u1ee3c d&ugrave;ng nhi\\u1ec1u l&agrave;m th&ugrave;ng t\\u1ee7.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra c&aacute;c d&ograve;ng g\\u1ed7 MFC c&oacute; b\\u1ec1 m\\u1eb7t t\\u01b0\\u01a1ng \\u0111\\u1ed1i g\\u1ed3 g\\u1ec1, kh&ocirc;ng qu&aacute; nh\\u1eb5n nh\\u1ee5i b\\u1edfi d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c&oacute; d\\u0103m g\\u1ed7 to, v&igrave; v\\u1eady c&ograve;n \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; g\\u1ed7 v&aacute;n d\\u0103m, \\u0111&acirc;y c\\u0169ng l&agrave; lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p \\u0111\\u01b0\\u1ee3c &eacute;p ch\\u1eb7t l&agrave;m n&ecirc;n, nh\\u01b0ng nh\\u1eb9 h\\u01a1n h\\u1eb3n so v\\u1edbi g\\u1ed7 MDF v&igrave; th\\u1ebf c\\u0169ng \\u0111\\u01b0\\u1ee3c c&ugrave;ng \\u0111\\u1ec3 l&agrave;m c&aacute;nh t\\u1ee7<\\/p>\\r\\n\\r\\n<p>Hai lo\\u1ea1i g\\u1ed7 n&agrave;y \\u0111\\u1ec1u c&oacute; g\\u1ed7 l&otilde;i xanh c&oacute; \\u01b0u \\u0111i\\u1ec3m l&agrave; ch\\u1ecbu \\u0111\\u01b0\\u1ee3c \\u1ea9m cao, \\u0111\\u1ea3m b\\u1ea3o gi\\u1eef nguy&ecirc;n \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 b\\u1ec1n ch\\u1eafc c\\u1ee7a s\\u1ea3n ph\\u1ea9m, t\\u1eeb \\u0111&oacute; gi&uacute;p \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n c\\u1ee7a t\\u1ee7 b\\u1ebfp trong qu&aacute; tr&igrave;nh s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<h3>T&igrave;m hi\\u1ec3u t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/h3>\\r\\n\\r\\n<p><strong>T\\u1ee7 b\\u1ebfp Acrylic<\\/strong>&nbsp;l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p c&oacute; t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ef1c cao, v\\u01b0\\u1ee3t tr\\u1ed9i h\\u01a1n nhi\\u1ec1u so v\\u1edbi c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp kh&aacute;c.<\\/p>\\r\\n\\r\\n<p>H\\u1ea7u h\\u1ebft c&aacute;c d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u1ef1a ch\\u1ecdn d&ugrave;ng b\\u1ec1 m\\u1eb7t Laminate hay b\\u1ec1 m\\u1eb7t Acrylic \\u0111\\u1ec3 l&agrave;m b\\u1ec1 m\\u1eb7t t\\u1ee7 b\\u1ebfp, hai lo\\u1ea1i v\\u1eadt li\\u1ec7u n&agrave;y \\u0111\\u1ec1u c&oacute; m&agrave;u s\\u1eafc c\\u0169ng nh\\u01b0 ki\\u1ec3u v&acirc;n t\\u01b0\\u01a1ng \\u0111\\u1ed1i \\u0111a d\\u1ea1ng, t\\u1eeb \\u0111&oacute; mang l\\u1ea1i s\\u1ef1 l\\u1ef1a ch\\u1ecdn nhi\\u1ec1u h\\u01a1n h\\u1eb3n, ho&agrave;n to&agrave;n kh&ocirc;ng \\u0111\\u01a1n \\u0111i\\u1ec7u nh\\u01b0 c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp g\\u1ed7 t\\u1ef1 nhi&ecirc;n b&ecirc;n ngo&agrave;i.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c bi\\u1ec7t trong tr\\u01b0\\u1eddng h\\u1ee3p c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n c&oacute; \\u0111\\u1ed9 \\u1ea9m th\\u1ea5p cao th&igrave; vi\\u1ec7c s\\u1eed d\\u1ee5ng&nbsp;<em>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/em>&nbsp;l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn th&ocirc;ng minh, b\\u1edfi nh\\u1eefng d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y s\\u1ebd gi&uacute;p ph&ograve;ng ch\\u1ed1ng n\\u1ed3m \\u1ea9m v&agrave; kh&ocirc;ng kh&iacute; \\u1ea9m \\u01b0\\u1edbt trong c\\u0103n b\\u1ebfp, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t \\u0111\\u1ed1i h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lo\\u1ea1i g\\u1ed7 n&agrave;y c\\u0169ng c&oacute; kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u0111\\u1ef1ng nhi\\u1ec7t \\u0111\\u1ed9 kh&iacute; h\\u1eadu nhi\\u1ec7t \\u0111\\u1edbi n&oacute;ng \\u1ea9m, v&igrave; v\\u1eady khi d&ugrave;ng t\\u1ee7 b\\u1ebfp l&agrave; th&iacute;ch h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra \\u0111\\u1ed1i v\\u1edbi khoang ch\\u1eadu r\\u1eeda, b\\u1edfi v&igrave; vi\\u1ec7c ch\\u1ecbu n\\u01b0\\u1edbc cao n&ecirc;n d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c\\u0169ng c&oacute; th\\u1ec3 d&ugrave;ng \\u0111\\u1ec3 l&agrave;m khoang ch\\u1eadu r\\u1eeda \\u0111\\u01b0\\u1ee3c nh&eacute;.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp ch\\u1ea5t l\\u01b0\\u1ee3ng nh\\u1ea5t cho gia \\u0111&igrave;nh, kh&aacute;ch h&agrave;ng c\\u0169ng c&oacute; th\\u1ec3 tr\\u1ef1c ti\\u1ebfp li&ecirc;n h\\u1ec7 t\\u1edbi ch&uacute;ng t&ocirc;i \\u0111\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 t\\u01b0 v\\u1ea5n k\\u1ecbp th\\u1eddi nh\\u1ea5t, gi&uacute;p kh&aacute;ch h&agrave;ng ch\\u1ecdn \\u0111\\u01b0\\u1ee3c d&ograve;ng t\\u1ee7 b\\u1ebfp \\u01b0ng &yacute; v&agrave; ph&ugrave; h\\u1ee3p v\\u1edbi n\\u1ed9i th\\u1ea5t c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n.<\\/p>\"}},\"alias\":\"tra-thao-moc-8-loai-tot-cho-suc-khoe-ma-ban-nen-dung\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/content\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:33:03', '2022-02-08 02:33:03'),
(798, 1, 'sc_admin/news/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:33:03', '2022-02-08 02:33:03');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(799, 1, 'sc_admin/news/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"keyword\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"description\":\"Kh\\u00ed h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111\\u00ecnh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp\",\"content\":\"<p><a href=\\\"https:\\/\\/noithatminhtam.com\\/tin-tuc\\/kha-nang-chiu-am-cua-tu-bep-acrylic\\/\\\"><img alt=\\\"\\\" height=\\\"495\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-768x475.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-24x15.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-36x22.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-48x30.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-600x371.jpg 600w\\\" width=\\\"800\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p>24<br \\/>\\r\\nTh6<\\/p>\\r\\n\\r\\n<p>Kh&iacute; h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111&igrave;nh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp, v&igrave; v\\u1eady khi ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp t\\u1ed1t nh\\u1ea5t b\\u1ea1n n&ecirc;n ch\\u1ecdn nh\\u1eefng d&ograve;ng t\\u1ee7 b\\u1ebfp c&oacute; th\\u1ec3 ch\\u1ecbu \\u0111\\u1ef1ng \\u0111\\u01b0\\u1ee3c th\\u1eddi ti\\u1ebft n\\u1ed3m \\u1ea9m nh\\u01b0&nbsp;t\\u1ee7 b\\u1ebfp Acrylic&nbsp;\\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n t\\u1ed1i \\u01b0u nh\\u1ea5t c\\u1ee7a s\\u1ea3n ph\\u1ea9m.<\\/p>\\r\\n\\r\\n<h2>NH\\u1eeeNG \\u0110\\u1eb6C \\u0110I\\u1ec2M C\\u1ee6A T\\u1ee6 B\\u1ebeP G\\u1ed6 C&Ocirc;NG NGHI\\u1ec6P<\\/h2>\\r\\n\\r\\n<p>Tr&ecirc;n th\\u1ef1c t\\u1ebf nh\\u1eefng&nbsp;<strong>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c d&ugrave;ng l&agrave;m t\\u1ee7 b\\u1ebfp ch&iacute;nh l&agrave; g\\u1ed7 MDF v&agrave; g\\u1ed7 MFC, \\u0111&acirc;y ch&iacute;nh l&agrave; lo\\u1ea1i g\\u1ed7 v&aacute;n &eacute;p t\\u01b0\\u01a1ng \\u0111\\u1ed1i ph\\u1ed5 bi\\u1ebfn \\u0111\\u01b0\\u1ee3c s\\u1ea3n xu\\u1ea5t tr&ecirc;n d&acirc;y chuy\\u1ec1n c&ocirc;ng ngh\\u1ec7 cao, \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u v&agrave;o Vi\\u1ec7t Nam \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf t\\u1ee7 b\\u1ebfp<\\/p>\\r\\n\\r\\n<p>C&aacute;c lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p l&agrave;m t\\u1ee7 b\\u1ebfp n&agrave;y \\u0111a ph\\u1ea7n \\u0111\\u1ec1u l&agrave; v\\u1ee5n g\\u1ed7 \\u0111\\u01b0\\u1ee3c tr\\u1ed9n l\\u1eabn v\\u1edbi keo v&agrave; \\u0111\\u01b0\\u1ee3c &eacute;p n&eacute;n b\\u1eb1ng m&aacute;y d\\u01b0\\u1edbi l\\u1ef1c n&eacute;n cao, t\\u1ea1o th&agrave;nh t\\u1eebng t\\u1ea5m g\\u1ed7 ch\\u1eafc ch\\u1eafn.<\\/p>\\r\\n\\r\\n<p>Trong \\u0111&oacute; c&aacute;c d&ograve;ng g\\u1ed7 MDF c&oacute; b\\u1ec1 m\\u1eb7t m\\u1ecbn h\\u01a1n nhi\\u1ec1u b\\u1edfi d\\u0103m g\\u1ed7 nh\\u1ecf m\\u1ecbn h\\u01a1n h\\u1eb3n, nh\\u1eefng lo\\u1ea1i g\\u1ed7 n&agrave;y c&oacute; \\u0111\\u1ed9 ch\\u1eafc ch\\u1eafn t\\u01b0\\u01a1ng \\u0111\\u1ed1i l\\u1edbn, khi c\\u1ea7m l&ecirc;n c\\u0169ng n\\u1eb7ng tay v&igrave; v\\u1eady \\u0111\\u01b0\\u1ee3c d&ugrave;ng nhi\\u1ec1u l&agrave;m th&ugrave;ng t\\u1ee7.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra c&aacute;c d&ograve;ng g\\u1ed7 MFC c&oacute; b\\u1ec1 m\\u1eb7t t\\u01b0\\u01a1ng \\u0111\\u1ed1i g\\u1ed3 g\\u1ec1, kh&ocirc;ng qu&aacute; nh\\u1eb5n nh\\u1ee5i b\\u1edfi d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c&oacute; d\\u0103m g\\u1ed7 to, v&igrave; v\\u1eady c&ograve;n \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; g\\u1ed7 v&aacute;n d\\u0103m, \\u0111&acirc;y c\\u0169ng l&agrave; lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p \\u0111\\u01b0\\u1ee3c &eacute;p ch\\u1eb7t l&agrave;m n&ecirc;n, nh\\u01b0ng nh\\u1eb9 h\\u01a1n h\\u1eb3n so v\\u1edbi g\\u1ed7 MDF v&igrave; th\\u1ebf c\\u0169ng \\u0111\\u01b0\\u1ee3c c&ugrave;ng \\u0111\\u1ec3 l&agrave;m c&aacute;nh t\\u1ee7<\\/p>\\r\\n\\r\\n<p>Hai lo\\u1ea1i g\\u1ed7 n&agrave;y \\u0111\\u1ec1u c&oacute; g\\u1ed7 l&otilde;i xanh c&oacute; \\u01b0u \\u0111i\\u1ec3m l&agrave; ch\\u1ecbu \\u0111\\u01b0\\u1ee3c \\u1ea9m cao, \\u0111\\u1ea3m b\\u1ea3o gi\\u1eef nguy&ecirc;n \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 b\\u1ec1n ch\\u1eafc c\\u1ee7a s\\u1ea3n ph\\u1ea9m, t\\u1eeb \\u0111&oacute; gi&uacute;p \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n c\\u1ee7a t\\u1ee7 b\\u1ebfp trong qu&aacute; tr&igrave;nh s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<h3>T&igrave;m hi\\u1ec3u t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/h3>\\r\\n\\r\\n<p><strong>T\\u1ee7 b\\u1ebfp Acrylic<\\/strong>&nbsp;l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p c&oacute; t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ef1c cao, v\\u01b0\\u1ee3t tr\\u1ed9i h\\u01a1n nhi\\u1ec1u so v\\u1edbi c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp kh&aacute;c.<\\/p>\\r\\n\\r\\n<p>H\\u1ea7u h\\u1ebft c&aacute;c d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u1ef1a ch\\u1ecdn d&ugrave;ng b\\u1ec1 m\\u1eb7t Laminate hay b\\u1ec1 m\\u1eb7t Acrylic \\u0111\\u1ec3 l&agrave;m b\\u1ec1 m\\u1eb7t t\\u1ee7 b\\u1ebfp, hai lo\\u1ea1i v\\u1eadt li\\u1ec7u n&agrave;y \\u0111\\u1ec1u c&oacute; m&agrave;u s\\u1eafc c\\u0169ng nh\\u01b0 ki\\u1ec3u v&acirc;n t\\u01b0\\u01a1ng \\u0111\\u1ed1i \\u0111a d\\u1ea1ng, t\\u1eeb \\u0111&oacute; mang l\\u1ea1i s\\u1ef1 l\\u1ef1a ch\\u1ecdn nhi\\u1ec1u h\\u01a1n h\\u1eb3n, ho&agrave;n to&agrave;n kh&ocirc;ng \\u0111\\u01a1n \\u0111i\\u1ec7u nh\\u01b0 c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp g\\u1ed7 t\\u1ef1 nhi&ecirc;n b&ecirc;n ngo&agrave;i.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c bi\\u1ec7t trong tr\\u01b0\\u1eddng h\\u1ee3p c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n c&oacute; \\u0111\\u1ed9 \\u1ea9m th\\u1ea5p cao th&igrave; vi\\u1ec7c s\\u1eed d\\u1ee5ng&nbsp;<em>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/em>&nbsp;l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn th&ocirc;ng minh, b\\u1edfi nh\\u1eefng d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y s\\u1ebd gi&uacute;p ph&ograve;ng ch\\u1ed1ng n\\u1ed3m \\u1ea9m v&agrave; kh&ocirc;ng kh&iacute; \\u1ea9m \\u01b0\\u1edbt trong c\\u0103n b\\u1ebfp, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t \\u0111\\u1ed1i h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lo\\u1ea1i g\\u1ed7 n&agrave;y c\\u0169ng c&oacute; kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u0111\\u1ef1ng nhi\\u1ec7t \\u0111\\u1ed9 kh&iacute; h\\u1eadu nhi\\u1ec7t \\u0111\\u1edbi n&oacute;ng \\u1ea9m, v&igrave; v\\u1eady khi d&ugrave;ng t\\u1ee7 b\\u1ebfp l&agrave; th&iacute;ch h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra \\u0111\\u1ed1i v\\u1edbi khoang ch\\u1eadu r\\u1eeda, b\\u1edfi v&igrave; vi\\u1ec7c ch\\u1ecbu n\\u01b0\\u1edbc cao n&ecirc;n d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c\\u0169ng c&oacute; th\\u1ec3 d&ugrave;ng \\u0111\\u1ec3 l&agrave;m khoang ch\\u1eadu r\\u1eeda \\u0111\\u01b0\\u1ee3c nh&eacute;.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp ch\\u1ea5t l\\u01b0\\u1ee3ng nh\\u1ea5t cho gia \\u0111&igrave;nh, kh&aacute;ch h&agrave;ng c\\u0169ng c&oacute; th\\u1ec3 tr\\u1ef1c ti\\u1ebfp li&ecirc;n h\\u1ec7 t\\u1edbi ch&uacute;ng t&ocirc;i \\u0111\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 t\\u01b0 v\\u1ea5n k\\u1ecbp th\\u1eddi nh\\u1ea5t, gi&uacute;p kh&aacute;ch h&agrave;ng ch\\u1ecdn \\u0111\\u01b0\\u1ee3c d&ograve;ng t\\u1ee7 b\\u1ebfp \\u01b0ng &yacute; v&agrave; ph&ugrave; h\\u1ee3p v\\u1edbi n\\u1ed9i th\\u1ea5t c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n.<\\/p>\"}},\"alias\":\"tra-thao-moc-8-loai-tot-cho-suc-khoe-ma-ban-nen-dung\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/content\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:33:18', '2022-02-08 02:33:18'),
(800, 1, 'sc_admin/news', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:33:18', '2022-02-08 02:33:18'),
(801, 1, 'sc_admin/news/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:33:34', '2022-02-08 02:33:34'),
(802, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"news\",\"CKEditor\":\"vi__content\",\"CKEditorFuncNum\":\"1\",\"langCode\":\"en\"}', '2022-02-08 02:34:23', '2022-02-08 02:34:23'),
(803, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"news\",\"_\":\"1644287681758\"}', '2022-02-08 02:34:24', '2022-02-08 02:34:24'),
(804, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"news\",\"_\":\"1644287681757\"}', '2022-02-08 02:34:24', '2022-02-08 02:34:24'),
(805, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"news\",\"sort_type\":\"alphabetic\",\"_\":\"1644287681759\"}', '2022-02-08 02:34:25', '2022-02-08 02:34:25'),
(806, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"news\",\"sort_type\":\"alphabetic\",\"_\":\"1644287681760\"}', '2022-02-08 02:34:29', '2022-02-08 02:34:29'),
(807, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"news\",\"CKEditor\":\"vi__content\",\"CKEditorFuncNum\":\"1\",\"langCode\":\"en\"}', '2022-02-08 02:34:36', '2022-02-08 02:34:36'),
(808, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"news\",\"_\":\"1644287693831\"}', '2022-02-08 02:34:36', '2022-02-08 02:34:36'),
(809, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"news\",\"_\":\"1644287693832\"}', '2022-02-08 02:34:36', '2022-02-08 02:34:36'),
(810, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"news\",\"sort_type\":\"alphabetic\",\"_\":\"1644287693833\"}', '2022-02-08 02:34:37', '2022-02-08 02:34:37'),
(811, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"news\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:34:49', '2022-02-08 02:34:49'),
(812, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"news\",\"_\":\"1644287693834\"}', '2022-02-08 02:34:49', '2022-02-08 02:34:49'),
(813, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"news\",\"sort_type\":\"alphabetic\",\"_\":\"1644287693835\"}', '2022-02-08 02:34:50', '2022-02-08 02:34:50'),
(814, 1, 'sc_admin/news/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"keyword\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"description\":\"Kh\\u00ed h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111\\u00ecnh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp\",\"content\":\"<p style=\\\"text-align:center\\\"><a href=\\\"https:\\/\\/noithatminhtam.com\\/tin-tuc\\/kha-nang-chiu-am-cua-tu-bep-acrylic\\/\\\"><img alt=\\\"\\\" height=\\\"495\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/file\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-768x475.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-24x15.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-36x22.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-48x30.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-600x371.jpg 600w\\\" width=\\\"800\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Kh&iacute; h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111&igrave;nh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp, v&igrave; v\\u1eady khi ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp t\\u1ed1t nh\\u1ea5t b\\u1ea1n n&ecirc;n ch\\u1ecdn nh\\u1eefng d&ograve;ng t\\u1ee7 b\\u1ebfp c&oacute; th\\u1ec3 ch\\u1ecbu \\u0111\\u1ef1ng \\u0111\\u01b0\\u1ee3c th\\u1eddi ti\\u1ebft n\\u1ed3m \\u1ea9m nh\\u01b0&nbsp;t\\u1ee7 b\\u1ebfp Acrylic&nbsp;\\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n t\\u1ed1i \\u01b0u nh\\u1ea5t c\\u1ee7a s\\u1ea3n ph\\u1ea9m.<\\/p>\\r\\n\\r\\n<h2>NH\\u1eeeNG \\u0110\\u1eb6C \\u0110I\\u1ec2M C\\u1ee6A T\\u1ee6 B\\u1ebeP G\\u1ed6 C&Ocirc;NG NGHI\\u1ec6P<\\/h2>\\r\\n\\r\\n<p>Tr&ecirc;n th\\u1ef1c t\\u1ebf nh\\u1eefng&nbsp;<strong>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c d&ugrave;ng l&agrave;m t\\u1ee7 b\\u1ebfp ch&iacute;nh l&agrave; g\\u1ed7 MDF v&agrave; g\\u1ed7 MFC, \\u0111&acirc;y ch&iacute;nh l&agrave; lo\\u1ea1i g\\u1ed7 v&aacute;n &eacute;p t\\u01b0\\u01a1ng \\u0111\\u1ed1i ph\\u1ed5 bi\\u1ebfn \\u0111\\u01b0\\u1ee3c s\\u1ea3n xu\\u1ea5t tr&ecirc;n d&acirc;y chuy\\u1ec1n c&ocirc;ng ngh\\u1ec7 cao, \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u v&agrave;o Vi\\u1ec7t Nam \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf t\\u1ee7 b\\u1ebfp<\\/p>\\r\\n\\r\\n<p>C&aacute;c lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p l&agrave;m t\\u1ee7 b\\u1ebfp n&agrave;y \\u0111a ph\\u1ea7n \\u0111\\u1ec1u l&agrave; v\\u1ee5n g\\u1ed7 \\u0111\\u01b0\\u1ee3c tr\\u1ed9n l\\u1eabn v\\u1edbi keo v&agrave; \\u0111\\u01b0\\u1ee3c &eacute;p n&eacute;n b\\u1eb1ng m&aacute;y d\\u01b0\\u1edbi l\\u1ef1c n&eacute;n cao, t\\u1ea1o th&agrave;nh t\\u1eebng t\\u1ea5m g\\u1ed7 ch\\u1eafc ch\\u1eafn.<\\/p>\\r\\n\\r\\n<p>Trong \\u0111&oacute; c&aacute;c d&ograve;ng g\\u1ed7 MDF c&oacute; b\\u1ec1 m\\u1eb7t m\\u1ecbn h\\u01a1n nhi\\u1ec1u b\\u1edfi d\\u0103m g\\u1ed7 nh\\u1ecf m\\u1ecbn h\\u01a1n h\\u1eb3n, nh\\u1eefng lo\\u1ea1i g\\u1ed7 n&agrave;y c&oacute; \\u0111\\u1ed9 ch\\u1eafc ch\\u1eafn t\\u01b0\\u01a1ng \\u0111\\u1ed1i l\\u1edbn, khi c\\u1ea7m l&ecirc;n c\\u0169ng n\\u1eb7ng tay v&igrave; v\\u1eady \\u0111\\u01b0\\u1ee3c d&ugrave;ng nhi\\u1ec1u l&agrave;m th&ugrave;ng t\\u1ee7.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra c&aacute;c d&ograve;ng g\\u1ed7 MFC c&oacute; b\\u1ec1 m\\u1eb7t t\\u01b0\\u01a1ng \\u0111\\u1ed1i g\\u1ed3 g\\u1ec1, kh&ocirc;ng qu&aacute; nh\\u1eb5n nh\\u1ee5i b\\u1edfi d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c&oacute; d\\u0103m g\\u1ed7 to, v&igrave; v\\u1eady c&ograve;n \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; g\\u1ed7 v&aacute;n d\\u0103m, \\u0111&acirc;y c\\u0169ng l&agrave; lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p \\u0111\\u01b0\\u1ee3c &eacute;p ch\\u1eb7t l&agrave;m n&ecirc;n, nh\\u01b0ng nh\\u1eb9 h\\u01a1n h\\u1eb3n so v\\u1edbi g\\u1ed7 MDF v&igrave; th\\u1ebf c\\u0169ng \\u0111\\u01b0\\u1ee3c c&ugrave;ng \\u0111\\u1ec3 l&agrave;m c&aacute;nh t\\u1ee7<\\/p>\\r\\n\\r\\n<p>Hai lo\\u1ea1i g\\u1ed7 n&agrave;y \\u0111\\u1ec1u c&oacute; g\\u1ed7 l&otilde;i xanh c&oacute; \\u01b0u \\u0111i\\u1ec3m l&agrave; ch\\u1ecbu \\u0111\\u01b0\\u1ee3c \\u1ea9m cao, \\u0111\\u1ea3m b\\u1ea3o gi\\u1eef nguy&ecirc;n \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 b\\u1ec1n ch\\u1eafc c\\u1ee7a s\\u1ea3n ph\\u1ea9m, t\\u1eeb \\u0111&oacute; gi&uacute;p \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n c\\u1ee7a t\\u1ee7 b\\u1ebfp trong qu&aacute; tr&igrave;nh s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<h3>T&igrave;m hi\\u1ec3u t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/h3>\\r\\n\\r\\n<p><strong>T\\u1ee7 b\\u1ebfp Acrylic<\\/strong>&nbsp;l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p c&oacute; t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ef1c cao, v\\u01b0\\u1ee3t tr\\u1ed9i h\\u01a1n nhi\\u1ec1u so v\\u1edbi c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp kh&aacute;c.<\\/p>\\r\\n\\r\\n<p>H\\u1ea7u h\\u1ebft c&aacute;c d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u1ef1a ch\\u1ecdn d&ugrave;ng b\\u1ec1 m\\u1eb7t Laminate hay b\\u1ec1 m\\u1eb7t Acrylic \\u0111\\u1ec3 l&agrave;m b\\u1ec1 m\\u1eb7t t\\u1ee7 b\\u1ebfp, hai lo\\u1ea1i v\\u1eadt li\\u1ec7u n&agrave;y \\u0111\\u1ec1u c&oacute; m&agrave;u s\\u1eafc c\\u0169ng nh\\u01b0 ki\\u1ec3u v&acirc;n t\\u01b0\\u01a1ng \\u0111\\u1ed1i \\u0111a d\\u1ea1ng, t\\u1eeb \\u0111&oacute; mang l\\u1ea1i s\\u1ef1 l\\u1ef1a ch\\u1ecdn nhi\\u1ec1u h\\u01a1n h\\u1eb3n, ho&agrave;n to&agrave;n kh&ocirc;ng \\u0111\\u01a1n \\u0111i\\u1ec7u nh\\u01b0 c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp g\\u1ed7 t\\u1ef1 nhi&ecirc;n b&ecirc;n ngo&agrave;i.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c bi\\u1ec7t trong tr\\u01b0\\u1eddng h\\u1ee3p c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n c&oacute; \\u0111\\u1ed9 \\u1ea9m th\\u1ea5p cao th&igrave; vi\\u1ec7c s\\u1eed d\\u1ee5ng&nbsp;<em>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/em>&nbsp;l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn th&ocirc;ng minh, b\\u1edfi nh\\u1eefng d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y s\\u1ebd gi&uacute;p ph&ograve;ng ch\\u1ed1ng n\\u1ed3m \\u1ea9m v&agrave; kh&ocirc;ng kh&iacute; \\u1ea9m \\u01b0\\u1edbt trong c\\u0103n b\\u1ebfp, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t \\u0111\\u1ed1i h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lo\\u1ea1i g\\u1ed7 n&agrave;y c\\u0169ng c&oacute; kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u0111\\u1ef1ng nhi\\u1ec7t \\u0111\\u1ed9 kh&iacute; h\\u1eadu nhi\\u1ec7t \\u0111\\u1edbi n&oacute;ng \\u1ea9m, v&igrave; v\\u1eady khi d&ugrave;ng t\\u1ee7 b\\u1ebfp l&agrave; th&iacute;ch h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra \\u0111\\u1ed1i v\\u1edbi khoang ch\\u1eadu r\\u1eeda, b\\u1edfi v&igrave; vi\\u1ec7c ch\\u1ecbu n\\u01b0\\u1edbc cao n&ecirc;n d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c\\u0169ng c&oacute; th\\u1ec3 d&ugrave;ng \\u0111\\u1ec3 l&agrave;m khoang ch\\u1eadu r\\u1eeda \\u0111\\u01b0\\u1ee3c nh&eacute;.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp ch\\u1ea5t l\\u01b0\\u1ee3ng nh\\u1ea5t cho gia \\u0111&igrave;nh, kh&aacute;ch h&agrave;ng c\\u0169ng c&oacute; th\\u1ec3 tr\\u1ef1c ti\\u1ebfp li&ecirc;n h\\u1ec7 t\\u1edbi ch&uacute;ng t&ocirc;i \\u0111\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 t\\u01b0 v\\u1ea5n k\\u1ecbp th\\u1eddi nh\\u1ea5t, gi&uacute;p kh&aacute;ch h&agrave;ng ch\\u1ecdn \\u0111\\u01b0\\u1ee3c d&ograve;ng t\\u1ee7 b\\u1ebfp \\u01b0ng &yacute; v&agrave; ph&ugrave; h\\u1ee3p v\\u1edbi n\\u1ed9i th\\u1ea5t c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n.<\\/p>\"}},\"alias\":\"tra-thao-moc-8-loai-tot-cho-suc-khoe-ma-ban-nen-dung\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/content\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:35:02', '2022-02-08 02:35:02'),
(815, 1, 'sc_admin/news', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:35:03', '2022-02-08 02:35:03'),
(816, 1, 'sc_admin/news/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:35:37', '2022-02-08 02:35:37'),
(817, 1, 'sc_admin/news/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"keyword\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"description\":\"Kh\\u00ed h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111\\u00ecnh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp\",\"content\":\"<p style=\\\"text-align:center\\\"><a href=\\\"https:\\/\\/noithatminhtam.com\\/tin-tuc\\/kha-nang-chiu-am-cua-tu-bep-acrylic\\/\\\"><img alt=\\\"\\\" height=\\\"743\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/file\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-768x475.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-24x15.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-36x22.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-48x30.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-600x371.jpg 600w\\\" width=\\\"1200\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Kh&iacute; h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111&igrave;nh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp, v&igrave; v\\u1eady khi ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp t\\u1ed1t nh\\u1ea5t b\\u1ea1n n&ecirc;n ch\\u1ecdn nh\\u1eefng d&ograve;ng t\\u1ee7 b\\u1ebfp c&oacute; th\\u1ec3 ch\\u1ecbu \\u0111\\u1ef1ng \\u0111\\u01b0\\u1ee3c th\\u1eddi ti\\u1ebft n\\u1ed3m \\u1ea9m nh\\u01b0&nbsp;t\\u1ee7 b\\u1ebfp Acrylic&nbsp;\\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n t\\u1ed1i \\u01b0u nh\\u1ea5t c\\u1ee7a s\\u1ea3n ph\\u1ea9m.<\\/p>\\r\\n\\r\\n<h2>NH\\u1eeeNG \\u0110\\u1eb6C \\u0110I\\u1ec2M C\\u1ee6A T\\u1ee6 B\\u1ebeP G\\u1ed6 C&Ocirc;NG NGHI\\u1ec6P<\\/h2>\\r\\n\\r\\n<p>Tr&ecirc;n th\\u1ef1c t\\u1ebf nh\\u1eefng&nbsp;<strong>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c d&ugrave;ng l&agrave;m t\\u1ee7 b\\u1ebfp ch&iacute;nh l&agrave; g\\u1ed7 MDF v&agrave; g\\u1ed7 MFC, \\u0111&acirc;y ch&iacute;nh l&agrave; lo\\u1ea1i g\\u1ed7 v&aacute;n &eacute;p t\\u01b0\\u01a1ng \\u0111\\u1ed1i ph\\u1ed5 bi\\u1ebfn \\u0111\\u01b0\\u1ee3c s\\u1ea3n xu\\u1ea5t tr&ecirc;n d&acirc;y chuy\\u1ec1n c&ocirc;ng ngh\\u1ec7 cao, \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u v&agrave;o Vi\\u1ec7t Nam \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf t\\u1ee7 b\\u1ebfp<\\/p>\\r\\n\\r\\n<p>C&aacute;c lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p l&agrave;m t\\u1ee7 b\\u1ebfp n&agrave;y \\u0111a ph\\u1ea7n \\u0111\\u1ec1u l&agrave; v\\u1ee5n g\\u1ed7 \\u0111\\u01b0\\u1ee3c tr\\u1ed9n l\\u1eabn v\\u1edbi keo v&agrave; \\u0111\\u01b0\\u1ee3c &eacute;p n&eacute;n b\\u1eb1ng m&aacute;y d\\u01b0\\u1edbi l\\u1ef1c n&eacute;n cao, t\\u1ea1o th&agrave;nh t\\u1eebng t\\u1ea5m g\\u1ed7 ch\\u1eafc ch\\u1eafn.<\\/p>\\r\\n\\r\\n<p>Trong \\u0111&oacute; c&aacute;c d&ograve;ng g\\u1ed7 MDF c&oacute; b\\u1ec1 m\\u1eb7t m\\u1ecbn h\\u01a1n nhi\\u1ec1u b\\u1edfi d\\u0103m g\\u1ed7 nh\\u1ecf m\\u1ecbn h\\u01a1n h\\u1eb3n, nh\\u1eefng lo\\u1ea1i g\\u1ed7 n&agrave;y c&oacute; \\u0111\\u1ed9 ch\\u1eafc ch\\u1eafn t\\u01b0\\u01a1ng \\u0111\\u1ed1i l\\u1edbn, khi c\\u1ea7m l&ecirc;n c\\u0169ng n\\u1eb7ng tay v&igrave; v\\u1eady \\u0111\\u01b0\\u1ee3c d&ugrave;ng nhi\\u1ec1u l&agrave;m th&ugrave;ng t\\u1ee7.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra c&aacute;c d&ograve;ng g\\u1ed7 MFC c&oacute; b\\u1ec1 m\\u1eb7t t\\u01b0\\u01a1ng \\u0111\\u1ed1i g\\u1ed3 g\\u1ec1, kh&ocirc;ng qu&aacute; nh\\u1eb5n nh\\u1ee5i b\\u1edfi d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c&oacute; d\\u0103m g\\u1ed7 to, v&igrave; v\\u1eady c&ograve;n \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; g\\u1ed7 v&aacute;n d\\u0103m, \\u0111&acirc;y c\\u0169ng l&agrave; lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p \\u0111\\u01b0\\u1ee3c &eacute;p ch\\u1eb7t l&agrave;m n&ecirc;n, nh\\u01b0ng nh\\u1eb9 h\\u01a1n h\\u1eb3n so v\\u1edbi g\\u1ed7 MDF v&igrave; th\\u1ebf c\\u0169ng \\u0111\\u01b0\\u1ee3c c&ugrave;ng \\u0111\\u1ec3 l&agrave;m c&aacute;nh t\\u1ee7<\\/p>\\r\\n\\r\\n<p>Hai lo\\u1ea1i g\\u1ed7 n&agrave;y \\u0111\\u1ec1u c&oacute; g\\u1ed7 l&otilde;i xanh c&oacute; \\u01b0u \\u0111i\\u1ec3m l&agrave; ch\\u1ecbu \\u0111\\u01b0\\u1ee3c \\u1ea9m cao, \\u0111\\u1ea3m b\\u1ea3o gi\\u1eef nguy&ecirc;n \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 b\\u1ec1n ch\\u1eafc c\\u1ee7a s\\u1ea3n ph\\u1ea9m, t\\u1eeb \\u0111&oacute; gi&uacute;p \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n c\\u1ee7a t\\u1ee7 b\\u1ebfp trong qu&aacute; tr&igrave;nh s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<h3>T&igrave;m hi\\u1ec3u t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/h3>\\r\\n\\r\\n<p><strong>T\\u1ee7 b\\u1ebfp Acrylic<\\/strong>&nbsp;l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p c&oacute; t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ef1c cao, v\\u01b0\\u1ee3t tr\\u1ed9i h\\u01a1n nhi\\u1ec1u so v\\u1edbi c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp kh&aacute;c.<\\/p>\\r\\n\\r\\n<p>H\\u1ea7u h\\u1ebft c&aacute;c d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u1ef1a ch\\u1ecdn d&ugrave;ng b\\u1ec1 m\\u1eb7t Laminate hay b\\u1ec1 m\\u1eb7t Acrylic \\u0111\\u1ec3 l&agrave;m b\\u1ec1 m\\u1eb7t t\\u1ee7 b\\u1ebfp, hai lo\\u1ea1i v\\u1eadt li\\u1ec7u n&agrave;y \\u0111\\u1ec1u c&oacute; m&agrave;u s\\u1eafc c\\u0169ng nh\\u01b0 ki\\u1ec3u v&acirc;n t\\u01b0\\u01a1ng \\u0111\\u1ed1i \\u0111a d\\u1ea1ng, t\\u1eeb \\u0111&oacute; mang l\\u1ea1i s\\u1ef1 l\\u1ef1a ch\\u1ecdn nhi\\u1ec1u h\\u01a1n h\\u1eb3n, ho&agrave;n to&agrave;n kh&ocirc;ng \\u0111\\u01a1n \\u0111i\\u1ec7u nh\\u01b0 c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp g\\u1ed7 t\\u1ef1 nhi&ecirc;n b&ecirc;n ngo&agrave;i.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c bi\\u1ec7t trong tr\\u01b0\\u1eddng h\\u1ee3p c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n c&oacute; \\u0111\\u1ed9 \\u1ea9m th\\u1ea5p cao th&igrave; vi\\u1ec7c s\\u1eed d\\u1ee5ng&nbsp;<em>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/em>&nbsp;l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn th&ocirc;ng minh, b\\u1edfi nh\\u1eefng d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y s\\u1ebd gi&uacute;p ph&ograve;ng ch\\u1ed1ng n\\u1ed3m \\u1ea9m v&agrave; kh&ocirc;ng kh&iacute; \\u1ea9m \\u01b0\\u1edbt trong c\\u0103n b\\u1ebfp, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t \\u0111\\u1ed1i h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lo\\u1ea1i g\\u1ed7 n&agrave;y c\\u0169ng c&oacute; kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u0111\\u1ef1ng nhi\\u1ec7t \\u0111\\u1ed9 kh&iacute; h\\u1eadu nhi\\u1ec7t \\u0111\\u1edbi n&oacute;ng \\u1ea9m, v&igrave; v\\u1eady khi d&ugrave;ng t\\u1ee7 b\\u1ebfp l&agrave; th&iacute;ch h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra \\u0111\\u1ed1i v\\u1edbi khoang ch\\u1eadu r\\u1eeda, b\\u1edfi v&igrave; vi\\u1ec7c ch\\u1ecbu n\\u01b0\\u1edbc cao n&ecirc;n d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c\\u0169ng c&oacute; th\\u1ec3 d&ugrave;ng \\u0111\\u1ec3 l&agrave;m khoang ch\\u1eadu r\\u1eeda \\u0111\\u01b0\\u1ee3c nh&eacute;.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp ch\\u1ea5t l\\u01b0\\u1ee3ng nh\\u1ea5t cho gia \\u0111&igrave;nh, kh&aacute;ch h&agrave;ng c\\u0169ng c&oacute; th\\u1ec3 tr\\u1ef1c ti\\u1ebfp li&ecirc;n h\\u1ec7 t\\u1edbi ch&uacute;ng t&ocirc;i \\u0111\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 t\\u01b0 v\\u1ea5n k\\u1ecbp th\\u1eddi nh\\u1ea5t, gi&uacute;p kh&aacute;ch h&agrave;ng ch\\u1ecdn \\u0111\\u01b0\\u1ee3c d&ograve;ng t\\u1ee7 b\\u1ebfp \\u01b0ng &yacute; v&agrave; ph&ugrave; h\\u1ee3p v\\u1edbi n\\u1ed9i th\\u1ea5t c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n.<\\/p>\"}},\"alias\":\"tra-thao-moc-8-loai-tot-cho-suc-khoe-ma-ban-nen-dung\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/content\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:35:46', '2022-02-08 02:35:46'),
(818, 1, 'sc_admin/news', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:35:47', '2022-02-08 02:35:47'),
(819, 1, 'sc_admin/news/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:36:34', '2022-02-08 02:36:34'),
(820, 1, 'sc_admin/news/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:37:29', '2022-02-08 02:37:29'),
(821, 1, 'sc_admin/news/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"keyword\":\"Kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u1ea9m c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic\",\"description\":\"Kh\\u00ed h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111\\u00ecnh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp\",\"content\":\"<p style=\\\"text-align:center\\\"><a href=\\\"https:\\/\\/noithatminhtam.com\\/tin-tuc\\/kha-nang-chiu-am-cua-tu-bep-acrylic\\/\\\"><img alt=\\\"\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/file\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\\\" srcset=\\\"https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg 800w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-768x475.jpg 768w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-24x15.jpg 24w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-36x22.jpg 36w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-48x30.jpg 48w, https:\\/\\/noithatminhtam.com\\/wp-content\\/uploads\\/2019\\/06\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-600x371.jpg 600w\\\" width=\\\"1200\\\" \\/><\\/a><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Kh&iacute; h\\u1eadu n\\u1ed3m \\u1ea9m t\\u1ea1i Vi\\u1ec7t Nam th\\u01b0\\u1eddng khi\\u1ebfn cho \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong gia \\u0111&igrave;nh r\\u1ea5t d\\u1ec5 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t trong b\\u1ebfp, v&igrave; v\\u1eady khi ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp t\\u1ed1t nh\\u1ea5t b\\u1ea1n n&ecirc;n ch\\u1ecdn nh\\u1eefng d&ograve;ng t\\u1ee7 b\\u1ebfp c&oacute; th\\u1ec3 ch\\u1ecbu \\u0111\\u1ef1ng \\u0111\\u01b0\\u1ee3c th\\u1eddi ti\\u1ebft n\\u1ed3m \\u1ea9m nh\\u01b0&nbsp;t\\u1ee7 b\\u1ebfp Acrylic&nbsp;\\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n t\\u1ed1i \\u01b0u nh\\u1ea5t c\\u1ee7a s\\u1ea3n ph\\u1ea9m.<\\/p>\\r\\n\\r\\n<h2>NH\\u1eeeNG \\u0110\\u1eb6C \\u0110I\\u1ec2M C\\u1ee6A T\\u1ee6 B\\u1ebeP G\\u1ed6 C&Ocirc;NG NGHI\\u1ec6P<\\/h2>\\r\\n\\r\\n<p>Tr&ecirc;n th\\u1ef1c t\\u1ebf nh\\u1eefng&nbsp;<strong>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c d&ugrave;ng l&agrave;m t\\u1ee7 b\\u1ebfp ch&iacute;nh l&agrave; g\\u1ed7 MDF v&agrave; g\\u1ed7 MFC, \\u0111&acirc;y ch&iacute;nh l&agrave; lo\\u1ea1i g\\u1ed7 v&aacute;n &eacute;p t\\u01b0\\u01a1ng \\u0111\\u1ed1i ph\\u1ed5 bi\\u1ebfn \\u0111\\u01b0\\u1ee3c s\\u1ea3n xu\\u1ea5t tr&ecirc;n d&acirc;y chuy\\u1ec1n c&ocirc;ng ngh\\u1ec7 cao, \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u v&agrave;o Vi\\u1ec7t Nam \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf t\\u1ee7 b\\u1ebfp<\\/p>\\r\\n\\r\\n<p>C&aacute;c lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p l&agrave;m t\\u1ee7 b\\u1ebfp n&agrave;y \\u0111a ph\\u1ea7n \\u0111\\u1ec1u l&agrave; v\\u1ee5n g\\u1ed7 \\u0111\\u01b0\\u1ee3c tr\\u1ed9n l\\u1eabn v\\u1edbi keo v&agrave; \\u0111\\u01b0\\u1ee3c &eacute;p n&eacute;n b\\u1eb1ng m&aacute;y d\\u01b0\\u1edbi l\\u1ef1c n&eacute;n cao, t\\u1ea1o th&agrave;nh t\\u1eebng t\\u1ea5m g\\u1ed7 ch\\u1eafc ch\\u1eafn.<\\/p>\\r\\n\\r\\n<p>Trong \\u0111&oacute; c&aacute;c d&ograve;ng g\\u1ed7 MDF c&oacute; b\\u1ec1 m\\u1eb7t m\\u1ecbn h\\u01a1n nhi\\u1ec1u b\\u1edfi d\\u0103m g\\u1ed7 nh\\u1ecf m\\u1ecbn h\\u01a1n h\\u1eb3n, nh\\u1eefng lo\\u1ea1i g\\u1ed7 n&agrave;y c&oacute; \\u0111\\u1ed9 ch\\u1eafc ch\\u1eafn t\\u01b0\\u01a1ng \\u0111\\u1ed1i l\\u1edbn, khi c\\u1ea7m l&ecirc;n c\\u0169ng n\\u1eb7ng tay v&igrave; v\\u1eady \\u0111\\u01b0\\u1ee3c d&ugrave;ng nhi\\u1ec1u l&agrave;m th&ugrave;ng t\\u1ee7.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra c&aacute;c d&ograve;ng g\\u1ed7 MFC c&oacute; b\\u1ec1 m\\u1eb7t t\\u01b0\\u01a1ng \\u0111\\u1ed1i g\\u1ed3 g\\u1ec1, kh&ocirc;ng qu&aacute; nh\\u1eb5n nh\\u1ee5i b\\u1edfi d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c&oacute; d\\u0103m g\\u1ed7 to, v&igrave; v\\u1eady c&ograve;n \\u0111\\u01b0\\u1ee3c g\\u1ecdi l&agrave; g\\u1ed7 v&aacute;n d\\u0103m, \\u0111&acirc;y c\\u0169ng l&agrave; lo\\u1ea1i g\\u1ed7 c&ocirc;ng nghi\\u1ec7p \\u0111\\u01b0\\u1ee3c &eacute;p ch\\u1eb7t l&agrave;m n&ecirc;n, nh\\u01b0ng nh\\u1eb9 h\\u01a1n h\\u1eb3n so v\\u1edbi g\\u1ed7 MDF v&igrave; th\\u1ebf c\\u0169ng \\u0111\\u01b0\\u1ee3c c&ugrave;ng \\u0111\\u1ec3 l&agrave;m c&aacute;nh t\\u1ee7<\\/p>\\r\\n\\r\\n<p>Hai lo\\u1ea1i g\\u1ed7 n&agrave;y \\u0111\\u1ec1u c&oacute; g\\u1ed7 l&otilde;i xanh c&oacute; \\u01b0u \\u0111i\\u1ec3m l&agrave; ch\\u1ecbu \\u0111\\u01b0\\u1ee3c \\u1ea9m cao, \\u0111\\u1ea3m b\\u1ea3o gi\\u1eef nguy&ecirc;n \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 b\\u1ec1n ch\\u1eafc c\\u1ee7a s\\u1ea3n ph\\u1ea9m, t\\u1eeb \\u0111&oacute; gi&uacute;p \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n c\\u1ee7a t\\u1ee7 b\\u1ebfp trong qu&aacute; tr&igrave;nh s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<h3>T&igrave;m hi\\u1ec3u t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ee7a t\\u1ee7 b\\u1ebfp Acrylic l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/h3>\\r\\n\\r\\n<p><strong>T\\u1ee7 b\\u1ebfp Acrylic<\\/strong>&nbsp;l&agrave;m t\\u1eeb g\\u1ed7 c&ocirc;ng nghi\\u1ec7p c&oacute; t&iacute;nh th\\u1ea9m m\\u1ef9 c\\u1ef1c cao, v\\u01b0\\u1ee3t tr\\u1ed9i h\\u01a1n nhi\\u1ec1u so v\\u1edbi c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp kh&aacute;c.<\\/p>\\r\\n\\r\\n<p>H\\u1ea7u h\\u1ebft c&aacute;c d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u1ef1a ch\\u1ecdn d&ugrave;ng b\\u1ec1 m\\u1eb7t Laminate hay b\\u1ec1 m\\u1eb7t Acrylic \\u0111\\u1ec3 l&agrave;m b\\u1ec1 m\\u1eb7t t\\u1ee7 b\\u1ebfp, hai lo\\u1ea1i v\\u1eadt li\\u1ec7u n&agrave;y \\u0111\\u1ec1u c&oacute; m&agrave;u s\\u1eafc c\\u0169ng nh\\u01b0 ki\\u1ec3u v&acirc;n t\\u01b0\\u01a1ng \\u0111\\u1ed1i \\u0111a d\\u1ea1ng, t\\u1eeb \\u0111&oacute; mang l\\u1ea1i s\\u1ef1 l\\u1ef1a ch\\u1ecdn nhi\\u1ec1u h\\u01a1n h\\u1eb3n, ho&agrave;n to&agrave;n kh&ocirc;ng \\u0111\\u01a1n \\u0111i\\u1ec7u nh\\u01b0 c&aacute;c d&ograve;ng t\\u1ee7 b\\u1ebfp g\\u1ed7 t\\u1ef1 nhi&ecirc;n b&ecirc;n ngo&agrave;i.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c bi\\u1ec7t trong tr\\u01b0\\u1eddng h\\u1ee3p c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n c&oacute; \\u0111\\u1ed9 \\u1ea9m th\\u1ea5p cao th&igrave; vi\\u1ec7c s\\u1eed d\\u1ee5ng&nbsp;<em>t\\u1ee7 b\\u1ebfp g\\u1ed7 c&ocirc;ng nghi\\u1ec7p<\\/em>&nbsp;l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn th&ocirc;ng minh, b\\u1edfi nh\\u1eefng d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y s\\u1ebd gi&uacute;p ph&ograve;ng ch\\u1ed1ng n\\u1ed3m \\u1ea9m v&agrave; kh&ocirc;ng kh&iacute; \\u1ea9m \\u01b0\\u1edbt trong c\\u0103n b\\u1ebfp, \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 b\\u1ec1n s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t \\u0111\\u1ed1i h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lo\\u1ea1i g\\u1ed7 n&agrave;y c\\u0169ng c&oacute; kh\\u1ea3 n\\u0103ng ch\\u1ecbu \\u0111\\u1ef1ng nhi\\u1ec7t \\u0111\\u1ed9 kh&iacute; h\\u1eadu nhi\\u1ec7t \\u0111\\u1edbi n&oacute;ng \\u1ea9m, v&igrave; v\\u1eady khi d&ugrave;ng t\\u1ee7 b\\u1ebfp l&agrave; th&iacute;ch h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra \\u0111\\u1ed1i v\\u1edbi khoang ch\\u1eadu r\\u1eeda, b\\u1edfi v&igrave; vi\\u1ec7c ch\\u1ecbu n\\u01b0\\u1edbc cao n&ecirc;n d&ograve;ng s\\u1ea3n ph\\u1ea9m n&agrave;y c\\u0169ng c&oacute; th\\u1ec3 d&ugrave;ng \\u0111\\u1ec3 l&agrave;m khoang ch\\u1eadu r\\u1eeda \\u0111\\u01b0\\u1ee3c nh&eacute;.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o ch\\u1ecdn mua t\\u1ee7 b\\u1ebfp ch\\u1ea5t l\\u01b0\\u1ee3ng nh\\u1ea5t cho gia \\u0111&igrave;nh, kh&aacute;ch h&agrave;ng c\\u0169ng c&oacute; th\\u1ec3 tr\\u1ef1c ti\\u1ebfp li&ecirc;n h\\u1ec7 t\\u1edbi ch&uacute;ng t&ocirc;i \\u0111\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 t\\u01b0 v\\u1ea5n k\\u1ecbp th\\u1eddi nh\\u1ea5t, gi&uacute;p kh&aacute;ch h&agrave;ng ch\\u1ecdn \\u0111\\u01b0\\u1ee3c d&ograve;ng t\\u1ee7 b\\u1ebfp \\u01b0ng &yacute; v&agrave; ph&ugrave; h\\u1ee3p v\\u1edbi n\\u1ed9i th\\u1ea5t c\\u0103n b\\u1ebfp c\\u1ee7a gia \\u0111&igrave;nh b\\u1ea1n.<\\/p>\"}},\"alias\":\"tra-thao-moc-8-loai-tot-cho-suc-khoe-ma-ban-nen-dung\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/content\\/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:37:44', '2022-02-08 02:37:44'),
(822, 1, 'sc_admin/news', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:37:45', '2022-02-08 02:37:45'),
(823, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:38:08', '2022-02-08 02:38:08'),
(824, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":null,\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:25', '2022-02-08 02:38:25'),
(825, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:26', '2022-02-08 02:38:26'),
(826, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":null,\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:34', '2022-02-08 02:38:34'),
(827, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:34', '2022-02-08 02:38:34'),
(828, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":null,\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:40', '2022-02-08 02:38:40'),
(829, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:40', '2022-02-08 02:38:40'),
(830, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:45', '2022-02-08 02:38:45'),
(831, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:45', '2022-02-08 02:38:45'),
(832, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:47', '2022-02-08 02:38:47'),
(833, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:48', '2022-02-08 02:38:48'),
(834, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:51', '2022-02-08 02:38:51'),
(835, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:51', '2022-02-08 02:38:51'),
(836, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:54', '2022-02-08 02:38:54'),
(837, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:54', '2022-02-08 02:38:54'),
(838, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:38:57', '2022-02-08 02:38:57'),
(839, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:38:57', '2022-02-08 02:38:57'),
(840, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:00', '2022-02-08 02:39:00'),
(841, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:00', '2022-02-08 02:39:00'),
(842, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:03', '2022-02-08 02:39:03'),
(843, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:04', '2022-02-08 02:39:04'),
(844, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:06', '2022-02-08 02:39:06'),
(845, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:06', '2022-02-08 02:39:06'),
(846, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"9\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:09', '2022-02-08 02:39:09'),
(847, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:09', '2022-02-08 02:39:09'),
(848, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"10\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:11', '2022-02-08 02:39:11'),
(849, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:12', '2022-02-08 02:39:12'),
(850, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"11\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:14', '2022-02-08 02:39:14');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(851, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:15', '2022-02-08 02:39:15'),
(852, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"12\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:17', '2022-02-08 02:39:17'),
(853, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:18', '2022-02-08 02:39:18'),
(854, 1, 'sc_admin/category/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"13\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:39:20', '2022-02-08 02:39:20'),
(855, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:39:20', '2022-02-08 02:39:20'),
(856, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:39:23', '2022-02-08 02:39:23'),
(857, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n gh\\u1ebf ph\\u00f2ng kh\\u00e1ch\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:40:15', '2022-02-08 02:40:15'),
(858, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:40:16', '2022-02-08 02:40:16'),
(859, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:40:39', '2022-02-08 02:40:39'),
(860, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288057056\"}', '2022-02-08 02:40:40', '2022-02-08 02:40:40'),
(861, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288057057\"}', '2022-02-08 02:40:40', '2022-02-08 02:40:40'),
(862, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288057058\"}', '2022-02-08 02:40:40', '2022-02-08 02:40:40'),
(863, 1, 'sc_admin/uploads/delete', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"img-44.jpg\",\"img-42.jpg\",\"img-40.jpg\",\"img-18.jpg\",\"img-14.jpg\",\"8-3270.jpg\"],\"_\":\"1644288057059\"}', '2022-02-08 02:40:54', '2022-02-08 02:40:54'),
(864, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288057060\"}', '2022-02-08 02:40:55', '2022-02-08 02:40:55'),
(865, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288057061\"}', '2022-02-08 02:40:55', '2022-02-08 02:40:55'),
(866, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:41:00', '2022-02-08 02:41:00'),
(867, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288057062\"}', '2022-02-08 02:41:00', '2022-02-08 02:41:00'),
(868, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288057063\"}', '2022-02-08 02:41:01', '2022-02-08 02:41:01'),
(869, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n gh\\u1ebf ph\\u00f2ng kh\\u00e1ch\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ban-ghe-phong-khach\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/4094d53848e7b5b9ecf6-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:41:07', '2022-02-08 02:41:07'),
(870, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:41:07', '2022-02-08 02:41:07'),
(871, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:41:11', '2022-02-08 02:41:11'),
(872, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:41:37', '2022-02-08 02:41:37'),
(873, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288115332\"}', '2022-02-08 02:41:38', '2022-02-08 02:41:38'),
(874, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288115334\"}', '2022-02-08 02:41:38', '2022-02-08 02:41:38'),
(875, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288115333\"}', '2022-02-08 02:41:38', '2022-02-08 02:41:38'),
(876, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:41:44', '2022-02-08 02:41:44'),
(877, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288115335\"}', '2022-02-08 02:41:45', '2022-02-08 02:41:45'),
(878, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288115336\"}', '2022-02-08 02:41:45', '2022-02-08 02:41:45'),
(879, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00c0N GH\\u1ebe PH\\u00d2NG \\u0102N\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/be3c90ff0b20f67eaf31-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:41:48', '2022-02-08 02:41:48'),
(880, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:41:49', '2022-02-08 02:41:49'),
(881, 1, 'sc_admin/category/edit/15', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:43:26', '2022-02-08 02:43:26'),
(882, 1, 'sc_admin/category/edit/15', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n gh\\u1ebf ph\\u00f2ng \\u0103n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ban-ghe-phong-an\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/be3c90ff0b20f67eaf31-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:43:36', '2022-02-08 02:43:36'),
(883, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:43:37', '2022-02-08 02:43:37'),
(884, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:43:39', '2022-02-08 02:43:39'),
(885, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:43:53', '2022-02-08 02:43:53'),
(886, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288251518\"}', '2022-02-08 02:43:54', '2022-02-08 02:43:54'),
(887, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288251519\"}', '2022-02-08 02:43:54', '2022-02-08 02:43:54'),
(888, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251520\"}', '2022-02-08 02:43:55', '2022-02-08 02:43:55'),
(889, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:04', '2022-02-08 02:44:04'),
(890, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:04', '2022-02-08 02:44:04'),
(891, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:04', '2022-02-08 02:44:04'),
(892, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:04', '2022-02-08 02:44:04'),
(893, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:04', '2022-02-08 02:44:04'),
(894, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288251521\"}', '2022-02-08 02:44:05', '2022-02-08 02:44:05'),
(895, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288251522\"}', '2022-02-08 02:44:05', '2022-02-08 02:44:05'),
(896, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:05', '2022-02-08 02:44:05'),
(897, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288251524\"}', '2022-02-08 02:44:06', '2022-02-08 02:44:06'),
(898, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288251523\"}', '2022-02-08 02:44:06', '2022-02-08 02:44:06'),
(899, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:06', '2022-02-08 02:44:06'),
(900, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288251525\"}', '2022-02-08 02:44:06', '2022-02-08 02:44:06'),
(901, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251526\"}', '2022-02-08 02:44:06', '2022-02-08 02:44:06'),
(902, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288251528\"}', '2022-02-08 02:44:07', '2022-02-08 02:44:07'),
(903, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251530\"}', '2022-02-08 02:44:07', '2022-02-08 02:44:07'),
(904, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288251532\"}', '2022-02-08 02:44:07', '2022-02-08 02:44:07'),
(905, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251527\"}', '2022-02-08 02:44:07', '2022-02-08 02:44:07'),
(906, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251529\"}', '2022-02-08 02:44:07', '2022-02-08 02:44:07'),
(907, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251531\"}', '2022-02-08 02:44:07', '2022-02-08 02:44:07'),
(908, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251534\"}', '2022-02-08 02:44:08', '2022-02-08 02:44:08'),
(909, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288251533\"}', '2022-02-08 02:44:08', '2022-02-08 02:44:08'),
(910, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u01b0\\u1eddng, t\\u1ee7 \\u00e1o\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/8640646b80b47dea24a5-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:12', '2022-02-08 02:44:12'),
(911, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:44:12', '2022-02-08 02:44:12'),
(912, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:44:15', '2022-02-08 02:44:15'),
(913, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:44:24', '2022-02-08 02:44:24'),
(914, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288282129\"}', '2022-02-08 02:44:24', '2022-02-08 02:44:24'),
(915, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288282128\"}', '2022-02-08 02:44:25', '2022-02-08 02:44:25'),
(916, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288282130\"}', '2022-02-08 02:44:25', '2022-02-08 02:44:25'),
(917, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:44:44', '2022-02-08 02:44:44'),
(918, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288301878\"}', '2022-02-08 02:44:44', '2022-02-08 02:44:44'),
(919, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288301879\"}', '2022-02-08 02:44:44', '2022-02-08 02:44:44'),
(920, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288301880\"}', '2022-02-08 02:44:45', '2022-02-08 02:44:45'),
(921, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:49', '2022-02-08 02:44:49'),
(922, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288301881\"}', '2022-02-08 02:44:50', '2022-02-08 02:44:50'),
(923, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288301882\"}', '2022-02-08 02:44:50', '2022-02-08 02:44:50'),
(924, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"K\\u1ec7 tivi\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/ke-tivi-7-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:44:54', '2022-02-08 02:44:54'),
(925, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:44:54', '2022-02-08 02:44:54'),
(926, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:44:57', '2022-02-08 02:44:57'),
(927, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:45:14', '2022-02-08 02:45:14'),
(928, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288332143\"}', '2022-02-08 02:45:15', '2022-02-08 02:45:15'),
(929, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288332144\"}', '2022-02-08 02:45:15', '2022-02-08 02:45:15'),
(930, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288332145\"}', '2022-02-08 02:45:15', '2022-02-08 02:45:15'),
(931, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tranh g\\u1ed7\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/thuan-buom-1-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:45:19', '2022-02-08 02:45:19'),
(932, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:45:19', '2022-02-08 02:45:19'),
(933, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:45:23', '2022-02-08 02:45:23'),
(934, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:45:32', '2022-02-08 02:45:32'),
(935, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288350227\"}', '2022-02-08 02:45:33', '2022-02-08 02:45:33'),
(936, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288350226\"}', '2022-02-08 02:45:33', '2022-02-08 02:45:33'),
(937, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288350228\"}', '2022-02-08 02:45:33', '2022-02-08 02:45:33'),
(938, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"T\\u1ee7 r\\u01b0\\u1ee3u\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/ruou-17-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:45:38', '2022-02-08 02:45:38'),
(939, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:45:39', '2022-02-08 02:45:39'),
(940, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:45:42', '2022-02-08 02:45:42'),
(941, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:45:49', '2022-02-08 02:45:49'),
(942, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288367623\"}', '2022-02-08 02:45:50', '2022-02-08 02:45:50'),
(943, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288367624\"}', '2022-02-08 02:45:50', '2022-02-08 02:45:50'),
(944, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288367625\"}', '2022-02-08 02:45:50', '2022-02-08 02:45:50'),
(945, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"T\\u1ee7 b\\u1ebfp\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/5732c93307ecfab2a3fd-300x300.jpg\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:46:13', '2022-02-08 02:46:13'),
(946, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:46:13', '2022-02-08 02:46:13'),
(947, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:46:19', '2022-02-08 02:46:19'),
(948, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:46:25', '2022-02-08 02:46:25'),
(949, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288403016\"}', '2022-02-08 02:46:25', '2022-02-08 02:46:25'),
(950, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288403017\"}', '2022-02-08 02:46:25', '2022-02-08 02:46:25'),
(951, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288403018\"}', '2022-02-08 02:46:26', '2022-02-08 02:46:26'),
(952, 1, 'sc_admin/uploads/delete', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\"],\"_\":\"1644288403019\"}', '2022-02-08 02:46:39', '2022-02-08 02:46:39'),
(953, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1644288403020\"}', '2022-02-08 02:46:40', '2022-02-08 02:46:40'),
(954, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288403021\"}', '2022-02-08 02:46:40', '2022-02-08 02:46:40'),
(955, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n th\\u1edd\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/sap-tho-14-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:46:48', '2022-02-08 02:46:48'),
(956, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:46:48', '2022-02-08 02:46:48'),
(957, 1, 'sc_admin/category/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:46:50', '2022-02-08 02:46:50'),
(958, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"category\"}', '2022-02-08 02:46:59', '2022-02-08 02:46:59'),
(959, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288437707\"}', '2022-02-08 02:47:00', '2022-02-08 02:47:00'),
(960, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1644288437706\"}', '2022-02-08 02:47:00', '2022-02-08 02:47:00'),
(961, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"_\":\"1644288437708\"}', '2022-02-08 02:47:01', '2022-02-08 02:47:01'),
(962, 1, 'sc_admin/category/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 c\\u00e2y\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/64761988_1284990761665375_142021073691475968_n-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:04', '2022-02-08 02:47:04'),
(963, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:05', '2022-02-08 02:47:05'),
(964, 1, 'sc_admin/category/edit/20', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:16', '2022-02-08 02:47:16'),
(965, 1, 'sc_admin/category/edit/20', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"T\\u1ee7 b\\u1ebfp\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"tu-bep\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/5732c93307ecfab2a3fd-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:19', '2022-02-08 02:47:19'),
(966, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:20', '2022-02-08 02:47:20'),
(967, 1, 'sc_admin/category/edit/19', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:22', '2022-02-08 02:47:22'),
(968, 1, 'sc_admin/category/edit/19', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"T\\u1ee7 r\\u01b0\\u1ee3u\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"tu-ruou\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/ruou-17-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:25', '2022-02-08 02:47:25'),
(969, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:26', '2022-02-08 02:47:26'),
(970, 1, 'sc_admin/category/edit/18', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:28', '2022-02-08 02:47:28'),
(971, 1, 'sc_admin/category/edit/18', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tranh g\\u1ed7\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"tranh-go\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/thuan-buom-1-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:31', '2022-02-08 02:47:31'),
(972, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:31', '2022-02-08 02:47:31'),
(973, 1, 'sc_admin/category/edit/17', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:34', '2022-02-08 02:47:34'),
(974, 1, 'sc_admin/category/edit/17', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"K\\u1ec7 tivi\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ke-tivi\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/ke-tivi-7-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:36', '2022-02-08 02:47:36'),
(975, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:37', '2022-02-08 02:47:37'),
(976, 1, 'sc_admin/category/edit/16', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:39', '2022-02-08 02:47:39'),
(977, 1, 'sc_admin/category/edit/16', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u01b0\\u1eddng, t\\u1ee7 \\u00e1o\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"giuong-tu-ao\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/8640646b80b47dea24a5-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:42', '2022-02-08 02:47:42'),
(978, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:43', '2022-02-08 02:47:43'),
(979, 1, 'sc_admin/category/edit/15', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:45', '2022-02-08 02:47:45'),
(980, 1, 'sc_admin/category/edit/15', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n gh\\u1ebf ph\\u00f2ng \\u0103n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ban-ghe-phong-an\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/be3c90ff0b20f67eaf31-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:48', '2022-02-08 02:47:48'),
(981, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:48', '2022-02-08 02:47:48'),
(982, 1, 'sc_admin/category/edit/14', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:51', '2022-02-08 02:47:51'),
(983, 1, 'sc_admin/category/edit/14', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n gh\\u1ebf ph\\u00f2ng kh\\u00e1ch\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ban-ghe-phong-khach\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/4094d53848e7b5b9ecf6-300x300.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:47:55', '2022-02-08 02:47:55'),
(984, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:47:55', '2022-02-08 02:47:55'),
(985, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:48:06', '2022-02-08 02:48:06'),
(986, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"17\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:17', '2022-02-08 02:48:17'),
(987, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:17', '2022-02-08 02:48:17'),
(988, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"16\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:21', '2022-02-08 02:48:21'),
(989, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:21', '2022-02-08 02:48:21'),
(990, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"15\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:24', '2022-02-08 02:48:24'),
(991, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:24', '2022-02-08 02:48:24'),
(992, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"14\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:26', '2022-02-08 02:48:26'),
(993, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:27', '2022-02-08 02:48:27'),
(994, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"13\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:29', '2022-02-08 02:48:29'),
(995, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:29', '2022-02-08 02:48:29'),
(996, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"12\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:32', '2022-02-08 02:48:32'),
(997, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:32', '2022-02-08 02:48:32'),
(998, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"11\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:35', '2022-02-08 02:48:35'),
(999, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:35', '2022-02-08 02:48:35'),
(1000, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"10\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:37', '2022-02-08 02:48:37'),
(1001, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:38', '2022-02-08 02:48:38'),
(1002, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"9\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:40', '2022-02-08 02:48:40'),
(1003, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:40', '2022-02-08 02:48:40'),
(1004, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:54', '2022-02-08 02:48:54'),
(1005, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:54', '2022-02-08 02:48:54'),
(1006, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:48:57', '2022-02-08 02:48:57'),
(1007, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:48:58', '2022-02-08 02:48:58'),
(1008, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:49:02', '2022-02-08 02:49:02'),
(1009, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:49:03', '2022-02-08 02:49:03'),
(1010, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:49:05', '2022-02-08 02:49:05'),
(1011, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:49:06', '2022-02-08 02:49:06'),
(1012, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:49:07', '2022-02-08 02:49:07'),
(1013, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:49:08', '2022-02-08 02:49:08'),
(1014, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:49:10', '2022-02-08 02:49:10'),
(1015, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:49:10', '2022-02-08 02:49:10'),
(1016, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:49:13', '2022-02-08 02:49:13'),
(1017, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:49:13', '2022-02-08 02:49:13');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1018, 1, 'sc_admin/product/delete', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:49:16', '2022-02-08 02:49:16'),
(1019, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-02-08 02:49:16', '2022-02-08 02:49:16'),
(1020, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:49:19', '2022-02-08 02:49:19'),
(1021, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":null}},\"image\":null,\"sku\":null,\"alias\":null,\"brand_id\":null,\"cost\":\"22000000\",\"price\":\"22000000\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:52:24', '2022-02-08 02:52:24'),
(1022, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:52:25', '2022-02-08 02:52:25'),
(1023, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":null}},\"category\":[\"14\"],\"image\":null,\"sku\":null,\"alias\":\"ban-ghe-an-dep-go-soi-thiet-ke-hien-dai-ba1014\",\"brand_id\":null,\"cost\":\"22000000\",\"price\":\"22000000\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:52:50', '2022-02-08 02:52:50'),
(1024, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:52:51', '2022-02-08 02:52:51'),
(1025, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":null,\"sku\":null,\"alias\":\"ban-ghe-an-dep-go-soi-thiet-ke-hien-dai-ba1014\",\"brand_id\":null,\"cost\":\"22000000\",\"price\":\"22000000\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:53:02', '2022-02-08 02:53:02'),
(1026, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:53:02', '2022-02-08 02:53:02'),
(1027, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":null,\"sku\":\"1\",\"alias\":\"ban-ghe-an-dep-go-soi-thiet-ke-hien-dai-ba1014\",\"brand_id\":null,\"cost\":\"22000000\",\"price\":\"22000000\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:53:09', '2022-02-08 02:53:09'),
(1028, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:53:09', '2022-02-08 02:53:09'),
(1029, 1, 'sc_admin/product/edit/18', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:53:53', '2022-02-08 02:53:53'),
(1030, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 02:54:07', '2022-02-08 02:54:07'),
(1031, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644288865474\"}', '2022-02-08 02:54:08', '2022-02-08 02:54:08'),
(1032, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644288865475\"}', '2022-02-08 02:54:08', '2022-02-08 02:54:08'),
(1033, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644288865476\"}', '2022-02-08 02:54:08', '2022-02-08 02:54:08'),
(1034, 1, 'sc_admin/uploads/delete', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"4-9114.jpg\",\"6-2352.jpg\",\"8-3270.jpg\",\"img-1.jpg\",\"img-10.jpg\",\"img-15.jpg\",\"img-14.jpg\",\"img-12.jpg\",\"img-11.jpg\",\"img-13.jpg\",\"img-16.jpg\",\"img-17.jpg\",\"img-18.jpg\",\"img-19.jpg\",\"img-2.jpg\",\"img-26.jpg\",\"img-23.jpg\",\"img-22.jpg\",\"img-20.jpg\",\"img-21.jpg\",\"img-27.jpg\",\"img-3.jpg\",\"img-32.jpg\",\"img-33.jpg\",\"img-34.jpg\",\"img-43.jpg\",\"img-42.jpg\",\"img-41.jpg\",\"img-40.jpg\",\"img-4.jpg\",\"img-44.jpg\"],\"_\":\"1644288865477\"}', '2022-02-08 02:54:28', '2022-02-08 02:54:28'),
(1035, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644288865478\"}', '2022-02-08 02:54:29', '2022-02-08 02:54:29'),
(1036, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644288865479\"}', '2022-02-08 02:54:29', '2022-02-08 02:54:29'),
(1037, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 02:55:38', '2022-02-08 02:55:38'),
(1038, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644288955886\"}', '2022-02-08 02:55:38', '2022-02-08 02:55:38'),
(1039, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644288955885\"}', '2022-02-08 02:55:38', '2022-02-08 02:55:38'),
(1040, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644288955887\"}', '2022-02-08 02:55:39', '2022-02-08 02:55:39'),
(1041, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:55:45', '2022-02-08 02:55:45'),
(1042, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644288955888\"}', '2022-02-08 02:55:45', '2022-02-08 02:55:45'),
(1043, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644288955889\"}', '2022-02-08 02:55:45', '2022-02-08 02:55:45'),
(1044, 1, 'sc_admin/product/edit/18', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\",\"sku\":\"1\",\"alias\":\"ban-ghe-an-dep-go-soi-thiet-ke-hien-dai-ba1014\",\"brand_id\":null,\"cost\":null,\"price\":\"22000000\",\"tax_id\":\"0\",\"price_promotion\":\"18000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 02:55:50', '2022-02-08 02:55:50'),
(1045, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:55:51', '2022-02-08 02:55:51'),
(1046, 1, 'sc_admin/product/edit/18', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 02:56:25', '2022-02-08 02:56:25'),
(1047, 1, 'sc_admin/store_info', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:16:40', '2022-02-08 03:16:40'),
(1048, 1, 'sc_admin/url_config', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:16:43', '2022-02-08 03:16:43'),
(1049, 1, 'sc_admin/setting', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:16:46', '2022-02-08 03:16:46'),
(1050, 1, 'sc_admin/setting/update_info', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"SITE_CURRENCY\",\"value\":\"VND\",\"pk\":null,\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:16:54', '2022-02-08 03:16:54'),
(1051, 1, 'sc_admin/setting/update_info', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"SITE_LANGUAGE\",\"value\":\"vi\",\"pk\":null,\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:16:58', '2022-02-08 03:16:58'),
(1052, 1, 'sc_admin/setting/update_info', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"ADMIN_NAME\",\"value\":\"Anh An Ph\\u00fa Admin\",\"pk\":null,\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:17:16', '2022-02-08 03:17:16'),
(1053, 1, 'sc_admin/setting/update_info', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"ADMIN_TITLE\",\"value\":\"Anh An Ph\\u00fa Admin\",\"pk\":null,\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:17:22', '2022-02-08 03:17:22'),
(1054, 1, 'sc_admin/news', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:17:58', '2022-02-08 03:17:58'),
(1055, 1, 'sc_admin/currency', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:18', '2022-02-08 03:21:18'),
(1056, 1, 'sc_admin/currency', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:28', '2022-02-08 03:21:28'),
(1057, 1, 'sc_admin/currency/edit/2', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:32', '2022-02-08 03:21:32'),
(1058, 1, 'sc_admin/currency/edit/2', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:21:38', '2022-02-08 03:21:38'),
(1059, 1, 'sc_admin/currency', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:39', '2022-02-08 03:21:39'),
(1060, 1, 'sc_admin/currency/edit/2', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:44', '2022-02-08 03:21:44'),
(1061, 1, 'sc_admin/currency/edit/2', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\".\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:21:49', '2022-02-08 03:21:49'),
(1062, 1, 'sc_admin/currency', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:50', '2022-02-08 03:21:50'),
(1063, 1, 'sc_admin/currency/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:55', '2022-02-08 03:21:55'),
(1064, 1, 'sc_admin/currency/edit/1', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\".\",\"sort\":\"0\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:21:58', '2022-02-08 03:21:58'),
(1065, 1, 'sc_admin/currency', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:21:58', '2022-02-08 03:21:58'),
(1066, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:28:03', '2022-02-08 03:28:03'),
(1067, 1, 'sc_admin/product/edit/18', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:28:56', '2022-02-08 03:28:56'),
(1068, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:29:02', '2022-02-08 03:29:02'),
(1069, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644290959926\"}', '2022-02-08 03:29:02', '2022-02-08 03:29:02'),
(1070, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644290959925\"}', '2022-02-08 03:29:02', '2022-02-08 03:29:02'),
(1071, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644290959927\"}', '2022-02-08 03:29:03', '2022-02-08 03:29:03'),
(1072, 1, 'sc_admin/uploads/delete', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\"],\"_\":\"1644290959928\"}', '2022-02-08 03:29:08', '2022-02-08 03:29:08'),
(1073, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644290959929\"}', '2022-02-08 03:29:08', '2022-02-08 03:29:08'),
(1074, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644290959930\"}', '2022-02-08 03:29:09', '2022-02-08 03:29:09'),
(1075, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:29:16', '2022-02-08 03:29:16'),
(1076, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644290959931\"}', '2022-02-08 03:29:16', '2022-02-08 03:29:16'),
(1077, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644290959932\"}', '2022-02-08 03:29:17', '2022-02-08 03:29:17'),
(1078, 1, 'sc_admin/product/edit/18', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\",\"sku\":\"1\",\"alias\":\"ban-ghe-an-dep-go-soi-thiet-ke-hien-dai-ba1014\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"22000000\",\"tax_id\":\"0\",\"price_promotion\":\"18000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:29:22', '2022-02-08 03:29:22'),
(1079, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:29:22', '2022-02-08 03:29:22'),
(1080, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:29:57', '2022-02-08 03:29:57'),
(1081, 1, 'sc_admin/category/edit/22', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:32:49', '2022-02-08 03:32:49'),
(1082, 1, 'sc_admin/category/edit/22', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 c\\u00e2y\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"dong-ho-cay\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/64761988_1284990761665375_142021073691475968_n-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:32:56', '2022-02-08 03:32:56'),
(1083, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:32:57', '2022-02-08 03:32:57'),
(1084, 1, 'sc_admin/category/edit/21', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:04', '2022-02-08 03:33:04'),
(1085, 1, 'sc_admin/category/edit/21', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n th\\u1edd\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ban-tho\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/sap-tho-14-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:07', '2022-02-08 03:33:07'),
(1086, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:07', '2022-02-08 03:33:07'),
(1087, 1, 'sc_admin/category/edit/20', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:15', '2022-02-08 03:33:15'),
(1088, 1, 'sc_admin/category/edit/20', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"T\\u1ee7 b\\u1ebfp\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"tu-bep\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/5732c93307ecfab2a3fd-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:18', '2022-02-08 03:33:18'),
(1089, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:18', '2022-02-08 03:33:18'),
(1090, 1, 'sc_admin/category/edit/20', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"T\\u1ee7 b\\u1ebfp\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"tu-bep\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/5732c93307ecfab2a3fd-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:18', '2022-02-08 03:33:18'),
(1091, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:19', '2022-02-08 03:33:19'),
(1092, 1, 'sc_admin/category/edit/19', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:21', '2022-02-08 03:33:21'),
(1093, 1, 'sc_admin/category/edit/19', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"T\\u1ee7 r\\u01b0\\u1ee3u\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"tu-ruou\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/ruou-17-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:24', '2022-02-08 03:33:24'),
(1094, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:25', '2022-02-08 03:33:25'),
(1095, 1, 'sc_admin/category/edit/18', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:27', '2022-02-08 03:33:27'),
(1096, 1, 'sc_admin/category/edit/18', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tranh g\\u1ed7\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"tranh-go\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/thuan-buom-1-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:30', '2022-02-08 03:33:30'),
(1097, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:31', '2022-02-08 03:33:31'),
(1098, 1, 'sc_admin/category/edit/17', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:34', '2022-02-08 03:33:34'),
(1099, 1, 'sc_admin/category/edit/17', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"K\\u1ec7 tivi\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ke-tivi\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/ke-tivi-7-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:38', '2022-02-08 03:33:38'),
(1100, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:38', '2022-02-08 03:33:38'),
(1101, 1, 'sc_admin/category/edit/16', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:41', '2022-02-08 03:33:41'),
(1102, 1, 'sc_admin/category/edit/16', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u01b0\\u1eddng, t\\u1ee7 \\u00e1o\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"giuong-tu-ao\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/8640646b80b47dea24a5-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:44', '2022-02-08 03:33:44'),
(1103, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:45', '2022-02-08 03:33:45'),
(1104, 1, 'sc_admin/category/edit/15', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:47', '2022-02-08 03:33:47'),
(1105, 1, 'sc_admin/category/edit/15', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n gh\\u1ebf ph\\u00f2ng \\u0103n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ban-ghe-phong-an\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/be3c90ff0b20f67eaf31-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:50', '2022-02-08 03:33:50'),
(1106, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:50', '2022-02-08 03:33:50'),
(1107, 1, 'sc_admin/category/edit/14', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:52', '2022-02-08 03:33:52'),
(1108, 1, 'sc_admin/category/edit/14', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"B\\u00e0n gh\\u1ebf ph\\u00f2ng kh\\u00e1ch\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"ban-ghe-phong-khach\",\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/category\\/4094d53848e7b5b9ecf6-300x300.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:33:56', '2022-02-08 03:33:56'),
(1109, 1, 'sc_admin/category', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:33:57', '2022-02-08 03:33:57'),
(1110, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:36:07', '2022-02-08 03:36:07'),
(1111, 1, 'sc_admin/product/edit/18', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:36:09', '2022-02-08 03:36:09'),
(1112, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:36:12', '2022-02-08 03:36:12'),
(1113, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291390789\"}', '2022-02-08 03:36:13', '2022-02-08 03:36:13'),
(1114, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291390790\"}', '2022-02-08 03:36:13', '2022-02-08 03:36:13'),
(1115, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291390791\"}', '2022-02-08 03:36:14', '2022-02-08 03:36:14'),
(1116, 1, 'sc_admin/uploads/crop', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"img\":\"bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\",\"_\":\"1644291390792\"}', '2022-02-08 03:36:20', '2022-02-08 03:36:20'),
(1117, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:36:29', '2022-02-08 03:36:29'),
(1118, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291407054\"}', '2022-02-08 03:36:29', '2022-02-08 03:36:29'),
(1119, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291407055\"}', '2022-02-08 03:36:29', '2022-02-08 03:36:29'),
(1120, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291407056\"}', '2022-02-08 03:36:30', '2022-02-08 03:36:30'),
(1121, 1, 'sc_admin/uploads/delete', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\"],\"_\":\"1644291407057\"}', '2022-02-08 03:36:34', '2022-02-08 03:36:34'),
(1122, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:36:36', '2022-02-08 03:36:36'),
(1123, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291414425\"}', '2022-02-08 03:36:37', '2022-02-08 03:36:37'),
(1124, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291414424\"}', '2022-02-08 03:36:37', '2022-02-08 03:36:37'),
(1125, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291414426\"}', '2022-02-08 03:36:37', '2022-02-08 03:36:37'),
(1126, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:36:45', '2022-02-08 03:36:45'),
(1127, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644291414427\"}', '2022-02-08 03:36:46', '2022-02-08 03:36:46'),
(1128, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291414428\"}', '2022-02-08 03:36:46', '2022-02-08 03:36:46'),
(1129, 1, 'sc_admin/product/edit/18', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\",\"sku\":\"1\",\"alias\":\"ban-ghe-an-dep-go-soi-thiet-ke-hien-dai-ba1014\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"22000000\",\"tax_id\":\"0\",\"price_promotion\":\"18000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:36:51', '2022-02-08 03:36:51'),
(1130, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:36:51', '2022-02-08 03:36:51'),
(1131, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:37:24', '2022-02-08 03:37:24'),
(1132, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:38:06', '2022-02-08 03:38:06'),
(1133, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291504727\"}', '2022-02-08 03:38:07', '2022-02-08 03:38:07'),
(1134, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291504728\"}', '2022-02-08 03:38:07', '2022-02-08 03:38:07'),
(1135, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291504729\"}', '2022-02-08 03:38:07', '2022-02-08 03:38:07'),
(1136, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:38:11', '2022-02-08 03:38:11'),
(1137, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644291504730\"}', '2022-02-08 03:38:11', '2022-02-08 03:38:11'),
(1138, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291504731\"}', '2022-02-08 03:38:11', '2022-02-08 03:38:11'),
(1139, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 Xoan \\u0110\\u00e0o M\\u1eb7t \\u0110\\u00e1 6 Gh\\u1ebf 1m6 -BA1010\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;&nbsp;<\\/p>\"}},\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-xoan-dao-mat-da-6-ghe-1m6-ba1010-5588-1.png\",\"sku\":\"1\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"17500000\",\"tax_id\":\"0\",\"price_promotion\":\"15000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:38:15', '2022-02-08 03:38:15'),
(1140, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:38:15', '2022-02-08 03:38:15'),
(1141, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 Xoan \\u0110\\u00e0o M\\u1eb7t \\u0110\\u00e1 6 Gh\\u1ebf 1m6 -BA1010\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-xoan-dao-mat-da-6-ghe-1m6-ba1010-5588-1.png\",\"sku\":\"1\",\"alias\":\"ban-ghe-an-dep-go-xoan-dao-mat-da-6-ghe-1m6-ba1010\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"17500000\",\"tax_id\":\"0\",\"price_promotion\":\"15000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:38:31', '2022-02-08 03:38:31'),
(1142, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:38:31', '2022-02-08 03:38:31'),
(1143, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 Xoan \\u0110\\u00e0o M\\u1eb7t \\u0110\\u00e1 6 Gh\\u1ebf 1m6 -BA1010\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-xoan-dao-mat-da-6-ghe-1m6-ba1010-5588-1.png\",\"sku\":\"2\",\"alias\":\"ban-ghe-an-dep-go-xoan-dao-mat-da-6-ghe-1m6-ba1010\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"17500000\",\"tax_id\":\"0\",\"price_promotion\":\"15000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:38:39', '2022-02-08 03:38:39'),
(1144, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:38:40', '2022-02-08 03:38:40'),
(1145, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:39:02', '2022-02-08 03:39:02'),
(1146, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:44:10', '2022-02-08 03:44:10'),
(1147, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291868324\"}', '2022-02-08 03:44:11', '2022-02-08 03:44:11'),
(1148, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291868325\"}', '2022-02-08 03:44:11', '2022-02-08 03:44:11'),
(1149, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291868326\"}', '2022-02-08 03:44:11', '2022-02-08 03:44:11'),
(1150, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:44:17', '2022-02-08 03:44:17'),
(1151, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:44:17', '2022-02-08 03:44:17'),
(1152, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:44:17', '2022-02-08 03:44:17'),
(1153, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:44:17', '2022-02-08 03:44:17'),
(1154, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644291868329\"}', '2022-02-08 03:44:18', '2022-02-08 03:44:18'),
(1155, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644291868328\"}', '2022-02-08 03:44:18', '2022-02-08 03:44:18'),
(1156, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644291868327\"}', '2022-02-08 03:44:18', '2022-02-08 03:44:18'),
(1157, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644291868330\"}', '2022-02-08 03:44:18', '2022-02-08 03:44:18'),
(1158, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291868333\"}', '2022-02-08 03:44:19', '2022-02-08 03:44:19'),
(1159, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291868331\"}', '2022-02-08 03:44:19', '2022-02-08 03:44:19'),
(1160, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291868332\"}', '2022-02-08 03:44:19', '2022-02-08 03:44:19');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1161, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291868334\"}', '2022-02-08 03:44:19', '2022-02-08 03:44:19'),
(1162, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:44:26', '2022-02-08 03:44:26'),
(1163, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291884241\"}', '2022-02-08 03:44:27', '2022-02-08 03:44:27'),
(1164, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291884240\"}', '2022-02-08 03:44:27', '2022-02-08 03:44:27'),
(1165, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291884242\"}', '2022-02-08 03:44:27', '2022-02-08 03:44:27'),
(1166, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:44:33', '2022-02-08 03:44:33'),
(1167, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291891503\"}', '2022-02-08 03:44:34', '2022-02-08 03:44:34'),
(1168, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291891502\"}', '2022-02-08 03:44:34', '2022-02-08 03:44:34'),
(1169, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291891504\"}', '2022-02-08 03:44:34', '2022-02-08 03:44:34'),
(1170, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:44:40', '2022-02-08 03:44:40'),
(1171, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291898471\"}', '2022-02-08 03:44:41', '2022-02-08 03:44:41'),
(1172, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291898470\"}', '2022-02-08 03:44:41', '2022-02-08 03:44:41'),
(1173, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291898472\"}', '2022-02-08 03:44:41', '2022-02-08 03:44:41'),
(1174, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:44:50', '2022-02-08 03:44:50'),
(1175, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291908687\"}', '2022-02-08 03:44:51', '2022-02-08 03:44:51'),
(1176, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644291908688\"}', '2022-02-08 03:44:51', '2022-02-08 03:44:51'),
(1177, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644291908689\"}', '2022-02-08 03:44:52', '2022-02-08 03:44:52'),
(1178, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Salon h\\u01b0\\u01a1ng \\u0111\\u00e1 ho\\u00e0ng gia - SL3003\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;&nbsp;<\\/p>\"}},\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239305-9c4655.jpg\",\"sub_image\":[\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239303-4d8d0c.jpg\",\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239308-e5a833.jpg\",\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239310-5bf7f3.jpg\"],\"sku\":\"3\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"183330000\",\"tax_id\":\"0\",\"price_promotion\":\"165000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:44:58', '2022-02-08 03:44:58'),
(1179, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:44:58', '2022-02-08 03:44:58'),
(1180, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Salon h\\u01b0\\u01a1ng \\u0111\\u00e1 ho\\u00e0ng gia - SL3003\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239305-9c4655.jpg\",\"sub_image\":[\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239303-4d8d0c.jpg\",\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239308-e5a833.jpg\",\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/salon-huong-da-hoang-gia--sl3003-1638239310-5bf7f3.jpg\"],\"sku\":\"3\",\"alias\":\"salon-huong-da-hoang-gia-sl3003\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"183330000\",\"tax_id\":\"0\",\"price_promotion\":\"165000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:45:18', '2022-02-08 03:45:18'),
(1181, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:45:19', '2022-02-08 03:45:19'),
(1182, 1, 'sc_admin/product/edit/19', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:45:22', '2022-02-08 03:45:22'),
(1183, 1, 'sc_admin/product/edit/19', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 Xoan \\u0110\\u00e0o M\\u1eb7t \\u0110\\u00e1 6 Gh\\u1ebf 1m6 -BA1010\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"15\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-xoan-dao-mat-da-6-ghe-1m6-ba1010-5588-1.png\",\"sku\":\"2\",\"alias\":\"ban-ghe-an-dep-go-xoan-dao-mat-da-6-ghe-1m6-ba1010\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"17500000\",\"tax_id\":\"0\",\"price_promotion\":\"15000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:45:30', '2022-02-08 03:45:30'),
(1184, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:45:31', '2022-02-08 03:45:31'),
(1185, 1, 'sc_admin/product/edit/18', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:45:33', '2022-02-08 03:45:33'),
(1186, 1, 'sc_admin/product/edit/18', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n Gh\\u1ebf \\u0102n \\u0110\\u1eb9p G\\u1ed7 S\\u1ed3i Thi\\u1ebft K\\u1ebf Hi\\u1ec7n \\u0110\\u1ea1i - BA1014\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/p>\"}},\"category\":[\"15\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\",\"sku\":\"1\",\"alias\":\"ban-ghe-an-dep-go-soi-thiet-ke-hien-dai-ba1014\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"22000000\",\"tax_id\":\"0\",\"price_promotion\":\"18000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:45:45', '2022-02-08 03:45:45'),
(1187, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:45:45', '2022-02-08 03:45:45'),
(1188, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:46:49', '2022-02-08 03:46:49'),
(1189, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:47:11', '2022-02-08 03:47:11'),
(1190, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644292049398\"}', '2022-02-08 03:47:12', '2022-02-08 03:47:12'),
(1191, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644292049399\"}', '2022-02-08 03:47:12', '2022-02-08 03:47:12'),
(1192, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644292049400\"}', '2022-02-08 03:47:12', '2022-02-08 03:47:12'),
(1193, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:47:17', '2022-02-08 03:47:17'),
(1194, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644292049401\"}', '2022-02-08 03:47:18', '2022-02-08 03:47:18'),
(1195, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644292049402\"}', '2022-02-08 03:47:18', '2022-02-08 03:47:18'),
(1196, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Sofa g\\u1ed7 S\\u1ed3i s\\u01a1n m\\u00e0u \\u00f3c ch\\u00f3 - SF3012\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;<\\/p>\"}},\"category\":[\"14\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/sofa-go-soi-son-mau-oc-cho--sf3012-1640673745-24ebae.jpg\",\"sku\":\"4\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"55560000\",\"tax_id\":\"0\",\"price_promotion\":\"50000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:47:41', '2022-02-08 03:47:41'),
(1197, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:47:42', '2022-02-08 03:47:42'),
(1198, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:49:25', '2022-02-08 03:49:25'),
(1199, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:50:18', '2022-02-08 03:50:18'),
(1200, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644292235940\"}', '2022-02-08 03:50:18', '2022-02-08 03:50:18'),
(1201, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644292235939\"}', '2022-02-08 03:50:18', '2022-02-08 03:50:18'),
(1202, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644292235941\"}', '2022-02-08 03:50:19', '2022-02-08 03:50:19'),
(1203, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:50:22', '2022-02-08 03:50:22'),
(1204, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644292235942\"}', '2022-02-08 03:50:23', '2022-02-08 03:50:23'),
(1205, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644292235943\"}', '2022-02-08 03:50:23', '2022-02-08 03:50:23'),
(1206, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Gi\\u01b0\\u1eddng Ng\\u1ee7 \\u0110\\u1eb9p G\\u1ed7 \\u0110inh H\\u01b0\\u01a1ng \\u0110u\\u00f4i Cong - GN1009\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;<\\/p>\"}},\"category\":[\"16\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/giuong-ngu-duoi-cong-1641788105-f62fdb.jpg\",\"sku\":\"5\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"18750000\",\"tax_id\":\"0\",\"price_promotion\":\"15000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:50:53', '2022-02-08 03:50:53'),
(1207, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:50:53', '2022-02-08 03:50:53'),
(1208, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:51:03', '2022-02-08 03:51:03'),
(1209, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"type\":\"product\"}', '2022-02-08 03:52:25', '2022-02-08 03:52:25'),
(1210, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644292363050\"}', '2022-02-08 03:52:25', '2022-02-08 03:52:25'),
(1211, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1644292363049\"}', '2022-02-08 03:52:26', '2022-02-08 03:52:26'),
(1212, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644292363051\"}', '2022-02-08 03:52:26', '2022-02-08 03:52:26'),
(1213, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:52:31', '2022-02-08 03:52:31'),
(1214, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644292363052\"}', '2022-02-08 03:52:31', '2022-02-08 03:52:31'),
(1215, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644292363053\"}', '2022-02-08 03:52:31', '2022-02-08 03:52:31'),
(1216, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:52:41', '2022-02-08 03:52:41'),
(1217, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1644292363054\"}', '2022-02-08 03:52:41', '2022-02-08 03:52:41'),
(1218, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"_\":\"1644292363055\"}', '2022-02-08 03:52:42', '2022-02-08 03:52:42'),
(1219, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Gi\\u01b0\\u1eddng \\u0110\\u1eb9p G\\u1ed7 C\\u0103m Xe B\\u1ecdc N\\u1ec7m Cao C\\u1ea5p - GN1036\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;<\\/p>\"}},\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/giuong-ngu-go-cam-xe-boc-nem-cao-cap-gn1036-5638-1.jpg\",\"sku\":\"6\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"35000000\",\"tax_id\":\"0\",\"price_promotion\":\"32000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:52:48', '2022-02-08 03:52:48'),
(1220, 1, 'sc_admin/product/create', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:52:48', '2022-02-08 03:52:48'),
(1221, 1, 'sc_admin/product/create', 'POST', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Gi\\u01b0\\u1eddng \\u0110\\u1eb9p G\\u1ed7 C\\u0103m Xe B\\u1ecdc N\\u1ec7m Cao C\\u1ea5p - GN1036\",\"keyword\":null,\"description\":null,\"content\":\"<p>&nbsp; &nbsp;<\\/p>\"}},\"category\":[\"16\"],\"image\":\"https:\\/\\/anhanphu.kennatech.vn\\/data\\/product\\/giuong-ngu-go-cam-xe-boc-nem-cao-cap-gn1036-5638-1.jpg\",\"sku\":\"6\",\"alias\":\"giuong-dep-go-cam-xe-boc-nem-cao-cap-gn1036\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"35000000\",\"tax_id\":\"0\",\"price_promotion\":\"32000000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ajWNQQ2czRmLGnFBsyBcv483hR3UtV5cRCSquqXk\"}', '2022-02-08 03:52:55', '2022-02-08 03:52:55'),
(1222, 1, 'sc_admin/product', 'GET', '27.71.123.196', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '[]', '2022-02-08 03:52:56', '2022-02-08 03:52:56'),
(1223, 1, 'sc_admin', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '[]', '2022-02-09 10:07:22', '2022-02-09 10:07:22'),
(1224, 1, 'sc_admin/page', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '[]', '2022-02-09 10:07:28', '2022-02-09 10:07:28'),
(1225, 1, 'sc_admin/page/edit/1', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '[]', '2022-02-09 10:07:30', '2022-02-09 10:07:30'),
(1226, 1, 'sc_admin/uploads', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"type\":\"page\"}', '2022-02-09 10:07:35', '2022-02-09 10:07:35'),
(1227, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1644401275089\"}', '2022-02-09 10:07:37', '2022-02-09 10:07:37'),
(1228, 1, 'sc_admin/uploads/errors', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1644401275090\"}', '2022-02-09 10:07:37', '2022-02-09 10:07:37'),
(1229, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"working_dir\":null,\"type\":\"page\",\"sort_type\":\"alphabetic\",\"_\":\"1644401275091\"}', '2022-02-09 10:07:38', '2022-02-09 10:07:38'),
(1230, 1, 'sc_admin/uploads/upload', 'POST', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"_token\":\"lD0fe3wKelkxZPZQX49NgsUiYRuM4RCIsgHTuFiP\"}', '2022-02-09 10:07:49', '2022-02-09 10:07:49'),
(1231, 1, 'sc_admin/uploads/folders', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"_\":\"1644401275092\"}', '2022-02-09 10:07:51', '2022-02-09 10:07:51'),
(1232, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"sort_type\":\"alphabetic\",\"_\":\"1644401275093\"}', '2022-02-09 10:07:51', '2022-02-09 10:07:51'),
(1233, 1, 'sc_admin/uploads/jsonitems', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"sort_type\":\"alphabetic\",\"_\":\"1644401275094\"}', '2022-02-09 10:09:18', '2022-02-09 10:09:18'),
(1234, 1, 'sc_admin', 'GET', '27.78.16.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36', '[]', '2022-02-17 14:22:24', '2022-02-17 14:22:24'),
(1235, 1, 'sc_admin/store_info', 'GET', '27.78.16.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36', '[]', '2022-02-17 14:22:36', '2022-02-17 14:22:36'),
(1236, 1, 'sc_admin/setting', 'GET', '27.78.16.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36', '[]', '2022-02-17 14:22:48', '2022-02-17 14:22:48'),
(1237, 1, 'sc_admin/setting/update_info', 'POST', '27.78.16.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36', '{\"name\":\"APP_DEBUG\",\"value\":\"off\",\"pk\":null,\"_token\":\"8QkL6vpAMYo2g5KFEzipL00qjF5GojfbDpxsOLfH\"}', '2022-02-17 14:23:27', '2022-02-17 14:23:27'),
(1238, 1, 'sc_admin/setting/update_info', 'POST', '27.78.16.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36', '{\"name\":\"APP_DEBUG\",\"value\":\"off\",\"pk\":null,\"_token\":\"8QkL6vpAMYo2g5KFEzipL00qjF5GojfbDpxsOLfH\"}', '2022-02-17 14:23:44', '2022-02-17 14:23:44'),
(1239, 1, 'sc_admin/setting/update_info', 'POST', '27.78.16.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Safari/537.36', '{\"name\":\"APP_DEBUG\",\"value\":\"on\",\"pk\":null,\"_token\":\"8QkL6vpAMYo2g5KFEzipL00qjF5GojfbDpxsOLfH\"}', '2022-02-17 14:44:39', '2022-02-17 14:44:39'),
(1240, 1, 'sc_admin', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '[]', '2022-02-18 02:32:04', '2022-02-18 02:32:04'),
(1241, 1, 'sc_admin', 'GET', '123.21.241.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.50', '[]', '2022-02-18 03:10:56', '2022-02-18 03:10:56'),
(1242, 1, 'sc_admin/order', 'GET', '123.21.241.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.50', '[]', '2022-02-18 03:18:15', '2022-02-18 03:18:15'),
(1243, 1, 'sc_admin', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', '[]', '2022-02-23 02:12:24', '2022-02-23 02:12:24'),
(1244, 1, 'sc_admin/store_info', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', '[]', '2022-02-23 02:12:41', '2022-02-23 02:12:41'),
(1245, 1, 'sc_admin/setting', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', '[]', '2022-02-23 02:12:57', '2022-02-23 02:12:57'),
(1246, 1, 'sc_admin/setting/update_info', 'POST', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', '{\"name\":\"APP_DEBUG\",\"value\":\"off\",\"pk\":null,\"_token\":\"IhsZJdUVneTZUJFCq7bN0hVCRCfGi7BRUgcqIDMN\"}', '2022-02-23 02:13:01', '2022-02-23 02:13:01'),
(1247, 1, 'sc_admin/setting', 'GET', '27.71.123.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.62', '[]', '2022-02-23 02:13:04', '2022-02-23 02:13:04'),
(1248, 1, 'sc_admin', 'GET', '14.191.228.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.52', '[]', '2022-03-27 02:10:09', '2022-03-27 02:10:09'),
(1249, 1, 'sc_admin/auth/setting', 'GET', '14.191.228.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.52', '[]', '2022-03-27 02:10:18', '2022-03-27 02:10:18'),
(1250, 1, 'sc_admin', 'GET', '14.191.228.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.52', '[]', '2022-03-27 02:10:39', '2022-03-27 02:10:39'),
(1251, 1, 'sc_admin/url_config', 'GET', '14.191.228.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.52', '[]', '2022-03-28 08:30:22', '2022-03-28 08:30:22'),
(1252, 1, 'sc_admin/setting', 'GET', '14.191.228.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.52', '[]', '2022-03-28 08:30:49', '2022-03-28 08:30:49'),
(1253, 1, 'sc_admin', 'GET', '27.71.122.185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.109 Safari/537.36 OPR/84.0.4316.42', '[]', '2022-04-06 02:12:02', '2022-04-06 02:12:02'),
(1254, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 03:54:28', '2022-04-12 03:54:28'),
(1255, 1, 'sc_admin/link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 03:54:37', '2022-04-12 03:54:37'),
(1256, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 03:54:44', '2022-04-12 03:54:44'),
(1257, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"Fresh_Mart\"}', '2022-04-12 03:54:48', '2022-04-12 03:54:48'),
(1258, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 03:54:49', '2022-04-12 03:54:49'),
(1259, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"default-new\"}', '2022-04-12 03:55:06', '2022-04-12 03:55:06'),
(1260, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 03:55:06', '2022-04-12 03:55:06'),
(1261, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"Fresh_Mart\"}', '2022-04-12 03:55:17', '2022-04-12 03:55:17'),
(1262, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 03:55:18', '2022-04-12 03:55:18'),
(1263, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"default-new\"}', '2022-04-12 04:02:25', '2022-04-12 04:02:25'),
(1264, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:02:26', '2022-04-12 04:02:26'),
(1265, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:02:59', '2022-04-12 04:02:59'),
(1266, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:06:43', '2022-04-12 04:06:43'),
(1267, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:06:49', '2022-04-12 04:06:49'),
(1268, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"fresh-mart\"}', '2022-04-12 04:06:58', '2022-04-12 04:06:58'),
(1269, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:06:58', '2022-04-12 04:06:58'),
(1270, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:11:53', '2022-04-12 04:11:53'),
(1271, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:12:01', '2022-04-12 04:12:01'),
(1272, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"23\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:05', '2022-04-12 04:12:05'),
(1273, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:05', '2022-04-12 04:12:05'),
(1274, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"22\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:08', '2022-04-12 04:12:08'),
(1275, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:08', '2022-04-12 04:12:08'),
(1276, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"21\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:11', '2022-04-12 04:12:11'),
(1277, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:11', '2022-04-12 04:12:11'),
(1278, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"20\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:14', '2022-04-12 04:12:14'),
(1279, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:15', '2022-04-12 04:12:15'),
(1280, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"19\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:17', '2022-04-12 04:12:17'),
(1281, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:17', '2022-04-12 04:12:17'),
(1282, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"18\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:20', '2022-04-12 04:12:20'),
(1283, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:21', '2022-04-12 04:12:21'),
(1284, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:12:23', '2022-04-12 04:12:23'),
(1285, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:25', '2022-04-12 04:12:25'),
(1286, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:26', '2022-04-12 04:12:26'),
(1287, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\"}', '2022-04-12 04:12:28', '2022-04-12 04:12:28'),
(1288, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-12 04:12:28', '2022-04-12 04:12:28'),
(1289, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:12:48', '2022-04-12 04:12:48'),
(1290, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:12:52', '2022-04-12 04:12:52'),
(1291, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"noithat\"}', '2022-04-12 04:17:01', '2022-04-12 04:17:01'),
(1292, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:17:01', '2022-04-12 04:17:01'),
(1293, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"fresh-mart\"}', '2022-04-12 04:17:25', '2022-04-12 04:17:25'),
(1294, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:17:25', '2022-04-12 04:17:25'),
(1295, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"noithat\"}', '2022-04-12 04:18:01', '2022-04-12 04:18:01'),
(1296, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:18:01', '2022-04-12 04:18:01'),
(1297, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:19:15', '2022-04-12 04:19:15'),
(1298, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:19:24', '2022-04-12 04:19:24'),
(1299, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"w5lYls9727EWusQ4jgi96GFZkF9CeHObpeOmNdQk\",\"key\":\"fresh-mart\"}', '2022-04-12 04:19:32', '2022-04-12 04:19:32'),
(1300, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-12 04:19:33', '2022-04-12 04:19:33'),
(1301, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 02:31:45', '2022-04-13 02:31:45'),
(1302, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 02:31:58', '2022-04-13 02:31:58'),
(1303, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\",\"key\":\"book\"}', '2022-04-13 02:32:04', '2022-04-13 02:32:04'),
(1304, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 02:32:05', '2022-04-13 02:32:05'),
(1305, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\",\"key\":\"fresh-mart\"}', '2022-04-13 02:32:37', '2022-04-13 02:32:37'),
(1306, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 02:32:38', '2022-04-13 02:32:38'),
(1307, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 02:55:00', '2022-04-13 02:55:00'),
(1308, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Fresh Mart\",\"pk\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 02:55:26', '2022-04-13 02:55:26'),
(1309, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:01:12', '2022-04-13 03:01:12'),
(1310, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:01:15', '2022-04-13 03:01:15'),
(1311, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:01:18', '2022-04-13 03:01:18'),
(1312, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649818880597\"}', '2022-04-13 03:01:21', '2022-04-13 03:01:21'),
(1313, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649818880596\"}', '2022-04-13 03:01:21', '2022-04-13 03:01:21'),
(1314, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649818880598\"}', '2022-04-13 03:01:22', '2022-04-13 03:01:22'),
(1315, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:02:00', '2022-04-13 03:02:00'),
(1316, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1649818880599\"}', '2022-04-13 03:02:01', '2022-04-13 03:02:01'),
(1317, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649818880600\"}', '2022-04-13 03:02:01', '2022-04-13 03:02:01'),
(1318, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2-banner-1.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:02:09', '2022-04-13 03:02:09'),
(1319, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:02:10', '2022-04-13 03:02:10'),
(1320, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:02:13', '2022-04-13 03:02:13'),
(1321, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:02:15', '2022-04-13 03:02:15'),
(1322, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649818935595\"}', '2022-04-13 03:02:15', '2022-04-13 03:02:15'),
(1323, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649818935596\"}', '2022-04-13 03:02:15', '2022-04-13 03:02:15');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1324, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649818935597\"}', '2022-04-13 03:02:16', '2022-04-13 03:02:16'),
(1325, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:02:23', '2022-04-13 03:02:23'),
(1326, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1649818935598\"}', '2022-04-13 03:02:24', '2022-04-13 03:02:24'),
(1327, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649818935599\"}', '2022-04-13 03:02:24', '2022-04-13 03:02:24'),
(1328, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2-banner-2.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:02:32', '2022-04-13 03:02:32'),
(1329, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:02:32', '2022-04-13 03:02:32'),
(1330, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:02:35', '2022-04-13 03:02:35'),
(1331, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:02:54', '2022-04-13 03:02:54'),
(1332, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649818974421\"}', '2022-04-13 03:02:54', '2022-04-13 03:02:54'),
(1333, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649818974422\"}', '2022-04-13 03:02:54', '2022-04-13 03:02:54'),
(1334, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649818974423\"}', '2022-04-13 03:02:55', '2022-04-13 03:02:55'),
(1335, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:03:03', '2022-04-13 03:03:03'),
(1336, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1649818974424\"}', '2022-04-13 03:03:03', '2022-04-13 03:03:03'),
(1337, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649818974425\"}', '2022-04-13 03:03:04', '2022-04-13 03:03:04'),
(1338, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2-banner-3.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:03:11', '2022-04-13 03:03:11'),
(1339, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:03:11', '2022-04-13 03:03:11'),
(1340, 1, 'sc_admin/banner/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:14:36', '2022-04-13 03:14:36'),
(1341, 1, 'sc_admin/banner/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2-banner-3.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:14:44', '2022-04-13 03:14:44'),
(1342, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:14:44', '2022-04-13 03:14:44'),
(1343, 1, 'sc_admin/banner/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:14:48', '2022-04-13 03:14:48'),
(1344, 1, 'sc_admin/banner/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2-banner-2.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:14:51', '2022-04-13 03:14:51'),
(1345, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:14:52', '2022-04-13 03:14:52'),
(1346, 1, 'sc_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:14:54', '2022-04-13 03:14:54'),
(1347, 1, 'sc_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2-banner-1.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:14:57', '2022-04-13 03:14:57'),
(1348, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:14:57', '2022-04-13 03:14:57'),
(1349, 1, 'sc_admin/banner/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:16:36', '2022-04-13 03:16:36'),
(1350, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:16:38', '2022-04-13 03:16:38'),
(1351, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819798574\"}', '2022-04-13 03:16:39', '2022-04-13 03:16:39'),
(1352, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819798573\"}', '2022-04-13 03:16:39', '2022-04-13 03:16:39'),
(1353, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819798575\"}', '2022-04-13 03:16:39', '2022-04-13 03:16:39'),
(1354, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:16:56', '2022-04-13 03:16:56'),
(1355, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819816804\"}', '2022-04-13 03:16:57', '2022-04-13 03:16:57'),
(1356, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819816803\"}', '2022-04-13 03:16:57', '2022-04-13 03:16:57'),
(1357, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819816805\"}', '2022-04-13 03:16:57', '2022-04-13 03:16:57'),
(1358, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:17:28', '2022-04-13 03:17:28'),
(1359, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1649819816806\"}', '2022-04-13 03:17:29', '2022-04-13 03:17:29'),
(1360, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819816807\"}', '2022-04-13 03:17:29', '2022-04-13 03:17:29'),
(1361, 1, 'sc_admin/banner/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2-banner-3.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:18:03', '2022-04-13 03:18:03'),
(1362, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:18:03', '2022-04-13 03:18:03'),
(1363, 1, 'sc_admin/banner/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:18:08', '2022-04-13 03:18:08'),
(1364, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:18:10', '2022-04-13 03:18:10'),
(1365, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819891142\"}', '2022-04-13 03:18:11', '2022-04-13 03:18:11'),
(1366, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819891143\"}', '2022-04-13 03:18:11', '2022-04-13 03:18:11'),
(1367, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819891144\"}', '2022-04-13 03:18:11', '2022-04-13 03:18:11'),
(1368, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:18:26', '2022-04-13 03:18:26'),
(1369, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1649819891145\"}', '2022-04-13 03:18:26', '2022-04-13 03:18:26'),
(1370, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819891146\"}', '2022-04-13 03:18:27', '2022-04-13 03:18:27'),
(1371, 1, 'sc_admin/uploads/newfolder', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"name\":\"home2\",\"_\":\"1649819891147\"}', '2022-04-13 03:18:36', '2022-04-13 03:18:36'),
(1372, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1649819891148\"}', '2022-04-13 03:18:36', '2022-04-13 03:18:36'),
(1373, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819891149\"}', '2022-04-13 03:18:37', '2022-04-13 03:18:37'),
(1374, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819891150\"}', '2022-04-13 03:18:39', '2022-04-13 03:18:39'),
(1375, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:18:45', '2022-04-13 03:18:45'),
(1376, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"_\":\"1649819891151\"}', '2022-04-13 03:18:46', '2022-04-13 03:18:46'),
(1377, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819891152\"}', '2022-04-13 03:18:46', '2022-04-13 03:18:46'),
(1378, 1, 'sc_admin/banner/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2\\/home2-slideshow-1.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:18:51', '2022-04-13 03:18:51'),
(1379, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:18:52', '2022-04-13 03:18:52'),
(1380, 1, 'sc_admin/banner/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:18:54', '2022-04-13 03:18:54'),
(1381, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:18:56', '2022-04-13 03:18:56'),
(1382, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819936876\"}', '2022-04-13 03:18:57', '2022-04-13 03:18:57'),
(1383, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819936875\"}', '2022-04-13 03:18:57', '2022-04-13 03:18:57'),
(1384, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819936877\"}', '2022-04-13 03:18:57', '2022-04-13 03:18:57'),
(1385, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819936878\"}', '2022-04-13 03:18:59', '2022-04-13 03:18:59'),
(1386, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:19:06', '2022-04-13 03:19:06'),
(1387, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"_\":\"1649819936879\"}', '2022-04-13 03:19:06', '2022-04-13 03:19:06'),
(1388, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819936880\"}', '2022-04-13 03:19:07', '2022-04-13 03:19:07'),
(1389, 1, 'sc_admin/banner/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2\\/home2-slideshow-2.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:19:11', '2022-04-13 03:19:11'),
(1390, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:19:11', '2022-04-13 03:19:11'),
(1391, 1, 'sc_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:19:14', '2022-04-13 03:19:14'),
(1392, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"banner\"}', '2022-04-13 03:19:16', '2022-04-13 03:19:16'),
(1393, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819956589\"}', '2022-04-13 03:19:16', '2022-04-13 03:19:16'),
(1394, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1649819956588\"}', '2022-04-13 03:19:16', '2022-04-13 03:19:16'),
(1395, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819956590\"}', '2022-04-13 03:19:17', '2022-04-13 03:19:17'),
(1396, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819956591\"}', '2022-04-13 03:19:19', '2022-04-13 03:19:19'),
(1397, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:19:25', '2022-04-13 03:19:25'),
(1398, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"_\":\"1649819956592\"}', '2022-04-13 03:19:26', '2022-04-13 03:19:26'),
(1399, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/home2\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649819956593\"}', '2022-04-13 03:19:26', '2022-04-13 03:19:26'),
(1400, 1, 'sc_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2\\/home2-slideshow-3.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 03:19:29', '2022-04-13 03:19:29'),
(1401, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 03:19:29', '2022-04-13 03:19:29'),
(1402, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:33:36', '2022-04-13 04:33:36'),
(1403, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"22\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:33:41', '2022-04-13 04:33:41'),
(1404, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:33:42', '2022-04-13 04:33:42'),
(1405, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"21\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:33:44', '2022-04-13 04:33:44'),
(1406, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:33:45', '2022-04-13 04:33:45'),
(1407, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"20\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:33:47', '2022-04-13 04:33:47'),
(1408, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:33:47', '2022-04-13 04:33:47'),
(1409, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"19\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:33:50', '2022-04-13 04:33:50'),
(1410, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:33:51', '2022-04-13 04:33:51'),
(1411, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"18\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:33:53', '2022-04-13 04:33:53'),
(1412, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:33:53', '2022-04-13 04:33:53'),
(1413, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"17\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:33:57', '2022-04-13 04:33:57'),
(1414, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:33:57', '2022-04-13 04:33:57'),
(1415, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"16\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:34:00', '2022-04-13 04:34:00'),
(1416, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:34:00', '2022-04-13 04:34:00'),
(1417, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"15\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:34:03', '2022-04-13 04:34:03'),
(1418, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:34:03', '2022-04-13 04:34:03'),
(1419, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"14\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:34:05', '2022-04-13 04:34:05'),
(1420, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-13 04:34:06', '2022-04-13 04:34:06'),
(1421, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:34:23', '2022-04-13 04:34:23'),
(1422, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"category\"}', '2022-04-13 04:34:37', '2022-04-13 04:34:37'),
(1423, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1649824477828\"}', '2022-04-13 04:34:38', '2022-04-13 04:34:38'),
(1424, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1649824477829\"}', '2022-04-13 04:34:38', '2022-04-13 04:34:38'),
(1425, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824477830\"}', '2022-04-13 04:34:38', '2022-04-13 04:34:38'),
(1426, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:34:51', '2022-04-13 04:34:51'),
(1427, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1649824477831\"}', '2022-04-13 04:34:52', '2022-04-13 04:34:52'),
(1428, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824477832\"}', '2022-04-13 04:34:52', '2022-04-13 04:34:52'),
(1429, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tr\\u00e1i C\\u00e2y\",\"keyword\":\"Tr\\u00e1i C\\u00e2y\",\"description\":\"Tr\\u00e1i C\\u00e2y\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/3.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:35:00', '2022-04-13 04:35:00'),
(1430, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:35:00', '2022-04-13 04:35:00'),
(1431, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:35:28', '2022-04-13 04:35:28'),
(1432, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:35:30', '2022-04-13 04:35:30'),
(1433, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 04:38:25', '2022-04-13 04:38:25'),
(1434, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649824705878\"}', '2022-04-13 04:38:26', '2022-04-13 04:38:26'),
(1435, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649824705879\"}', '2022-04-13 04:38:26', '2022-04-13 04:38:26'),
(1436, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705880\"}', '2022-04-13 04:38:26', '2022-04-13 04:38:26'),
(1437, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705881\"}', '2022-04-13 04:38:39', '2022-04-13 04:38:39'),
(1438, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705882\"}', '2022-04-13 04:38:40', '2022-04-13 04:38:40'),
(1439, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705883\"}', '2022-04-13 04:38:41', '2022-04-13 04:38:41'),
(1440, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"salon-huong-da-hoang-gia--sl3003-1638239305-9c4655.jpg\"],\"_\":\"1649824705884\"}', '2022-04-13 04:38:52', '2022-04-13 04:38:52'),
(1441, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705885\"}', '2022-04-13 04:38:52', '2022-04-13 04:38:52'),
(1442, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705886\"}', '2022-04-13 04:38:52', '2022-04-13 04:38:52'),
(1443, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"bo-ban-an-go-soi-thiet-ke-hien-dai-ba1014-527-1.png\"],\"_\":\"1649824705887\"}', '2022-04-13 04:38:58', '2022-04-13 04:38:58'),
(1444, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705888\"}', '2022-04-13 04:38:58', '2022-04-13 04:38:58'),
(1445, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705889\"}', '2022-04-13 04:38:58', '2022-04-13 04:38:58'),
(1446, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"bo-ban-an-go-xoan-dao-mat-da-6-ghe-1m6-ba1010-5588-1.png\"],\"_\":\"1649824705890\"}', '2022-04-13 04:39:02', '2022-04-13 04:39:02'),
(1447, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705891\"}', '2022-04-13 04:39:03', '2022-04-13 04:39:03'),
(1448, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705892\"}', '2022-04-13 04:39:03', '2022-04-13 04:39:03'),
(1449, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"giuong-ngu-duoi-cong-1641788105-f62fdb.jpg\"],\"_\":\"1649824705893\"}', '2022-04-13 04:39:07', '2022-04-13 04:39:07'),
(1450, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705894\"}', '2022-04-13 04:39:07', '2022-04-13 04:39:07'),
(1451, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705895\"}', '2022-04-13 04:39:08', '2022-04-13 04:39:08'),
(1452, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"giuong-ngu-go-cam-xe-boc-nem-cao-cap-gn1036-5638-1.jpg\"],\"_\":\"1649824705896\"}', '2022-04-13 04:39:11', '2022-04-13 04:39:11'),
(1453, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705897\"}', '2022-04-13 04:39:11', '2022-04-13 04:39:11'),
(1454, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705898\"}', '2022-04-13 04:39:12', '2022-04-13 04:39:12'),
(1455, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"salon-huong-da-hoang-gia--sl3003-1638239303-4d8d0c.jpg\"],\"_\":\"1649824705899\"}', '2022-04-13 04:39:17', '2022-04-13 04:39:17'),
(1456, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705900\"}', '2022-04-13 04:39:18', '2022-04-13 04:39:18'),
(1457, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705901\"}', '2022-04-13 04:39:18', '2022-04-13 04:39:18'),
(1458, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"salon-huong-da-hoang-gia--sl3003-1638239308-e5a833.jpg\"],\"_\":\"1649824705902\"}', '2022-04-13 04:39:22', '2022-04-13 04:39:22'),
(1459, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705903\"}', '2022-04-13 04:39:22', '2022-04-13 04:39:22'),
(1460, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705904\"}', '2022-04-13 04:39:23', '2022-04-13 04:39:23'),
(1461, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"salon-huong-da-hoang-gia--sl3003-1638239310-5bf7f3.jpg\"],\"_\":\"1649824705905\"}', '2022-04-13 04:39:27', '2022-04-13 04:39:27'),
(1462, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705906\"}', '2022-04-13 04:39:27', '2022-04-13 04:39:27'),
(1463, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705907\"}', '2022-04-13 04:39:28', '2022-04-13 04:39:28'),
(1464, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"sofa-go-soi-son-mau-oc-cho--sf3012-1640673745-24ebae.jpg\"],\"_\":\"1649824705908\"}', '2022-04-13 04:39:33', '2022-04-13 04:39:33'),
(1465, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705909\"}', '2022-04-13 04:39:34', '2022-04-13 04:39:34'),
(1466, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705910\"}', '2022-04-13 04:39:34', '2022-04-13 04:39:34'),
(1467, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-5.jpg\"],\"_\":\"1649824705911\"}', '2022-04-13 04:39:38', '2022-04-13 04:39:38'),
(1468, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824705912\"}', '2022-04-13 04:39:38', '2022-04-13 04:39:38'),
(1469, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705913\"}', '2022-04-13 04:39:39', '2022-04-13 04:39:39'),
(1470, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705914\"}', '2022-04-13 04:39:41', '2022-04-13 04:39:41'),
(1471, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"Books\"],\"_\":\"1649824705915\"}', '2022-04-13 04:39:46', '2022-04-13 04:39:46'),
(1472, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824705916\"}', '2022-04-13 04:39:52', '2022-04-13 04:39:52'),
(1473, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"time\",\"page\":\"1\",\"_\":\"1649824705917\"}', '2022-04-13 04:39:56', '2022-04-13 04:39:56'),
(1474, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 04:40:02', '2022-04-13 04:40:02'),
(1475, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649824803172\"}', '2022-04-13 04:40:03', '2022-04-13 04:40:03'),
(1476, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649824803171\"}', '2022-04-13 04:40:03', '2022-04-13 04:40:03'),
(1477, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824803173\"}', '2022-04-13 04:40:03', '2022-04-13 04:40:03'),
(1478, 1, 'sc_admin/uploads/newfolder', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"name\":\"Tr\\u00e1i C\\u00e2y\",\"_\":\"1649824803174\"}', '2022-04-13 04:40:14', '2022-04-13 04:40:14'),
(1479, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649824803175\"}', '2022-04-13 04:40:14', '2022-04-13 04:40:14'),
(1480, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824803176\"}', '2022-04-13 04:40:15', '2022-04-13 04:40:15'),
(1481, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824803177\"}', '2022-04-13 04:40:17', '2022-04-13 04:40:17'),
(1482, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:40:23', '2022-04-13 04:40:23'),
(1483, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_\":\"1649824803178\"}', '2022-04-13 04:40:24', '2022-04-13 04:40:24'),
(1484, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649824803179\"}', '2022-04-13 04:40:24', '2022-04-13 04:40:24');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1485, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"T\\u00e1o Envy\",\"keyword\":\"T\\u00e1o Envy\",\"description\":\"Sau chu\\u1ed1i, t\\u00e1o l\\u00e0 lo\\u1ea1i tr\\u00e1i c\\u00e2y \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi M\\u1ef9 v\\u00f4 c\\u00f9ng y\\u00eau th\\u00edch\",\"content\":\"<h2>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng \\u1edf \\u0111&acirc;u?<\\/h2>\\r\\n\\r\\n<p>Ng\\u01b0\\u1eddi M\\u1ef9 lu&ocirc;n c&oacute; t&aacute;o \\u0111\\u1ec3 th\\u01b0\\u1edfng th\\u1ee9c m\\u1ed7i ng&agrave;y b\\u1edfi bang Washington \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l&agrave; v&ugrave;ng \\u0111\\u1ea5t c\\u1ee7a nh\\u1eefng qu\\u1ea3 t&aacute;o, v\\u1edbi \\u0111\\u1ea5t \\u0111ai tr&ugrave; ph&uacute; v&agrave; kh&iacute; h\\u1eadu &ocirc;n h&ograve;a. T&aacute;o ph\\u1ee5c v\\u1ee5 kh&ocirc;ng ch\\u1ec9 cho ng\\u01b0\\u1eddi d&acirc;n n\\u01b0\\u1edbc M\\u1ef9, m&agrave; hi\\u1ec7n nay \\u0111&atilde; \\u0111\\u1ebfn kh\\u1eafp n\\u01a1i tr&ecirc;n th\\u1ebf gi\\u1edbi.<\\/p>\\r\\n\\r\\n<p>T\\u1ea1i M\\u1ef9, c&oacute; \\u0111\\u1ebfn 2.500 gi\\u1ed1ng t&aacute;o \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng, nh\\u01b0ng ch\\u1ec9 100 gi\\u1ed1ng tuy\\u1ec7t v\\u1eddi nh\\u1ea5t m\\u1edbi \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a ra th\\u1ecb tr\\u01b0\\u1eddng. Ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a c&aacute;c tr&aacute;i&nbsp;<a href=\\\"https:\\/\\/hoaquafuji.com\\/post\\/tao-envy-size-nho\\\">t&aacute;o M\\u1ef9<\\/a>&nbsp;lu&ocirc;n \\u0111\\u01b0\\u1ee3c xem nh\\u01b0 m\\u1ed9t chu\\u1ea9n m\\u1ef1c v\\u1ec1 m\\u1ee9c \\u0111\\u1ed9 an to&agrave;n, s\\u1ea1ch v&agrave; ngon. T&aacute;o M\\u1ef9 chinh ph\\u1ee5c h\\u1ea7u h\\u1ebft ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng tr&ecirc;n th\\u1ebf gi\\u1edbi, trong \\u0111&oacute; c&oacute; c\\u1ea3 Vi\\u1ec7t Nam.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-result=\\\"success\\\" src=\\\"https:\\/\\/hoaquafuji.com\\/storage\\/app\\/media\\/uploaded-files\\/trai-tao-my-tao-gala-5-min.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nhi\\u1ec1u \\u1edf bang Washington<\\/em><\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/3.jpg\",\"sku\":\"T01\",\"alias\":null,\"brand_id\":null,\"cost\":\"80000\",\"price\":\"90000\",\"tax_id\":\"0\",\"price_promotion\":\"80000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:41:59', '2022-04-13 04:41:59'),
(1486, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:42:00', '2022-04-13 04:42:00'),
(1487, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:58:21', '2022-04-13 04:58:21'),
(1488, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"id\":\"17\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:58:29', '2022-04-13 04:58:29'),
(1489, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:58:29', '2022-04-13 04:58:29'),
(1490, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:58:50', '2022-04-13 04:58:50'),
(1491, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"ADMIN_NAME\",\"value\":\"QuangHai17\",\"pk\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:59:08', '2022-04-13 04:59:08'),
(1492, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"ADMIN_TITLE\",\"value\":\"QuangHai17\",\"pk\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 04:59:12', '2022-04-13 04:59:12'),
(1493, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:59:36', '2022-04-13 04:59:36'),
(1494, 1, 'sc_admin/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 04:59:43', '2022-04-13 04:59:43'),
(1495, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"avatar\"}', '2022-04-13 05:00:00', '2022-04-13 05:00:00'),
(1496, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1649826000977\"}', '2022-04-13 05:00:01', '2022-04-13 05:00:01'),
(1497, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1649826000976\"}', '2022-04-13 05:00:01', '2022-04-13 05:00:01'),
(1498, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649826000978\"}', '2022-04-13 05:00:01', '2022-04-13 05:00:01'),
(1499, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"avatar\"}', '2022-04-13 05:00:07', '2022-04-13 05:00:07'),
(1500, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1649826007633\"}', '2022-04-13 05:00:08', '2022-04-13 05:00:08'),
(1501, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1649826007632\"}', '2022-04-13 05:00:08', '2022-04-13 05:00:08'),
(1502, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649826007634\"}', '2022-04-13 05:00:08', '2022-04-13 05:00:08'),
(1503, 1, 'sc_admin/auth/setting', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"Quanghai17\",\"avatar\":\"\\/data\\/avatar\\/135184405_1151451528641097_5551952842022562142_n.jpg\",\"password\":null,\"password_confirmation\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 05:00:13', '2022-04-13 05:00:13'),
(1504, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 05:00:13', '2022-04-13 05:00:13'),
(1505, 1, 'sc_admin/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 05:00:20', '2022-04-13 05:00:20'),
(1506, 1, 'sc_admin/weight_unit', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 05:01:00', '2022-04-13 05:01:00'),
(1507, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 05:01:11', '2022-04-13 05:01:11'),
(1508, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 05:01:46', '2022-04-13 05:01:46'),
(1509, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:43:29', '2022-04-13 06:43:29'),
(1510, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:43:50', '2022-04-13 06:43:50'),
(1511, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:47:17', '2022-04-13 06:47:17'),
(1512, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:49:46', '2022-04-13 06:49:46'),
(1513, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"ADMIN_LOGO\",\"value\":\"icon\",\"pk\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 06:49:55', '2022-04-13 06:49:55'),
(1514, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:50:03', '2022-04-13 06:50:03'),
(1515, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:51:10', '2022-04-13 06:51:10'),
(1516, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:52:21', '2022-04-13 06:52:21'),
(1517, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:53:07', '2022-04-13 06:53:07'),
(1518, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:53:11', '2022-04-13 06:53:11'),
(1519, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 06:55:26', '2022-04-13 06:55:26'),
(1520, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649832926525\"}', '2022-04-13 06:55:26', '2022-04-13 06:55:26'),
(1521, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649832926526\"}', '2022-04-13 06:55:27', '2022-04-13 06:55:27'),
(1522, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649832926527\"}', '2022-04-13 06:55:27', '2022-04-13 06:55:27'),
(1523, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649832926528\"}', '2022-04-13 06:55:30', '2022-04-13 06:55:30'),
(1524, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 06:55:36', '2022-04-13 06:55:36'),
(1525, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_\":\"1649832926529\"}', '2022-04-13 06:55:36', '2022-04-13 06:55:36'),
(1526, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649832926530\"}', '2022-04-13 06:55:37', '2022-04-13 06:55:37'),
(1527, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Cam Ham Lin\",\"keyword\":\"Cam Ham Lin\",\"description\":\"L\\u00e0 gi\\u1ed1ng c\\u1ee7a M\\u1ef9, \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a v\\u00e0o Vi\\u1ec7t Nam t\\u1eeb n\\u0103m 1971 th\\u00f4ng qua Cu Ba. Hamlin l\\u00e0 gi\\u1ed1ng ch\\u00edn s\\u1edbm v\\u00e0o th\\u00e1ng 9 \\u2013 10\",\"content\":\"<ul>\\r\\n\\t<li><em>Cam Ham Lin<\\/em>: L&agrave; gi\\u1ed1ng c\\u1ee7a M\\u1ef9, \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a v&agrave;o Vi\\u1ec7t Nam t\\u1eeb n\\u0103m 1971 th&ocirc;ng qua Cu Ba. Hamlin l&agrave; gi\\u1ed1ng ch&iacute;n s\\u1edbm v&agrave;o th&aacute;ng 9 &ndash; 10, v\\u1ecf qu\\u1ea3 m\\u1ecfng, kh\\u1ed1i l\\u01b0\\u1ee3ng qu\\u1ea3 trung b&igrave;nh 200 g\\/qu\\u1ea3, ng\\u1ecdt \\u0111\\u1eadm, 0 &ndash; 5 h\\u1ea1t\\/qu\\u1ea3.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"qu\\u1ea3 cam\\\" data-ll-status=\\\"loaded\\\" height=\\\"317\\\" sizes=\\\"(max-width: 406px) 100vw, 406px\\\" src=\\\"https:\\/\\/cdn.youmed.vn\\/tin-tuc\\/wp-content\\/uploads\\/2020\\/11\\/4.4.jpg\\\" srcset=\\\"https:\\/\\/cdn.youmed.vn\\/tin-tuc\\/wp-content\\/uploads\\/2020\\/11\\/4.4.jpg 512w, https:\\/\\/cdn.youmed.vn\\/tin-tuc\\/wp-content\\/uploads\\/2020\\/11\\/4.4-300x234.jpg 300w\\\" width=\\\"406\\\" \\/><\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/4.jpg\",\"sku\":\"C01\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"20000\",\"tax_id\":\"0\",\"price_promotion\":\"15000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 06:56:18', '2022-04-13 06:56:18'),
(1528, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:56:18', '2022-04-13 06:56:18'),
(1529, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Cam Ham Lin\",\"keyword\":\"Cam Ham Lin\",\"description\":\"L\\u00e0 gi\\u1ed1ng c\\u1ee7a M\\u1ef9, \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a v\\u00e0o Vi\\u1ec7t Nam t\\u1eeb n\\u0103m 1971 th\\u00f4ng qua Cu Ba.\",\"content\":\"<ul>\\r\\n\\t<li><em>Cam Ham Lin<\\/em>: L&agrave; gi\\u1ed1ng c\\u1ee7a M\\u1ef9, \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a v&agrave;o Vi\\u1ec7t Nam t\\u1eeb n\\u0103m 1971 th&ocirc;ng qua Cu Ba. Hamlin l&agrave; gi\\u1ed1ng ch&iacute;n s\\u1edbm v&agrave;o th&aacute;ng 9 &ndash; 10, v\\u1ecf qu\\u1ea3 m\\u1ecfng, kh\\u1ed1i l\\u01b0\\u1ee3ng qu\\u1ea3 trung b&igrave;nh 200 g\\/qu\\u1ea3, ng\\u1ecdt \\u0111\\u1eadm, 0 &ndash; 5 h\\u1ea1t\\/qu\\u1ea3.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"qu\\u1ea3 cam\\\" data-ll-status=\\\"loaded\\\" height=\\\"317\\\" sizes=\\\"(max-width: 406px) 100vw, 406px\\\" src=\\\"https:\\/\\/cdn.youmed.vn\\/tin-tuc\\/wp-content\\/uploads\\/2020\\/11\\/4.4.jpg\\\" srcset=\\\"https:\\/\\/cdn.youmed.vn\\/tin-tuc\\/wp-content\\/uploads\\/2020\\/11\\/4.4.jpg 512w, https:\\/\\/cdn.youmed.vn\\/tin-tuc\\/wp-content\\/uploads\\/2020\\/11\\/4.4-300x234.jpg 300w\\\" width=\\\"406\\\" \\/><\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/4.jpg\",\"sku\":\"C01\",\"alias\":\"cam-ham-lin\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"20000\",\"tax_id\":\"0\",\"price_promotion\":\"15000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 06:56:29', '2022-04-13 06:56:29'),
(1530, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:56:29', '2022-04-13 06:56:29'),
(1531, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:57:08', '2022-04-13 06:57:08'),
(1532, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 06:57:51', '2022-04-13 06:57:51'),
(1533, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833071459\"}', '2022-04-13 06:57:51', '2022-04-13 06:57:51'),
(1534, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833071460\"}', '2022-04-13 06:57:51', '2022-04-13 06:57:51'),
(1535, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833071461\"}', '2022-04-13 06:57:52', '2022-04-13 06:57:52'),
(1536, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833071462\"}', '2022-04-13 06:57:53', '2022-04-13 06:57:53'),
(1537, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 06:58:01', '2022-04-13 06:58:01'),
(1538, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_\":\"1649833071463\"}', '2022-04-13 06:58:01', '2022-04-13 06:58:01'),
(1539, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833071464\"}', '2022-04-13 06:58:02', '2022-04-13 06:58:02'),
(1540, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Nho M\\u1ef9\",\"keyword\":\"Nho M\\u1ef9\",\"description\":\"B\\u00ean c\\u1ea1nh h\\u01b0\\u01a1ng v\\u1ecb th\\u01a1m ngon n\\u1ed5i b\\u1eadt c\\u1ee7a m\\u00ecnh, c\\u00e1c lo\\u1ea1i nho \\u0111\\u1ecf c\\u00f3 ngu\\u1ed3n g\\u1ed1c xu\\u1ea5t s\\u1ee9 \\u0111\\u1ebfn t\\u1eeb M\\u1ef9\",\"content\":\"<h3 id=\\\"toctoc-6\\\"><strong>Nho \\u0111\\u1ecf m\\u1ecdng n\\u01b0\\u1edbc M\\u1ef9<\\/strong><\\/h3>\\r\\n\\r\\n<p>B&ecirc;n c\\u1ea1nh h\\u01b0\\u01a1ng v\\u1ecb th\\u01a1m ngon n\\u1ed5i b\\u1eadt c\\u1ee7a m&igrave;nh, c&aacute;c lo\\u1ea1i nho \\u0111\\u1ecf c&oacute; ngu\\u1ed3n g\\u1ed1c xu\\u1ea5t s\\u1ee9 \\u0111\\u1ebfn t\\u1eeb M\\u1ef9 c&ograve;n r\\u1ea5t \\u0111\\u01b0\\u1ee3c \\u0111&ocirc;ng \\u0111\\u1ea3o gia \\u0111&igrave;nh l\\u1ef1a ch\\u1ecdn nh\\u1edd v&agrave;o nh\\u1eefng kh\\u1ea3 n\\u0103ng gi\\u1ea3m thi\\u1ec3u nguy c\\u01a1 xu\\u1ea5t hi\\u1ec7n tai bi\\u1ebfn m\\u1ea1ch m&aacute;u n&atilde;o c\\u0169ng nh\\u01b0 ng\\u0103n ng\\u1eeba c&aacute;c tri\\u1ec7u ch\\u1ee9ng ung th\\u01b0 v\\u1ed1n lu&ocirc;n l&agrave; n\\u1ed7i lo c\\u1ee7a r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi trong \\u0111\\u1eddi s\\u1ed1ng hi\\u1ec7n nay. C&oacute; th\\u1ec3 n&oacute;i nho \\u0111\\u1ecf M\\u1ef9 l&agrave; m\\u1ed9t s\\u1ef1 l\\u1ef1a ch\\u1ecdn r\\u1ea5t ph&ugrave; h\\u1ee3p n\\u1ebfu nh\\u01b0 b\\u1ea1n \\u0111ang t&igrave;m ki\\u1ebfm c&aacute;c lo\\u1ea1i qu&agrave; c&aacute;p d&agrave;nh cho ng\\u01b0\\u1eddi th&acirc;n v&agrave; &ocirc;ng b&agrave; c\\u1ee7a M\\u1ef9 trong d\\u1ecbp l\\u1ec5 T\\u1ebft \\u0111ang c\\u1eadn k\\u1ec1 hi\\u1ec7n nay.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"tr\\u00e1i c\\u00e2y t\\u01b0\\u01a1i nh\\u1eadp kh\\u1ea9u\\\" src=\\\"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0563\\/5745\\/4002\\/products\\/20d4ea06463cbd55c6849975eb5826f4.png?v=1623387079\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Nho \\u0111\\u1ecf m\\u1ecdng n\\u01b0\\u1edbc M\\u1ef9<\\/em><\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/9.jpg\",\"sku\":\"N01\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"50000\",\"tax_id\":\"0\",\"price_promotion\":\"35000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":\"kg\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 06:58:37', '2022-04-13 06:58:37'),
(1541, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:58:37', '2022-04-13 06:58:37'),
(1542, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 06:58:41', '2022-04-13 06:58:41'),
(1543, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 06:59:45', '2022-04-13 06:59:45'),
(1544, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833185796\"}', '2022-04-13 06:59:46', '2022-04-13 06:59:46'),
(1545, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833185795\"}', '2022-04-13 06:59:46', '2022-04-13 06:59:46'),
(1546, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833185797\"}', '2022-04-13 06:59:46', '2022-04-13 06:59:46'),
(1547, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833185798\"}', '2022-04-13 06:59:48', '2022-04-13 06:59:48'),
(1548, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 06:59:54', '2022-04-13 06:59:54'),
(1549, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_\":\"1649833185799\"}', '2022-04-13 06:59:55', '2022-04-13 06:59:55'),
(1550, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833185800\"}', '2022-04-13 06:59:55', '2022-04-13 06:59:55'),
(1551, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Chu\\u1ed1i T\\u00e2y\",\"keyword\":\"Chu\\u1ed1i T\\u00e2y\",\"description\":\"Kh\\u00e1c v\\u1edbi chu\\u1ed1i ti\\u00eau c\\u00f3 h\\u00ecnh d\\u00e1ng thon d\\u00e0i, chu\\u1ed1i t\\u00e2y m\\u1eadp h\\u01a1n v\\u00e0 ng\\u1eafn h\\u01a1n\",\"content\":\"<h2 dir=\\\"ltr\\\" id=\\\"chuoi-tay-la-chuoi-gi\\\">Chu\\u1ed1i t&acirc;y l&agrave; chu\\u1ed1i g&igrave;?<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"chu\\u1ed1i t\\u00e2y\\\" height=\\\"377\\\" src=\\\"https:\\/\\/admin.nongsandungha.com\\/wp-content\\/uploads\\/2021\\/05\\/chuoi-tay-min.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Kh&aacute;c v\\u1edbi chu\\u1ed1i ti&ecirc;u c&oacute; h&igrave;nh d&aacute;ng thon d&agrave;i, chu\\u1ed1i t&acirc;y m\\u1eadp h\\u01a1n v&agrave; ng\\u1eafn h\\u01a1n. Chu\\u1ed1i t&acirc;y c&oacute; ph\\u1ea7n gi\\u1eefa to, hai \\u0111\\u1ea7u thon, cu\\u1ed1ng d&agrave;i v&agrave; c&oacute; ba g\\u1edd n&ecirc;n ch&uacute;ng ta d\\u1ec5 d&agrave;ng ph&acirc;n bi\\u1ec7t.<\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Khi ch&iacute;n, chu\\u1ed1i c&oacute; m&agrave;u v&agrave;ng x&aacute;m, th\\u1ecbt qu\\u1ea3 m&agrave;u tr\\u1eafng. \\u0110\\u1ed9 dinh d\\u01b0\\u1ee1ng c\\u1ee7a chu\\u1ed1i t&acirc;y kh&ocirc;ng h\\u1ec1 thua k&eacute;m c&aacute;c lo\\u1ea1i chu\\u1ed1i kh&aacute;c, th\\u1eadm ch&iacute; h\\u01b0\\u01a1ng v\\u1ecb c\\u1ee7a n&oacute; c&ograve;n th\\u01a1m ngon h\\u01a1n.<\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">T\\u1eeb xa x\\u01b0a, chu\\u1ed1i l&agrave; m\\u1ed9t trong nh\\u1eefng lo&agrave;i c&acirc;y ph\\u1ed5 bi\\u1ebfn tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, trong \\u0111&oacute; chu\\u1ed1i t&acirc;y \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nhi\\u1ec1u nh\\u1ea5t v&igrave; cho n\\u0103ng su\\u1ea5t v&agrave; gi&aacute; tr\\u1ecb cao.<\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/9.jpg\",\"sku\":\"C01\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"50000\",\"tax_id\":\"0\",\"price_promotion\":\"20000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:03:25', '2022-04-13 07:03:25'),
(1552, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:03:25', '2022-04-13 07:03:25'),
(1553, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Chu\\u1ed1i T\\u00e2y\",\"keyword\":\"Chu\\u1ed1i T\\u00e2y\",\"description\":\"Kh\\u00e1c v\\u1edbi chu\\u1ed1i ti\\u00eau c\\u00f3 h\\u00ecnh d\\u00e1ng thon d\\u00e0i, chu\\u1ed1i t\\u00e2y m\\u1eadp h\\u01a1n v\\u00e0 ng\\u1eafn h\\u01a1n\",\"content\":\"<h2 dir=\\\"ltr\\\" id=\\\"chuoi-tay-la-chuoi-gi\\\">Chu\\u1ed1i t&acirc;y l&agrave; chu\\u1ed1i g&igrave;?<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"chu\\u1ed1i t\\u00e2y\\\" height=\\\"377\\\" src=\\\"https:\\/\\/admin.nongsandungha.com\\/wp-content\\/uploads\\/2021\\/05\\/chuoi-tay-min.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Kh&aacute;c v\\u1edbi chu\\u1ed1i ti&ecirc;u c&oacute; h&igrave;nh d&aacute;ng thon d&agrave;i, chu\\u1ed1i t&acirc;y m\\u1eadp h\\u01a1n v&agrave; ng\\u1eafn h\\u01a1n. Chu\\u1ed1i t&acirc;y c&oacute; ph\\u1ea7n gi\\u1eefa to, hai \\u0111\\u1ea7u thon, cu\\u1ed1ng d&agrave;i v&agrave; c&oacute; ba g\\u1edd n&ecirc;n ch&uacute;ng ta d\\u1ec5 d&agrave;ng ph&acirc;n bi\\u1ec7t.<\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Khi ch&iacute;n, chu\\u1ed1i c&oacute; m&agrave;u v&agrave;ng x&aacute;m, th\\u1ecbt qu\\u1ea3 m&agrave;u tr\\u1eafng. \\u0110\\u1ed9 dinh d\\u01b0\\u1ee1ng c\\u1ee7a chu\\u1ed1i t&acirc;y kh&ocirc;ng h\\u1ec1 thua k&eacute;m c&aacute;c lo\\u1ea1i chu\\u1ed1i kh&aacute;c, th\\u1eadm ch&iacute; h\\u01b0\\u01a1ng v\\u1ecb c\\u1ee7a n&oacute; c&ograve;n th\\u01a1m ngon h\\u01a1n.<\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">T\\u1eeb xa x\\u01b0a, chu\\u1ed1i l&agrave; m\\u1ed9t trong nh\\u1eefng lo&agrave;i c&acirc;y ph\\u1ed5 bi\\u1ebfn tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, trong \\u0111&oacute; chu\\u1ed1i t&acirc;y \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nhi\\u1ec1u nh\\u1ea5t v&igrave; cho n\\u0103ng su\\u1ea5t v&agrave; gi&aacute; tr\\u1ecb cao.<\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/9.jpg\",\"sku\":\"C02\",\"alias\":\"chuoi-tay\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"50000\",\"tax_id\":\"0\",\"price_promotion\":\"20000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:03:36', '2022-04-13 07:03:36'),
(1554, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:03:37', '2022-04-13 07:03:37'),
(1555, 1, 'sc_admin/product/edit/27', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:03:43', '2022-04-13 07:03:43'),
(1556, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 07:03:47', '2022-04-13 07:03:47'),
(1557, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833428437\"}', '2022-04-13 07:03:48', '2022-04-13 07:03:48'),
(1558, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833428436\"}', '2022-04-13 07:03:48', '2022-04-13 07:03:48'),
(1559, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833428438\"}', '2022-04-13 07:03:49', '2022-04-13 07:03:49'),
(1560, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833428439\"}', '2022-04-13 07:03:51', '2022-04-13 07:03:51'),
(1561, 1, 'sc_admin/product/edit/27', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Chu\\u1ed1i T\\u00e2y\",\"keyword\":\"Chu\\u1ed1i T\\u00e2y\",\"description\":\"Kh\\u00e1c v\\u1edbi chu\\u1ed1i ti\\u00eau c\\u00f3 h\\u00ecnh d\\u00e1ng thon d\\u00e0i, chu\\u1ed1i t\\u00e2y m\\u1eadp h\\u01a1n v\\u00e0 ng\\u1eafn h\\u01a1n\",\"content\":\"<h2 dir=\\\"ltr\\\" id=\\\"chuoi-tay-la-chuoi-gi\\\">Chu\\u1ed1i t&acirc;y l&agrave; chu\\u1ed1i g&igrave;?<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"chu\\u1ed1i t\\u00e2y\\\" height=\\\"377\\\" src=\\\"https:\\/\\/admin.nongsandungha.com\\/wp-content\\/uploads\\/2021\\/05\\/chuoi-tay-min.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Kh&aacute;c v\\u1edbi chu\\u1ed1i ti&ecirc;u c&oacute; h&igrave;nh d&aacute;ng thon d&agrave;i, chu\\u1ed1i t&acirc;y m\\u1eadp h\\u01a1n v&agrave; ng\\u1eafn h\\u01a1n. Chu\\u1ed1i t&acirc;y c&oacute; ph\\u1ea7n gi\\u1eefa to, hai \\u0111\\u1ea7u thon, cu\\u1ed1ng d&agrave;i v&agrave; c&oacute; ba g\\u1edd n&ecirc;n ch&uacute;ng ta d\\u1ec5 d&agrave;ng ph&acirc;n bi\\u1ec7t.<\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Khi ch&iacute;n, chu\\u1ed1i c&oacute; m&agrave;u v&agrave;ng x&aacute;m, th\\u1ecbt qu\\u1ea3 m&agrave;u tr\\u1eafng. \\u0110\\u1ed9 dinh d\\u01b0\\u1ee1ng c\\u1ee7a chu\\u1ed1i t&acirc;y kh&ocirc;ng h\\u1ec1 thua k&eacute;m c&aacute;c lo\\u1ea1i chu\\u1ed1i kh&aacute;c, th\\u1eadm ch&iacute; h\\u01b0\\u01a1ng v\\u1ecb c\\u1ee7a n&oacute; c&ograve;n th\\u01a1m ngon h\\u01a1n.<\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">T\\u1eeb xa x\\u01b0a, chu\\u1ed1i l&agrave; m\\u1ed9t trong nh\\u1eefng lo&agrave;i c&acirc;y ph\\u1ed5 bi\\u1ebfn tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, trong \\u0111&oacute; chu\\u1ed1i t&acirc;y \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nhi\\u1ec1u nh\\u1ea5t v&igrave; cho n\\u0103ng su\\u1ea5t v&agrave; gi&aacute; tr\\u1ecb cao.<\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/8.jpg\",\"sku\":\"C02\",\"alias\":\"chuoi-tay\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"50000\",\"tax_id\":\"0\",\"price_promotion\":\"20000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:03:56', '2022-04-13 07:03:56'),
(1562, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:03:57', '2022-04-13 07:03:57'),
(1563, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:05:17', '2022-04-13 07:05:17'),
(1564, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 07:06:24', '2022-04-13 07:06:24'),
(1565, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833584647\"}', '2022-04-13 07:06:25', '2022-04-13 07:06:25'),
(1566, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833584648\"}', '2022-04-13 07:06:25', '2022-04-13 07:06:25'),
(1567, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833584649\"}', '2022-04-13 07:06:25', '2022-04-13 07:06:25'),
(1568, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833584650\"}', '2022-04-13 07:06:27', '2022-04-13 07:06:27'),
(1569, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:06:36', '2022-04-13 07:06:36'),
(1570, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_\":\"1649833584651\"}', '2022-04-13 07:06:36', '2022-04-13 07:06:36'),
(1571, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833584652\"}', '2022-04-13 07:06:37', '2022-04-13 07:06:37'),
(1572, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"D\\u00e2u T\\u00e2y\",\"keyword\":\"D\\u00e2u T\\u00e2y\",\"description\":\"D\\u00e2u T\\u00e2y \\u0111\\u01b0\\u1ee3c m\\u1ec7nh danh l\\u00e0 m\\u00f3n qu\\u00e0 qu\\u00fd t\\u1ed9c! V\\u1edbi v\\u1ecb ng\\u1ecdt thanh, m\\u00f9i th\\u01a1m ng\\u1ecdt ng\\u00e0o lu\\u00f4n l\\u00e0 m\\u00f3n qu\\u00e0 tinh t\\u1ebf!\",\"content\":\"<p>M&ugrave;a d&acirc;u t&acirc;y H&agrave;n tr\\u01b0\\u1edbc \\u0111&acirc;y b\\u1eaft \\u0111\\u1ea7u t\\u1eeb th&aacute;ng 6, nh\\u01b0ng th\\u1eddi gian tr\\u1ed3ng b&acirc;y gi\\u1edd \\u0111\\u01b0\\u1ee3c \\u0111\\u1ea9y l&ecirc;n, v&agrave; n&oacute; tr\\u1edf th&agrave;nh c&acirc;y v\\u1ee5 \\u0111&ocirc;ng c\\u1ee7a H&agrave;n Qu\\u1ed1c. Ch&iacute;nh v&igrave; \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng trong th\\u1eddi ti\\u1ebft m&ugrave;a \\u0111&ocirc;ng n&ecirc;n qu\\u1ea3 d&acirc;u t&acirc;y \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c v\\u1ebb ngo&agrave;i \\u0111\\u1eb9p v&agrave; l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng cao nh\\u1edd v&agrave; th\\u1eddi ti\\u1ebft m&ugrave;a \\u0111&ocirc;ng c\\u1ee7a H&agrave;n Qu\\u1ed1c. \\u1ede H&agrave;n Qu\\u1ed1c c&oacute; r\\u1ea5t nhi\\u1ec1u gi\\u1ed1ng d&acirc;u \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nh\\u01b0 Seolhyang, Meahyang, Geumsil...Trong \\u0111&oacute; gi\\u1ed1ng d&acirc;u Sealhyang \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng v\\u1edbi di\\u1ec7n t&iacute;ch nhi\\u1ec1u nh\\u1ea5t<\\/p>\\r\\n\\r\\n<p>D&acirc;u t&acirc;y H&agrave;n Qu\\u1ed1c \\u0111\\u01b0\\u1ee3c m\\u1ec7nh danh l&agrave; qu\\u1ed1c qu\\u1ea3 c\\u1ee7a H&agrave;n Qu\\u1ed1c. D&acirc;u t&acirc;y H&agrave; Qu\\u1ed1c \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng trong nh&agrave; k&iacute;nh, th\\u1ee7y canh, kh&ocirc;ng ph\\u1ea3i tr\\u1ed3ng \\u1edf ru\\u1ed9ng nh\\u01b0 c&aacute;c v&ugrave;ng kh&aacute;c n&ecirc;n h&agrave;m&nbsp;l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng c\\u1ee7a d&acirc;u H&agrave;n lu&ocirc;n cao.&nbsp;V\\u1edbi k\\u1ef9 thu\\u1eadt tr\\u1ed3ng cao n&ecirc;n tr&aacute;i d&acirc;u H&agrave;n Qu\\u1ed1c \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 ch\\u1eafc qu\\u1ea3 v&agrave; ng\\u1ecdt, th\\u01a1m cao, \\u0111\\u1ecf h\\u1ed3ng \\u0111\\u1ec1u qu\\u1ea3. D&acirc;u t&acirc;y gi\\u1ea7u vitamin C h\\u01a1n c\\u1ea3 chanh, c&oacute; ch\\u1ee9a axit metalalicylic c&oacute; t&aacute;c d\\u1ee5ng ch\\u1ed1ng vi&ecirc;m, gi\\u1ea3m \\u0111au, ph&ograve;ng ch\\u1ed1ng c&aacute;c b\\u1ec7nh c\\u1ee7a ng\\u01b0\\u1eddi l\\u1edbn nh\\u01b0 cao huy\\u1ebft &aacute;p, ti\\u1ec3u \\u0111\\u01b0\\u1eddng, b&eacute;o ph&igrave;, tim m\\u1ea1ch. D&acirc;u t&acirc;y c&oacute; th\\u1ec3 n&oacute;i l&agrave; \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 ho&agrave;n h\\u1ea3o c\\u1ea3 v\\u1ebb \\u0111\\u1eb9p, h\\u01b0\\u01a1ng v\\u1ecb v&agrave; s\\u1ee9c kh\\u1ecfe.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-thumb=\\\"large\\\" original-height=\\\"1280\\\" original-width=\\\"960\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/thumb\\/large\\/100\\/065\\/538\\/files\\/dau-han-chuan-f6589e42-7d90-4e35-9da1-24b93ef99e13.jpg?v=1644451581970\\\" \\/><\\/p>\\r\\n\\r\\n<h3 id=\\\"dau-chuan-han-quoc-duoc-ban-tai-he-thong-hala\\\"><em>Dau chu\\u1ea9n H&agrave;n Qu\\u1ed1c \\u0111\\u01b0\\u1ee3c b&aacute;n t\\u1ea1i h\\u1ec7 th\\u1ed1ng Hala<\\/em><\\/h3>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/30.jpg\",\"sku\":\"D01\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"90000\",\"tax_id\":\"0\",\"price_promotion\":\"78000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"30\",\"weight_class\":\"kg\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:07:09', '2022-04-13 07:07:09'),
(1573, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:07:09', '2022-04-13 07:07:09'),
(1574, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"D\\u00e2u T\\u00e2y\",\"keyword\":\"D\\u00e2u T\\u00e2y\",\"description\":\"D\\u00e2u T\\u00e2y \\u0111\\u01b0\\u1ee3c m\\u1ec7nh danh l\\u00e0 m\\u00f3n qu\\u00e0 qu\\u00fd t\\u1ed9c! V\\u1edbi v\\u1ecb ng\\u1ecdt thanh, m\\u00f9i th\\u01a1m ng\\u1ecdt ng\\u00e0o\",\"content\":\"<p>M&ugrave;a d&acirc;u t&acirc;y H&agrave;n tr\\u01b0\\u1edbc \\u0111&acirc;y b\\u1eaft \\u0111\\u1ea7u t\\u1eeb th&aacute;ng 6, nh\\u01b0ng th\\u1eddi gian tr\\u1ed3ng b&acirc;y gi\\u1edd \\u0111\\u01b0\\u1ee3c \\u0111\\u1ea9y l&ecirc;n, v&agrave; n&oacute; tr\\u1edf th&agrave;nh c&acirc;y v\\u1ee5 \\u0111&ocirc;ng c\\u1ee7a H&agrave;n Qu\\u1ed1c. Ch&iacute;nh v&igrave; \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng trong th\\u1eddi ti\\u1ebft m&ugrave;a \\u0111&ocirc;ng n&ecirc;n qu\\u1ea3 d&acirc;u t&acirc;y \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c v\\u1ebb ngo&agrave;i \\u0111\\u1eb9p v&agrave; l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng cao nh\\u1edd v&agrave; th\\u1eddi ti\\u1ebft m&ugrave;a \\u0111&ocirc;ng c\\u1ee7a H&agrave;n Qu\\u1ed1c. \\u1ede H&agrave;n Qu\\u1ed1c c&oacute; r\\u1ea5t nhi\\u1ec1u gi\\u1ed1ng d&acirc;u \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nh\\u01b0 Seolhyang, Meahyang, Geumsil...Trong \\u0111&oacute; gi\\u1ed1ng d&acirc;u Sealhyang \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng v\\u1edbi di\\u1ec7n t&iacute;ch nhi\\u1ec1u nh\\u1ea5t<\\/p>\\r\\n\\r\\n<p>D&acirc;u t&acirc;y H&agrave;n Qu\\u1ed1c \\u0111\\u01b0\\u1ee3c m\\u1ec7nh danh l&agrave; qu\\u1ed1c qu\\u1ea3 c\\u1ee7a H&agrave;n Qu\\u1ed1c. D&acirc;u t&acirc;y H&agrave; Qu\\u1ed1c \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng trong nh&agrave; k&iacute;nh, th\\u1ee7y canh, kh&ocirc;ng ph\\u1ea3i tr\\u1ed3ng \\u1edf ru\\u1ed9ng nh\\u01b0 c&aacute;c v&ugrave;ng kh&aacute;c n&ecirc;n h&agrave;m&nbsp;l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng c\\u1ee7a d&acirc;u H&agrave;n lu&ocirc;n cao.&nbsp;V\\u1edbi k\\u1ef9 thu\\u1eadt tr\\u1ed3ng cao n&ecirc;n tr&aacute;i d&acirc;u H&agrave;n Qu\\u1ed1c \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 ch\\u1eafc qu\\u1ea3 v&agrave; ng\\u1ecdt, th\\u01a1m cao, \\u0111\\u1ecf h\\u1ed3ng \\u0111\\u1ec1u qu\\u1ea3. D&acirc;u t&acirc;y gi\\u1ea7u vitamin C h\\u01a1n c\\u1ea3 chanh, c&oacute; ch\\u1ee9a axit metalalicylic c&oacute; t&aacute;c d\\u1ee5ng ch\\u1ed1ng vi&ecirc;m, gi\\u1ea3m \\u0111au, ph&ograve;ng ch\\u1ed1ng c&aacute;c b\\u1ec7nh c\\u1ee7a ng\\u01b0\\u1eddi l\\u1edbn nh\\u01b0 cao huy\\u1ebft &aacute;p, ti\\u1ec3u \\u0111\\u01b0\\u1eddng, b&eacute;o ph&igrave;, tim m\\u1ea1ch. D&acirc;u t&acirc;y c&oacute; th\\u1ec3 n&oacute;i l&agrave; \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 ho&agrave;n h\\u1ea3o c\\u1ea3 v\\u1ebb \\u0111\\u1eb9p, h\\u01b0\\u01a1ng v\\u1ecb v&agrave; s\\u1ee9c kh\\u1ecfe.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-thumb=\\\"large\\\" original-height=\\\"1280\\\" original-width=\\\"960\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/thumb\\/large\\/100\\/065\\/538\\/files\\/dau-han-chuan-f6589e42-7d90-4e35-9da1-24b93ef99e13.jpg?v=1644451581970\\\" \\/><\\/p>\\r\\n\\r\\n<h3 id=\\\"dau-chuan-han-quoc-duoc-ban-tai-he-thong-hala\\\"><em>Dau chu\\u1ea9n H&agrave;n Qu\\u1ed1c \\u0111\\u01b0\\u1ee3c b&aacute;n t\\u1ea1i h\\u1ec7 th\\u1ed1ng Hala<\\/em><\\/h3>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/30.jpg\",\"sku\":\"D01\",\"alias\":\"dau-tay\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"90000\",\"tax_id\":\"0\",\"price_promotion\":\"78000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"30\",\"weight_class\":\"kg\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:07:19', '2022-04-13 07:07:19'),
(1575, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:07:20', '2022-04-13 07:07:20'),
(1576, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:08:05', '2022-04-13 07:08:05'),
(1577, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 07:09:00', '2022-04-13 07:09:00'),
(1578, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833740951\"}', '2022-04-13 07:09:01', '2022-04-13 07:09:01'),
(1579, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649833740952\"}', '2022-04-13 07:09:01', '2022-04-13 07:09:01'),
(1580, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833740953\"}', '2022-04-13 07:09:01', '2022-04-13 07:09:01');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1581, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833740954\"}', '2022-04-13 07:09:05', '2022-04-13 07:09:05'),
(1582, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:09:17', '2022-04-13 07:09:17'),
(1583, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_\":\"1649833740955\"}', '2022-04-13 07:09:18', '2022-04-13 07:09:18'),
(1584, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649833740956\"}', '2022-04-13 07:09:18', '2022-04-13 07:09:18'),
(1585, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Chanh \\u0110\\u00e0o\",\"keyword\":\"Chanh \\u0110\\u00e0o\",\"description\":\"Trong n\\u01b0\\u1edbc chanh c\\u00f3 r\\u1ea5t nhi\\u1ec1u th\\u00e0nh ph\\u1ea7n t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe, tham kh\\u1ea3o ngay 8 t\\u00e1c d\\u1ee5ng t\\u1ed1t nh\\u1ea5t\",\"content\":\"<h3 id=\\\"toc_5\\\"><strong>T\\u0103ng c\\u01b0\\u1eddng ch\\u1ee9c n\\u0103ng ph\\u1ee5c h\\u1ed3i<\\/strong><\\/h3>\\r\\n\\r\\n<p><img alt=\\\"U\\u1ed1ng n\\u01b0\\u1edbc chanh c\\u00f3 t\\u00e1c d\\u1ee5ng g\\u00ec? 8+ t\\u00e1c d\\u1ee5ng t\\u1ed1t nh\\u1ea5t khi u\\u1ed1ng n\\u01b0\\u1edbc chanh 5\\\" height=\\\"396\\\" src=\\\"https:\\/\\/cdn.vuahanghieu.com\\/unsafe\\/0x0\\/left\\/top\\/smart\\/filters:quality(90)\\/https:\\/\\/admin.vuahanghieu.com\\/upload\\/news\\/content\\/2021\\/12\\/uong-nuoc-chanh-co-tac-dung-gi-5-jpg-1640404357-25122021105237.jpg\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n\\r\\n<p>C\\u0169ng nh\\u1edd th&agrave;nh ph\\u1ea7n vitamin C trong da t\\u1eeb \\u0111&oacute; c&oacute; th\\u1ec3 gi&uacute;p ch\\u1eefa l&agrave;nh l&agrave;n da b\\u1ecb vi&ecirc;m v&agrave; n\\u1ed5i \\u0111\\u1ecf hi\\u1ec7u qu\\u1ea3, ngo&agrave;i ra c\\u0169ng c&oacute; t&aacute;c d\\u1ee5ng ng\\u0103n ng\\u1eeba h&ocirc;i mi\\u1ec7ng hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<h3 id=\\\"toc_6\\\"><strong>N\\u01b0\\u1edbc n\\u01b0\\u1edbc chanh l\\u1ee3i ti\\u1ec3u<\\/strong><\\/h3>\\r\\n\\r\\n<p><img alt=\\\"U\\u1ed1ng n\\u01b0\\u1edbc chanh c\\u00f3 t\\u00e1c d\\u1ee5ng g\\u00ec? 8+ t\\u00e1c d\\u1ee5ng t\\u1ed1t nh\\u1ea5t khi u\\u1ed1ng n\\u01b0\\u1edbc chanh 6\\\" height=\\\"358\\\" src=\\\"https:\\/\\/cdn.vuahanghieu.com\\/unsafe\\/0x0\\/left\\/top\\/smart\\/filters:quality(90)\\/https:\\/\\/admin.vuahanghieu.com\\/upload\\/news\\/content\\/2021\\/12\\/uong-nuoc-chanh-co-tac-dung-gi-6-jpg-1640404371-25122021105251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n\\r\\n<p>N\\u01b0\\u1edbc chanh th\\u1ea3i \\u0111\\u1ed9c trong th\\u1eadn t\\u1ed1t, l&agrave;m s\\u1ea1ch th\\u1eadn n&ecirc;n c\\u1ef1c k\\u1ef3 l\\u1ee3i ti\\u1ec3u, nh\\u01b0ng b\\u1ea1n kh&ocirc;ng n&ecirc;n l\\u1ea1m d\\u1ee5ng u\\u1ed1ng n\\u01b0\\u1edbc chanh qu&aacute; nhi\\u1ec1u v&igrave; c&oacute; th\\u1ec3 \\u1ea3nh h\\u01b0\\u1edfng kh&ocirc;ng t\\u1ed1t \\u0111\\u1ebfn d\\u1ea1 d&agrave;y.<\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/22.jpg\",\"sku\":\"C03\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"20000\",\"tax_id\":\"0\",\"price_promotion\":\"15000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:09:58', '2022-04-13 07:09:58'),
(1586, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:09:58', '2022-04-13 07:09:58'),
(1587, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:23:40', '2022-04-13 07:23:40'),
(1588, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:23:44', '2022-04-13 07:23:44'),
(1589, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"category\"}', '2022-04-13 07:24:09', '2022-04-13 07:24:09'),
(1590, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1649834649533\"}', '2022-04-13 07:24:09', '2022-04-13 07:24:09'),
(1591, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1649834649532\"}', '2022-04-13 07:24:09', '2022-04-13 07:24:09'),
(1592, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834649534\"}', '2022-04-13 07:24:10', '2022-04-13 07:24:10'),
(1593, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:24:22', '2022-04-13 07:24:22'),
(1594, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1649834649535\"}', '2022-04-13 07:24:23', '2022-04-13 07:24:23'),
(1595, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834649536\"}', '2022-04-13 07:24:23', '2022-04-13 07:24:23'),
(1596, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Rau C\\u1ee7\",\"keyword\":\"Rau C\\u1ee7\",\"description\":\"Rau C\\u1ee7\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/11.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:24:30', '2022-04-13 07:24:30'),
(1597, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:24:30', '2022-04-13 07:24:30'),
(1598, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:24:34', '2022-04-13 07:24:34'),
(1599, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:24:36', '2022-04-13 07:24:36'),
(1600, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 07:25:59', '2022-04-13 07:25:59'),
(1601, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649834759890\"}', '2022-04-13 07:26:00', '2022-04-13 07:26:00'),
(1602, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649834759891\"}', '2022-04-13 07:26:00', '2022-04-13 07:26:00'),
(1603, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834759892\"}', '2022-04-13 07:26:00', '2022-04-13 07:26:00'),
(1604, 1, 'sc_admin/uploads/newfolder', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"name\":\"Rau\",\"_\":\"1649834759893\"}', '2022-04-13 07:26:06', '2022-04-13 07:26:06'),
(1605, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1649834759894\"}', '2022-04-13 07:26:06', '2022-04-13 07:26:06'),
(1606, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834759895\"}', '2022-04-13 07:26:06', '2022-04-13 07:26:06'),
(1607, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834759896\"}', '2022-04-13 07:26:08', '2022-04-13 07:26:08'),
(1608, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:26:15', '2022-04-13 07:26:15'),
(1609, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_\":\"1649834759897\"}', '2022-04-13 07:26:16', '2022-04-13 07:26:16'),
(1610, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834759898\"}', '2022-04-13 07:26:16', '2022-04-13 07:26:16'),
(1611, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"S\\u00fap L\\u01a1\",\"keyword\":\"S\\u00fap L\\u01a1\",\"description\":\"S\\u00fap l\\u01a1 xanh v\\u00e0 s\\u00fap l\\u01a1 tr\\u1eafng \\u0111\\u1ec1u l\\u00e0 rau h\\u1ecd c\\u1ea3i. C\\u1ea3 hai \\u0111\\u1ec1u c\\u00f3 h\\u01b0\\u01a1ng v\\u1ecb th\\u01a1m ngon khi x\\u00e0o, h\\u1ea5p ho\\u1eb7c \\u0103n s\\u1ed1ng\",\"content\":\"<p><strong>C&aacute;c l\\u1ee3i &iacute;ch s\\u1ee9c kh\\u1ecfe c\\u1ee7a s&uacute;p l\\u01a1 xanh<\\/strong><\\/p>\\r\\n\\r\\n<p>C&aacute;c lo\\u1ea1i rau h\\u1ecd c\\u1ea3i nh\\u01b0 s&uacute;p l\\u01a1 xanh \\u0111\\u1eb7c bi\\u1ec7t b\\u1ed5 d\\u01b0\\u1ee1ng v&igrave; ch&uacute;ng gi&agrave;u vitamin v&agrave; ch\\u1ea5t dinh d\\u01b0\\u1ee1ng gi&uacute;p c\\u1ea3i thi\\u1ec7n s\\u1ee9c kh\\u1ecfe tim m\\u1ea1ch, ch\\u1ed1ng ung th\\u01b0 v&agrave; c&acirc;n b\\u1eb1ng l\\u1ea1i l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng trong m&aacute;u. Ch&uacute;ng c\\u0169ng ch\\u1ee9a &iacute;t calo v&agrave; nhi\\u1ec1u ch\\u1ea5t x\\u01a1, v&igrave; v\\u1eady s\\u1ebd khi\\u1ebfn b\\u1ea1n c\\u1ea3m th\\u1ea5y no.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"S\\u00fap l\\u01a1 xanh v\\u00e0 s\\u00fap l\\u01a1 tr\\u1eafng: Lo\\u1ea1i n\\u00e0o t\\u1ed1t h\\u01a1n cho s\\u1ee9c kh\\u1ecfe? - 1\\\" src=\\\"https:\\/\\/icdn.dantri.com.vn\\/thumb_w\\/640\\/2019\\/10\\/14\\/suploxanh-1571057444357.jpg\\\" title=\\\"S\\u00fap l\\u01a1 xanh v\\u00e0 s\\u00fap l\\u01a1 tr\\u1eafng: Lo\\u1ea1i n\\u00e0o t\\u1ed1t h\\u01a1n cho s\\u1ee9c kh\\u1ecfe? - 1\\\" \\/><\\/p>\\r\\n\\r\\n<p>V&agrave; trong khi c&aacute;c lo\\u1ea1i rau kh&ocirc;ng c&oacute; nhi\\u1ec1u protein nh\\u01b0 th\\u1ecbt, th&igrave; s&uacute;p l\\u01a1 xanh l\\u1ea1i ch\\u1ee9a m\\u1ed9t l\\u01b0\\u1ee3ng \\u0111&aacute;ng ng\\u1ea1c nhi&ecirc;n. Ngo&agrave;i ra, c&aacute;c ch\\u1ea5t x\\u01a1, vitaminK, canxi... trong s&uacute;p l\\u01a1 xanh \\u0111\\u1ec1u ch\\u1ee9a l&agrave;m l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n\\r\\n<p><em><strong>Gi\\u1ea3m m\\u1ee9c cholesterol<\\/strong><\\/em><\\/p>\\r\\n\\r\\n<p>B&ocirc;ng c\\u1ea3i xanh c&oacute; nhi\\u1ec1u ch\\u1ea5t x\\u01a1 h&ograve;a tan, c&oacute; li&ecirc;n quan \\u0111\\u1ebfn vi\\u1ec7c gi\\u1ea3m cholesterol. Theo nghi&ecirc;n c\\u1ee9u \\u0111\\u01b0\\u1ee3c c&ocirc;ng b\\u1ed1 tr&ecirc;n t\\u1edd Nutrition Research, s&uacute;p l\\u01a1 xanh h\\u1ea5p \\u0111\\u1eb7c bi\\u1ec7t h\\u1eefu &iacute;ch \\u0111\\u1ec3 gi\\u1ea3m m\\u1ee9c cholesterol. (Nh&acirc;n ti\\u1ec7n, c&oacute; l\\u1ebd b\\u1ea1n \\u0111ang kh&ocirc;ng \\u0103n \\u0111\\u1ee7 ch\\u1ea5t x\\u01a1. Trong s\\u1ed1 25 \\u0111\\u1ebfn 30g m&agrave; FDA khuy\\u1ebfn ngh\\u1ecb h&agrave;ng ng&agrave;y, h\\u1ea7u h\\u1ebft ng\\u01b0\\u1eddi M\\u1ef9 ch\\u1ec9 \\u0103n 16g).<\\/p>\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/Rau\\/11.jpg\",\"sku\":\"S01\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"20000\",\"tax_id\":\"0\",\"stock\":\"20\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:26:41', '2022-04-13 07:26:41'),
(1612, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:26:41', '2022-04-13 07:26:41'),
(1613, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"S\\u00fap L\\u01a1\",\"keyword\":\"S\\u00fap L\\u01a1\",\"description\":\"S\\u00fap l\\u01a1 xanh v\\u00e0 s\\u00fap l\\u01a1 tr\\u1eafng \\u0111\\u1ec1u l\\u00e0 rau h\\u1ecd c\\u1ea3i. C\\u1ea3 hai \\u0111\\u1ec1u c\\u00f3 h\\u01b0\\u01a1ng v\\u1ecb th\\u01a1m ngon khi x\\u00e0o,\",\"content\":\"<p><strong>C&aacute;c l\\u1ee3i &iacute;ch s\\u1ee9c kh\\u1ecfe c\\u1ee7a s&uacute;p l\\u01a1 xanh<\\/strong><\\/p>\\r\\n\\r\\n<p>C&aacute;c lo\\u1ea1i rau h\\u1ecd c\\u1ea3i nh\\u01b0 s&uacute;p l\\u01a1 xanh \\u0111\\u1eb7c bi\\u1ec7t b\\u1ed5 d\\u01b0\\u1ee1ng v&igrave; ch&uacute;ng gi&agrave;u vitamin v&agrave; ch\\u1ea5t dinh d\\u01b0\\u1ee1ng gi&uacute;p c\\u1ea3i thi\\u1ec7n s\\u1ee9c kh\\u1ecfe tim m\\u1ea1ch, ch\\u1ed1ng ung th\\u01b0 v&agrave; c&acirc;n b\\u1eb1ng l\\u1ea1i l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng trong m&aacute;u. Ch&uacute;ng c\\u0169ng ch\\u1ee9a &iacute;t calo v&agrave; nhi\\u1ec1u ch\\u1ea5t x\\u01a1, v&igrave; v\\u1eady s\\u1ebd khi\\u1ebfn b\\u1ea1n c\\u1ea3m th\\u1ea5y no.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"S\\u00fap l\\u01a1 xanh v\\u00e0 s\\u00fap l\\u01a1 tr\\u1eafng: Lo\\u1ea1i n\\u00e0o t\\u1ed1t h\\u01a1n cho s\\u1ee9c kh\\u1ecfe? - 1\\\" src=\\\"https:\\/\\/icdn.dantri.com.vn\\/thumb_w\\/640\\/2019\\/10\\/14\\/suploxanh-1571057444357.jpg\\\" title=\\\"S\\u00fap l\\u01a1 xanh v\\u00e0 s\\u00fap l\\u01a1 tr\\u1eafng: Lo\\u1ea1i n\\u00e0o t\\u1ed1t h\\u01a1n cho s\\u1ee9c kh\\u1ecfe? - 1\\\" \\/><\\/p>\\r\\n\\r\\n<p>V&agrave; trong khi c&aacute;c lo\\u1ea1i rau kh&ocirc;ng c&oacute; nhi\\u1ec1u protein nh\\u01b0 th\\u1ecbt, th&igrave; s&uacute;p l\\u01a1 xanh l\\u1ea1i ch\\u1ee9a m\\u1ed9t l\\u01b0\\u1ee3ng \\u0111&aacute;ng ng\\u1ea1c nhi&ecirc;n. Ngo&agrave;i ra, c&aacute;c ch\\u1ea5t x\\u01a1, vitaminK, canxi... trong s&uacute;p l\\u01a1 xanh \\u0111\\u1ec1u ch\\u1ee9a l&agrave;m l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n\\r\\n<p><em><strong>Gi\\u1ea3m m\\u1ee9c cholesterol<\\/strong><\\/em><\\/p>\\r\\n\\r\\n<p>B&ocirc;ng c\\u1ea3i xanh c&oacute; nhi\\u1ec1u ch\\u1ea5t x\\u01a1 h&ograve;a tan, c&oacute; li&ecirc;n quan \\u0111\\u1ebfn vi\\u1ec7c gi\\u1ea3m cholesterol. Theo nghi&ecirc;n c\\u1ee9u \\u0111\\u01b0\\u1ee3c c&ocirc;ng b\\u1ed1 tr&ecirc;n t\\u1edd Nutrition Research, s&uacute;p l\\u01a1 xanh h\\u1ea5p \\u0111\\u1eb7c bi\\u1ec7t h\\u1eefu &iacute;ch \\u0111\\u1ec3 gi\\u1ea3m m\\u1ee9c cholesterol. (Nh&acirc;n ti\\u1ec7n, c&oacute; l\\u1ebd b\\u1ea1n \\u0111ang kh&ocirc;ng \\u0103n \\u0111\\u1ee7 ch\\u1ea5t x\\u01a1. Trong s\\u1ed1 25 \\u0111\\u1ebfn 30g m&agrave; FDA khuy\\u1ebfn ngh\\u1ecb h&agrave;ng ng&agrave;y, h\\u1ea7u h\\u1ebft ng\\u01b0\\u1eddi M\\u1ef9 ch\\u1ec9 \\u0103n 16g).<\\/p>\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/Rau\\/11.jpg\",\"sku\":\"S01\",\"alias\":\"sup-lo\",\"brand_id\":null,\"cost\":\"0\",\"price\":\"20000\",\"tax_id\":\"0\",\"stock\":\"20\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:26:49', '2022-04-13 07:26:49'),
(1614, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:26:49', '2022-04-13 07:26:49'),
(1615, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:26:52', '2022-04-13 07:26:52'),
(1616, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 07:27:56', '2022-04-13 07:27:56'),
(1617, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649834876706\"}', '2022-04-13 07:27:57', '2022-04-13 07:27:57'),
(1618, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649834876707\"}', '2022-04-13 07:27:57', '2022-04-13 07:27:57'),
(1619, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834876708\"}', '2022-04-13 07:27:57', '2022-04-13 07:27:57'),
(1620, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834876709\"}', '2022-04-13 07:27:58', '2022-04-13 07:27:58'),
(1621, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:28:05', '2022-04-13 07:28:05'),
(1622, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_\":\"1649834876710\"}', '2022-04-13 07:28:05', '2022-04-13 07:28:05'),
(1623, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834876711\"}', '2022-04-13 07:28:06', '2022-04-13 07:28:06'),
(1624, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u1eafp C\\u1ea3i\",\"keyword\":\"B\\u1eafp C\\u1ea3i\",\"description\":\"B\\u1eafp c\\u1ea3i c\\u00f9ng thu\\u1ed9c h\\u1ecd v\\u1edbi b\\u00f4ng c\\u1ea3i xanh, c\\u1ea3i Brussels\",\"content\":\"<h2>Th&agrave;nh ph\\u1ea7n dinh d\\u01b0\\u1ee1ng c\\u1ee7a b\\u1eafp c\\u1ea3i<\\/h2>\\r\\n\\r\\n<p>Theo C\\u01a1 s\\u1edf d\\u1eef li\\u1ec7u dinh d\\u01b0\\u1ee1ng qu\\u1ed1c gia c\\u1ee7a Hoa K\\u1ef3, 1 n\\u1eeda ch&eacute;n b\\u1eafp c\\u1ea3i n\\u1ea5u ch&iacute;n c\\u1eaft nh\\u1ecf (75 gram) ch\\u1ee9a:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>17 calo<\\/li>\\r\\n\\t<li>B\\u1ed1n gam carbohydrate (trong \\u0111&oacute; c&oacute; ch\\u1ee9a 2 gam \\u0111\\u01b0\\u1eddng v&agrave; 1 gam ch\\u1ea5t x\\u01a1)<\\/li>\\r\\n\\t<li>M\\u1ed9t gam protein<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\u0102n n\\u1eeda ch&eacute;n b\\u1eafp c\\u1ea3i n\\u1ea5u ch&iacute;n s\\u1ebd cung c\\u1ea5p 30-35% nhu c\\u1ea7u&nbsp;<a href=\\\"https:\\/\\/www.vinmec.com\\/vi\\/tin-tuc\\/thong-tin-suc-khoe\\/vitamin-c-cong-dung-lieu-dung-thich-hop\\/\\\"><strong>vitamin C<\\/strong><\\/a>&nbsp;h&agrave;ng ng&agrave;y v&agrave;:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>81,5 microgam&nbsp;<a href=\\\"https:\\/\\/www.vinmec.com\\/vi\\/co-the-nguoi\\/vitamin-k-93\\/\\\"><strong>vitamin K<\\/strong><\\/a><\\/li>\\r\\n\\t<li>11 miligam magi&ecirc;<\\/li>\\r\\n\\t<li>22 microgam folate<\\/li>\\r\\n\\t<li>Th&ecirc;m v&agrave;o \\u0111&oacute;, l\\u01b0\\u1ee3ng&nbsp;<a href=\\\"https:\\/\\/www.vinmec.com\\/vi\\/tin-tuc\\/thong-tin-suc-khoe\\/vitamin-b6-pyridoxine-cong-dung-lieu-dung-tac-dung-phu\\/\\\"><strong>vitamin B-6<\\/strong><\\/a>, canxi, kali v&agrave; thiamin nh\\u01b0ng &iacute;t h\\u01a1n.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Ngo&agrave;i ra, b\\u1eafp c\\u1ea3i c&oacute; nhi\\u1ec1u&nbsp;<a href=\\\"https:\\/\\/www.vinmec.com\\/vi\\/tin-tuc\\/thong-tin-suc-khoe\\/vai-tro-cua-chat-xo-voi-co\\/\\\"><strong>ch\\u1ea5t x\\u01a1<\\/strong><\\/a>&nbsp;v&agrave; ch\\u1ee9a ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a m\\u1ea1nh, bao g\\u1ed3m polyphenol v&agrave; c&aacute;c h\\u1ee3p ch\\u1ea5t l\\u01b0u hu\\u1ef3nh. Khi so s&aacute;nh m&agrave;u s\\u1eafc c\\u1ee7a c\\u1ea3i b\\u1eafp, c&aacute;c chuy&ecirc;n gia nh\\u1eadn th\\u1ea5y r\\u1eb1ng lo\\u1ea1i b\\u1eafp c\\u1ea3i c&oacute; m&agrave;u \\u0111\\u1ecf c&oacute; ch\\u1ee9a nhi\\u1ec1u h\\u1ee3p ch\\u1ea5t n&agrave;y h\\u01a1n so v\\u1edbi b\\u1eafp c\\u1ea3i m&agrave;u xanh. Ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a c&oacute; t&aacute;c d\\u1ee5ng b\\u1ea3o v\\u1ec7 c\\u01a1 th\\u1ec3 kh&ocirc;ng b\\u1ecb t\\u1ed5n th\\u01b0\\u01a1ng do c&aacute;c g\\u1ed1c t\\u1ef1 do g&acirc;y ra. G\\u1ed1c t\\u1ef1 do l&agrave; c&aacute;c ph&acirc;n t\\u1eed c&oacute; s\\u1ed1 electron l\\u1ebb, l&agrave;m cho ch&uacute;ng kh&ocirc;ng \\u1ed5n \\u0111\\u1ecbnh. Khi c&aacute;c g\\u1ed1c t\\u1ef1 do n&agrave;y qu&aacute; nhi\\u1ec1u v&agrave; ho\\u1ea1t \\u0111\\u1ed9ng kh&ocirc;ng \\u1ed5n \\u0111\\u1ecbnh, ch&uacute;ng c&oacute; th\\u1ec3 l&agrave;m h\\u1ecfng c&aacute;c t\\u1ebf b&agrave;o c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Nh\\u01b0 b\\u1ea1n c&oacute; th\\u1ec3 th\\u1ea5y trong danh s&aacute;ch tr&ecirc;n, b\\u1eafp c\\u1ea3i c&oacute; ch\\u1ee9a vitamin B6 v&agrave; folate, c\\u1ea3 hai \\u0111\\u1ec1u r\\u1ea5t c\\u1ea7n thi\\u1ebft cho nhi\\u1ec1u qu&aacute; tr&igrave;nh quan tr\\u1ecdng trong c\\u01a1 th\\u1ec3, nh\\u01b0 qu&aacute; tr&igrave;nh chuy\\u1ec3n h&oacute;a n\\u0103ng l\\u01b0\\u1ee3ng trong c\\u01a1 th\\u1ec3 v&agrave; ho\\u1ea1t \\u0111\\u1ed9ng b&igrave;nh th\\u01b0\\u1eddng c\\u1ee7a h\\u1ec7 th\\u1ea7n kinh.<\\/p>\\r\\n\\r\\n<p>B\\u1eafp c\\u1ea3i \\u0111\\u1eb7c bi\\u1ec7t ch\\u1ee9a nhi\\u1ec1u vitamin C, m\\u1ed9t ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a m\\u1ea1nh c&oacute; th\\u1ec3 b\\u1ea3o v\\u1ec7 ch\\u1ed1ng l\\u1ea1i&nbsp;<a href=\\\"https:\\/\\/vinmec.com\\/vi\\/tin-tuc\\/thong-tin-suc-khoe\\/nhan-biet-6-dau-hieu-thuong-gap-cua-benh-tim-mach\\/\\\"><strong>b\\u1ec7nh tim<\\/strong><\\/a>, m\\u1ed9t s\\u1ed1 b\\u1ec7nh ung th\\u01b0 v&agrave; gi\\u1ea3m th\\u1ecb l\\u1ef1c.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"b\\u1eafp c\\u1ea3i\\\" data-src=\\\"https:\\/\\/vinmec-prod.s3.amazonaws.com\\/images\\/20200514_130227_102133_screenshot_15894613.max-1800x1800.png\\\" lazy=\\\"loaded\\\" src=\\\"https:\\/\\/vinmec-prod.s3.amazonaws.com\\/images\\/20200514_130227_102133_screenshot_15894613.max-1800x1800.png\\\" \\/><\\/p>\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/Rau\\/12.jpg\",\"sku\":\"B01\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"20000\",\"tax_id\":\"0\",\"stock\":\"200\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:28:26', '2022-04-13 07:28:26'),
(1625, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:28:27', '2022-04-13 07:28:27'),
(1626, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:28:30', '2022-04-13 07:28:30'),
(1627, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 07:29:27', '2022-04-13 07:29:27'),
(1628, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649834968164\"}', '2022-04-13 07:29:28', '2022-04-13 07:29:28'),
(1629, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649834968165\"}', '2022-04-13 07:29:28', '2022-04-13 07:29:28'),
(1630, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834968166\"}', '2022-04-13 07:29:29', '2022-04-13 07:29:29'),
(1631, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834968167\"}', '2022-04-13 07:29:31', '2022-04-13 07:29:31'),
(1632, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:29:37', '2022-04-13 07:29:37'),
(1633, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_\":\"1649834968168\"}', '2022-04-13 07:29:38', '2022-04-13 07:29:38'),
(1634, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649834968169\"}', '2022-04-13 07:29:38', '2022-04-13 07:29:38'),
(1635, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Tr\\u00e1i B\\u01a1\",\"keyword\":\"Tr\\u00e1i B\\u01a1\",\"description\":\"Qu\\u1ea3 b\\u01a1 l\\u00e0 m\\u1ed9t lo\\u1ea1i tr\\u00e1i c\\u00e2y kh\\u00e1 \\u0111\\u1ed9c \\u0111\\u00e1o\",\"content\":\"<p><strong>&nbsp;Qu\\u1ea3 b\\u01a1 c\\u1ef1c k\\u1ef3 b\\u1ed5 d\\u01b0\\u1ee1ng<\\/strong><\\/p>\\r\\n\\r\\n<p>B\\u01a1 l&agrave; lo\\u1ea1i qu\\u1ea3 r\\u1ea5t b\\u1ed5 d\\u01b0\\u1ee1ng cho c\\u01a1 th\\u1ec3, n&oacute; ch\\u1ee9a nhi\\u1ec1u lo\\u1ea1i ch\\u1ea5t dinh d\\u01b0\\u1ee1ng, bao g\\u1ed3m 20 lo\\u1ea1i vitamin c&ugrave;ng kho&aacute;ng ch\\u1ea5t nh\\u01b0: vitamin C, E, K v&agrave; B6,... c&oacute; l\\u1ee3i cho s\\u1ee9c kh\\u1ecfe.<\\/p>\\r\\n\\r\\n<p>B\\u01a1 cung c\\u1ea5p d\\u1ed3i d&agrave;o c&aacute;c ch\\u1ea5t magi&ecirc;, kali, beta-carotene v&agrave; a x&iacute;t b&eacute;o omega-3, l&agrave; t&aacute;c nh&acirc;n tuy\\u1ec7t v\\u1eddi trong vi\\u1ec7c ng\\u0103n ng\\u1eeba v&agrave; ki\\u1ec3m so&aacute;t b\\u1ec7nh tim c\\u0169ng nh\\u01b0 duy tr&igrave; t&oacute;c, da v&agrave; m&oacute;ng kh\\u1ecfe m\\u1ea1nh<\\/p>\\r\\n\\r\\n<p><img alt=\\\"B\\u01a1 mang nhi\\u1ec1u ch\\u1ea5t dinh d\\u01b0\\u1ee1ng c\\u00f3 l\\u1ee3i cho s\\u1ee9c kh\\u1ecfe. \\u1ea2nh minh h\\u1ecda. \\u0110\\u1ed3 h\\u1ecda: \\u0110\\u1eb7ng Tri\\u1ec1u\\\" src=\\\"https:\\/\\/media-cdn-v2.laodong.vn\\/Storage\\/NewsPortal\\/2021\\/5\\/1\\/904428\\/Capture.JPG\\\" \\/><\\/p>\\r\\n\\r\\n<p>B\\u01a1 mang nhi\\u1ec1u ch\\u1ea5t dinh d\\u01b0\\u1ee1ng c&oacute; l\\u1ee3i cho s\\u1ee9c kh\\u1ecfe. \\u1ea2nh minh h\\u1ecda. \\u0110\\u1ed3 h\\u1ecda: \\u0110\\u1eb7ng Tri\\u1ec1u<\\/p>\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/Rau\\/6.jpg\",\"sku\":\"B02\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"2000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:30:02', '2022-04-13 07:30:02'),
(1636, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:30:02', '2022-04-13 07:30:02'),
(1637, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:30:05', '2022-04-13 07:30:05'),
(1638, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"type\":\"product\"}', '2022-04-13 07:31:44', '2022-04-13 07:31:44'),
(1639, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649835105525\"}', '2022-04-13 07:31:45', '2022-04-13 07:31:45'),
(1640, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1649835105526\"}', '2022-04-13 07:31:45', '2022-04-13 07:31:45'),
(1641, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649835105527\"}', '2022-04-13 07:31:46', '2022-04-13 07:31:46'),
(1642, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649835105528\"}', '2022-04-13 07:31:48', '2022-04-13 07:31:48'),
(1643, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:31:58', '2022-04-13 07:31:58'),
(1644, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"_\":\"1649835105529\"}', '2022-04-13 07:31:59', '2022-04-13 07:31:59'),
(1645, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"working_dir\":\"\\/Rau\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1649835105530\"}', '2022-04-13 07:31:59', '2022-04-13 07:31:59'),
(1646, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e1nh M\\u00ec\",\"keyword\":\"B\\u00e1nh M\\u00ec\",\"description\":\"R\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi ngh\\u0129 r\\u1eb1ng c\\u00e1ch l\\u00e0m b\\u00e1nh m\\u00ec kh\\u00e1 kh\\u00f3, tuy nhi\\u00ean th\\u1ef1c t\\u1ebf\",\"content\":\"<h3>Th&agrave;nh ph\\u1ea9m<\\/h3>\\r\\n\\r\\n<p>V\\u1eady l&agrave; ta \\u0111&atilde; c&oacute; \\u0111\\u01b0\\u1ee3c 1 m\\u1ebb b&aacute;nh m&igrave; \\u0111\\u1eb7c ru\\u1ed9t gi&ograve;n r\\u1ee5m, th\\u01a1m ngon r\\u1ed3i \\u0111\\u1ea5y. Ch\\u1ec9 c\\u1ea7n c\\u1eafn m\\u1ed9t mi\\u1ebfng, b\\u1ea1n s\\u1ebd c\\u1ea3m nh\\u1eadn \\u0111\\u01b0\\u1ee3c l\\u1edbp v\\u1ecf ngo&agrave;i gi&ograve;n tan, ru\\u1ed9t b&ecirc;n trong th&igrave; m\\u1ec1m m\\u1ecbn, b&ugrave;i b&ugrave;i.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"B\\u01b0\\u1edbc 6 Th\\u00e0nh ph\\u1ea9m B\\u00e1nh m\\u00ec \\u0111\\u1eb7c ru\\u1ed9t b\\u1eb1ng n\\u1ed3i chi\\u00ean kh\\u00f4ng d\\u1ea7u\\\" data-picid=\\\"36014\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/09\\/CookRecipe\\/GalleryStep\\/thanh-pham-792.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/09\\/CookRecipe\\/GalleryStep\\/thanh-pham-792.jpg\\\" \\/><\\/p>\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/Rau\\/10.jpg\",\"sku\":\"B04\",\"alias\":null,\"brand_id\":null,\"cost\":\"0\",\"price\":\"5000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 07:32:19', '2022-04-13 07:32:19'),
(1647, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 07:32:19', '2022-04-13 07:32:19'),
(1648, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 08:56:12', '2022-04-13 08:56:12'),
(1649, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 09:21:53', '2022-04-13 09:21:53'),
(1650, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"email\",\"value\":\"quanghai17@gmail.com\",\"pk\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 09:22:15', '2022-04-13 09:22:15'),
(1651, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"phone\",\"value\":\"0359808367\",\"pk\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 09:22:25', '2022-04-13 09:22:25'),
(1652, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"name\":\"address\",\"value\":\"112-T\\u00e2n Th\\u1ecbnh- TP Th\\u00e1i Nguy\\u00ean- TN\",\"pk\":null,\"_token\":\"03aUNyHVx1hztFuezfp7Dse8C8nNXnntu89aDeCi\"}', '2022-04-13 09:22:55', '2022-04-13 09:22:55'),
(1653, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-13 09:51:34', '2022-04-13 09:51:34'),
(1654, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 02:27:35', '2022-04-14 02:27:35'),
(1655, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 02:27:44', '2022-04-14 02:27:44'),
(1656, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 02:27:46', '2022-04-14 02:27:46'),
(1657, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 02:38:17', '2022-04-14 02:38:17'),
(1658, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 02:59:16', '2022-04-14 02:59:16'),
(1659, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"O59Po6xEIOUJBm1MAwe3zK75fePv4LX2neXqKDfP\",\"key\":\"book\"}', '2022-04-14 02:59:21', '2022-04-14 02:59:21'),
(1660, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 02:59:21', '2022-04-14 02:59:21'),
(1661, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_token\":\"O59Po6xEIOUJBm1MAwe3zK75fePv4LX2neXqKDfP\",\"key\":\"fresh-mart\"}', '2022-04-14 03:00:10', '2022-04-14 03:00:10'),
(1662, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:00:10', '2022-04-14 03:00:10'),
(1663, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:16:33', '2022-04-14 03:16:33'),
(1664, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:16:42', '2022-04-14 03:16:42'),
(1665, 1, 'sc_admin/customer/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"oUJfbHXdL0fpergYZq7HXkDmrdEQAUf8b6wAoIOp\"}', '2022-04-14 03:16:46', '2022-04-14 03:16:46'),
(1666, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:16:47', '2022-04-14 03:16:47'),
(1667, 1, 'sc_admin/customer/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"oUJfbHXdL0fpergYZq7HXkDmrdEQAUf8b6wAoIOp\"}', '2022-04-14 03:16:51', '2022-04-14 03:16:51'),
(1668, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:16:51', '2022-04-14 03:16:51'),
(1669, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:23:52', '2022-04-14 03:23:52'),
(1670, 1, 'sc_admin/customer/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"6IGIT1wUIDS5pLsTRhNuiPZuEO5ndibOuOGtqhou\"}', '2022-04-14 03:23:56', '2022-04-14 03:23:56'),
(1671, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:23:57', '2022-04-14 03:23:57'),
(1672, 1, 'sc_admin/customer/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:23:58', '2022-04-14 03:23:58'),
(1673, 1, 'sc_admin/customer/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"6IGIT1wUIDS5pLsTRhNuiPZuEO5ndibOuOGtqhou\"}', '2022-04-14 03:24:04', '2022-04-14 03:24:04'),
(1674, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:24:04', '2022-04-14 03:24:04'),
(1675, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:41:23', '2022-04-14 03:41:23'),
(1676, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"U7Qdc9xzYD5TCVmkhJD0teqCkj58o151f5povpYX\"}', '2022-04-14 03:41:30', '2022-04-14 03:41:30'),
(1677, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:41:31', '2022-04-14 03:41:31'),
(1678, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"U7Qdc9xzYD5TCVmkhJD0teqCkj58o151f5povpYX\"}', '2022-04-14 03:41:33', '2022-04-14 03:41:33'),
(1679, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:41:34', '2022-04-14 03:41:34'),
(1680, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"U7Qdc9xzYD5TCVmkhJD0teqCkj58o151f5povpYX\"}', '2022-04-14 03:41:36', '2022-04-14 03:41:36'),
(1681, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:41:36', '2022-04-14 03:41:36'),
(1682, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"U7Qdc9xzYD5TCVmkhJD0teqCkj58o151f5povpYX\"}', '2022-04-14 03:41:39', '2022-04-14 03:41:39'),
(1683, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:41:39', '2022-04-14 03:41:39'),
(1684, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"U7Qdc9xzYD5TCVmkhJD0teqCkj58o151f5povpYX\"}', '2022-04-14 03:41:41', '2022-04-14 03:41:41'),
(1685, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:41:41', '2022-04-14 03:41:41'),
(1686, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"U7Qdc9xzYD5TCVmkhJD0teqCkj58o151f5povpYX\"}', '2022-04-14 03:41:44', '2022-04-14 03:41:44'),
(1687, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:41:44', '2022-04-14 03:41:44'),
(1688, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"U7Qdc9xzYD5TCVmkhJD0teqCkj58o151f5povpYX\"}', '2022-04-14 03:41:46', '2022-04-14 03:41:46'),
(1689, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-14 03:41:47', '2022-04-14 03:41:47'),
(1690, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:41:51', '2022-04-14 03:41:51'),
(1691, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '[]', '2022-04-14 03:54:53', '2022-04-14 03:54:53'),
(1692, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 08:21:56', '2022-04-14 08:21:56'),
(1693, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 08:22:00', '2022-04-14 08:22:00'),
(1694, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 08:22:12', '2022-04-14 08:22:12'),
(1695, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 08:28:47', '2022-04-14 08:28:47'),
(1696, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 09:21:52', '2022-04-14 09:21:52'),
(1697, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 09:21:54', '2022-04-14 09:21:54'),
(1698, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 09:47:43', '2022-04-14 09:47:43');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1699, 1, 'sc_admin/product/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 09:47:47', '2022-04-14 09:47:47'),
(1700, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 14:08:16', '2022-04-14 14:08:16'),
(1701, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 14:08:25', '2022-04-14 14:08:25'),
(1702, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 14:08:28', '2022-04-14 14:08:28'),
(1703, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 14:08:31', '2022-04-14 14:08:31'),
(1704, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 14:10:22', '2022-04-14 14:10:22'),
(1705, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-14 14:10:26', '2022-04-14 14:10:26'),
(1706, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-15 01:50:07', '2022-04-15 01:50:07'),
(1707, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-15 01:50:20', '2022-04-15 01:50:20'),
(1708, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-15 01:54:11', '2022-04-15 01:54:11'),
(1709, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '[]', '2022-04-15 01:54:23', '2022-04-15 01:54:23'),
(1710, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 03:17:33', '2022-04-15 03:17:33'),
(1711, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 03:17:47', '2022-04-15 03:17:47'),
(1712, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 03:17:50', '2022-04-15 03:17:50'),
(1713, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 03:17:53', '2022-04-15 03:17:53'),
(1714, 1, 'sc_admin/customer_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 03:18:53', '2022-04-15 03:18:53'),
(1715, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 03:18:58', '2022-04-15 03:18:58'),
(1716, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 03:19:02', '2022-04-15 03:19:02'),
(1717, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 04:01:50', '2022-04-15 04:01:50'),
(1718, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 04:25:03', '2022-04-15 04:25:03'),
(1719, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 06:48:26', '2022-04-15 06:48:26'),
(1720, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 06:58:23', '2022-04-15 06:58:23'),
(1721, 1, 'sc_admin/news/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"EZp7EYOFgwzDc8Xtsh3RixT94u2HiD0t8zAKAkv8\"}', '2022-04-15 06:58:27', '2022-04-15 06:58:27'),
(1722, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-15 06:58:27', '2022-04-15 06:58:27'),
(1723, 1, 'sc_admin/news/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 06:58:30', '2022-04-15 06:58:30'),
(1724, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"content\"}', '2022-04-15 06:59:53', '2022-04-15 06:59:53'),
(1725, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1650005996785\"}', '2022-04-15 06:59:57', '2022-04-15 06:59:57'),
(1726, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1650005996784\"}', '2022-04-15 06:59:57', '2022-04-15 06:59:57'),
(1727, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996786\"}', '2022-04-15 06:59:57', '2022-04-15 06:59:57'),
(1728, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996787\"}', '2022-04-15 07:00:08', '2022-04-15 07:00:08'),
(1729, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996788\"}', '2022-04-15 07:00:10', '2022-04-15 07:00:10'),
(1730, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996789\"}', '2022-04-15 07:00:11', '2022-04-15 07:00:11'),
(1731, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996790\"}', '2022-04-15 07:00:35', '2022-04-15 07:00:35'),
(1732, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996791\"}', '2022-04-15 07:00:35', '2022-04-15 07:00:35'),
(1733, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996792\"}', '2022-04-15 07:00:40', '2022-04-15 07:00:40'),
(1734, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"items\":[\"0da6711e86ca7b9422db.jpg\",\"0e1be58c1258ef06b649.jpg\",\"1aee9d4e4e9ab3c4ea8b(1).jpg\",\"1aee9d4e4e9ab3c4ea8b.jpg\",\"1ee6637f48a8b5f6ecb9.jpg\",\"4d501721d2f52fab76e4.jpg\",\"6fbdf623ddf420aa79e5.jpg\",\"blog.jpg\",\"img-12.jpg\",\"img-22.jpg\",\"img-26.jpg\",\"img-27.jpg\",\"img-42.jpg\",\"post-01.jpg\",\"tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\"],\"_\":\"1650005996793\"}', '2022-04-15 07:01:12', '2022-04-15 07:01:12'),
(1735, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1650005996794\"}', '2022-04-15 07:01:13', '2022-04-15 07:01:13'),
(1736, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996795\"}', '2022-04-15 07:01:13', '2022-04-15 07:01:13'),
(1737, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"EZp7EYOFgwzDc8Xtsh3RixT94u2HiD0t8zAKAkv8\"}', '2022-04-15 07:02:12', '2022-04-15 07:02:12'),
(1738, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1650005996796\"}', '2022-04-15 07:02:13', '2022-04-15 07:02:13'),
(1739, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650005996797\"}', '2022-04-15 07:02:13', '2022-04-15 07:02:13'),
(1740, 1, 'sc_admin/news/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"5 LO\\u1ea0I TR\\u00c1I C\\u00c2Y T\\u1ed0T NH\\u1ea4T GI\\u00daP B\\u1ea0N T\\u01af\\u01a0I S\\u00c1NG V\\u00c0 KH\\u1eceE M\\u1ea0NH\",\"keyword\":\"5 LO\\u1ea0I TR\\u00c1I C\\u00c2Y T\\u1ed0T NH\\u1ea4T GI\\u00daP B\\u1ea0N T\\u01af\\u01a0I S\\u00c1NG V\\u00c0 KH\\u1eceE M\\u1ea0NH\",\"description\":\"T\\u00ecnh tr\\u1ea1ng da c\\u1ee7a ch\\u00fang ta v\\u00e0 \\u0111\\u1ed9 tu\\u1ed5i c\\u1ee7a n\\u00f3 b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng b\\u1edfi m\\u1ed9t s\\u1ed1 y\\u1ebfu t\\u1ed1\",\"content\":\"<p>T&igrave;nh tr\\u1ea1ng da c\\u1ee7a ch&uacute;ng ta v&agrave; \\u0111\\u1ed9 tu\\u1ed5i c\\u1ee7a n&oacute; b\\u1ecb \\u1ea3nh h\\u01b0\\u1edfng b\\u1edfi m\\u1ed9t s\\u1ed1 y\\u1ebfu t\\u1ed1, trong \\u0111&oacute; ch\\u1ebf \\u0111\\u1ed9 \\u0103n u\\u1ed1ng v&agrave; l\\u1ed1i s\\u1ed1ng \\u0111&oacute;ng m\\u1ed9t vai tr&ograve; quan tr\\u1ecdng. Ti\\u1ebfp x&uacute;c l&acirc;u v\\u1edbi &aacute;nh n\\u1eafng m\\u1eb7t tr\\u1eddi, h&uacute;t thu\\u1ed1c v&agrave; ch\\u1ebf \\u0111\\u1ed9 \\u0103n nhi\\u1ec1u th\\u1ef1c ph\\u1ea9m ch\\u1ebf bi\\u1ebfn s\\u1eb5n v&agrave; c&oacute; \\u0111\\u01b0\\u1eddng, c\\u0169ng nh\\u01b0 c&aacute;c ch\\u1ea5t kh\\u1eed n\\u01b0\\u1edbc nh\\u01b0 caffein v&agrave; r\\u01b0\\u1ee3u, theo th\\u1eddi gian s\\u1ebd g&acirc;y h\\u1ea1i.<\\/p>\\r\\n\\r\\n<p>Khi ch&uacute;ng ta gi&agrave; \\u0111i, l&agrave;n da c\\u1ee7a ch&uacute;ng ta tr\\u1edf n&ecirc;n m\\u1ecfng h\\u01a1n, k&eacute;m \\u0111&agrave;n h\\u1ed3i h\\u01a1n v&agrave; d\\u1ec5 b\\u1ecb n\\u1ebfp nh\\u0103n nh\\u01b0ng b\\u1eb1ng c&aacute;ch b\\u1ed5 sung c&aacute;c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m ph&ugrave; h\\u1ee3p trong ch\\u1ebf \\u0111\\u1ed9 \\u0103n u\\u1ed1ng c\\u1ee7a b\\u1ea1n, b\\u1ea1n th\\u1ef1c s\\u1ef1 c&oacute; th\\u1ec3 nu&ocirc;i d\\u01b0\\u1ee1ng t\\u1eeb b&ecirc;n trong.<\\/p>\\r\\n\\r\\n<p>Theo&nbsp;<em>Hindustan Times,<\\/em>&nbsp;d\\u01b0\\u1edbi \\u0111&acirc;y l&agrave; nh\\u1eefng lo\\u1ea1i tr&aacute;i c&acirc;y c&oacute; th\\u1ec3 gi&uacute;p th&uacute;c \\u0111\\u1ea9y s\\u1ee9c kh\\u1ecfe l&agrave;n da c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><strong>Kiwi<\\/strong><\\/p>\\r\\n\\r\\n<p>Kiwi ch\\u1ee9a nhi\\u1ec1u ch\\u1ea5t dinh d\\u01b0\\u1ee1ng nh\\u01b0 vitamin C, s\\u1eaft, ch\\u1ea5t x\\u01a1 v&agrave; ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a. Ch&uacute;ng c\\u0169ng ch\\u1ee9a c&aacute;c kho&aacute;ng ch\\u1ea5t nh\\u01b0 magi&ecirc;, kali, canxi, ph\\u1ed1t pho, \\u0111\\u1ed3ng, k\\u1ebdm v&agrave; s\\u1eaft. T\\u1ea5t c\\u1ea3 nh\\u1eefng ch\\u1ea5t dinh d\\u01b0\\u1ee1ng n&agrave;y trong kiwi th&uacute;c \\u0111\\u1ea9y s\\u1ee9c kh\\u1ecfe l&agrave;n da v&agrave; ng\\u0103n ng\\u1eeba qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a s\\u1edbm c\\u1ee7a da.<\\/p>\\r\\n\\r\\n<p><a data-desc=\\\"6 lo\\u1ea1i tr\\u00e1i c\\u00e2y gi\\u00fap da s\\u00e1ng kh\\u1ecfe, b\\u1ed5 sung vitamin v\\u00e0 protein\\\" data-index=\\\"0\\\" href=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_02_22\\/che-do-an-ngan-ngua-ung-thu2_lfal.jpg\\\"><img alt=\\\"6 lo\\u1ea1i tr\\u00e1i c\\u00e2y gi\\u00fap da s\\u00e1ng kh\\u1ecfe, b\\u1ed5 sung vitamin v\\u00e0 protein \\u1ea3nh 1\\\" cms-photo-caption=\\\"\\\" data-photo-original-src=\\\"\\\" data-src=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_02_22\\/che-do-an-ngan-ngua-ung-thu2_lfal.jpg\\\" src=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_02_22\\/che-do-an-ngan-ngua-ung-thu2_lfal.jpg\\\" \\/><\\/a><br \\/>\\r\\n<em>Kiwi ch\\u1ee9a nhi\\u1ec1u carotenoid, lutein, polyphenol, vitamin C,... c&oacute; t&aacute;c d\\u1ee5ng ch\\u1ed1ng l&atilde;o h&oacute;a. \\u1ea2nh: NH\\u1eacT LINH<\\/em><\\/p>\\r\\n\\r\\n<p><strong>Cam<\\/strong><\\/p>\\r\\n\\r\\n<p>Cam c&oacute; v\\u1ecb chua v&agrave; ng\\u1ecdt v&agrave; ch\\u1ee9a nhi\\u1ec1u vitamin C, ch\\u1ea5t x\\u01a1, kali, folate v&agrave; thiamine. H&agrave;m l\\u01b0\\u1ee3ng vitamin C gi&uacute;p t\\u0103ng c\\u01b0\\u1eddng h\\u1ec7 th\\u1ed1ng mi\\u1ec5n d\\u1ecbch gi&uacute;p b\\u1ea1n ch\\u1ed1ng l\\u1ea1i nhi\\u1ec5m tr&ugrave;ng v&agrave; t\\u0103ng c\\u01b0\\u1eddng s\\u1ee9c kh\\u1ecfe l&agrave;n da. \\u0102n cam \\u0111\\u01b0\\u1ee3c cho l&agrave; c&oacute; th\\u1ec3 gi\\u1ea3m nguy c\\u01a1 ung th\\u01b0, b\\u1ec7nh th\\u1eadn v&agrave; thi\\u1ebfu m&aacute;u.<\\/p>\\r\\n\\r\\n<p><strong>D&acirc;u t&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>D&acirc;u t&acirc;y ch\\u1ee9a nhi\\u1ec1u folate, mangan, kali, vitamin C v&agrave; ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a. C&aacute;c ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a c&oacute; trong ch&uacute;ng ng\\u0103n ng\\u1eeba m\\u1ed9t s\\u1ed1 b\\u1ec7nh m&atilde;n t&iacute;nh v\\u1ec1 da. D&acirc;u t&acirc;y r\\u1ea5t t\\u1ed1t cho ng\\u01b0\\u1eddi b\\u1ecb ti\\u1ec3u \\u0111\\u01b0\\u1eddng. B&ecirc;n c\\u1ea1nh \\u0111&oacute;, m\\u1ee9c \\u0111\\u1ed9 ch\\u1ed1ng oxy h&oacute;a cao trong ch&uacute;ng l&agrave; m\\u1ed9t s\\u1ef1 th&uacute;c \\u0111\\u1ea9y cho l&agrave;n da.<\\/p>\\r\\n\\r\\n<p><strong>\\u1ed4i<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u1ed4i c&oacute; th&agrave;nh ph\\u1ea7n dinh d\\u01b0\\u1ee1ng \\u0111&aacute;ng kinh ng\\u1ea1c bao g\\u1ed3m vitamin A, folate, kali, \\u0111\\u1ed3ng v&agrave; ch\\u1ea5t x\\u01a1. \\u0102n \\u1ed5i c&oacute; th\\u1ec3 gi&uacute;p ng\\u0103n ng\\u1eeba t\\u1ed5n th\\u01b0\\u01a1ng t\\u1ebf b&agrave;o, thay \\u0111\\u1ed5i t\\u1ebf b&agrave;o v&agrave; vi&ecirc;m nhi\\u1ec5m. Pectin c&oacute; trong ch&uacute;ng th&uacute;c \\u0111\\u1ea9y ti&ecirc;u h&oacute;a v&agrave; th&uacute;c \\u0111\\u1ea9y \\u0111\\u01b0\\u1eddng ru\\u1ed9t kh\\u1ecfe m\\u1ea1nh.<\\/p>\\r\\n\\r\\n<p><strong>Nho<\\/strong><\\/p>\\r\\n\\r\\n<p>Nho r\\u1ea5t gi&agrave;u ch\\u1ea5t x\\u01a1 n&ecirc;n r\\u1ea5t t\\u1ed1t cho h\\u1ec7 ti&ecirc;u h&oacute;a c\\u1ee7a b\\u1ea1n. M\\u1ed9t h\\u1ec7 ti&ecirc;u h&oacute;a kh\\u1ecfe m\\u1ea1nh \\u0111\\u1ed3ng ngh\\u0129a v\\u1edbi m\\u1ed9t l&agrave;n da kh\\u1ecfe m\\u1ea1nh. C&aacute;c ch\\u1ea5t phytochemical t\\u1ef1 nhi&ecirc;n trong ch&uacute;ng gi&uacute;p gi\\u1ea3m vi&ecirc;m da v&agrave; c\\u1ea3i thi\\u1ec7n l&agrave;n da t\\u01b0\\u01a1i s&aacute;ng.<\\/p>\\r\\n\\r\\n<p><strong>T&aacute;o<\\/strong><\\/p>\\r\\n\\r\\n<p>T&aacute;o r\\u1ea5t gi&agrave;u ch\\u1ea5t x\\u01a1 v&agrave; nhi\\u1ec1u vitamin, kho&aacute;ng ch\\u1ea5t. Ch&uacute;ng ch\\u1ee9a pectin, gi&uacute;p t\\u0103ng c\\u01b0\\u1eddng s\\u1ee9c kh\\u1ecfe \\u0111\\u01b0\\u1eddng ru\\u1ed9t.<\\/p>\\r\\n\\r\\n<p>Vitamin C, ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a, vitamin A c&oacute; trong ch&uacute;ng gi&uacute;p t\\u0103ng c\\u01b0\\u1eddng kh\\u1ea3 n\\u0103ng mi\\u1ec5n d\\u1ecbch v&agrave; l&agrave;m cho l&agrave;n da s&aacute;ng, ngo&agrave;i ra c&ograve;n gi&uacute;p ch\\u1ed1ng l\\u1ea1i b\\u1ec7nh t\\u1eadt, theo&nbsp;<em>Hindustan Times.<\\/em><\\/p>\\r\\n\\r\\n<p>NH\\u1eacT LINH<\\/p>\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/blog-5.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"EZp7EYOFgwzDc8Xtsh3RixT94u2HiD0t8zAKAkv8\"}', '2022-04-15 07:02:19', '2022-04-15 07:02:19'),
(1741, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:02:19', '2022-04-15 07:02:19'),
(1742, 1, 'sc_admin/news/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:02:36', '2022-04-15 07:02:36'),
(1743, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"content\"}', '2022-04-15 07:03:25', '2022-04-15 07:03:25'),
(1744, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1650006205969\"}', '2022-04-15 07:03:26', '2022-04-15 07:03:26'),
(1745, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1650006205970\"}', '2022-04-15 07:03:26', '2022-04-15 07:03:26'),
(1746, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650006205971\"}', '2022-04-15 07:03:26', '2022-04-15 07:03:26'),
(1747, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"EZp7EYOFgwzDc8Xtsh3RixT94u2HiD0t8zAKAkv8\"}', '2022-04-15 07:03:38', '2022-04-15 07:03:38'),
(1748, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1650006205972\"}', '2022-04-15 07:03:38', '2022-04-15 07:03:38'),
(1749, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650006205973\"}', '2022-04-15 07:03:39', '2022-04-15 07:03:39'),
(1750, 1, 'sc_admin/news/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe\",\"keyword\":\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe\",\"description\":\"Theo Healthline, ch\\u1ebf \\u0111\\u1ed9 \\u0103n \\u00edt carb c\\u00f3 li\\u00ean quan \\u0111\\u1ebfn m\\u1ed9t s\\u1ed1 l\\u1ee3i \\u00edch s\\u1ee9c kh\\u1ecfe \\u1ea5n t\\u01b0\\u1ee3ng.\",\"content\":\"<p>Theo&nbsp;<em>Healthline<\\/em>, ch\\u1ebf \\u0111\\u1ed9 \\u0103n &iacute;t carb c&oacute; li&ecirc;n quan \\u0111\\u1ebfn m\\u1ed9t s\\u1ed1 l\\u1ee3i &iacute;ch s\\u1ee9c kh\\u1ecfe \\u1ea5n t\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u0111&atilde; ch\\u1ec9 ra r\\u1eb1ng, ch&uacute;ng \\u0111\\u1eb7c bi\\u1ec7t hi\\u1ec7u qu\\u1ea3 trong vi\\u1ec7c gi\\u1ea3m \\u0111&oacute;i v&agrave; h\\u1ed7 tr\\u1ee3 gi\\u1ea3m c&acirc;n. B&ecirc;n c\\u1ea1nh \\u0111&oacute;, c&ograve;n li&ecirc;n quan \\u0111\\u1ebfn vi\\u1ec7c gi\\u1ea3m huy\\u1ebft &aacute;p v&agrave; m\\u1ee9c cholesterol LDL (x\\u1ea5u), c\\u0169ng nh\\u01b0 t\\u0103ng cholesterol HDL (t\\u1ed1t).<\\/p>\\r\\n\\r\\n<p>H\\u01a1n n\\u1eefa, ch\\u1ebf \\u0111\\u1ed9 \\u0103n &iacute;t carb \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ph&aacute;t hi\\u1ec7n \\u0111\\u1ec3 c\\u1ea3i thi\\u1ec7n vi\\u1ec7c ki\\u1ec3m so&aacute;t l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng trong m&aacute;u \\u1edf nh\\u1eefng ng\\u01b0\\u1eddi m\\u1eafc b\\u1ec7nh ti\\u1ec3u \\u0111\\u01b0\\u1eddng lo\\u1ea1i 2.<\\/p>\\r\\n\\r\\n<p>N\\u1ebfu b\\u1ea1n theo m\\u1ed9t ch\\u1ebf \\u0111\\u1ed9 \\u0103n &iacute;t carb v&agrave; lo l\\u1eafng v\\u1ec1 l\\u01b0\\u1ee3ng ch\\u1ea5t x\\u01a1 c\\u1ee7a m&igrave;nh, th&igrave; d\\u01b0\\u1edbi \\u0111&acirc;y l&agrave; m\\u1ed9t s\\u1ed1 lo\\u1ea1i th\\u1ef1c ph\\u1ea9m l&agrave;nh m\\u1ea1nh v\\u1eeba &iacute;t carbs, v\\u1eeba gi&agrave;u ch\\u1ea5t x\\u01a1.<\\/p>\\r\\n\\r\\n<p><strong>B&ocirc;ng c\\u1ea3i xanh<\\/strong><\\/p>\\r\\n\\r\\n<p>B&ocirc;ng c\\u1ea3i xanh l&agrave; m\\u1ed9t lo\\u1ea1i rau h\\u1ecd c\\u1ea3i ph\\u1ed5 bi\\u1ebfn, ch\\u1ee9a nhi\\u1ec1u ch\\u1ea5t dinh d\\u01b0\\u1ee1ng quan tr\\u1ecdng.<\\/p>\\r\\n\\r\\n<p><a data-desc=\\\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe\\\" data-index=\\\"0\\\" href=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_04_05\\/bong-cai-xanh_hnkb.jpg\\\"><img alt=\\\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe \\u1ea3nh 1\\\" cms-photo-caption=\\\"\\\" data-photo-original-src=\\\"\\\" data-src=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_04_05\\/bong-cai-xanh_hnkb.jpg\\\" src=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_04_05\\/bong-cai-xanh_hnkb.jpg\\\" \\/><\\/a><br \\/>\\r\\n<em>B&ocirc;ng c\\u1ea3i xanh l&agrave; m\\u1ed9t lo\\u1ea1i rau r\\u1ea5t gi&agrave;u dinh d\\u01b0\\u1ee1ng c&oacute; \\u0111\\u1ea7y \\u0111\\u1ee7 vitamin, kho&aacute;ng ch\\u1ea5t, ch\\u1ea5t x\\u01a1 v&agrave; ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a. \\u1ea2nh: NGUY&Ecirc;N V&Otilde;<\\/em><\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i vi\\u1ec7c &iacute;t calo, n&oacute; c&ograve;n gi&agrave;u ch\\u1ea5t x\\u01a1 v&agrave; m\\u1ed9t s\\u1ed1 vitamin v&agrave; kho&aacute;ng ch\\u1ea5t thi\\u1ebft y\\u1ebfu, bao g\\u1ed3m folate, kali v&agrave; vitamin C v&agrave; K.<\\/p>\\r\\n\\r\\n<p>B&ocirc;ng c\\u1ea3i xanh c\\u0169ng c&oacute; nhi\\u1ec1u protein h\\u01a1n nhi\\u1ec1u lo\\u1ea1i rau kh&aacute;c.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7c d&ugrave; n&oacute; c&oacute; th\\u1ec3 \\u0111\\u01b0\\u1ee3c th\\u01b0\\u1edfng th\\u1ee9c khi n\\u1ea5u ch&iacute;n ho\\u1eb7c s\\u1ed1ng, nh\\u01b0ng nghi&ecirc;n c\\u1ee9u cho th\\u1ea5y r\\u1eb1ng vi\\u1ec7c h\\u1ea5p n&oacute; mang l\\u1ea1i nh\\u1eefng l\\u1ee3i &iacute;ch s\\u1ee9c kh\\u1ecfe l\\u1edbn nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><strong>M\\u0103ng t&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>M\\u0103ng t&acirc;y ch\\u1ee9a &iacute;t calo nh\\u01b0ng l\\u1ea1i gi&agrave;u vitamin K, cung c\\u1ea5p 46% DV trong 1 c\\u1ed1c (134 gram). C&ugrave;ng m\\u1ed9t kh\\u1ea9u ph\\u1ea7n c\\u0169ng ch\\u1ee9a 17% DV cho folate, ch\\u1ea5t r\\u1ea5t quan tr\\u1ecdng trong th\\u1eddi k\\u1ef3 mang thai v&agrave; gi&uacute;p ph&aacute;t tri\\u1ec3n t\\u1ebf b&agrave;o v&agrave; h&igrave;nh th&agrave;nh DNA, theo&nbsp;<em>FoodData Central.<\\/em><\\/p>\\r\\n\\r\\n<p><strong>C&agrave; t&iacute;m<\\/strong><\\/p>\\r\\n\\r\\n<p>C&agrave; t&iacute;m l&agrave; m\\u1ed9t ngu\\u1ed3n cung c\\u1ea5p ch\\u1ea5t x\\u01a1 d\\u1ed3i d&agrave;o v&agrave; m\\u1ed9t s\\u1ed1 vitamin v&agrave; kho&aacute;ng ch\\u1ea5t, bao g\\u1ed3m mangan, folate v&agrave; kali.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t kh\\u1ea9u ph\\u1ea7n 82 gram c&agrave; t&iacute;m cung c\\u1ea5p 3 gram ch\\u1ea5t x\\u01a1 v&agrave; 2 gram tinh b\\u1ed9t.<\\/p>\\r\\n\\r\\n<p><strong>H\\u1ea1t chia<\\/strong><\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i vi\\u1ec7c ch\\u1ee9a nhi\\u1ec1u ch\\u1ea5t x\\u01a1, protein v&agrave; m\\u1ed9t s\\u1ed1 vitamin, kho&aacute;ng ch\\u1ea5t, h\\u1ea1t chia l&agrave; m\\u1ed9t trong nh\\u1eefng ngu\\u1ed3n th\\u1ef1c v\\u1eadt n\\u1ed5i ti\\u1ebfng nh\\u1ea5t v\\u1ec1 axit b&eacute;o omega-3.<\\/p>\\r\\n\\r\\n<p>Theo&nbsp;<em>FoodData Central<\\/em>, hai mu\\u1ed7ng canh (30 gram) h\\u1ea1t chia cung c\\u1ea5p 11 gram ch\\u1ea5t x\\u01a1 v&agrave; 2 gram tinh b\\u1ed9t.<\\/p>\\r\\n\\r\\n<p><strong>Qu\\u1ea3 b\\u01a1<\\/strong><\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i vi\\u1ec7c gi&agrave;u ch\\u1ea5t b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a \\u0111\\u01a1n, b\\u01a1 l&agrave; m\\u1ed9t ngu\\u1ed3n cung c\\u1ea5p ch\\u1ea5t x\\u01a1, folate, kali, vitamin K v&agrave; C.<\\/p>\\r\\n\\r\\n<p>Theo&nbsp;<em>FoodData Central,<\\/em>&nbsp;m\\u1ed9t qu\\u1ea3 b\\u01a1 nh\\u1ecf (136 gram) cung c\\u1ea5p 9 gam ch\\u1ea5t x\\u01a1 v&agrave; 3 gram carbs thu\\u1ea7n.<\\/p>\\r\\n\\r\\n<p>NH\\u1eacT LINH<\\/p>\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/blog-detail-2.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"EZp7EYOFgwzDc8Xtsh3RixT94u2HiD0t8zAKAkv8\"}', '2022-04-15 07:03:45', '2022-04-15 07:03:45'),
(1751, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:03:45', '2022-04-15 07:03:45'),
(1752, 1, 'sc_admin/news/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:03:52', '2022-04-15 07:03:52'),
(1753, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"content\"}', '2022-04-15 07:03:57', '2022-04-15 07:03:57'),
(1754, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1650006238025\"}', '2022-04-15 07:03:58', '2022-04-15 07:03:58'),
(1755, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1650006238024\"}', '2022-04-15 07:03:58', '2022-04-15 07:03:58'),
(1756, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650006238026\"}', '2022-04-15 07:03:58', '2022-04-15 07:03:58'),
(1757, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"EZp7EYOFgwzDc8Xtsh3RixT94u2HiD0t8zAKAkv8\"}', '2022-04-15 07:04:10', '2022-04-15 07:04:10'),
(1758, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1650006238027\"}', '2022-04-15 07:04:10', '2022-04-15 07:04:10'),
(1759, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650006238028\"}', '2022-04-15 07:04:11', '2022-04-15 07:04:11'),
(1760, 1, 'sc_admin/news/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe\",\"keyword\":\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe\",\"description\":\"Theo Healthline, ch\\u1ebf \\u0111\\u1ed9 \\u0103n \\u00edt carb c\\u00f3 li\\u00ean quan \\u0111\\u1ebfn m\\u1ed9t s\\u1ed1 l\\u1ee3i \\u00edch s\\u1ee9c kh\\u1ecfe \\u1ea5n t\\u01b0\\u1ee3ng.\",\"content\":\"<p>Theo&nbsp;<em>Healthline<\\/em>, ch\\u1ebf \\u0111\\u1ed9 \\u0103n &iacute;t carb c&oacute; li&ecirc;n quan \\u0111\\u1ebfn m\\u1ed9t s\\u1ed1 l\\u1ee3i &iacute;ch s\\u1ee9c kh\\u1ecfe \\u1ea5n t\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>Nghi&ecirc;n c\\u1ee9u \\u0111&atilde; ch\\u1ec9 ra r\\u1eb1ng, ch&uacute;ng \\u0111\\u1eb7c bi\\u1ec7t hi\\u1ec7u qu\\u1ea3 trong vi\\u1ec7c gi\\u1ea3m \\u0111&oacute;i v&agrave; h\\u1ed7 tr\\u1ee3 gi\\u1ea3m c&acirc;n. B&ecirc;n c\\u1ea1nh \\u0111&oacute;, c&ograve;n li&ecirc;n quan \\u0111\\u1ebfn vi\\u1ec7c gi\\u1ea3m huy\\u1ebft &aacute;p v&agrave; m\\u1ee9c cholesterol LDL (x\\u1ea5u), c\\u0169ng nh\\u01b0 t\\u0103ng cholesterol HDL (t\\u1ed1t).<\\/p>\\r\\n\\r\\n<p>H\\u01a1n n\\u1eefa, ch\\u1ebf \\u0111\\u1ed9 \\u0103n &iacute;t carb \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ph&aacute;t hi\\u1ec7n \\u0111\\u1ec3 c\\u1ea3i thi\\u1ec7n vi\\u1ec7c ki\\u1ec3m so&aacute;t l\\u01b0\\u1ee3ng \\u0111\\u01b0\\u1eddng trong m&aacute;u \\u1edf nh\\u1eefng ng\\u01b0\\u1eddi m\\u1eafc b\\u1ec7nh ti\\u1ec3u \\u0111\\u01b0\\u1eddng lo\\u1ea1i 2.<\\/p>\\r\\n\\r\\n<p>N\\u1ebfu b\\u1ea1n theo m\\u1ed9t ch\\u1ebf \\u0111\\u1ed9 \\u0103n &iacute;t carb v&agrave; lo l\\u1eafng v\\u1ec1 l\\u01b0\\u1ee3ng ch\\u1ea5t x\\u01a1 c\\u1ee7a m&igrave;nh, th&igrave; d\\u01b0\\u1edbi \\u0111&acirc;y l&agrave; m\\u1ed9t s\\u1ed1 lo\\u1ea1i th\\u1ef1c ph\\u1ea9m l&agrave;nh m\\u1ea1nh v\\u1eeba &iacute;t carbs, v\\u1eeba gi&agrave;u ch\\u1ea5t x\\u01a1.<\\/p>\\r\\n\\r\\n<p><strong>B&ocirc;ng c\\u1ea3i xanh<\\/strong><\\/p>\\r\\n\\r\\n<p>B&ocirc;ng c\\u1ea3i xanh l&agrave; m\\u1ed9t lo\\u1ea1i rau h\\u1ecd c\\u1ea3i ph\\u1ed5 bi\\u1ebfn, ch\\u1ee9a nhi\\u1ec1u ch\\u1ea5t dinh d\\u01b0\\u1ee1ng quan tr\\u1ecdng.<\\/p>\\r\\n\\r\\n<p><a data-desc=\\\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe\\\" data-index=\\\"0\\\" href=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_04_05\\/bong-cai-xanh_hnkb.jpg\\\"><img alt=\\\"Danh s\\u00e1ch c\\u00e1c lo\\u1ea1i th\\u1ef1c ph\\u1ea9m gi\\u00e0u ch\\u1ea5t x\\u01a1, \\u00edt carb t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe \\u1ea3nh 1\\\" cms-photo-caption=\\\"\\\" data-photo-original-src=\\\"\\\" data-src=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_04_05\\/bong-cai-xanh_hnkb.jpg\\\" src=\\\"https:\\/\\/photo-cms-plo.zadn.vn\\/w850\\/Uploaded\\/2022\\/tmuihk\\/2022_04_05\\/bong-cai-xanh_hnkb.jpg\\\" \\/><\\/a><br \\/>\\r\\n<em>B&ocirc;ng c\\u1ea3i xanh l&agrave; m\\u1ed9t lo\\u1ea1i rau r\\u1ea5t gi&agrave;u dinh d\\u01b0\\u1ee1ng c&oacute; \\u0111\\u1ea7y \\u0111\\u1ee7 vitamin, kho&aacute;ng ch\\u1ea5t, ch\\u1ea5t x\\u01a1 v&agrave; ch\\u1ea5t ch\\u1ed1ng oxy h&oacute;a. \\u1ea2nh: NGUY&Ecirc;N V&Otilde;<\\/em><\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i vi\\u1ec7c &iacute;t calo, n&oacute; c&ograve;n gi&agrave;u ch\\u1ea5t x\\u01a1 v&agrave; m\\u1ed9t s\\u1ed1 vitamin v&agrave; kho&aacute;ng ch\\u1ea5t thi\\u1ebft y\\u1ebfu, bao g\\u1ed3m folate, kali v&agrave; vitamin C v&agrave; K.<\\/p>\\r\\n\\r\\n<p>B&ocirc;ng c\\u1ea3i xanh c\\u0169ng c&oacute; nhi\\u1ec1u protein h\\u01a1n nhi\\u1ec1u lo\\u1ea1i rau kh&aacute;c.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7c d&ugrave; n&oacute; c&oacute; th\\u1ec3 \\u0111\\u01b0\\u1ee3c th\\u01b0\\u1edfng th\\u1ee9c khi n\\u1ea5u ch&iacute;n ho\\u1eb7c s\\u1ed1ng, nh\\u01b0ng nghi&ecirc;n c\\u1ee9u cho th\\u1ea5y r\\u1eb1ng vi\\u1ec7c h\\u1ea5p n&oacute; mang l\\u1ea1i nh\\u1eefng l\\u1ee3i &iacute;ch s\\u1ee9c kh\\u1ecfe l\\u1edbn nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><strong>M\\u0103ng t&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>M\\u0103ng t&acirc;y ch\\u1ee9a &iacute;t calo nh\\u01b0ng l\\u1ea1i gi&agrave;u vitamin K, cung c\\u1ea5p 46% DV trong 1 c\\u1ed1c (134 gram). C&ugrave;ng m\\u1ed9t kh\\u1ea9u ph\\u1ea7n c\\u0169ng ch\\u1ee9a 17% DV cho folate, ch\\u1ea5t r\\u1ea5t quan tr\\u1ecdng trong th\\u1eddi k\\u1ef3 mang thai v&agrave; gi&uacute;p ph&aacute;t tri\\u1ec3n t\\u1ebf b&agrave;o v&agrave; h&igrave;nh th&agrave;nh DNA, theo&nbsp;<em>FoodData Central.<\\/em><\\/p>\\r\\n\\r\\n<p><strong>C&agrave; t&iacute;m<\\/strong><\\/p>\\r\\n\\r\\n<p>C&agrave; t&iacute;m l&agrave; m\\u1ed9t ngu\\u1ed3n cung c\\u1ea5p ch\\u1ea5t x\\u01a1 d\\u1ed3i d&agrave;o v&agrave; m\\u1ed9t s\\u1ed1 vitamin v&agrave; kho&aacute;ng ch\\u1ea5t, bao g\\u1ed3m mangan, folate v&agrave; kali.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t kh\\u1ea9u ph\\u1ea7n 82 gram c&agrave; t&iacute;m cung c\\u1ea5p 3 gram ch\\u1ea5t x\\u01a1 v&agrave; 2 gram tinh b\\u1ed9t.<\\/p>\\r\\n\\r\\n<p><strong>H\\u1ea1t chia<\\/strong><\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i vi\\u1ec7c ch\\u1ee9a nhi\\u1ec1u ch\\u1ea5t x\\u01a1, protein v&agrave; m\\u1ed9t s\\u1ed1 vitamin, kho&aacute;ng ch\\u1ea5t, h\\u1ea1t chia l&agrave; m\\u1ed9t trong nh\\u1eefng ngu\\u1ed3n th\\u1ef1c v\\u1eadt n\\u1ed5i ti\\u1ebfng nh\\u1ea5t v\\u1ec1 axit b&eacute;o omega-3.<\\/p>\\r\\n\\r\\n<p>Theo&nbsp;<em>FoodData Central<\\/em>, hai mu\\u1ed7ng canh (30 gram) h\\u1ea1t chia cung c\\u1ea5p 11 gram ch\\u1ea5t x\\u01a1 v&agrave; 2 gram tinh b\\u1ed9t.<\\/p>\\r\\n\\r\\n<p><strong>Qu\\u1ea3 b\\u01a1<\\/strong><\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i vi\\u1ec7c gi&agrave;u ch\\u1ea5t b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a \\u0111\\u01a1n, b\\u01a1 l&agrave; m\\u1ed9t ngu\\u1ed3n cung c\\u1ea5p ch\\u1ea5t x\\u01a1, folate, kali, vitamin K v&agrave; C.<\\/p>\\r\\n\\r\\n<p>Theo&nbsp;<em>FoodData Central,<\\/em>&nbsp;m\\u1ed9t qu\\u1ea3 b\\u01a1 nh\\u1ecf (136 gram) cung c\\u1ea5p 9 gam ch\\u1ea5t x\\u01a1 v&agrave; 3 gram carbs thu\\u1ea7n.<\\/p>\\r\\n\\r\\n<p>NH\\u1eacT LINH<\\/p>\"}},\"alias\":\"danh-sach-cac-loai-thuc-pham-giau-chat-xo-it-carb-tot-cho-suc-khoe\",\"image\":\"\\/data\\/content\\/blog-3.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"EZp7EYOFgwzDc8Xtsh3RixT94u2HiD0t8zAKAkv8\"}', '2022-04-15 07:04:18', '2022-04-15 07:04:18'),
(1761, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:04:18', '2022-04-15 07:04:18'),
(1762, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:31:07', '2022-04-15 07:31:07'),
(1763, 1, 'sc_admin/customer/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"h2cJOOJzkjq4fDVeb6HZWMr7cuuv5comm4ppPtSx\"}', '2022-04-15 07:31:12', '2022-04-15 07:31:12'),
(1764, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-15 07:31:13', '2022-04-15 07:31:13'),
(1765, 1, 'sc_admin/customer/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"h2cJOOJzkjq4fDVeb6HZWMr7cuuv5comm4ppPtSx\"}', '2022-04-15 07:31:15', '2022-04-15 07:31:15'),
(1766, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-15 07:31:16', '2022-04-15 07:31:16'),
(1767, 1, 'sc_admin/customer/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"h2cJOOJzkjq4fDVeb6HZWMr7cuuv5comm4ppPtSx\"}', '2022-04-15 07:31:18', '2022-04-15 07:31:18'),
(1768, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-15 07:31:18', '2022-04-15 07:31:18'),
(1769, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:34:24', '2022-04-15 07:34:24'),
(1770, 1, 'sc_admin/order/detail/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:34:35', '2022-04-15 07:34:35'),
(1771, 1, 'sc_admin/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:34:54', '2022-04-15 07:34:54'),
(1772, 1, 'sc_admin/payment_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:35:00', '2022-04-15 07:35:00'),
(1773, 1, 'sc_admin/shipping_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:35:04', '2022-04-15 07:35:04'),
(1774, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 07:35:07', '2022-04-15 07:35:07'),
(1775, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:03:14', '2022-04-15 08:03:14'),
(1776, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:03:18', '2022-04-15 08:03:18'),
(1777, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"product\"}', '2022-04-15 08:03:34', '2022-04-15 08:03:34'),
(1778, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650009815148\"}', '2022-04-15 08:03:35', '2022-04-15 08:03:35'),
(1779, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650009815149\"}', '2022-04-15 08:03:35', '2022-04-15 08:03:35'),
(1780, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650009815150\"}', '2022-04-15 08:03:35', '2022-04-15 08:03:35'),
(1781, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650009815151\"}', '2022-04-15 08:03:39', '2022-04-15 08:03:39'),
(1782, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_token\":\"L9VZ9nWQPuFoEryYSC6aTB3d1AvJda5J6sbPz6Io\"}', '2022-04-15 08:03:54', '2022-04-15 08:03:54'),
(1783, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"_\":\"1650009815152\"}', '2022-04-15 08:03:55', '2022-04-15 08:03:55'),
(1784, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/Tr\\u00e1i C\\u00e2y\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650009815153\"}', '2022-04-15 08:03:55', '2022-04-15 08:03:55'),
(1785, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"aa\",\"keyword\":\"a\",\"description\":\"a\",\"content\":\"<p>a<\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/14.jpg\",\"sku\":\"q\",\"alias\":null,\"brand_id\":null,\"cost\":\"20000\",\"price\":\"29000\",\"tax_id\":\"1\",\"stock\":\"20\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":\"2022-04-12\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"L9VZ9nWQPuFoEryYSC6aTB3d1AvJda5J6sbPz6Io\"}', '2022-04-15 08:04:45', '2022-04-15 08:04:45'),
(1786, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:04:45', '2022-04-15 08:04:45'),
(1787, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"ids\":\"34\",\"_token\":\"L9VZ9nWQPuFoEryYSC6aTB3d1AvJda5J6sbPz6Io\"}', '2022-04-15 08:07:12', '2022-04-15 08:07:12'),
(1788, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-04-15 08:07:13', '2022-04-15 08:07:13'),
(1789, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:43:23', '2022-04-15 08:43:23'),
(1790, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:46:24', '2022-04-15 08:46:24'),
(1791, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:46:40', '2022-04-15 08:46:40'),
(1792, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:47:38', '2022-04-15 08:47:38'),
(1793, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 08:47:40', '2022-04-15 08:47:40'),
(1794, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 09:57:07', '2022-04-15 09:57:07'),
(1795, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 09:57:59', '2022-04-15 09:57:59'),
(1796, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 09:59:09', '2022-04-15 09:59:09'),
(1797, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 10:00:22', '2022-04-15 10:00:22'),
(1798, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 10:02:02', '2022-04-15 10:02:02'),
(1799, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 10:03:12', '2022-04-15 10:03:12'),
(1800, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-15 10:17:27', '2022-04-15 10:17:27'),
(1801, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-16 00:27:52', '2022-04-16 00:27:52'),
(1802, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-16 00:43:11', '2022-04-16 00:43:11'),
(1803, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-16 00:43:14', '2022-04-16 00:43:14'),
(1804, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 01:12:43', '2022-04-19 01:12:43'),
(1805, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:25:36', '2022-04-19 02:25:36'),
(1806, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:25:40', '2022-04-19 02:25:40'),
(1807, 1, 'sc_admin/product/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:25:51', '2022-04-19 02:25:51');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1808, 1, 'sc_admin/product/edit/24', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"T\\u00e1o Envy\",\"keyword\":\"T\\u00e1o Envy\",\"description\":\"Sau chu\\u1ed1i, t\\u00e1o l\\u00e0 lo\\u1ea1i tr\\u00e1i c\\u00e2y \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi M\\u1ef9 v\\u00f4 c\\u00f9ng y\\u00eau th\\u00edch\",\"content\":\"<h2>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng \\u1edf \\u0111&acirc;u?<\\/h2>\\r\\n\\r\\n<p>Ng\\u01b0\\u1eddi M\\u1ef9 lu&ocirc;n c&oacute; t&aacute;o \\u0111\\u1ec3 th\\u01b0\\u1edfng th\\u1ee9c m\\u1ed7i ng&agrave;y b\\u1edfi bang Washington \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l&agrave; v&ugrave;ng \\u0111\\u1ea5t c\\u1ee7a nh\\u1eefng qu\\u1ea3 t&aacute;o, v\\u1edbi \\u0111\\u1ea5t \\u0111ai tr&ugrave; ph&uacute; v&agrave; kh&iacute; h\\u1eadu &ocirc;n h&ograve;a. T&aacute;o ph\\u1ee5c v\\u1ee5 kh&ocirc;ng ch\\u1ec9 cho ng\\u01b0\\u1eddi d&acirc;n n\\u01b0\\u1edbc M\\u1ef9, m&agrave; hi\\u1ec7n nay \\u0111&atilde; \\u0111\\u1ebfn kh\\u1eafp n\\u01a1i tr&ecirc;n th\\u1ebf gi\\u1edbi.<\\/p>\\r\\n\\r\\n<p>T\\u1ea1i M\\u1ef9, c&oacute; \\u0111\\u1ebfn 2.500 gi\\u1ed1ng t&aacute;o \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng, nh\\u01b0ng ch\\u1ec9 100 gi\\u1ed1ng tuy\\u1ec7t v\\u1eddi nh\\u1ea5t m\\u1edbi \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a ra th\\u1ecb tr\\u01b0\\u1eddng. Ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a c&aacute;c tr&aacute;i&nbsp;<a href=\\\"https:\\/\\/hoaquafuji.com\\/post\\/tao-envy-size-nho\\\">t&aacute;o M\\u1ef9<\\/a>&nbsp;lu&ocirc;n \\u0111\\u01b0\\u1ee3c xem nh\\u01b0 m\\u1ed9t chu\\u1ea9n m\\u1ef1c v\\u1ec1 m\\u1ee9c \\u0111\\u1ed9 an to&agrave;n, s\\u1ea1ch v&agrave; ngon. T&aacute;o M\\u1ef9 chinh ph\\u1ee5c h\\u1ea7u h\\u1ebft ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng tr&ecirc;n th\\u1ebf gi\\u1edbi, trong \\u0111&oacute; c&oacute; c\\u1ea3 Vi\\u1ec7t Nam.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-result=\\\"success\\\" src=\\\"https:\\/\\/hoaquafuji.com\\/storage\\/app\\/media\\/uploaded-files\\/trai-tao-my-tao-gala-5-min.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nhi\\u1ec1u \\u1edf bang Washington<\\/em><\\/p>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/3.jpg\",\"sku\":\"T01\",\"alias\":\"tao-envy\",\"brand_id\":null,\"cost\":\"80000\",\"price\":\"90000\",\"tax_id\":\"1\",\"price_promotion\":\"80000\",\"price_promotion_start\":\"2022-04-13\",\"price_promotion_end\":\"2022-04-23\",\"stock\":\"13\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:26:14', '2022-04-19 02:26:14'),
(1809, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:26:14', '2022-04-19 02:26:14'),
(1810, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:31:46', '2022-04-19 02:31:46'),
(1811, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:31:48', '2022-04-19 02:31:48'),
(1812, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc \\u00c9p\",\"keyword\":\"N\\u01b0\\u1edbc \\u00c9p\",\"description\":\"N\\u01b0\\u1edbc \\u00c9p\"}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:32:05', '2022-04-19 02:32:05'),
(1813, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:32:06', '2022-04-19 02:32:06'),
(1814, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"category\"}', '2022-04-19 02:32:09', '2022-04-19 02:32:09'),
(1815, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1650335531694\"}', '2022-04-19 02:32:12', '2022-04-19 02:32:12'),
(1816, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1650335531693\"}', '2022-04-19 02:32:12', '2022-04-19 02:32:12'),
(1817, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335531695\"}', '2022-04-19 02:32:13', '2022-04-19 02:32:13'),
(1818, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\",\"type\":\"category\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:32:40', '2022-04-19 02:32:40'),
(1819, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\",\"type\":\"category\",\"_\":\"1650335531696\"}', '2022-04-19 02:32:41', '2022-04-19 02:32:41'),
(1820, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335531697\"}', '2022-04-19 02:32:42', '2022-04-19 02:32:42'),
(1821, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc \\u00c9p\",\"keyword\":\"N\\u01b0\\u1edbc \\u00c9p\",\"description\":\"N\\u01b0\\u1edbc \\u00c9p\"}},\"parent\":\"0\",\"alias\":\"nuoc-ep\",\"image\":\"\\/data\\/category\\/8\\/instagram-6.png\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:32:45', '2022-04-19 02:32:45'),
(1822, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:32:45', '2022-04-19 02:32:45'),
(1823, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:32:50', '2022-04-19 02:32:50'),
(1824, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:32:52', '2022-04-19 02:32:52'),
(1825, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"product\"}', '2022-04-19 02:34:05', '2022-04-19 02:34:05'),
(1826, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650335646050\"}', '2022-04-19 02:34:06', '2022-04-19 02:34:06'),
(1827, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650335646049\"}', '2022-04-19 02:34:06', '2022-04-19 02:34:06'),
(1828, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335646051\"}', '2022-04-19 02:34:06', '2022-04-19 02:34:06'),
(1829, 1, 'sc_admin/uploads/newfolder', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\",\"type\":\"product\",\"name\":\"N\\u01b0\\u1edbc \\u00c9p\",\"_\":\"1650335646052\"}', '2022-04-19 02:34:22', '2022-04-19 02:34:22'),
(1830, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\",\"type\":\"product\",\"_\":\"1650335646053\"}', '2022-04-19 02:34:23', '2022-04-19 02:34:23'),
(1831, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335646054\"}', '2022-04-19 02:34:23', '2022-04-19 02:34:23'),
(1832, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335646055\"}', '2022-04-19 02:34:29', '2022-04-19 02:34:29'),
(1833, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:34:41', '2022-04-19 02:34:41'),
(1834, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"_\":\"1650335646056\"}', '2022-04-19 02:34:41', '2022-04-19 02:34:41'),
(1835, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335646057\"}', '2022-04-19 02:34:42', '2022-04-19 02:34:42'),
(1836, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc \\u00c9p Cam\",\"keyword\":\"N\\u01b0\\u1edbc \\u00c9p Cam\",\"description\":\"C\\u01a1 th\\u1ec3 kh\\u00f4ng th\\u1ec3 s\\u1ea3n xu\\u1ea5t vitamin C\",\"content\":\"<h4 id=\\\"0hchildmenuid1\\\"><strong>N\\u01b0\\u1edbc &eacute;p cam t\\u1ed1t cho h\\u1ec7 mi\\u1ec5n d\\u1ecbch<\\/strong><\\/h4>\\r\\n\\r\\n<p>C\\u01a1 th\\u1ec3 kh&ocirc;ng th\\u1ec3 s\\u1ea3n xu\\u1ea5t&nbsp;<a bis_skin_checked=\\\"1\\\" href=\\\"https:\\/\\/www.bachhoaxanh.com\\/kinh-nghiem-hay\\/vitamin-c-va-cong-dung-cua-chung-981142\\\" target=\\\"_blank\\\">vitamin C<\\/a>&nbsp;m&agrave; ph\\u1ea3i b\\u1ed5 sung th&ecirc;m t\\u1eeb b&ecirc;n ngo&agrave;i, trong&nbsp;<a bis_skin_checked=\\\"1\\\" href=\\\"https:\\/\\/www.bachhoaxanh.com\\/nuoc-ep-trai-cay\\/nuoc-cam-vfresh-hop-1l\\\" rel=\\\"dofollow\\\" target=\\\"_blank\\\" title=\\\"n\\u01b0\\u1edbc \\u00e9p cam\\\">n\\u01b0\\u1edbc &eacute;p cam<\\/a>&nbsp;c&oacute; ch\\u1ee9a nhi\\u1ec1u vitamin C&nbsp;<strong>gi&uacute;p c&aacute;c t\\u1ebf b&agrave;o c\\u1ee7a h\\u1ec7 mi\\u1ec5n d\\u1ecbch kh\\u1ecfe m\\u1ea1nh h\\u01a1n.<\\/strong><\\/p>\\r\\n\\r\\n<p><img alt=\\\"N\\u01b0\\u1edbc \\u00e9p cam t\\u1ed1t cho h\\u1ec7 mi\\u1ec5n d\\u1ecbch\\\" data-original=\\\"https:\\/\\/cdn.tgdd.vn\\/Files\\/2018\\/12\\/06\\/1136059\\/5-cong-dung-tuyet-voi-tu-nuoc-ep-cam-ban-nen-biet-5.jpg\\\" height=\\\"438\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Files\\/2018\\/12\\/06\\/1136059\\/5-cong-dung-tuyet-voi-tu-nuoc-ep-cam-ban-nen-biet-5.jpg\\\" title=\\\"5 c\\u00f4ng d\\u1ee5ng tuy\\u1ec7t v\\u1eddi t\\u1eeb n\\u01b0\\u1edbc \\u00e9p cam b\\u1ea1n n\\u00ean bi\\u1ebft\\\" width=\\\"700\\\" \\/><\\/p>\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/8\\/N\\u01b0\\u1edbc \\u00c9p\\/14.jpg\",\"sku\":\"NC01\",\"alias\":null,\"brand_id\":null,\"cost\":\"20000\",\"price\":\"30000\",\"tax_id\":\"auto\",\"stock\":\"20\",\"weight_class\":null,\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:35:25', '2022-04-19 02:35:25'),
(1837, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:35:25', '2022-04-19 02:35:25'),
(1838, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:35:28', '2022-04-19 02:35:28'),
(1839, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"product\"}', '2022-04-19 02:36:26', '2022-04-19 02:36:26'),
(1840, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650335786481\"}', '2022-04-19 02:36:26', '2022-04-19 02:36:26'),
(1841, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650335786482\"}', '2022-04-19 02:36:26', '2022-04-19 02:36:26'),
(1842, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335786483\"}', '2022-04-19 02:36:27', '2022-04-19 02:36:27'),
(1843, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335786484\"}', '2022-04-19 02:36:28', '2022-04-19 02:36:28'),
(1844, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:36:35', '2022-04-19 02:36:35'),
(1845, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"_\":\"1650335786485\"}', '2022-04-19 02:36:35', '2022-04-19 02:36:35'),
(1846, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335786486\"}', '2022-04-19 02:36:36', '2022-04-19 02:36:36'),
(1847, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc \\u00c9p C\\u00e0 Chua\",\"keyword\":\"N\\u01b0\\u1edbc \\u00c9p C\\u00e0 Chua\",\"description\":\"N\\u01b0\\u1edbc \\u00e9p c\\u00e0 chua l\\u00e0 m\\u1ed9t trong nh\\u1eefng lo\\u1ea1i th\\u1ee9c u\\u1ed1ng v\\u1eeba dinh d\\u01b0\\u1ee1ng\",\"content\":\"<h2>N\\u01b0\\u1edbc &eacute;p c&agrave; chua ch&iacute;n<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"N\\u01b0\\u1edbc \\u00e9p c\\u00e0 chua ch\\u00edn\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/CookRecipe\\/Avatar\\/nuoc-ep-ca-chua-chin-thumbnail.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/CookRecipe\\/Avatar\\/nuoc-ep-ca-chua-chin-thumbnail.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<h2>Chu\\u1ea9n b\\u1ecb<\\/h2>\\r\\n\\t10 ph&uacute;t<\\/li>\\r\\n\\t<li>\\r\\n\\t<h2>Ch\\u1ebf bi\\u1ebfn<\\/h2>\\r\\n\\t5 ph&uacute;t<\\/li>\\r\\n\\t<li>\\r\\n\\t<h2>\\u0110\\u1ed9 kh&oacute;<\\/h2>\\r\\n\\tD\\u1ec5<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>Nguy&ecirc;n li\\u1ec7u l&agrave;m N\\u01b0\\u1edbc &eacute;p c&agrave; chua ch&iacute;n<small>Cho 2<\\/small><\\/h2>\\r\\n\\r\\n<p>&nbsp;C&agrave; chua&nbsp;<small>400 gr<\\/small>&nbsp;\\u0110\\u01b0\\u1eddng c&aacute;t&nbsp;<small>80 gr<\\/small>&nbsp;Mu\\u1ed1i&nbsp;<small>1\\/4 mu\\u1ed7ng c&agrave; ph&ecirc;<\\/small>&nbsp;N\\u01b0\\u1edbc l\\u1ecdc&nbsp;<small>200 ml<\\/small>&nbsp;\\u0110&aacute; vi&ecirc;n&nbsp;<small>1 &iacute;t<\\/small><\\/p>\\r\\n\\r\\n<h2>H&igrave;nh nguy&ecirc;n li\\u1ec7u<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"Nguy\\u00ean li\\u1ec7u m\\u00f3n \\u0103n n\\u01b0\\u1edbc \\u00e9p c\\u00e0 chua\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/content\\/1-800x450-340.jpg\\\" height=\\\"450\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/content\\/1-800x450-340.jpg\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<h2>D\\u1ee5ng c\\u1ee5 th\\u1ef1c hi\\u1ec7n<\\/h2>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.dienmayxanh.com\\/may-ep-trai-cay\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"m\\u00e1y \\u00e9p tr\\u00e1i c\\u00e2y\\\">M&aacute;y &eacute;p tr&aacute;i c&acirc;y<\\/a>,&nbsp;<a href=\\\"https:\\/\\/www.dienmayxanh.com\\/noi\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"n\\u1ed3i \\\">n\\u1ed3i<\\/a>,&nbsp;<a href=\\\"https:\\/\\/www.dienmayxanh.com\\/bep-ga\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"b\\u1ebfp\\\">b\\u1ebfp<\\/a>,&nbsp;<a href=\\\"https:\\/\\/www.dienmayxanh.com\\/ly-bo-ly\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"ly\\\">ly<\\/a>,...<\\/p>\\r\\n\\r\\n<h2>C&aacute;ch ch\\u1ebf bi\\u1ebfn N\\u01b0\\u1edbc &eacute;p c&agrave; chua ch&iacute;n<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>1\\r\\n\\t<h3>S\\u01a1 ch\\u1ebf v&agrave; lu\\u1ed9c c&agrave; chua<\\/h3>\\r\\n\\r\\n\\t<p>C&agrave; chua mua v\\u1ec1 b\\u1ea1n r\\u1eeda s\\u1ea1ch v\\u1edbi n\\u01b0\\u1edbc r\\u1ed3i \\u0111\\u1ec3 r&aacute;o. Ti\\u1ebfp \\u0111\\u1ebfn b\\u1ea1n b\\u1eafc m\\u1ed9t n\\u1ed3i n\\u01b0\\u1edbc l&ecirc;n b\\u1ebfp, \\u0111un n\\u01b0\\u1edbc v\\u1edbi l\\u1eeda l\\u1edbn \\u0111\\u1ebfn khi n\\u01b0\\u1edbc s&ocirc;i b&ugrave;ng l&ecirc;n.<\\/p>\\r\\n\\r\\n\\t<p>Khi n\\u01b0\\u1edbc s&ocirc;i b&ugrave;ng l&ecirc;n, b\\u1ea1n cho c&agrave; chua v&agrave;o tr\\u1ee5ng trong kho\\u1ea3ng 2 - 4 ph&uacute;t, ph\\u1ea7n v\\u1ecf c&agrave; chua nh\\u0169n l\\u1ea1i th&igrave; b\\u1ea1n t\\u1eaft b\\u1ebfp. V\\u1edbt c&agrave; chua v&agrave; ng&acirc;m v&agrave;o b&aacute;t n\\u01b0\\u1edbc l\\u1ea1nh.<\\/p>\\r\\n\\r\\n\\t<p><img alt=\\\"B\\u01b0\\u1edbc 1 S\\u01a1 ch\\u1ebf v\\u00e0 lu\\u1ed9c c\\u00e0 chua N\\u01b0\\u1edbc \\u00e9p c\\u00e0 chua ch\\u00edn\\\" data-picid=\\\"160461\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/CookRecipe\\/GalleryStep\\/so-che-va-luoc-ca-chua-1.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/CookRecipe\\/GalleryStep\\/so-che-va-luoc-ca-chua-1.jpg\\\" \\/><\\/p>\\r\\n\\r\\n\\t<p><img alt=\\\"B\\u01b0\\u1edbc 1 S\\u01a1 ch\\u1ebf v\\u00e0 lu\\u1ed9c c\\u00e0 chua N\\u01b0\\u1edbc \\u00e9p c\\u00e0 chua ch\\u00edn\\\" data-picid=\\\"160462\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/CookRecipe\\/GalleryStep\\/so-che-va-luoc-ca-chua.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/08\\/CookRecipe\\/GalleryStep\\/so-che-va-luoc-ca-chua.jpg\\\" \\/><\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/8\\/N\\u01b0\\u1edbc \\u00c9p\\/13.jpg\",\"sku\":\"NC02\",\"alias\":null,\"brand_id\":null,\"cost\":\"35000\",\"price\":\"49000\",\"tax_id\":\"auto\",\"stock\":\"20\",\"weight_class\":null,\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:37:10', '2022-04-19 02:37:10'),
(1848, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:37:10', '2022-04-19 02:37:10'),
(1849, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:37:15', '2022-04-19 02:37:15'),
(1850, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"product\"}', '2022-04-19 02:38:09', '2022-04-19 02:38:09'),
(1851, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650335889335\"}', '2022-04-19 02:38:09', '2022-04-19 02:38:09'),
(1852, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650335889334\"}', '2022-04-19 02:38:09', '2022-04-19 02:38:09'),
(1853, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335889336\"}', '2022-04-19 02:38:10', '2022-04-19 02:38:10'),
(1854, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335889337\"}', '2022-04-19 02:38:11', '2022-04-19 02:38:11'),
(1855, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:38:22', '2022-04-19 02:38:22'),
(1856, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"_\":\"1650335889338\"}', '2022-04-19 02:38:23', '2022-04-19 02:38:23'),
(1857, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650335889339\"}', '2022-04-19 02:38:23', '2022-04-19 02:38:23'),
(1858, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc \\u00c9p D\\u00e2u T\\u00e2y\",\"keyword\":\"N\\u01b0\\u1edbc \\u00c9p D\\u00e2u T\\u00e2y\",\"description\":\"D\\u00e2u t\\u00e2y v\\u1edbi v\\u1ecb chua ng\\u1ecdt, gi\\u00e0u vitamin v\\u00e0 ch\\u1ea5t x\\u01a1\",\"content\":\"<h2>&nbsp;N\\u01b0\\u1edbc &eacute;p d&acirc;u t&acirc;y<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"N\\u01b0\\u1edbc \\u00e9p d\\u00e2u t\\u00e2y\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/08\\/CookRecipe\\/Avatar\\/nuoc-ep-dau-tay-thumbnail.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/08\\/CookRecipe\\/Avatar\\/nuoc-ep-dau-tay-thumbnail.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<h2>Chu\\u1ea9n b\\u1ecb<\\/h2>\\r\\n\\t5 ph&uacute;t<\\/li>\\r\\n\\t<li>\\r\\n\\t<h2>Ch\\u1ebf bi\\u1ebfn<\\/h2>\\r\\n\\t5 ph&uacute;t<\\/li>\\r\\n\\t<li>\\r\\n\\t<h2>\\u0110\\u1ed9 kh&oacute;<\\/h2>\\r\\n\\tD\\u1ec5<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>Nguy&ecirc;n li\\u1ec7u l&agrave;m N\\u01b0\\u1edbc &eacute;p d&acirc;u t&acirc;y<small>Cho 2 ng\\u01b0\\u1eddi<\\/small><\\/h2>\\r\\n\\r\\n<p>&nbsp;D&acirc;u t&acirc;y&nbsp;<small>700 gr<\\/small>&nbsp;Chanh v&agrave;ng&nbsp;<small>1 tr&aacute;i<\\/small>&nbsp;\\u0110\\u01b0\\u1eddng&nbsp;<small>50 gr<\\/small>&nbsp;\\u0110&aacute; vi&ecirc;n&nbsp;<small>1 &iacute;t<\\/small><\\/p>\\r\\n\\r\\n<h2>C&aacute;ch ch\\u1ecdn mua chanh t\\u01b0\\u01a1i, m\\u1ecdng n\\u01b0\\u1edbc<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Khi mua chanh b\\u1ea1n n&ecirc;n ch&uacute; &yacute; \\u0111\\u1ebfn m&agrave;u s\\u1eafc c\\u1ee7a v\\u1ecf chanh, m&agrave;u v&agrave;ng ho\\u1eb7c xanh \\u0111\\u1ec1u, t\\u01b0\\u01a1i s&aacute;ng, da c\\u0103ng b&oacute;ng th&igrave; \\u0111&oacute; l&agrave; tr&aacute;i chanh t\\u01b0\\u01a1i m\\u1edbi v&agrave; m\\u1ecdng n\\u01b0\\u1edbc.<\\/li>\\r\\n\\t<li>B\\u1ea1n ng\\u1eedi th\\u1eed m&ugrave;i h\\u01b0\\u01a1ng c\\u1ee7a chanh, n\\u1ebfu chanh c&oacute; m&ugrave;i th\\u01a1m thanh nh\\u1eb9 thoang tho\\u1ea3ng th&igrave; \\u0111&oacute; l&agrave; chanh c&ograve;n t\\u01b0\\u01a1i, c&ograve;n m&ugrave;i qu&aacute; n\\u1ed3ng ho\\u1eb7c kh&oacute; ng\\u1eedi th&igrave; \\u0111&oacute; l&agrave; chanh \\u0111&atilde; h\\u1ecfng ho\\u1eb7c b\\u1ecb ti&ecirc;m h&oacute;a ch\\u1ea5t.<\\/li>\\r\\n\\t<li>Khi c\\u1ea7m chanh tr&ecirc;n tay th\\u1ea5y chanh n\\u1eb7ng tay th&igrave; c&oacute; ngh\\u0129a chanh \\u0111&oacute; nhi\\u1ec1u n\\u01b0\\u1edbc, n&ecirc;n mua. Tr&aacute;i chanh nh\\u1eb9 tay ho\\u1eb7c l&agrave; tr&aacute;i qu&aacute; nh\\u1ecf th&igrave; c&oacute; th\\u1ec3 tr&aacute;i chanh \\u0111&oacute; ch\\u01b0a ch&iacute;n, kh&ocirc;ng c&oacute; nhi\\u1ec1u n\\u01b0\\u1edbc v&agrave; n\\u01b0\\u1edbc s\\u1ebd c&oacute; v\\u1ecb nh\\u1eabn \\u0111\\u1eafng.<\\/li>\\r\\n\\t<li>Kh&ocirc;ng n&ecirc;n mua nh\\u1eefng tr&aacute;i c&oacute; m&agrave;u v&agrave;ng x\\u1ec9n, v\\u1ecf s\\u1ea7n s&ugrave;i hay tr&ecirc;n v\\u1ecf c&oacute; xu\\u1ea5t hi\\u1ec7n \\u0111\\u1ed1m \\u0111en.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"Nguy\\u00ean li\\u1ec7u m\\u00f3n \\u0103n n\\u01b0\\u1edbc \\u00e9p d\\u00e2u t\\u00e2y\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/10\\/CookRecipe\\/CookUtensilandNotes\\/nuoc-ep-dau-tay-note-1200x676.jpg\\\" height=\\\"676\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/2021\\/10\\/CookRecipe\\/CookUtensilandNotes\\/nuoc-ep-dau-tay-note-1200x676.jpg\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<h2>D\\u1ee5ng c\\u1ee5 th\\u1ef1c hi\\u1ec7n<\\/h2>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/www.dienmayxanh.com\\/may-xay-sinh-to\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"m\\u00e1y xay sinh t\\u1ed1\\\">M&aacute;y xay sinh t\\u1ed1<\\/a>,&nbsp;<a href=\\\"https:\\/\\/www.dienmayxanh.com\\/dao-lam-bep\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"dao\\\">dao<\\/a>,&nbsp;<a href=\\\"https:\\/\\/www.dienmayxanh.com\\/va-san?g=ray-loc\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"th\\u1edbt\\\">r&acirc;y l\\u1ecdc<\\/a>,&nbsp;<a href=\\\"https:\\/\\/www.dienmayxanh.com\\/binh-ly\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"ly\\\">ly<\\/a>,&nbsp;<a href=\\\"https:\\/\\/www.dienmayxanh.com\\/muong-dua\\\" rel=\\\"noopener\\\" target=\\\"_blank\\\" title=\\\"mu\\u1ed7ng\\\">mu\\u1ed7ng<\\/a>,...<\\/p>\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/8\\/N\\u01b0\\u1edbc \\u00c9p\\/28.jpg\",\"sku\":\"NC03\",\"alias\":null,\"brand_id\":null,\"cost\":\"50000\",\"price\":\"65000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:38:56', '2022-04-19 02:38:56'),
(1859, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:38:56', '2022-04-19 02:38:56'),
(1860, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:40:56', '2022-04-19 02:40:56'),
(1861, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:48:53', '2022-04-19 02:48:53'),
(1862, 1, 'sc_admin/banner/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:48:55', '2022-04-19 02:48:55'),
(1863, 1, 'sc_admin/banner/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2\\/home2-slideshow-1.jpg\",\"url\":null,\"target\":null,\"html\":\"aaaaaaaaaaaaaaaaa\",\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:49:01', '2022-04-19 02:49:01'),
(1864, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:49:01', '2022-04-19 02:49:01'),
(1865, 1, 'sc_admin/banner/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:49:22', '2022-04-19 02:49:22'),
(1866, 1, 'sc_admin/banner/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home2\\/home2-slideshow-1.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"TU1ITxAdQgFJo9ZmmNlq3KUFwZTY6AOOhEMXxjL5\"}', '2022-04-19 02:49:28', '2022-04-19 02:49:28'),
(1867, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 02:49:28', '2022-04-19 02:49:28'),
(1868, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 06:55:05', '2022-04-19 06:55:05'),
(1869, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 08:03:50', '2022-04-19 08:03:50'),
(1870, 1, 'sc_admin/block_content', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 08:04:04', '2022-04-19 08:04:04'),
(1871, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 08:04:06', '2022-04-19 08:04:06'),
(1872, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"tYIREnQsfwDuGA63nczqDFBu54cNyMXbzGOpuH0M\",\"key\":\"noithat\"}', '2022-04-19 08:04:14', '2022-04-19 08:04:14'),
(1873, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 08:04:14', '2022-04-19 08:04:14'),
(1874, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"tYIREnQsfwDuGA63nczqDFBu54cNyMXbzGOpuH0M\",\"key\":\"book\"}', '2022-04-19 08:04:40', '2022-04-19 08:04:40'),
(1875, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 08:04:40', '2022-04-19 08:04:40'),
(1876, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"tYIREnQsfwDuGA63nczqDFBu54cNyMXbzGOpuH0M\",\"key\":\"fresh-mart\"}', '2022-04-19 08:08:11', '2022-04-19 08:08:11'),
(1877, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 08:08:11', '2022-04-19 08:08:11'),
(1878, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:00:36', '2022-04-19 09:00:36'),
(1879, 1, 'sc_admin/category/edit/25', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:09:14', '2022-04-19 09:09:14'),
(1880, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:09:23', '2022-04-19 09:09:23'),
(1881, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:09:26', '2022-04-19 09:09:26'),
(1882, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:31:20', '2022-04-19 09:31:20'),
(1883, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"tYIREnQsfwDuGA63nczqDFBu54cNyMXbzGOpuH0M\",\"key\":\"noithat\"}', '2022-04-19 09:31:24', '2022-04-19 09:31:24'),
(1884, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:31:24', '2022-04-19 09:31:24'),
(1885, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"tYIREnQsfwDuGA63nczqDFBu54cNyMXbzGOpuH0M\",\"key\":\"fresh-mart\"}', '2022-04-19 09:33:29', '2022-04-19 09:33:29'),
(1886, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:33:30', '2022-04-19 09:33:30'),
(1887, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"tYIREnQsfwDuGA63nczqDFBu54cNyMXbzGOpuH0M\",\"key\":\"noithat\"}', '2022-04-19 09:35:57', '2022-04-19 09:35:57'),
(1888, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:35:57', '2022-04-19 09:35:57'),
(1889, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"tYIREnQsfwDuGA63nczqDFBu54cNyMXbzGOpuH0M\",\"key\":\"fresh-mart\"}', '2022-04-19 09:36:20', '2022-04-19 09:36:20'),
(1890, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-19 09:36:20', '2022-04-19 09:36:20'),
(1891, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 01:00:08', '2022-04-20 01:00:08'),
(1892, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 01:00:16', '2022-04-20 01:00:16'),
(1893, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 01:09:46', '2022-04-20 01:09:46'),
(1894, 1, 'sc_admin/order/detail/16', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 01:09:54', '2022-04-20 01:09:54'),
(1895, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 04:12:53', '2022-04-20 04:12:53'),
(1896, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 04:13:03', '2022-04-20 04:13:03'),
(1897, 1, 'sc_admin/order/detail/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 04:13:07', '2022-04-20 04:13:07'),
(1898, 1, 'sc_admin/locale/vi', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 04:13:46', '2022-04-20 04:13:46'),
(1899, 1, 'sc_admin/order/detail/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 04:13:46', '2022-04-20 04:13:46'),
(1900, 1, 'sc_admin/api_connection', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 04:14:03', '2022-04-20 04:14:03'),
(1901, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 06:59:16', '2022-04-20 06:59:16'),
(1902, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 06:59:38', '2022-04-20 06:59:38'),
(1903, 1, 'sc_admin/block_content', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 06:59:59', '2022-04-20 06:59:59'),
(1904, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:00:13', '2022-04-20 07:00:13'),
(1905, 1, 'sc_admin/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:00:21', '2022-04-20 07:00:21'),
(1906, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"shop_allow_guest\",\"value\":\"0\",\"_token\":\"Uw0jebt1QiZnoRo2w7ru6HTMP7kEaKMW3YTlsTps\"}', '2022-04-20 07:07:05', '2022-04-20 07:07:05'),
(1907, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:08:59', '2022-04-20 07:08:59'),
(1908, 1, 'sc_admin/shipping_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:14:57', '2022-04-20 07:14:57'),
(1909, 1, 'sc_admin/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:15:02', '2022-04-20 07:15:02'),
(1910, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:15:10', '2022-04-20 07:15:10'),
(1911, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:15:14', '2022-04-20 07:15:14'),
(1912, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"product\"}', '2022-04-20 07:15:33', '2022-04-20 07:15:33'),
(1913, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650438936723\"}', '2022-04-20 07:15:37', '2022-04-20 07:15:37'),
(1914, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650438936722\"}', '2022-04-20 07:15:37', '2022-04-20 07:15:37'),
(1915, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650438936724\"}', '2022-04-20 07:15:38', '2022-04-20 07:15:38'),
(1916, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650438936725\"}', '2022-04-20 07:15:40', '2022-04-20 07:15:40'),
(1917, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"product\"}', '2022-04-20 07:15:50', '2022-04-20 07:15:50'),
(1918, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650438951070\"}', '2022-04-20 07:15:51', '2022-04-20 07:15:51'),
(1919, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1650438951071\"}', '2022-04-20 07:15:51', '2022-04-20 07:15:51'),
(1920, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650438951072\"}', '2022-04-20 07:15:52', '2022-04-20 07:15:52'),
(1921, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/8\\/N\\u01b0\\u1edbc \\u00c9p\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650438951073\"}', '2022-04-20 07:15:55', '2022-04-20 07:15:55'),
(1922, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:16:38', '2022-04-20 07:16:38'),
(1923, 1, 'sc_admin/product/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:16:42', '2022-04-20 07:16:42'),
(1924, 1, 'sc_admin/product/edit/24', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"T\\u00e1o Envy\",\"keyword\":\"T\\u00e1o Envy\",\"description\":\"Sau chu\\u1ed1i, t\\u00e1o l\\u00e0 lo\\u1ea1i tr\\u00e1i c\\u00e2y \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi M\\u1ef9 v\\u00f4 c\\u00f9ng y\\u00eau th\\u00edch\",\"content\":\"<h1 style=\\\"text-align:justify\\\"><strong>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng \\u1edf \\u0111&acirc;u?<\\/strong><\\/h1>\\r\\n\\r\\n<h1 style=\\\"text-align:justify\\\">Ng\\u01b0\\u1eddi M\\u1ef9 lu&ocirc;n c&oacute; t&aacute;o \\u0111\\u1ec3 th\\u01b0\\u1edfng t<span style=\\\"font-family:Times New Roman,Times,serif\\\"><span style=\\\"font-size:8px\\\"><\\/span><\\/span>h\\u1ee9c m\\u1ed7i ng&agrave;y b\\u1edfi bang Washington \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l&agrave; v&ugrave;ng \\u0111\\u1ea5t c\\u1ee7a nh\\u1eefng qu\\u1ea3 t&aacute;o, v\\u1edbi \\u0111\\u1ea5t \\u0111ai tr&ugrave; ph&uacute; v&agrave; kh&iacute; h\\u1eadu &ocirc;n h&ograve;a. T&aacute;o ph\\u1ee5c v\\u1ee5 kh&ocirc;ng ch\\u1ec9 cho ng\\u01b0\\u1eddi d&acirc;n n\\u01b0\\u1edbc M\\u1ef9, m&agrave; hi\\u1ec7n nay \\u0111&atilde; \\u0111\\u1ebfn kh\\u1eafp n\\u01a1i tr&ecirc;n th\\u1ebf gi\\u1edbi.<\\/h1>\\r\\n\\r\\n<h1 style=\\\"text-align:justify\\\">T\\u1ea1i M\\u1ef9, c&oacute; \\u0111\\u1ebfn 2.500 gi\\u1ed1ng t&aacute;o \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng, nh\\u01b0ng ch\\u1ec9 100 gi\\u1ed1ng tuy\\u1ec7t v\\u1eddi nh\\u1ea5t m\\u1edbi \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a ra th\\u1ecb tr\\u01b0\\u1eddng. Ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a c&aacute;c tr&aacute;i&nbsp;<a href=\\\"https:\\/\\/hoaquafuji.com\\/post\\/tao-envy-size-nho\\\">t&aacute;o M\\u1ef9<\\/a>&nbsp;lu&ocirc;n \\u0111\\u01b0\\u1ee3c xem nh\\u01b0 m\\u1ed9t chu\\u1ea9n m\\u1ef1c v\\u1ec1 m\\u1ee9c \\u0111\\u1ed9 an to&agrave;n, s\\u1ea1ch v&agrave; ngon. T&aacute;o M\\u1ef9 chinh ph\\u1ee5c h\\u1ea7u h\\u1ebft ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng tr&ecirc;n th\\u1ebf gi\\u1edbi, trong \\u0111&oacute; c&oacute; c\\u1ea3 Vi\\u1ec7t Nam.<\\/h1>\\r\\n\\r\\n<h1 style=\\\"text-align:justify\\\"><img alt=\\\"\\\" data-result=\\\"success\\\" src=\\\"https:\\/\\/hoaquafuji.com\\/storage\\/app\\/media\\/uploaded-files\\/trai-tao-my-tao-gala-5-min.jpg\\\" \\/><\\/h1>\\r\\n\\r\\n<h1 style=\\\"text-align:justify\\\"><em>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nhi\\u1ec1u \\u1edf bang Washington<\\/em><\\/h1>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/3.jpg\",\"sku\":\"T01\",\"alias\":\"tao-envy\",\"brand_id\":null,\"cost\":\"80000\",\"price\":\"90000\",\"tax_id\":\"1\",\"price_promotion\":\"80000\",\"price_promotion_start\":\"2022-04-13 00:00:00\",\"price_promotion_end\":\"2022-04-23 00:00:00\",\"stock\":\"13\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"kho9jImu0wWoMveeeYC7QNTYebB0wtLuA1qaPVf1\"}', '2022-04-20 07:17:38', '2022-04-20 07:17:38'),
(1925, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:17:39', '2022-04-20 07:17:39'),
(1926, 1, 'sc_admin/product/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:17:57', '2022-04-20 07:17:57');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1927, 1, 'sc_admin/product/edit/24', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"T\\u00e1o Envy\",\"keyword\":\"T\\u00e1o Envy\",\"description\":\"Sau chu\\u1ed1i, t\\u00e1o l\\u00e0 lo\\u1ea1i tr\\u00e1i c\\u00e2y \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi M\\u1ef9 v\\u00f4 c\\u00f9ng y\\u00eau th\\u00edch\",\"content\":\"<h2 style=\\\"text-align:justify\\\"><strong>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng \\u1edf \\u0111&acirc;u?<\\/strong><\\/h2>\\r\\n\\r\\n<h2 style=\\\"text-align:justify\\\">Ng\\u01b0\\u1eddi M\\u1ef9 lu&ocirc;n c&oacute; t&aacute;o \\u0111\\u1ec3 th\\u01b0\\u1edfng t<span style=\\\"font-family:Times New Roman,Times,serif\\\"><span style=\\\"font-size:8px\\\"><\\/span><\\/span>h\\u1ee9c m\\u1ed7i ng&agrave;y b\\u1edfi bang Washington \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l&agrave; v&ugrave;ng \\u0111\\u1ea5t c\\u1ee7a nh\\u1eefng qu\\u1ea3 t&aacute;o, v\\u1edbi \\u0111\\u1ea5t \\u0111ai tr&ugrave; ph&uacute; v&agrave; kh&iacute; h\\u1eadu &ocirc;n h&ograve;a. T&aacute;o ph\\u1ee5c v\\u1ee5 kh&ocirc;ng ch\\u1ec9 cho ng\\u01b0\\u1eddi d&acirc;n n\\u01b0\\u1edbc M\\u1ef9, m&agrave; hi\\u1ec7n nay \\u0111&atilde; \\u0111\\u1ebfn kh\\u1eafp n\\u01a1i tr&ecirc;n th\\u1ebf gi\\u1edbi.<\\/h2>\\r\\n\\r\\n<h2 style=\\\"text-align:justify\\\">T\\u1ea1i M\\u1ef9, c&oacute; \\u0111\\u1ebfn 2.500 gi\\u1ed1ng t&aacute;o \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng, nh\\u01b0ng ch\\u1ec9 100 gi\\u1ed1ng tuy\\u1ec7t v\\u1eddi nh\\u1ea5t m\\u1edbi \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a ra th\\u1ecb tr\\u01b0\\u1eddng. Ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a c&aacute;c tr&aacute;i&nbsp;<a href=\\\"https:\\/\\/hoaquafuji.com\\/post\\/tao-envy-size-nho\\\">t&aacute;o M\\u1ef9<\\/a>&nbsp;lu&ocirc;n \\u0111\\u01b0\\u1ee3c xem nh\\u01b0 m\\u1ed9t chu\\u1ea9n m\\u1ef1c v\\u1ec1 m\\u1ee9c \\u0111\\u1ed9 an to&agrave;n, s\\u1ea1ch v&agrave; ngon. T&aacute;o M\\u1ef9 chinh ph\\u1ee5c h\\u1ea7u h\\u1ebft ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng tr&ecirc;n th\\u1ebf gi\\u1edbi, trong \\u0111&oacute; c&oacute; c\\u1ea3 Vi\\u1ec7t Nam.<\\/h2>\\r\\n\\r\\n<h2 style=\\\"text-align:justify\\\"><img alt=\\\"\\\" data-result=\\\"success\\\" src=\\\"https:\\/\\/hoaquafuji.com\\/storage\\/app\\/media\\/uploaded-files\\/trai-tao-my-tao-gala-5-min.jpg\\\" \\/><\\/h2>\\r\\n\\r\\n<h2 style=\\\"text-align:justify\\\"><em>Tr&aacute;i t&aacute;o M\\u1ef9 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng nhi\\u1ec1u \\u1edf bang Washington<\\/em><\\/h2>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/Tr\\u00e1i C\\u00e2y\\/3.jpg\",\"sku\":\"T01\",\"alias\":\"tao-envy\",\"brand_id\":null,\"cost\":\"80000\",\"price\":\"90000\",\"tax_id\":\"1\",\"price_promotion\":\"80000\",\"price_promotion_start\":\"2022-04-13 00:00:00\",\"price_promotion_end\":\"2022-04-23 00:00:00\",\"stock\":\"13\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"virtual\":\"0\",\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"kho9jImu0wWoMveeeYC7QNTYebB0wtLuA1qaPVf1\"}', '2022-04-20 07:18:08', '2022-04-20 07:18:08'),
(1928, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:18:08', '2022-04-20 07:18:08'),
(1929, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 07:54:45', '2022-04-20 07:54:45'),
(1930, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 08:33:53', '2022-04-20 08:33:53'),
(1931, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"Support: 0359808267\",\"pk\":null,\"_token\":\"zmx3p16HRyx8aQ8sl0gI6eNzpuNTLdsNvi4Hxx8U\"}', '2022-04-20 08:34:15', '2022-04-20 08:34:15'),
(1932, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"logo\"}', '2022-04-20 08:34:18', '2022-04-20 08:34:18'),
(1933, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1650443659018\"}', '2022-04-20 08:34:19', '2022-04-20 08:34:19'),
(1934, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1650443659017\"}', '2022-04-20 08:34:19', '2022-04-20 08:34:19'),
(1935, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650443659019\"}', '2022-04-20 08:34:19', '2022-04-20 08:34:19'),
(1936, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"zmx3p16HRyx8aQ8sl0gI6eNzpuNTLdsNvi4Hxx8U\"}', '2022-04-20 08:35:09', '2022-04-20 08:35:09'),
(1937, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1650443659020\"}', '2022-04-20 08:35:09', '2022-04-20 08:35:09'),
(1938, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650443659021\"}', '2022-04-20 08:35:10', '2022-04-20 08:35:10'),
(1939, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"logo\",\"value\":\"\\/data\\/logo\\/logo.png\",\"_token\":\"zmx3p16HRyx8aQ8sl0gI6eNzpuNTLdsNvi4Hxx8U\"}', '2022-04-20 08:35:17', '2022-04-20 08:35:17'),
(1940, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"type\":\"logo\"}', '2022-04-20 08:35:20', '2022-04-20 08:35:20'),
(1941, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1650443721200\"}', '2022-04-20 08:35:21', '2022-04-20 08:35:21'),
(1942, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1650443721201\"}', '2022-04-20 08:35:21', '2022-04-20 08:35:21'),
(1943, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650443721202\"}', '2022-04-20 08:35:22', '2022-04-20 08:35:22'),
(1944, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"zmx3p16HRyx8aQ8sl0gI6eNzpuNTLdsNvi4Hxx8U\"}', '2022-04-20 08:35:36', '2022-04-20 08:35:36'),
(1945, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1650443721203\"}', '2022-04-20 08:35:36', '2022-04-20 08:35:36'),
(1946, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1650443721204\"}', '2022-04-20 08:35:36', '2022-04-20 08:35:36'),
(1947, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"logofooter\",\"value\":\"\\/data\\/logo\\/leaf.png\",\"_token\":\"zmx3p16HRyx8aQ8sl0gI6eNzpuNTLdsNvi4Hxx8U\"}', '2022-04-20 08:35:41', '2022-04-20 08:35:41'),
(1948, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 08:36:07', '2022-04-20 08:36:07'),
(1949, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 08:36:14', '2022-04-20 08:36:14'),
(1950, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 08:36:16', '2022-04-20 08:36:16'),
(1951, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 08:36:24', '2022-04-20 08:36:24'),
(1952, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 08:36:34', '2022-04-20 08:36:34'),
(1953, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-20 08:44:32', '2022-04-20 08:44:32'),
(1954, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:18:53', '2022-04-21 02:18:53'),
(1955, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:19:03', '2022-04-21 02:19:03'),
(1956, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:19:08', '2022-04-21 02:19:08'),
(1957, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:19:17', '2022-04-21 02:19:17'),
(1958, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:47:39', '2022-04-21 02:47:39'),
(1959, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"6LKifoFmFDWHsHzfuoXJiQy12rFu6GatiTjt5idA\",\"key\":\"noithat\"}', '2022-04-21 02:47:46', '2022-04-21 02:47:46'),
(1960, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:47:46', '2022-04-21 02:47:46'),
(1961, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:48:10', '2022-04-21 02:48:10'),
(1962, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:48:14', '2022-04-21 02:48:14'),
(1963, 1, 'sc_admin/subscribe/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:54:08', '2022-04-21 02:54:08'),
(1964, 1, 'sc_admin/subscribe/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"email\":\"admin@admin.com\",\"status\":\"on\",\"_token\":\"6LKifoFmFDWHsHzfuoXJiQy12rFu6GatiTjt5idA\"}', '2022-04-21 02:54:18', '2022-04-21 02:54:18'),
(1965, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:54:19', '2022-04-21 02:54:19'),
(1966, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:54:38', '2022-04-21 02:54:38'),
(1967, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:56:00', '2022-04-21 02:56:00'),
(1968, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"6LKifoFmFDWHsHzfuoXJiQy12rFu6GatiTjt5idA\",\"key\":\"book\"}', '2022-04-21 02:56:04', '2022-04-21 02:56:04'),
(1969, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:56:04', '2022-04-21 02:56:04'),
(1970, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:56:14', '2022-04-21 02:56:14'),
(1971, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:59:42', '2022-04-21 02:59:42'),
(1972, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"6LKifoFmFDWHsHzfuoXJiQy12rFu6GatiTjt5idA\",\"key\":\"fresh-mart\"}', '2022-04-21 02:59:45', '2022-04-21 02:59:45'),
(1973, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 02:59:46', '2022-04-21 02:59:46'),
(1974, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-21 03:00:39', '2022-04-21 03:00:39'),
(1975, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 00:43:25', '2022-04-22 00:43:25'),
(1976, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 00:43:58', '2022-04-22 00:43:58'),
(1977, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"9MjwYz3pelilJk5HiM9wh3wTXGnK2uFHS9TU9wZK\",\"key\":\"noithat\"}', '2022-04-22 00:44:01', '2022-04-22 00:44:01'),
(1978, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 00:44:02', '2022-04-22 00:44:02'),
(1979, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"9MjwYz3pelilJk5HiM9wh3wTXGnK2uFHS9TU9wZK\",\"key\":\"fresh-mart\"}', '2022-04-22 00:53:31', '2022-04-22 00:53:31'),
(1980, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 00:53:31', '2022-04-22 00:53:31'),
(1981, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 02:15:47', '2022-04-22 02:15:47'),
(1982, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:14:02', '2022-04-22 09:14:02'),
(1983, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:24:53', '2022-04-22 09:24:53'),
(1984, 1, 'sc_admin/cms_category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:25:01', '2022-04-22 09:25:01'),
(1985, 1, 'sc_admin/cms_content', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:25:06', '2022-04-22 09:25:06'),
(1986, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:25:13', '2022-04-22 09:25:13'),
(1987, 1, 'sc_admin/log', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:36:25', '2022-04-22 09:36:25'),
(1988, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:36:44', '2022-04-22 09:36:44'),
(1989, 1, 'sc_admin/customer_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:52:55', '2022-04-22 09:52:55'),
(1990, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:53:13', '2022-04-22 09:53:13'),
(1991, 1, 'sc_admin/cms_category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:53:38', '2022-04-22 09:53:38'),
(1992, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:53:54', '2022-04-22 09:53:54'),
(1993, 1, 'sc_admin/subscribe/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:54:02', '2022-04-22 09:54:02'),
(1994, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 09:54:06', '2022-04-22 09:54:06'),
(1995, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:07:24', '2022-04-22 10:07:24'),
(1996, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"DyUFZJ8DlgjmRyRifZe5ngYlzCAWkDcsGHxz78lT\",\"key\":\"noithat\"}', '2022-04-22 10:07:28', '2022-04-22 10:07:28'),
(1997, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:07:28', '2022-04-22 10:07:28'),
(1998, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:09:19', '2022-04-22 10:09:19'),
(1999, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"order_status\":\"1\"}', '2022-04-22 10:09:42', '2022-04-22 10:09:42'),
(2000, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:10:06', '2022-04-22 10:10:06'),
(2001, 1, 'sc_admin/customer/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:10:11', '2022-04-22 10:10:11'),
(2002, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:10:19', '2022-04-22 10:10:19'),
(2003, 1, 'sc_admin/customer_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:10:30', '2022-04-22 10:10:30'),
(2004, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:10:45', '2022-04-22 10:10:45'),
(2005, 1, 'sc_admin/email', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:11:04', '2022-04-22 10:11:04'),
(2006, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"welcome_customer\",\"value\":\"1\",\"_token\":\"DyUFZJ8DlgjmRyRifZe5ngYlzCAWkDcsGHxz78lT\"}', '2022-04-22 10:11:20', '2022-04-22 10:11:20'),
(2007, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"email_action_smtp_mode\",\"value\":\"1\",\"_token\":\"DyUFZJ8DlgjmRyRifZe5ngYlzCAWkDcsGHxz78lT\"}', '2022-04-22 10:11:26', '2022-04-22 10:11:26'),
(2008, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"email_action_smtp_mode\",\"value\":\"0\",\"_token\":\"DyUFZJ8DlgjmRyRifZe5ngYlzCAWkDcsGHxz78lT\"}', '2022-04-22 10:11:33', '2022-04-22 10:11:33'),
(2009, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"order_success_to_customer\",\"value\":\"1\",\"_token\":\"DyUFZJ8DlgjmRyRifZe5ngYlzCAWkDcsGHxz78lT\"}', '2022-04-22 10:11:38', '2022-04-22 10:11:38'),
(2010, 1, 'sc_admin/setting/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"name\":\"order_success_to_admin\",\"value\":\"1\",\"_token\":\"DyUFZJ8DlgjmRyRifZe5ngYlzCAWkDcsGHxz78lT\"}', '2022-04-22 10:11:42', '2022-04-22 10:11:42'),
(2011, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:11:47', '2022-04-22 10:11:47'),
(2012, 1, 'sc_admin/email_template/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:11:56', '2022-04-22 10:11:56'),
(2013, 1, 'sc_admin/email_template/list_variable', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"key\":\"contact_to_admin\"}', '2022-04-22 10:11:57', '2022-04-22 10:11:57'),
(2014, 1, 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:12:27', '2022-04-22 10:12:27'),
(2015, 1, 'sc_admin/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:12:39', '2022-04-22 10:12:39'),
(2016, 1, 'sc_admin/backup', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:13:06', '2022-04-22 10:13:06'),
(2017, 1, 'sc_admin/cache_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:13:10', '2022-04-22 10:13:10'),
(2018, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:13:19', '2022-04-22 10:13:19'),
(2019, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:13:59', '2022-04-22 10:13:59'),
(2020, 1, 'sc_admin/template/changeTemplate', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '{\"_token\":\"DyUFZJ8DlgjmRyRifZe5ngYlzCAWkDcsGHxz78lT\",\"key\":\"fresh-mart\"}', '2022-04-22 10:14:03', '2022-04-22 10:14:03'),
(2021, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '[]', '2022-04-22 10:14:03', '2022-04-22 10:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_menu`
--

CREATE TABLE `sc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_menu`
--

INSERT INTO `sc_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `key`, `permission`, `created_at`, `updated_at`) VALUES
(1, 6, 11, 'lang::admin.menu_titles.order_manager', 'fa-cart-arrow-down', '', 0, 'ORDER_MANAGER', NULL, NULL, NULL),
(2, 6, 12, 'lang::admin.menu_titles.catalog_mamager', 'fa-folder-open', '', 0, 'CATALOG_MANAGER', NULL, NULL, NULL),
(3, 6, 13, 'lang::admin.menu_titles.customer_manager', 'fa-group', '', 0, 'CUSTOMER_MANAGER', NULL, NULL, NULL),
(4, 8, 201, 'lang::admin.menu_titles.template_layout', 'fa-object-ungroup', '', 0, 'TEMPLATE', NULL, NULL, NULL),
(5, 9, 301, 'lang::admin.menu_titles.config_manager', 'fa-cogs', '', 0, 'CONFIG_MANAGER', NULL, NULL, NULL),
(6, 0, 10, 'lang::ADMIN SHOP', 'fa-minus', '', 0, 'ADMIN_SHOP', NULL, NULL, NULL),
(7, 0, 100, 'lang::ADMIN CONTENT', 'fa-minus', '', 0, 'ADMIN_CONTENT', NULL, NULL, NULL),
(8, 0, 200, 'lang::ADMIN EXTENSION', 'fa-minus', '', 0, 'ADMIN_EXTENSION', NULL, NULL, NULL),
(9, 0, 300, 'lang::ADMIN SYSTEM', 'fa-minus', '', 0, 'ADMIN_SYSTEM', NULL, NULL, NULL),
(10, 7, 102, 'lang::page.admin.title', 'fa-clone', 'admin::page', 0, NULL, NULL, NULL, NULL),
(11, 1, 6, 'lang::shipping_status.admin.title', 'fa-truck', 'admin::shipping_status', 0, NULL, NULL, NULL, NULL),
(12, 1, 3, 'lang::order.admin.title', 'fa-shopping-cart', 'admin::order', 0, NULL, NULL, NULL, NULL),
(13, 1, 4, 'lang::order_status.admin.title', 'fa-asterisk', 'admin::order_status', 0, NULL, NULL, NULL, NULL),
(14, 1, 5, 'lang::payment_status.admin.title', 'fa-recycle', 'admin::payment_status', 0, NULL, NULL, NULL, NULL),
(15, 2, 0, 'lang::product.admin.title', 'fa-file-photo-o', 'admin::product', 0, NULL, NULL, NULL, NULL),
(16, 2, 0, 'lang::category.admin.title', 'fa-folder-open-o', 'admin::category', 0, NULL, NULL, NULL, NULL),
(18, 2, 0, 'lang::brand.admin.title', 'fa-bank', 'admin::brand', 0, NULL, NULL, NULL, NULL),
(19, 2, 0, 'lang::attribute_group.admin.title', 'fa-bars', 'admin::attribute_group', 0, NULL, NULL, NULL, NULL),
(20, 3, 0, 'lang::customer.admin.title', 'fa-user', 'admin::customer', 0, NULL, NULL, NULL, NULL),
(21, 3, 0, 'lang::subscribe.admin.title', 'fa-user-circle-o', 'admin::subscribe', 0, NULL, NULL, NULL, NULL),
(22, 4, 0, 'lang::block_content.admin.title', 'fa-newspaper-o', 'admin::block_content', 0, NULL, NULL, NULL, NULL),
(23, 4, 0, 'lang::admin.menu_titles.block_link', 'fa-chrome', 'admin::link', 0, NULL, NULL, NULL, NULL),
(24, 4, 0, 'lang::admin.menu_titles.template_manager', 'fa-columns', 'admin::template', 0, NULL, NULL, NULL, NULL),
(26, 5, 1, 'lang::store_info.admin.title', 'fa-h-square', 'admin::store_info', 0, NULL, NULL, NULL, NULL),
(27, 5, 4, 'lang::admin.menu_titles.email_setting', 'fa-envelope', '', 0, NULL, NULL, NULL, NULL),
(28, 27, 0, 'lang::email.admin.title', 'fa-cog', 'admin::email', 0, NULL, NULL, NULL, NULL),
(29, 27, 0, 'lang::email_template.admin.title', 'fa-bars', 'admin::email_template', 0, NULL, NULL, NULL, NULL),
(30, 5, 5, 'lang::admin.menu_titles.localisation', 'fa-shirtsinbulk', '', 0, NULL, NULL, NULL, NULL),
(31, 30, 0, 'lang::language.admin.title', 'fa-pagelines', 'admin::language', 0, NULL, NULL, NULL, NULL),
(32, 30, 0, 'lang::currency.admin.title', 'fa-dollar', 'admin::currency', 0, NULL, NULL, NULL, NULL),
(33, 7, 101, 'lang::banner.admin.title', 'fa-image', 'admin::banner', 0, NULL, NULL, NULL, NULL),
(34, 5, 5, 'lang::backup.admin.title', 'fa-save', 'admin::backup', 0, NULL, NULL, NULL, NULL),
(35, 8, 202, 'lang::admin.menu_titles.plugins', 'fa-puzzle-piece', '', 0, 'PLUGIN', NULL, NULL, NULL),
(37, 9, 302, 'lang::admin.menu_titles.report_manager', 'fa-pie-chart', '', 0, 'REPORT_MANAGER', NULL, NULL, NULL),
(38, 9, 0, 'lang::admin.menu_titles.admin', 'fa-sitemap', '', 0, 'ADMIN', NULL, NULL, NULL),
(39, 35, 0, 'plugin.Payment', 'fa-money', 'admin::plugin/payment', 0, NULL, NULL, NULL, NULL),
(40, 35, 0, 'plugin.Shipping', 'fa-ambulance', 'admin::plugin/shipping', 0, NULL, NULL, NULL, NULL),
(41, 35, 0, 'plugin.Total', 'fa-cog', 'admin::plugin/total', 0, NULL, NULL, NULL, NULL),
(42, 35, 100, 'plugin.Other', 'fa-circle-thin', 'admin::plugin/other', 0, NULL, NULL, NULL, NULL),
(43, 35, 0, 'plugin.Cms', 'fa-modx', 'admin::plugin/cms', 0, NULL, NULL, NULL, NULL),
(46, 38, 0, 'lang::admin.menu_titles.users', 'fa-users', 'admin::user', 0, NULL, NULL, NULL, NULL),
(47, 38, 0, 'lang::admin.menu_titles.roles', 'fa-user', 'admin::role', 0, NULL, NULL, NULL, NULL),
(48, 38, 0, 'lang::admin.menu_titles.permission', 'fa-ban', 'admin::permission', 0, NULL, NULL, NULL, NULL),
(49, 38, 0, 'lang::admin.menu_titles.menu', 'fa-bars', 'admin::menu', 0, NULL, NULL, NULL, NULL),
(50, 38, 0, 'lang::admin.menu_titles.operation_log', 'fa-history', 'admin::log', 0, NULL, NULL, NULL, NULL),
(52, 7, 103, 'lang::news.admin.title', 'fa-file-powerpoint-o', 'admin::news', 0, NULL, NULL, NULL, NULL),
(53, 5, 3, 'lang::setting.title', 'fa-cog', 'admin::setting', 0, NULL, NULL, NULL, NULL),
(54, 37, 0, 'lang::admin.menu_titles.report_product', 'fa-bars', 'admin::report/product', 0, NULL, NULL, NULL, NULL),
(55, 2, 100, 'lang::product.config_manager.title', 'fa fa-cog', 'admin::product_config', 0, NULL, NULL, NULL, NULL),
(56, 3, 100, 'lang::customer.config_manager.title', 'fa fa-cog', 'admin::customer_config', 0, NULL, NULL, NULL, NULL),
(57, 5, 2, 'lang::link.config_manager.title', 'fa-gg', 'admin::url_config', 0, NULL, NULL, NULL, NULL),
(58, 5, 5, 'lang::admin.menu_titles.cache_manager', 'fa-tripadvisor', 'admin::cache_config', 0, NULL, NULL, NULL, NULL),
(59, 9, 303, 'lang::admin.menu_titles.api_manager', 'fa-plug', 'admin::api_connection', 0, 'API_MANAGER', NULL, NULL, NULL),
(60, 5, 3, 'lang::maintain.config_manager.title', 'fa-flag', 'admin::maintain', 0, NULL, NULL, NULL, NULL),
(61, 2, 4, 'lang::tax.admin.admin_title', 'fa-calendar-minus-o', 'admin::tax', 0, NULL, NULL, NULL, NULL),
(62, 2, 5, 'lang::weight.admin.title', 'fa-balance-scale', 'admin::weight_unit', 0, NULL, NULL, NULL, NULL),
(63, 2, 6, 'lang::length.admin.title', 'fa-minus', 'admin::length_unit', 0, NULL, NULL, NULL, NULL),
(64, 7, 102, 'Plugins/Cms/Content::Content.cms_manager', 'fa-coffee', NULL, 0, 'Content', NULL, NULL, NULL),
(65, 64, 0, 'Plugins/Cms/Content::Content.cms_category', 'fa-folder-open-o', 'route::admin_cms_category.index', 0, NULL, NULL, NULL, NULL),
(66, 64, 0, 'Plugins/Cms/Content::Content.cms_content', 'fa-copy', 'route::admin_cms_content.index', 0, NULL, NULL, NULL, NULL),
(68, 7, 0, 'Dự án', 'fa-institution', 'admin::duan', 0, NULL, NULL, '2020-06-19 02:09:49', '2020-06-19 02:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_menu_permission`
--

CREATE TABLE `sc_admin_menu_permission` (
  `menu_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_permission`
--

CREATE TABLE `sc_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_permission`
--

INSERT INTO `sc_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Admin manager', 'admin.manager', 'GET::sc_admin/user,GET::sc_admin/role,GET::sc_admin/permission,ANY::sc_admin/log/*,ANY::sc_admin/menu/*', '2020-05-22 02:25:22', NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', '2020-05-22 02:25:22', NULL),
(3, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', '2020-05-22 02:25:22', NULL),
(4, 'Setting manager', 'setting.full', '\r\n                    ANY::sc_admin/store_info/*,\r\n                    ANY::sc_admin/setting/*,\r\n                    ANY::sc_admin/url_config/*,\r\n                    ANY::sc_admin/product_config/*,\r\n                    ANY::sc_admin/customer_config/*,\r\n                    ANY::sc_admin/cache_config/*,\r\n                    ANY::sc_admin/email/*,\r\n                    ANY::sc_admin/email_template/*,\r\n                    ANY::sc_admin/language/*,\r\n                    ANY::sc_admin/currency/*,\r\n                    ANY::sc_admin/backup/*,\r\n                    ANY::sc_admin/api_connection/*,\r\n                    ANY::sc_admin/maintain/*,\r\n                    ANY::sc_admin/tax/*\r\n                ', '2020-05-22 02:25:22', NULL),
(5, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', '2020-05-22 02:25:22', NULL),
(6, 'Plugin manager', 'plugin.full', 'ANY::sc_admin/plugin/*', '2020-05-22 02:25:22', NULL),
(8, 'CMS manager', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', '2020-05-22 02:25:22', NULL),
(11, 'Discount manager', 'discount.full', 'ANY::sc_admin/shop_discount/*', '2020-05-22 02:25:22', NULL),
(14, 'Shipping status', 'shipping_status.full', 'ANY::sc_admin/shipping_status/*', '2020-05-22 02:25:22', NULL),
(15, 'Payment  status', 'payment_status.full', 'ANY::sc_admin/payment_status/*', '2020-05-22 02:25:22', NULL),
(17, 'Customer manager', 'customer.full', 'ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*', '2020-05-22 02:25:22', NULL),
(18, 'Order status', 'order_status.full', 'ANY::sc_admin/order_status/*', '2020-05-22 02:25:22', NULL),
(19, 'Product manager', 'product.full', '\r\n                ANY::sc_admin/category/*,\r\n                ANY::sc_admin/supplier/*,\r\n                ANY::sc_admin/brand/*,\r\n                ANY::sc_admin/attribute_group/*,\r\n                ANY::sc_admin/product/,\r\n                ANY::sc_admin/weight_unit/*,\r\n                ANY::sc_admin/length_unit/*\r\n                ', '2020-05-22 02:25:22', NULL),
(20, 'Order Manager', 'order.full', 'ANY::sc_admin/order/*', '2020-05-22 02:25:22', NULL),
(21, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', '2020-05-22 02:25:22', NULL),
(22, 'Template manager', 'template.full', 'ANY::sc_admin/block_content/*,ANY::sc_admin/link/*,ANY::sc_admin/template/*', '2020-05-22 02:25:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role`
--

CREATE TABLE `sc_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role`
--

INSERT INTO `sc_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-05-22 02:25:22', NULL),
(2, 'Group only View', 'view.all', '2020-05-22 02:25:22', NULL),
(3, 'Manager', 'manager', '2020-05-22 02:25:22', NULL),
(4, 'Cms manager', 'cms', '2020-05-22 02:25:22', NULL),
(5, 'Accountant', 'accountant', '2020-05-22 02:25:22', NULL),
(6, 'Marketing', 'maketing', '2020-05-22 02:25:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role_menu`
--

CREATE TABLE `sc_admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role_menu`
--

INSERT INTO `sc_admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 38, '2020-05-22 02:25:22', NULL),
(2, 38, '2020-05-22 02:25:22', NULL),
(3, 38, '2020-05-22 02:25:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role_permission`
--

CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role_permission`
--

INSERT INTO `sc_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2020-05-22 02:25:23', NULL),
(3, 2, '2020-05-22 02:25:23', NULL),
(3, 3, '2020-05-22 02:25:23', NULL),
(3, 4, '2020-05-22 02:25:23', NULL),
(3, 5, '2020-05-22 02:25:23', NULL),
(3, 8, '2020-05-22 02:25:23', NULL),
(3, 11, '2020-05-22 02:25:23', NULL),
(3, 14, '2020-05-22 02:25:23', NULL),
(3, 15, '2020-05-22 02:25:23', NULL),
(3, 17, '2020-05-22 02:25:23', NULL),
(3, 18, '2020-05-22 02:25:23', NULL),
(3, 19, '2020-05-22 02:25:23', NULL),
(3, 20, '2020-05-22 02:25:23', NULL),
(3, 21, '2020-05-22 02:25:23', NULL),
(3, 22, '2020-05-22 02:25:23', NULL),
(4, 3, '2020-05-22 02:25:23', NULL),
(4, 5, '2020-05-22 02:25:23', NULL),
(4, 8, '2020-05-22 02:25:23', NULL),
(5, 2, '2020-05-22 02:25:23', NULL),
(5, 3, '2020-05-22 02:25:23', NULL),
(5, 20, '2020-05-22 02:25:23', NULL),
(5, 21, '2020-05-22 02:25:23', NULL),
(6, 2, '2020-05-22 02:25:23', NULL),
(6, 3, '2020-05-22 02:25:23', NULL),
(6, 5, '2020-05-22 02:25:23', NULL),
(6, 8, '2020-05-22 02:25:23', NULL),
(6, 11, '2020-05-22 02:25:23', NULL),
(6, 14, '2020-05-22 02:25:23', NULL),
(6, 15, '2020-05-22 02:25:23', NULL),
(6, 17, '2020-05-22 02:25:23', NULL),
(6, 18, '2020-05-22 02:25:23', NULL),
(6, 19, '2020-05-22 02:25:23', NULL),
(6, 20, '2020-05-22 02:25:23', NULL),
(6, 21, '2020-05-22 02:25:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role_user`
--

CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role_user`
--

INSERT INTO `sc_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_store`
--

CREATE TABLE `sc_admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logofooter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text CHARACTER SET utf8 DEFAULT NULL,
  `instagram` text CHARACTER SET utf8 DEFAULT NULL,
  `youtube` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_store`
--

INSERT INTO `sc_admin_store` (`id`, `logo`, `logofooter`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `facebook`, `instagram`, `youtube`) VALUES
(1, '/data/logo/logo.png', '/data/logo/leaf.png', '0359808367', 'Support: 0359808267', 'quanghai17@gmail.com', '', '112-Tân Thịnh- TP Thái Nguyên- TN', NULL, NULL, 'fresh-mart', 'dwvoqAVWWQA', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_store_description`
--

CREATE TABLE `sc_admin_store_description` (
  `config_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_store_description`
--

INSERT INTO `sc_admin_store_description` (`config_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`) VALUES
(1, 'en', 'Demo S-cart : Free Laravel eCommerce for Business', 'Free website shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\r\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\r\n</center>'),
(1, 'vi', 'Fresh Mart', 'Dịch vụ AAP gồm sản xuất, thi công đồ gỗ nội thất, đồ gỗ ngoài trời, cho các dự án, biệt thự, căn hộ, ...', '', '<center><img src=\"/images/maintenance.png\" />\r\n<h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\r\n</center>');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_user`
--

CREATE TABLE `sc_admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$pCQphhkfgIFt2I.6nkLXgOSDZciMnUqA4D8AHU/umX5KNadoPxzK2', 'Quanghai17', 'demo-admin@s-cart.org', '/data/avatar/135184405_1151451528641097_5551952842022562142_n.jpg', 'EaJ3gqgzUJFxrj19E3Vu9p8BVKiFkedcA7SsYwNGeyQkceAgZzmG9QH0InbK', '2020-05-22 02:25:23', '2022-04-13 05:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_user_permission`
--

CREATE TABLE `sc_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_api_connection`
--

CREATE TABLE `sc_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_api_connection`
--

INSERT INTO `sc_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '5ec73817e3df1', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_cms_category`
--

CREATE TABLE `sc_cms_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_cms_category_description`
--

CREATE TABLE `sc_cms_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_cms_content`
--

CREATE TABLE `sc_cms_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_cms_content_description`
--

CREATE TABLE `sc_cms_content_description` (
  `cms_content_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_cms_image`
--

CREATE TABLE `sc_cms_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_duan`
--

CREATE TABLE `sc_duan` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_duan`
--

INSERT INTO `sc_duan` (`id`, `image`, `html`, `status`, `created_at`, `updated_at`) VALUES
(2, '/data/banner/slider-01.jpg', 'KASBDkjasdjkbsadf', 1, '2020-06-19 02:22:30', '2020-06-19 02:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_attribute_group`
--

CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_attribute_group`
--

INSERT INTO `sc_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_banner`
--

CREATE TABLE `sc_shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_banner`
--

INSERT INTO `sc_shop_banner` (`id`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
(4, '/data/banner/home2/home2-slideshow-3.jpg', NULL, NULL, NULL, 1, 0, 0, 0, '2022-04-13 03:02:10', '2022-04-13 03:19:29'),
(5, '/data/banner/home2/home2-slideshow-2.jpg', NULL, NULL, NULL, 1, 0, 0, 0, '2022-04-13 03:02:32', '2022-04-13 03:19:11'),
(6, '/data/banner/home2/home2-slideshow-1.jpg', NULL, NULL, NULL, 1, 0, 0, 0, '2022-04-13 03:03:11', '2022-04-19 02:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_block_content`
--

CREATE TABLE `sc_shop_block_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_block_content`
--

INSERT INTO `sc_shop_block_content` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\n</script>', 1, 0),
(2, 'Google Analytics', 'header', '*', 'html', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n  gtag(\'config\', \'UA-128658138-1\');\r\n</script>', 1, 0),
(3, 'Product special', 'left', 'product_list', 'view', 'product_special', 1, 1),
(4, 'Brands', 'left', 'item_list', 'view', 'brands_left', 1, 3),
(5, 'Banner home', 'banner_top', 'shop_home', 'view', 'banner_image', 1, 0),
(6, 'Categories', 'left', 'product_list,shop_cart', 'view', 'categories', 1, 4),
(7, 'Product last view', 'left', '', 'view', 'product_lastview', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_brand`
--

CREATE TABLE `sc_shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_brand`
--

INSERT INTO `sc_shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'Husq', 'husq', '/data/brand/01-181x52.png', '', 1, 0),
(2, 'Ideal', 'ideal', '/data/brand/02-181x52.png', '', 1, 0),
(3, 'Apex', 'apex', '/data/brand/03-181x52.png', '', 1, 0),
(4, 'CST', 'cst', '/data/brand/04-181x52.png', '', 1, 0),
(5, 'Klein', 'klein', '/data/brand/05-181x52.png', '', 1, 0),
(6, 'Metabo', 'metabo', '/data/brand/06-181x52.png', '', 1, 0),
(7, 'Avatar', 'avatar', '/data/brand/07-181x52.png', '', 1, 0),
(8, 'Brand KA', 'brand-ka', '/data/brand/08-181x52.png', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category`
--

CREATE TABLE `sc_shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_category`
--

INSERT INTO `sc_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(23, '/data/category/3.jpg', 'trai-cay', 0, 0, 1, 0),
(24, '/data/category/11.jpg', 'rau-cu', 0, 0, 1, 0),
(25, '/data/category/8/instagram-6.png', 'nuoc-ep', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category_description`
--

CREATE TABLE `sc_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_category_description`
--

INSERT INTO `sc_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
(23, 'vi', 'Trái Cây', 'Trái Cây', 'Trái Cây'),
(24, 'vi', 'Rau Củ', 'Rau Củ', 'Rau Củ'),
(25, 'vi', 'Nước Ép', 'Nước Ép', 'Nước Ép');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_country`
--

CREATE TABLE `sc_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_country`
--

INSERT INTO `sc_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People\'s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\'s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_currency`
--

CREATE TABLE `sc_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_currency`
--

INSERT INTO `sc_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 1, '.', 0, 0),
(2, 'VietNam Dong', 'VND', '₫', 1.00, 0, 0, '.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_discount`
--

CREATE TABLE `sc_shop_discount` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT 2,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'point' COMMENT 'point - Point; percent - %',
  `data` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT 1,
  `used` int(11) NOT NULL DEFAULT 0,
  `login` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_discount_user`
--

CREATE TABLE `sc_shop_discount_user` (
  `user_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_email_template`
--

CREATE TABLE `sc_shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_email_template`
--

INSERT INTO `sc_shop_email_template` (`id`, `name`, `group`, `text`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\r\n                    <table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\r\n                      <tbody><tr>\r\n                        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                          <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                            <tbody><tr>\r\n                              <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                                  <tbody><tr>\r\n                                    <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                                      <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\r\n                                    </td>\r\n                                  </tr>\r\n                                </tbody>\r\n                              </table>\r\n                              </td>\r\n                            </tr>\r\n                          </tbody>\r\n                        </table>\r\n                        </td>\r\n                      </tr>\r\n                    </tbody>\r\n                  </table>\r\n                    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\r\n                      {{$note_sendmail}}\r\n                    </p>\r\n                    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\r\n                    <tbody><tr>\r\n                      <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n                        <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}: <a href=\"{{$reset_link}}\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#3869d4\" target=\"_blank\">{{$reset_link}}</a></p>\r\n                          </td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table>', 1),
(2, 'Welcome new customer', 'welcome_customer', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\r\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1),
(3, 'Send form contact to admin', 'contact_to_admin', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tr>\r\n        <td>\r\n            <b>Name</b>: {{$name}}<br>\r\n            <b>Email</b>: {{$email}}<br>\r\n            <b>Phone</b>: {{$phone}}<br>\r\n        </td>\r\n    </tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Content:<br>\r\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n    <tr>\r\n        <td>{{$content}}</td>\r\n    </tr>\r\n</table>', 1),
(4, 'New order to admin', 'order_success_to_admin', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                            <td>\r\n                                <b>Order ID</b>: {{$orderID}}<br>\r\n                                <b>Customer name</b>: {{$toname}}<br>\r\n                                <b>Email</b>: {{$email}}<br>\r\n                                <b>Address</b>: {{$address}}<br>\r\n                                <b>Phone</b>: {{$phone}}<br>\r\n                                <b>Order note</b>: {{$comment}}\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                    <hr>\r\n                    <p style=\"text-align: center;\">Order detail:<br>\r\n                    ===================================<br></p>\r\n                    <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n                        {{$orderDetail}}\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n                        </tr>\r\n                    </table>', 1),
(5, 'New order to customr', 'order_success_to_customer', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                            <td>\r\n                                <b>Order ID</b>: {{$orderID}}<br>\r\n                                <b>Customer name</b>: {{$toname}}<br>\r\n                                <b>Address</b>: {{$address}}<br>\r\n                                <b>Phone</b>: {{$phone}}<br>\r\n                                <b>Order note</b>: {{$comment}}\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                    <hr>\r\n                    <p style=\"text-align: center;\">Order detail:<br>\r\n                    ===================================<br></p>\r\n                    <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n                        {{$orderDetail}}\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td colspan=\"2\"></td>\r\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n                            <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n                        </tr>\r\n                    </table>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_language`
--

CREATE TABLE `sc_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_language`
--

INSERT INTO `sc_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 0, 0, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_layout_page`
--

CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_layout_page`
--

INSERT INTO `sc_shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'shop_home', 'Home page'),
(2, 'product_list', 'Product list'),
(3, 'product_detail', 'Product detail'),
(4, 'shop_cart', 'Shop cart'),
(5, 'shop_auth', 'Account auth'),
(6, 'shop_profile', 'Account profile'),
(7, 'item_list', 'Item list'),
(8, 'news_list', 'News list'),
(9, 'news_detail', 'News detail'),
(10, 'shop_page', 'Page detail'),
(11, 'shop_contact', 'Contact page');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_layout_position`
--

CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_layout_position`
--

INSERT INTO `sc_shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'meta', 'Meta'),
(2, 'header', 'Header'),
(3, 'top', 'Top'),
(4, 'bottom', 'Bottom'),
(5, 'footer', 'Footer'),
(6, 'left', 'Column left'),
(7, 'right', 'Column right'),
(8, 'banner_top', 'Banner top');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_length`
--

CREATE TABLE `sc_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_length`
--

INSERT INTO `sc_shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_link`
--

CREATE TABLE `sc_shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_link`
--

INSERT INTO `sc_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`) VALUES
(1, 'lang::front.contact', 'route::page.detail::contact', '_self', 'menu', '', 1, 3),
(2, 'lang::front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 4),
(3, 'lang::front.my_profile', '/member/login.html', '_self', 'footer', '', 1, 5),
(4, 'lang::front.compare_page', '/compare.html', '_self', 'footer', '', 1, 4),
(5, 'lang::front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news`
--

CREATE TABLE `sc_shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news`
--

INSERT INTO `sc_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(2, '/data/content/blog-5.jpg', '5-loai-trai-cay-tot-nhat-giup-ban-tuoi-sang-va-khoe-manh', 0, 1, '2022-04-15 07:02:19', '2022-04-15 07:02:19'),
(3, '/data/content/blog-3.jpg', 'danh-sach-cac-loai-thuc-pham-giau-chat-xo-it-carb-tot-cho-suc-khoe', 0, 1, '2022-04-15 07:03:45', '2022-04-15 07:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news_description`
--

CREATE TABLE `sc_shop_news_description` (
  `shop_news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news_description`
--

INSERT INTO `sc_shop_news_description` (`shop_news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'vi', 'Khả năng chịu ẩm của tủ bếp Acrylic', 'Khả năng chịu ẩm của tủ bếp Acrylic', 'Khí hậu nồm ẩm tại Việt Nam thường khiến cho đồ nội thất trong gia đình rất dễ bị ảnh hưởng, đặc biệt là những đồ nội thất trong bếp', '<p style=\"text-align:center\"><a href=\"https://noithatminhtam.com/tin-tuc/kha-nang-chiu-am-cua-tu-bep-acrylic/\"><img alt=\"\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://anhanphu.kennatech.vn/data/file/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg\" srcset=\"https://noithatminhtam.com/wp-content/uploads/2019/06/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4.jpg 800w, https://noithatminhtam.com/wp-content/uploads/2019/06/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-768x475.jpg 768w, https://noithatminhtam.com/wp-content/uploads/2019/06/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-24x15.jpg 24w, https://noithatminhtam.com/wp-content/uploads/2019/06/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-36x22.jpg 36w, https://noithatminhtam.com/wp-content/uploads/2019/06/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-48x30.jpg 48w, https://noithatminhtam.com/wp-content/uploads/2019/06/tu-bep-acrylic-pma-thung-mdf-chong-am-minh-long-4-600x371.jpg 600w\" width=\"1200\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&iacute; hậu nồm ẩm tại Việt Nam thường khiến cho đồ nội thất trong gia đ&igrave;nh rất dễ bị ảnh hưởng, đặc biệt l&agrave; những đồ nội thất trong bếp, v&igrave; vậy khi chọn mua tủ bếp tốt nhất bạn n&ecirc;n chọn những d&ograve;ng tủ bếp c&oacute; thể chịu đựng được thời tiết nồm ẩm như&nbsp;tủ bếp Acrylic&nbsp;để đảm bảo độ bền tối ưu nhất của sản phẩm.</p>\r\n\r\n<h2>NHỮNG ĐẶC ĐIỂM CỦA TỦ BẾP GỖ C&Ocirc;NG NGHIỆP</h2>\r\n\r\n<p>Tr&ecirc;n thực tế những&nbsp;<strong>tủ bếp gỗ c&ocirc;ng nghiệp</strong>&nbsp;được d&ugrave;ng l&agrave;m tủ bếp ch&iacute;nh l&agrave; gỗ MDF v&agrave; gỗ MFC, đ&acirc;y ch&iacute;nh l&agrave; loại gỗ v&aacute;n &eacute;p tương đối phổ biến được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ cao, được nhập khẩu v&agrave;o Việt Nam để thiết kế tủ bếp</p>\r\n\r\n<p>C&aacute;c loại gỗ c&ocirc;ng nghiệp l&agrave;m tủ bếp n&agrave;y đa phần đều l&agrave; vụn gỗ được trộn lẫn với keo v&agrave; được &eacute;p n&eacute;n bằng m&aacute;y dưới lực n&eacute;n cao, tạo th&agrave;nh từng tấm gỗ chắc chắn.</p>\r\n\r\n<p>Trong đ&oacute; c&aacute;c d&ograve;ng gỗ MDF c&oacute; bề mặt mịn hơn nhiều bởi dăm gỗ nhỏ mịn hơn hẳn, những loại gỗ n&agrave;y c&oacute; độ chắc chắn tương đối lớn, khi cầm l&ecirc;n cũng nặng tay v&igrave; vậy được d&ugrave;ng nhiều l&agrave;m th&ugrave;ng tủ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra c&aacute;c d&ograve;ng gỗ MFC c&oacute; bề mặt tương đối gồ gề, kh&ocirc;ng qu&aacute; nhẵn nhụi bởi d&ograve;ng sản phẩm n&agrave;y c&oacute; dăm gỗ to, v&igrave; vậy c&ograve;n được gọi l&agrave; gỗ v&aacute;n dăm, đ&acirc;y cũng l&agrave; loại gỗ c&ocirc;ng nghiệp được &eacute;p chặt l&agrave;m n&ecirc;n, nhưng nhẹ hơn hẳn so với gỗ MDF v&igrave; thế cũng được c&ugrave;ng để l&agrave;m c&aacute;nh tủ</p>\r\n\r\n<p>Hai loại gỗ n&agrave;y đều c&oacute; gỗ l&otilde;i xanh c&oacute; ưu điểm l&agrave; chịu được ẩm cao, đảm bảo giữ nguy&ecirc;n được độ bền chắc của sản phẩm, từ đ&oacute; gi&uacute;p đảm bảo độ bền của tủ bếp trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<h3>T&igrave;m hiểu t&iacute;nh thẩm mỹ của tủ bếp Acrylic l&agrave;m từ gỗ c&ocirc;ng nghiệp</h3>\r\n\r\n<p><strong>Tủ bếp Acrylic</strong>&nbsp;l&agrave;m từ gỗ c&ocirc;ng nghiệp c&oacute; t&iacute;nh thẩm mỹ cực cao, vượt trội hơn nhiều so với c&aacute;c d&ograve;ng tủ bếp kh&aacute;c.</p>\r\n\r\n<p>Hầu hết c&aacute;c d&ograve;ng sản phẩm n&agrave;y đều được lựa chọn d&ugrave;ng bề mặt Laminate hay bề mặt Acrylic để l&agrave;m bề mặt tủ bếp, hai loại vật liệu n&agrave;y đều c&oacute; m&agrave;u sắc cũng như kiểu v&acirc;n tương đối đa dạng, từ đ&oacute; mang lại sự lựa chọn nhiều hơn hẳn, ho&agrave;n to&agrave;n kh&ocirc;ng đơn điệu như c&aacute;c d&ograve;ng tủ bếp gỗ tự nhi&ecirc;n b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>Đặc biệt trong trường hợp căn bếp của gia đ&igrave;nh bạn c&oacute; độ ẩm thấp cao th&igrave; việc sử dụng&nbsp;<em>tủ bếp gỗ c&ocirc;ng nghiệp</em>&nbsp;l&agrave; sự lựa chọn th&ocirc;ng minh, bởi những d&ograve;ng sản phẩm n&agrave;y sẽ gi&uacute;p ph&ograve;ng chống nồm ẩm v&agrave; kh&ocirc;ng kh&iacute; ẩm ướt trong căn bếp, đảm bảo độ bền sản phẩm tuyệt đối hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại gỗ n&agrave;y cũng c&oacute; khả năng chịu đựng nhiệt độ kh&iacute; hậu nhiệt đới n&oacute;ng ẩm, v&igrave; vậy khi d&ugrave;ng tủ bếp l&agrave; th&iacute;ch hợp nhất.</p>\r\n\r\n<p>Ngo&agrave;i ra đối với khoang chậu rửa, bởi v&igrave; việc chịu nước cao n&ecirc;n d&ograve;ng sản phẩm n&agrave;y cũng c&oacute; thể d&ugrave;ng để l&agrave;m khoang chậu rửa được nh&eacute;.</p>\r\n\r\n<p>Để đảm bảo chọn mua tủ bếp chất lượng nhất cho gia đ&igrave;nh, kh&aacute;ch h&agrave;ng cũng c&oacute; thể trực tiếp li&ecirc;n hệ tới ch&uacute;ng t&ocirc;i để nhận được sự tư vấn kịp thời nhất, gi&uacute;p kh&aacute;ch h&agrave;ng chọn được d&ograve;ng tủ bếp ưng &yacute; v&agrave; ph&ugrave; hợp với nội thất căn bếp của gia đ&igrave;nh bạn.</p>'),
(2, 'vi', '5 LOẠI TRÁI CÂY TỐT NHẤT GIÚP BẠN TƯƠI SÁNG VÀ KHỎE MẠNH', '5 LOẠI TRÁI CÂY TỐT NHẤT GIÚP BẠN TƯƠI SÁNG VÀ KHỎE MẠNH', 'Tình trạng da của chúng ta và độ tuổi của nó bị ảnh hưởng bởi một số yếu tố', '<p>T&igrave;nh trạng da của ch&uacute;ng ta v&agrave; độ tuổi của n&oacute; bị ảnh hưởng bởi một số yếu tố, trong đ&oacute; chế độ ăn uống v&agrave; lối sống đ&oacute;ng một vai tr&ograve; quan trọng. Tiếp x&uacute;c l&acirc;u với &aacute;nh nắng mặt trời, h&uacute;t thuốc v&agrave; chế độ ăn nhiều thực phẩm chế biến sẵn v&agrave; c&oacute; đường, cũng như c&aacute;c chất khử nước như caffein v&agrave; rượu, theo thời gian sẽ g&acirc;y hại.</p>\r\n\r\n<p>Khi ch&uacute;ng ta gi&agrave; đi, l&agrave;n da của ch&uacute;ng ta trở n&ecirc;n mỏng hơn, k&eacute;m đ&agrave;n hồi hơn v&agrave; dễ bị nếp nhăn nhưng bằng c&aacute;ch bổ sung c&aacute;c loại thực phẩm ph&ugrave; hợp trong chế độ ăn uống của bạn, bạn thực sự c&oacute; thể nu&ocirc;i dưỡng từ b&ecirc;n trong.</p>\r\n\r\n<p>Theo&nbsp;<em>Hindustan Times,</em>&nbsp;dưới đ&acirc;y l&agrave; những loại tr&aacute;i c&acirc;y c&oacute; thể gi&uacute;p th&uacute;c đẩy sức khỏe l&agrave;n da của bạn.</p>\r\n\r\n<p><strong>Kiwi</strong></p>\r\n\r\n<p>Kiwi chứa nhiều chất dinh dưỡng như vitamin C, sắt, chất xơ v&agrave; chất chống oxy h&oacute;a. Ch&uacute;ng cũng chứa c&aacute;c kho&aacute;ng chất như magi&ecirc;, kali, canxi, phốt pho, đồng, kẽm v&agrave; sắt. Tất cả những chất dinh dưỡng n&agrave;y trong kiwi th&uacute;c đẩy sức khỏe l&agrave;n da v&agrave; ngăn ngừa qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a sớm của da.</p>\r\n\r\n<p><a data-desc=\"6 loại trái cây giúp da sáng khỏe, bổ sung vitamin và protein\" data-index=\"0\" href=\"https://photo-cms-plo.zadn.vn/w850/Uploaded/2022/tmuihk/2022_02_22/che-do-an-ngan-ngua-ung-thu2_lfal.jpg\"><img alt=\"6 loại trái cây giúp da sáng khỏe, bổ sung vitamin và protein ảnh 1\" cms-photo-caption=\"\" data-photo-original-src=\"\" data-src=\"https://photo-cms-plo.zadn.vn/w850/Uploaded/2022/tmuihk/2022_02_22/che-do-an-ngan-ngua-ung-thu2_lfal.jpg\" src=\"https://photo-cms-plo.zadn.vn/w850/Uploaded/2022/tmuihk/2022_02_22/che-do-an-ngan-ngua-ung-thu2_lfal.jpg\" /></a><br />\r\n<em>Kiwi chứa nhiều carotenoid, lutein, polyphenol, vitamin C,... c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a. Ảnh: NHẬT LINH</em></p>\r\n\r\n<p><strong>Cam</strong></p>\r\n\r\n<p>Cam c&oacute; vị chua v&agrave; ngọt v&agrave; chứa nhiều vitamin C, chất xơ, kali, folate v&agrave; thiamine. H&agrave;m lượng vitamin C gi&uacute;p tăng cường hệ thống miễn dịch gi&uacute;p bạn chống lại nhiễm tr&ugrave;ng v&agrave; tăng cường sức khỏe l&agrave;n da. Ăn cam được cho l&agrave; c&oacute; thể giảm nguy cơ ung thư, bệnh thận v&agrave; thiếu m&aacute;u.</p>\r\n\r\n<p><strong>D&acirc;u t&acirc;y</strong></p>\r\n\r\n<p>D&acirc;u t&acirc;y chứa nhiều folate, mangan, kali, vitamin C v&agrave; chất chống oxy h&oacute;a. C&aacute;c chất chống oxy h&oacute;a c&oacute; trong ch&uacute;ng ngăn ngừa một số bệnh m&atilde;n t&iacute;nh về da. D&acirc;u t&acirc;y rất tốt cho người bị tiểu đường. B&ecirc;n cạnh đ&oacute;, mức độ chống oxy h&oacute;a cao trong ch&uacute;ng l&agrave; một sự th&uacute;c đẩy cho l&agrave;n da.</p>\r\n\r\n<p><strong>Ổi</strong></p>\r\n\r\n<p>Ổi c&oacute; th&agrave;nh phần dinh dưỡng đ&aacute;ng kinh ngạc bao gồm vitamin A, folate, kali, đồng v&agrave; chất xơ. Ăn ổi c&oacute; thể gi&uacute;p ngăn ngừa tổn thương tế b&agrave;o, thay đổi tế b&agrave;o v&agrave; vi&ecirc;m nhiễm. Pectin c&oacute; trong ch&uacute;ng th&uacute;c đẩy ti&ecirc;u h&oacute;a v&agrave; th&uacute;c đẩy đường ruột khỏe mạnh.</p>\r\n\r\n<p><strong>Nho</strong></p>\r\n\r\n<p>Nho rất gi&agrave;u chất xơ n&ecirc;n rất tốt cho hệ ti&ecirc;u h&oacute;a của bạn. Một hệ ti&ecirc;u h&oacute;a khỏe mạnh đồng nghĩa với một l&agrave;n da khỏe mạnh. C&aacute;c chất phytochemical tự nhi&ecirc;n trong ch&uacute;ng gi&uacute;p giảm vi&ecirc;m da v&agrave; cải thiện l&agrave;n da tươi s&aacute;ng.</p>\r\n\r\n<p><strong>T&aacute;o</strong></p>\r\n\r\n<p>T&aacute;o rất gi&agrave;u chất xơ v&agrave; nhiều vitamin, kho&aacute;ng chất. Ch&uacute;ng chứa pectin, gi&uacute;p tăng cường sức khỏe đường ruột.</p>\r\n\r\n<p>Vitamin C, chất chống oxy h&oacute;a, vitamin A c&oacute; trong ch&uacute;ng gi&uacute;p tăng cường khả năng miễn dịch v&agrave; l&agrave;m cho l&agrave;n da s&aacute;ng, ngo&agrave;i ra c&ograve;n gi&uacute;p chống lại bệnh tật, theo&nbsp;<em>Hindustan Times.</em></p>\r\n\r\n<p>NHẬT LINH</p>'),
(3, 'vi', 'Danh sách các loại thực phẩm giàu chất xơ, ít carb tốt cho sức khỏe', 'Danh sách các loại thực phẩm giàu chất xơ, ít carb tốt cho sức khỏe', 'Theo Healthline, chế độ ăn ít carb có liên quan đến một số lợi ích sức khỏe ấn tượng.', '<p>Theo&nbsp;<em>Healthline</em>, chế độ ăn &iacute;t carb c&oacute; li&ecirc;n quan đến một số lợi &iacute;ch sức khỏe ấn tượng.</p>\r\n\r\n<p>Nghi&ecirc;n cứu đ&atilde; chỉ ra rằng, ch&uacute;ng đặc biệt hiệu quả trong việc giảm đ&oacute;i v&agrave; hỗ trợ giảm c&acirc;n. B&ecirc;n cạnh đ&oacute;, c&ograve;n li&ecirc;n quan đến việc giảm huyết &aacute;p v&agrave; mức cholesterol LDL (xấu), cũng như tăng cholesterol HDL (tốt).</p>\r\n\r\n<p>Hơn nữa, chế độ ăn &iacute;t carb đ&atilde; được ph&aacute;t hiện để cải thiện việc kiểm so&aacute;t lượng đường trong m&aacute;u ở những người mắc bệnh tiểu đường loại 2.</p>\r\n\r\n<p>Nếu bạn theo một chế độ ăn &iacute;t carb v&agrave; lo lắng về lượng chất xơ của m&igrave;nh, th&igrave; dưới đ&acirc;y l&agrave; một số loại thực phẩm l&agrave;nh mạnh vừa &iacute;t carbs, vừa gi&agrave;u chất xơ.</p>\r\n\r\n<p><strong>B&ocirc;ng cải xanh</strong></p>\r\n\r\n<p>B&ocirc;ng cải xanh l&agrave; một loại rau họ cải phổ biến, chứa nhiều chất dinh dưỡng quan trọng.</p>\r\n\r\n<p><a data-desc=\"Danh sách các loại thực phẩm giàu chất xơ, ít carb tốt cho sức khỏe\" data-index=\"0\" href=\"https://photo-cms-plo.zadn.vn/w850/Uploaded/2022/tmuihk/2022_04_05/bong-cai-xanh_hnkb.jpg\"><img alt=\"Danh sách các loại thực phẩm giàu chất xơ, ít carb tốt cho sức khỏe ảnh 1\" cms-photo-caption=\"\" data-photo-original-src=\"\" data-src=\"https://photo-cms-plo.zadn.vn/w850/Uploaded/2022/tmuihk/2022_04_05/bong-cai-xanh_hnkb.jpg\" src=\"https://photo-cms-plo.zadn.vn/w850/Uploaded/2022/tmuihk/2022_04_05/bong-cai-xanh_hnkb.jpg\" /></a><br />\r\n<em>B&ocirc;ng cải xanh l&agrave; một loại rau rất gi&agrave;u dinh dưỡng c&oacute; đầy đủ vitamin, kho&aacute;ng chất, chất xơ v&agrave; chất chống oxy h&oacute;a. Ảnh: NGUY&Ecirc;N V&Otilde;</em></p>\r\n\r\n<p>Ngo&agrave;i việc &iacute;t calo, n&oacute; c&ograve;n gi&agrave;u chất xơ v&agrave; một số vitamin v&agrave; kho&aacute;ng chất thiết yếu, bao gồm folate, kali v&agrave; vitamin C v&agrave; K.</p>\r\n\r\n<p>B&ocirc;ng cải xanh cũng c&oacute; nhiều protein hơn nhiều loại rau kh&aacute;c.</p>\r\n\r\n<p>Mặc d&ugrave; n&oacute; c&oacute; thể được thưởng thức khi nấu ch&iacute;n hoặc sống, nhưng nghi&ecirc;n cứu cho thấy rằng việc hấp n&oacute; mang lại những lợi &iacute;ch sức khỏe lớn nhất.</p>\r\n\r\n<p><strong>Măng t&acirc;y</strong></p>\r\n\r\n<p>Măng t&acirc;y chứa &iacute;t calo nhưng lại gi&agrave;u vitamin K, cung cấp 46% DV trong 1 cốc (134 gram). C&ugrave;ng một khẩu phần cũng chứa 17% DV cho folate, chất rất quan trọng trong thời kỳ mang thai v&agrave; gi&uacute;p ph&aacute;t triển tế b&agrave;o v&agrave; h&igrave;nh th&agrave;nh DNA, theo&nbsp;<em>FoodData Central.</em></p>\r\n\r\n<p><strong>C&agrave; t&iacute;m</strong></p>\r\n\r\n<p>C&agrave; t&iacute;m l&agrave; một nguồn cung cấp chất xơ dồi d&agrave;o v&agrave; một số vitamin v&agrave; kho&aacute;ng chất, bao gồm mangan, folate v&agrave; kali.</p>\r\n\r\n<p>Một khẩu phần 82 gram c&agrave; t&iacute;m cung cấp 3 gram chất xơ v&agrave; 2 gram tinh bột.</p>\r\n\r\n<p><strong>Hạt chia</strong></p>\r\n\r\n<p>Ngo&agrave;i việc chứa nhiều chất xơ, protein v&agrave; một số vitamin, kho&aacute;ng chất, hạt chia l&agrave; một trong những nguồn thực vật nổi tiếng nhất về axit b&eacute;o omega-3.</p>\r\n\r\n<p>Theo&nbsp;<em>FoodData Central</em>, hai muỗng canh (30 gram) hạt chia cung cấp 11 gram chất xơ v&agrave; 2 gram tinh bột.</p>\r\n\r\n<p><strong>Quả bơ</strong></p>\r\n\r\n<p>Ngo&agrave;i việc gi&agrave;u chất b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a đơn, bơ l&agrave; một nguồn cung cấp chất xơ, folate, kali, vitamin K v&agrave; C.</p>\r\n\r\n<p>Theo&nbsp;<em>FoodData Central,</em>&nbsp;một quả bơ nhỏ (136 gram) cung cấp 9 gam chất xơ v&agrave; 3 gram carbs thuần.</p>\r\n\r\n<p>NHẬT LINH</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order`
--

CREATE TABLE `sc_shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order`
--

INSERT INTO `sc_shop_order` (`id`, `user_id`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `address1`, `address2`, `address`, `province`, `district`, `ward`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `ip`, `transaction`, `created_at`, `updated_at`) VALUES
(8, 6, 80000, 0, 0, 1, 1, 1, 0, 80000, 'VND', 1.00, 0, 80000, 'Quang Hải', 'Nguyễn', '', '', 'Số 2 đường Minh Cầu', 'Thái Nguyên', 'Thành phố Thái Nguyên', 'Phường Hoàng Văn Thụ', 'VN', '', '', '03598082673', 'admin1@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '::1', NULL, '2022-04-14 03:41:14', '2022-04-14 03:41:14'),
(9, 6, 193000, 0, 0, 1, 1, 1, 0, 193000, 'VND', 1.00, 0, 193000, 'Quang Hải', 'Nguyễn', '', '', 'Số 2 đường Minh Cầu', 'Thái Nguyên', 'Thành phố Thái Nguyên', 'Phường Hoàng Văn Thụ', 'VN', '', '', '03598082673', 'admin1@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '::1', NULL, '2022-04-14 03:54:49', '2022-04-14 03:54:49'),
(10, 0, 175000, 0, 0, 1, 1, 1, 0, 175000, 'VND', 1.00, 0, 175000, 'Quang Hải', 'Nguyễn', '', '', '112', 'Lai Châu', 'Thành phố Lai Châu', 'Phường Quyết Thắng', 'VN', '', '', '0984559557', 'admin@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '::1', NULL, '2022-04-14 08:35:31', '2022-04-14 08:35:31'),
(11, 6, 35000, 0, 0, 1, 1, 1, 0, 35000, 'VND', 1.00, 0, 35000, 'Quang Hải', 'Nguyễn', '', '', 'Số 2 đường Minh Cầu', 'Bắc Ninh', 'Thành phố Bắc Ninh', 'Phường Kinh Bắc', 'VN', '', '', '03598082673', 'admin1@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-15 04:24:57', '2022-04-15 04:24:57'),
(12, 6, 240000, 0, 0, 1, 1, 1, 0, 240000, 'VND', 1.00, 0, 240000, 'Quang Hải', 'Nguyễn', '', '', 'Số 2 đường Minh Cầu', 'Hồ Chí Minh', 'Quận 12', 'Phường Thạnh Lộc', 'VN', '', '', '03598082673', 'admin1@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-15 07:26:04', '2022-04-15 07:26:04'),
(13, 8, 160000, 0, 0, 1, 1, 1, 0, 160000, 'VND', 1.00, 0, 160000, 'Quang Hải', 'Nguyễn', '', '', 'Số 2 đường Minh Cầu', 'Điện Biên', 'Huyện Mường Ảng', 'Xã Ngối Cáy', 'VN', '', '', '03598082673', 'admin1@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-15 07:34:15', '2022-04-15 07:34:15'),
(14, 8, 169000, 0, 0, 1, 1, 1, 7900, 176900, 'VND', 1.00, 0, 176900, 'Quang Hải', 'Nguyễn', '', '', 'Số 2 đường Minh Cầu', 'Bắc Giang', 'Huyện Yên Thế', 'Xã Canh Nậu', 'VN', '', '', '03598082673', 'admin1@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-19 02:40:50', '2022-04-19 02:40:50'),
(15, 8, 210000, 0, 0, 1, 1, 1, 0, 210000, 'VND', 1.00, 0, 210000, 'Quang Hải', 'Nguyễn', '', '', 'My Home', 'Bắc Giang', 'Huyện Lạng Giang', 'Xã Mỹ Hà', 'VN', '', '', '03598082673', 'admin1@admin.com', 'Hello', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-20 00:59:52', '2022-04-20 00:59:52'),
(16, 8, 80000, 0, 0, 1, 1, 1, 6500, 86500, 'VND', 1.00, 0, 86500, 'Quang Hải', 'Nguyễn', '', '', 'My Home', 'Bắc Giang', 'Huyện Lạng Giang', 'Xã Mỹ Hà', 'VN', '', '', '03598082673', 'admin1@admin.com', 'Hello', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-20 01:07:46', '2022-04-20 01:07:46'),
(17, 0, 35000, 0, 0, 1, 1, 1, 0, 35000, 'VND', 1.00, 0, 35000, 'Quang Hải', 'Nguyễn', '', '', '112', 'Thái Nguyên', 'Thành phố Thái Nguyên', 'Phường Trưng Vương', 'VN', '', '', '0984559557', 'admin@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-20 04:12:31', '2022-04-20 04:12:31'),
(18, 8, 40000, 0, 0, 1, 1, 1, 3000, 43000, 'VND', 1.00, 0, 43000, 'Quang Hải', 'Nguyễn', '', '', '112', 'Quảng Trị', 'Thành phố Đông Hà', 'Phường Đông Giang', 'VN', '', '', '03598082673', 'admin1@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '::1', NULL, '2022-04-20 07:08:52', '2022-04-20 07:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_detail`
--

CREATE TABLE `sc_shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_detail`
--

INSERT INTO `sc_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(10, 8, 24, 'Táo Envy', 80000, 1, 80000, 0, 'T01', 'VND', 1.00, '[]', '2022-04-14 03:41:14', '2022-04-14 03:41:14'),
(11, 9, 24, 'Táo Envy', 80000, 1, 80000, 0, 'T01', 'VND', 1.00, '[]', '2022-04-14 03:54:49', '2022-04-14 03:54:49'),
(12, 9, 25, 'Cam Ham Lin', 15000, 1, 15000, 0, 'C01', 'VND', 1.00, '[]', '2022-04-14 03:54:49', '2022-04-14 03:54:49'),
(13, 9, 28, 'Dâu Tây', 78000, 1, 78000, 0, 'D01', 'VND', 1.00, '[]', '2022-04-14 03:54:49', '2022-04-14 03:54:49'),
(14, 9, 27, 'Chuối Tây', 20000, 1, 20000, 0, 'C02', 'VND', 1.00, '[]', '2022-04-14 03:54:49', '2022-04-14 03:54:49'),
(15, 10, 24, 'Táo Envy', 80000, 2, 160000, 0, 'T01', 'VND', 1.00, '[]', '2022-04-14 08:35:31', '2022-04-14 08:35:31'),
(16, 10, 25, 'Cam Ham Lin', 15000, 1, 15000, 0, 'C01', 'VND', 1.00, '[]', '2022-04-14 08:35:31', '2022-04-14 08:35:31'),
(17, 11, 26, 'Nho Mỹ', 35000, 1, 35000, 0, 'N01', 'VND', 1.00, '[]', '2022-04-15 04:24:57', '2022-04-15 04:24:57'),
(18, 12, 24, 'Táo Envy', 80000, 3, 240000, 0, 'T01', 'VND', 1.00, '[]', '2022-04-15 07:26:04', '2022-04-15 07:26:04'),
(19, 13, 27, 'Chuối Tây', 20000, 1, 20000, 0, 'C02', 'VND', 1.00, '[]', '2022-04-15 07:34:15', '2022-04-15 07:34:15'),
(20, 13, 26, 'Nho Mỹ', 35000, 4, 140000, 0, 'N01', 'VND', 1.00, '[]', '2022-04-15 07:34:15', '2022-04-15 07:34:15'),
(21, 14, 25, 'Cam Ham Lin', 15000, 1, 15000, 0, 'C01', 'VND', 1.00, '[]', '2022-04-19 02:40:50', '2022-04-19 02:40:50'),
(22, 14, 27, 'Chuối Tây', 20000, 2, 40000, 0, 'C02', 'VND', 1.00, '[]', '2022-04-19 02:40:50', '2022-04-19 02:40:50'),
(23, 14, 26, 'Nho Mỹ', 35000, 1, 35000, 0, 'N01', 'VND', 1.00, '[]', '2022-04-19 02:40:50', '2022-04-19 02:40:50'),
(24, 14, 35, 'Nước Ép Cam', 30000, 1, 30000, 3000, 'NC01', 'VND', 1.00, '[]', '2022-04-19 02:40:50', '2022-04-19 02:40:50'),
(25, 14, 36, 'Nước Ép Cà Chua', 49000, 1, 49000, 4900, 'NC02', 'VND', 1.00, '[]', '2022-04-19 02:40:50', '2022-04-19 02:40:50'),
(26, 15, 26, 'Nho Mỹ', 35000, 6, 210000, 0, 'N01', 'VND', 1.00, '[]', '2022-04-20 00:59:52', '2022-04-20 00:59:52'),
(27, 16, 25, 'Cam Ham Lin', 15000, 1, 15000, 0, 'C01', 'VND', 1.00, '[]', '2022-04-20 01:07:46', '2022-04-20 01:07:46'),
(28, 16, 37, 'Nước Ép Dâu Tây', 65000, 1, 65000, 6500, 'NC03', 'VND', 1.00, '[]', '2022-04-20 01:07:46', '2022-04-20 01:07:46'),
(29, 17, 26, 'Nho Mỹ', 35000, 1, 35000, 0, 'N01', 'VND', 1.00, '[]', '2022-04-20 04:12:31', '2022-04-20 04:12:31'),
(30, 18, 35, 'Nước Ép Cam', 30000, 1, 30000, 3000, 'NC01', 'VND', 1.00, '[]', '2022-04-20 07:08:52', '2022-04-20 07:08:52'),
(31, 18, 33, 'Bánh Mì', 5000, 2, 10000, 0, 'B04', 'VND', 1.00, '[]', '2022-04-20 07:08:52', '2022-04-20 07:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_history`
--

CREATE TABLE `sc_shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_history`
--

INSERT INTO `sc_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `user_id`, `order_status_id`, `add_date`) VALUES
(8, 8, 'New order', 0, 6, 1, '2022-04-14 10:41:14'),
(9, 9, 'New order', 0, 6, 1, '2022-04-14 10:54:49'),
(10, 10, 'New order', 0, 0, 1, '2022-04-14 15:35:31'),
(11, 11, 'New order', 0, 6, 1, '2022-04-15 11:24:57'),
(12, 12, 'New order', 0, 6, 1, '2022-04-15 14:26:04'),
(13, 13, 'New order', 0, 8, 1, '2022-04-15 14:34:15'),
(14, 14, 'New order', 0, 8, 1, '2022-04-19 09:40:50'),
(15, 15, 'New order', 0, 8, 1, '2022-04-20 07:59:52'),
(16, 16, 'New order', 0, 8, 1, '2022-04-20 08:07:46'),
(17, 17, 'New order', 0, 0, 1, '2022-04-20 11:12:31'),
(18, 18, 'New order', 0, 8, 1, '2022-04-20 14:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_status`
--

CREATE TABLE `sc_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_status`
--

INSERT INTO `sc_shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_total`
--

CREATE TABLE `sc_shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_total`
--

INSERT INTO `sc_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(42, 8, 'Tiền hàng', 'subtotal', 80000, '80.000₫', 1, '2022-04-14 03:41:14', NULL),
(43, 8, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-14 03:41:14', NULL),
(44, 8, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-14 03:41:14', NULL),
(45, 8, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-14 03:41:14', NULL),
(46, 8, 'Tổng tiền', 'total', 80000, '80.000₫', 100, '2022-04-14 03:41:14', NULL),
(47, 8, 'Đã nhận', 'received', 0, '0', 200, '2022-04-14 03:41:14', NULL),
(48, 9, 'Tiền hàng', 'subtotal', 193000, '193.000₫', 1, '2022-04-14 03:54:49', NULL),
(49, 9, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-14 03:54:49', NULL),
(50, 9, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-14 03:54:49', NULL),
(51, 9, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-14 03:54:49', NULL),
(52, 9, 'Tổng tiền', 'total', 193000, '193.000₫', 100, '2022-04-14 03:54:49', NULL),
(53, 9, 'Đã nhận', 'received', 0, '0', 200, '2022-04-14 03:54:49', NULL),
(54, 10, 'Tiền hàng', 'subtotal', 175000, '175.000₫', 1, '2022-04-14 08:35:31', NULL),
(55, 10, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-14 08:35:31', NULL),
(56, 10, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-14 08:35:31', NULL),
(57, 10, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-14 08:35:31', NULL),
(58, 10, 'Tổng tiền', 'total', 175000, '175.000₫', 100, '2022-04-14 08:35:31', NULL),
(59, 10, 'Đã nhận', 'received', 0, '0', 200, '2022-04-14 08:35:31', NULL),
(60, 11, 'Tiền hàng', 'subtotal', 35000, '35.000₫', 1, '2022-04-15 04:24:57', NULL),
(61, 11, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-15 04:24:57', NULL),
(62, 11, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-15 04:24:57', NULL),
(63, 11, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-15 04:24:57', NULL),
(64, 11, 'Tổng tiền', 'total', 35000, '35.000₫', 100, '2022-04-15 04:24:57', NULL),
(65, 11, 'Đã nhận', 'received', 0, '0', 200, '2022-04-15 04:24:57', NULL),
(66, 12, 'Tiền hàng', 'subtotal', 240000, '240.000₫', 1, '2022-04-15 07:26:04', NULL),
(67, 12, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-15 07:26:04', NULL),
(68, 12, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-15 07:26:04', NULL),
(69, 12, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-15 07:26:04', NULL),
(70, 12, 'Tổng tiền', 'total', 240000, '240.000₫', 100, '2022-04-15 07:26:04', NULL),
(71, 12, 'Đã nhận', 'received', 0, '0', 200, '2022-04-15 07:26:04', NULL),
(72, 13, 'Tiền hàng', 'subtotal', 160000, '160.000₫', 1, '2022-04-15 07:34:15', NULL),
(73, 13, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-15 07:34:15', NULL),
(74, 13, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-15 07:34:15', NULL),
(75, 13, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-15 07:34:15', NULL),
(76, 13, 'Tổng tiền', 'total', 160000, '160.000₫', 100, '2022-04-15 07:34:15', NULL),
(77, 13, 'Đã nhận', 'received', 0, '0', 200, '2022-04-15 07:34:15', NULL),
(78, 14, 'Tiền hàng', 'subtotal', 169000, '169.000₫', 1, '2022-04-19 02:40:50', NULL),
(79, 14, 'Thuế', 'tax', 7900, '7.900₫', 2, '2022-04-19 02:40:50', NULL),
(80, 14, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-19 02:40:50', NULL),
(81, 14, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-19 02:40:50', NULL),
(82, 14, 'Tổng tiền', 'total', 176900, '176.900₫', 100, '2022-04-19 02:40:50', NULL),
(83, 14, 'Đã nhận', 'received', 0, '0', 200, '2022-04-19 02:40:50', NULL),
(84, 15, 'Tiền hàng', 'subtotal', 210000, '210.000₫', 1, '2022-04-20 00:59:52', NULL),
(85, 15, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-20 00:59:52', NULL),
(86, 15, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-20 00:59:52', NULL),
(87, 15, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-20 00:59:52', NULL),
(88, 15, 'Tổng tiền', 'total', 210000, '210.000₫', 100, '2022-04-20 00:59:52', NULL),
(89, 15, 'Đã nhận', 'received', 0, '0', 200, '2022-04-20 00:59:52', NULL),
(90, 16, 'Tiền hàng', 'subtotal', 80000, '80.000₫', 1, '2022-04-20 01:07:46', NULL),
(91, 16, 'Thuế', 'tax', 6500, '6.500₫', 2, '2022-04-20 01:07:46', NULL),
(92, 16, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-20 01:07:46', NULL),
(93, 16, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-20 01:07:46', NULL),
(94, 16, 'Tổng tiền', 'total', 86500, '86.500₫', 100, '2022-04-20 01:07:46', NULL),
(95, 16, 'Đã nhận', 'received', 0, '0', 200, '2022-04-20 01:07:46', NULL),
(96, 17, 'Tiền hàng', 'subtotal', 35000, '35.000₫', 1, '2022-04-20 04:12:31', NULL),
(97, 17, 'Thuế', 'tax', 0, '0₫', 2, '2022-04-20 04:12:31', NULL),
(98, 17, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-20 04:12:31', NULL),
(99, 17, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-20 04:12:31', NULL),
(100, 17, 'Tổng tiền', 'total', 35000, '35.000₫', 100, '2022-04-20 04:12:31', NULL),
(101, 17, 'Đã nhận', 'received', 0, '0', 200, '2022-04-20 04:12:31', NULL),
(102, 18, 'Tiền hàng', 'subtotal', 40000, '40.000₫', 1, '2022-04-20 07:08:52', NULL),
(103, 18, 'Thuế', 'tax', 3000, '3.000₫', 2, '2022-04-20 07:08:52', NULL),
(104, 18, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-04-20 07:08:52', NULL),
(105, 18, 'Giảm giá', 'discount', 0, '0', 20, '2022-04-20 07:08:52', NULL),
(106, 18, 'Tổng tiền', 'total', 43000, '43.000₫', 100, '2022-04-20 07:08:52', NULL),
(107, 18, 'Đã nhận', 'received', 0, '0', 200, '2022-04-20 07:08:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page`
--

CREATE TABLE `sc_shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page`
--

INSERT INTO `sc_shop_page` (`id`, `image`, `alias`, `status`) VALUES
(1, NULL, 'about', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page_description`
--

CREATE TABLE `sc_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page_description`
--

INSERT INTO `sc_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'vi', 'Giới thiệu', NULL, NULL, '<p>Ch&uacute;ng t&ocirc;i được x&acirc;y dựng dựa tr&ecirc;n t&igrave;nh y&ecirc;u, đam m&ecirc; của t&ocirc;i đối với nghề mộc v&agrave; khao kh&aacute;t mang những sản phẩm nội thất đẹp của m&igrave;nh đến với kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u.</p>\r\n\r\n<p>Cả 1 qu&aacute; tr&igrave;nh từ 1 người thợ phụ rồi được l&agrave;m thợ mộc ch&iacute;nh, tự tạo ra cho m&igrave;nh 1 ph&acirc;n xưởng nhỏ v&agrave; hiện tại ch&uacute;ng t&ocirc;i đ&atilde; l&agrave; 1 trong những c&ocirc;ng ty c&oacute; dịch vụ thiết kế v&agrave; thi c&ocirc;ng nội thất uy t&iacute;n chất lượng với gi&aacute; tốt nhất với sứ mệnh &ldquo; đem đến cho kh&aacute;ch h&agrave;ng kh&ocirc;ng gian nội thất ho&agrave;n hảo&rdquo;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"600\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595-800x600.jpg\" srcset=\"https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595-800x600.jpg 800w, https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595-768x576.jpg 768w, https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595-24x18.jpg 24w, https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595-36x27.jpg 36w, https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595-48x36.jpg 48w, https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595-600x450.jpg 600w, https://noithatminhtam.com/wp-content/uploads/2019/06/oca1557628595.jpg 960w\" width=\"800\" /></p>\r\n\r\n<p><em>Ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để tạo ra kh&ocirc;ng gian đẹp cho kh&aacute;ch h&agrave;ng theo nhiều gam m&agrave;u sắc</em></p>\r\n\r\n<p><strong>NGUỒN NH&Acirc;N LỰC VỮNG MẠNH</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; đội ngũ c&ocirc;ng nh&acirc;n vi&ecirc;n tuổi c&ograve;n trẻ nhưng c&oacute; nhiều năm kinh nghiệm trong nghề. Đội thiết kế trẻ trung, s&aacute;ng tạo, lu&ocirc;n đầy ắp &yacute; tưởng. Thợ mộc tay nghề giỏi.</p>\r\n\r\n<p>Trong suốt 14 năm qua, ch&uacute;ng t&ocirc;i kh&ocirc;ng ngừng nỗ lực để mang đến cho kh&aacute;ch h&agrave;ng nhiều gi&aacute; trị bằng c&aacute;ch cải thiện chất lượng sản phẩm/ dịch vụ l&ecirc;n từng ng&agrave;y. Ch&iacute;nh v&igrave; vậy, bạn sẽ nhận được nhiều&nbsp;<strong>lợi &iacute;ch khi đến với dịch vụ thiết kế thi c&ocirc;ng tủ bếp của ch&uacute;ng t&ocirc;i</strong></p>\r\n\r\n<p>&ndash; Ch&uacute;ng t&ocirc;i miễn ph&iacute; thiết kế cho bạn khi thi c&ocirc;ng nội thất.</p>\r\n\r\n<p>&ndash; Ch&uacute;ng t&ocirc;i c&oacute; xưởng sản xuất trực tiếp, v&igrave; vậy m&agrave; b&aacute;o gi&aacute; ch&uacute;ng t&ocirc;i đưa ra c&oacute; lẽ kh&ocirc;ng phải l&agrave; rẻ nhất nhưng sẽ l&agrave; gi&aacute; tốt nhất so với c&aacute;c sản phẩm/dịch vụ c&ugrave;ng chất lượng.</p>\r\n\r\n<p>&ndash; Ch&uacute;ng t&ocirc;i gi&uacute;p bạn tiết kiệm được rất nhiều chi ph&iacute; trong qu&aacute; tr&igrave;nh ho&agrave;n thiện.</p>\r\n\r\n<p>&ndash; Bạn sẽ cảm nhận được dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng tốt nhất từ trước đến giờ, ch&uacute;ng t&ocirc;i tự tin m&igrave;nh l&agrave; đơn vị &ldquo; b&aacute;n h&agrave;ng&rdquo; chiều kh&aacute;ch nhất.</p>\r\n\r\n<p><strong>TH&Agrave;NH QUẢ ĐẠT ĐƯỢC</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i nhận h&agrave;ng trăm c&ocirc;ng tr&igrave;nh nội thất mỗi năm. Nhận được sự tin tưởng v&agrave; ủng hộ của nhiều kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n-800x450.jpg\" srcset=\"https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n-800x450.jpg 800w, https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n-768x432.jpg 768w, https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n-24x14.jpg 24w, https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n-36x20.jpg 36w, https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n-48x27.jpg 48w, https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n-600x338.jpg 600w, https://noithatminhtam.com/wp-content/uploads/2019/06/57536406_1237541593076959_2774167188062339072_n.jpg 960w\" width=\"800\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Một số h&igrave;nh ảnh ch&uacute;ng t&ocirc;i đ&atilde; ho&agrave;n thiện cho kh&aacute;ch h&agrave;ng</em></p>\r\n\r\n<p><strong>CHIẾN LƯỢC PH&Aacute;T TRIỂN L&Acirc;U D&Agrave;I&nbsp;</strong></p>\r\n\r\n<p><strong>1.Phương hướng ph&aacute;t triển hướng tới</strong></p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;X&acirc;y dựng ph&aacute;t huy truyền thống tốt đẹp của c&ocirc;ng ty v&agrave; m&ocirc;i trường l&agrave;m việc văn minh.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Lu&ocirc;n t&igrave;m t&ograve;i, nghi&ecirc;n cứu ,lắng nghe &yacute; kiến của kh&aacute;ch h&agrave;ng v&agrave; kh&ocirc;ng ngừng ph&aacute;t triển nhằm đ&aacute;p ứng nhu cầu tốt nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp; Đ&agrave;o tạo, bồi dưỡng nguồn nh&acirc;n lực v&agrave; n&acirc;ng cao tay nghề.</p>\r\n\r\n<p><strong>2.Đối với nh&acirc;n vi&ecirc;n</strong></p>\r\n\r\n<p>&ndash;&nbsp;Sắp xếp v&agrave; bố tr&iacute; l&agrave;m việc hợp l&yacute;, t&igrave;m người c&oacute; năng lực tương xứng với vị tr&iacute; đảm nhiệm.</p>\r\n\r\n<p>&ndash;&nbsp;Chủ động thực hiện c&ocirc;ng t&aacute;c đ&agrave;o tạo, bồi dưỡng năng lực cho c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n để n&acirc;ng cao tr&igrave;nh độ kiến thức chuy&ecirc;n m&ocirc;n của c&aacute;n bộ v&agrave; tay nghề cho c&ocirc;ng nh&acirc;n để họ c&oacute; thể tiếp cận v&agrave; sử dụng được m&aacute;y m&oacute;c hiện đại, sản xuất ra những sản phẩm đạt chất lượng cao.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;X&acirc;y dựng định mức lao động v&agrave; c&aacute;c cơ chế, ch&iacute;nh s&aacute;ch về tiền lương, tiền thưởng ph&ugrave; hợp để động vi&ecirc;n được những lao động t&iacute;ch cực, c&oacute; tinh thần tr&aacute;ch nhiệm với c&ocirc;ng việc.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Quan t&acirc;m đến đời sống tinh thần cho CBCNV qua c&aacute;c hoạt động như thưởng v&agrave;o c&aacute;c ng&agrave;y lễ tết, nghỉ m&aacute;t, thăm hỏi, động vi&ecirc;n,&hellip;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"600\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o-800x600.jpg\" srcset=\"https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o-800x600.jpg 800w, https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o-768x576.jpg 768w, https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o-24x18.jpg 24w, https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o-36x27.jpg 36w, https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o-48x36.jpg 48w, https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o-600x450.jpg 600w, https://noithatminhtam.com/wp-content/uploads/2019/06/58379741_1241329009364884_7532771603755565056_o.jpg 1136w\" width=\"800\" /></p>\r\n\r\n<p><strong>3.Đối với sản phẩm &ndash; Dịch vụ:</strong></p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Tập trung cải tiến c&aacute;c kh&acirc;u sản xuất, chất lượng nguy&ecirc;n vật liệu đầu v&agrave;o.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Phương ch&acirc;m l&agrave;m việc: Mang những sản phẩm nội thất th&ocirc;ng minh của người Việt tới tay người Việt .Ti&ecirc;u chuẩn &ndash;chất lượng &ndash;th&ocirc;ng minh đ&oacute; l&agrave; những g&igrave; ch&uacute;ng t&ocirc;i đ&atilde; cố gắng ,nỗ lực từng ng&agrave;y để mang tới cho kh&aacute;ch h&agrave;ng của m&igrave;nh</p>\r\n\r\n<p>&ndash;&nbsp;Kh&ocirc;ng ngừng n&acirc;ng cao chất lượng v&agrave; t&iacute;nh thẩm mỹ của sản phẩm, n&acirc;ng cao năng lực cạnh tranh của sản phẩm một c&aacute;ch to&agrave;n diện.</p>\r\n\r\n<p><strong>4.Đối với kh&aacute;ch h&agrave;ng:</strong></p>\r\n\r\n<p>&ndash;&nbsp;Thực hiện tốt dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>&ndash;&nbsp;X&acirc;y dựng ch&iacute;nh s&aacute;ch đ&atilde;i ngộ cho kh&aacute;ch h&agrave;ng</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_password_resets`
--

CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_payment_status`
--

CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_payment_status`
--

INSERT INTO `sc_shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product`
--

CREATE TABLE `sc_shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `virtual` tinyint(4) DEFAULT 0 COMMENT '0:physical, 1:download, 2:only view, 3: Service',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product`
--

INSERT INTO `sc_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `virtual`, `tax_id`, `status`, `sort`, `view`, `alias`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
(24, 'T01', NULL, NULL, NULL, NULL, NULL, '/data/product/Trái Cây/3.jpg', 0, '', 90000, 80000, 13, 7, 0, 'kg', 1, 'in', 0, 0, 0, 0, 0, '1', 1, 0, 47, 'tao-envy', '2022-04-21 09:33:20', NULL, '2022-04-13 04:42:00', '2022-04-21 02:33:20'),
(25, 'C01', NULL, NULL, NULL, NULL, NULL, '/data/product/Trái Cây/4.jpg', 0, '', 20000, 0, 16, 4, 0, 'kg', 1, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 14, 'cam-ham-lin', '2022-04-22 16:13:45', NULL, '2022-04-13 06:56:29', '2022-04-22 09:13:45'),
(26, 'N01', NULL, NULL, NULL, NULL, NULL, '/data/product/Trái Cây/9.jpg', 0, '', 50000, 0, 87, 13, 0, 'kg', 0, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 20, 'nho-my', '2022-04-20 11:09:32', NULL, '2022-04-13 06:58:37', '2022-04-20 04:12:31'),
(27, 'C02', NULL, NULL, NULL, NULL, NULL, '/data/product/Trái Cây/8.jpg', 0, '', 50000, 0, 16, 4, 0, 'kg', 0, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 5, 'chuoi-tay', '2022-04-19 16:14:50', NULL, '2022-04-13 07:03:37', '2022-04-19 09:14:50'),
(28, 'D01', NULL, NULL, NULL, NULL, NULL, '/data/product/Trái Cây/30.jpg', 0, '', 90000, 0, 29, 1, 0, 'kg', 0, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 14, 'dau-tay', '2022-04-20 14:04:02', NULL, '2022-04-13 07:07:19', '2022-04-20 07:04:02'),
(29, 'C03', NULL, NULL, NULL, NULL, NULL, '/data/product/Trái Cây/22.jpg', 0, '', 20000, 0, 20, 0, 0, 'kg', 1, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 4, 'chanh-dao', '2022-04-22 16:13:34', NULL, '2022-04-13 07:09:58', '2022-04-22 09:13:34'),
(30, 'S01', NULL, NULL, NULL, NULL, NULL, '/data/product/Rau/11.jpg', 0, '', 20000, 0, 20, 0, 0, 'oz', 0, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 1, 'sup-lo', '2022-04-20 16:00:49', NULL, '2022-04-13 07:26:49', '2022-04-20 09:00:49'),
(31, 'B01', NULL, NULL, NULL, NULL, NULL, '/data/product/Rau/12.jpg', 0, '', 20000, 0, 200, 0, 0, 'kg', 1, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 1, 'bap-cai', '2022-04-14 16:11:02', NULL, '2022-04-13 07:28:26', '2022-04-14 09:11:02'),
(32, 'B02', NULL, NULL, NULL, NULL, NULL, '/data/product/Rau/6.jpg', 0, '', 2000, 0, 100, 0, 0, 'kg', 1, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 0, 'trai-bo', NULL, NULL, '2022-04-13 07:30:02', '2022-04-13 07:30:02'),
(33, 'B04', NULL, NULL, NULL, NULL, NULL, '/data/product/Rau/10.jpg', 0, '', 5000, 0, 98, 2, 0, 'oz', 0, 'in', 0, 0, 0, 0, 0, '0', 1, 0, 1, 'banh-mi', '2022-04-14 16:11:10', NULL, '2022-04-13 07:32:19', '2022-04-20 07:08:52'),
(35, 'NC01', NULL, NULL, NULL, NULL, NULL, '/data/product/8/Nước Ép/14.jpg', 0, '', 30000, 20000, 18, 2, 0, '', 1, 'in', 0, 0, 0, 0, 0, 'auto', 1, 0, 1, 'nuoc-ep-cam', '2022-04-19 09:39:24', NULL, '2022-04-19 02:35:25', '2022-04-20 07:08:52'),
(36, 'NC02', NULL, NULL, NULL, NULL, NULL, '/data/product/8/Nước Ép/13.jpg', 0, '', 49000, 35000, 19, 1, 0, '', 1, 'in', 0, 0, 0, 0, 0, 'auto', 1, 0, 2, 'nuoc-ep-ca-chua', '2022-04-21 09:12:15', NULL, '2022-04-19 02:37:10', '2022-04-21 02:12:15'),
(37, 'NC03', NULL, NULL, NULL, NULL, NULL, '/data/product/8/Nước Ép/28.jpg', 0, '', 65000, 50000, 99, 1, 0, '', 1, 'in', 0, 0, 0, 0, 0, 'auto', 1, 0, 3, 'nuoc-ep-dau-tay', '2022-04-20 14:19:51', NULL, '2022-04-19 02:38:56', '2022-04-20 07:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_attribute`
--

CREATE TABLE `sc_shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_build`
--

CREATE TABLE `sc_shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_category`
--

CREATE TABLE `sc_shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_category`
--

INSERT INTO `sc_shop_product_category` (`product_id`, `category_id`) VALUES
(24, 23),
(25, 23),
(26, 23),
(27, 23),
(28, 23),
(29, 23),
(30, 24),
(31, 24),
(32, 24),
(33, 24),
(35, 25),
(36, 25),
(37, 25);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_description`
--

CREATE TABLE `sc_shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_description`
--

INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(24, 'vi', 'Táo Envy', 'Táo Envy', 'Sau chuối, táo là loại trái cây được người Mỹ vô cùng yêu thích', '<h2 style=\"text-align:justify\"><strong>Tr&aacute;i t&aacute;o Mỹ được trồng ở đ&acirc;u?</strong></h2>\r\n\r\n<h2 style=\"text-align:justify\">Người Mỹ lu&ocirc;n c&oacute; t&aacute;o để thưởng t<span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:8px\"></span></span>hức mỗi ng&agrave;y bởi bang Washington được biết đến l&agrave; v&ugrave;ng đất của những quả t&aacute;o, với đất đai tr&ugrave; ph&uacute; v&agrave; kh&iacute; hậu &ocirc;n h&ograve;a. T&aacute;o phục vụ kh&ocirc;ng chỉ cho người d&acirc;n nước Mỹ, m&agrave; hiện nay đ&atilde; đến khắp nơi tr&ecirc;n thế giới.</h2>\r\n\r\n<h2 style=\"text-align:justify\">Tại Mỹ, c&oacute; đến 2.500 giống t&aacute;o được trồng, nhưng chỉ 100 giống tuyệt vời nhất mới được đưa ra thị trường. Chất lượng của c&aacute;c tr&aacute;i&nbsp;<a href=\"https://hoaquafuji.com/post/tao-envy-size-nho\">t&aacute;o Mỹ</a>&nbsp;lu&ocirc;n được xem như một chuẩn mực về mức độ an to&agrave;n, sạch v&agrave; ngon. T&aacute;o Mỹ chinh phục hầu hết người ti&ecirc;u d&ugrave;ng tr&ecirc;n thế giới, trong đ&oacute; c&oacute; cả Việt Nam.</h2>\r\n\r\n<h2 style=\"text-align:justify\"><img alt=\"\" data-result=\"success\" src=\"https://hoaquafuji.com/storage/app/media/uploaded-files/trai-tao-my-tao-gala-5-min.jpg\" /></h2>\r\n\r\n<h2 style=\"text-align:justify\"><em>Tr&aacute;i t&aacute;o Mỹ được trồng nhiều ở bang Washington</em></h2>'),
(25, 'vi', 'Cam Ham Lin', 'Cam Ham Lin', 'Là giống của Mỹ, được đưa vào Việt Nam từ năm 1971 thông qua Cu Ba.', '<ul>\r\n	<li><em>Cam Ham Lin</em>: L&agrave; giống của Mỹ, được đưa v&agrave;o Việt Nam từ năm 1971 th&ocirc;ng qua Cu Ba. Hamlin l&agrave; giống ch&iacute;n sớm v&agrave;o th&aacute;ng 9 &ndash; 10, vỏ quả mỏng, khối lượng quả trung b&igrave;nh 200 g/quả, ngọt đậm, 0 &ndash; 5 hạt/quả.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"quả cam\" data-ll-status=\"loaded\" height=\"317\" sizes=\"(max-width: 406px) 100vw, 406px\" src=\"https://cdn.youmed.vn/tin-tuc/wp-content/uploads/2020/11/4.4.jpg\" srcset=\"https://cdn.youmed.vn/tin-tuc/wp-content/uploads/2020/11/4.4.jpg 512w, https://cdn.youmed.vn/tin-tuc/wp-content/uploads/2020/11/4.4-300x234.jpg 300w\" width=\"406\" /></p>'),
(26, 'vi', 'Nho Mỹ', 'Nho Mỹ', 'Bên cạnh hương vị thơm ngon nổi bật của mình, các loại nho đỏ có nguồn gốc xuất sứ đến từ Mỹ', '<h3 id=\"toctoc-6\"><strong>Nho đỏ mọng nước Mỹ</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh hương vị thơm ngon nổi bật của m&igrave;nh, c&aacute;c loại nho đỏ c&oacute; nguồn gốc xuất sứ đến từ Mỹ c&ograve;n rất được đ&ocirc;ng đảo gia đ&igrave;nh lựa chọn nhờ v&agrave;o những khả năng giảm thiểu nguy cơ xuất hiện tai biến mạch m&aacute;u n&atilde;o cũng như ngăn ngừa c&aacute;c triệu chứng ung thư vốn lu&ocirc;n l&agrave; nỗi lo của rất nhiều người trong đời sống hiện nay. C&oacute; thể n&oacute;i nho đỏ Mỹ l&agrave; một sự lựa chọn rất ph&ugrave; hợp nếu như bạn đang t&igrave;m kiếm c&aacute;c loại qu&agrave; c&aacute;p d&agrave;nh cho người th&acirc;n v&agrave; &ocirc;ng b&agrave; của Mỹ trong dịp lễ Tết đang cận kề hiện nay.</p>\r\n\r\n<p><img alt=\"trái cây tươi nhập khẩu\" src=\"https://cdn.shopify.com/s/files/1/0563/5745/4002/products/20d4ea06463cbd55c6849975eb5826f4.png?v=1623387079\" /></p>\r\n\r\n<p><em>Nho đỏ mọng nước Mỹ</em></p>'),
(27, 'vi', 'Chuối Tây', 'Chuối Tây', 'Khác với chuối tiêu có hình dáng thon dài, chuối tây mập hơn và ngắn hơn', '<h2 dir=\"ltr\" id=\"chuoi-tay-la-chuoi-gi\">Chuối t&acirc;y l&agrave; chuối g&igrave;?</h2>\r\n\r\n<p><img alt=\"chuối tây\" height=\"377\" src=\"https://admin.nongsandungha.com/wp-content/uploads/2021/05/chuoi-tay-min.jpg\" width=\"500\" /></p>\r\n\r\n<p dir=\"ltr\">Kh&aacute;c với chuối ti&ecirc;u c&oacute; h&igrave;nh d&aacute;ng thon d&agrave;i, chuối t&acirc;y mập hơn v&agrave; ngắn hơn. Chuối t&acirc;y c&oacute; phần giữa to, hai đầu thon, cuống d&agrave;i v&agrave; c&oacute; ba gờ n&ecirc;n ch&uacute;ng ta dễ d&agrave;ng ph&acirc;n biệt.</p>\r\n\r\n<p dir=\"ltr\">Khi ch&iacute;n, chuối c&oacute; m&agrave;u v&agrave;ng x&aacute;m, thịt quả m&agrave;u trắng. Độ dinh dưỡng của chuối t&acirc;y kh&ocirc;ng hề thua k&eacute;m c&aacute;c loại chuối kh&aacute;c, thậm ch&iacute; hương vị của n&oacute; c&ograve;n thơm ngon hơn.</p>\r\n\r\n<p dir=\"ltr\">Từ xa xưa, chuối l&agrave; một trong những lo&agrave;i c&acirc;y phổ biến tr&ecirc;n to&agrave;n thế giới, trong đ&oacute; chuối t&acirc;y được trồng nhiều nhất v&igrave; cho năng suất v&agrave; gi&aacute; trị cao.</p>'),
(28, 'vi', 'Dâu Tây', 'Dâu Tây', 'Dâu Tây được mệnh danh là món quà quý tộc! Với vị ngọt thanh, mùi thơm ngọt ngào', '<p>M&ugrave;a d&acirc;u t&acirc;y H&agrave;n trước đ&acirc;y bắt đầu từ th&aacute;ng 6, nhưng thời gian trồng b&acirc;y giờ được đẩy l&ecirc;n, v&agrave; n&oacute; trở th&agrave;nh c&acirc;y vụ đ&ocirc;ng của H&agrave;n Quốc. Ch&iacute;nh v&igrave; được trồng trong thời tiết m&ugrave;a đ&ocirc;ng n&ecirc;n quả d&acirc;u t&acirc;y đạt được vẻ ngo&agrave;i đẹp v&agrave; lượng đường cao nhờ v&agrave; thời tiết m&ugrave;a đ&ocirc;ng của H&agrave;n Quốc. Ở H&agrave;n Quốc c&oacute; rất nhiều giống d&acirc;u được trồng như Seolhyang, Meahyang, Geumsil...Trong đ&oacute; giống d&acirc;u Sealhyang được trồng với diện t&iacute;ch nhiều nhất</p>\r\n\r\n<p>D&acirc;u t&acirc;y H&agrave;n Quốc được mệnh danh l&agrave; quốc quả của H&agrave;n Quốc. D&acirc;u t&acirc;y H&agrave; Quốc được trồng trong nh&agrave; k&iacute;nh, thủy canh, kh&ocirc;ng phải trồng ở ruộng như c&aacute;c v&ugrave;ng kh&aacute;c n&ecirc;n h&agrave;m&nbsp;lượng đường của d&acirc;u H&agrave;n lu&ocirc;n cao.&nbsp;Với kỹ thuật trồng cao n&ecirc;n tr&aacute;i d&acirc;u H&agrave;n Quốc đạt được độ chắc quả v&agrave; ngọt, thơm cao, đỏ hồng đều quả. D&acirc;u t&acirc;y giầu vitamin C hơn cả chanh, c&oacute; chứa axit metalalicylic c&oacute; t&aacute;c dụng chống vi&ecirc;m, giảm đau, ph&ograve;ng chống c&aacute;c bệnh của người lớn như cao huyết &aacute;p, tiểu đường, b&eacute;o ph&igrave;, tim mạch. D&acirc;u t&acirc;y c&oacute; thể n&oacute;i l&agrave; đạt được độ ho&agrave;n hảo cả vẻ đẹp, hương vị v&agrave; sức khỏe.</p>\r\n\r\n<p><img alt=\"\" data-thumb=\"large\" original-height=\"1280\" original-width=\"960\" src=\"https://bizweb.dktcdn.net/thumb/large/100/065/538/files/dau-han-chuan-f6589e42-7d90-4e35-9da1-24b93ef99e13.jpg?v=1644451581970\" /></p>\r\n\r\n<h3 id=\"dau-chuan-han-quoc-duoc-ban-tai-he-thong-hala\"><em>Dau chuẩn H&agrave;n Quốc được b&aacute;n tại hệ thống Hala</em></h3>'),
(29, 'vi', 'Chanh Đào', 'Chanh Đào', 'Trong nước chanh có rất nhiều thành phần tốt cho sức khỏe, tham khảo ngay 8 tác dụng tốt nhất', '<h3 id=\"toc_5\"><strong>Tăng cường chức năng phục hồi</strong></h3>\r\n\r\n<p><img alt=\"Uống nước chanh có tác dụng gì? 8+ tác dụng tốt nhất khi uống nước chanh 5\" height=\"396\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/12/uong-nuoc-chanh-co-tac-dung-gi-5-jpg-1640404357-25122021105237.jpg\" width=\"600\" /></p>\r\n\r\n<p>Cũng nhờ th&agrave;nh phần vitamin C trong da từ đ&oacute; c&oacute; thể gi&uacute;p chữa l&agrave;nh l&agrave;n da bị vi&ecirc;m v&agrave; nổi đỏ hiệu quả, ngo&agrave;i ra cũng c&oacute; t&aacute;c dụng ngăn ngừa h&ocirc;i miệng hiệu quả.</p>\r\n\r\n<h3 id=\"toc_6\"><strong>Nước nước chanh lợi tiểu</strong></h3>\r\n\r\n<p><img alt=\"Uống nước chanh có tác dụng gì? 8+ tác dụng tốt nhất khi uống nước chanh 6\" height=\"358\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/12/uong-nuoc-chanh-co-tac-dung-gi-6-jpg-1640404371-25122021105251.jpg\" width=\"600\" /></p>\r\n\r\n<p>Nước chanh thải độc trong thận tốt, l&agrave;m sạch thận n&ecirc;n cực kỳ lợi tiểu, nhưng bạn kh&ocirc;ng n&ecirc;n lạm dụng uống nước chanh qu&aacute; nhiều v&igrave; c&oacute; thể ảnh hưởng kh&ocirc;ng tốt đến dạ d&agrave;y.</p>'),
(30, 'vi', 'Súp Lơ', 'Súp Lơ', 'Súp lơ xanh và súp lơ trắng đều là rau họ cải. Cả hai đều có hương vị thơm ngon khi xào,', '<p><strong>C&aacute;c lợi &iacute;ch sức khỏe của s&uacute;p lơ xanh</strong></p>\r\n\r\n<p>C&aacute;c loại rau họ cải như s&uacute;p lơ xanh đặc biệt bổ dưỡng v&igrave; ch&uacute;ng gi&agrave;u vitamin v&agrave; chất dinh dưỡng gi&uacute;p cải thiện sức khỏe tim mạch, chống ung thư v&agrave; c&acirc;n bằng lại lượng đường trong m&aacute;u. Ch&uacute;ng cũng chứa &iacute;t calo v&agrave; nhiều chất xơ, v&igrave; vậy sẽ khiến bạn cảm thấy no.</p>\r\n\r\n<p><img alt=\"Súp lơ xanh và súp lơ trắng: Loại nào tốt hơn cho sức khỏe? - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/10/14/suploxanh-1571057444357.jpg\" title=\"Súp lơ xanh và súp lơ trắng: Loại nào tốt hơn cho sức khỏe? - 1\" /></p>\r\n\r\n<p>V&agrave; trong khi c&aacute;c loại rau kh&ocirc;ng c&oacute; nhiều protein như thịt, th&igrave; s&uacute;p lơ xanh lại chứa một lượng đ&aacute;ng ngạc nhi&ecirc;n. Ngo&agrave;i ra, c&aacute;c chất xơ, vitaminK, canxi... trong s&uacute;p lơ xanh đều chứa l&agrave;m lượng cao.</p>\r\n\r\n<p><em><strong>Giảm mức cholesterol</strong></em></p>\r\n\r\n<p>B&ocirc;ng cải xanh c&oacute; nhiều chất xơ h&ograve;a tan, c&oacute; li&ecirc;n quan đến việc giảm cholesterol. Theo nghi&ecirc;n cứu được c&ocirc;ng bố tr&ecirc;n tờ Nutrition Research, s&uacute;p lơ xanh hấp đặc biệt hữu &iacute;ch để giảm mức cholesterol. (Nh&acirc;n tiện, c&oacute; lẽ bạn đang kh&ocirc;ng ăn đủ chất xơ. Trong số 25 đến 30g m&agrave; FDA khuyến nghị h&agrave;ng ng&agrave;y, hầu hết người Mỹ chỉ ăn 16g).</p>'),
(31, 'vi', 'Bắp Cải', 'Bắp Cải', 'Bắp cải cùng thuộc họ với bông cải xanh, cải Brussels', '<h2>Th&agrave;nh phần dinh dưỡng của bắp cải</h2>\r\n\r\n<p>Theo Cơ sở dữ liệu dinh dưỡng quốc gia của Hoa Kỳ, 1 nửa ch&eacute;n bắp cải nấu ch&iacute;n cắt nhỏ (75 gram) chứa:</p>\r\n\r\n<ul>\r\n	<li>17 calo</li>\r\n	<li>Bốn gam carbohydrate (trong đ&oacute; c&oacute; chứa 2 gam đường v&agrave; 1 gam chất xơ)</li>\r\n	<li>Một gam protein</li>\r\n</ul>\r\n\r\n<p>Ăn nửa ch&eacute;n bắp cải nấu ch&iacute;n sẽ cung cấp 30-35% nhu cầu&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/vitamin-c-cong-dung-lieu-dung-thich-hop/\"><strong>vitamin C</strong></a>&nbsp;h&agrave;ng ng&agrave;y v&agrave;:</p>\r\n\r\n<ul>\r\n	<li>81,5 microgam&nbsp;<a href=\"https://www.vinmec.com/vi/co-the-nguoi/vitamin-k-93/\"><strong>vitamin K</strong></a></li>\r\n	<li>11 miligam magi&ecirc;</li>\r\n	<li>22 microgam folate</li>\r\n	<li>Th&ecirc;m v&agrave;o đ&oacute;, lượng&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/vitamin-b6-pyridoxine-cong-dung-lieu-dung-tac-dung-phu/\"><strong>vitamin B-6</strong></a>, canxi, kali v&agrave; thiamin nhưng &iacute;t hơn.</li>\r\n</ul>\r\n\r\n<p>Ngo&agrave;i ra, bắp cải c&oacute; nhiều&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/vai-tro-cua-chat-xo-voi-co/\"><strong>chất xơ</strong></a>&nbsp;v&agrave; chứa chất chống oxy h&oacute;a mạnh, bao gồm polyphenol v&agrave; c&aacute;c hợp chất lưu huỳnh. Khi so s&aacute;nh m&agrave;u sắc của cải bắp, c&aacute;c chuy&ecirc;n gia nhận thấy rằng loại bắp cải c&oacute; m&agrave;u đỏ c&oacute; chứa nhiều hợp chất n&agrave;y hơn so với bắp cải m&agrave;u xanh. Chất chống oxy h&oacute;a c&oacute; t&aacute;c dụng bảo vệ cơ thể kh&ocirc;ng bị tổn thương do c&aacute;c gốc tự do g&acirc;y ra. Gốc tự do l&agrave; c&aacute;c ph&acirc;n tử c&oacute; số electron lẻ, l&agrave;m cho ch&uacute;ng kh&ocirc;ng ổn định. Khi c&aacute;c gốc tự do n&agrave;y qu&aacute; nhiều v&agrave; hoạt động kh&ocirc;ng ổn định, ch&uacute;ng c&oacute; thể l&agrave;m hỏng c&aacute;c tế b&agrave;o của bạn.</p>\r\n\r\n<p>Như bạn c&oacute; thể thấy trong danh s&aacute;ch tr&ecirc;n, bắp cải c&oacute; chứa vitamin B6 v&agrave; folate, cả hai đều rất cần thiết cho nhiều qu&aacute; tr&igrave;nh quan trọng trong cơ thể, như qu&aacute; tr&igrave;nh chuyển h&oacute;a năng lượng trong cơ thể v&agrave; hoạt động b&igrave;nh thường của hệ thần kinh.</p>\r\n\r\n<p>Bắp cải đặc biệt chứa nhiều vitamin C, một chất chống oxy h&oacute;a mạnh c&oacute; thể bảo vệ chống lại&nbsp;<a href=\"https://vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/nhan-biet-6-dau-hieu-thuong-gap-cua-benh-tim-mach/\"><strong>bệnh tim</strong></a>, một số bệnh ung thư v&agrave; giảm thị lực.</p>\r\n\r\n<p><img alt=\"bắp cải\" data-src=\"https://vinmec-prod.s3.amazonaws.com/images/20200514_130227_102133_screenshot_15894613.max-1800x1800.png\" lazy=\"loaded\" src=\"https://vinmec-prod.s3.amazonaws.com/images/20200514_130227_102133_screenshot_15894613.max-1800x1800.png\" /></p>'),
(32, 'vi', 'Trái Bơ', 'Trái Bơ', 'Quả bơ là một loại trái cây khá độc đáo', '<p><strong>&nbsp;Quả bơ cực kỳ bổ dưỡng</strong></p>\r\n\r\n<p>Bơ l&agrave; loại quả rất bổ dưỡng cho cơ thể, n&oacute; chứa nhiều loại chất dinh dưỡng, bao gồm 20 loại vitamin c&ugrave;ng kho&aacute;ng chất như: vitamin C, E, K v&agrave; B6,... c&oacute; lợi cho sức khỏe.</p>\r\n\r\n<p>Bơ cung cấp dồi d&agrave;o c&aacute;c chất magi&ecirc;, kali, beta-carotene v&agrave; a x&iacute;t b&eacute;o omega-3, l&agrave; t&aacute;c nh&acirc;n tuyệt vời trong việc ngăn ngừa v&agrave; kiểm so&aacute;t bệnh tim cũng như duy tr&igrave; t&oacute;c, da v&agrave; m&oacute;ng khỏe mạnh</p>\r\n\r\n<p><img alt=\"Bơ mang nhiều chất dinh dưỡng có lợi cho sức khỏe. Ảnh minh họa. Đồ họa: Đặng Triều\" src=\"https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/5/1/904428/Capture.JPG\" /></p>\r\n\r\n<p>Bơ mang nhiều chất dinh dưỡng c&oacute; lợi cho sức khỏe. Ảnh minh họa. Đồ họa: Đặng Triều</p>'),
(33, 'vi', 'Bánh Mì', 'Bánh Mì', 'Rất nhiều người nghĩ rằng cách làm bánh mì khá khó, tuy nhiên thực tế', '<h3>Th&agrave;nh phẩm</h3>\r\n\r\n<p>Vậy l&agrave; ta đ&atilde; c&oacute; được 1 mẻ b&aacute;nh m&igrave; đặc ruột gi&ograve;n rụm, thơm ngon rồi đấy. Chỉ cần cắn một miếng, bạn sẽ cảm nhận được lớp vỏ ngo&agrave;i gi&ograve;n tan, ruột b&ecirc;n trong th&igrave; mềm mịn, b&ugrave;i b&ugrave;i.</p>\r\n\r\n<p><img alt=\"Bước 6 Thành phẩm Bánh mì đặc ruột bằng nồi chiên không dầu\" data-picid=\"36014\" data-src=\"https://cdn.tgdd.vn/2020/09/CookRecipe/GalleryStep/thanh-pham-792.jpg\" src=\"https://cdn.tgdd.vn/2020/09/CookRecipe/GalleryStep/thanh-pham-792.jpg\" /></p>'),
(35, 'vi', 'Nước Ép Cam', 'Nước Ép Cam', 'Cơ thể không thể sản xuất vitamin C', '<h4 id=\"0hchildmenuid1\"><strong>Nước &eacute;p cam tốt cho hệ miễn dịch</strong></h4>\r\n\r\n<p>Cơ thể kh&ocirc;ng thể sản xuất&nbsp;<a bis_skin_checked=\"1\" href=\"https://www.bachhoaxanh.com/kinh-nghiem-hay/vitamin-c-va-cong-dung-cua-chung-981142\" target=\"_blank\">vitamin C</a>&nbsp;m&agrave; phải bổ sung th&ecirc;m từ b&ecirc;n ngo&agrave;i, trong&nbsp;<a bis_skin_checked=\"1\" href=\"https://www.bachhoaxanh.com/nuoc-ep-trai-cay/nuoc-cam-vfresh-hop-1l\" rel=\"dofollow\" target=\"_blank\" title=\"nước ép cam\">nước &eacute;p cam</a>&nbsp;c&oacute; chứa nhiều vitamin C&nbsp;<strong>gi&uacute;p c&aacute;c tế b&agrave;o của hệ miễn dịch khỏe mạnh hơn.</strong></p>\r\n\r\n<p><img alt=\"Nước ép cam tốt cho hệ miễn dịch\" data-original=\"https://cdn.tgdd.vn/Files/2018/12/06/1136059/5-cong-dung-tuyet-voi-tu-nuoc-ep-cam-ban-nen-biet-5.jpg\" height=\"438\" src=\"https://cdn.tgdd.vn/Files/2018/12/06/1136059/5-cong-dung-tuyet-voi-tu-nuoc-ep-cam-ban-nen-biet-5.jpg\" title=\"5 công dụng tuyệt vời từ nước ép cam bạn nên biết\" width=\"700\" /></p>'),
(36, 'vi', 'Nước Ép Cà Chua', 'Nước Ép Cà Chua', 'Nước ép cà chua là một trong những loại thức uống vừa dinh dưỡng', '<h2>Nước &eacute;p c&agrave; chua ch&iacute;n</h2>\r\n\r\n<p><img alt=\"Nước ép cà chua chín\" data-src=\"https://cdn.tgdd.vn/2021/08/CookRecipe/Avatar/nuoc-ep-ca-chua-chin-thumbnail.jpg\" src=\"https://cdn.tgdd.vn/2021/08/CookRecipe/Avatar/nuoc-ep-ca-chua-chin-thumbnail.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h2>Chuẩn bị</h2>\r\n	10 ph&uacute;t</li>\r\n	<li>\r\n	<h2>Chế biến</h2>\r\n	5 ph&uacute;t</li>\r\n	<li>\r\n	<h2>Độ kh&oacute;</h2>\r\n	Dễ</li>\r\n</ul>\r\n\r\n<h2>Nguy&ecirc;n liệu l&agrave;m Nước &eacute;p c&agrave; chua ch&iacute;n<small>Cho 2</small></h2>\r\n\r\n<p>&nbsp;C&agrave; chua&nbsp;<small>400 gr</small>&nbsp;Đường c&aacute;t&nbsp;<small>80 gr</small>&nbsp;Muối&nbsp;<small>1/4 muỗng c&agrave; ph&ecirc;</small>&nbsp;Nước lọc&nbsp;<small>200 ml</small>&nbsp;Đ&aacute; vi&ecirc;n&nbsp;<small>1 &iacute;t</small></p>\r\n\r\n<h2>H&igrave;nh nguy&ecirc;n liệu</h2>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn nước ép cà chua\" data-src=\"https://cdn.tgdd.vn/2021/08/content/1-800x450-340.jpg\" height=\"450\" src=\"https://cdn.tgdd.vn/2021/08/content/1-800x450-340.jpg\" width=\"800\" /></p>\r\n\r\n<h2>Dụng cụ thực hiện</h2>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/may-ep-trai-cay\" rel=\"noopener\" target=\"_blank\" title=\"máy ép trái cây\">M&aacute;y &eacute;p tr&aacute;i c&acirc;y</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/noi\" rel=\"noopener\" target=\"_blank\" title=\"nồi \">nồi</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/bep-ga\" rel=\"noopener\" target=\"_blank\" title=\"bếp\">bếp</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/ly-bo-ly\" rel=\"noopener\" target=\"_blank\" title=\"ly\">ly</a>,...</p>\r\n\r\n<h2>C&aacute;ch chế biến Nước &eacute;p c&agrave; chua ch&iacute;n</h2>\r\n\r\n<ul>\r\n	<li>1\r\n	<h3>Sơ chế v&agrave; luộc c&agrave; chua</h3>\r\n\r\n	<p>C&agrave; chua mua về bạn rửa sạch với nước rồi để r&aacute;o. Tiếp đến bạn bắc một nồi nước l&ecirc;n bếp, đun nước với lửa lớn đến khi nước s&ocirc;i b&ugrave;ng l&ecirc;n.</p>\r\n\r\n	<p>Khi nước s&ocirc;i b&ugrave;ng l&ecirc;n, bạn cho c&agrave; chua v&agrave;o trụng trong khoảng 2 - 4 ph&uacute;t, phần vỏ c&agrave; chua nhũn lại th&igrave; bạn tắt bếp. Vớt c&agrave; chua v&agrave; ng&acirc;m v&agrave;o b&aacute;t nước lạnh.</p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế và luộc cà chua Nước ép cà chua chín\" data-picid=\"160461\" data-src=\"https://cdn.tgdd.vn/2021/08/CookRecipe/GalleryStep/so-che-va-luoc-ca-chua-1.jpg\" src=\"https://cdn.tgdd.vn/2021/08/CookRecipe/GalleryStep/so-che-va-luoc-ca-chua-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế và luộc cà chua Nước ép cà chua chín\" data-picid=\"160462\" data-src=\"https://cdn.tgdd.vn/2021/08/CookRecipe/GalleryStep/so-che-va-luoc-ca-chua.jpg\" src=\"https://cdn.tgdd.vn/2021/08/CookRecipe/GalleryStep/so-che-va-luoc-ca-chua.jpg\" /></p>\r\n	</li>\r\n</ul>'),
(37, 'vi', 'Nước Ép Dâu Tây', 'Nước Ép Dâu Tây', 'Dâu tây với vị chua ngọt, giàu vitamin và chất xơ', '<h2>&nbsp;Nước &eacute;p d&acirc;u t&acirc;y</h2>\r\n\r\n<p><img alt=\"Nước ép dâu tây\" data-src=\"https://cdn.tgdd.vn/2020/08/CookRecipe/Avatar/nuoc-ep-dau-tay-thumbnail.jpg\" src=\"https://cdn.tgdd.vn/2020/08/CookRecipe/Avatar/nuoc-ep-dau-tay-thumbnail.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h2>Chuẩn bị</h2>\r\n	5 ph&uacute;t</li>\r\n	<li>\r\n	<h2>Chế biến</h2>\r\n	5 ph&uacute;t</li>\r\n	<li>\r\n	<h2>Độ kh&oacute;</h2>\r\n	Dễ</li>\r\n</ul>\r\n\r\n<h2>Nguy&ecirc;n liệu l&agrave;m Nước &eacute;p d&acirc;u t&acirc;y<small>Cho 2 người</small></h2>\r\n\r\n<p>&nbsp;D&acirc;u t&acirc;y&nbsp;<small>700 gr</small>&nbsp;Chanh v&agrave;ng&nbsp;<small>1 tr&aacute;i</small>&nbsp;Đường&nbsp;<small>50 gr</small>&nbsp;Đ&aacute; vi&ecirc;n&nbsp;<small>1 &iacute;t</small></p>\r\n\r\n<h2>C&aacute;ch chọn mua chanh tươi, mọng nước</h2>\r\n\r\n<ul>\r\n	<li>Khi mua chanh bạn n&ecirc;n ch&uacute; &yacute; đến m&agrave;u sắc của vỏ chanh, m&agrave;u v&agrave;ng hoặc xanh đều, tươi s&aacute;ng, da căng b&oacute;ng th&igrave; đ&oacute; l&agrave; tr&aacute;i chanh tươi mới v&agrave; mọng nước.</li>\r\n	<li>Bạn ngửi thử m&ugrave;i hương của chanh, nếu chanh c&oacute; m&ugrave;i thơm thanh nhẹ thoang thoảng th&igrave; đ&oacute; l&agrave; chanh c&ograve;n tươi, c&ograve;n m&ugrave;i qu&aacute; nồng hoặc kh&oacute; ngửi th&igrave; đ&oacute; l&agrave; chanh đ&atilde; hỏng hoặc bị ti&ecirc;m h&oacute;a chất.</li>\r\n	<li>Khi cầm chanh tr&ecirc;n tay thấy chanh nặng tay th&igrave; c&oacute; nghĩa chanh đ&oacute; nhiều nước, n&ecirc;n mua. Tr&aacute;i chanh nhẹ tay hoặc l&agrave; tr&aacute;i qu&aacute; nhỏ th&igrave; c&oacute; thể tr&aacute;i chanh đ&oacute; chưa ch&iacute;n, kh&ocirc;ng c&oacute; nhiều nước v&agrave; nước sẽ c&oacute; vị nhẫn đắng.</li>\r\n	<li>Kh&ocirc;ng n&ecirc;n mua những tr&aacute;i c&oacute; m&agrave;u v&agrave;ng xỉn, vỏ sần s&ugrave;i hay tr&ecirc;n vỏ c&oacute; xuất hiện đốm đen.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn nước ép dâu tây\" data-src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/CookUtensilandNotes/nuoc-ep-dau-tay-note-1200x676.jpg\" height=\"676\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/CookUtensilandNotes/nuoc-ep-dau-tay-note-1200x676.jpg\" width=\"1200\" /></p>\r\n\r\n<h2>Dụng cụ thực hiện</h2>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/may-xay-sinh-to\" rel=\"noopener\" target=\"_blank\" title=\"máy xay sinh tố\">M&aacute;y xay sinh tố</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/dao-lam-bep\" rel=\"noopener\" target=\"_blank\" title=\"dao\">dao</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/va-san?g=ray-loc\" rel=\"noopener\" target=\"_blank\" title=\"thớt\">r&acirc;y lọc</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/binh-ly\" rel=\"noopener\" target=\"_blank\" title=\"ly\">ly</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/muong-dua\" rel=\"noopener\" target=\"_blank\" title=\"muỗng\">muỗng</a>,...</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_group`
--

CREATE TABLE `sc_shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_image`
--

CREATE TABLE `sc_shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_promotion`
--

CREATE TABLE `sc_shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_promotion`
--

INSERT INTO `sc_shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
(24, 80000, '2022-04-13 00:00:00', '2022-04-23 00:00:00', 1, '2022-04-20 07:18:08', '2022-04-20 07:18:08'),
(25, 15000, NULL, NULL, 1, '2022-04-13 06:56:29', '2022-04-13 06:56:29'),
(26, 35000, NULL, NULL, 1, '2022-04-13 06:58:37', '2022-04-13 06:58:37'),
(27, 20000, NULL, NULL, 1, '2022-04-13 07:03:56', '2022-04-13 07:03:56'),
(28, 78000, NULL, NULL, 1, '2022-04-13 07:07:19', '2022-04-13 07:07:19'),
(29, 15000, NULL, NULL, 1, '2022-04-13 07:09:58', '2022-04-13 07:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_sessions`
--

CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shipping_standard`
--

CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_shipping_standard`
--

INSERT INTO `sc_shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shipping_status`
--

CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_shipping_status`
--

INSERT INTO `sc_shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shoppingcart`
--

CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_subscribe`
--

CREATE TABLE `sc_shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_subscribe`
--

INSERT INTO `sc_shop_subscribe` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', 1, '2022-04-21 02:54:18', '2022-04-21 02:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_supplier`
--

CREATE TABLE `sc_shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `sort` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_supplier`
--

INSERT INTO `sc_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_tax`
--

CREATE TABLE `sc_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_tax`
--

INSERT INTO `sc_shop_tax` (`id`, `name`, `value`) VALUES
(1, 'Tax default (10%)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_user`
--

CREATE TABLE `sc_shop_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_user`
--

INSERT INTO `sc_shop_user` (`id`, `first_name`, `last_name`, `email`, `sex`, `birthday`, `password`, `address_id`, `postcode`, `address1`, `address2`, `company`, `country`, `phone`, `remember_token`, `status`, `group`, `created_at`, `updated_at`) VALUES
(8, 'Quang Hải17', 'Nguyễn', 'admin1@admin.com', 0, NULL, '$2y$10$1Usqiuy4C0r1x3nF5ckb1OrQ9Z8Jc.ydjO1pIdNELfSFmphLZ3Jpu', 7, NULL, NULL, NULL, NULL, 'VN', '03598082673', NULL, 1, 1, '2022-04-15 07:32:11', '2022-04-22 07:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_user_address`
--

CREATE TABLE `sc_shop_user_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_user_address`
--

INSERT INTO `sc_shop_user_address` (`id`, `user_id`, `first_name`, `last_name`, `postcode`, `address1`, `address2`, `country`, `phone`) VALUES
(1, 2, 'abcd', 'ffâSFA', '', 'sGásgAfga', 'fafágsas', 'DS', '09793979722'),
(2, 3, 'Quang Hải', 'Nguyễn', '', '', '', '', '0359808267'),
(3, 4, 'Quang Hải', 'Nguyễn', '', '', '', '', '03598082673'),
(4, 5, 'Quang Hải', 'Nguyễn', '', '', '', '', '03598082673'),
(5, 6, 'Quang Hải', 'Nguyễn', '', '', '', '', '03598082673'),
(6, 7, 'Quang Hải', 'Nguyễn', '', '', '', '', '03598082673'),
(7, 8, 'Quang Hải', 'Nguyễn', '', '', '', '', '03598082673');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_weight`
--

CREATE TABLE `sc_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_weight`
--

INSERT INTO `sc_shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_config_key_unique` (`key`),
  ADD KEY `sc_admin_config_code_index` (`code`);

--
-- Indexes for table `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_log_user_id_index` (`user_id`);

--
-- Indexes for table `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_menu_key_unique` (`key`);

--
-- Indexes for table `sc_admin_menu_permission`
--
ALTER TABLE `sc_admin_menu_permission`
  ADD PRIMARY KEY (`menu_id`,`permission_id`),
  ADD KEY `sc_admin_menu_permission_menu_id_permission_id_index` (`menu_id`,`permission_id`);

--
-- Indexes for table `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`);

--
-- Indexes for table `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_role_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_role_slug_unique` (`slug`);

--
-- Indexes for table `sc_admin_role_menu`
--
ALTER TABLE `sc_admin_role_menu`
  ADD PRIMARY KEY (`role_id`,`menu_id`),
  ADD KEY `sc_admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `sc_admin_role_permission`
--
ALTER TABLE `sc_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `sc_admin_role_user`
--
ALTER TABLE `sc_admin_role_user`
  ADD KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_admin_store_description`
--
ALTER TABLE `sc_admin_store_description`
  ADD PRIMARY KEY (`config_id`,`lang`),
  ADD KEY `sc_admin_store_description_lang_index` (`lang`);

--
-- Indexes for table `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `sc_admin_user_email_unique` (`email`);

--
-- Indexes for table `sc_admin_user_permission`
--
ALTER TABLE `sc_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Indexes for table `sc_cms_category`
--
ALTER TABLE `sc_cms_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_cms_category_alias_unique` (`alias`);

--
-- Indexes for table `sc_cms_category_description`
--
ALTER TABLE `sc_cms_category_description`
  ADD PRIMARY KEY (`category_id`,`lang`);

--
-- Indexes for table `sc_cms_content`
--
ALTER TABLE `sc_cms_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_cms_content_alias_unique` (`alias`);

--
-- Indexes for table `sc_cms_content_description`
--
ALTER TABLE `sc_cms_content_description`
  ADD PRIMARY KEY (`cms_content_id`,`lang`);

--
-- Indexes for table `sc_cms_image`
--
ALTER TABLE `sc_cms_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_duan`
--
ALTER TABLE `sc_duan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_block_content`
--
ALTER TABLE `sc_shop_block_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_brand_alias_unique` (`alias`);

--
-- Indexes for table `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_category_alias_unique` (`alias`);

--
-- Indexes for table `sc_shop_category_description`
--
ALTER TABLE `sc_shop_category_description`
  ADD PRIMARY KEY (`category_id`,`lang`),
  ADD KEY `sc_shop_category_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_country_code_unique` (`code`);

--
-- Indexes for table `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_currency_code_unique` (`code`);

--
-- Indexes for table `sc_shop_discount`
--
ALTER TABLE `sc_shop_discount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_discount_code_unique` (`code`);

--
-- Indexes for table `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_language_code_unique` (`code`);

--
-- Indexes for table `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`);

--
-- Indexes for table `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`);

--
-- Indexes for table `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_length_name_unique` (`name`);

--
-- Indexes for table `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_news_alias_unique` (`alias`);

--
-- Indexes for table `sc_shop_news_description`
--
ALTER TABLE `sc_shop_news_description`
  ADD PRIMARY KEY (`shop_news_id`,`lang`);

--
-- Indexes for table `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_page_alias_unique` (`alias`);

--
-- Indexes for table `sc_shop_page_description`
--
ALTER TABLE `sc_shop_page_description`
  ADD PRIMARY KEY (`page_id`,`lang`),
  ADD KEY `sc_shop_page_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_password_resets`
--
ALTER TABLE `sc_shop_password_resets`
  ADD KEY `sc_shop_password_resets_email_index` (`email`);

--
-- Indexes for table `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_product_sku_unique` (`sku`),
  ADD UNIQUE KEY `sc_shop_product_alias_unique` (`alias`),
  ADD KEY `sc_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `sc_shop_product_kind_index` (`kind`),
  ADD KEY `sc_shop_product_virtual_index` (`virtual`),
  ADD KEY `sc_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `sc_shop_product_status_index` (`status`);

--
-- Indexes for table `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Indexes for table `sc_shop_product_build`
--
ALTER TABLE `sc_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Indexes for table `sc_shop_product_category`
--
ALTER TABLE `sc_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `sc_shop_product_description`
--
ALTER TABLE `sc_shop_product_description`
  ADD PRIMARY KEY (`product_id`,`lang`),
  ADD KEY `sc_shop_product_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_product_group`
--
ALTER TABLE `sc_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Indexes for table `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_image_product_id_index` (`product_id`);

--
-- Indexes for table `sc_shop_product_promotion`
--
ALTER TABLE `sc_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sc_shop_sessions`
--
ALTER TABLE `sc_shop_sessions`
  ADD UNIQUE KEY `sc_shop_sessions_id_unique` (`id`);

--
-- Indexes for table `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_shoppingcart`
--
ALTER TABLE `sc_shop_shoppingcart`
  ADD KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`);

--
-- Indexes for table `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_subscribe_email_unique` (`email`);

--
-- Indexes for table `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_supplier_alias_unique` (`alias`);

--
-- Indexes for table `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_user`
--
ALTER TABLE `sc_shop_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_user_email_unique` (`email`),
  ADD KEY `sc_shop_user_address_id_index` (`address_id`);

--
-- Indexes for table `sc_shop_user_address`
--
ALTER TABLE `sc_shop_user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_weight_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2022;

--
-- AUTO_INCREMENT for table `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_cms_category`
--
ALTER TABLE `sc_cms_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_cms_content`
--
ALTER TABLE `sc_cms_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_cms_image`
--
ALTER TABLE `sc_cms_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_duan`
--
ALTER TABLE `sc_duan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_shop_block_content`
--
ALTER TABLE `sc_shop_block_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_discount`
--
ALTER TABLE `sc_shop_discount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_user`
--
ALTER TABLE `sc_shop_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_user_address`
--
ALTER TABLE `sc_shop_user_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
