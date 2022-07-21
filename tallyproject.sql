-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 11:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tallyproject`
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
  `id` bigint(20) NOT NULL,
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
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add countries', 7, 'add_countries'),
(26, 'Can change countries', 7, 'change_countries'),
(27, 'Can delete countries', 7, 'delete_countries'),
(28, 'Can view countries', 7, 'view_countries'),
(29, 'Can add states', 8, 'add_states'),
(30, 'Can change states', 8, 'change_states'),
(31, 'Can delete states', 8, 'delete_states'),
(32, 'Can view states', 8, 'view_states'),
(33, 'Can add companies', 9, 'add_companies'),
(34, 'Can change companies', 9, 'change_companies'),
(35, 'Can delete companies', 9, 'delete_companies'),
(36, 'Can view companies', 9, 'view_companies'),
(37, 'Can add voucher', 10, 'add_voucher'),
(38, 'Can change voucher', 10, 'change_voucher'),
(39, 'Can delete voucher', 10, 'delete_voucher'),
(40, 'Can view voucher', 10, 'view_voucher'),
(41, 'Can add group', 11, 'add_group'),
(42, 'Can change group', 11, 'change_group'),
(43, 'Can delete group', 11, 'delete_group'),
(44, 'Can view group', 11, 'view_group'),
(45, 'Can add features', 12, 'add_features'),
(46, 'Can change features', 12, 'change_features'),
(47, 'Can delete features', 12, 'delete_features'),
(48, 'Can view features', 12, 'view_features'),
(49, 'Can add currency', 13, 'add_currency'),
(50, 'Can change currency', 13, 'change_currency'),
(51, 'Can delete currency', 13, 'delete_currency'),
(52, 'Can view currency', 13, 'view_currency'),
(53, 'Can add costcentre', 14, 'add_costcentre'),
(54, 'Can change costcentre', 14, 'change_costcentre'),
(55, 'Can delete costcentre', 14, 'delete_costcentre'),
(56, 'Can view costcentre', 14, 'view_costcentre'),
(57, 'Can add ledger', 15, 'add_ledger'),
(58, 'Can change ledger', 15, 'change_ledger'),
(59, 'Can delete ledger', 15, 'delete_ledger'),
(60, 'Can view ledger', 15, 'view_ledger'),
(61, 'Can add ledger_ mailing_ details', 16, 'add_ledger_mailing_details'),
(62, 'Can change ledger_ mailing_ details', 16, 'change_ledger_mailing_details'),
(63, 'Can delete ledger_ mailing_ details', 16, 'delete_ledger_mailing_details'),
(64, 'Can view ledger_ mailing_ details', 16, 'view_ledger_mailing_details'),
(65, 'Can add ledger_ banking_ details', 17, 'add_ledger_banking_details'),
(66, 'Can change ledger_ banking_ details', 17, 'change_ledger_banking_details'),
(67, 'Can delete ledger_ banking_ details', 17, 'delete_ledger_banking_details'),
(68, 'Can view ledger_ banking_ details', 17, 'view_ledger_banking_details'),
(69, 'Can add ledger_ asset_ statutory', 18, 'add_ledger_asset_statutory'),
(70, 'Can change ledger_ asset_ statutory', 18, 'change_ledger_asset_statutory'),
(71, 'Can delete ledger_ asset_ statutory', 18, 'delete_ledger_asset_statutory'),
(72, 'Can view ledger_ asset_ statutory', 18, 'view_ledger_asset_statutory'),
(73, 'Can add ledger_ asset_ rounding', 19, 'add_ledger_asset_rounding'),
(74, 'Can change ledger_ asset_ rounding', 19, 'change_ledger_asset_rounding'),
(75, 'Can delete ledger_ asset_ rounding', 19, 'delete_ledger_asset_rounding'),
(76, 'Can view ledger_ asset_ rounding', 19, 'view_ledger_asset_rounding');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$79yxUgyT1l7fhY8SACf1wU$YCsRX1k4ok+Ji0gB+HVVZ2G4vqgAlZmzcq2FcWyMxDA=', '2022-07-14 11:30:12.122467', 1, 'sagma', '', '', 'sagma@gmail.com', 1, 1, '2022-07-12 08:39:49.797540');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-07-14 11:33:07.312800', '1', 'Group object (1)', 1, '[{\"added\": {}}]', 11, 1),
(2, '2022-07-14 11:38:52.577980', '2', 'Group object (2)', 1, '[{\"added\": {}}]', 11, 1),
(3, '2022-07-14 11:40:35.845663', '2', 'Group object (2)', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Alias\"]}}]', 11, 1),
(4, '2022-07-14 11:46:39.048121', '3', 'Group object (3)', 1, '[{\"added\": {}}]', 11, 1),
(5, '2022-07-14 11:47:31.258478', '4', 'Group object (4)', 1, '[{\"added\": {}}]', 11, 1),
(6, '2022-07-14 11:48:21.252190', '5', 'Group object (5)', 1, '[{\"added\": {}}]', 11, 1),
(7, '2022-07-14 11:48:57.711285', '6', 'Group object (6)', 1, '[{\"added\": {}}]', 11, 1),
(8, '2022-07-14 11:49:34.271924', '7', 'Group object (7)', 1, '[{\"added\": {}}]', 11, 1),
(9, '2022-07-14 11:50:10.535838', '8', 'Group object (8)', 1, '[{\"added\": {}}]', 11, 1),
(10, '2022-07-14 11:56:58.927598', '9', 'Group object (9)', 1, '[{\"added\": {}}]', 11, 1),
(11, '2022-07-14 12:02:24.858128', '10', 'Group object (10)', 1, '[{\"added\": {}}]', 11, 1),
(12, '2022-07-14 12:04:59.806256', '11', 'Group object (11)', 1, '[{\"added\": {}}]', 11, 1),
(13, '2022-07-14 12:09:39.685074', '12', 'Group object (12)', 1, '[{\"added\": {}}]', 11, 1),
(14, '2022-07-14 12:19:41.909441', '13', 'Group object (13)', 1, '[{\"added\": {}}]', 11, 1),
(15, '2022-07-14 12:21:32.256676', '14', 'Group object (14)', 1, '[{\"added\": {}}]', 11, 1),
(16, '2022-07-14 12:22:40.576392', '15', 'Group object (15)', 1, '[{\"added\": {}}]', 11, 1),
(17, '2022-07-14 12:23:47.128444', '16', 'Group object (16)', 1, '[{\"added\": {}}]', 11, 1),
(18, '2022-07-14 12:25:05.768003', '17', 'Group object (17)', 1, '[{\"added\": {}}]', 11, 1),
(19, '2022-07-14 12:26:12.842652', '18', 'Group object (18)', 1, '[{\"added\": {}}]', 11, 1),
(20, '2022-07-14 12:27:55.068500', '19', 'Group object (19)', 1, '[{\"added\": {}}]', 11, 1),
(21, '2022-07-14 12:28:52.723167', '20', 'Group object (20)', 1, '[{\"added\": {}}]', 11, 1),
(22, '2022-07-14 12:30:08.157794', '21', 'Group object (21)', 1, '[{\"added\": {}}]', 11, 1),
(23, '2022-07-14 12:31:01.550671', '22', 'Group object (22)', 1, '[{\"added\": {}}]', 11, 1),
(24, '2022-07-14 12:31:59.494557', '23', 'Group object (23)', 1, '[{\"added\": {}}]', 11, 1),
(25, '2022-07-14 12:33:21.805480', '24', 'Group object (24)', 1, '[{\"added\": {}}]', 11, 1),
(26, '2022-07-14 12:34:30.199238', '25', 'Group object (25)', 1, '[{\"added\": {}}]', 11, 1),
(27, '2022-07-14 12:35:23.718681', '26', 'Group object (26)', 1, '[{\"added\": {}}]', 11, 1),
(28, '2022-07-14 12:36:15.333832', '27', 'Group object (27)', 1, '[{\"added\": {}}]', 11, 1),
(29, '2022-07-14 12:37:15.590846', '28', 'Group object (28)', 1, '[{\"added\": {}}]', 11, 1),
(30, '2022-07-14 12:58:02.734747', '29', 'Group object (29)', 1, '[{\"added\": {}}]', 11, 1),
(31, '2022-07-14 12:59:08.585609', '30', 'Group object (30)', 1, '[{\"added\": {}}]', 11, 1),
(32, '2022-07-14 13:00:02.302299', '31', 'Group object (31)', 1, '[{\"added\": {}}]', 11, 1),
(33, '2022-07-14 13:01:10.139772', '32', 'Group object (32)', 1, '[{\"added\": {}}]', 11, 1),
(34, '2022-07-14 13:09:06.205733', '1', 'Ledger object (1)', 1, '[{\"added\": {}}]', 15, 1),
(35, '2022-07-14 13:10:19.028421', '2', 'Ledger object (2)', 1, '[{\"added\": {}}]', 15, 1),
(36, '2022-07-14 13:29:41.827412', '1', 'Currency object (1)', 1, '[{\"added\": {}}]', 13, 1),
(37, '2022-07-14 13:30:17.846669', '1', 'Currency object (1)', 2, '[{\"changed\": {\"fields\": [\"Symbol\"]}}]', 13, 1),
(38, '2022-07-14 13:39:03.058401', '1', 'Voucher object (1)', 1, '[{\"added\": {}}]', 10, 1),
(39, '2022-07-14 16:33:37.628568', '2', 'Voucher object (2)', 1, '[{\"added\": {}}]', 10, 1),
(40, '2022-07-14 16:36:01.716285', '3', 'Voucher object (3)', 1, '[{\"added\": {}}]', 10, 1),
(41, '2022-07-14 16:38:36.527432', '4', 'Voucher object (4)', 1, '[{\"added\": {}}]', 10, 1),
(42, '2022-07-14 16:40:40.257313', '5', 'Voucher object (5)', 1, '[{\"added\": {}}]', 10, 1),
(43, '2022-07-14 16:42:47.527397', '6', 'Voucher object (6)', 1, '[{\"added\": {}}]', 10, 1),
(44, '2022-07-14 16:46:07.949271', '7', 'Voucher object (7)', 1, '[{\"added\": {}}]', 10, 1),
(45, '2022-07-14 18:06:50.283974', '8', 'Voucher object (8)', 1, '[{\"added\": {}}]', 10, 1),
(46, '2022-07-14 18:08:49.087237', '9', 'Voucher object (9)', 1, '[{\"added\": {}}]', 10, 1),
(47, '2022-07-14 18:10:33.698621', '10', 'Voucher object (10)', 1, '[{\"added\": {}}]', 10, 1),
(48, '2022-07-14 18:12:04.637554', '11', 'Voucher object (11)', 1, '[{\"added\": {}}]', 10, 1),
(49, '2022-07-14 18:13:51.689600', '12', 'Voucher object (12)', 1, '[{\"added\": {}}]', 10, 1),
(50, '2022-07-14 18:15:22.751294', '13', 'Voucher object (13)', 1, '[{\"added\": {}}]', 10, 1),
(51, '2022-07-14 18:16:58.786314', '14', 'Voucher object (14)', 1, '[{\"added\": {}}]', 10, 1),
(52, '2022-07-14 18:18:32.391375', '15', 'Voucher object (15)', 1, '[{\"added\": {}}]', 10, 1),
(53, '2022-07-14 18:20:12.770676', '16', 'Voucher object (16)', 1, '[{\"added\": {}}]', 10, 1),
(54, '2022-07-14 18:21:57.167176', '17', 'Voucher object (17)', 1, '[{\"added\": {}}]', 10, 1),
(55, '2022-07-14 18:23:44.836899', '18', 'Voucher object (18)', 1, '[{\"added\": {}}]', 10, 1),
(56, '2022-07-14 18:25:23.065947', '19', 'Voucher object (19)', 1, '[{\"added\": {}}]', 10, 1),
(57, '2022-07-14 18:26:51.047750', '20', 'Voucher object (20)', 1, '[{\"added\": {}}]', 10, 1),
(58, '2022-07-14 18:28:23.189261', '21', 'Voucher object (21)', 1, '[{\"added\": {}}]', 10, 1),
(59, '2022-07-14 18:30:06.306217', '22', 'Voucher object (22)', 1, '[{\"added\": {}}]', 10, 1),
(60, '2022-07-15 05:35:24.768757', '4', 'Group object (4)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(61, '2022-07-15 05:35:51.793628', '5', 'Group object (5)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(62, '2022-07-15 05:36:24.006124', '7', 'Group object (7)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(63, '2022-07-15 05:36:37.103541', '8', 'Group object (8)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(64, '2022-07-15 05:37:03.081775', '10', 'Group object (10)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(65, '2022-07-15 05:38:43.593788', '11', 'Group object (11)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(66, '2022-07-15 05:39:23.261196', '13', 'Group object (13)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(67, '2022-07-15 05:39:44.050045', '14', 'Group object (14)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(68, '2022-07-15 05:40:08.943731', '15', 'Group object (15)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(69, '2022-07-15 05:40:31.648879', '16', 'Group object (16)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(70, '2022-07-15 05:42:05.129370', '17', 'Group object (17)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(71, '2022-07-15 05:42:45.945934', '18', 'Group object (18)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(72, '2022-07-15 05:43:07.376780', '20', 'Group object (20)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(73, '2022-07-15 05:43:25.356532', '21', 'Group object (21)', 2, '[{\"changed\": {\"fields\": [\"Under\"]}}]', 11, 1),
(74, '2022-07-15 12:11:21.658445', '33', 'Group object (33)', 3, '', 11, 1);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'tallyapp', 'companies'),
(14, 'tallyapp', 'costcentre'),
(7, 'tallyapp', 'countries'),
(13, 'tallyapp', 'currency'),
(12, 'tallyapp', 'features'),
(11, 'tallyapp', 'group'),
(15, 'tallyapp', 'ledger'),
(19, 'tallyapp', 'ledger_asset_rounding'),
(18, 'tallyapp', 'ledger_asset_statutory'),
(17, 'tallyapp', 'ledger_banking_details'),
(16, 'tallyapp', 'ledger_mailing_details'),
(8, 'tallyapp', 'states'),
(10, 'tallyapp', 'voucher');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-12 08:20:52.172852'),
(2, 'auth', '0001_initial', '2022-07-12 08:21:01.131443'),
(3, 'admin', '0001_initial', '2022-07-12 08:21:04.880450'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-12 08:21:04.944280'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-12 08:21:04.978188'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-12 08:21:05.487327'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-12 08:21:05.942764'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-07-12 08:21:06.060723'),
(9, 'auth', '0004_alter_user_username_opts', '2022-07-12 08:21:06.082664'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-07-12 08:21:07.225320'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-07-12 08:21:07.274180'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-12 08:21:07.405997'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-07-12 08:21:07.626969'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-12 08:21:07.687663'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-07-12 08:21:07.749564'),
(16, 'auth', '0011_update_proxy_permissions', '2022-07-12 08:21:07.781897'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-12 08:21:07.848446'),
(18, 'sessions', '0001_initial', '2022-07-12 08:21:08.524555'),
(19, 'tallyapp', '0001_initial', '2022-07-12 08:21:09.485219'),
(20, 'tallyapp', '0002_companies_costcentre_currency_features_group_voucher', '2022-07-12 08:21:18.918740'),
(21, 'tallyapp', '0003_remove_group_nature_of_group', '2022-07-12 08:21:19.386990'),
(22, 'tallyapp', '0004_ledger', '2022-07-12 08:21:20.246374'),
(23, 'tallyapp', '0005_ledger_company', '2022-07-12 08:21:21.419408'),
(24, 'tallyapp', '0006_ledger_mailing_details', '2022-07-12 08:21:24.265271'),
(25, 'tallyapp', '0007_rename_name_ledger_mailing_details_mailingname', '2022-07-12 08:21:24.410465'),
(26, 'tallyapp', '0008_ledger_banking_details', '2022-07-12 08:21:27.141219'),
(27, 'tallyapp', '0009_auto_20220708_1426', '2022-07-12 08:21:35.189910');

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
('6wvdt8wurupm661cvllo5q0d68r334dw', '.eJxVjEEOwiAQRe_C2pAyA1JcuvcMBJhBqgaS0q6Md7dNutDte-__t_BhXYpfO89-InERSpx-WQzpyXUX9Aj13mRqdZmnKPdEHrbLWyN-XY_276CEXra10SqyTsA4qJTIAFrKVpuNssnOWIcxZmWZHGrEswPIgwICNGEctRKfL9_RNz8:1oBBRe:HTV3utTG6JWfmpnd0Myc41pZnv6Wb1drITqq6VKO-TU', '2022-07-26 08:40:38.409554'),
('cciylummx3mjsdkkinqol17jdptk29um', '.eJxVjEEOwiAQRe_C2pAyA1JcuvcMBJhBqgaS0q6Md7dNutDte-__t_BhXYpfO89-InERSpx-WQzpyXUX9Aj13mRqdZmnKPdEHrbLWyN-XY_276CEXra10SqyTsA4qJTIAFrKVpuNssnOWIcxZmWZHGrEswPIgwICNGEctRKfL9_RNz8:1oBx2q:qB43gWVW63VdDzgEUL17pRz4TSEt6nOdXadQqoFllkg', '2022-07-28 11:30:12.212870'),
('fkeofdepcd0ueqnn40fabse1x41hs1vz', '.eJxVjEEOwiAQRe_C2pAyA1JcuvcMBJhBqgaS0q6Md7dNutDte-__t_BhXYpfO89-InERSpx-WQzpyXUX9Aj13mRqdZmnKPdEHrbLWyN-XY_276CEXra10SqyTsA4qJTIAFrKVpuNssnOWIcxZmWZHGrEswPIgwICNGEctRKfL9_RNz8:1oBE3P:zMyePF82nCr8uMFPs01KNGN5VSHorMtqsizE7G4IG6w', '2022-07-26 11:27:47.362199'),
('gqad3m8og4ayhlu8u087k0vviwxzsu5u', '.eJxVjEEOwiAQRe_C2pAyA1JcuvcMBJhBqgaS0q6Md7dNutDte-__t_BhXYpfO89-InERSpx-WQzpyXUX9Aj13mRqdZmnKPdEHrbLWyN-XY_276CEXra10SqyTsA4qJTIAFrKVpuNssnOWIcxZmWZHGrEswPIgwICNGEctRKfL9_RNz8:1oBwSL:dkEkC2wSoUHXrgvf-ZqvzTOQNMXYzAIa1YOuvvBv5v4', '2022-07-28 10:52:29.588289');

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_companies`
--

