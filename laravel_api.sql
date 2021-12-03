-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 10:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api`
--

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2021_12_02_050415_user', 2),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(24, '2016_06_01_000004_create_oauth_clients_table', 3),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

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

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0dc4417c264d0a47a89acdc069e278e6486dfff972b8a3bdcaa6232132fef3179d4174a60828b7be', 3, 3, 'AuthToken', '[]', 0, '2021-12-03 00:06:55', '2021-12-03 00:06:55', '2022-12-03 05:36:55'),
('15fe81775760ed7e27ad9f8803907fda1c8565dd8fdce1393b2b5dd4fd528018f6539ceb93add242', 12, 3, 'MyApp', '[]', 0, '2021-12-03 03:24:03', '2021-12-03 03:24:03', '2022-12-03 08:54:03'),
('1967939518562aef95b8a462de4085d11b23c90cc35195862ef329f1bb2aea60bb89d3dfe3beb51a', 3, 3, 'AuthToken', '[]', 0, '2021-12-02 08:16:19', '2021-12-02 08:16:19', '2022-12-02 13:46:19'),
('1ce3ae35c34580d49c2637d183d91389cf6380d7532f79e34a748541ee0f2beb6f72a542ac181b12', 3, 3, 'AuthToken', '[]', 0, '2021-12-03 00:24:58', '2021-12-03 00:24:58', '2022-12-03 05:54:58'),
('2f7ae4a0eafd75c9447712146a63b7abbcb2e8c1d2d74fde95dcaca19584d2dfedbef6521a96974f', 3, 3, 'AuthToken', '[]', 0, '2021-12-02 08:25:22', '2021-12-02 08:25:22', '2022-12-02 13:55:22'),
('3aea2cbd9c87acdc8f90bfa5e13bfbd00be6e1369006fb80648e6420f6eea3de23a85e1bcd332595', 12, 3, NULL, '[]', 0, '2021-12-03 03:23:20', '2021-12-03 03:23:20', '2022-12-03 08:53:20'),
('3d6c2d8b2df073cfb563ac39519e20ba0f83ae11dc32fb60977eafd1d4d1ccbc46f1f51cd9fa9da9', 1, 3, 'AuthToken', '[]', 0, '2021-12-02 07:56:27', '2021-12-02 07:56:27', '2022-12-02 13:26:27'),
('4cfaf41291e7c77705ff4b495a83eb23c74f47312c9f8eb0220e790d64e28591a3323a32737df607', 3, 3, 'AuthToken', '[]', 0, '2021-12-02 08:29:36', '2021-12-02 08:29:36', '2022-12-02 13:59:36'),
('59b6601bd780427ae0fd75e9a2e2199ccd3121273b9f128dd0bf5f1021741e8917e268ee57d0e66a', 15, 6, 'AuthToken', '[]', 0, '2021-12-03 03:54:23', '2021-12-03 03:54:23', '2022-12-03 09:24:23'),
('5cc58b4e41d2eb9ea3ef86a22683fb5b576c962e2ae823e9bae08b495766199417dcee027b239ca7', 3, 3, 'AuthToken', '[]', 0, '2021-12-02 08:25:37', '2021-12-02 08:25:37', '2022-12-02 13:55:37'),
('61ca1ccb6ca5a7f6f1cfc00a8ceea3ceb0edc64786ba0c3c5b77d3886ca0a7b429cb1dcce0d2a51a', 12, 3, NULL, '[]', 0, '2021-12-03 03:21:44', '2021-12-03 03:21:44', '2022-12-03 08:51:44'),
('62183f813e85bf701a1762dfdea45922b0460cc96fa60b836132146a966d5874329b465917cd0496', 3, 3, 'AuthToken', '[]', 0, '2021-12-02 08:46:31', '2021-12-02 08:46:31', '2022-12-02 14:16:31'),
('7624ccc5a1c989adc7cbbd6a0ca57996b79423d40d4d7781732f1d4f3886f21808baa246ba1bcf10', 1, 3, 'AuthToken', '[]', 0, '2021-12-02 07:54:39', '2021-12-02 07:54:39', '2022-12-02 13:24:39'),
('cb232cf702ccf3463a0ea00a11fdf60488e219b9ad01b07639d85c97e1b01351eab0c066e0e85588', 3, 3, 'AuthToken', '[]', 0, '2021-12-02 23:27:36', '2021-12-02 23:27:36', '2022-12-03 04:57:36'),
('d05ad4eb9acd0eb0587dde9bcd78134bd160785916f890f319a2f1714431917cda84f8010944203f', 3, 3, 'AuthToken', '[]', 0, '2021-12-03 01:47:00', '2021-12-03 01:47:00', '2022-12-03 07:17:00'),
('e0173ad9b884f94f685e7d6316023447aebe75425e98df1193bdf3dac443b35903c640100fe5bd8a', 3, 3, 'AuthToken', '[]', 0, '2021-12-02 23:14:15', '2021-12-02 23:14:15', '2022-12-03 04:44:15'),
('f9aa4777ac43360924aee39ae6c22b037c786b0c5cdd142024670a990df5fcabc886e3e902b919bd', 3, 3, 'AuthToken', '[]', 0, '2021-12-03 01:08:56', '2021-12-03 01:08:56', '2022-12-03 06:38:56');

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
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'FMs5E9fuKSqgKVGwoqAellE1TtxYpr04Bge08kVA', NULL, 'http://localhost', 1, 0, 0, '2021-12-02 06:21:45', '2021-12-02 06:21:45'),
(2, NULL, 'Laravel Password Grant Client', 'HpnbwxWVkJl1Xt5sSOSbAMZ8rcssyqFT51z9UDLZ', 'users', 'http://localhost', 0, 1, 0, '2021-12-02 06:21:46', '2021-12-02 06:21:46'),
(3, NULL, 'Laravel Personal Access Client', 'EFfyQdBsnWobkYSOeVX2EDrPiF9TY1CPlaWAp7J0', NULL, 'http://localhost', 1, 0, 0, '2021-12-02 06:30:28', '2021-12-02 06:30:28'),
(4, NULL, 'Laravel Password Grant Client', 'NYg4CYXMVqbu42FKnJTBvUycW5A2edqVrOik1exJ', 'users', 'http://localhost', 0, 1, 0, '2021-12-02 06:30:28', '2021-12-02 06:30:28'),
(5, NULL, 'password', 'ZDsGbHmaA3CwFCa1DsuPoMucjDhbjWU8efGxGlWE', 'users', 'http://localhost', 0, 1, 0, '2021-12-03 00:09:48', '2021-12-03 00:09:48'),
(6, NULL, 'Laravel Personal Access Client', 'r1UeVYNZhc967jnOuah2Y9OTw38peIjx2A6G4vGs', NULL, 'http://localhost', 1, 0, 0, '2021-12-03 03:33:42', '2021-12-03 03:33:42'),
(7, NULL, 'Laravel Password Grant Client', 'DYqXL8ZXlPfXFBvq8gjf63d8lQGmLtBdnRwQ0tce', 'users', 'http://localhost', 0, 1, 0, '2021-12-03 03:33:42', '2021-12-03 03:33:42');

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
(1, 1, '2021-12-02 06:21:46', '2021-12-02 06:21:46'),
(2, 3, '2021-12-02 06:30:28', '2021-12-02 06:30:28'),
(3, 6, '2021-12-03 03:33:42', '2021-12-03 03:33:42');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 14, 'MyApp', 'd631fc801991abf7f7287463ca85be931cc7ae045790d99ada553928d1b5bbe0', '[\"*\"]', NULL, '2021-12-03 03:41:20', '2021-12-03 03:41:20'),
(2, 'App\\Models\\User', 14, 'MyApp', '93d614434fa79e0695a6f1644c0ec6d30480a1aa5be445313c33d6f20da99183', '[\"*\"]', NULL, '2021-12-03 03:41:54', '2021-12-03 03:41:54'),
(3, 'App\\Models\\User', 14, 'MyApp', '82282cd0598ad7c3bda62c0bb217e317cc3444b45125f0763f60d754c3e2f335', '[\"*\"]', NULL, '2021-12-03 03:41:58', '2021-12-03 03:41:58'),
(4, 'App\\Models\\User', 14, 'MyApp', '330574de2314612f24b026de0b2afbf94fd8b0dd0a98639c676d959c28578fc2', '[\"*\"]', NULL, '2021-12-03 03:42:15', '2021-12-03 03:42:15'),
(5, 'App\\Models\\User', 14, 'MyApp', 'a1b1f1bc0821ef436f9f6ea6c8f87b208cfa6412f4400100abc7fc7d8356f7d5', '[\"*\"]', NULL, '2021-12-03 03:42:36', '2021-12-03 03:42:36'),
(6, 'App\\Models\\User', 14, 'MyApp', '5ae71c8d9dae6be2b41d55030395fff7f86e91403fb448471e09e97568c0958f', '[\"*\"]', NULL, '2021-12-03 03:42:51', '2021-12-03 03:42:51'),
(7, 'App\\Models\\User', 14, 'AuthToken', '943c937ea4afda583857f333e4805a0b02024402009c06ee738d20ee8bcb0a03', '[\"*\"]', NULL, '2021-12-03 03:45:12', '2021-12-03 03:45:12'),
(8, 'App\\Models\\User', 14, 'AuthToken', '64cf86e0c3ca273ef4a1bf892959e50b91484d00b09c95c7714307a5bb2e0150', '[\"*\"]', NULL, '2021-12-03 03:46:13', '2021-12-03 03:46:13'),
(9, 'App\\Models\\User', 14, 'AuthToken', '1d5fe949ae14739221149e8c610f9c7bc7d9f390e7eb4f87e4e01dd81a392cc7', '[\"*\"]', NULL, '2021-12-03 03:46:48', '2021-12-03 03:46:48'),
(10, 'App\\Models\\User', 14, 'AuthToken', 'bdfe37c50f2256788cd9657870292db3c8c624c8a032764a3d2d699888414d56', '[\"*\"]', NULL, '2021-12-03 03:46:56', '2021-12-03 03:46:56'),
(11, 'App\\Models\\User', 14, 'AuthToken', '5ad620743db3178b8e570f5d548f22730f7437af2d45d6349394db7f652d619d', '[\"*\"]', NULL, '2021-12-03 03:48:54', '2021-12-03 03:48:54'),
(12, 'App\\Models\\User', 15, 'AuthToken', 'd8b168bf0d9ecb34109c11d77ef1d2f8c92d58c2d0be29a768141ff68e15b809', '[\"*\"]', NULL, '2021-12-03 03:50:04', '2021-12-03 03:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `api_token`, `email`, `password`, `created_at`) VALUES
(1, 'xPivInQTXDMA', NULL, 'SWOfLaYNr9LOipq@example.com', '$2y$10$F.JBlceTUw.uVFJSD6M/deFxSoJQuPRZtGnqaO8lNome6OqGZ/wPO', '2021-12-02 06:15:40'),
(2, '9jbuGk8xRsnI', NULL, 'TYJxPZNXe3FKLF9@example.com', '$2y$10$rWLU33gWb4h4bOTHMVDOmOqFvVz04HTWILuQ5bsf/x8kx.yVEcbeK', '2021-12-02 06:15:42'),
(3, 'gwNHZi9Lj2EW', NULL, 'Uqm9fPYGwINXjGY@example.com', '$2y$10$3o6cIucZY98YvbE8.m89EuAgOa8RCAIBGMNY14zzTT5fNUtnAtF5u', '2021-12-02 06:15:43'),
(4, 'DFHte8pph8SS', NULL, 'GaPGaWCNjJdmNqd@example.com', '$2y$10$0rPYxDmzdEErK4/UjmfCoOvgPhJn311QzMlPLAxnX/O2Y8ng/mCqe', '2021-12-02 06:15:48'),
(5, 'uYBgb5tcURst', NULL, 'uFoaGB6tKxbmqMn@example.com', '$2y$10$8gHJI5l43cHEDTGWzNOIWe6bkYSUNTsZP/XuhMh86kN.WkJh78E6W', '2021-12-02 06:15:50'),
(6, 'UIbsqtkS27P4', NULL, '3K0ROeOJZ2ihM9K@example.com', '$2y$10$ouk7BJlcbTXIQQ2rf5N1a.37PFLeVv0E.DL2uj5374Sbu09GcVmA.', '2021-12-02 06:15:51'),
(7, 'IHJnwwmnEWxF', NULL, 'd15WLGNq3tu7l1v@example.com', '$2y$10$ZGFKTb.dA5ftuNNU26tBR.wghYn2J57bvaAs80PEQe1Av4raYIgtS', '2021-12-02 06:15:53'),
(8, 'YmDCZBHwN7w2', NULL, 'SPJbqxmtbQfSwwg@example.com', '$2y$10$cAviXe9UoKfhcKenVIXwM.UiOffWdTXpQxgJotJUHqkUs.QHIwNvO', '2021-12-02 10:57:38'),
(9, 'kinjal', NULL, 'kinjal@123.com', 'kinjal', '2021-12-02 12:33:18'),
(10, 'OjmgLA6QAer4', NULL, 'ulX9m5b9jubMu7g@example.com', '$2y$10$IQ/9bvplMx1E4H2OYj2LJeOgz.R54/9NBvwHS2o.wtkbCdVI0JD32', '2021-12-02 13:26:00'),
(11, '13sIT8CJvrL0', NULL, 'lSszzFGGEBQi109@example.com', '$2y$10$yNZoL0ntDtLEM..r7LVl9.Wti0IOUWkzk8ClMpK.742zr4kkFfVIC', '2021-12-02 13:26:02');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'YmDCZBHwN7w2', 'SPJbqxmtbQfSwwg@example.com', NULL, '$2y$10$cAviXe9UoKfhcKenVIXwM.UiOffWdTXpQxgJotJUHqkUs.QHIwNvO', NULL, NULL, NULL),
(2, 'uUbZXcvCZRLo', 'fmYcXjub60meG8C@example.com', NULL, '$2y$10$G0ggGMs/Ez1FllYTRH39IeXO3nyPubiATmu7p8kGk6Z7S/Ij6sj4m', NULL, NULL, NULL),
(3, 'WdH0TRgiOzJF', 'INruYege0ojRDIk@example.com', NULL, '$2y$10$7PIFENxGYsjniaz6z3gmW..O5qsl.zyy41YIr4IGE14fxNVYDxGD2', NULL, NULL, NULL),
(6, 'YmDCZBHwN7w2', 'INruYegedfdf0ojRDIk@example.com', NULL, '$2y$10$6yTyxsgmLM.HPdUY81lUdOYG9mY5sHvMKp1x029hupL3EHKVCQZCy', NULL, '2021-12-03 03:18:41', '2021-12-03 03:18:41'),
(8, 'YmDCZBHwN7w2', 'hi@example.com', NULL, '$2y$10$DPolqvrrVjHMLqF1OOCeJeUJkcMF8ccBwL3Z8WG3ecZ1oV4jvtr4i', NULL, '2021-12-03 03:19:41', '2021-12-03 03:19:41'),
(10, 'YmDCZBHwN7w2', 'hfgi@example.com', NULL, '$2y$10$q3CYr2TuMfLzJCG4lcSC5OZY5V9QjkeISrS6o0fpdFn2UtyevfWW6', NULL, '2021-12-03 03:20:38', '2021-12-03 03:20:38'),
(12, 'YmDCZBHwN7w2', 'hfsdfgi@example.com', NULL, '$2y$10$S8huzsA1h51kSfxwYEXWPOW9oaPLwI1SdX7V94jWbub.uxj/2Fsru', NULL, '2021-12-03 03:21:44', '2021-12-03 03:21:44'),
(14, 'YmDCZBHwN7w2', 'hfsdfgi@example.comfg', NULL, '$2y$10$d8VIlCIRxdV0u6Xs1Y5NyONfu.mdM8aIq3yc8vaORaLtvWFk/eeRq', NULL, '2021-12-03 03:41:20', '2021-12-03 03:41:20'),
(15, 'YmDCZBHwN7w2', 'kinjal@example.comfg', NULL, '$2y$10$niObQeUjywkYgTY8rpmyheBNDv9uAi0NckG3C9RsKiEOzPfc9WMCW', NULL, '2021-12-03 03:49:53', '2021-12-03 03:49:53');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
