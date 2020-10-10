-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 07:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelvenuebooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add cateringes', 1, 'add_cateringes'),
(2, 'Can change cateringes', 1, 'change_cateringes'),
(3, 'Can delete cateringes', 1, 'delete_cateringes'),
(4, 'Can view cateringes', 1, 'view_cateringes'),
(5, 'Can add decorations', 2, 'add_decorations'),
(6, 'Can change decorations', 2, 'change_decorations'),
(7, 'Can delete decorations', 2, 'delete_decorations'),
(8, 'Can view decorations', 2, 'view_decorations'),
(9, 'Can add feedbacks', 3, 'add_feedbacks'),
(10, 'Can change feedbacks', 3, 'change_feedbacks'),
(11, 'Can delete feedbacks', 3, 'delete_feedbacks'),
(12, 'Can view feedbacks', 3, 'view_feedbacks'),
(13, 'Can add migrations', 4, 'add_migrations'),
(14, 'Can change migrations', 4, 'change_migrations'),
(15, 'Can delete migrations', 4, 'delete_migrations'),
(16, 'Can view migrations', 4, 'view_migrations'),
(17, 'Can add packages', 5, 'add_packages'),
(18, 'Can change packages', 5, 'change_packages'),
(19, 'Can delete packages', 5, 'delete_packages'),
(20, 'Can view packages', 5, 'view_packages'),
(21, 'Can add password resets', 6, 'add_passwordresets'),
(22, 'Can change password resets', 6, 'change_passwordresets'),
(23, 'Can delete password resets', 6, 'delete_passwordresets'),
(24, 'Can view password resets', 6, 'view_passwordresets'),
(25, 'Can add payments', 7, 'add_payments'),
(26, 'Can change payments', 7, 'change_payments'),
(27, 'Can delete payments', 7, 'delete_payments'),
(28, 'Can view payments', 7, 'view_payments'),
(29, 'Can add users', 8, 'add_users'),
(30, 'Can change users', 8, 'change_users'),
(31, 'Can delete users', 8, 'delete_users'),
(32, 'Can view users', 8, 'view_users'),
(33, 'Can add venues', 9, 'add_venues'),
(34, 'Can change venues', 9, 'change_venues'),
(35, 'Can delete venues', 9, 'delete_venues'),
(36, 'Can view venues', 9, 'view_venues'),
(37, 'Can add log entry', 10, 'add_logentry'),
(38, 'Can change log entry', 10, 'change_logentry'),
(39, 'Can delete log entry', 10, 'delete_logentry'),
(40, 'Can view log entry', 10, 'view_logentry'),
(41, 'Can add permission', 11, 'add_permission'),
(42, 'Can change permission', 11, 'change_permission'),
(43, 'Can delete permission', 11, 'delete_permission'),
(44, 'Can view permission', 11, 'view_permission'),
(45, 'Can add group', 12, 'add_group'),
(46, 'Can change group', 12, 'change_group'),
(47, 'Can delete group', 12, 'delete_group'),
(48, 'Can view group', 12, 'view_group'),
(49, 'Can add user', 13, 'add_user'),
(50, 'Can change user', 13, 'change_user'),
(51, 'Can delete user', 13, 'delete_user'),
(52, 'Can view user', 13, 'view_user'),
(53, 'Can add content type', 14, 'add_contenttype'),
(54, 'Can change content type', 14, 'change_contenttype'),
(55, 'Can delete content type', 14, 'delete_contenttype'),
(56, 'Can view content type', 14, 'view_contenttype'),
(57, 'Can add session', 15, 'add_session'),
(58, 'Can change session', 15, 'change_session'),
(59, 'Can delete session', 15, 'delete_session'),
(60, 'Can view session', 15, 'view_session'),
(61, 'Can add auth group', 16, 'add_authgroup'),
(62, 'Can change auth group', 16, 'change_authgroup'),
(63, 'Can delete auth group', 16, 'delete_authgroup'),
(64, 'Can view auth group', 16, 'view_authgroup'),
(65, 'Can add auth group permissions', 17, 'add_authgrouppermissions'),
(66, 'Can change auth group permissions', 17, 'change_authgrouppermissions'),
(67, 'Can delete auth group permissions', 17, 'delete_authgrouppermissions'),
(68, 'Can view auth group permissions', 17, 'view_authgrouppermissions'),
(69, 'Can add auth permission', 18, 'add_authpermission'),
(70, 'Can change auth permission', 18, 'change_authpermission'),
(71, 'Can delete auth permission', 18, 'delete_authpermission'),
(72, 'Can view auth permission', 18, 'view_authpermission'),
(73, 'Can add auth user', 19, 'add_authuser'),
(74, 'Can change auth user', 19, 'change_authuser'),
(75, 'Can delete auth user', 19, 'delete_authuser'),
(76, 'Can view auth user', 19, 'view_authuser'),
(77, 'Can add auth user groups', 20, 'add_authusergroups'),
(78, 'Can change auth user groups', 20, 'change_authusergroups'),
(79, 'Can delete auth user groups', 20, 'delete_authusergroups'),
(80, 'Can view auth user groups', 20, 'view_authusergroups'),
(81, 'Can add auth user user permissions', 21, 'add_authuseruserpermissions'),
(82, 'Can change auth user user permissions', 21, 'change_authuseruserpermissions'),
(83, 'Can delete auth user user permissions', 21, 'delete_authuseruserpermissions'),
(84, 'Can view auth user user permissions', 21, 'view_authuseruserpermissions'),
(85, 'Can add bookings', 22, 'add_bookings'),
(86, 'Can change bookings', 22, 'change_bookings'),
(87, 'Can delete bookings', 22, 'delete_bookings'),
(88, 'Can view bookings', 22, 'view_bookings'),
(89, 'Can add django admin log', 23, 'add_djangoadminlog'),
(90, 'Can change django admin log', 23, 'change_djangoadminlog'),
(91, 'Can delete django admin log', 23, 'delete_djangoadminlog'),
(92, 'Can view django admin log', 23, 'view_djangoadminlog'),
(93, 'Can add django content type', 24, 'add_djangocontenttype'),
(94, 'Can change django content type', 24, 'change_djangocontenttype'),
(95, 'Can delete django content type', 24, 'delete_djangocontenttype'),
(96, 'Can view django content type', 24, 'view_djangocontenttype'),
(97, 'Can add django migrations', 25, 'add_djangomigrations'),
(98, 'Can change django migrations', 25, 'change_djangomigrations'),
(99, 'Can delete django migrations', 25, 'delete_djangomigrations'),
(100, 'Can view django migrations', 25, 'view_djangomigrations'),
(101, 'Can add django session', 26, 'add_djangosession'),
(102, 'Can change django session', 26, 'change_djangosession'),
(103, 'Can delete django session', 26, 'delete_djangosession'),
(104, 'Can view django session', 26, 'view_djangosession'),
(105, 'Can add feedback', 27, 'add_feedback'),
(106, 'Can change feedback', 27, 'change_feedback'),
(107, 'Can delete feedback', 27, 'delete_feedback'),
(108, 'Can view feedback', 27, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `venue_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `booking_cost` int(11) NOT NULL,
  `decoration_id` bigint(20) UNSIGNED NOT NULL,
  `cateringes_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time_slot` time NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `venue_id`, `package_id`, `booking_cost`, `decoration_id`, `cateringes_id`, `date`, `time_slot`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 3, 20000, 8, 7, '2020-10-02', '14:22:00', NULL, '2020-10-01 20:56:40', '2020-10-01 23:39:49'),
(4, 4, 2, 10, 20000, 9, 7, '2020-10-08', '17:14:00', NULL, '2020-10-01 22:44:05', '2020-10-01 22:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `cateringes`
--

CREATE TABLE `cateringes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catering_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cateringes`
--

INSERT INTO `cateringes` (`id`, `service`, `catering_type`, `price`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'jeel', 'UPDATE', 8, NULL, '2020-10-04 12:41:24', '2020-10-05 12:41:24'),
(11, 'test 2', 'test', 555, NULL, '2020-10-04 12:41:24', '2020-10-05 12:41:24'),
(13, ' abcd', 'abcd', 500, NULL, NULL, NULL),
(17, 'test', 'test', 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `decorations`
--

CREATE TABLE `decorations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `decoration_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `decorations`
--

INSERT INTO `decorations` (`id`, `decoration_type`, `price`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Simple(include:-chair,green carpet,decorations of flowers and lights of choice)', 15000, NULL, '2020-09-16 04:30:02', '2020-09-17 08:57:40'),
(9, 'sraugdihiook;l;dkjokjl', 8000, NULL, '2020-09-16 05:50:52', '2020-09-17 08:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'admin', 'logentry'),
(12, 'auth', 'group'),
(11, 'auth', 'permission'),
(13, 'auth', 'user'),
(14, 'contenttypes', 'contenttype'),
(15, 'sessions', 'session'),
(16, 'venueboking', 'authgroup'),
(17, 'venueboking', 'authgrouppermissions'),
(18, 'venueboking', 'authpermission'),
(19, 'venueboking', 'authuser'),
(20, 'venueboking', 'authusergroups'),
(21, 'venueboking', 'authuseruserpermissions'),
(22, 'venueboking', 'bookings'),
(1, 'venueboking', 'cateringes'),
(2, 'venueboking', 'decorations'),
(23, 'venueboking', 'djangoadminlog'),
(24, 'venueboking', 'djangocontenttype'),
(25, 'venueboking', 'djangomigrations'),
(26, 'venueboking', 'djangosession'),
(27, 'venueboking', 'feedback'),
(3, 'venueboking', 'feedbacks'),
(4, 'venueboking', 'migrations'),
(5, 'venueboking', 'packages'),
(6, 'venueboking', 'passwordresets'),
(7, 'venueboking', 'payments'),
(8, 'venueboking', 'users'),
(9, 'venueboking', 'venues');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-04 09:53:58.854286'),
(2, 'auth', '0001_initial', '2020-10-04 09:53:59.222955'),
(3, 'admin', '0001_initial', '2020-10-04 09:54:00.145933'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-04 09:54:00.502039'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-04 09:54:00.514006'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-10-04 09:54:00.633860'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-10-04 09:54:00.738839'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-10-04 09:54:00.764259'),
(9, 'auth', '0004_alter_user_username_opts', '2020-10-04 09:54:00.774086'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-10-04 09:54:00.866871'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-10-04 09:54:00.872275'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-10-04 09:54:00.883246'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-10-04 09:54:00.906062'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-10-04 09:54:00.930247'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-10-04 09:54:00.955528'),
(16, 'auth', '0011_update_proxy_permissions', '2020-10-04 09:54:00.968120'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-10-04 09:54:00.991188'),
(18, 'sessions', '0001_initial', '2020-10-04 09:54:01.043672'),
(19, 'venueboking', '0001_initial', '2020-10-04 09:54:01.082062'),
(20, 'venueboking', '0002_auto_20201008_1004', '2020-10-08 04:34:43.147048'),
(21, 'venueboking', '0003_auto_20201008_1021', '2020-10-08 04:51:07.601004');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ysaccrvj5chvbu33iqs6omlgu40oizqu', 'eyJhZG1pbl91c2VybmFtZSI6ImplZWxmYWxkdUBnbWFpbC5jb20ifQ:1kQwEl:n1cZPAUGcKImgEaoVILAZwuVxBfU5bxyh-NUiQK6HIY', '2020-10-23 17:31:23.145653');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `venue_id` bigint(20) UNSIGNED NOT NULL,
  `feedback_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `venue_id`, `feedback_details`, `date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'nice place good facilty and location', '2020-10-01', NULL, '2020-10-01 03:21:03', '2020-10-01 05:48:54');

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
(3, '2020_09_11_084713_create_venue_table', 2),
(4, '2020_09_11_103127_create_venues_table', 3),
(5, '2020_09_11_103938_create_venues_table', 4),
(6, '2020_09_14_112320_create_catering_table', 5),
(7, '2020_09_15_180809_create_cateringes_table', 6),
(8, '2020_09_15_181832_create_catering_table', 7),
(9, '2020_09_15_184623_create_caterings_table', 8),
(10, '2020_09_16_084609_create_decorations_table', 9),
(11, '2020_09_16_112700_create_cateringes_table', 10),
(12, '2020_09_23_085119_create_package_table', 11),
(13, '2020_09_23_092247_create_package_table', 12),
(14, '2020_09_23_103142_create_package_table', 13),
(15, '2020_09_23_103549_create_package_table', 14),
(16, '2020_09_23_164744_create_package_table', 15),
(17, '2020_09_23_165113_create_package_table', 16),
(18, '2020_09_23_171045_create_packages_table', 17),
(19, '2020_09_30_094332_create_payments_table', 18),
(20, '2020_09_30_115945_create_payments_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `venue_id` bigint(20) UNSIGNED NOT NULL,
  `package_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `venue_id`, `package_details`, `cost`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 2, 'Lots of lighting and flowers', 2000, NULL, '2020-09-24 05:21:38', '2020-09-24 22:56:40'),
