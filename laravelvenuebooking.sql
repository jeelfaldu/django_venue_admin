-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 03:49 PM
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
(108, 'Can view feedback', 27, 'view_feedback'),
(109, 'Can add auth group', 28, 'add_authgroup'),
(110, 'Can change auth group', 28, 'change_authgroup'),
(111, 'Can delete auth group', 28, 'delete_authgroup'),
(112, 'Can view auth group', 28, 'view_authgroup'),
(113, 'Can add auth group permissions', 29, 'add_authgrouppermissions'),
(114, 'Can change auth group permissions', 29, 'change_authgrouppermissions'),
(115, 'Can delete auth group permissions', 29, 'delete_authgrouppermissions'),
(116, 'Can view auth group permissions', 29, 'view_authgrouppermissions'),
(117, 'Can add auth permission', 30, 'add_authpermission'),
(118, 'Can change auth permission', 30, 'change_authpermission'),
(119, 'Can delete auth permission', 30, 'delete_authpermission'),
(120, 'Can view auth permission', 30, 'view_authpermission'),
(121, 'Can add auth user', 31, 'add_authuser'),
(122, 'Can change auth user', 31, 'change_authuser'),
(123, 'Can delete auth user', 31, 'delete_authuser'),
(124, 'Can view auth user', 31, 'view_authuser'),
(125, 'Can add auth user groups', 32, 'add_authusergroups'),
(126, 'Can change auth user groups', 32, 'change_authusergroups'),
(127, 'Can delete auth user groups', 32, 'delete_authusergroups'),
(128, 'Can view auth user groups', 32, 'view_authusergroups'),
(129, 'Can add auth user user permissions', 33, 'add_authuseruserpermissions'),
(130, 'Can change auth user user permissions', 33, 'change_authuseruserpermissions'),
(131, 'Can delete auth user user permissions', 33, 'delete_authuseruserpermissions'),
(132, 'Can view auth user user permissions', 33, 'view_authuseruserpermissions'),
(133, 'Can add bookings', 34, 'add_bookings'),
(134, 'Can change bookings', 34, 'change_bookings'),
(135, 'Can delete bookings', 34, 'delete_bookings'),
(136, 'Can view bookings', 34, 'view_bookings'),
(137, 'Can add cateringes', 35, 'add_cateringes'),
(138, 'Can change cateringes', 35, 'change_cateringes'),
(139, 'Can delete cateringes', 35, 'delete_cateringes'),
(140, 'Can view cateringes', 35, 'view_cateringes'),
(141, 'Can add contects', 36, 'add_contects'),
(142, 'Can change contects', 36, 'change_contects'),
(143, 'Can delete contects', 36, 'delete_contects'),
(144, 'Can view contects', 36, 'view_contects'),
(145, 'Can add decorations', 37, 'add_decorations'),
(146, 'Can change decorations', 37, 'change_decorations'),
(147, 'Can delete decorations', 37, 'delete_decorations'),
(148, 'Can view decorations', 37, 'view_decorations'),
(149, 'Can add django admin log', 38, 'add_djangoadminlog'),
(150, 'Can change django admin log', 38, 'change_djangoadminlog'),
(151, 'Can delete django admin log', 38, 'delete_djangoadminlog'),
(152, 'Can view django admin log', 38, 'view_djangoadminlog'),
(153, 'Can add django content type', 39, 'add_djangocontenttype'),
(154, 'Can change django content type', 39, 'change_djangocontenttype'),
(155, 'Can delete django content type', 39, 'delete_djangocontenttype'),
(156, 'Can view django content type', 39, 'view_djangocontenttype'),
(157, 'Can add django migrations', 40, 'add_djangomigrations'),
(158, 'Can change django migrations', 40, 'change_djangomigrations'),
(159, 'Can delete django migrations', 40, 'delete_djangomigrations'),
(160, 'Can view django migrations', 40, 'view_djangomigrations'),
(161, 'Can add django session', 41, 'add_djangosession'),
(162, 'Can change django session', 41, 'change_djangosession'),
(163, 'Can delete django session', 41, 'delete_djangosession'),
(164, 'Can view django session', 41, 'view_djangosession'),
(165, 'Can add feedbacks', 42, 'add_feedbacks'),
(166, 'Can change feedbacks', 42, 'change_feedbacks'),
(167, 'Can delete feedbacks', 42, 'delete_feedbacks'),
(168, 'Can view feedbacks', 42, 'view_feedbacks'),
(169, 'Can add migrations', 43, 'add_migrations'),
(170, 'Can change migrations', 43, 'change_migrations'),
(171, 'Can delete migrations', 43, 'delete_migrations'),
(172, 'Can view migrations', 43, 'view_migrations'),
(173, 'Can add packages', 44, 'add_packages'),
(174, 'Can change packages', 44, 'change_packages'),
(175, 'Can delete packages', 44, 'delete_packages'),
(176, 'Can view packages', 44, 'view_packages'),
(177, 'Can add password resets', 45, 'add_passwordresets'),
(178, 'Can change password resets', 45, 'change_passwordresets'),
(179, 'Can delete password resets', 45, 'delete_passwordresets'),
(180, 'Can view password resets', 45, 'view_passwordresets'),
(181, 'Can add payments', 46, 'add_payments'),
(182, 'Can change payments', 46, 'change_payments'),
(183, 'Can delete payments', 46, 'delete_payments'),
(184, 'Can view payments', 46, 'view_payments'),
(185, 'Can add users', 47, 'add_users'),
(186, 'Can change users', 47, 'change_users'),
(187, 'Can delete users', 47, 'delete_users'),
(188, 'Can view users', 47, 'view_users'),
(189, 'Can add venues', 48, 'add_venues'),
(190, 'Can change venues', 48, 'change_venues'),
(191, 'Can delete venues', 48, 'delete_venues'),
(192, 'Can view venues', 48, 'view_venues');

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
(1, 4, 1, 3, 4, 8, 7, '2020-11-26', '20:10:00', NULL, '2020-10-01 20:56:40', '2020-10-01 23:39:49'),
(4, 4, 2, 10, 20000, 9, 7, '2020-10-08', '17:14:00', NULL, '2020-10-01 22:44:05', '2020-10-01 22:44:05'),
(10, 6, 1, 3, 500, 8, 1, '2020-11-30', '22:47:00', NULL, NULL, NULL);

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
(13, 'Amdabad', 'Gujarati', 500, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contects`
--

CREATE TABLE `contects` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `number` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contects`
--

INSERT INTO `contects` (`id`, `fname`, `lname`, `email`, `number`, `msg`) VALUES
(2, 'jeel', 'faldu', 'jeel@mail.com', '123456789', 'msg msg');

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
(8, ' Simple(include:-decorations of flowers and lights of choice)  ', 1500, NULL, '2020-09-16 04:30:02', '2020-09-17 08:57:40'),
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
(28, 'users', 'authgroup'),
(29, 'users', 'authgrouppermissions'),
(30, 'users', 'authpermission'),
(31, 'users', 'authuser'),
(32, 'users', 'authusergroups'),
(33, 'users', 'authuseruserpermissions'),
(34, 'users', 'bookings'),
(35, 'users', 'cateringes'),
(36, 'users', 'contects'),
(37, 'users', 'decorations'),
(38, 'users', 'djangoadminlog'),
(39, 'users', 'djangocontenttype'),
(40, 'users', 'djangomigrations'),
(41, 'users', 'djangosession'),
(42, 'users', 'feedbacks'),
(43, 'users', 'migrations'),
(44, 'users', 'packages'),
(45, 'users', 'passwordresets'),
(46, 'users', 'payments'),
(47, 'users', 'users'),
(48, 'users', 'venues'),
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
(21, 'venueboking', '0003_auto_20201008_1021', '2020-10-08 04:51:07.601004'),
(22, 'users', '0001_initial', '2020-11-29 11:16:53.161728'),
(23, 'venueboking', '0004_auto_20201129_1646', '2020-11-29 11:16:53.174776');

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
('nvs9zm4o9j2zdxv0xqvsoksvs14jq4e9', 'eyJhZG1pbl91c2VybmFtZSI6ImplZWwifQ:1kWCPd:o4wPw4F3mldJwpqUUM5OxZhWhC-T9I7BlKSVikpcS0s', '2020-11-07 05:48:21.500211'),
('v253vcu0h3pxdc19z2kqfswl3spw1f2d', '.eJyrVkpMyc3Miy8tTi3KS8xNVbJSykpNzVHSUUISSUvMSSkFCTuk5yZm5ugl5-cCFWSmKFmZ1QIA_q0WgQ:1kjNgZ:GB8K8pXZUSEWi0y5rIDUzqJV7ZFznI1LMBC1mDCv49w', '2020-12-13 14:28:19.712142'),
('ysaccrvj5chvbu33iqs6omlgu40oizqu', 'eyJhZG1pbl91c2VybmFtZSI6ImplZWxmYWxkdUBnbWFpbC5jb20ifQ:1kVRB9:5gzmsM9mmygQw0Iis67xmhl4WBpjRRVFhIIuHSyvqNI', '2020-11-05 03:22:15.049866');

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
(5, 6, 1, 'ewrwerwwre', '2020-11-20', NULL, NULL, NULL),
(6, 6, 1, 'Very Good', '2020-11-23', NULL, NULL, NULL);

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
(4, 6, 217000, 217000, 'Half payment', '2020-11-29 10:45:41', NULL, NULL, NULL),
(5, 6, 217000, 200, 'Half payment', '2020-11-29 12:04:46', NULL, NULL, NULL),
(6, 6, 217000, 5000, 'Half payment', '2020-11-29 12:12:24', NULL, NULL, NULL),
(7, 6, 217000, 879798, 'Half payment', '2020-11-29 13:00:54', NULL, NULL, NULL);

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
(5, 'jeel', 'jeel', '0000-00-00 00:00:00', '123456', 1, NULL, NULL, NULL),
(6, 'jeel faldu', 'faldujeel@gmail.com', NULL, 'jeel6809', NULL, NULL, '2020-10-18 14:45:11', NULL);

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
(2, 'Hayatt Banqueit', 'Plot 216, Town Plan Scheme 1, near Vastrapur Lake, Vastrapur, Ahmedabad, Gujarat 380015', '2000', 1000, NULL, '2020-09-11 05:16:01', '2020-09-11 05:16:01'),
(20, 'test', 'addd', '588', 84, NULL, NULL, NULL);

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
-- Indexes for table `contects`
--
ALTER TABLE `contects`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cateringes`
--
ALTER TABLE `cateringes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contects`
--
ALTER TABLE `contects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