CREATE TABLE `tallyapp_companies` (
  `id` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `mailing_name` varchar(225) NOT NULL,
  `address1` varchar(225) NOT NULL,
  `address2` varchar(225) NOT NULL,
  `address3` varchar(225) NOT NULL,
  `address4` varchar(225) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `telephone` varchar(225) NOT NULL,
  `mobile` varchar(225) NOT NULL,
  `fax` varchar(225) NOT NULL,
  `email` varchar(254) NOT NULL,
  `website` varchar(225) NOT NULL,
  `fin_begin` date DEFAULT NULL,
  `books_begin` date DEFAULT NULL,
  `currency_symbol` varchar(225) NOT NULL,
  `formal_name` varchar(225) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_companies`
--

INSERT INTO `tallyapp_companies` (`id`, `name`, `mailing_name`, `address1`, `address2`, `address3`, `address4`, `pincode`, `telephone`, `mobile`, `fax`, `email`, `website`, `fin_begin`, `books_begin`, `currency_symbol`, `formal_name`, `active`, `country_id`, `state_id`) VALUES
(1, 'Infox Technologies', 'Infox Technologies', 'Kakkanad', 'Kochi', '', '', '', '0480 2357000', '9991122333', '111 222 1234', 'example1@gmail.com', '', '2022-04-01', '2022-04-01', 'Rs', 'INR', 1, 2, 1),
(6, 'ABC Companies', 'ABC Companies', 'XYZ Street', '', '', '', '', '', '', '', 'example@gmail.com', '', '2022-04-01', '2022-04-01', 'Rs', 'INR', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_costcentre`
--

CREATE TABLE `tallyapp_costcentre` (
  `id` bigint(20) NOT NULL,
  `cname` varchar(225) NOT NULL,
  `alias` varchar(225) DEFAULT NULL,
  `under` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_countries`
--

CREATE TABLE `tallyapp_countries` (
  `id` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_countries`
--

INSERT INTO `tallyapp_countries` (`id`, `name`) VALUES
(1, 'Australia'),
(2, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_currency`
--

CREATE TABLE `tallyapp_currency` (
  `id` bigint(20) NOT NULL,
  `symbol` varchar(225) NOT NULL,
  `formal_name` varchar(225) NOT NULL,
  `currency_code` varchar(225) NOT NULL,
  `decimal_places` varchar(225) NOT NULL,
  `show_in_millions` tinyint(1) NOT NULL,
  `suffix_symbol` tinyint(1) NOT NULL,
  `symbol_and_amount` tinyint(1) NOT NULL,
  `after_decimal` varchar(225) NOT NULL,
  `amount_in_words` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_currency`
--

INSERT INTO `tallyapp_currency` (`id`, `symbol`, `formal_name`, `currency_code`, `decimal_places`, `show_in_millions`, `suffix_symbol`, `symbol_and_amount`, `after_decimal`, `amount_in_words`, `company_id`) VALUES
(1, '₹', 'INR', 'No', '2', 0, 0, 1, 'paise', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_features`
--

CREATE TABLE `tallyapp_features` (
  `id` bigint(20) NOT NULL,
  `maintain_accounts` tinyint(1) NOT NULL,
  `bill_wise_entry` tinyint(1) NOT NULL,
  `cost_centres` tinyint(1) NOT NULL,
  `interest_calc` tinyint(1) NOT NULL,
  `maintain_inventory` tinyint(1) NOT NULL,
  `integrate_accounts` tinyint(1) NOT NULL,
  `multiple_price_level` tinyint(1) NOT NULL,
  `batches` tinyint(1) NOT NULL,
  `expirydate_batches` tinyint(1) NOT NULL,
  `joborder_processing` tinyint(1) NOT NULL,
  `sub_ledger` tinyint(1) NOT NULL,
  `cost_tracking` tinyint(1) NOT NULL,
  `job_costing` tinyint(1) NOT NULL,
  `discount_invoices` tinyint(1) NOT NULL,
  `Billed_Quantity` tinyint(1) NOT NULL,
  `gst` tinyint(1) NOT NULL,
  `tds` tinyint(1) NOT NULL,
  `tcs` tinyint(1) NOT NULL,
  `vat` tinyint(1) NOT NULL,
  `excise` tinyint(1) NOT NULL,
  `servicetax` tinyint(1) NOT NULL,
  `payroll` tinyint(1) NOT NULL,
  `multiple_addrss` tinyint(1) NOT NULL,
  `vouchers` tinyint(1) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_features`
--

INSERT INTO `tallyapp_features` (`id`, `maintain_accounts`, `bill_wise_entry`, `cost_centres`, `interest_calc`, `maintain_inventory`, `integrate_accounts`, `multiple_price_level`, `batches`, `expirydate_batches`, `joborder_processing`, `sub_ledger`, `cost_tracking`, `job_costing`, `discount_invoices`, `Billed_Quantity`, `gst`, `tds`, `tcs`, `vat`, `excise`, `servicetax`, `payroll`, `multiple_addrss`, `vouchers`, `company_id`) VALUES
(1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1),
(6, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_group`
--

CREATE TABLE `tallyapp_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `alias` varchar(225) DEFAULT NULL,
  `under` varchar(225) NOT NULL,
  `sub_ledger` tinyint(1) NOT NULL,
  `debit_credit` tinyint(1) NOT NULL,
  `calculation` tinyint(1) NOT NULL,
  `used_purchase` varchar(225) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_group`
--

INSERT INTO `tallyapp_group` (`id`, `name`, `alias`, `under`, `sub_ledger`, `debit_credit`, `calculation`, `used_purchase`, `company_id`) VALUES
(1, 'Bank Accounts', 'Bank Accounts', 'Current Assets', 0, 0, 0, NULL, 1),
(2, 'Bank OCC A/c', 'Bank OD A/c', 'Loans(Liability)', 0, 0, 0, NULL, 1),
(3, 'Bank OD A/c', 'Bank OCC A/c', 'Loans(Liability)', 0, 0, 0, NULL, 1),
(4, 'Branch / Divisions', 'Branch / Divisions', '*Primary', 0, 0, 0, NULL, 1),
(5, 'Capital Account', 'Capital Account', '*Primary', 0, 0, 0, NULL, 1),
(6, 'Cash-in-Hand', 'Cash-in-Hand', 'Current Assets', 0, 0, 0, NULL, 1),
(7, 'Current Assets', 'Current Assets', '*Primary', 0, 0, 0, NULL, 1),
(8, 'Current Liabilities', 'Current Liabilities', '*Primary', 0, 0, 0, NULL, 1),
(9, 'Deposit (Asset)', 'Deposit (Asset)', 'Current Assets', 0, 0, 0, NULL, 1),
(10, 'Direct Expenses', 'Expenses(Direct)', '*Primary', 0, 0, 0, NULL, 1),
(11, 'Direct Incomes', 'Income (Direct)', '*Primary', 0, 0, 0, NULL, 1),
(12, 'Duties & Taxes', 'Duties & Taxes', 'Current Liabilities', 0, 0, 0, NULL, 1),
(13, 'Expenses (Direct)', 'Direct Expenses', '*Primary', 0, 0, 0, NULL, 1),
(14, 'Expenses (Indirect)', 'Indirect Expenses', '*Primary', 0, 0, 0, NULL, 1),
(15, 'Fixed Assets', 'Fixed Assets', '*Primary', 0, 0, 0, NULL, 1),
(16, 'Income (Direct)', 'Direct Incomes', '*Primary', 0, 0, 0, NULL, 1),
(17, 'Income (Inirect)', 'Indirect Incomes', '*Primary', 0, 0, 0, NULL, 1),
(18, 'Investments', 'Investments', '*Primary', 0, 0, 0, NULL, 1),
(19, 'Loans & Advances (Asset)', 'Loans & Advances (Asset)', 'Current Assets', 0, 0, 0, NULL, 1),
(20, 'Loans (Liability)', 'Loans (Liability)', '*Primary', 0, 0, 0, NULL, 1),
(21, 'Misc. Expenses (ASSET)', 'Misc. Expenses (ASSET)', '*Primary', 0, 0, 0, NULL, 1),
(22, 'Provisions', 'Provisions', 'Current Liabilities', 0, 0, 0, NULL, 1),
(23, 'Purchase Accounts', 'Purchase Accounts', 'Primary', 0, 0, 0, NULL, 1),
(24, 'Reserves & Surplus', 'Retained Earnings', 'Capital Account', 0, 0, 0, NULL, 1),
(25, 'Retained Earnings', 'Reserves & Surplus', 'Capital Account', 0, 0, 0, NULL, 1),
(26, 'Sales Accounts', 'Sales Accounts', 'Primary', 0, 0, 0, NULL, 1),
(27, 'Secured Loans', 'Secured Loans', 'Loans(Liability)', 0, 0, 0, NULL, 1),
(28, 'Stock-in-Hand', 'Stock-in-Hand', 'Current Assets', 0, 0, 0, NULL, 1),
(29, 'Sundry Creditors', 'Sundry Creditors', 'Current Liabilities', 0, 0, 0, NULL, 1),
(30, 'Sundry Debtors', 'Sundry Debtors', 'Current Assets', 0, 0, 0, NULL, 1),
(31, 'Suspense A/c', 'Suspense A/c', 'Primary', 0, 0, 0, NULL, 1),
(32, 'Unsecured Loans', 'Unsecured Loans', 'Loans (Liability)', 0, 0, 0, NULL, 1),
(34, 'HDFC', 'HDFC', '*Primary', 0, 0, 0, '', 1),
(35, 'icici', 'icici', '*Primary', 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_ledger`
--

CREATE TABLE `tallyapp_ledger` (
  `id` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `under` varchar(225) NOT NULL,
  `provide_banking_details` varchar(225) NOT NULL,
  `pan_no` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_ledger`
--

INSERT INTO `tallyapp_ledger` (`id`, `name`, `alias`, `under`, `provide_banking_details`, `pan_no`, `company_id`) VALUES
(1, 'Cash', 'Cash', 'Cash-in-Hand', 'No', 'No', 1),
(2, 'Profit & Loss A/c', 'Profit & Loss A/c', 'Primary', 'No', 'No', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_ledger_asset_rounding`
--

CREATE TABLE `tallyapp_ledger_asset_rounding` (
  `id` bigint(20) NOT NULL,
  `rounding_method` varchar(225) NOT NULL,
  `round_limit` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `ledger_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_ledger_asset_statutory`
--

CREATE TABLE `tallyapp_ledger_asset_statutory` (
  `id` bigint(20) NOT NULL,
  `assessable_calculation` varchar(225) NOT NULL,
  `appropriate_to` varchar(225) NOT NULL,
  `gst_applicable` varchar(225) NOT NULL,
  `set_alter_GST` varchar(225) NOT NULL,
  `type_of_supply` varchar(225) NOT NULL,
  `method_of_calc` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `ledger_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_ledger_banking_details`
--

CREATE TABLE `tallyapp_ledger_banking_details` (
  `id` bigint(20) NOT NULL,
  `od_limit` varchar(225) NOT NULL,
  `holder_name` varchar(225) NOT NULL,
  `acc_no` varchar(225) NOT NULL,
  `ifsc` varchar(225) NOT NULL,
  `swift_code` varchar(225) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `branch` varchar(225) NOT NULL,
  `set_cheque` varchar(225) NOT NULL,
  `ch_printing` varchar(225) NOT NULL,
  `ch_config` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `ledger_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_ledger_mailing_details`
--

CREATE TABLE `tallyapp_ledger_mailing_details` (
  `id` bigint(20) NOT NULL,
  `mailingname` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `state` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `pincode` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `ledger_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_states`
--

CREATE TABLE `tallyapp_states` (
  `id` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_states`
--

INSERT INTO `tallyapp_states` (`id`, `name`, `country_id`) VALUES
(1, 'Kerala', 2),
(2, 'Karnataka', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tallyapp_voucher`
--

CREATE TABLE `tallyapp_voucher` (
  `id` bigint(20) NOT NULL,
  `voucher_name` varchar(225) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `voucher_type` varchar(225) NOT NULL,
  `abbreviation` varchar(225) NOT NULL,
  `active_this_voucher_type` varchar(225) NOT NULL,
  `method_voucher_numbering` varchar(225) NOT NULL,
  `use_adv_conf` varchar(225) NOT NULL,
  `prvnt_duplictes` varchar(225) NOT NULL,
  `use_effective_date` varchar(225) NOT NULL,
  `allow_zero_value_trns` varchar(225) NOT NULL,
  `allow_naration_in_voucher` varchar(225) NOT NULL,
  `make_optional` varchar(225) NOT NULL,
  `provide_naration` varchar(225) NOT NULL,
  `print_voucher` varchar(225) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tallyapp_voucher`
--

INSERT INTO `tallyapp_voucher` (`id`, `voucher_name`, `alias`, `voucher_type`, `abbreviation`, `active_this_voucher_type`, `method_voucher_numbering`, `use_adv_conf`, `prvnt_duplictes`, `use_effective_date`, `allow_zero_value_trns`, `allow_naration_in_voucher`, `make_optional`, `provide_naration`, `print_voucher`, `company_id`) VALUES
(1, 'Attendance', 'Attendance', 'Attendance', 'Attd', 'Yes', 'Automatic', 'No', 'Null', 'Null', 'No', 'Yes', 'No', 'No', 'No', 1),
(2, 'Contra', 'Contra', 'Contra', 'Ctra', 'Yes', 'Automatic', 'No', 'Null', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(3, 'Credit Note', 'Credit Note', 'Credit Note', 'C/Note', 'Yes', 'Automatic', 'No', 'Null', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(4, 'Debit Note', 'Debit Note', 'Debit Note', 'D/Note', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(5, 'Delivery Note', 'Delivery Note', 'Delivery Note', 'Dely Note', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(6, 'Journal', 'Journal', 'Journal', 'Jrnl', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(7, 'Material In', 'Material In', 'Material In', 'Mat In', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(8, 'Material Out', 'Material Out', 'Material Out', 'Mat Out', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(9, 'Memorandum', 'Memorandum', 'Memorandum', 'Memo', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(10, 'Payment', 'Payment', 'Payment', 'Pymt', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(11, 'Payroll', 'Payroll', 'Payroll', 'Pyrl', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(12, 'Physical Stock', 'Physical Stock', 'Physical Stock', 'Phy Stk', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(13, 'Purchase', 'Purchase', 'Purchase', 'Purc', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(14, 'Purchase Order', 'Purchase Order', 'Purchase Order', 'Purc Order', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(15, 'Receipt', 'Receipt', 'Receipt', 'Rcpt', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(16, 'Receipt Note', 'Receipt Note', 'Receipt Note', 'Rcpt Note', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(17, 'Rejections In', 'Rejections In', 'Rejections In', 'Rej In', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(18, 'Rejections Out', 'Rejections Out', 'Rejections Out', 'Rej Out', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(19, 'Reversing Journal', 'Reversing Journal', 'Reversing Journal', 'Rev Jrnl', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(20, 'Sales', 'Sales', 'Sales', 'Sale', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(21, 'Sales Order', 'Sales Order', 'Sales Order', 'Sales Ordr', 'No', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1),
(22, 'Stock Journal', 'Stock Journal', 'Stock Journal', 'Stk Jrnl', 'Yes', 'Automatic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 1);

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
-- Indexes for table `tallyapp_companies`
--
ALTER TABLE `tallyapp_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_companies_country_id_150d5d53_fk_tallyapp_countries_id` (`country_id`),
  ADD KEY `tallyapp_companies_state_id_a031945b_fk_tallyapp_states_id` (`state_id`);

--
-- Indexes for table `tallyapp_costcentre`
--
ALTER TABLE `tallyapp_costcentre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_costcentre_company_id_af0cf5db_fk_tallyapp_companies_id` (`company_id`);

--
-- Indexes for table `tallyapp_countries`
--
ALTER TABLE `tallyapp_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tallyapp_currency`
--
ALTER TABLE `tallyapp_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_currency_company_id_3208992c_fk_tallyapp_companies_id` (`company_id`);

--
-- Indexes for table `tallyapp_features`
--
ALTER TABLE `tallyapp_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_features_company_id_b1134d9e_fk_tallyapp_companies_id` (`company_id`);

--
-- Indexes for table `tallyapp_group`
--
ALTER TABLE `tallyapp_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_group_company_id_2b364176_fk_tallyapp_companies_id` (`company_id`);

--
-- Indexes for table `tallyapp_ledger`
--
ALTER TABLE `tallyapp_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_ledger_company_id_cd9fc6d0_fk_tallyapp_companies_id` (`company_id`);

--
-- Indexes for table `tallyapp_ledger_asset_rounding`
--
ALTER TABLE `tallyapp_ledger_asset_rounding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_ledger_asse_company_id_ff3e88b5_fk_tallyapp_` (`company_id`),
  ADD KEY `tallyapp_ledger_asse_ledger_id_bcb454a5_fk_tallyapp_` (`ledger_id`);

--
-- Indexes for table `tallyapp_ledger_asset_statutory`
--
ALTER TABLE `tallyapp_ledger_asset_statutory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_ledger_asse_company_id_c923f483_fk_tallyapp_` (`company_id`),
  ADD KEY `tallyapp_ledger_asse_ledger_id_4f455568_fk_tallyapp_` (`ledger_id`);

--
-- Indexes for table `tallyapp_ledger_banking_details`
--
ALTER TABLE `tallyapp_ledger_banking_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_ledger_bank_company_id_c9d4724c_fk_tallyapp_` (`company_id`),
  ADD KEY `tallyapp_ledger_bank_ledger_id_7b879d02_fk_tallyapp_` (`ledger_id`);

--
-- Indexes for table `tallyapp_ledger_mailing_details`
--
ALTER TABLE `tallyapp_ledger_mailing_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_ledger_mail_company_id_c44ab03b_fk_tallyapp_` (`company_id`),
  ADD KEY `tallyapp_ledger_mail_ledger_id_cd65769c_fk_tallyapp_` (`ledger_id`);

--
-- Indexes for table `tallyapp_states`
--
ALTER TABLE `tallyapp_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_states_country_id_f46555c0_fk_tallyapp_countries_id` (`country_id`);

--
-- Indexes for table `tallyapp_voucher`
--
ALTER TABLE `tallyapp_voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tallyapp_voucher_company_id_b494bdba_fk_tallyapp_companies_id` (`company_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tallyapp_companies`
--
ALTER TABLE `tallyapp_companies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tallyapp_costcentre`
--
ALTER TABLE `tallyapp_costcentre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tallyapp_countries`
--
ALTER TABLE `tallyapp_countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tallyapp_currency`
--
ALTER TABLE `tallyapp_currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tallyapp_features`
--
ALTER TABLE `tallyapp_features`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tallyapp_group`
--
ALTER TABLE `tallyapp_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tallyapp_ledger`
--
ALTER TABLE `tallyapp_ledger`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tallyapp_ledger_asset_rounding`
--
ALTER TABLE `tallyapp_ledger_asset_rounding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tallyapp_ledger_asset_statutory`
--
ALTER TABLE `tallyapp_ledger_asset_statutory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tallyapp_ledger_banking_details`
--
ALTER TABLE `tallyapp_ledger_banking_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tallyapp_ledger_mailing_details`
--
ALTER TABLE `tallyapp_ledger_mailing_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tallyapp_states`
--
ALTER TABLE `tallyapp_states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tallyapp_voucher`
--
ALTER TABLE `tallyapp_voucher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tallyapp_companies`
--
ALTER TABLE `tallyapp_companies`
  ADD CONSTRAINT `tallyapp_companies_country_id_150d5d53_fk_tallyapp_countries_id` FOREIGN KEY (`country_id`) REFERENCES `tallyapp_countries` (`id`),
  ADD CONSTRAINT `tallyapp_companies_state_id_a031945b_fk_tallyapp_states_id` FOREIGN KEY (`state_id`) REFERENCES `tallyapp_states` (`id`);

--
-- Constraints for table `tallyapp_costcentre`
--
ALTER TABLE `tallyapp_costcentre`
  ADD CONSTRAINT `tallyapp_costcentre_company_id_af0cf5db_fk_tallyapp_companies_id` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`);

--
-- Constraints for table `tallyapp_currency`
--
ALTER TABLE `tallyapp_currency`
  ADD CONSTRAINT `tallyapp_currency_company_id_3208992c_fk_tallyapp_companies_id` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`);

--
-- Constraints for table `tallyapp_features`
--
ALTER TABLE `tallyapp_features`
  ADD CONSTRAINT `tallyapp_features_company_id_b1134d9e_fk_tallyapp_companies_id` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`);

--
-- Constraints for table `tallyapp_group`
--
ALTER TABLE `tallyapp_group`
  ADD CONSTRAINT `tallyapp_group_company_id_2b364176_fk_tallyapp_companies_id` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`);

--
-- Constraints for table `tallyapp_ledger`
--
ALTER TABLE `tallyapp_ledger`
  ADD CONSTRAINT `tallyapp_ledger_company_id_cd9fc6d0_fk_tallyapp_companies_id` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`);

--
-- Constraints for table `tallyapp_ledger_asset_rounding`
--
ALTER TABLE `tallyapp_ledger_asset_rounding`
  ADD CONSTRAINT `tallyapp_ledger_asse_company_id_ff3e88b5_fk_tallyapp_` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`),
  ADD CONSTRAINT `tallyapp_ledger_asse_ledger_id_bcb454a5_fk_tallyapp_` FOREIGN KEY (`ledger_id`) REFERENCES `tallyapp_ledger` (`id`);

--
-- Constraints for table `tallyapp_ledger_asset_statutory`
--
ALTER TABLE `tallyapp_ledger_asset_statutory`
  ADD CONSTRAINT `tallyapp_ledger_asse_company_id_c923f483_fk_tallyapp_` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`),
  ADD CONSTRAINT `tallyapp_ledger_asse_ledger_id_4f455568_fk_tallyapp_` FOREIGN KEY (`ledger_id`) REFERENCES `tallyapp_ledger` (`id`);

--
-- Constraints for table `tallyapp_ledger_banking_details`
--
ALTER TABLE `tallyapp_ledger_banking_details`
  ADD CONSTRAINT `tallyapp_ledger_bank_company_id_c9d4724c_fk_tallyapp_` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`),
  ADD CONSTRAINT `tallyapp_ledger_bank_ledger_id_7b879d02_fk_tallyapp_` FOREIGN KEY (`ledger_id`) REFERENCES `tallyapp_ledger` (`id`);

--
-- Constraints for table `tallyapp_ledger_mailing_details`
--
ALTER TABLE `tallyapp_ledger_mailing_details`
  ADD CONSTRAINT `tallyapp_ledger_mail_company_id_c44ab03b_fk_tallyapp_` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`),
  ADD CONSTRAINT `tallyapp_ledger_mail_ledger_id_cd65769c_fk_tallyapp_` FOREIGN KEY (`ledger_id`) REFERENCES `tallyapp_ledger` (`id`);

--
-- Constraints for table `tallyapp_states`
--
ALTER TABLE `tallyapp_states`
  ADD CONSTRAINT `tallyapp_states_country_id_f46555c0_fk_tallyapp_countries_id` FOREIGN KEY (`country_id`) REFERENCES `tallyapp_countries` (`id`);

--
-- Constraints for table `tallyapp_voucher`
--
ALTER TABLE `tallyapp_voucher`
  ADD CONSTRAINT `tallyapp_voucher_company_id_b494bdba_fk_tallyapp_companies_id` FOREIGN KEY (`company_id`) REFERENCES `tallyapp_companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