(4, 1, 'ghhghg', 10000, NULL, '2020-09-24 05:33:05', '2020-09-24 05:33:05'),
(5, 1, 'ghhghg', 10000, NULL, '2020-09-24 05:46:38', '2020-09-24 05:46:38'),
(6, 1, 'chairs', 10000, NULL, '2020-09-24 05:49:54', '2020-09-24 23:45:36'),
(7, 2, 'ghhghg', 2000, NULL, '2020-09-24 05:50:05', '2020-09-24 05:50:05'),
(10, 1, 'Decoration with 22 chairs', 1500, NULL, '2020-09-24 07:39:41', '2020-09-24 07:39:41'),
(13, 1, '55', 66, NULL, NULL, NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `total_amount`, `amount_paid`, `status`, `date`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 4, 500000, 200000, 'half payment', '2020-09-30 12:29:32', NULL, '2020-09-30 06:59:32', '2020-09-30 06:59:32');

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
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shah Vrushti', 'shahvrushti2701@gmail.com', NULL, '$2y$10$UrsNG9mT4gvS6WWHyf0mu.7zQ6q.9jm/J.66PmsBYEuL4C9vV.TzS', 1, NULL, '2020-09-09 02:34:54', '2020-09-15 13:08:53'),
(2, 'John Smith', 'john@yahoo.com', NULL, '$2y$10$N2azqkJp2p/oYRh6j8ImLu5r84sJX6UOWk7L4tVbDF2TREziaR7oy', NULL, NULL, '2020-09-09 03:29:59', '2020-09-09 03:29:59'),
(4, 'AneriSoni', 'anerisoni98@gmail.com', NULL, '$2y$10$pDpXJKltscdJ6F7U7j9y6OAU..f/qKa4WaukOi0exc2ImVWy.ytRC', NULL, NULL, '2020-09-29 08:37:53', '2020-09-29 08:37:53'),
(5, 'jeel', 'jeelfaldu@gmail.com', '0000-00-00 00:00:00', 'jeel6809', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `venue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity_of_people` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `venue_name`, `address`, `price`, `capacity_of_people`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Grand Bhagwati', 'S.G. Road, NH 8C, opp. Gurudhwara, Bodakdev, Ahmedabad, Gujarat 380054', '2,00,000', 750, NULL, '2020-09-11 05:15:07', '2020-09-14 04:04:48'),
(2, 'Hayatt Banqueit', 'Plot 216, Town Plan Scheme 1, near Vastrapur Lake, Vastrapur, Ahmedabad, Gujarat 380015', '20,00,000', 1000, NULL, '2020-09-11 05:16:01', '2020-09-11 05:16:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_venue_id_foreign` (`venue_id`),
  ADD KEY `bookings_package_id_foreign` (`package_id`),
  ADD KEY `bookings_decoration_id_foreign` (`decoration_id`),
  ADD KEY `bookings_cateringes_id_foreign` (`cateringes_id`);

--
-- Indexes for table `cateringes`
--
ALTER TABLE `cateringes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decorations`
--
ALTER TABLE `decorations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`),
  ADD KEY `feedback_venue_id_foreign` (`venue_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_venue_id_foreign` (`venue_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cateringes`
--
ALTER TABLE `cateringes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `decorations`
--
ALTER TABLE `decorations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_decoration_id_foreign` FOREIGN KEY (`decoration_id`) REFERENCES `decorations` (`id`),
  ADD CONSTRAINT `bookings_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_venue_id_foreign` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `feedback_venue_id_foreign` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`);

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_venue_id_foreign` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
